; ModuleID = './app/display/gimpdisplayshell-close.bc'
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
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct._GimpCanvasItem = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpColorDisplayStack = type { %struct._GObject, %struct._GList* }
%struct._GimpTreeHandler = type opaque
%struct._GimpDrawable = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._GimpImageWindow = type { %struct._GimpWindow }
%struct._GimpWindow = type { %struct._GtkWindow, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpMessageBox = type { %struct._GtkBox, i8*, i32, [3 x %struct._GtkWidget*], %struct._GtkWidget* }
%struct._GtkAccelGroup = type { %struct._GObject, i32, i32, %struct._GSList*, i32, %struct._GtkAccelGroupEntry* }
%struct._GtkAccelGroupEntry = type { %struct._GtkAccelKey, %struct._GClosure*, i32 }
%struct._GtkAccelKey = type { i32, i32, i16 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSourcePrivate = type opaque
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpMessageDialog = type { %struct._GimpDialog, %struct._GimpMessageBox* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkLabelSelectionInfo = type opaque

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_display_shell_close = private unnamed_addr constant [25 x i8] c"gimp_display_shell_close\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"GIMP_IS_DISPLAY_SHELL (shell)\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"gimp-file-save-dialog\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"file-quit\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Close %s\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"gtk-save\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"_Discard Changes\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"gtk-save-as\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"<Primary>D\00", align 1
@.str.13 = private unnamed_addr constant [53 x i8] c"Press %s to discard all changes and close the image.\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"<i><small>%s</small></i>\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"name-changed\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"exported\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"gimp-image\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"file-save-and-close\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"Save the changes to image '%s' before closing?\00", align 1
@.str.20 = private unnamed_addr constant [70 x i8] c"If you don't save the image, changes from the last hour will be lost.\00", align 1
@.str.21 = private unnamed_addr constant [74 x i8] c"If you don't save the image, changes from the last %d hours will be lost.\00", align 1
@.str.22 = private unnamed_addr constant [84 x i8] c"If you don't save the image, changes from the last hour and %d minute will be lost.\00", align 1
@.str.23 = private unnamed_addr constant [85 x i8] c"If you don't save the image, changes from the last hour and %d minutes will be lost.\00", align 1
@.str.24 = private unnamed_addr constant [72 x i8] c"If you don't save the image, changes from the last minute will be lost.\00", align 1
@.str.25 = private unnamed_addr constant [76 x i8] c"If you don't save the image, changes from the last %d minutes will be lost.\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"The image has been exported to '%s'.\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"%s\0A\0A%s\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__func__.gimp_time_since = private unnamed_addr constant [16 x i8] c"gimp_time_since\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"now >= then\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_close(%struct._GimpDisplayShell* %shell, i32 %kill_it) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %kill_it.addr = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %dialog = alloca %struct._GtkWidget*, align 8
  %window = alloca %struct._GimpImageWindow*, align 8
  %manager = alloca %struct._GimpUIManager*, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i32 %kill_it, i32* %kill_it.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_display_shell_close, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.49

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 1
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call11 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %14)
  store %struct._GimpImage* %call11, %struct._GimpImage** %image, align 8
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display12 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %15, i32 0, i32 1
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display12, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %16, i32 0, i32 1
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %busy = getelementptr inbounds %struct._Gimp, %struct._Gimp* %17, i32 0, i32 16
  %18 = load i32, i32* %busy, align 4
  %tobool13 = icmp ne i32 %18, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %do.end
  br label %if.end.49

if.end.15:                                        ; preds = %do.end
  %19 = load i32, i32* %kill_it.addr, align 4
  %tobool16 = icmp ne i32 %19, 0
  br i1 %tobool16, label %if.else.35, label %land.lhs.true.17

land.lhs.true.17:                                 ; preds = %if.end.15
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool18 = icmp ne %struct._GimpImage* %20, null
  br i1 %tobool18, label %land.lhs.true.19, label %if.else.35

land.lhs.true.19:                                 ; preds = %land.lhs.true.17
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call20 = call i32 @gimp_image_get_display_count(%struct._GimpImage* %21)
  %cmp21 = icmp eq i32 %call20, 1
  br i1 %cmp21, label %land.lhs.true.22, label %if.else.35

land.lhs.true.22:                                 ; preds = %land.lhs.true.19
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call23 = call i32 @gimp_image_is_dirty(%struct._GimpImage* %22)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.else.35

if.then.25:                                       ; preds = %land.lhs.true.22
  %23 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %24 = bitcast %struct._GimpImage* %23 to %struct._GTypeInstance*
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 80)
  %25 = bitcast %struct._GTypeInstance* %call27 to %struct._GObject*
  %call28 = call i8* @g_object_get_data(%struct._GObject* %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  %26 = bitcast i8* %call28 to %struct._GtkWidget*
  store %struct._GtkWidget* %26, %struct._GtkWidget** %dialog, align 8
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool29 = icmp ne %struct._GtkWidget* %27, null
  br i1 %tobool29, label %if.then.30, label %if.else.33

if.then.30:                                       ; preds = %if.then.25
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_window_get_type() #5
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call31)
  %30 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %30)
  br label %if.end.34

