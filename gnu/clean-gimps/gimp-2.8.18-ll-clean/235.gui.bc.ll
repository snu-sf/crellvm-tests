; ModuleID = './app/gui/gui.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type { %struct._GimpObject, %struct._Gimp*, %struct._GSList*, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugIn*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugInShm*, %struct._GimpInterpreterDB*, %struct._GimpEnvironTable*, %struct._GimpPlugInDebug*, %struct._GList* }
%struct._GimpPlugIn = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GimpPlugInShm = type opaque
%struct._GimpInterpreterDB = type opaque
%struct._GimpEnvironTable = type { %struct._GObject, %struct._GHashTable*, %struct._GHashTable*, i8** }
%struct._GHashTable = type opaque
%struct._GimpPlugInDebug = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GimpToolOptions*, %struct._GimpPaintInfo*, %struct._GimpContainer* }
%struct._GimpToolOptions = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpActionFactory = type opaque
%struct._GimpMenuFactory = type { %struct._GimpObject, %struct._GimpMenuFactoryPrivate* }
%struct._GimpMenuFactoryPrivate = type opaque
%struct._GimpUIManager = type { %struct._GtkUIManager, i8*, %struct._Gimp*, %struct._GList* }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
%struct._GimpUIConfigurer = type { %struct._GimpObject, %struct._GimpUIConfigurerPrivate* }
%struct._GimpUIConfigurerPrivate = type opaque
%struct._GOptionContext = type opaque
%struct._GOptionGroup = type opaque
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
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpMessageBox = type { %struct._GtkBox, i8*, i32, [3 x %struct._GtkWidget*], %struct._GtkWidget* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayOptions = type opaque
%struct._GimpGuiConfig = type { %struct._GimpDisplayConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpDisplayShell = type { %struct._GtkBox, %struct._GimpDisplay*, %struct._GimpUIManager*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct._GimpZoomModel*, double, i32, i32, i32, double, i32, i32, i32, %struct._Selection*, %struct._GList*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._cairo_surface*, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, i32, i8*, i8*, i32, i32, %struct._GdkPixbuf*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpColorDisplayStack*, i32, %struct._GtkWidget*, i32, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, %struct._GimpDrawable*, %struct._GimpRGB, %struct._GimpMotionBuffer*, %struct._GQueue* }
%struct._GimpZoomModel = type { %struct._GObject, i8* }
%struct._Selection = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GimpCanvasItem = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpColorDisplayStack = type { %struct._GObject, %struct._GList* }
%struct._GimpTreeHandler = type opaque
%struct._GimpDrawable = type opaque
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GimpStatusbar = type { %struct._GtkStatusbar, %struct._GimpDisplayShell*, %struct._GSList*, %struct._GHashTable*, i32, %struct._GdkPixbuf*, i32, i32, i32, [32 x i8], [32 x i8], [32 x i8], %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, double }
%struct._GtkStatusbar = type { %struct._GtkHBox, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GSList*, %struct._GSList*, i32, i32, %struct._GdkDrawable*, i8 }
%struct._GtkHBox = type { %struct._GtkBox }

@.str = private unnamed_addr constant [9 x i8] c"Gimp-GUI\00", align 1
@__func__.gui_libs_init = private unnamed_addr constant [14 x i8] c"gui_libs_init\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"context != NULL\00", align 1
@__func__.gui_abort = private unnamed_addr constant [10 x i8] c"gui_abort\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"abort_message != NULL\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"GIMP Message\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"gimp-abort\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"stock-id\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"gimp-wilber-eek\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"border-width\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__func__.gui_init = private unnamed_addr constant [9 x i8] c"gui_init\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@the_gui_gimp = internal global %struct._Gimp* null, align 8
@.str.11 = private unnamed_addr constant [21 x i8] c"the_gui_gimp == NULL\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"gtk20\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"default:LTR\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"default:RTL\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"initialize\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"restore\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.18 = private unnamed_addr constant [228 x i8] c"%s\0A\0AGIMP requires GTK+ version %d.%d.%d or later.\0AInstalled GTK+ version is %d.%d.%d.\0A\0ASomehow you or your software packager managed\0Ato install GIMP with an older GTK+ version.\0A\0APlease upgrade to GTK+ version %d.%d.%d or later.\00", align 1
@gtk_major_version = external constant i32, align 4
@gtk_minor_version = external constant i32, align 4
@gtk_micro_version = external constant i32, align 4
@__func__.gui_help_func = private unnamed_addr constant [14 x i8] c"gui_help_func\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"GIMP_IS_GIMP (the_gui_gimp)\00", align 1
@__func__.gui_get_foreground_func = private unnamed_addr constant [24 x i8] c"gui_get_foreground_func\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"color != NULL\00", align 1
@__func__.gui_get_background_func = private unnamed_addr constant [24 x i8] c"gui_get_background_func\00", align 1
@__func__.gui_initialize_after_callback = private unnamed_addr constant [30 x i8] c"gui_initialize_after_callback\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"INIT: %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"DISPLAY\00", align 1
@__func__.gui_restore_callback = private unnamed_addr constant [21 x i8] c"gui_restore_callback\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"notify::show-tooltips\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"notify::use-help\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"notify::user-manual-online\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"notify::show-help-button\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"display-changed\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"monitor-xresolution\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"monitor-yresolution\00", align 1
@.str.30 = private unnamed_addr constant [41 x i8] c"monitor-resolution-from-windowing-system\00", align 1
@global_action_factory = external global %struct._GimpActionFactory*, align 8
@global_menu_factory = external global %struct._GimpMenuFactory*, align 8
@.str.31 = private unnamed_addr constant [15 x i8] c"buffer-changed\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"Documents\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"Tool Options\00", align 1
@image_ui_manager = internal global %struct._GimpUIManager* null, align 8
@__func__.gui_restore_after_callback = private unnamed_addr constant [27 x i8] c"gui_restore_after_callback\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"gimp\00", align 1
@ui_configurer = internal global %struct._GimpUIConfigurer* null, align 8
@.str.35 = private unnamed_addr constant [8 x i8] c"<Image>\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"notify::single-window-mode\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"notify::tearoff-menus\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"show-tooltip\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"hide-tooltip\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"menu-tooltip\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"EXIT: %s\0A\00", align 1
@__func__.gui_exit_callback = private unnamed_addr constant [18 x i8] c"gui_exit_callback\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"gimp-quit-dialog\00", align 1
@__func__.gui_exit_after_callback = private unnamed_addr constant [24 x i8] c"gui_exit_after_callback\00", align 1

; Function Attrs: nounwind uwtable
define void @gui_libs_init(%struct._GOptionContext* %context) #0 {
entry:
  %context.addr = alloca %struct._GOptionContext*, align 8
  store %struct._GOptionContext* %context, %struct._GOptionContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GOptionContext*, %struct._GOptionContext** %context.addr, align 8
  %cmp = icmp ne %struct._GOptionContext* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.gui_libs_init, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GOptionContext*, %struct._GOptionContext** %context.addr, align 8
  %call = call %struct._GOptionGroup* @gtk_get_option_group(i32 1)
  call void @g_option_context_add_group(%struct._GOptionContext* %1, %struct._GOptionGroup* %call)
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @g_option_context_add_group(%struct._GOptionContext*, %struct._GOptionGroup*) #1

declare %struct._GOptionGroup* @gtk_get_option_group(i32) #1

; Function Attrs: nounwind uwtable
define void @gui_abort(i8* %abort_message) #0 {
entry:
  %abort_message.addr = alloca i8*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %box = alloca %struct._GtkWidget*, align 8
  store i8* %abort_message, i8** %abort_message.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %abort_message.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.gui_abort, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  ret void

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)) #6
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), %struct._GtkWidget* null, i32 1, void (i8*, i8*)* null, i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dialog, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_window_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call2)
  %3 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWindow*
  call void @gtk_window_set_resizable(%struct._GtkWindow* %3, i32 0)
  %call4 = call i64 @gimp_message_box_get_type() #7
  %call5 = call i8* (i64, i8*, ...) @g_object_new(i64 %call4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 12, i8* null)
  %4 = bitcast i8* %call5 to %struct._GtkWidget*
  store %struct._GtkWidget* %4, %struct._GtkWidget** %box, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_message_box_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call6)
  %7 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpMessageBox*
  %8 = load i8*, i8** %abort_message.addr, align 8
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_text(%struct._GimpMessageBox* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_dialog_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call8)
  %11 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkDialog*
  %call10 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %11)
  %12 = bitcast %struct._GtkWidget* %call10 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_box_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call11)
  %13 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkBox*
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %13, %struct._GtkWidget* %14, i32 1, i32 1, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_dialog_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call13)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpDialog*
  %call15 = call i32 @gimp_dialog_run(%struct._GimpDialog* %18)
  call void @exit(i32 1) #8
  unreachable
}

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @gtk_window_set_resizable(%struct._GtkWindow*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #3

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_message_box_get_type() #3

declare void @gimp_message_box_set_text(%struct._GimpMessageBox*, i8*, ...) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind uwtable
define void (i8*, i8*, double)* @gui_init(%struct._Gimp* %gimp, i32 %no_splash) #0 {
entry:
  %retval = alloca void (i8*, i8*, double)*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %no_splash.addr = alloca i32, align 4
  %status_callback = alloca void (i8*, i8*, double)*, align 8
  %screen = alloca %struct._GdkScreen*, align 8
  %abort_message = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %no_splash, i32* %no_splash.addr, align 4
  store void (i8*, i8*, double)* null, void (i8*, i8*, double)** %status_callback, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.gui_init, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0))
  store void (i8*, i8*, double)* null, void (i8*, i8*, double)** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._Gimp*, %struct._Gimp** @the_gui_gimp, align 8
  %cmp12 = icmp eq %struct._Gimp* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.gui_init, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0))
  store void (i8*, i8*, double)* null, void (i8*, i8*, double)** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %call17 = call i8* @gui_sanity_check()
  store i8* %call17, i8** %abort_message, align 8
  %14 = load i8*, i8** %abort_message, align 8
  %tobool18 = icmp ne i8* %14, null
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %do.end.16
  %15 = load i8*, i8** %abort_message, align 8
  call void @gui_abort(i8* %15)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %do.end.16
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  store %struct._Gimp* %16, %struct._Gimp** @the_gui_gimp, align 8
  %call21 = call i8* @dgettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0)) #6
  %call22 = call i32 @g_strcmp0(i8* %call21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0))
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %if.end.20
  call void @gtk_widget_set_default_direction(i32 2)
  br label %if.end.26