if.else.33:                                       ; preds = %if.then.25
  %31 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %32 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_display_shell_close_dialog(%struct._GimpDisplayShell* %31, %struct._GimpImage* %32)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.33, %if.then.30
  br label %if.end.49

if.else.35:                                       ; preds = %land.lhs.true.22, %land.lhs.true.19, %land.lhs.true.17, %if.end.15
  %33 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool36 = icmp ne %struct._GimpImage* %33, null
  br i1 %tobool36, label %if.then.37, label %if.else.39

if.then.37:                                       ; preds = %if.else.35
  %34 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display38 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %34, i32 0, i32 1
  %35 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display38, align 8
  call void @gimp_display_close(%struct._GimpDisplay* %35)
  br label %if.end.48

if.else.39:                                       ; preds = %if.else.35
  %36 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call41 = call %struct._GimpImageWindow* @gimp_display_shell_get_window(%struct._GimpDisplayShell* %36)
  store %struct._GimpImageWindow* %call41, %struct._GimpImageWindow** %window, align 8
  %37 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %tobool42 = icmp ne %struct._GimpImageWindow* %37, null
  br i1 %tobool42, label %if.then.43, label %if.end.47

if.then.43:                                       ; preds = %if.else.39
  %38 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %call45 = call %struct._GimpUIManager* @gimp_image_window_get_ui_manager(%struct._GimpImageWindow* %38)
  store %struct._GimpUIManager* %call45, %struct._GimpUIManager** %manager, align 8
  %39 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager, align 8
  %call46 = call i32 @gimp_ui_manager_activate_action(%struct._GimpUIManager* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.43, %if.else.39
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.37
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.9, %if.then.14, %if.end.48, %if.end.34
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_display_shell_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #3

declare i32 @gimp_image_get_display_count(%struct._GimpImage*) #3

declare i32 @gimp_image_is_dirty(%struct._GimpImage*) #3

declare i8* @g_object_get_data(%struct._GObject*, i8*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare void @gtk_window_present(%struct._GtkWindow*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #1

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_close_dialog(%struct._GimpDisplayShell* %shell, %struct._GimpImage* %image) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %box = alloca %struct._GimpMessageBox*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %accel_group = alloca %struct._GtkAccelGroup*, align 8
  %closure = alloca %struct._GClosure*, align 8
  %source = alloca %struct._GSource*, align 8
  %accel_key = alloca i32, align 4
  %accel_mods = alloca i32, align 4
  %title = alloca i8*, align 8
  %accel_string = alloca i8*, align 8
  %hint = alloca i8*, align 8
  %markup = alloca i8*, align 8
  %uri = alloca i8*, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %close_dialog = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 73
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %close_dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %close_dialog1 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %2, i32 0, i32 73
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %close_dialog1, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call = call i64 @gtk_window_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %5)
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call3 = call i8* @gimp_image_get_uri(%struct._GimpImage* %6)
  store i8* %call3, i8** %uri, align 8
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0)) #7
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call5 = call i8* @gimp_image_get_display_name(%struct._GimpImage* %7)
  %call6 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call4, i8* %call5)
  store i8* %call6, i8** %title, align 8
  %8 = load i8*, i8** %title, align 8
  %9 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %10 = bitcast %struct._GimpDisplayShell* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_widget_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkWidget*
  %call9 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_message_dialog_new(i8* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), %struct._GtkWidget* %11, i32 2, void (i8*, i8*)* @gimp_standard_help_func, i8* null, i8* null)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %dialog, align 8
  %12 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %close_dialog10 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %12, i32 0, i32 73
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %close_dialog10, align 8
  %13 = load i8*, i8** %title, align 8
  call void @g_free(i8* %13)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_dialog_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call11)
  %16 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkDialog*
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0)) #7
  %17 = load i8*, i8** %uri, align 8
  %tobool14 = icmp ne i8* %17, null
  %cond = select i1 %tobool14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0)
  call void (%struct._GtkDialog*, i8*, ...) @gtk_dialog_add_buttons(%struct._GtkDialog* %16, i8* %call13, i32 -7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 -6, i8* %cond, i32 1, i8* null)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_dialog_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call15)
  %20 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %20, i32 -6)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_dialog_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call17)
  %23 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %23, i32 1, i32 -7, i32 -6, i32 -1)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %25 = bitcast %struct._GtkWidget* %24 to i8*
  %26 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %close_dialog19 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %26, i32 0, i32 73
  %27 = bitcast %struct._GtkWidget** %close_dialog19 to i8*
  %call20 = call i64 @g_signal_connect_data(i8* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget**)* @gtk_widget_destroyed to void ()*), i8* %27, void (i8*, %struct._GClosure*)* null, i32 0)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %29 = bitcast %struct._GtkWidget* %28 to i8*
  %30 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %31 = bitcast %struct._GimpDisplayShell* %30 to i8*
  %call21 = call i64 @g_signal_connect_data(i8* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._GimpDisplayShell*)* @gimp_display_shell_close_response to void ()*), i8* %31, void (i8*, %struct._GClosure*)* null, i32 0)
  %call22 = call %struct._GtkAccelGroup* @gtk_accel_group_new()
  store %struct._GtkAccelGroup* %call22, %struct._GtkAccelGroup** %accel_group, align 8
  %32 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %close_dialog23 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %32, i32 0, i32 73
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %close_dialog23, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_window_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call24)
  %35 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkWindow*
  %36 = load %struct._GtkAccelGroup*, %struct._GtkAccelGroup** %accel_group, align 8
  call void @gtk_window_add_accel_group(%struct._GtkWindow* %35, %struct._GtkAccelGroup* %36)
  %37 = load %struct._GtkAccelGroup*, %struct._GtkAccelGroup** %accel_group, align 8
  %38 = bitcast %struct._GtkAccelGroup* %37 to i8*
  call void @g_object_unref(i8* %38)
  %39 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %close_dialog26 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %39, i32 0, i32 73
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %close_dialog26, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 80)
  %42 = bitcast %struct._GTypeInstance* %call27 to %struct._GObject*
  %call28 = call %struct._GClosure* @g_closure_new_object(i32 32, %struct._GObject* %42)
  store %struct._GClosure* %call28, %struct._GClosure** %closure, align 8
  %43 = load %struct._GClosure*, %struct._GClosure** %closure, align 8
  call void @g_closure_set_marshal(%struct._GClosure* %43, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @gimp_display_shell_close_accel_marshal)
  call void @gtk_accelerator_parse(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i32* %accel_key, i32* %accel_mods)
  %44 = load %struct._GtkAccelGroup*, %struct._GtkAccelGroup** %accel_group, align 8
  %45 = load i32, i32* %accel_key, align 4
  %46 = load i32, i32* %accel_mods, align 4
  %47 = load %struct._GClosure*, %struct._GClosure** %closure, align 8
  call void @gtk_accel_group_connect(%struct._GtkAccelGroup* %44, i32 %45, i32 %46, i32 0, %struct._GClosure* %47)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_message_dialog_get_type() #5
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call29)
  %50 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpMessageDialog*
  %box31 = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %50, i32 0, i32 1
  %51 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box31, align 8
  store %struct._GimpMessageBox* %51, %struct._GimpMessageBox** %box, align 8
  %52 = load i32, i32* %accel_key, align 4
  %53 = load i32, i32* %accel_mods, align 4
  %call32 = call i8* @gtk_accelerator_get_label(i32 %52, i32 %53)
  store i8* %call32, i8** %accel_string, align 8
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i32 0, i32 0)) #7
  %54 = load i8*, i8** %accel_string, align 8
  %call34 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call33, i8* %54)
  store i8* %call34, i8** %hint, align 8
  %55 = load i8*, i8** %hint, align 8
  %call35 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i32 0, i32 0), i8* %55)
  store i8* %call35, i8** %markup, align 8
  %call36 = call %struct._GtkWidget* @gtk_label_new(i8* null)
  store %struct._GtkWidget* %call36, %struct._GtkWidget** %label, align 8
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_misc_get_type() #5
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call37)
  %58 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %58, float 0.000000e+00, float 5.000000e-01)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_label_get_type() #5
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call39)
  %61 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkLabel*
  call void @gtk_label_set_line_wrap(%struct._GtkLabel* %61, i32 1)
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %63 = bitcast %struct._GtkWidget* %62 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_label_get_type() #5
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call41)
  %64 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkLabel*
  %65 = load i8*, i8** %markup, align 8
  call void @gtk_label_set_markup(%struct._GtkLabel* %64, i8* %65)
  %66 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %67 = bitcast %struct._GimpMessageBox* %66 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_box_get_type() #5
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call43)
  %68 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkBox*
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %68, %struct._GtkWidget* %69, i32 0, i32 0, i32 0)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %70)
  %71 = load i8*, i8** %markup, align 8
  call void @g_free(i8* %71)
  %72 = load i8*, i8** %hint, align 8
  call void @g_free(i8* %72)
  %73 = load i8*, i8** %accel_string, align 8
  call void @g_free(i8* %73)
  %74 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %75 = bitcast %struct._GimpImage* %74 to i8*
  %76 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %77 = bitcast %struct._GimpMessageBox* %76 to i8*
  %call45 = call i64 @g_signal_connect_object(i8* %75, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, %struct._GimpMessageBox*)* @gimp_display_shell_close_name_changed to void ()*), i8* %77, i32 0)
  %78 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %79 = bitcast %struct._GimpImage* %78 to i8*
  %80 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %81 = bitcast %struct._GimpMessageBox* %80 to i8*
  %call46 = call i64 @g_signal_connect_object(i8* %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, i8*, %struct._GimpMessageBox*)* @gimp_display_shell_close_exported to void ()*), i8* %81, i32 0)
  %82 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %83 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  call void @gimp_display_shell_close_name_changed(%struct._GimpImage* %82, %struct._GimpMessageBox* %83)
  %84 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %85 = bitcast %struct._GimpMessageBox* %84 to %struct._GTypeInstance*
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 80)
  %86 = bitcast %struct._GTypeInstance* %call47 to %struct._GObject*
  %call48 = call %struct._GClosure* @g_cclosure_new_object(void ()* bitcast (i32 (%struct._GimpMessageBox*)* @gimp_display_shell_close_time_changed to void ()*), %struct._GObject* %86)
  store %struct._GClosure* %call48, %struct._GClosure** %closure, align 8
  %call49 = call %struct._GSource* @g_timeout_source_new_seconds(i32 10)
  store %struct._GSource* %call49, %struct._GSource** %source, align 8
  %87 = load %struct._GSource*, %struct._GSource** %source, align 8
  %88 = load %struct._GClosure*, %struct._GClosure** %closure, align 8
  call void @g_source_set_closure(%struct._GSource* %87, %struct._GClosure* %88)
  %89 = load %struct._GSource*, %struct._GSource** %source, align 8
  %call50 = call i32 @g_source_attach(%struct._GSource* %89, %struct._GMainContext* null)
  %90 = load %struct._GSource*, %struct._GSource** %source, align 8
  call void @g_source_unref(%struct._GSource* %90)
  %91 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %92 = bitcast %struct._GimpMessageBox* %91 to %struct._GTypeInstance*
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 80)
  %93 = bitcast %struct._GTypeInstance* %call51 to %struct._GObject*
  %94 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %95 = bitcast %struct._GimpImage* %94 to i8*
  call void @g_object_set_data(%struct._GObject* %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i8* %95)
  %96 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %call52 = call i32 @gimp_display_shell_close_time_changed(%struct._GimpMessageBox* %96)
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %97)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @gimp_display_close(%struct._GimpDisplay*) #3

declare %struct._GimpImageWindow* @gimp_display_shell_get_window(%struct._GimpDisplayShell*) #3

declare %struct._GimpUIManager* @gimp_image_window_get_ui_manager(%struct._GimpImageWindow*) #3

declare i32 @gimp_ui_manager_activate_action(%struct._GimpUIManager*, i8*, i8*) #3

declare i8* @gimp_image_get_uri(%struct._GimpImage*) #3

declare noalias i8* @g_strdup_printf(i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @gimp_image_get_display_name(%struct._GimpImage*) #3

declare %struct._GtkWidget* @gimp_message_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #1

declare void @gimp_standard_help_func(i8*, i8*) #3

declare void @g_free(i8*) #3

declare void @gtk_dialog_add_buttons(%struct._GtkDialog*, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #1

declare void @gtk_dialog_set_default_response(%struct._GtkDialog*, i32) #3

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

declare void @gtk_widget_destroyed(%struct._GtkWidget*, %struct._GtkWidget**) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_close_response(%struct._GtkWidget* %widget, i32 %response_id, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %window = alloca %struct._GimpImageWindow*, align 8
  %manager = alloca %struct._GimpUIManager*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %0)
  %1 = load i32, i32* %response_id.addr, align 4
  switch i32 %1, label %sw.default [
    i32 -7, label %sw.bb
    i32 1, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %2, i32 0, i32 1
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  call void @gimp_display_close(%struct._GimpDisplay* %3)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call = call %struct._GimpImageWindow* @gimp_display_shell_get_window(%struct._GimpDisplayShell* %4)
  store %struct._GimpImageWindow* %call, %struct._GimpImageWindow** %window, align 8
  %5 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %tobool = icmp ne %struct._GimpImageWindow* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.1
  %6 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %call2 = call %struct._GimpUIManager* @gimp_image_window_get_ui_manager(%struct._GimpImageWindow* %6)
  store %struct._GimpUIManager* %call2, %struct._GimpUIManager** %manager, align 8
  %7 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %8 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_image_window_set_active_shell(%struct._GimpImageWindow* %7, %struct._GimpDisplayShell* %8)
  %9 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager, align 8
  %call3 = call i32 @gimp_ui_manager_activate_action(%struct._GimpUIManager* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end, %sw.bb
  ret void
}

declare %struct._GtkAccelGroup* @gtk_accel_group_new() #3

declare void @gtk_window_add_accel_group(%struct._GtkWindow*, %struct._GtkAccelGroup*) #3

declare void @g_object_unref(i8*) #3

declare %struct._GClosure* @g_closure_new_object(i32, %struct._GObject*) #3

declare void @g_closure_set_marshal(%struct._GClosure*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_close_accel_marshal(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #0 {
entry:
  %closure.addr = alloca %struct._GClosure*, align 8
  %return_value.addr = alloca %struct._GValue*, align 8
  %n_param_values.addr = alloca i32, align 4
  %param_values.addr = alloca %struct._GValue*, align 8
  %invocation_hint.addr = alloca i8*, align 8
  %marshal_data.addr = alloca i8*, align 8
  store %struct._GClosure* %closure, %struct._GClosure** %closure.addr, align 8
  store %struct._GValue* %return_value, %struct._GValue** %return_value.addr, align 8
  store i32 %n_param_values, i32* %n_param_values.addr, align 4
  store %struct._GValue* %param_values, %struct._GValue** %param_values.addr, align 8
  store i8* %invocation_hint, i8** %invocation_hint.addr, align 8
  store i8* %marshal_data, i8** %marshal_data.addr, align 8
  %0 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data = getelementptr inbounds %struct._GClosure, %struct._GClosure* %0, i32 0, i32 2
  %1 = load i8*, i8** %data, align 8
  %2 = bitcast i8* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_dialog_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkDialog*
  call void @gtk_dialog_response(%struct._GtkDialog* %3, i32 -7)
  %4 = load %struct._GValue*, %struct._GValue** %return_value.addr, align 8
  call void @g_value_set_boolean(%struct._GValue* %4, i32 1)
  ret void
}

declare void @gtk_accelerator_parse(i8*, i32*, i32*) #3

declare void @gtk_accel_group_connect(%struct._GtkAccelGroup*, i32, i32, i32, %struct._GClosure*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_message_dialog_get_type() #1

declare i8* @gtk_accelerator_get_label(i32, i32) #3

declare %struct._GtkWidget* @gtk_label_new(i8*) #3

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #1

declare void @gtk_label_set_line_wrap(%struct._GtkLabel*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #1

declare void @gtk_label_set_markup(%struct._GtkLabel*, i8*) #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #1

declare void @gtk_widget_show(%struct._GtkWidget*) #3

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_close_name_changed(%struct._GimpImage* %image, %struct._GimpMessageBox* %box) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %box.addr = alloca %struct._GimpMessageBox*, align 8
  %window = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %title = alloca i8*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpMessageBox* %box, %struct._GimpMessageBox** %box.addr, align 8
  %0 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box.addr, align 8
  %1 = bitcast %struct._GimpMessageBox* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  %call2 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %2)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %window, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %4, %struct._GTypeInstance** %__inst, align 8
  %call3 = call i64 @gtk_window_get_type() #5
  store i64 %call3, i64* %__t, align 8
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %5, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.9

if.else:                                          ; preds = %entry
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %7, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.7

land.lhs.true:                                    ; preds = %if.else
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %11 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %10, %11
  br i1 %cmp, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.7:                                        ; preds = %land.lhs.true, %if.else
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %13 = load i64, i64* %__t, align 8
  %call8 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %12, i64 %13) #6
  store i32 %call8, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.6
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %14 = load i32, i32* %__r, align 4
  store i32 %14, i32* %tmp
  %15 = load i32, i32* %tmp
  %tobool10 = icmp ne i32 %15, 0
  br i1 %tobool10, label %if.then.11, label %if.end.18

if.then.11:                                       ; preds = %if.end.9
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0)) #7
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call14 = call i8* @gimp_image_get_display_name(%struct._GimpImage* %16)
  %call15 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call13, i8* %call14)
  store i8* %call15, i8** %title, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_window_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call16)
  %19 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkWindow*
  %20 = load i8*, i8** %title, align 8
  call void @gtk_window_set_title(%struct._GtkWindow* %19, i8* %20)
  %21 = load i8*, i8** %title, align 8
  call void @g_free(i8* %21)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.11, %if.end.9
  %22 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box.addr, align 8
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i32 0, i32 0)) #7
  %23 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call20 = call i8* @gimp_image_get_display_name(%struct._GimpImage* %23)
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_primary_text(%struct._GimpMessageBox* %22, i8* %call19, i8* %call20)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_close_exported(%struct._GimpImage* %image, i8* %uri, %struct._GimpMessageBox* %box) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %uri.addr = alloca i8*, align 8
  %box.addr = alloca %struct._GimpMessageBox*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i8* %uri, i8** %uri.addr, align 8
  store %struct._GimpMessageBox* %box, %struct._GimpMessageBox** %box.addr, align 8
  %0 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box.addr, align 8
  %call = call i32 @gimp_display_shell_close_time_changed(%struct._GimpMessageBox* %0)
  ret void
}