if.else.25:                                       ; preds = %if.end.20
  call void @gtk_widget_set_default_direction(i32 1)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.25, %if.then.24
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gui_unique_init(%struct._Gimp* %17)
  call void @gimp_widgets_init(void (i8*, i8*)* @gui_help_func, i32 (%struct._GimpRGB*)* @gui_get_foreground_func, i32 (%struct._GimpRGB*)* @gui_get_background_func, void ()* null)
  %call27 = call i64 @gimp_color_select_get_type() #7
  %call28 = call i8* @g_type_class_ref(i64 %call27)
  call void @gtk_window_set_auto_startup_notification(i32 0)
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_dnd_init(%struct._Gimp* %18)
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @themes_init(%struct._Gimp* %19)
  %call29 = call %struct._GdkScreen* @gdk_screen_get_default()
  store %struct._GdkScreen* %call29, %struct._GdkScreen** %screen, align 8
  %20 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %call30 = call %struct._GdkColormap* @gdk_screen_get_rgb_colormap(%struct._GdkScreen* %20)
  call void @gtk_widget_set_default_colormap(%struct._GdkColormap* %call30)
  %21 = load i32, i32* %no_splash.addr, align 4
  %tobool31 = icmp ne i32 %21, 0
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %if.end.26
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %22, i32 0, i32 4
  %23 = load i32, i32* %be_verbose, align 4
  call void @splash_create(i32 %23)
  store void (i8*, i8*, double)* @splash_update, void (i8*, i8*, double)** %status_callback, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end.26
  %24 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %25 = bitcast %struct._Gimp* %24 to i8*
  %call34 = call i64 @g_signal_connect_data(i8* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._Gimp*, void (i8*, i8*, double)*)* @gui_initialize_after_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 1)
  %26 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %27 = bitcast %struct._Gimp* %26 to i8*
  %call35 = call i64 @g_signal_connect_data(i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), void ()* bitcast (void (%struct._Gimp*, void (i8*, i8*, double)*)* @gui_restore_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %28 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %29 = bitcast %struct._Gimp* %28 to i8*
  %call36 = call i64 @g_signal_connect_data(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), void ()* bitcast (void (%struct._Gimp*, void (i8*, i8*, double)*)* @gui_restore_after_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 1)
  %30 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %31 = bitcast %struct._Gimp* %30 to i8*
  %call37 = call i64 @g_signal_connect_data(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (i32 (%struct._Gimp*, i32)* @gui_exit_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %32 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %33 = bitcast %struct._Gimp* %32 to i8*
  %call38 = call i64 @g_signal_connect_data(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (i32 (%struct._Gimp*, i32)* @gui_exit_after_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 1)
  %34 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback, align 8
  store void (i8*, i8*, double)* %34, void (i8*, i8*, double)** %retval
  br label %return

return:                                           ; preds = %if.end.33, %if.else.14, %if.else.9
  %35 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %retval
  ret void (i8*, i8*, double)* %35
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #3

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #5

; Function Attrs: nounwind uwtable
define internal i8* @gui_sanity_check() #0 {
entry:
  %retval = alloca i8*, align 8
  %mismatch = alloca i8*, align 8
  %call = call i8* @gtk_check_version(i32 2, i32 24, i32 10)
  store i8* %call, i8** %mismatch, align 8
  %0 = load i8*, i8** %mismatch, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %mismatch, align 8
  %2 = load i32, i32* @gtk_major_version, align 4
  %3 = load i32, i32* @gtk_minor_version, align 4
  %4 = load i32, i32* @gtk_micro_version, align 4
  %call1 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([228 x i8], [228 x i8]* @.str.18, i32 0, i32 0), i8* %1, i32 2, i32 24, i32 10, i32 %2, i32 %3, i32 %4, i32 2, i32 24, i32 10)
  store i8* %call1, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval
  ret i8* %5
}

declare i32 @g_strcmp0(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #2

declare void @gtk_widget_set_default_direction(i32) #1

declare void @gui_unique_init(%struct._Gimp*) #1

declare void @gimp_widgets_init(void (i8*, i8*)*, i32 (%struct._GimpRGB*)*, i32 (%struct._GimpRGB*)*, void ()*) #1

; Function Attrs: nounwind uwtable
define internal void @gui_help_func(i8* %help_id, i8* %help_data) #0 {
entry:
  %help_id.addr = alloca i8*, align 8
  %help_data.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i8* %help_id, i8** %help_id.addr, align 8
  store i8* %help_data, i8** %help_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** @the_gui_gimp, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.gui_help_func, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** @the_gui_gimp, align 8
  %14 = load i8*, i8** %help_id.addr, align 8
  call void @gimp_help(%struct._Gimp* %13, %struct._GimpProgress* null, i8* null, i8* %14)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gui_get_foreground_func(%struct._GimpRGB* %color) #0 {
entry:
  %retval = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gui_get_foreground_func, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._Gimp*, %struct._Gimp** @the_gui_gimp, align 8
  %2 = bitcast %struct._Gimp* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #7
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else.3, label %if.then.2

if.then.2:                                        ; preds = %do.body.1
  store i32 0, i32* %__r, align 4
  br label %if.end.11

if.else.3:                                        ; preds = %do.body.1
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else.3
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp6 = icmp eq i64 %8, %9
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.10

if.else.8:                                        ; preds = %land.lhs.true, %if.else.3
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #9
  store i32 %call9, i32* %__r, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.then.7
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.2
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool12 = icmp ne i32 %13, 0
  br i1 %tobool12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.end.11
  br label %if.end.15

if.else.14:                                       ; preds = %if.end.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gui_get_foreground_func, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._Gimp*, %struct._Gimp** @the_gui_gimp, align 8
  %call17 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %14)
  %15 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_context_get_foreground(%struct._GimpContext* %call17, %struct._GimpRGB* %15)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @gui_get_background_func(%struct._GimpRGB* %color) #0 {
entry:
  %retval = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gui_get_background_func, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._Gimp*, %struct._Gimp** @the_gui_gimp, align 8
  %2 = bitcast %struct._Gimp* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #7
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else.3, label %if.then.2

if.then.2:                                        ; preds = %do.body.1
  store i32 0, i32* %__r, align 4
  br label %if.end.11

if.else.3:                                        ; preds = %do.body.1
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else.3
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp6 = icmp eq i64 %8, %9
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.10

if.else.8:                                        ; preds = %land.lhs.true, %if.else.3
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #9
  store i32 %call9, i32* %__r, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.then.7
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.2
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool12 = icmp ne i32 %13, 0
  br i1 %tobool12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.end.11
  br label %if.end.15

if.else.14:                                       ; preds = %if.end.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gui_get_background_func, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._Gimp*, %struct._Gimp** @the_gui_gimp, align 8
  %call17 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %14)
  %15 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_context_get_background(%struct._GimpContext* %call17, %struct._GimpRGB* %15)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare i8* @g_type_class_ref(i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_select_get_type() #3

declare void @gtk_window_set_auto_startup_notification(i32) #1

declare void @gimp_dnd_init(%struct._Gimp*) #1

declare void @themes_init(%struct._Gimp*) #1

declare %struct._GdkScreen* @gdk_screen_get_default() #1

declare void @gtk_widget_set_default_colormap(%struct._GdkColormap*) #1

declare %struct._GdkColormap* @gdk_screen_get_rgb_colormap(%struct._GdkScreen*) #1

declare void @splash_create(i32) #1

declare void @splash_update(i8*, i8*, double) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gui_initialize_after_callback(%struct._Gimp* %gimp, void (i8*, i8*, double)* %status_callback) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %status_callback.addr = alloca void (i8*, i8*, double)*, align 8
  %name = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %display = alloca i8*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store void (i8*, i8*, double)* %status_callback, void (i8*, i8*, double)** %status_callback.addr, align 8
  store i8* null, i8** %name, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gui_initialize_after_callback, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 4
  %14 = load i32, i32* %be_verbose, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %do.end
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gui_initialize_after_callback, i32 0, i32 0))
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %do.end
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8** %name, align 8
  %15 = load i8*, i8** %name, align 8
  %tobool14 = icmp ne i8* %15, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.13
  %call17 = call i8* @gdk_get_display()
  store i8* %call17, i8** %display, align 8
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %16, i32 0, i32 25
  %17 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %environ_table = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %17, i32 0, i32 17
  %18 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table, align 8
  %19 = load i8*, i8** %name, align 8
  %20 = load i8*, i8** %display, align 8
  call void @gimp_environ_table_add(%struct._GimpEnvironTable* %18, i8* %19, i8* %20, i8* null)
  %21 = load i8*, i8** %display, align 8
  call void @g_free(i8* %21)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end.13
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_tools_init(%struct._Gimp* %22)
  %23 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call19 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %23)
  %24 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call20 = call %struct._GimpToolInfo* @gimp_tool_info_get_standard(%struct._Gimp* %24)
  call void @gimp_context_set_tool(%struct._GimpContext* %call19, %struct._GimpToolInfo* %call20)
  br label %return