declare %struct._GClosure* @g_cclosure_new_object(void ()*, %struct._GObject*) #3

; Function Attrs: nounwind uwtable
define internal i32 @gimp_display_shell_close_time_changed(%struct._GimpMessageBox* %box) #0 {
entry:
  %box.addr = alloca %struct._GimpMessageBox*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %dirty_time = alloca i32, align 4
  %time_text = alloca i8*, align 8
  %export_text = alloca i8*, align 8
  %hours = alloca i32, align 4
  %minutes = alloca i32, align 4
  %uri = alloca i8*, align 8
  %filename = alloca i8*, align 8
  store %struct._GimpMessageBox* %box, %struct._GimpMessageBox** %box.addr, align 8
  %0 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box.addr, align 8
  %1 = bitcast %struct._GimpMessageBox* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct._GimpImage*
  store %struct._GimpImage* %3, %struct._GimpImage** %image, align 8
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call2 = call i32 @gimp_image_get_dirty_time(%struct._GimpImage* %4)
  store i32 %call2, i32* %dirty_time, align 4
  store i8* null, i8** %time_text, align 8
  store i8* null, i8** %export_text, align 8
  %5 = load i32, i32* %dirty_time, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.17

if.then:                                          ; preds = %entry
  store i32 0, i32* %hours, align 4
  store i32 0, i32* %minutes, align 4
  %6 = load i32, i32* %dirty_time, align 4
  call void @gimp_time_since(i32 %6, i32* %hours, i32* %minutes)
  %7 = load i32, i32* %hours, align 4
  %cmp = icmp sgt i32 %7, 0
  br i1 %cmp, label %if.then.3, label %if.else.12

if.then.3:                                        ; preds = %if.then
  %8 = load i32, i32* %hours, align 4
  %cmp4 = icmp sgt i32 %8, 1
  br i1 %cmp4, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.3
  %9 = load i32, i32* %minutes, align 4
  %cmp5 = icmp eq i32 %9, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %lor.lhs.false, %if.then.3
  %10 = load i32, i32* %hours, align 4
  %conv = sext i32 %10 to i64
  %call7 = call i8* @ngettext(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.21, i32 0, i32 0), i64 %conv) #7
  %11 = load i32, i32* %hours, align 4
  %call8 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call7, i32 %11)
  store i8* %call8, i8** %time_text, align 8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %12 = load i32, i32* %minutes, align 4
  %conv9 = sext i32 %12 to i64
  %call10 = call i8* @ngettext(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.23, i32 0, i32 0), i64 %conv9) #7
  %13 = load i32, i32* %minutes, align 4
  %call11 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call10, i32 %13)
  store i8* %call11, i8** %time_text, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.16

if.else.12:                                       ; preds = %if.then
  %14 = load i32, i32* %minutes, align 4
  %conv13 = sext i32 %14 to i64
  %call14 = call i8* @ngettext(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.25, i32 0, i32 0), i64 %conv13) #7
  %15 = load i32, i32* %minutes, align 4
  %call15 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call14, i32 %15)
  store i8* %call15, i8** %time_text, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.12, %if.end
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %entry
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call18 = call i32 @gimp_image_is_export_dirty(%struct._GimpImage* %16)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.29, label %if.then.20