return:                                           ; preds = %if.end.18, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gui_restore_callback(%struct._Gimp* %gimp, void (i8*, i8*, double)* %status_callback) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %status_callback.addr = alloca void (i8*, i8*, double)*, align 8
  %display_config = alloca %struct._GimpDisplayConfig*, align 8
  %gui_config = alloca %struct._GimpGuiConfig*, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store void (i8*, i8*, double)* %status_callback, void (i8*, i8*, double)** %status_callback.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %0, i32 0, i32 1
  %1 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %2 = bitcast %struct._GimpCoreConfig* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_config_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplayConfig*
  store %struct._GimpDisplayConfig* %3, %struct._GimpDisplayConfig** %display_config, align 8
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config2 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %4, i32 0, i32 1
  %5 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config2, align 8
  %6 = bitcast %struct._GimpCoreConfig* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_gui_config_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpGuiConfig*
  store %struct._GimpGuiConfig* %7, %struct._GimpGuiConfig** %gui_config, align 8
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %8, i32 0, i32 4
  %9 = load i32, i32* %be_verbose, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gui_restore_callback, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gui_vtable_init(%struct._Gimp* %10)
  %11 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %show_tooltips = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %11, i32 0, i32 8
  %12 = load i32, i32* %show_tooltips, align 4
  %tobool5 = icmp ne i32 %12, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end
  call void @gimp_help_disable_tooltips()
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %13 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %14 = bitcast %struct._GimpGuiConfig* %13 to i8*
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %16 = bitcast %struct._Gimp* %15 to i8*
  %call8 = call i64 @g_signal_connect_data(i8* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0), void ()* bitcast (void (%struct._GimpGuiConfig*, %struct._GParamSpec*, %struct._Gimp*)* @gui_show_tooltips_notify to void ()*), i8* %16, void (i8*, %struct._GClosure*)* null, i32 0)
  %17 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %use_help = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %17, i32 0, i32 21
  %18 = load i32, i32* %use_help, align 4
  %tobool9 = icmp ne i32 %18, 0
  br i1 %tobool9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.7
  %19 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %show_help_button = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %19, i32 0, i32 22
  %20 = load i32, i32* %show_help_button, align 4
  %tobool10 = icmp ne i32 %20, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.7
  %21 = phi i1 [ false, %if.end.7 ], [ %tobool10, %land.rhs ]
  %land.ext = zext i1 %21 to i32
  call void @gimp_dialogs_show_help_button(i32 %land.ext)
  %22 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %23 = bitcast %struct._GimpGuiConfig* %22 to i8*
  %24 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %25 = bitcast %struct._Gimp* %24 to i8*
  %call11 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0), void ()* bitcast (void (%struct._GimpGuiConfig*, %struct._GParamSpec*, %struct._Gimp*)* @gui_show_help_button_notify to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 0)
  %26 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %27 = bitcast %struct._GimpGuiConfig* %26 to i8*
  %28 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %29 = bitcast %struct._Gimp* %28 to i8*
  %call12 = call i64 @g_signal_connect_data(i8* %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (void (%struct._GimpGuiConfig*, %struct._GParamSpec*, %struct._Gimp*)* @gui_user_manual_notify to void ()*), i8* %29, void (i8*, %struct._GClosure*)* null, i32 0)
  %30 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %31 = bitcast %struct._GimpGuiConfig* %30 to i8*
  %32 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %33 = bitcast %struct._Gimp* %32 to i8*
  %call13 = call i64 @g_signal_connect_data(i8* %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i32 0, i32 0), void ()* bitcast (void (%struct._GimpGuiConfig*, %struct._GParamSpec*, %struct._Gimp*)* @gui_show_help_button_notify to void ()*), i8* %33, void (i8*, %struct._GClosure*)* null, i32 0)
  %34 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call14 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %34)
  %35 = bitcast %struct._GimpContext* %call14 to i8*
  %36 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %37 = bitcast %struct._Gimp* %36 to i8*
  %call15 = call i64 @g_signal_connect_data(i8* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContext*, %struct._GimpDisplay*, %struct._Gimp*)* @gui_display_changed to void ()*), i8* %37, void (i8*, %struct._GClosure*)* null, i32 0)
  %38 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %monitor_res_from_gdk = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %38, i32 0, i32 18
  %39 = load i32, i32* %monitor_res_from_gdk, align 4
  %tobool16 = icmp ne i32 %39, 0
  br i1 %tobool16, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.end
  %40 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %monitor_xres = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %40, i32 0, i32 16
  %41 = load double, double* %monitor_xres, align 8
  %cmp = fcmp olt double %41, 5.000000e-03
  br i1 %cmp, label %if.then.19, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false
  %42 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %monitor_yres = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %42, i32 0, i32 17
  %43 = load double, double* %monitor_yres, align 8
  %cmp18 = fcmp olt double %43, 5.000000e-03
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %lor.lhs.false.17, %lor.lhs.false, %land.end
  call void @gimp_get_screen_resolution(%struct._GdkScreen* null, double* %xres, double* %yres)
  %44 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config20 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %44, i32 0, i32 1
  %45 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config20, align 8
  %46 = bitcast %struct._GimpCoreConfig* %45 to i8*
  %47 = load double, double* %xres, align 8
  %48 = load double, double* %yres, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0), double %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0), double %48, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.30, i32 0, i32 0), i32 1, i8* null)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %lor.lhs.false.17
  %49 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @actions_init(%struct._Gimp* %49)
  %50 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %51 = load %struct._GimpActionFactory*, %struct._GimpActionFactory** @global_action_factory, align 8
  call void @menus_init(%struct._Gimp* %50, %struct._GimpActionFactory* %51)
  %52 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_render_init(%struct._Gimp* %52)
  %53 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %54 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  call void @dialogs_init(%struct._Gimp* %53, %struct._GimpMenuFactory* %54)
  %55 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_clipboard_init(%struct._Gimp* %55)
  %56 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %57 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %global_buffer = getelementptr inbounds %struct._Gimp, %struct._Gimp* %57, i32 0, i32 34
  %58 = load %struct._GimpBuffer*, %struct._GimpBuffer** %global_buffer, align 8
  call void @gimp_clipboard_set_buffer(%struct._Gimp* %56, %struct._GimpBuffer* %58)
  %59 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %60 = bitcast %struct._Gimp* %59 to i8*
  %call22 = call i64 @g_signal_connect_data(i8* %60, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), void ()* bitcast (void (%struct._Gimp*)* @gui_global_buffer_changed to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %61 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_devices_init(%struct._Gimp* %61)
  %62 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_controllers_init(%struct._Gimp* %62)
  %63 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @session_init(%struct._Gimp* %63)
  %call23 = call i64 @gimp_color_selector_palette_get_type() #7
  %call24 = call i8* @g_type_class_ref(i64 %call23)
  call void @g_type_class_unref(i8* %call24)
  %64 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0)) #6
  call void %64(i8* null, i8* %call25, double 9.000000e-01)
  %65 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_recent_list_load(%struct._Gimp* %65)
  %66 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0)) #6
  call void %66(i8* null, i8* %call26, double 1.000000e+00)
  %67 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_tools_restore(%struct._Gimp* %67)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gui_restore_after_callback(%struct._Gimp* %gimp, void (i8*, i8*, double)* %status_callback) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %status_callback.addr = alloca void (i8*, i8*, double)*, align 8
  %gui_config = alloca %struct._GimpGuiConfig*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store void (i8*, i8*, double)* %status_callback, void (i8*, i8*, double)** %status_callback.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %0, i32 0, i32 1
  %1 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %2 = bitcast %struct._GimpCoreConfig* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_gui_config_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGuiConfig*
  store %struct._GimpGuiConfig* %3, %struct._GimpGuiConfig** %gui_config, align 8
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %4, i32 0, i32 4
  %5 = load i32, i32* %be_verbose, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gui_restore_after_callback, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %message_handler = getelementptr inbounds %struct._Gimp, %struct._Gimp* %6, i32 0, i32 10
  store i32 0, i32* %message_handler, align 4
  %7 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %restore_accels = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %7, i32 0, i32 12
  %8 = load i32, i32* %restore_accels, align 4
  %tobool2 = icmp ne i32 %8, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @menus_restore(%struct._Gimp* %9)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %call5 = call i64 @gimp_ui_configurer_get_type() #7
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call6 = call i8* (i64, i8*, ...) @g_object_new(i64 %call5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), %struct._Gimp* %10, i8* null)
  %11 = bitcast i8* %call6 to %struct._GimpUIConfigurer*
  store %struct._GimpUIConfigurer* %11, %struct._GimpUIConfigurer** @ui_configurer, align 8
  %12 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %14 = bitcast %struct._Gimp* %13 to i8*
  %15 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %tearoff_menus = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %15, i32 0, i32 9
  %16 = load i32, i32* %tearoff_menus, align 4
  %call7 = call %struct._GimpUIManager* @gimp_menu_factory_manager_new(%struct._GimpMenuFactory* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i8* %14, i32 %16)
  store %struct._GimpUIManager* %call7, %struct._GimpUIManager** @image_ui_manager, align 8
  %17 = load %struct._GimpUIManager*, %struct._GimpUIManager** @image_ui_manager, align 8
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %19 = bitcast %struct._Gimp* %18 to i8*
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %17, i8* %19)
  %20 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %21 = bitcast %struct._GimpGuiConfig* %20 to i8*
  %22 = load %struct._GimpUIConfigurer*, %struct._GimpUIConfigurer** @ui_configurer, align 8
  %23 = bitcast %struct._GimpUIConfigurer* %22 to i8*
  %call8 = call i64 @g_signal_connect_object(i8* %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.36, i32 0, i32 0), void ()* bitcast (void (%struct._GimpGuiConfig*, %struct._GParamSpec*, %struct._GimpUIConfigurer*)* @gui_single_window_mode_notify to void ()*), i8* %23, i32 0)
  %24 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %25 = bitcast %struct._GimpGuiConfig* %24 to i8*
  %26 = load %struct._GimpUIManager*, %struct._GimpUIManager** @image_ui_manager, align 8
  %27 = bitcast %struct._GimpUIManager* %26 to i8*
  %call9 = call i64 @g_signal_connect_object(i8* %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GimpGuiConfig*, %struct._GParamSpec*, %struct._GtkUIManager*)* @gui_tearoff_menus_notify to void ()*), i8* %27, i32 0)
  %28 = load %struct._GimpUIManager*, %struct._GimpUIManager** @image_ui_manager, align 8
  %29 = bitcast %struct._GimpUIManager* %28 to i8*
  %30 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %31 = bitcast %struct._Gimp* %30 to i8*
  %call10 = call i64 @g_signal_connect_data(i8* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0), void ()* bitcast (void (%struct._GimpUIManager*, i8*, %struct._Gimp*)* @gui_menu_show_tooltip to void ()*), i8* %31, void (i8*, %struct._GClosure*)* null, i32 0)
  %32 = load %struct._GimpUIManager*, %struct._GimpUIManager** @image_ui_manager, align 8
  %33 = bitcast %struct._GimpUIManager* %32 to i8*
  %34 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %35 = bitcast %struct._Gimp* %34 to i8*
  %call11 = call i64 @g_signal_connect_data(i8* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GimpUIManager*, %struct._Gimp*)* @gui_menu_hide_tooltip to void ()*), i8* %35, void (i8*, %struct._GClosure*)* null, i32 0)
  %36 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_devices_restore(%struct._Gimp* %36)
  %37 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %38 = load %struct._GimpUIManager*, %struct._GimpUIManager** @image_ui_manager, align 8
  call void @gimp_controllers_restore(%struct._Gimp* %37, %struct._GimpUIManager* %38)
  %39 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  %cmp = icmp eq void (i8*, i8*, double)* %39, @splash_update
  br i1 %cmp, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.4
  call void @splash_destroy()
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.4
  %40 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @color_history_restore(%struct._Gimp* %40)
  %41 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call14 = call i32 @gimp_get_show_gui(%struct._Gimp* %41)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.29