if.then.20:                                       ; preds = %if.end.17
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call21 = call i8* @gimp_image_get_exported_uri(%struct._GimpImage* %17)
  store i8* %call21, i8** %uri, align 8
  %18 = load i8*, i8** %uri, align 8
  %tobool22 = icmp ne i8* %18, null
  br i1 %tobool22, label %if.end.25, label %if.then.23

if.then.23:                                       ; preds = %if.then.20
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call24 = call i8* @gimp_image_get_imported_uri(%struct._GimpImage* %19)
  store i8* %call24, i8** %uri, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.then.20
  %20 = load i8*, i8** %uri, align 8
  %call26 = call i8* @file_utils_uri_to_utf8_filename(i8* %20)
  store i8* %call26, i8** %filename, align 8
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.26, i32 0, i32 0)) #7
  %21 = load i8*, i8** %filename, align 8
  %call28 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call27, i8* %21)
  store i8* %call28, i8** %export_text, align 8
  %22 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %22)
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.25, %if.end.17
  %23 = load i8*, i8** %time_text, align 8
  %tobool30 = icmp ne i8* %23, null
  br i1 %tobool30, label %land.lhs.true, label %if.else.33

land.lhs.true:                                    ; preds = %if.end.29
  %24 = load i8*, i8** %export_text, align 8
  %tobool31 = icmp ne i8* %24, null
  br i1 %tobool31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %land.lhs.true
  %25 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box.addr, align 8
  %26 = load i8*, i8** %time_text, align 8
  %27 = load i8*, i8** %export_text, align 8
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_text(%struct._GimpMessageBox* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i8* %26, i8* %27)
  br label %if.end.41