if.then.16:                                       ; preds = %if.end.13
  %42 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call17 = call %struct._GimpObject* @gimp_create_display(%struct._Gimp* %42, %struct._GimpImage* null, i32 0, double 1.000000e+00)
  %43 = bitcast %struct._GimpObject* %call17 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_display_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call18)
  %44 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %44, %struct._GimpDisplay** %display, align 8
  %45 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call20 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %45)
  store %struct._GimpDisplayShell* %call20, %struct._GimpDisplayShell** %shell, align 8
  %46 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %restore_session = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %46, i32 0, i32 6
  %47 = load i32, i32* %restore_session, align 4
  %tobool21 = icmp ne i32 %47, 0
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.16
  %48 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @session_restore(%struct._Gimp* %48)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.then.16
  %49 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %50 = bitcast %struct._GimpDisplayShell* %49 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_widget_get_type() #7
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call24)
  %51 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkWidget*
  %call26 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %51)
  %52 = bitcast %struct._GtkWidget* %call26 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_window_get_type() #7
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call27)
  %53 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %53)
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.23, %if.end.13
  call void @gdk_notify_startup_complete()
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gui_exit_callback(%struct._Gimp* %gimp, i32 %force) #0 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %force.addr = alloca i32, align 4
  %gui_config = alloca %struct._GimpGuiConfig*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %force, i32* %force.addr, align 4
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %0, i32 0, i32 1
  %1 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %2 = bitcast %struct._GimpCoreConfig* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_gui_config_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGuiConfig*
  store %struct._GimpGuiConfig* %3, %struct._GimpGuiConfig** %gui_config, align 8
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %4, i32 0, i32 4
  %5 = load i32, i32* %be_verbose, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gui_exit_callback, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %force.addr, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.end.9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call3 = call i32 @gimp_displays_dirty(%struct._Gimp* %7)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %land.lhs.true
  %call6 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %call7 = call %struct._GdkScreen* @gdk_screen_get_default()
  %call8 = call %struct._GtkWidget* @gimp_dialog_factory_dialog_raise(%struct._GimpDialogFactory* %call6, %struct._GdkScreen* %call7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i32 0, i32 0), i32 -1)
  store i32 1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %land.lhs.true, %if.end
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %message_handler = getelementptr inbounds %struct._Gimp, %struct._Gimp* %8, i32 0, i32 10
  store i32 1, i32* %message_handler, align 4
  call void @gui_unique_exit()
  %9 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %save_session_info = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %9, i32 0, i32 5
  %10 = load i32, i32* %save_session_info, align 4
  %tobool10 = icmp ne i32 %10, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  %11 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @session_save(%struct._Gimp* %11, i32 0)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.9
  %12 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @color_history_save(%struct._Gimp* %12)
  %13 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %save_accels = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %13, i32 0, i32 11
  %14 = load i32, i32* %save_accels, align 4
  %tobool13 = icmp ne i32 %14, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.12
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @menus_save(%struct._Gimp* %15, i32 0)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.12
  %16 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %save_device_status = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %16, i32 0, i32 4
  %17 = load i32, i32* %save_device_status, align 4
  %tobool16 = icmp ne i32 %17, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.15
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_devices_save(%struct._Gimp* %18, i32 0)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.15
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_controllers_save(%struct._Gimp* %19)
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call19 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %20)
  %21 = bitcast %struct._GimpContext* %call19 to i8*
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %23 = bitcast %struct._Gimp* %22 to i8*
  %call20 = call i32 @g_signal_handlers_disconnect_matched(i8* %21, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContext*, %struct._GimpDisplay*, %struct._Gimp*)* @gui_display_changed to i8*), i8* %23)
  %24 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_displays_delete(%struct._Gimp* %24)
  %25 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %26 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %save_tool_options = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %26, i32 0, i32 7
  %27 = load i32, i32* %save_tool_options, align 4
  call void @gimp_tools_save(%struct._Gimp* %25, i32 %27, i32 0)
  %28 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_tools_exit(%struct._Gimp* %28)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.5
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @gui_exit_after_callback(%struct._Gimp* %gimp, i32 %force) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %force.addr = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %force, i32* %force.addr, align 4
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %0, i32 0, i32 4
  %1 = load i32, i32* %be_verbose, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gui_exit_after_callback, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %2, i32 0, i32 1
  %3 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %4 = bitcast %struct._GimpCoreConfig* %3 to i8*
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %6 = bitcast %struct._Gimp* %5 to i8*
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %4, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpGuiConfig*, %struct._GParamSpec*, %struct._Gimp*)* @gui_show_help_button_notify to i8*), i8* %6)
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config1 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %7, i32 0, i32 1
  %8 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config1, align 8
  %9 = bitcast %struct._GimpCoreConfig* %8 to i8*
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %11 = bitcast %struct._Gimp* %10 to i8*
  %call2 = call i32 @g_signal_handlers_disconnect_matched(i8* %9, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpGuiConfig*, %struct._GParamSpec*, %struct._Gimp*)* @gui_user_manual_notify to i8*), i8* %11)
  %12 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config3 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %12, i32 0, i32 1
  %13 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config3, align 8
  %14 = bitcast %struct._GimpCoreConfig* %13 to i8*
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %16 = bitcast %struct._Gimp* %15 to i8*
  %call4 = call i32 @g_signal_handlers_disconnect_matched(i8* %14, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpGuiConfig*, %struct._GParamSpec*, %struct._Gimp*)* @gui_show_tooltips_notify to i8*), i8* %16)
  %17 = load %struct._GimpUIManager*, %struct._GimpUIManager** @image_ui_manager, align 8
  %18 = bitcast %struct._GimpUIManager* %17 to i8*
  call void @g_object_unref(i8* %18)
  store %struct._GimpUIManager* null, %struct._GimpUIManager** @image_ui_manager, align 8
  %19 = load %struct._GimpUIConfigurer*, %struct._GimpUIConfigurer** @ui_configurer, align 8
  %20 = bitcast %struct._GimpUIConfigurer* %19 to i8*
  call void @g_object_unref(i8* %20)
  store %struct._GimpUIConfigurer* null, %struct._GimpUIConfigurer** @ui_configurer, align 8
  %21 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %22 = bitcast %struct._Gimp* %21 to i8*
  %call5 = call i32 @g_signal_handlers_disconnect_matched(i8* %22, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._Gimp*)* @gui_global_buffer_changed to i8*), i8* null)
  %23 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_clipboard_exit(%struct._Gimp* %23)
  %24 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @session_exit(%struct._Gimp* %24)
  %25 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @menus_exit(%struct._Gimp* %25)
  %26 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @actions_exit(%struct._Gimp* %26)
  %27 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_render_exit(%struct._Gimp* %27)
  %28 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_controllers_exit(%struct._Gimp* %28)
  %29 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_devices_exit(%struct._Gimp* %29)
  %30 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @dialogs_exit(%struct._Gimp* %30)
  %31 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @themes_exit(%struct._Gimp* %31)
  %call6 = call i64 @gimp_color_select_get_type() #7
  %call7 = call i8* @g_type_class_peek(i64 %call6)
  call void @g_type_class_unref(i8* %call7)
  ret i32 0
}

declare i8* @gtk_check_version(i32, i32, i32) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare void @gimp_help(%struct._Gimp*, %struct._GimpProgress*, i8*, i8*) #1

declare void @gimp_context_get_foreground(%struct._GimpContext*, %struct._GimpRGB*) #1

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #1

declare void @gimp_context_get_background(%struct._GimpContext*, %struct._GimpRGB*) #1

declare void @g_print(i8*, ...) #1

declare i8* @gdk_get_display() #1

declare void @gimp_environ_table_add(%struct._GimpEnvironTable*, i8*, i8*, i8*) #1

declare void @g_free(i8*) #1

declare void @gimp_tools_init(%struct._Gimp*) #1

declare void @gimp_context_set_tool(%struct._GimpContext*, %struct._GimpToolInfo*) #1

declare %struct._GimpToolInfo* @gimp_tool_info_get_standard(%struct._Gimp*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_display_config_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_gui_config_get_type() #3

declare void @gui_vtable_init(%struct._Gimp*) #1

declare void @gimp_help_disable_tooltips() #1

; Function Attrs: nounwind uwtable
define internal void @gui_show_tooltips_notify(%struct._GimpGuiConfig* %gui_config, %struct._GParamSpec* %param_spec, %struct._Gimp* %gimp) #0 {
entry:
  %gui_config.addr = alloca %struct._GimpGuiConfig*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  store %struct._GimpGuiConfig* %gui_config, %struct._GimpGuiConfig** %gui_config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config.addr, align 8
  %show_tooltips = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %0, i32 0, i32 8
  %1 = load i32, i32* %show_tooltips, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @gimp_help_enable_tooltips()
  br label %if.end

if.else:                                          ; preds = %entry
  call void @gimp_help_disable_tooltips()
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @gimp_dialogs_show_help_button(i32) #1

; Function Attrs: nounwind uwtable
define internal void @gui_show_help_button_notify(%struct._GimpGuiConfig* %gui_config, %struct._GParamSpec* %param_spec, %struct._Gimp* %gimp) #0 {
entry:
  %gui_config.addr = alloca %struct._GimpGuiConfig*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  store %struct._GimpGuiConfig* %gui_config, %struct._GimpGuiConfig** %gui_config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config.addr, align 8
  %use_help = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %0, i32 0, i32 21
  %1 = load i32, i32* %use_help, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config.addr, align 8
  %show_help_button = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %2, i32 0, i32 22
  %3 = load i32, i32* %show_help_button, align 4
  %tobool1 = icmp ne i32 %3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  call void @gimp_dialogs_show_help_button(i32 %land.ext)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gui_user_manual_notify(%struct._GimpGuiConfig* %gui_config, %struct._GParamSpec* %param_spec, %struct._Gimp* %gimp) #0 {
entry:
  %gui_config.addr = alloca %struct._GimpGuiConfig*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  store %struct._GimpGuiConfig* %gui_config, %struct._GimpGuiConfig** %gui_config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_help_user_manual_changed(%struct._Gimp* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gui_display_changed(%struct._GimpContext* %context, %struct._GimpDisplay* %display, %struct._Gimp* %gimp) #0 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %list = alloca %struct._GList*, align 8
  %display2 = alloca %struct._GimpDisplay*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %tobool = icmp ne %struct._GimpDisplay* %0, null
  br i1 %tobool, label %if.end.9, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call = call %struct._GimpImage* @gimp_context_get_image(%struct._GimpContext* %1)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool1 = icmp ne %struct._GimpImage* %2, null
  br i1 %tobool1, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %if.then
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call3 = call %struct._GList* @gimp_get_display_iter(%struct._Gimp* %3)
  store %struct._GList* %call3, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.2
  %4 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool4 = icmp ne %struct._GList* %4, null
  br i1 %tobool4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8
  %7 = bitcast i8* %6 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %7, %struct._GimpDisplay** %display2, align 8
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display2, align 8
  %call5 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %8)
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp = icmp eq %struct._GimpImage* %call5, %9
  br i1 %cmp, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %for.body
  %10 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %11 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display2, align 8
  %12 = bitcast %struct._GimpDisplay* %11 to i8*
  call void @gimp_context_set_display(%struct._GimpContext* %10, i8* %12)
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to i8*
  call void @g_signal_stop_emission_by_name(i8* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool7 = icmp ne %struct._GList* %15, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %16, i32 0, i32 1
  %17 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %17, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_set_image(%struct._GimpContext* %18, %struct._GimpImage* null)
  br label %if.end.8

if.end.8:                                         ; preds = %for.end, %if.then
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %entry
  %19 = load %struct._GimpUIManager*, %struct._GimpUIManager** @image_ui_manager, align 8
  %20 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %21 = bitcast %struct._GimpDisplay* %20 to i8*
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %19, i8* %21)
  br label %return

return:                                           ; preds = %if.end.9, %if.then.6
  ret void
}