if.else.33:                                       ; preds = %land.lhs.true, %if.end.29
  %28 = load i8*, i8** %time_text, align 8
  %tobool34 = icmp ne i8* %28, null
  br i1 %tobool34, label %if.then.37, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %if.else.33
  %29 = load i8*, i8** %export_text, align 8
  %tobool36 = icmp ne i8* %29, null
  br i1 %tobool36, label %if.then.37, label %if.else.39

if.then.37:                                       ; preds = %lor.lhs.false.35, %if.else.33
  %30 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box.addr, align 8
  %31 = load i8*, i8** %time_text, align 8
  %tobool38 = icmp ne i8* %31, null
  br i1 %tobool38, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.37
  %32 = load i8*, i8** %time_text, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.37
  %33 = load i8*, i8** %export_text, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %32, %cond.true ], [ %33, %cond.false ]
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_text(%struct._GimpMessageBox* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8* %cond)
  br label %if.end.40

if.else.39:                                       ; preds = %lor.lhs.false.35
  %34 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box.addr, align 8
  %35 = load i8*, i8** %time_text, align 8
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_text(%struct._GimpMessageBox* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8* %35)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.39, %cond.end
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.32
  %36 = load i8*, i8** %time_text, align 8
  call void @g_free(i8* %36)
  %37 = load i8*, i8** %export_text, align 8
  call void @g_free(i8* %37)
  ret i32 1
}

declare %struct._GSource* @g_timeout_source_new_seconds(i32) #3

declare void @g_source_set_closure(%struct._GSource*, %struct._GClosure*) #3

declare i32 @g_source_attach(%struct._GSource*, %struct._GMainContext*) #3

declare void @g_source_unref(%struct._GSource*) #3

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #3

declare void @gimp_image_window_set_active_shell(%struct._GimpImageWindow*, %struct._GimpDisplayShell*) #3

declare void @gtk_dialog_response(%struct._GtkDialog*, i32) #3

declare void @g_value_set_boolean(%struct._GValue*, i32) #3

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #3

declare void @gtk_window_set_title(%struct._GtkWindow*, i8*) #3

declare void @gimp_message_box_set_primary_text(%struct._GimpMessageBox*, i8*, ...) #3

declare i32 @gimp_image_get_dirty_time(%struct._GimpImage*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_time_since(i32 %then, i32* %hours, i32* %minutes) #0 {
entry:
  %then.addr = alloca i32, align 4
  %hours.addr = alloca i32*, align 8
  %minutes.addr = alloca i32*, align 8
  %now = alloca i32, align 4
  %diff = alloca i32, align 4
  store i32 %then, i32* %then.addr, align 4
  store i32* %hours, i32** %hours.addr, align 8
  store i32* %minutes, i32** %minutes.addr, align 8
  %call = call i64 @time(i64* null) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %now, align 4
  %0 = load i32, i32* %now, align 4
  %add = add i32 1, %0
  %1 = load i32, i32* %then.addr, align 4
  %sub = sub i32 %add, %1
  store i32 %sub, i32* %diff, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* %now, align 4
  %3 = load i32, i32* %then.addr, align 4
  %cmp = icmp uge i32 %2, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_time_since, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load i32, i32* %diff, align 4
  %add2 = add i32 %4, 59
  %div = udiv i32 %add2, 60
  store i32 %div, i32* %diff, align 4
  %5 = load i32, i32* %diff, align 4
  %cmp3 = icmp ugt i32 %5, 50
  br i1 %cmp3, label %if.then.5, label %if.else.8

if.then.5:                                        ; preds = %do.end
  %6 = load i32, i32* %diff, align 4
  %add6 = add i32 %6, 8
  %div7 = udiv i32 %add6, 10
  %mul = mul i32 %div7, 10
  store i32 %mul, i32* %diff, align 4
  br label %if.end.16

if.else.8:                                        ; preds = %do.end
  %7 = load i32, i32* %diff, align 4
  %cmp9 = icmp ugt i32 %7, 20
  br i1 %cmp9, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %if.else.8
  %8 = load i32, i32* %diff, align 4
  %add12 = add i32 %8, 3
  %div13 = udiv i32 %add12, 5
  %mul14 = mul i32 %div13, 5
  store i32 %mul14, i32* %diff, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.11, %if.else.8
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.5
  %9 = load i32, i32* %diff, align 4
  %cmp17 = icmp uge i32 %9, 60
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.16
  %10 = load i32, i32* %diff, align 4
  %div20 = udiv i32 %10, 60
  %11 = load i32*, i32** %hours.addr, align 8
  store i32 %div20, i32* %11, align 4
  %12 = load i32, i32* %diff, align 4
  %rem = urem i32 %12, 60
  store i32 %rem, i32* %diff, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end.16
  %13 = load i32*, i32** %hours.addr, align 8
  %14 = load i32, i32* %13, align 4
  %cmp22 = icmp sgt i32 %14, 1
  br i1 %cmp22, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %if.end.21
  %15 = load i32, i32* %diff, align 4
  %cmp24 = icmp ugt i32 %15, 0
  br i1 %cmp24, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %land.lhs.true
  %16 = load i32*, i32** %hours.addr, align 8
  %17 = load i32, i32* %16, align 4
  %add27 = add nsw i32 %17, 1
  store i32 %add27, i32* %16, align 4
  store i32 0, i32* %diff, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %land.lhs.true, %if.end.21
  %18 = load i32, i32* %diff, align 4
  %19 = load i32*, i32** %minutes.addr, align 8
  store i32 %18, i32* %19, align 4
  br label %return

return:                                           ; preds = %if.end.28, %if.else
  ret void
}

; Function Attrs: nounwind
declare i8* @ngettext(i8*, i8*, i64) #4

declare i32 @gimp_image_is_export_dirty(%struct._GimpImage*) #3

declare i8* @gimp_image_get_exported_uri(%struct._GimpImage*) #3

declare i8* @gimp_image_get_imported_uri(%struct._GimpImage*) #3

declare i8* @file_utils_uri_to_utf8_filename(i8*) #3

declare void @gimp_message_box_set_text(%struct._GimpMessageBox*, i8*, ...) #3

; Function Attrs: nounwind
declare i64 @time(i64*) #4

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