declare void @gimp_get_screen_resolution(%struct._GdkScreen*, double*, double*) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare void @actions_init(%struct._Gimp*) #1

declare void @menus_init(%struct._Gimp*, %struct._GimpActionFactory*) #1

declare void @gimp_render_init(%struct._Gimp*) #1

declare void @dialogs_init(%struct._Gimp*, %struct._GimpMenuFactory*) #1

declare void @gimp_clipboard_init(%struct._Gimp*) #1

declare void @gimp_clipboard_set_buffer(%struct._Gimp*, %struct._GimpBuffer*) #1

; Function Attrs: nounwind uwtable
define internal void @gui_global_buffer_changed(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %global_buffer = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 34
  %2 = load %struct._GimpBuffer*, %struct._GimpBuffer** %global_buffer, align 8
  call void @gimp_clipboard_set_buffer(%struct._Gimp* %0, %struct._GimpBuffer* %2)
  ret void
}

declare void @gimp_devices_init(%struct._Gimp*) #1

declare void @gimp_controllers_init(%struct._Gimp*) #1

declare void @session_init(%struct._Gimp*) #1

declare void @g_type_class_unref(i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_selector_palette_get_type() #3

declare void @gimp_recent_list_load(%struct._Gimp*) #1

declare void @gimp_tools_restore(%struct._Gimp*) #1

declare void @gimp_help_enable_tooltips() #1

declare void @gimp_help_user_manual_changed(%struct._Gimp*) #1

declare %struct._GimpImage* @gimp_context_get_image(%struct._GimpContext*) #1

declare %struct._GList* @gimp_get_display_iter(%struct._Gimp*) #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare void @gimp_context_set_display(%struct._GimpContext*, i8*) #1

declare void @g_signal_stop_emission_by_name(i8*, i8*) #1

declare void @gimp_context_set_image(%struct._GimpContext*, %struct._GimpImage*) #1

declare void @gimp_ui_manager_update(%struct._GimpUIManager*, i8*) #1

declare void @menus_restore(%struct._Gimp*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_ui_configurer_get_type() #3

declare %struct._GimpUIManager* @gimp_menu_factory_manager_new(%struct._GimpMenuFactory*, i8*, i8*, i32) #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gui_single_window_mode_notify(%struct._GimpGuiConfig* %gui_config, %struct._GParamSpec* %pspec, %struct._GimpUIConfigurer* %ui_configurer) #0 {
entry:
  %gui_config.addr = alloca %struct._GimpGuiConfig*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %ui_configurer.addr = alloca %struct._GimpUIConfigurer*, align 8
  store %struct._GimpGuiConfig* %gui_config, %struct._GimpGuiConfig** %gui_config.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpUIConfigurer* %ui_configurer, %struct._GimpUIConfigurer** %ui_configurer.addr, align 8
  %0 = load %struct._GimpUIConfigurer*, %struct._GimpUIConfigurer** %ui_configurer.addr, align 8
  %1 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config.addr, align 8
  %single_window_mode = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %1, i32 0, i32 32
  %2 = load i32, i32* %single_window_mode, align 4
  call void @gimp_ui_configurer_configure(%struct._GimpUIConfigurer* %0, i32 %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gui_tearoff_menus_notify(%struct._GimpGuiConfig* %gui_config, %struct._GParamSpec* %pspec, %struct._GtkUIManager* %manager) #0 {
entry:
  %gui_config.addr = alloca %struct._GimpGuiConfig*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %manager.addr = alloca %struct._GtkUIManager*, align 8
  store %struct._GimpGuiConfig* %gui_config, %struct._GimpGuiConfig** %gui_config.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GtkUIManager* %manager, %struct._GtkUIManager** %manager.addr, align 8
  %0 = load %struct._GtkUIManager*, %struct._GtkUIManager** %manager.addr, align 8
  %1 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config.addr, align 8
  %tearoff_menus = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %1, i32 0, i32 9
  %2 = load i32, i32* %tearoff_menus, align 4
  call void @gtk_ui_manager_set_add_tearoffs(%struct._GtkUIManager* %0, i32 %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gui_menu_show_tooltip(%struct._GimpUIManager* %manager, i8* %tooltip, %struct._Gimp* %gimp) #0 {
entry:
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  %tooltip.addr = alloca i8*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %statusbar = alloca %struct._GimpStatusbar*, align 8
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  store i8* %tooltip, i8** %tooltip.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call1 = call i8* @gimp_context_get_display(%struct._GimpContext* %1)
  %2 = bitcast i8* %call1 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %2, %struct._GimpDisplay** %display, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call2 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %4)
  store %struct._GimpDisplayShell* %call2, %struct._GimpDisplayShell** %shell, align 8
  %5 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call3 = call %struct._GimpStatusbar* @gimp_display_shell_get_statusbar(%struct._GimpDisplayShell* %5)
  store %struct._GimpStatusbar* %call3, %struct._GimpStatusbar** %statusbar, align 8
  %6 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %7 = load i8*, i8** %tooltip.addr, align 8
  call void (%struct._GimpStatusbar*, i8*, i8*, i8*, ...) @gimp_statusbar_push(%struct._GimpStatusbar* %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gui_menu_hide_tooltip(%struct._GimpUIManager* %manager, %struct._Gimp* %gimp) #0 {
entry:
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %statusbar = alloca %struct._GimpStatusbar*, align 8
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call1 = call i8* @gimp_context_get_display(%struct._GimpContext* %1)
  %2 = bitcast i8* %call1 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %2, %struct._GimpDisplay** %display, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call2 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %4)
  store %struct._GimpDisplayShell* %call2, %struct._GimpDisplayShell** %shell, align 8
  %5 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call3 = call %struct._GimpStatusbar* @gimp_display_shell_get_statusbar(%struct._GimpDisplayShell* %5)
  store %struct._GimpStatusbar* %call3, %struct._GimpStatusbar** %statusbar, align 8
  %6 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  call void @gimp_statusbar_pop(%struct._GimpStatusbar* %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gimp_devices_restore(%struct._Gimp*) #1

declare void @gimp_controllers_restore(%struct._Gimp*, %struct._GimpUIManager*) #1

declare void @splash_destroy() #1

declare void @color_history_restore(%struct._Gimp*) #1

declare i32 @gimp_get_show_gui(%struct._Gimp*) #1

declare %struct._GimpObject* @gimp_create_display(%struct._Gimp*, %struct._GimpImage*, i32, double) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_display_get_type() #3

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

declare void @session_restore(%struct._Gimp*) #1

declare void @gtk_window_present(%struct._GtkWindow*) #1

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #3

declare void @gdk_notify_startup_complete() #1

declare void @gimp_ui_configurer_configure(%struct._GimpUIConfigurer*, i32) #1

declare void @gtk_ui_manager_set_add_tearoffs(%struct._GtkUIManager*, i32) #1

declare i8* @gimp_context_get_display(%struct._GimpContext*) #1

declare %struct._GimpStatusbar* @gimp_display_shell_get_statusbar(%struct._GimpDisplayShell*) #1

declare void @gimp_statusbar_push(%struct._GimpStatusbar*, i8*, i8*, i8*, ...) #1

declare void @gimp_statusbar_pop(%struct._GimpStatusbar*, i8*) #1

declare i32 @gimp_displays_dirty(%struct._Gimp*) #1

declare %struct._GtkWidget* @gimp_dialog_factory_dialog_raise(%struct._GimpDialogFactory*, %struct._GdkScreen*, i8*, i32) #1

declare %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton() #1

declare void @gui_unique_exit() #1

declare void @session_save(%struct._Gimp*, i32) #1

declare void @color_history_save(%struct._Gimp*) #1

declare void @menus_save(%struct._Gimp*, i32) #1

declare void @gimp_devices_save(%struct._Gimp*, i32) #1

declare void @gimp_controllers_save(%struct._Gimp*) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @gimp_displays_delete(%struct._Gimp*) #1

declare void @gimp_tools_save(%struct._Gimp*, i32, i32) #1

declare void @gimp_tools_exit(%struct._Gimp*) #1

declare void @g_object_unref(i8*) #1

declare void @gimp_clipboard_exit(%struct._Gimp*) #1

declare void @session_exit(%struct._Gimp*) #1

declare void @menus_exit(%struct._Gimp*) #1

declare void @actions_exit(%struct._Gimp*) #1

declare void @gimp_render_exit(%struct._Gimp*) #1

declare void @gimp_controllers_exit(%struct._Gimp*) #1

declare void @gimp_devices_exit(%struct._Gimp*) #1

declare void @dialogs_exit(%struct._Gimp*) #1

declare void @themes_exit(%struct._Gimp*) #1

declare i8* @g_type_class_peek(i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
