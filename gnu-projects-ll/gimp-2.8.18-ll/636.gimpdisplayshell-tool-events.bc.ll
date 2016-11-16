; ModuleID = './app/display/gimpdisplayshell-tool-events.bc'
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
%union._GdkEvent = type { %struct._GdkEventCrossing }
%struct._GdkEventCrossing = type { i32, %struct._GdkDrawable*, i8, %struct._GdkDrawable*, i32, double, double, double, double, i32, i32, i32, i32 }
%struct._GimpDisplayShell = type { %struct._GtkBox, %struct._GimpDisplay*, %struct._GimpUIManager*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct._GimpZoomModel*, double, i32, i32, i32, double, i32, i32, i32, %struct._Selection*, %struct._GList*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._cairo_surface*, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, i32, i8*, i8*, i32, i32, %struct._GdkPixbuf*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpColorDisplayStack*, i32, %struct._GtkWidget*, i32, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, %struct._GimpDrawable*, %struct._GimpRGB, %struct._GimpMotionBuffer*, %struct._GQueue* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
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
%struct._GimpMotionBuffer = type { %struct._GimpObject, i32, i32, double, double, double, double, %struct._GimpCoords, %struct._GArray*, %struct._GArray*, i32, i32, i32 }
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._GdkEventKey = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32, i8*, i16, i8, i8 }
%struct._GdkEventFocus = type { i32, %struct._GdkDrawable*, i8, i16 }
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GimpTool = type { %struct._GimpObject, %struct._GimpToolInfo*, i32, %struct._GimpToolControl*, %struct._GimpDisplay*, %struct._GimpDrawable*, %struct._GimpDisplay*, i32, i32, i32, i32, i32, %struct._GimpCoords, i32, %struct._GList*, %struct._GimpCanvasItem*, %struct._GimpDisplay* }
%struct._GimpToolControl = type { %struct._GimpObject, i32, i32, i32, %struct._GSList*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._GimpController = type { %struct._GObject, i8*, i8* }
%struct._GdkEventScroll = type { i32, %struct._GdkDrawable*, i8, i32, double, double, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkEventMotion = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i16, %struct._GdkDevice*, double, double }
%struct._GdkTimeCoord = type { i32, [128 x double] }
%struct._GimpDeviceInfo = type { %struct._GimpContext, %struct._GdkDevice*, %struct._GdkDisplay*, i32, i32, i32*, i32, %struct._GdkDeviceKey*, %struct._GimpCurve* }
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GdkDisplayPointerHooks = type { void (%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GimpCurve = type opaque
%struct._GtkMenu = type { %struct._GtkMenuShell, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAccelGroup*, i8*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i32, i32, i32, %struct._GdkRegion*, i32, i8 }
%struct._GtkMenuShell = type { %struct._GtkContainer, %struct._GList*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i8 }
%struct._GtkAccelGroup = type { %struct._GObject, i32, i32, %struct._GSList*, i32, %struct._GtkAccelGroupEntry* }
%struct._GtkAccelGroupEntry = type { %struct._GtkAccelKey, %struct._GClosure*, i32 }
%struct._GtkAccelKey = type { i32, i32, i16 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon.0] }
%union.anon.0 = type { i64 }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GdkRegion = type opaque
%struct._GimpControllerMouse = type { %struct._GimpController }
%struct._GimpControllerWheel = type { %struct._GimpController }
%struct._GimpControllerKeyboard = type { %struct._GimpController }
%struct._GimpDeviceManager = type { %struct._GimpList }
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }
%struct._GdkEventAny = type { i32, %struct._GdkDrawable*, i8 }
%struct._GimpImageWindow = type { %struct._GimpWindow }
%struct._GimpWindow = type { %struct._GtkWindow, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GimpPaintTool = type { %struct._GimpColorTool, i32, i32, i8*, i8*, i8*, %struct._GimpPaintCore* }
%struct._GimpColorTool = type { %struct._GimpDrawTool, i32, i32, i32, i32, %struct._GimpColorOptions*, %struct._GimpSamplePoint*, i32, i32, i32 }
%struct._GimpDrawTool = type { %struct._GimpTool, %struct._GimpDisplay*, i32, i32, i64, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GList* }
%struct._GimpColorOptions = type opaque
%struct._GimpSamplePoint = type opaque
%struct._GimpPaintCore = type opaque

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_display_shell_canvas_tool_events = private unnamed_addr constant [38 x i8] c"gimp_display_shell_canvas_tool_events\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"gtk_widget_get_realized (canvas)\00", align 1
@gimp_log_flags = external global i32, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"event (display %p): %s\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"%s: FOCUS_IN but canvas has no focus\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"%s: FOCUS_OUT but canvas has focus\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"/dummy-menubar/image-popup\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"gimp-color-picker-tool\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"gimp-move-tool\00", align 1
@__func__.gimp_display_shell_start_scrolling = private unnamed_addr constant [35 x i8] c"gimp_display_shell_start_scrolling\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"! shell->scrolling\00", align 1
@__func__.gimp_display_shell_stop_scrolling = private unnamed_addr constant [34 x i8] c"gimp_display_shell_stop_scrolling\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"shell->scrolling\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"windows\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"windows-show-display-next\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"windows-show-display-previous\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"windows-hide-docks\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_display_shell_events(%struct._GtkWidget* %widget, %union._GdkEvent* %event, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %set_display = alloca i32, align 4
  %kevent = alloca %struct._GdkEventKey*, align 8
  %fevent = alloca %struct._GdkEventFocus*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i32 0, i32* %set_display, align 4
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
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display3 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %4, i32 0, i32 1
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display3, align 8
  %call4 = call %struct._Gimp* @gimp_display_get_gimp(%struct._GimpDisplay* %5)
  store %struct._Gimp* %call4, %struct._Gimp** %gimp, align 8
  %6 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type = bitcast %union._GdkEvent* %6 to i32*
  %7 = load i32, i32* %type, align 4
  switch i32 %7, label %sw.default.75 [
    i32 8, label %sw.bb
    i32 9, label %sw.bb
    i32 4, label %sw.bb.67
    i32 31, label %sw.bb.67
    i32 12, label %sw.bb.68
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %8 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %9 = bitcast %union._GdkEvent* %8 to %struct._GdkEventKey*
  store %struct._GdkEventKey* %9, %struct._GdkEventKey** %kevent, align 8
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %busy = getelementptr inbounds %struct._Gimp, %struct._Gimp* %10, i32 0, i32 16
  %11 = load i32, i32* %busy, align 4
  %tobool5 = icmp ne i32 %11, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %sw.bb
  store i32 1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %sw.bb
  %12 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent, align 8
  %state = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %12, i32 0, i32 4
  %13 = load i32, i32* %state, align 4
  %and = and i32 %13, 256
  %tobool8 = icmp ne i32 %and, 0
  br i1 %tobool8, label %if.then.9, label %if.end.58

if.then.9:                                        ; preds = %if.end.7
  %14 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent, align 8
  %keyval = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %14, i32 0, i32 5
  %15 = load i32, i32* %keyval, align 4
  %cmp = icmp eq i32 %15, 65505
  br i1 %cmp, label %if.then.31, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %if.then.9
  %16 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent, align 8
  %keyval11 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %16, i32 0, i32 5
  %17 = load i32, i32* %keyval11, align 4
  %cmp12 = icmp eq i32 %17, 65506
  br i1 %cmp12, label %if.then.31, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.10
  %18 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent, align 8
  %keyval14 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %18, i32 0, i32 5
  %19 = load i32, i32* %keyval14, align 4
  %cmp15 = icmp eq i32 %19, 65507
  br i1 %cmp15, label %if.then.31, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.13
  %20 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent, align 8
  %keyval17 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %20, i32 0, i32 5
  %21 = load i32, i32* %keyval17, align 4
  %cmp18 = icmp eq i32 %21, 65508
  br i1 %cmp18, label %if.then.31, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.16
  %22 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent, align 8
  %keyval20 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %22, i32 0, i32 5
  %23 = load i32, i32* %keyval20, align 4
  %cmp21 = icmp eq i32 %23, 65513
  br i1 %cmp21, label %if.then.31, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %lor.lhs.false.19
  %24 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent, align 8
  %keyval23 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %24, i32 0, i32 5
  %25 = load i32, i32* %keyval23, align 4
  %cmp24 = icmp eq i32 %25, 65514
  br i1 %cmp24, label %if.then.31, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %lor.lhs.false.22
  %26 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent, align 8
  %keyval26 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %26, i32 0, i32 5
  %27 = load i32, i32* %keyval26, align 4
  %cmp27 = icmp eq i32 %27, 65511
  br i1 %cmp27, label %if.then.31, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false.25
  %28 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent, align 8
  %keyval29 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %28, i32 0, i32 5
  %29 = load i32, i32* %keyval29, align 4
  %cmp30 = icmp eq i32 %29, 65512
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %lor.lhs.false.28, %lor.lhs.false.25, %lor.lhs.false.22, %lor.lhs.false.19, %lor.lhs.false.16, %lor.lhs.false.13, %lor.lhs.false.10, %if.then.9
  br label %sw.epilog.76

if.end.32:                                        ; preds = %lor.lhs.false.28
  %30 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type33 = bitcast %union._GdkEvent* %30 to i32*
  %31 = load i32, i32* %type33, align 4
  %cmp34 = icmp eq i32 %31, 8
  br i1 %cmp34, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %if.end.32
  %32 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent, align 8
  %keyval36 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %32, i32 0, i32 5
  %33 = load i32, i32* %keyval36, align 4
  %cmp37 = icmp eq i32 %33, 32
  br i1 %cmp37, label %land.lhs.true, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %if.then.35
  %34 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent, align 8
  %keyval39 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %34, i32 0, i32 5
  %35 = load i32, i32* %keyval39, align 4
  %cmp40 = icmp eq i32 %35, 65408
  br i1 %cmp40, label %land.lhs.true, label %if.end.44

land.lhs.true:                                    ; preds = %lor.lhs.false.38, %if.then.35
  %36 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %space_release_pending = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %36, i32 0, i32 92
  %37 = load i32, i32* %space_release_pending, align 4
  %tobool41 = icmp ne i32 %37, 0
  br i1 %tobool41, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %land.lhs.true
  %38 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %space_pressed = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %38, i32 0, i32 91
  store i32 1, i32* %space_pressed, align 4
  %39 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %space_release_pending43 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %39, i32 0, i32 92
  store i32 0, i32* %space_release_pending43, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %land.lhs.true, %lor.lhs.false.38
  br label %if.end.57

if.else:                                          ; preds = %if.end.32
  %40 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent, align 8
  %keyval45 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %40, i32 0, i32 5
  %41 = load i32, i32* %keyval45, align 4
  %cmp46 = icmp eq i32 %41, 32
  br i1 %cmp46, label %land.lhs.true.50, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %if.else
  %42 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent, align 8
  %keyval48 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %42, i32 0, i32 5
  %43 = load i32, i32* %keyval48, align 4
  %cmp49 = icmp eq i32 %43, 65408
  br i1 %cmp49, label %land.lhs.true.50, label %if.end.56

land.lhs.true.50:                                 ; preds = %lor.lhs.false.47, %if.else
  %44 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %space_pressed51 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %44, i32 0, i32 91
  %45 = load i32, i32* %space_pressed51, align 4
  %tobool52 = icmp ne i32 %45, 0
  br i1 %tobool52, label %if.then.53, label %if.end.56

if.then.53:                                       ; preds = %land.lhs.true.50
  %46 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %space_pressed54 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %46, i32 0, i32 91
  store i32 0, i32* %space_pressed54, align 4
  %47 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %space_release_pending55 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %47, i32 0, i32 92
  store i32 1, i32* %space_release_pending55, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.53, %land.lhs.true.50, %lor.lhs.false.47
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.end.44
  store i32 1, i32* %retval
  br label %return

if.end.58:                                        ; preds = %if.end.7
  %48 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent, align 8
  %keyval59 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %48, i32 0, i32 5
  %49 = load i32, i32* %keyval59, align 4
  switch i32 %49, label %sw.default [
    i32 65361, label %sw.bb.60
    i32 65363, label %sw.bb.60
    i32 65362, label %sw.bb.60
    i32 65364, label %sw.bb.60
    i32 32, label %sw.bb.60
    i32 65408, label %sw.bb.60
    i32 65289, label %sw.bb.60
    i32 65056, label %sw.bb.60
    i32 65513, label %sw.bb.60
    i32 65514, label %sw.bb.60
    i32 65505, label %sw.bb.60
    i32 65506, label %sw.bb.60
    i32 65507, label %sw.bb.60
    i32 65508, label %sw.bb.60
    i32 65511, label %sw.bb.60
    i32 65512, label %sw.bb.60
    i32 65293, label %sw.bb.60
    i32 65421, label %sw.bb.60
    i32 65076, label %sw.bb.60
    i32 65288, label %sw.bb.60
    i32 65307, label %sw.bb.60
  ]

sw.bb.60:                                         ; preds = %if.end.58, %if.end.58, %if.end.58, %if.end.58, %if.end.58, %if.end.58, %if.end.58, %if.end.58, %if.end.58, %if.end.58, %if.end.58, %if.end.58, %if.end.58, %if.end.58, %if.end.58, %if.end.58, %if.end.58, %if.end.58, %if.end.58, %if.end.58, %if.end.58
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.58
  %50 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %space_pressed61 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %50, i32 0, i32 91
  %51 = load i32, i32* %space_pressed61, align 4
  %tobool62 = icmp ne i32 %51, 0
  br i1 %tobool62, label %if.then.65, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %sw.default
  %52 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scrolling = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %52, i32 0, i32 94
  %53 = load i32, i32* %scrolling, align 4
  %tobool64 = icmp ne i32 %53, 0
  br i1 %tobool64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %lor.lhs.false.63, %sw.default
  store i32 1, i32* %retval
  br label %return

if.end.66:                                        ; preds = %lor.lhs.false.63
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.66, %sw.bb.60
  store i32 1, i32* %set_display, align 4
  br label %sw.epilog.76

sw.bb.67:                                         ; preds = %if.end, %if.end
  store i32 1, i32* %set_display, align 4
  br label %sw.epilog.76

sw.bb.68:                                         ; preds = %if.end
  %54 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %55 = bitcast %union._GdkEvent* %54 to %struct._GdkEventFocus*
  store %struct._GdkEventFocus* %55, %struct._GdkEventFocus** %fevent, align 8
  %56 = load %struct._GdkEventFocus*, %struct._GdkEventFocus** %fevent, align 8
  %in = getelementptr inbounds %struct._GdkEventFocus, %struct._GdkEventFocus* %56, i32 0, i32 3
  %57 = load i16, i16* %in, align 2
  %conv = sext i16 %57 to i32
  %tobool69 = icmp ne i32 %conv, 0
  br i1 %tobool69, label %land.lhs.true.70, label %if.end.74

land.lhs.true.70:                                 ; preds = %sw.bb.68
  %58 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display71 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %58, i32 0, i32 1
  %59 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display71, align 8
  %config = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %59, i32 0, i32 2
  %60 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config, align 8
  %activate_on_focus = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %60, i32 0, i32 26
  %61 = load i32, i32* %activate_on_focus, align 4
  %tobool72 = icmp ne i32 %61, 0
  br i1 %tobool72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %land.lhs.true.70
  store i32 1, i32* %set_display, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %land.lhs.true.70, %sw.bb.68
  br label %sw.epilog.76

sw.default.75:                                    ; preds = %if.end
  br label %sw.epilog.76

sw.epilog.76:                                     ; preds = %sw.default.75, %if.end.74, %sw.bb.67, %sw.epilog, %if.then.31
  %62 = load i32, i32* %set_display, align 4
  %tobool77 = icmp ne i32 %62, 0
  br i1 %tobool77, label %if.then.78, label %if.end.81

if.then.78:                                       ; preds = %sw.epilog.76
  %63 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call79 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %63)
  %64 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display80 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %64, i32 0, i32 1
  %65 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display80, align 8
  %66 = bitcast %struct._GimpDisplay* %65 to i8*
  call void @gimp_context_set_display(%struct._GimpContext* %call79, i8* %66)
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.78, %sw.epilog.76
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.81, %if.then.65, %if.end.57, %if.then.6, %if.then
  %67 = load i32, i32* %retval
  ret i32 %67
}

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

declare %struct._Gimp* @gimp_display_get_gimp(%struct._GimpDisplay*) #1

declare void @gimp_context_set_display(%struct._GimpContext*, i8*) #1

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_display_shell_canvas_tool_events(%struct._GtkWidget* %canvas, %union._GdkEvent* %event, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %retval = alloca i32, align 4
  %canvas.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %display_coords = alloca %struct._GimpCoords, align 8
  %image_coords = alloca %struct._GimpCoords, align 8
  %state = alloca i32, align 4
  %time = alloca i32, align 4
  %device_changed = alloca i32, align 4
  %return_val = alloca i32, align 4
  %update_sw_cursor = alloca i32, align 4
  %cevent = alloca %struct._GdkEventCrossing*, align 8
  %cevent56 = alloca %struct._GdkEventCrossing*, align 8
  %fevent = alloca %struct._GdkEventFocus*, align 8
  %bevent = alloca %struct._GdkEventButton*, align 8
  %button_state = alloca i32, align 4
  %ui_manager = alloca %struct._GimpUIManager*, align 8
  %ui_path = alloca i8*, align 8
  %last_motion = alloca %struct._GimpCoords, align 8
  %bevent181 = alloca %struct._GdkEventButton*, align 8
  %active_tool = alloca %struct._GimpTool*, align 8
  %bevent202 = alloca %struct._GdkEventButton*, align 8
  %active_tool203 = alloca %struct._GimpTool*, align 8
  %bevent225 = alloca %struct._GdkEventButton*, align 8
  %active_tool226 = alloca %struct._GimpTool*, align 8
  %bevent294 = alloca %struct._GdkEventButton*, align 8
  %mouse = alloca %struct._GimpController*, align 8
  %sevent = alloca %struct._GdkEventScroll*, align 8
  %wheel314 = alloca %struct._GimpController*, align 8
  %direction = alloca i32, align 4
  %adj = alloca %struct._GtkAdjustment*, align 8
  %value = alloca double, align 8
  %mevent = alloca %struct._GdkEventMotion*, align 8
  %compressed_motion = alloca %union._GdkEvent*, align 8
  %motion_mode = alloca i32, align 4
  %active_tool376 = alloca %struct._GimpTool*, align 8
  %x404 = alloca i32, align 4
  %y413 = alloca i32, align 4
  %history_events = alloca %struct._GdkTimeCoord**, align 8
  %n_history_events = alloca i32, align 4
  %last_motion_time = alloca i32, align 4
  %device480 = alloca %struct._GimpDeviceInfo*, align 8
  %i = alloca i32, align 4
  %event_fill = alloca i32, align 4
  %kevent = alloca %struct._GdkEventKey*, align 8
  %active_tool529 = alloca %struct._GimpTool*, align 8
  %key = alloca i32, align 4
  %arrow_key = alloca i32, align 4
  %keyboard = alloca %struct._GimpController*, align 8
  %key584 = alloca i32, align 4
  %kevent596 = alloca %struct._GdkEventKey*, align 8
  %active_tool597 = alloca %struct._GimpTool*, align 8
  %key604 = alloca i32, align 4
  %key633 = alloca i32, align 4
  store %struct._GtkWidget* %canvas, %struct._GtkWidget** %canvas.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i32 0, i32* %device_changed, align 4
  store i32 0, i32* %return_val, align 4
  store i32 0, i32* %update_sw_cursor, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas.addr, align 8
  %call = call i32 @gtk_widget_get_realized(%struct._GtkWidget* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_display_shell_canvas_tool_events, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display1 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %1, i32 0, i32 1
  %2 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display1, align 8
  %tobool2 = icmp ne %struct._GimpDisplay* %2, null
  br i1 %tobool2, label %lor.lhs.false, label %if.then.6

lor.lhs.false:                                    ; preds = %do.end
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display3 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %3, i32 0, i32 1
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display3, align 8
  %call4 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %4)
  %tobool5 = icmp ne %struct._GimpDisplayShell* %call4, null
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %lor.lhs.false, %do.end
  store i32 1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %lor.lhs.false
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas.addr, align 8
  %6 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call8 = call i32 @gimp_display_shell_events(%struct._GtkWidget* %5, %union._GdkEvent* %6, %struct._GimpDisplayShell* %7)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  store i32 1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  %8 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %call12 = call %struct._GtkWidget* @gtk_get_event_widget(%union._GdkEvent* %8)
  %9 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas13 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %9, i32 0, i32 33
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas13, align 8
  %call14 = call i32 @gtk_widget_is_ancestor(%struct._GtkWidget* %call12, %struct._GtkWidget* %10)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.11
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.11
  %11 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display18 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %11, i32 0, i32 1
  %12 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display18, align 8
  store %struct._GimpDisplay* %12, %struct._GimpDisplay** %display, align 8
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call19 = call %struct._Gimp* @gimp_display_get_gimp(%struct._GimpDisplay* %13)
  store %struct._Gimp* %call19, %struct._Gimp** %gimp, align 8
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call20 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %14)
  store %struct._GimpImage* %call20, %struct._GimpImage** %image, align 8
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool21 = icmp ne %struct._GimpImage* %15, null
  br i1 %tobool21, label %if.end.24, label %if.then.22

if.then.22:                                       ; preds = %if.end.17
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas.addr, align 8
  %17 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %18 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call23 = call i32 @gimp_display_shell_canvas_no_image_events(%struct._GtkWidget* %16, %union._GdkEvent* %17, %struct._GimpDisplayShell* %18)
  store i32 %call23, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.17
  br label %do.body.25

do.body.25:                                       ; preds = %if.end.24
  %19 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %19, 1
  %tobool26 = icmp ne i32 %and, 0
  br i1 %tobool26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %do.body.25
  %20 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %21 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %call28 = call i8* @gimp_print_event(%union._GdkEvent* %21)
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_display_shell_canvas_tool_events, i32 0, i32 0), i32 321, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), %struct._GimpDisplay* %20, i8* %call28)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %do.body.25
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %busy = getelementptr inbounds %struct._Gimp, %struct._Gimp* %22, i32 0, i32 16
  %23 = load i32, i32* %busy, align 4
  %tobool31 = icmp ne i32 %23, 0
  br i1 %tobool31, label %if.end.37, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end.30
  %24 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %inferior_ignore_mode = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %24, i32 0, i32 90
  %25 = load i32, i32* %inferior_ignore_mode, align 4
  %tobool32 = icmp ne i32 %25, 0
  br i1 %tobool32, label %if.end.37, label %land.lhs.true.33

land.lhs.true.33:                                 ; preds = %land.lhs.true
  %26 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %27 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %call34 = call i32 @gimp_devices_check_change(%struct._Gimp* %26, %union._GdkEvent* %27)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %land.lhs.true.33
  %28 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_check_device_cursor(%struct._GimpDisplayShell* %28)
  store i32 1, i32* %device_changed, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %land.lhs.true.33, %land.lhs.true, %do.end.30
  %29 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %30 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  call void @gimp_display_shell_get_event_coords(%struct._GimpDisplayShell* %29, %union._GdkEvent* %30, %struct._GimpCoords* %display_coords, i32* %state, i32* %time)
  %31 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_untransform_event_coords(%struct._GimpDisplayShell* %31, %struct._GimpCoords* %display_coords, %struct._GimpCoords* %image_coords, i32* %update_sw_cursor)
  %32 = load i32, i32* %device_changed, align 4
  %tobool38 = icmp ne i32 %32, 0
  br i1 %tobool38, label %land.lhs.true.39, label %if.end.43

land.lhs.true.39:                                 ; preds = %if.end.37
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas.addr, align 8
  %call40 = call i32 @gtk_widget_has_focus(%struct._GtkWidget* %33)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %land.lhs.true.39
  %34 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %35 = load i32, i32* %state, align 4
  call void @gimp_display_shell_update_focus(%struct._GimpDisplayShell* %34, i32 1, %struct._GimpCoords* %image_coords, i32 %35)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %land.lhs.true.39, %if.end.37
  %36 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type = bitcast %union._GdkEvent* %36 to i32*
  %37 = load i32, i32* %type, align 4
  switch i32 %37, label %sw.default.645 [
    i32 10, label %sw.bb
    i32 11, label %sw.bb.55
    i32 20, label %sw.bb.71
    i32 21, label %sw.bb.73
    i32 12, label %sw.bb.75
    i32 4, label %sw.bb.96
    i32 5, label %sw.bb.180
    i32 6, label %sw.bb.201
    i32 7, label %sw.bb.224
    i32 31, label %sw.bb.313
    i32 3, label %sw.bb.375
    i32 8, label %sw.bb.528
    i32 9, label %sw.bb.595
  ]

sw.bb:                                            ; preds = %if.end.43
  %38 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %39 = bitcast %union._GdkEvent* %38 to %struct._GdkEventCrossing*
  store %struct._GdkEventCrossing* %39, %struct._GdkEventCrossing** %cevent, align 8
  %40 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %inferior_ignore_mode44 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %40, i32 0, i32 90
  %41 = load i32, i32* %inferior_ignore_mode44, align 4
  %tobool45 = icmp ne i32 %41, 0
  br i1 %tobool45, label %if.then.46, label %if.end.49

if.then.46:                                       ; preds = %sw.bb
  %42 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %inferior_ignore_mode47 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %42, i32 0, i32 90
  store i32 0, i32* %inferior_ignore_mode47, align 4
  %43 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas48 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %43, i32 0, i32 33
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas48, align 8
  call void @gtk_widget_set_extension_events(%struct._GtkWidget* %44, i32 1)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.46, %sw.bb
  %45 = load %struct._GdkEventCrossing*, %struct._GdkEventCrossing** %cevent, align 8
  %mode = getelementptr inbounds %struct._GdkEventCrossing, %struct._GdkEventCrossing* %45, i32 0, i32 9
  %46 = load i32, i32* %mode, align 4
  %cmp = icmp ne i32 %46, 0
  br i1 %cmp, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.49
  store i32 1, i32* %retval
  br label %return

if.end.51:                                        ; preds = %if.end.49
  %47 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %pointer_grabbed = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %47, i32 0, i32 86
  %48 = load i32, i32* %pointer_grabbed, align 4
  %tobool52 = icmp ne i32 %48, 0
  br i1 %tobool52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.51
  store i32 1, i32* %retval
  br label %return

if.end.54:                                        ; preds = %if.end.51
  %49 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_proximity_in(%struct._GimpDisplayShell* %49)
  store i32 1, i32* %update_sw_cursor, align 4
  %50 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %51 = load i32, i32* %state, align 4
  %52 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %proximity = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %52, i32 0, i32 30
  %53 = load i32, i32* %proximity, align 4
  %54 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  call void @tool_manager_oper_update_active(%struct._Gimp* %50, %struct._GimpCoords* %image_coords, i32 %51, i32 %53, %struct._GimpDisplay* %54)
  br label %sw.epilog.646

sw.bb.55:                                         ; preds = %if.end.43
  %55 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %56 = bitcast %union._GdkEvent* %55 to %struct._GdkEventCrossing*
  store %struct._GdkEventCrossing* %56, %struct._GdkEventCrossing** %cevent56, align 8
  %57 = load %struct._GdkEventCrossing*, %struct._GdkEventCrossing** %cevent56, align 8
  %detail = getelementptr inbounds %struct._GdkEventCrossing, %struct._GdkEventCrossing* %57, i32 0, i32 10
  %58 = load i32, i32* %detail, align 4
  %cmp57 = icmp eq i32 %58, 2
  br i1 %cmp57, label %if.then.58, label %if.end.61

if.then.58:                                       ; preds = %sw.bb.55
  %59 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %inferior_ignore_mode59 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %59, i32 0, i32 90
  store i32 1, i32* %inferior_ignore_mode59, align 4
  %60 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas60 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %60, i32 0, i32 33
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas60, align 8
  call void @gtk_widget_set_extension_events(%struct._GtkWidget* %61, i32 0)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.58, %sw.bb.55
  %62 = load %struct._GdkEventCrossing*, %struct._GdkEventCrossing** %cevent56, align 8
  %mode62 = getelementptr inbounds %struct._GdkEventCrossing, %struct._GdkEventCrossing* %62, i32 0, i32 9
  %63 = load i32, i32* %mode62, align 4
  %cmp63 = icmp ne i32 %63, 0
  br i1 %cmp63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.end.61
  store i32 1, i32* %retval
  br label %return

if.end.65:                                        ; preds = %if.end.61
  %64 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %pointer_grabbed66 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %64, i32 0, i32 86
  %65 = load i32, i32* %pointer_grabbed66, align 4
  %tobool67 = icmp ne i32 %65, 0
  br i1 %tobool67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.end.65
  store i32 1, i32* %retval
  br label %return

if.end.69:                                        ; preds = %if.end.65
  %66 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_proximity_out(%struct._GimpDisplayShell* %66)
  %67 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %68 = load i32, i32* %state, align 4
  %69 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %proximity70 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %69, i32 0, i32 30
  %70 = load i32, i32* %proximity70, align 4
  %71 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  call void @tool_manager_oper_update_active(%struct._Gimp* %67, %struct._GimpCoords* %image_coords, i32 %68, i32 %70, %struct._GimpDisplay* %71)
  br label %sw.epilog.646

sw.bb.71:                                         ; preds = %if.end.43
  %72 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_proximity_in(%struct._GimpDisplayShell* %72)
  %73 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %74 = load i32, i32* %state, align 4
  %75 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %proximity72 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %75, i32 0, i32 30
  %76 = load i32, i32* %proximity72, align 4
  %77 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  call void @tool_manager_oper_update_active(%struct._Gimp* %73, %struct._GimpCoords* %image_coords, i32 %74, i32 %76, %struct._GimpDisplay* %77)
  br label %sw.epilog.646

sw.bb.73:                                         ; preds = %if.end.43
  %78 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_proximity_out(%struct._GimpDisplayShell* %78)
  %79 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %80 = load i32, i32* %state, align 4
  %81 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %proximity74 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %81, i32 0, i32 30
  %82 = load i32, i32* %proximity74, align 4
  %83 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  call void @tool_manager_oper_update_active(%struct._Gimp* %79, %struct._GimpCoords* %image_coords, i32 %80, i32 %82, %struct._GimpDisplay* %83)
  br label %sw.epilog.646

sw.bb.75:                                         ; preds = %if.end.43
  %84 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %85 = bitcast %union._GdkEvent* %84 to %struct._GdkEventFocus*
  store %struct._GdkEventFocus* %85, %struct._GdkEventFocus** %fevent, align 8
  %86 = load %struct._GdkEventFocus*, %struct._GdkEventFocus** %fevent, align 8
  %in = getelementptr inbounds %struct._GdkEventFocus, %struct._GdkEventFocus* %86, i32 0, i32 3
  %87 = load i16, i16* %in, align 2
  %tobool76 = icmp ne i16 %87, 0
  br i1 %tobool76, label %if.then.77, label %if.else.86

if.then.77:                                       ; preds = %sw.bb.75
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas.addr, align 8
  %call78 = call i32 @gtk_widget_has_focus(%struct._GtkWidget* %88)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.end.81, label %if.then.80

if.then.80:                                       ; preds = %if.then.77
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_display_shell_canvas_tool_events, i32 0, i32 0))
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %if.then.77
  %89 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %pointer_grabbed82 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %89, i32 0, i32 86
  %90 = load i32, i32* %pointer_grabbed82, align 4
  %tobool83 = icmp ne i32 %90, 0
  br i1 %tobool83, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.end.81
  store i32 1, i32* %retval
  br label %return

if.end.85:                                        ; preds = %if.end.81
  %91 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %92 = load i32, i32* %state, align 4
  call void @gimp_display_shell_update_focus(%struct._GimpDisplayShell* %91, i32 1, %struct._GimpCoords* %image_coords, i32 %92)
  br label %if.end.95

if.else.86:                                       ; preds = %sw.bb.75
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas.addr, align 8
  %call87 = call i32 @gtk_widget_has_focus(%struct._GtkWidget* %93)
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.else.86
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_display_shell_canvas_tool_events, i32 0, i32 0))
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.89, %if.else.86
  %94 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %pointer_grabbed91 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %94, i32 0, i32 86
  %95 = load i32, i32* %pointer_grabbed91, align 4
  %tobool92 = icmp ne i32 %95, 0
  br i1 %tobool92, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.end.90
  store i32 1, i32* %retval
  br label %return

if.end.94:                                        ; preds = %if.end.90
  %96 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_update_focus(%struct._GimpDisplayShell* %96, i32 0, %struct._GimpCoords* %image_coords, i32 0)
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.end.85
  br label %sw.epilog.646

sw.bb.96:                                         ; preds = %if.end.43
  %97 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %98 = bitcast %union._GdkEvent* %97 to %struct._GdkEventButton*
  store %struct._GdkEventButton* %98, %struct._GdkEventButton** %bevent, align 8
  %99 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %busy97 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %99, i32 0, i32 16
  %100 = load i32, i32* %busy97, align 4
  %tobool98 = icmp ne i32 %100, 0
  br i1 %tobool98, label %if.then.104, label %lor.lhs.false.99

lor.lhs.false.99:                                 ; preds = %sw.bb.96
  %101 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scrolling = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %101, i32 0, i32 94
  %102 = load i32, i32* %scrolling, align 4
  %tobool100 = icmp ne i32 %102, 0
  br i1 %tobool100, label %if.then.104, label %lor.lhs.false.101

lor.lhs.false.101:                                ; preds = %lor.lhs.false.99
  %103 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %pointer_grabbed102 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %103, i32 0, i32 86
  %104 = load i32, i32* %pointer_grabbed102, align 4
  %tobool103 = icmp ne i32 %104, 0
  br i1 %tobool103, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %lor.lhs.false.101, %lor.lhs.false.99, %sw.bb.96
  store i32 1, i32* %retval
  br label %return

if.end.105:                                       ; preds = %lor.lhs.false.101
  %105 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %105, i32 0, i32 8
  %106 = load i32, i32* %button, align 4
  %call106 = call i32 @gimp_display_shell_button_to_state(i32 %106)
  store i32 %call106, i32* %button_state, align 4
  %107 = load i32, i32* %button_state, align 4
  %108 = load i32, i32* %state, align 4
  %or = or i32 %108, %107
  store i32 %or, i32* %state, align 4
  %109 = load i32, i32* %state, align 4
  %and107 = and i32 %109, 256
  %tobool108 = icmp ne i32 %and107, 0
  br i1 %tobool108, label %land.lhs.true.109, label %lor.lhs.false.112

land.lhs.true.109:                                ; preds = %if.end.105
  %110 = load i32, i32* %state, align 4
  %and110 = and i32 %110, 1536
  %tobool111 = icmp ne i32 %and110, 0
  br i1 %tobool111, label %if.then.124, label %lor.lhs.false.112

lor.lhs.false.112:                                ; preds = %land.lhs.true.109, %if.end.105
  %111 = load i32, i32* %state, align 4
  %and113 = and i32 %111, 512
  %tobool114 = icmp ne i32 %and113, 0
  br i1 %tobool114, label %land.lhs.true.115, label %lor.lhs.false.118

land.lhs.true.115:                                ; preds = %lor.lhs.false.112
  %112 = load i32, i32* %state, align 4
  %and116 = and i32 %112, 1280
  %tobool117 = icmp ne i32 %and116, 0
  br i1 %tobool117, label %if.then.124, label %lor.lhs.false.118

lor.lhs.false.118:                                ; preds = %land.lhs.true.115, %lor.lhs.false.112
  %113 = load i32, i32* %state, align 4
  %and119 = and i32 %113, 1024
  %tobool120 = icmp ne i32 %and119, 0
  br i1 %tobool120, label %land.lhs.true.121, label %if.end.125

land.lhs.true.121:                                ; preds = %lor.lhs.false.118
  %114 = load i32, i32* %state, align 4
  %and122 = and i32 %114, 768
  %tobool123 = icmp ne i32 %and122, 0
  br i1 %tobool123, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %land.lhs.true.121, %land.lhs.true.115, %land.lhs.true.109
  store i32 1, i32* %retval
  br label %return

if.end.125:                                       ; preds = %land.lhs.true.121, %lor.lhs.false.118
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas.addr, align 8
  %call126 = call i32 @gtk_widget_has_focus(%struct._GtkWidget* %115)
  %tobool127 = icmp ne i32 %call126, 0
  br i1 %tobool127, label %if.end.129, label %if.then.128

if.then.128:                                      ; preds = %if.end.125
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas.addr, align 8
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %116)
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.128, %if.end.125
  %117 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %118 = load i32, i32* %state, align 4
  call void @gimp_display_shell_update_focus(%struct._GimpDisplayShell* %117, i32 1, %struct._GimpCoords* %image_coords, i32 %118)
  %119 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %120 = load i32, i32* %state, align 4
  %121 = load i32, i32* %button_state, align 4
  %neg = xor i32 %121, -1
  %and130 = and i32 %120, %neg
  call void @gimp_display_shell_update_cursor(%struct._GimpDisplayShell* %119, %struct._GimpCoords* %display_coords, %struct._GimpCoords* %image_coords, i32 %and130, i32 0)
  %122 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %call131 = call i32 @gdk_event_triggers_context_menu(%union._GdkEvent* %122)
  %tobool132 = icmp ne i32 %call131, 0
  br i1 %tobool132, label %if.then.133, label %if.else.143

if.then.133:                                      ; preds = %if.end.129
  %123 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %124 = load i32, i32* %state, align 4
  %125 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call134 = call %struct._GimpUIManager* @tool_manager_get_popup_active(%struct._Gimp* %123, %struct._GimpCoords* %image_coords, i32 %124, %struct._GimpDisplay* %125, i8** %ui_path)
  store %struct._GimpUIManager* %call134, %struct._GimpUIManager** %ui_manager, align 8
  %126 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager, align 8
  %tobool135 = icmp ne %struct._GimpUIManager* %126, null
  br i1 %tobool135, label %if.then.136, label %if.else.139

if.then.136:                                      ; preds = %if.then.133
  %127 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager, align 8
  %128 = load i8*, i8** %ui_path, align 8
  %129 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %130 = bitcast %struct._GimpDisplayShell* %129 to %struct._GTypeInstance*
  %call137 = call i64 @gtk_widget_get_type() #5
  %call138 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %130, i64 %call137)
  %131 = bitcast %struct._GTypeInstance* %call138 to %struct._GtkWidget*
  call void @gimp_ui_manager_ui_popup(%struct._GimpUIManager* %127, i8* %128, %struct._GtkWidget* %131, void (%struct._GtkMenu*, i32*, i32*, i8*)* null, i8* null, void (i8*)* null, i8* null)
  br label %if.end.142

if.else.139:                                      ; preds = %if.then.133
  %132 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %popup_manager = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %132, i32 0, i32 2
  %133 = load %struct._GimpUIManager*, %struct._GimpUIManager** %popup_manager, align 8
  %134 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %135 = bitcast %struct._GimpDisplayShell* %134 to %struct._GTypeInstance*
  %call140 = call i64 @gtk_widget_get_type() #5
  %call141 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %135, i64 %call140)
  %136 = bitcast %struct._GTypeInstance* %call141 to %struct._GtkWidget*
  call void @gimp_ui_manager_ui_popup(%struct._GimpUIManager* %133, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0), %struct._GtkWidget* %136, void (%struct._GtkMenu*, i32*, i32*, i8*)* null, i8* null, void (i8*)* null, i8* null)
  br label %if.end.142

if.end.142:                                       ; preds = %if.else.139, %if.then.136
  br label %if.end.179

if.else.143:                                      ; preds = %if.end.129
  %137 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %button144 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %137, i32 0, i32 8
  %138 = load i32, i32* %button144, align 4
  %cmp145 = icmp eq i32 %138, 1
  br i1 %cmp145, label %if.then.146, label %if.else.170

if.then.146:                                      ; preds = %if.else.143
  %139 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call147 = call i32 @gimp_display_shell_pointer_grab(%struct._GimpDisplayShell* %139, %union._GdkEvent* null, i32 0)
  %tobool148 = icmp ne i32 %call147, 0
  br i1 %tobool148, label %if.end.150, label %if.then.149

if.then.149:                                      ; preds = %if.then.146
  store i32 1, i32* %retval
  br label %return

if.end.150:                                       ; preds = %if.then.146
  %140 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %space_pressed = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %140, i32 0, i32 91
  %141 = load i32, i32* %space_pressed, align 4
  %tobool151 = icmp ne i32 %141, 0
  br i1 %tobool151, label %if.end.159, label %land.lhs.true.152

land.lhs.true.152:                                ; preds = %if.end.150
  %142 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %space_release_pending = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %142, i32 0, i32 92
  %143 = load i32, i32* %space_release_pending, align 4
  %tobool153 = icmp ne i32 %143, 0
  br i1 %tobool153, label %if.end.159, label %if.then.154

if.then.154:                                      ; preds = %land.lhs.true.152
  %144 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %145 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %call155 = call i32 @gimp_display_shell_keyboard_grab(%struct._GimpDisplayShell* %144, %union._GdkEvent* %145)
  %tobool156 = icmp ne i32 %call155, 0
  br i1 %tobool156, label %if.end.158, label %if.then.157

if.then.157:                                      ; preds = %if.then.154
  %146 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_pointer_ungrab(%struct._GimpDisplayShell* %146, %union._GdkEvent* null)
  store i32 1, i32* %retval
  br label %return

if.end.158:                                       ; preds = %if.then.154
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %land.lhs.true.152, %if.end.150
  %147 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %148 = load i32, i32* %state, align 4
  %call160 = call i32 @gimp_display_shell_initialize_tool(%struct._GimpDisplayShell* %147, %struct._GimpCoords* %image_coords, i32 %148)
  %tobool161 = icmp ne i32 %call160, 0
  br i1 %tobool161, label %if.then.162, label %if.end.169

if.then.162:                                      ; preds = %if.end.159
  %149 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %motion_buffer = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %149, i32 0, i32 100
  %150 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %motion_buffer, align 8
  %151 = load i32, i32* %time, align 4
  call void @gimp_motion_buffer_begin_stroke(%struct._GimpMotionBuffer* %150, i32 %151, %struct._GimpCoords* %last_motion)
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %image_coords, i32 0, i32 0
  %152 = load double, double* %x, align 8
  %x163 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_motion, i32 0, i32 0
  store double %152, double* %x163, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %image_coords, i32 0, i32 1
  %153 = load double, double* %y, align 8
  %y164 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_motion, i32 0, i32 1
  store double %153, double* %y164, align 8
  %pressure = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %image_coords, i32 0, i32 2
  %154 = load double, double* %pressure, align 8
  %pressure165 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_motion, i32 0, i32 2
  store double %154, double* %pressure165, align 8
  %xtilt = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %image_coords, i32 0, i32 3
  %155 = load double, double* %xtilt, align 8
  %xtilt166 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_motion, i32 0, i32 3
  store double %155, double* %xtilt166, align 8
  %ytilt = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %image_coords, i32 0, i32 4
  %156 = load double, double* %ytilt, align 8
  %ytilt167 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_motion, i32 0, i32 4
  store double %156, double* %ytilt167, align 8
  %wheel = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %image_coords, i32 0, i32 5
  %157 = load double, double* %wheel, align 8
  %wheel168 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_motion, i32 0, i32 5
  store double %157, double* %wheel168, align 8
  %158 = bitcast %struct._GimpCoords* %image_coords to i8*
  %159 = bitcast %struct._GimpCoords* %last_motion to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %158, i8* %159, i64 64, i32 8, i1 false)
  %160 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %161 = load i32, i32* %time, align 4
  %162 = load i32, i32* %state, align 4
  %163 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  call void @tool_manager_button_press_active(%struct._Gimp* %160, %struct._GimpCoords* %image_coords, i32 %161, i32 %162, i32 0, %struct._GimpDisplay* %163)
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.162, %if.end.159
  br label %if.end.178

if.else.170:                                      ; preds = %if.else.143
  %164 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %button171 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %164, i32 0, i32 8
  %165 = load i32, i32* %button171, align 4
  %cmp172 = icmp eq i32 %165, 2
  br i1 %cmp172, label %if.then.173, label %if.end.177

if.then.173:                                      ; preds = %if.else.170
  %166 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %167 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %x174 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %167, i32 0, i32 4
  %168 = load double, double* %x174, align 8
  %conv = fptosi double %168 to i32
  %169 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %y175 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %169, i32 0, i32 5
  %170 = load double, double* %y175, align 8
  %conv176 = fptosi double %170 to i32
  call void @gimp_display_shell_start_scrolling(%struct._GimpDisplayShell* %166, %union._GdkEvent* null, i32 %conv, i32 %conv176)
  br label %if.end.177

if.end.177:                                       ; preds = %if.then.173, %if.else.170
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.177, %if.end.169
  br label %if.end.179

if.end.179:                                       ; preds = %if.end.178, %if.end.142
  store i32 1, i32* %return_val, align 4
  br label %sw.epilog.646

sw.bb.180:                                        ; preds = %if.end.43
  %171 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %172 = bitcast %union._GdkEvent* %171 to %struct._GdkEventButton*
  store %struct._GdkEventButton* %172, %struct._GdkEventButton** %bevent181, align 8
  %173 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %busy182 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %173, i32 0, i32 16
  %174 = load i32, i32* %busy182, align 4
  %tobool183 = icmp ne i32 %174, 0
  br i1 %tobool183, label %if.then.184, label %if.end.185

if.then.184:                                      ; preds = %sw.bb.180
  store i32 1, i32* %retval
  br label %return

if.end.185:                                       ; preds = %sw.bb.180
  %175 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call186 = call %struct._GimpTool* @tool_manager_get_active(%struct._Gimp* %175)
  store %struct._GimpTool* %call186, %struct._GimpTool** %active_tool, align 8
  %176 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent181, align 8
  %button187 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %176, i32 0, i32 8
  %177 = load i32, i32* %button187, align 4
  %cmp188 = icmp eq i32 %177, 1
  br i1 %cmp188, label %land.lhs.true.190, label %if.end.200

land.lhs.true.190:                                ; preds = %if.end.185
  %178 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %tobool191 = icmp ne %struct._GimpTool* %178, null
  br i1 %tobool191, label %land.lhs.true.192, label %if.end.200

land.lhs.true.192:                                ; preds = %land.lhs.true.190
  %179 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %179, i32 0, i32 3
  %180 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call193 = call i32 @gimp_tool_control_is_active(%struct._GimpToolControl* %180)
  %tobool194 = icmp ne i32 %call193, 0
  br i1 %tobool194, label %land.lhs.true.195, label %if.end.200

land.lhs.true.195:                                ; preds = %land.lhs.true.192
  %181 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %control196 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %181, i32 0, i32 3
  %182 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control196, align 8
  %call197 = call i32 @gimp_tool_control_get_wants_double_click(%struct._GimpToolControl* %182)
  %tobool198 = icmp ne i32 %call197, 0
  br i1 %tobool198, label %if.then.199, label %if.end.200

if.then.199:                                      ; preds = %land.lhs.true.195
  %183 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %184 = load i32, i32* %time, align 4
  %185 = load i32, i32* %state, align 4
  %186 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  call void @tool_manager_button_press_active(%struct._Gimp* %183, %struct._GimpCoords* %image_coords, i32 %184, i32 %185, i32 1, %struct._GimpDisplay* %186)
  br label %if.end.200

if.end.200:                                       ; preds = %if.then.199, %land.lhs.true.195, %land.lhs.true.192, %land.lhs.true.190, %if.end.185
  store i32 1, i32* %retval
  br label %return

sw.bb.201:                                        ; preds = %if.end.43
  %187 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %188 = bitcast %union._GdkEvent* %187 to %struct._GdkEventButton*
  store %struct._GdkEventButton* %188, %struct._GdkEventButton** %bevent202, align 8
  %189 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %busy204 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %189, i32 0, i32 16
  %190 = load i32, i32* %busy204, align 4
  %tobool205 = icmp ne i32 %190, 0
  br i1 %tobool205, label %if.then.206, label %if.end.207

if.then.206:                                      ; preds = %sw.bb.201
  store i32 1, i32* %retval
  br label %return

if.end.207:                                       ; preds = %sw.bb.201
  %191 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call208 = call %struct._GimpTool* @tool_manager_get_active(%struct._Gimp* %191)
  store %struct._GimpTool* %call208, %struct._GimpTool** %active_tool203, align 8
  %192 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent202, align 8
  %button209 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %192, i32 0, i32 8
  %193 = load i32, i32* %button209, align 4
  %cmp210 = icmp eq i32 %193, 1
  br i1 %cmp210, label %land.lhs.true.212, label %if.end.223

land.lhs.true.212:                                ; preds = %if.end.207
  %194 = load %struct._GimpTool*, %struct._GimpTool** %active_tool203, align 8
  %tobool213 = icmp ne %struct._GimpTool* %194, null
  br i1 %tobool213, label %land.lhs.true.214, label %if.end.223

land.lhs.true.214:                                ; preds = %land.lhs.true.212
  %195 = load %struct._GimpTool*, %struct._GimpTool** %active_tool203, align 8
  %control215 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %195, i32 0, i32 3
  %196 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control215, align 8
  %call216 = call i32 @gimp_tool_control_is_active(%struct._GimpToolControl* %196)
  %tobool217 = icmp ne i32 %call216, 0
  br i1 %tobool217, label %land.lhs.true.218, label %if.end.223

land.lhs.true.218:                                ; preds = %land.lhs.true.214
  %197 = load %struct._GimpTool*, %struct._GimpTool** %active_tool203, align 8
  %control219 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %197, i32 0, i32 3
  %198 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control219, align 8
  %call220 = call i32 @gimp_tool_control_get_wants_triple_click(%struct._GimpToolControl* %198)
  %tobool221 = icmp ne i32 %call220, 0
  br i1 %tobool221, label %if.then.222, label %if.end.223

if.then.222:                                      ; preds = %land.lhs.true.218
  %199 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %200 = load i32, i32* %time, align 4
  %201 = load i32, i32* %state, align 4
  %202 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  call void @tool_manager_button_press_active(%struct._Gimp* %199, %struct._GimpCoords* %image_coords, i32 %200, i32 %201, i32 2, %struct._GimpDisplay* %202)
  br label %if.end.223

if.end.223:                                       ; preds = %if.then.222, %land.lhs.true.218, %land.lhs.true.214, %land.lhs.true.212, %if.end.207
  store i32 1, i32* %retval
  br label %return

sw.bb.224:                                        ; preds = %if.end.43
  %203 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %204 = bitcast %union._GdkEvent* %203 to %struct._GdkEventButton*
  store %struct._GdkEventButton* %204, %struct._GdkEventButton** %bevent225, align 8
  %205 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_autoscroll_stop(%struct._GimpDisplayShell* %205)
  %206 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %busy227 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %206, i32 0, i32 16
  %207 = load i32, i32* %busy227, align 4
  %tobool228 = icmp ne i32 %207, 0
  br i1 %tobool228, label %if.then.229, label %if.end.230

if.then.229:                                      ; preds = %sw.bb.224
  store i32 1, i32* %retval
  br label %return

if.end.230:                                       ; preds = %sw.bb.224
  %208 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call231 = call %struct._GimpTool* @tool_manager_get_active(%struct._Gimp* %208)
  store %struct._GimpTool* %call231, %struct._GimpTool** %active_tool226, align 8
  %209 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent225, align 8
  %button232 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %209, i32 0, i32 8
  %210 = load i32, i32* %button232, align 4
  %call233 = call i32 @gimp_display_shell_key_to_state(i32 %210)
  %neg234 = xor i32 %call233, -1
  %211 = load i32, i32* %state, align 4
  %and235 = and i32 %211, %neg234
  store i32 %and235, i32* %state, align 4
  %212 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent225, align 8
  %button236 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %212, i32 0, i32 8
  %213 = load i32, i32* %button236, align 4
  %cmp237 = icmp eq i32 %213, 1
  br i1 %cmp237, label %if.then.239, label %if.else.279

if.then.239:                                      ; preds = %if.end.230
  %214 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %pointer_grabbed240 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %214, i32 0, i32 86
  %215 = load i32, i32* %pointer_grabbed240, align 4
  %tobool241 = icmp ne i32 %215, 0
  br i1 %tobool241, label %lor.lhs.false.242, label %if.then.245

lor.lhs.false.242:                                ; preds = %if.then.239
  %216 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scrolling243 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %216, i32 0, i32 94
  %217 = load i32, i32* %scrolling243, align 4
  %tobool244 = icmp ne i32 %217, 0
  br i1 %tobool244, label %if.then.245, label %if.end.246

if.then.245:                                      ; preds = %lor.lhs.false.242, %if.then.239
  store i32 1, i32* %retval
  br label %return

if.end.246:                                       ; preds = %lor.lhs.false.242
  %218 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %space_pressed247 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %218, i32 0, i32 91
  %219 = load i32, i32* %space_pressed247, align 4
  %tobool248 = icmp ne i32 %219, 0
  br i1 %tobool248, label %if.end.253, label %land.lhs.true.249

land.lhs.true.249:                                ; preds = %if.end.246
  %220 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %space_release_pending250 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %220, i32 0, i32 92
  %221 = load i32, i32* %space_release_pending250, align 4
  %tobool251 = icmp ne i32 %221, 0
  br i1 %tobool251, label %if.end.253, label %if.then.252

if.then.252:                                      ; preds = %land.lhs.true.249
  %222 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %223 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  call void @gimp_display_shell_keyboard_ungrab(%struct._GimpDisplayShell* %222, %union._GdkEvent* %223)
  br label %if.end.253

if.end.253:                                       ; preds = %if.then.252, %land.lhs.true.249, %if.end.246
  %224 = load %struct._GimpTool*, %struct._GimpTool** %active_tool226, align 8
  %tobool254 = icmp ne %struct._GimpTool* %224, null
  br i1 %tobool254, label %land.lhs.true.255, label %if.end.269

land.lhs.true.255:                                ; preds = %if.end.253
  %225 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call256 = call i32 @gimp_image_is_empty(%struct._GimpImage* %225)
  %tobool257 = icmp ne i32 %call256, 0
  br i1 %tobool257, label %lor.lhs.false.258, label %if.then.262

lor.lhs.false.258:                                ; preds = %land.lhs.true.255
  %226 = load %struct._GimpTool*, %struct._GimpTool** %active_tool226, align 8
  %control259 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %226, i32 0, i32 3
  %227 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control259, align 8
  %call260 = call i32 @gimp_tool_control_get_handle_empty_image(%struct._GimpToolControl* %227)
  %tobool261 = icmp ne i32 %call260, 0
  br i1 %tobool261, label %if.then.262, label %if.end.269

if.then.262:                                      ; preds = %lor.lhs.false.258, %land.lhs.true.255
  %228 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %motion_buffer263 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %228, i32 0, i32 100
  %229 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %motion_buffer263, align 8
  call void @gimp_motion_buffer_end_stroke(%struct._GimpMotionBuffer* %229)
  %230 = load %struct._GimpTool*, %struct._GimpTool** %active_tool226, align 8
  %control264 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %230, i32 0, i32 3
  %231 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control264, align 8
  %call265 = call i32 @gimp_tool_control_is_active(%struct._GimpToolControl* %231)
  %tobool266 = icmp ne i32 %call265, 0
  br i1 %tobool266, label %if.then.267, label %if.end.268

if.then.267:                                      ; preds = %if.then.262
  %232 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %233 = load i32, i32* %time, align 4
  %234 = load i32, i32* %state, align 4
  %235 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  call void @tool_manager_button_release_active(%struct._Gimp* %232, %struct._GimpCoords* %image_coords, i32 %233, i32 %234, %struct._GimpDisplay* %235)
  br label %if.end.268

if.end.268:                                       ; preds = %if.then.267, %if.then.262
  br label %if.end.269

if.end.269:                                       ; preds = %if.end.268, %lor.lhs.false.258, %if.end.253
  %236 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas.addr, align 8
  %call270 = call i32 @gtk_widget_has_focus(%struct._GtkWidget* %236)
  %tobool271 = icmp ne i32 %call270, 0
  br i1 %tobool271, label %if.then.272, label %if.else.273

if.then.272:                                      ; preds = %if.end.269
  %237 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %238 = load i32, i32* %state, align 4
  call void @gimp_display_shell_update_focus(%struct._GimpDisplayShell* %237, i32 1, %struct._GimpCoords* %image_coords, i32 %238)
  br label %if.end.274

if.else.273:                                      ; preds = %if.end.269
  %239 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_update_focus(%struct._GimpDisplayShell* %239, i32 0, %struct._GimpCoords* %image_coords, i32 0)
  br label %if.end.274

if.end.274:                                       ; preds = %if.else.273, %if.then.272
  %240 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_pointer_ungrab(%struct._GimpDisplayShell* %240, %union._GdkEvent* null)
  %241 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %space_release_pending275 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %241, i32 0, i32 92
  %242 = load i32, i32* %space_release_pending275, align 4
  %tobool276 = icmp ne i32 %242, 0
  br i1 %tobool276, label %if.then.277, label %if.end.278

if.then.277:                                      ; preds = %if.end.274
  %243 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %244 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  call void @gimp_display_shell_space_released(%struct._GimpDisplayShell* %243, %union._GdkEvent* %244, %struct._GimpCoords* %image_coords)
  br label %if.end.278

if.end.278:                                       ; preds = %if.then.277, %if.end.274
  br label %if.end.312

if.else.279:                                      ; preds = %if.end.230
  %245 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent225, align 8
  %button280 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %245, i32 0, i32 8
  %246 = load i32, i32* %button280, align 4
  %cmp281 = icmp eq i32 %246, 2
  br i1 %cmp281, label %if.then.283, label %if.else.288

if.then.283:                                      ; preds = %if.else.279
  %247 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scrolling284 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %247, i32 0, i32 94
  %248 = load i32, i32* %scrolling284, align 4
  %tobool285 = icmp ne i32 %248, 0
  br i1 %tobool285, label %if.then.286, label %if.end.287

if.then.286:                                      ; preds = %if.then.283
  %249 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_stop_scrolling(%struct._GimpDisplayShell* %249, %union._GdkEvent* null)
  br label %if.end.287

if.end.287:                                       ; preds = %if.then.286, %if.then.283
  br label %if.end.311

if.else.288:                                      ; preds = %if.else.279
  %250 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent225, align 8
  %button289 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %250, i32 0, i32 8
  %251 = load i32, i32* %button289, align 4
  %cmp290 = icmp eq i32 %251, 3
  br i1 %cmp290, label %if.then.292, label %if.else.293

if.then.292:                                      ; preds = %if.else.288
  br label %if.end.310

if.else.293:                                      ; preds = %if.else.288
  %252 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %253 = bitcast %union._GdkEvent* %252 to %struct._GdkEventButton*
  store %struct._GdkEventButton* %253, %struct._GdkEventButton** %bevent294, align 8
  %254 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call295 = call %struct._GimpController* @gimp_controllers_get_mouse(%struct._Gimp* %254)
  store %struct._GimpController* %call295, %struct._GimpController** %mouse, align 8
  %255 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scrolling296 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %255, i32 0, i32 94
  %256 = load i32, i32* %scrolling296, align 4
  %tobool297 = icmp ne i32 %256, 0
  br i1 %tobool297, label %if.end.309, label %lor.lhs.false.298

lor.lhs.false.298:                                ; preds = %if.else.293
  %257 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %pointer_grabbed299 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %257, i32 0, i32 86
  %258 = load i32, i32* %pointer_grabbed299, align 4
  %tobool300 = icmp ne i32 %258, 0
  br i1 %tobool300, label %if.end.309, label %land.lhs.true.301

land.lhs.true.301:                                ; preds = %lor.lhs.false.298
  %259 = load %struct._GimpController*, %struct._GimpController** %mouse, align 8
  %tobool302 = icmp ne %struct._GimpController* %259, null
  br i1 %tobool302, label %land.lhs.true.303, label %if.end.309

land.lhs.true.303:                                ; preds = %land.lhs.true.301
  %260 = load %struct._GimpController*, %struct._GimpController** %mouse, align 8
  %261 = bitcast %struct._GimpController* %260 to %struct._GTypeInstance*
  %call304 = call i64 @gimp_controller_mouse_get_type() #5
  %call305 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %261, i64 %call304)
  %262 = bitcast %struct._GTypeInstance* %call305 to %struct._GimpControllerMouse*
  %263 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent294, align 8
  %call306 = call i32 @gimp_controller_mouse_button(%struct._GimpControllerMouse* %262, %struct._GdkEventButton* %263)
  %tobool307 = icmp ne i32 %call306, 0
  br i1 %tobool307, label %if.then.308, label %if.end.309

if.then.308:                                      ; preds = %land.lhs.true.303
  store i32 1, i32* %retval
  br label %return

if.end.309:                                       ; preds = %land.lhs.true.303, %land.lhs.true.301, %lor.lhs.false.298, %if.else.293
  br label %if.end.310

if.end.310:                                       ; preds = %if.end.309, %if.then.292
  br label %if.end.311

if.end.311:                                       ; preds = %if.end.310, %if.end.287
  br label %if.end.312

if.end.312:                                       ; preds = %if.end.311, %if.end.278
  store i32 1, i32* %return_val, align 4
  br label %sw.epilog.646

sw.bb.313:                                        ; preds = %if.end.43
  %264 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %265 = bitcast %union._GdkEvent* %264 to %struct._GdkEventScroll*
  store %struct._GdkEventScroll* %265, %struct._GdkEventScroll** %sevent, align 8
  %266 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call315 = call %struct._GimpController* @gimp_controllers_get_wheel(%struct._Gimp* %266)
  store %struct._GimpController* %call315, %struct._GimpController** %wheel314, align 8
  %267 = load %struct._GimpController*, %struct._GimpController** %wheel314, align 8
  %tobool316 = icmp ne %struct._GimpController* %267, null
  br i1 %tobool316, label %lor.lhs.false.317, label %if.then.322

lor.lhs.false.317:                                ; preds = %sw.bb.313
  %268 = load %struct._GimpController*, %struct._GimpController** %wheel314, align 8
  %269 = bitcast %struct._GimpController* %268 to %struct._GTypeInstance*
  %call318 = call i64 @gimp_controller_wheel_get_type() #5
  %call319 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %269, i64 %call318)
  %270 = bitcast %struct._GTypeInstance* %call319 to %struct._GimpControllerWheel*
  %271 = load %struct._GdkEventScroll*, %struct._GdkEventScroll** %sevent, align 8
  %call320 = call i32 @gimp_controller_wheel_scroll(%struct._GimpControllerWheel* %270, %struct._GdkEventScroll* %271)
  %tobool321 = icmp ne i32 %call320, 0
  br i1 %tobool321, label %if.end.373, label %if.then.322

if.then.322:                                      ; preds = %lor.lhs.false.317, %sw.bb.313
  %272 = load %struct._GdkEventScroll*, %struct._GdkEventScroll** %sevent, align 8
  %direction323 = getelementptr inbounds %struct._GdkEventScroll, %struct._GdkEventScroll* %272, i32 0, i32 7
  %273 = load i32, i32* %direction323, align 4
  store i32 %273, i32* %direction, align 4
  %274 = load i32, i32* %state, align 4
  %call324 = call i32 @gimp_get_toggle_behavior_mask()
  %and325 = and i32 %274, %call324
  %tobool326 = icmp ne i32 %and325, 0
  br i1 %tobool326, label %if.then.327, label %if.else.330

if.then.327:                                      ; preds = %if.then.322
  %275 = load i32, i32* %direction, align 4
  switch i32 %275, label %sw.default [
    i32 0, label %sw.bb.328
    i32 1, label %sw.bb.329
  ]

sw.bb.328:                                        ; preds = %if.then.327
  %276 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_scale(%struct._GimpDisplayShell* %276, i32 0, double 0.000000e+00, i32 0)
  br label %sw.epilog

sw.bb.329:                                        ; preds = %if.then.327
  %277 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_scale(%struct._GimpDisplayShell* %277, i32 1, double 0.000000e+00, i32 0)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.327
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.329, %sw.bb.328
  br label %if.end.372

if.else.330:                                      ; preds = %if.then.322
  store %struct._GtkAdjustment* null, %struct._GtkAdjustment** %adj, align 8
  %278 = load i32, i32* %state, align 4
  %and331 = and i32 %278, 1
  %tobool332 = icmp ne i32 %and331, 0
  br i1 %tobool332, label %if.then.333, label %if.end.339

if.then.333:                                      ; preds = %if.else.330
  %279 = load i32, i32* %direction, align 4
  switch i32 %279, label %sw.epilog.338 [
    i32 0, label %sw.bb.334
    i32 1, label %sw.bb.335
    i32 2, label %sw.bb.336
    i32 3, label %sw.bb.337
  ]

sw.bb.334:                                        ; preds = %if.then.333
  store i32 2, i32* %direction, align 4
  br label %sw.epilog.338

sw.bb.335:                                        ; preds = %if.then.333
  store i32 3, i32* %direction, align 4
  br label %sw.epilog.338

sw.bb.336:                                        ; preds = %if.then.333
  store i32 0, i32* %direction, align 4
  br label %sw.epilog.338

sw.bb.337:                                        ; preds = %if.then.333
  store i32 1, i32* %direction, align 4
  br label %sw.epilog.338

sw.epilog.338:                                    ; preds = %if.then.333, %sw.bb.337, %sw.bb.336, %sw.bb.335, %sw.bb.334
  br label %if.end.339

if.end.339:                                       ; preds = %sw.epilog.338, %if.else.330
  %280 = load i32, i32* %direction, align 4
  switch i32 %280, label %sw.epilog.342 [
    i32 2, label %sw.bb.340
    i32 3, label %sw.bb.340
    i32 0, label %sw.bb.341
    i32 1, label %sw.bb.341
  ]

sw.bb.340:                                        ; preds = %if.end.339, %if.end.339
  %281 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %hsbdata = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %281, i32 0, i32 34
  %282 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hsbdata, align 8
  store %struct._GtkAdjustment* %282, %struct._GtkAdjustment** %adj, align 8
  br label %sw.epilog.342

sw.bb.341:                                        ; preds = %if.end.339, %if.end.339
  %283 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %vsbdata = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %283, i32 0, i32 35
  %284 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vsbdata, align 8
  store %struct._GtkAdjustment* %284, %struct._GtkAdjustment** %adj, align 8
  br label %sw.epilog.342

sw.epilog.342:                                    ; preds = %if.end.339, %sw.bb.341, %sw.bb.340
  %285 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call343 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %285)
  %286 = load i32, i32* %direction, align 4
  %cmp344 = icmp eq i32 %286, 0
  br i1 %cmp344, label %cond.true, label %lor.lhs.false.346

lor.lhs.false.346:                                ; preds = %sw.epilog.342
  %287 = load i32, i32* %direction, align 4
  %cmp347 = icmp eq i32 %287, 2
  br i1 %cmp347, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.346, %sw.epilog.342
  %288 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call349 = call double @gtk_adjustment_get_page_increment(%struct._GtkAdjustment* %288)
  %sub = fsub double -0.000000e+00, %call349
  %div = fdiv double %sub, 2.000000e+00
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.346
  %289 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call350 = call double @gtk_adjustment_get_page_increment(%struct._GtkAdjustment* %289)
  %div351 = fdiv double %call350, 2.000000e+00
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %div, %cond.true ], [ %div351, %cond.false ]
  %add = fadd double %call343, %cond
  store double %add, double* %value, align 8
  %290 = load double, double* %value, align 8
  %291 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call352 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %291)
  %292 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call353 = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %292)
  %sub354 = fsub double %call352, %call353
  %cmp355 = fcmp ogt double %290, %sub354
  br i1 %cmp355, label %cond.true.357, label %cond.false.361

cond.true.357:                                    ; preds = %cond.end
  %293 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call358 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %293)
  %294 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call359 = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %294)
  %sub360 = fsub double %call358, %call359
  br label %cond.end.370

cond.false.361:                                   ; preds = %cond.end
  %295 = load double, double* %value, align 8
  %296 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call362 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %296)
  %cmp363 = fcmp olt double %295, %call362
  br i1 %cmp363, label %cond.true.365, label %cond.false.367

cond.true.365:                                    ; preds = %cond.false.361
  %297 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call366 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %297)
  br label %cond.end.368

cond.false.367:                                   ; preds = %cond.false.361
  %298 = load double, double* %value, align 8
  br label %cond.end.368

cond.end.368:                                     ; preds = %cond.false.367, %cond.true.365
  %cond369 = phi double [ %call366, %cond.true.365 ], [ %298, %cond.false.367 ]
  br label %cond.end.370

cond.end.370:                                     ; preds = %cond.end.368, %cond.true.357
  %cond371 = phi double [ %sub360, %cond.true.357 ], [ %cond369, %cond.end.368 ]
  store double %cond371, double* %value, align 8
  %299 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %300 = load double, double* %value, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %299, double %300)
  br label %if.end.372

if.end.372:                                       ; preds = %cond.end.370, %sw.epilog
  br label %if.end.373

if.end.373:                                       ; preds = %if.end.372, %lor.lhs.false.317
  %301 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_untransform_event_coords(%struct._GimpDisplayShell* %301, %struct._GimpCoords* %display_coords, %struct._GimpCoords* %image_coords, i32* %update_sw_cursor)
  %302 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %303 = load i32, i32* %state, align 4
  %304 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %proximity374 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %304, i32 0, i32 30
  %305 = load i32, i32* %proximity374, align 4
  %306 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  call void @tool_manager_oper_update_active(%struct._Gimp* %302, %struct._GimpCoords* %image_coords, i32 %303, i32 %305, %struct._GimpDisplay* %306)
  store i32 1, i32* %return_val, align 4
  br label %sw.epilog.646

sw.bb.375:                                        ; preds = %if.end.43
  %307 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %308 = bitcast %union._GdkEvent* %307 to %struct._GdkEventMotion*
  store %struct._GdkEventMotion* %308, %struct._GdkEventMotion** %mevent, align 8
  store %union._GdkEvent* null, %union._GdkEvent** %compressed_motion, align 8
  store i32 0, i32* %motion_mode, align 4
  %309 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %busy377 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %309, i32 0, i32 16
  %310 = load i32, i32* %busy377, align 4
  %tobool378 = icmp ne i32 %310, 0
  br i1 %tobool378, label %if.then.379, label %if.end.380

if.then.379:                                      ; preds = %sw.bb.375
  store i32 1, i32* %retval
  br label %return

if.end.380:                                       ; preds = %sw.bb.375
  %311 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call381 = call %struct._GimpTool* @tool_manager_get_active(%struct._Gimp* %311)
  store %struct._GimpTool* %call381, %struct._GimpTool** %active_tool376, align 8
  %312 = load %struct._GimpTool*, %struct._GimpTool** %active_tool376, align 8
  %tobool382 = icmp ne %struct._GimpTool* %312, null
  br i1 %tobool382, label %if.then.383, label %if.end.386

if.then.383:                                      ; preds = %if.end.380
  %313 = load %struct._GimpTool*, %struct._GimpTool** %active_tool376, align 8
  %control384 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %313, i32 0, i32 3
  %314 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control384, align 8
  %call385 = call i32 @gimp_tool_control_get_motion_mode(%struct._GimpToolControl* %314)
  store i32 %call385, i32* %motion_mode, align 4
  br label %if.end.386

if.end.386:                                       ; preds = %if.then.383, %if.end.380
  %315 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scrolling387 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %315, i32 0, i32 94
  %316 = load i32, i32* %scrolling387, align 4
  %tobool388 = icmp ne i32 %316, 0
  br i1 %tobool388, label %if.then.392, label %lor.lhs.false.389

lor.lhs.false.389:                                ; preds = %if.end.386
  %317 = load i32, i32* %motion_mode, align 4
  %cmp390 = icmp eq i32 %317, 1
  br i1 %cmp390, label %if.then.392, label %if.end.400

if.then.392:                                      ; preds = %lor.lhs.false.389, %if.end.386
  %318 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call393 = call %union._GdkEvent* @gimp_display_shell_compress_motion(%struct._GimpDisplayShell* %318)
  store %union._GdkEvent* %call393, %union._GdkEvent** %compressed_motion, align 8
  %319 = load %union._GdkEvent*, %union._GdkEvent** %compressed_motion, align 8
  %tobool394 = icmp ne %union._GdkEvent* %319, null
  br i1 %tobool394, label %land.lhs.true.395, label %if.end.399

land.lhs.true.395:                                ; preds = %if.then.392
  %320 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scrolling396 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %320, i32 0, i32 94
  %321 = load i32, i32* %scrolling396, align 4
  %tobool397 = icmp ne i32 %321, 0
  br i1 %tobool397, label %if.end.399, label %if.then.398

if.then.398:                                      ; preds = %land.lhs.true.395
  %322 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %323 = load %union._GdkEvent*, %union._GdkEvent** %compressed_motion, align 8
  call void @gimp_display_shell_get_event_coords(%struct._GimpDisplayShell* %322, %union._GdkEvent* %323, %struct._GimpCoords* %display_coords, i32* %state, i32* %time)
  %324 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_untransform_event_coords(%struct._GimpDisplayShell* %324, %struct._GimpCoords* %display_coords, %struct._GimpCoords* %image_coords, i32* null)
  br label %if.end.399

if.end.399:                                       ; preds = %if.then.398, %land.lhs.true.395, %if.then.392
  br label %if.end.400

if.end.400:                                       ; preds = %if.end.399, %lor.lhs.false.389
  %325 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_proximity_in(%struct._GimpDisplayShell* %325)
  store i32 1, i32* %update_sw_cursor, align 4
  %326 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scrolling401 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %326, i32 0, i32 94
  %327 = load i32, i32* %scrolling401, align 4
  %tobool402 = icmp ne i32 %327, 0
  br i1 %tobool402, label %if.then.403, label %if.else.426

if.then.403:                                      ; preds = %if.end.400
  %328 = load %union._GdkEvent*, %union._GdkEvent** %compressed_motion, align 8
  %tobool405 = icmp ne %union._GdkEvent* %328, null
  br i1 %tobool405, label %cond.true.406, label %cond.false.408

cond.true.406:                                    ; preds = %if.then.403
  %329 = load %union._GdkEvent*, %union._GdkEvent** %compressed_motion, align 8
  %330 = bitcast %union._GdkEvent* %329 to %struct._GdkEventMotion*
  %x407 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %330, i32 0, i32 4
  %331 = load double, double* %x407, align 8
  br label %cond.end.410

cond.false.408:                                   ; preds = %if.then.403
  %332 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %x409 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %332, i32 0, i32 4
  %333 = load double, double* %x409, align 8
  br label %cond.end.410

cond.end.410:                                     ; preds = %cond.false.408, %cond.true.406
  %cond411 = phi double [ %331, %cond.true.406 ], [ %333, %cond.false.408 ]
  %conv412 = fptosi double %cond411 to i32
  store i32 %conv412, i32* %x404, align 4
  %334 = load %union._GdkEvent*, %union._GdkEvent** %compressed_motion, align 8
  %tobool414 = icmp ne %union._GdkEvent* %334, null
  br i1 %tobool414, label %cond.true.415, label %cond.false.417

cond.true.415:                                    ; preds = %cond.end.410
  %335 = load %union._GdkEvent*, %union._GdkEvent** %compressed_motion, align 8
  %336 = bitcast %union._GdkEvent* %335 to %struct._GdkEventMotion*
  %y416 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %336, i32 0, i32 5
  %337 = load double, double* %y416, align 8
  br label %cond.end.419

cond.false.417:                                   ; preds = %cond.end.410
  %338 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %y418 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %338, i32 0, i32 5
  %339 = load double, double* %y418, align 8
  br label %cond.end.419

cond.end.419:                                     ; preds = %cond.false.417, %cond.true.415
  %cond420 = phi double [ %337, %cond.true.415 ], [ %339, %cond.false.417 ]
  %conv421 = fptosi double %cond420 to i32
  store i32 %conv421, i32* %y413, align 4
  %340 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %341 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scroll_start_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %341, i32 0, i32 95
  %342 = load i32, i32* %scroll_start_x, align 4
  %343 = load i32, i32* %x404, align 4
  %sub422 = sub nsw i32 %342, %343
  %344 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %344, i32 0, i32 11
  %345 = load i32, i32* %offset_x, align 4
  %sub423 = sub nsw i32 %sub422, %345
  %346 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scroll_start_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %346, i32 0, i32 96
  %347 = load i32, i32* %scroll_start_y, align 4
  %348 = load i32, i32* %y413, align 4
  %sub424 = sub nsw i32 %347, %348
  %349 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %349, i32 0, i32 12
  %350 = load i32, i32* %offset_y, align 4
  %sub425 = sub nsw i32 %sub424, %350
  call void @gimp_display_shell_scroll(%struct._GimpDisplayShell* %340, i32 %sub423, i32 %sub425)
  br label %if.end.511

if.else.426:                                      ; preds = %if.end.400
  %351 = load i32, i32* %state, align 4
  %and427 = and i32 %351, 256
  %tobool428 = icmp ne i32 %and427, 0
  br i1 %tobool428, label %if.then.429, label %if.end.510

if.then.429:                                      ; preds = %if.else.426
  %352 = load %struct._GimpTool*, %struct._GimpTool** %active_tool376, align 8
  %tobool430 = icmp ne %struct._GimpTool* %352, null
  br i1 %tobool430, label %land.lhs.true.431, label %if.end.509

land.lhs.true.431:                                ; preds = %if.then.429
  %353 = load %struct._GimpTool*, %struct._GimpTool** %active_tool376, align 8
  %control432 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %353, i32 0, i32 3
  %354 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control432, align 8
  %call433 = call i32 @gimp_tool_control_is_active(%struct._GimpToolControl* %354)
  %tobool434 = icmp ne i32 %call433, 0
  br i1 %tobool434, label %land.lhs.true.435, label %if.end.509

land.lhs.true.435:                                ; preds = %land.lhs.true.431
  %355 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call436 = call i32 @gimp_image_is_empty(%struct._GimpImage* %355)
  %tobool437 = icmp ne i32 %call436, 0
  br i1 %tobool437, label %lor.lhs.false.438, label %if.then.442

lor.lhs.false.438:                                ; preds = %land.lhs.true.435
  %356 = load %struct._GimpTool*, %struct._GimpTool** %active_tool376, align 8
  %control439 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %356, i32 0, i32 3
  %357 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control439, align 8
  %call440 = call i32 @gimp_tool_control_get_handle_empty_image(%struct._GimpToolControl* %357)
  %tobool441 = icmp ne i32 %call440, 0
  br i1 %tobool441, label %if.then.442, label %if.end.509

if.then.442:                                      ; preds = %lor.lhs.false.438, %land.lhs.true.435
  %358 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %x443 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %358, i32 0, i32 4
  %359 = load double, double* %x443, align 8
  %cmp444 = fcmp olt double %359, 0.000000e+00
  br i1 %cmp444, label %land.lhs.true.460, label %lor.lhs.false.446

lor.lhs.false.446:                                ; preds = %if.then.442
  %360 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %y447 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %360, i32 0, i32 5
  %361 = load double, double* %y447, align 8
  %cmp448 = fcmp olt double %361, 0.000000e+00
  br i1 %cmp448, label %land.lhs.true.460, label %lor.lhs.false.450

lor.lhs.false.450:                                ; preds = %lor.lhs.false.446
  %362 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %x451 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %362, i32 0, i32 4
  %363 = load double, double* %x451, align 8
  %364 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %364, i32 0, i32 28
  %365 = load i32, i32* %disp_width, align 4
  %conv452 = sitofp i32 %365 to double
  %cmp453 = fcmp ogt double %363, %conv452
  br i1 %cmp453, label %land.lhs.true.460, label %lor.lhs.false.455

lor.lhs.false.455:                                ; preds = %lor.lhs.false.450
  %366 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %y456 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %366, i32 0, i32 5
  %367 = load double, double* %y456, align 8
  %368 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %368, i32 0, i32 29
  %369 = load i32, i32* %disp_height, align 4
  %conv457 = sitofp i32 %369 to double
  %cmp458 = fcmp ogt double %367, %conv457
  br i1 %cmp458, label %land.lhs.true.460, label %if.end.465

land.lhs.true.460:                                ; preds = %lor.lhs.false.455, %lor.lhs.false.450, %lor.lhs.false.446, %if.then.442
  %370 = load %struct._GimpTool*, %struct._GimpTool** %active_tool376, align 8
  %control461 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %370, i32 0, i32 3
  %371 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control461, align 8
  %call462 = call i32 @gimp_tool_control_get_scroll_lock(%struct._GimpToolControl* %371)
  %tobool463 = icmp ne i32 %call462, 0
  br i1 %tobool463, label %if.end.465, label %if.then.464

if.then.464:                                      ; preds = %land.lhs.true.460
  %372 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %373 = load i32, i32* %state, align 4
  %374 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  call void @gimp_display_shell_autoscroll_start(%struct._GimpDisplayShell* %372, i32 %373, %struct._GdkEventMotion* %374)
  br label %if.end.465

if.end.465:                                       ; preds = %if.then.464, %land.lhs.true.460, %lor.lhs.false.455
  %375 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %motion_buffer466 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %375, i32 0, i32 100
  %376 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %motion_buffer466, align 8
  %call467 = call i32 @gimp_motion_buffer_get_last_motion_time(%struct._GimpMotionBuffer* %376)
  store i32 %call467, i32* %last_motion_time, align 4
  %377 = load i32, i32* %motion_mode, align 4
  %cmp468 = icmp eq i32 %377, 0
  br i1 %cmp468, label %land.lhs.true.470, label %if.else.497

land.lhs.true.470:                                ; preds = %if.end.465
  %378 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display471 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %378, i32 0, i32 1
  %379 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display471, align 8
  %config = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %379, i32 0, i32 2
  %380 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config, align 8
  %use_event_history = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %380, i32 0, i32 29
  %381 = load i32, i32* %use_event_history, align 4
  %tobool472 = icmp ne i32 %381, 0
  br i1 %tobool472, label %land.lhs.true.473, label %if.else.497

land.lhs.true.473:                                ; preds = %land.lhs.true.470
  %382 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %device = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %382, i32 0, i32 9
  %383 = load %struct._GdkDevice*, %struct._GdkDevice** %device, align 8
  %384 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %window = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %384, i32 0, i32 1
  %385 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %386 = load i32, i32* %last_motion_time, align 4
  %add474 = add i32 %386, 1
  %387 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %time475 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %387, i32 0, i32 3
  %388 = load i32, i32* %time475, align 4
  %sub476 = sub i32 %388, 1
  %call477 = call i32 @gdk_device_get_history(%struct._GdkDevice* %383, %struct._GdkDrawable* %385, i32 %add474, i32 %sub476, %struct._GdkTimeCoord*** %history_events, i32* %n_history_events)
  %tobool478 = icmp ne i32 %call477, 0
  br i1 %tobool478, label %if.then.479, label %if.else.497

if.then.479:                                      ; preds = %land.lhs.true.473
  %389 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %device481 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %389, i32 0, i32 9
  %390 = load %struct._GdkDevice*, %struct._GdkDevice** %device481, align 8
  %call482 = call %struct._GimpDeviceInfo* @gimp_device_info_get_by_device(%struct._GdkDevice* %390)
  store %struct._GimpDeviceInfo* %call482, %struct._GimpDeviceInfo** %device480, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.479
  %391 = load i32, i32* %i, align 4
  %392 = load i32, i32* %n_history_events, align 4
  %cmp483 = icmp slt i32 %391, %392
  br i1 %cmp483, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %393 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %device480, align 8
  %394 = load i32, i32* %i, align 4
  %idxprom = sext i32 %394 to i64
  %395 = load %struct._GdkTimeCoord**, %struct._GdkTimeCoord*** %history_events, align 8
  %arrayidx = getelementptr inbounds %struct._GdkTimeCoord*, %struct._GdkTimeCoord** %395, i64 %idxprom
  %396 = load %struct._GdkTimeCoord*, %struct._GdkTimeCoord** %arrayidx, align 8
  call void @gimp_device_info_get_time_coords(%struct._GimpDeviceInfo* %393, %struct._GdkTimeCoord* %396, %struct._GimpCoords* %display_coords)
  %397 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_untransform_event_coords(%struct._GimpDisplayShell* %397, %struct._GimpCoords* %display_coords, %struct._GimpCoords* %image_coords, i32* null)
  %398 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %motion_buffer485 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %398, i32 0, i32 100
  %399 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %motion_buffer485, align 8
  %400 = load i32, i32* %i, align 4
  %idxprom486 = sext i32 %400 to i64
  %401 = load %struct._GdkTimeCoord**, %struct._GdkTimeCoord*** %history_events, align 8
  %arrayidx487 = getelementptr inbounds %struct._GdkTimeCoord*, %struct._GdkTimeCoord** %401, i64 %idxprom486
  %402 = load %struct._GdkTimeCoord*, %struct._GdkTimeCoord** %arrayidx487, align 8
  %time488 = getelementptr inbounds %struct._GdkTimeCoord, %struct._GdkTimeCoord* %402, i32 0, i32 0
  %403 = load i32, i32* %time488, align 4
  %404 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %404, i32 0, i32 13
  %405 = load double, double* %scale_x, align 8
  %406 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %406, i32 0, i32 14
  %407 = load double, double* %scale_y, align 8
  %call489 = call i32 @gimp_motion_buffer_motion_event(%struct._GimpMotionBuffer* %399, %struct._GimpCoords* %image_coords, i32 %403, double %405, double %407, i32 1)
  %tobool490 = icmp ne i32 %call489, 0
  br i1 %tobool490, label %if.then.491, label %if.end.496

if.then.491:                                      ; preds = %for.body
  %408 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %motion_buffer492 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %408, i32 0, i32 100
  %409 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %motion_buffer492, align 8
  %410 = load i32, i32* %state, align 4
  %411 = load i32, i32* %i, align 4
  %idxprom493 = sext i32 %411 to i64
  %412 = load %struct._GdkTimeCoord**, %struct._GdkTimeCoord*** %history_events, align 8
  %arrayidx494 = getelementptr inbounds %struct._GdkTimeCoord*, %struct._GdkTimeCoord** %412, i64 %idxprom493
  %413 = load %struct._GdkTimeCoord*, %struct._GdkTimeCoord** %arrayidx494, align 8
  %time495 = getelementptr inbounds %struct._GdkTimeCoord, %struct._GdkTimeCoord* %413, i32 0, i32 0
  %414 = load i32, i32* %time495, align 4
  call void @gimp_motion_buffer_request_stroke(%struct._GimpMotionBuffer* %409, i32 %410, i32 %414)
  br label %if.end.496

if.end.496:                                       ; preds = %if.then.491, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.496
  %415 = load i32, i32* %i, align 4
  %inc = add nsw i32 %415, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %416 = load %struct._GdkTimeCoord**, %struct._GdkTimeCoord*** %history_events, align 8
  %417 = load i32, i32* %n_history_events, align 4
  call void @gdk_device_free_history(%struct._GdkTimeCoord** %416, i32 %417)
  br label %if.end.508

if.else.497:                                      ; preds = %land.lhs.true.473, %land.lhs.true.470, %if.end.465
  %418 = load i32, i32* %motion_mode, align 4
  %cmp498 = icmp eq i32 %418, 0
  %conv499 = zext i1 %cmp498 to i32
  store i32 %conv499, i32* %event_fill, align 4
  %419 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %motion_buffer500 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %419, i32 0, i32 100
  %420 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %motion_buffer500, align 8
  %421 = load i32, i32* %time, align 4
  %422 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_x501 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %422, i32 0, i32 13
  %423 = load double, double* %scale_x501, align 8
  %424 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_y502 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %424, i32 0, i32 14
  %425 = load double, double* %scale_y502, align 8
  %426 = load i32, i32* %event_fill, align 4
  %call503 = call i32 @gimp_motion_buffer_motion_event(%struct._GimpMotionBuffer* %420, %struct._GimpCoords* %image_coords, i32 %421, double %423, double %425, i32 %426)
  %tobool504 = icmp ne i32 %call503, 0
  br i1 %tobool504, label %if.then.505, label %if.end.507

if.then.505:                                      ; preds = %if.else.497
  %427 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %motion_buffer506 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %427, i32 0, i32 100
  %428 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %motion_buffer506, align 8
  %429 = load i32, i32* %state, align 4
  %430 = load i32, i32* %time, align 4
  call void @gimp_motion_buffer_request_stroke(%struct._GimpMotionBuffer* %428, i32 %429, i32 %430)
  br label %if.end.507

if.end.507:                                       ; preds = %if.then.505, %if.else.497
  br label %if.end.508

if.end.508:                                       ; preds = %if.end.507, %for.end
  br label %if.end.509

if.end.509:                                       ; preds = %if.end.508, %lor.lhs.false.438, %land.lhs.true.431, %if.then.429
  br label %if.end.510

if.end.510:                                       ; preds = %if.end.509, %if.else.426
  br label %if.end.511

if.end.511:                                       ; preds = %if.end.510, %cond.end.419
  %431 = load i32, i32* %state, align 4
  %and512 = and i32 %431, 1792
  %tobool513 = icmp ne i32 %and512, 0
  br i1 %tobool513, label %if.end.524, label %if.then.514

if.then.514:                                      ; preds = %if.end.511
  %432 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %motion_buffer515 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %432, i32 0, i32 100
  %433 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %motion_buffer515, align 8
  %434 = load i32, i32* %time, align 4
  %435 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_x516 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %435, i32 0, i32 13
  %436 = load double, double* %scale_x516, align 8
  %437 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_y517 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %437, i32 0, i32 14
  %438 = load double, double* %scale_y517, align 8
  %call518 = call i32 @gimp_motion_buffer_motion_event(%struct._GimpMotionBuffer* %433, %struct._GimpCoords* %image_coords, i32 %434, double %436, double %438, i32 0)
  %tobool519 = icmp ne i32 %call518, 0
  br i1 %tobool519, label %if.then.520, label %if.end.523

if.then.520:                                      ; preds = %if.then.514
  %439 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %motion_buffer521 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %439, i32 0, i32 100
  %440 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %motion_buffer521, align 8
  %441 = load i32, i32* %state, align 4
  %442 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %proximity522 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %442, i32 0, i32 30
  %443 = load i32, i32* %proximity522, align 4
  call void @gimp_motion_buffer_request_hover(%struct._GimpMotionBuffer* %440, i32 %441, i32 %443)
  br label %if.end.523

if.end.523:                                       ; preds = %if.then.520, %if.then.514
  br label %if.end.524

if.end.524:                                       ; preds = %if.end.523, %if.end.511
  %444 = load %union._GdkEvent*, %union._GdkEvent** %compressed_motion, align 8
  %tobool525 = icmp ne %union._GdkEvent* %444, null
  br i1 %tobool525, label %if.then.526, label %if.end.527

if.then.526:                                      ; preds = %if.end.524
  %445 = load %union._GdkEvent*, %union._GdkEvent** %compressed_motion, align 8
  call void @gdk_event_free(%union._GdkEvent* %445)
  br label %if.end.527

if.end.527:                                       ; preds = %if.then.526, %if.end.524
  store i32 1, i32* %return_val, align 4
  br label %sw.epilog.646

sw.bb.528:                                        ; preds = %if.end.43
  %446 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %447 = bitcast %union._GdkEvent* %446 to %struct._GdkEventKey*
  store %struct._GdkEventKey* %447, %struct._GdkEventKey** %kevent, align 8
  %448 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call530 = call %struct._GimpTool* @tool_manager_get_active(%struct._Gimp* %448)
  store %struct._GimpTool* %call530, %struct._GimpTool** %active_tool529, align 8
  %449 = load i32, i32* %state, align 4
  %and531 = and i32 %449, 256
  %tobool532 = icmp ne i32 %and531, 0
  br i1 %tobool532, label %if.then.533, label %if.else.549

if.then.533:                                      ; preds = %sw.bb.528
  %450 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent, align 8
  %keyval = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %450, i32 0, i32 5
  %451 = load i32, i32* %keyval, align 4
  switch i32 %451, label %sw.epilog.548 [
    i32 65513, label %sw.bb.534
    i32 65514, label %sw.bb.534
    i32 65505, label %sw.bb.534
    i32 65506, label %sw.bb.534
    i32 65507, label %sw.bb.534
    i32 65508, label %sw.bb.534
    i32 65511, label %sw.bb.534
    i32 65512, label %sw.bb.534
  ]

sw.bb.534:                                        ; preds = %if.then.533, %if.then.533, %if.then.533, %if.then.533, %if.then.533, %if.then.533, %if.then.533, %if.then.533
  %452 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent, align 8
  %keyval535 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %452, i32 0, i32 5
  %453 = load i32, i32* %keyval535, align 4
  %call536 = call i32 @gimp_display_shell_key_to_state(i32 %453)
  store i32 %call536, i32* %key, align 4
  %454 = load i32, i32* %key, align 4
  %455 = load i32, i32* %state, align 4
  %or537 = or i32 %455, %454
  store i32 %or537, i32* %state, align 4
  %456 = load %struct._GimpTool*, %struct._GimpTool** %active_tool529, align 8
  %tobool538 = icmp ne %struct._GimpTool* %456, null
  br i1 %tobool538, label %land.lhs.true.539, label %if.end.547

land.lhs.true.539:                                ; preds = %sw.bb.534
  %457 = load %struct._GimpTool*, %struct._GimpTool** %active_tool529, align 8
  %control540 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %457, i32 0, i32 3
  %458 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control540, align 8
  %call541 = call i32 @gimp_tool_control_is_active(%struct._GimpToolControl* %458)
  %tobool542 = icmp ne i32 %call541, 0
  br i1 %tobool542, label %land.lhs.true.543, label %if.end.547

land.lhs.true.543:                                ; preds = %land.lhs.true.539
  %459 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call544 = call i32 @gimp_image_is_empty(%struct._GimpImage* %459)
  %tobool545 = icmp ne i32 %call544, 0
  br i1 %tobool545, label %if.end.547, label %if.then.546

if.then.546:                                      ; preds = %land.lhs.true.543
  %460 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %461 = load i32, i32* %state, align 4
  %462 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  call void @tool_manager_active_modifier_state_active(%struct._Gimp* %460, i32 %461, %struct._GimpDisplay* %462)
  br label %if.end.547

if.end.547:                                       ; preds = %if.then.546, %land.lhs.true.543, %land.lhs.true.539, %sw.bb.534
  br label %sw.epilog.548

sw.epilog.548:                                    ; preds = %if.then.533, %if.end.547
  br label %if.end.594

if.else.549:                                      ; preds = %sw.bb.528
  store i32 0, i32* %arrow_key, align 4
  %463 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %464 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  call void @tool_manager_focus_display_active(%struct._Gimp* %463, %struct._GimpDisplay* %464)
  %465 = load %struct._GimpTool*, %struct._GimpTool** %active_tool529, align 8
  %control550 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %465, i32 0, i32 3
  %466 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control550, align 8
  %call551 = call i32 @gimp_tool_control_get_wants_all_key_events(%struct._GimpToolControl* %466)
  %tobool552 = icmp ne i32 %call551, 0
  br i1 %tobool552, label %if.then.553, label %if.end.558

if.then.553:                                      ; preds = %if.else.549
  %467 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %468 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent, align 8
  %469 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call554 = call i32 @tool_manager_key_press_active(%struct._Gimp* %467, %struct._GdkEventKey* %468, %struct._GimpDisplay* %469)
  %tobool555 = icmp ne i32 %call554, 0
  br i1 %tobool555, label %if.then.556, label %if.end.557

if.then.556:                                      ; preds = %if.then.553
  store i32 1, i32* %retval
  br label %return

if.end.557:                                       ; preds = %if.then.553
  br label %if.end.558

if.end.558:                                       ; preds = %if.end.557, %if.else.549
  %470 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent, align 8
  %keyval559 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %470, i32 0, i32 5
  %471 = load i32, i32* %keyval559, align 4
  switch i32 %471, label %sw.epilog.592 [
    i32 65361, label %sw.bb.560
    i32 65363, label %sw.bb.560
    i32 65362, label %sw.bb.560
    i32 65364, label %sw.bb.560
    i32 65293, label %sw.bb.561
    i32 65421, label %sw.bb.561
    i32 65076, label %sw.bb.561
    i32 65288, label %sw.bb.561
    i32 65307, label %sw.bb.561
    i32 32, label %sw.bb.580
    i32 65408, label %sw.bb.580
    i32 65289, label %sw.bb.581
    i32 65056, label %sw.bb.581
    i32 65513, label %sw.bb.583
    i32 65514, label %sw.bb.583
    i32 65505, label %sw.bb.583
    i32 65506, label %sw.bb.583
    i32 65507, label %sw.bb.583
    i32 65508, label %sw.bb.583
    i32 65511, label %sw.bb.583
    i32 65512, label %sw.bb.583
  ]

sw.bb.560:                                        ; preds = %if.end.558, %if.end.558, %if.end.558, %if.end.558
  store i32 1, i32* %arrow_key, align 4
  br label %sw.bb.561

sw.bb.561:                                        ; preds = %if.end.558, %if.end.558, %if.end.558, %if.end.558, %if.end.558, %sw.bb.560
  %472 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call562 = call i32 @gimp_image_is_empty(%struct._GimpImage* %472)
  %tobool563 = icmp ne i32 %call562, 0
  br i1 %tobool563, label %if.end.566, label %if.then.564

if.then.564:                                      ; preds = %sw.bb.561
  %473 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %474 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent, align 8
  %475 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call565 = call i32 @tool_manager_key_press_active(%struct._Gimp* %473, %struct._GdkEventKey* %474, %struct._GimpDisplay* %475)
  store i32 %call565, i32* %return_val, align 4
  br label %if.end.566

if.end.566:                                       ; preds = %if.then.564, %sw.bb.561
  %476 = load i32, i32* %return_val, align 4
  %tobool567 = icmp ne i32 %476, 0
  br i1 %tobool567, label %if.end.576, label %if.then.568

if.then.568:                                      ; preds = %if.end.566
  %477 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call569 = call %struct._GimpController* @gimp_controllers_get_keyboard(%struct._Gimp* %477)
  store %struct._GimpController* %call569, %struct._GimpController** %keyboard, align 8
  %478 = load %struct._GimpController*, %struct._GimpController** %keyboard, align 8
  %tobool570 = icmp ne %struct._GimpController* %478, null
  br i1 %tobool570, label %if.then.571, label %if.end.575

if.then.571:                                      ; preds = %if.then.568
  %479 = load %struct._GimpController*, %struct._GimpController** %keyboard, align 8
  %480 = bitcast %struct._GimpController* %479 to %struct._GTypeInstance*
  %call572 = call i64 @gimp_controller_keyboard_get_type() #5
  %call573 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %480, i64 %call572)
  %481 = bitcast %struct._GTypeInstance* %call573 to %struct._GimpControllerKeyboard*
  %482 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent, align 8
  %call574 = call i32 @gimp_controller_keyboard_key_press(%struct._GimpControllerKeyboard* %481, %struct._GdkEventKey* %482)
  store i32 %call574, i32* %return_val, align 4
  br label %if.end.575

if.end.575:                                       ; preds = %if.then.571, %if.then.568
  br label %if.end.576

if.end.576:                                       ; preds = %if.end.575, %if.end.566
  %483 = load i32, i32* %return_val, align 4
  %tobool577 = icmp ne i32 %483, 0
  br i1 %tobool577, label %if.end.579, label %if.then.578

if.then.578:                                      ; preds = %if.end.576
  %484 = load i32, i32* %arrow_key, align 4
  store i32 %484, i32* %return_val, align 4
  br label %if.end.579

if.end.579:                                       ; preds = %if.then.578, %if.end.576
  br label %sw.epilog.592

sw.bb.580:                                        ; preds = %if.end.558, %if.end.558
  %485 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %486 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  call void @gimp_display_shell_space_pressed(%struct._GimpDisplayShell* %485, %union._GdkEvent* %486)
  store i32 1, i32* %return_val, align 4
  br label %sw.epilog.592

sw.bb.581:                                        ; preds = %if.end.558, %if.end.558
  %487 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %488 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent, align 8
  %call582 = call i32 @gimp_display_shell_tab_pressed(%struct._GimpDisplayShell* %487, %struct._GdkEventKey* %488)
  store i32 1, i32* %return_val, align 4
  br label %sw.epilog.592

sw.bb.583:                                        ; preds = %if.end.558, %if.end.558, %if.end.558, %if.end.558, %if.end.558, %if.end.558, %if.end.558, %if.end.558
  %489 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent, align 8
  %keyval585 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %489, i32 0, i32 5
  %490 = load i32, i32* %keyval585, align 4
  %call586 = call i32 @gimp_display_shell_key_to_state(i32 %490)
  store i32 %call586, i32* %key584, align 4
  %491 = load i32, i32* %key584, align 4
  %492 = load i32, i32* %state, align 4
  %or587 = or i32 %492, %491
  store i32 %or587, i32* %state, align 4
  %493 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call588 = call i32 @gimp_image_is_empty(%struct._GimpImage* %493)
  %tobool589 = icmp ne i32 %call588, 0
  br i1 %tobool589, label %if.end.591, label %if.then.590

if.then.590:                                      ; preds = %sw.bb.583
  %494 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %495 = load i32, i32* %state, align 4
  %496 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  call void @tool_manager_modifier_state_active(%struct._Gimp* %494, i32 %495, %struct._GimpDisplay* %496)
  br label %if.end.591

if.end.591:                                       ; preds = %if.then.590, %sw.bb.583
  br label %sw.epilog.592

sw.epilog.592:                                    ; preds = %if.end.558, %if.end.591, %sw.bb.581, %sw.bb.580, %if.end.579
  %497 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %498 = load i32, i32* %state, align 4
  %499 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %proximity593 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %499, i32 0, i32 30
  %500 = load i32, i32* %proximity593, align 4
  %501 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  call void @tool_manager_oper_update_active(%struct._Gimp* %497, %struct._GimpCoords* %image_coords, i32 %498, i32 %500, %struct._GimpDisplay* %501)
  br label %if.end.594

if.end.594:                                       ; preds = %sw.epilog.592, %sw.epilog.548
  br label %sw.epilog.646

sw.bb.595:                                        ; preds = %if.end.43
  %502 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %503 = bitcast %union._GdkEvent* %502 to %struct._GdkEventKey*
  store %struct._GdkEventKey* %503, %struct._GdkEventKey** %kevent596, align 8
  %504 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call598 = call %struct._GimpTool* @tool_manager_get_active(%struct._Gimp* %504)
  store %struct._GimpTool* %call598, %struct._GimpTool** %active_tool597, align 8
  %505 = load i32, i32* %state, align 4
  %and599 = and i32 %505, 256
  %tobool600 = icmp ne i32 %and599, 0
  br i1 %tobool600, label %if.then.601, label %if.else.620

if.then.601:                                      ; preds = %sw.bb.595
  %506 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent596, align 8
  %keyval602 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %506, i32 0, i32 5
  %507 = load i32, i32* %keyval602, align 4
  switch i32 %507, label %sw.epilog.619 [
    i32 65513, label %sw.bb.603
    i32 65514, label %sw.bb.603
    i32 65505, label %sw.bb.603
    i32 65506, label %sw.bb.603
    i32 65507, label %sw.bb.603
    i32 65508, label %sw.bb.603
    i32 65511, label %sw.bb.603
    i32 65512, label %sw.bb.603
  ]

sw.bb.603:                                        ; preds = %if.then.601, %if.then.601, %if.then.601, %if.then.601, %if.then.601, %if.then.601, %if.then.601, %if.then.601
  %508 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent596, align 8
  %keyval605 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %508, i32 0, i32 5
  %509 = load i32, i32* %keyval605, align 4
  %call606 = call i32 @gimp_display_shell_key_to_state(i32 %509)
  store i32 %call606, i32* %key604, align 4
  %510 = load i32, i32* %key604, align 4
  %neg607 = xor i32 %510, -1
  %511 = load i32, i32* %state, align 4
  %and608 = and i32 %511, %neg607
  store i32 %and608, i32* %state, align 4
  %512 = load %struct._GimpTool*, %struct._GimpTool** %active_tool597, align 8
  %tobool609 = icmp ne %struct._GimpTool* %512, null
  br i1 %tobool609, label %land.lhs.true.610, label %if.end.618

land.lhs.true.610:                                ; preds = %sw.bb.603
  %513 = load %struct._GimpTool*, %struct._GimpTool** %active_tool597, align 8
  %control611 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %513, i32 0, i32 3
  %514 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control611, align 8
  %call612 = call i32 @gimp_tool_control_is_active(%struct._GimpToolControl* %514)
  %tobool613 = icmp ne i32 %call612, 0
  br i1 %tobool613, label %land.lhs.true.614, label %if.end.618

land.lhs.true.614:                                ; preds = %land.lhs.true.610
  %515 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call615 = call i32 @gimp_image_is_empty(%struct._GimpImage* %515)
  %tobool616 = icmp ne i32 %call615, 0
  br i1 %tobool616, label %if.end.618, label %if.then.617

if.then.617:                                      ; preds = %land.lhs.true.614
  %516 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %517 = load i32, i32* %state, align 4
  %518 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  call void @tool_manager_active_modifier_state_active(%struct._Gimp* %516, i32 %517, %struct._GimpDisplay* %518)
  br label %if.end.618

if.end.618:                                       ; preds = %if.then.617, %land.lhs.true.614, %land.lhs.true.610, %sw.bb.603
  br label %sw.epilog.619

sw.epilog.619:                                    ; preds = %if.then.601, %if.end.618
  br label %if.end.644

if.else.620:                                      ; preds = %sw.bb.595
  %519 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %520 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  call void @tool_manager_focus_display_active(%struct._Gimp* %519, %struct._GimpDisplay* %520)
  %521 = load %struct._GimpTool*, %struct._GimpTool** %active_tool597, align 8
  %control621 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %521, i32 0, i32 3
  %522 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control621, align 8
  %call622 = call i32 @gimp_tool_control_get_wants_all_key_events(%struct._GimpToolControl* %522)
  %tobool623 = icmp ne i32 %call622, 0
  br i1 %tobool623, label %if.then.624, label %if.end.629

if.then.624:                                      ; preds = %if.else.620
  %523 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %524 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent596, align 8
  %525 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call625 = call i32 @tool_manager_key_release_active(%struct._Gimp* %523, %struct._GdkEventKey* %524, %struct._GimpDisplay* %525)
  %tobool626 = icmp ne i32 %call625, 0
  br i1 %tobool626, label %if.then.627, label %if.end.628

if.then.627:                                      ; preds = %if.then.624
  store i32 1, i32* %retval
  br label %return

if.end.628:                                       ; preds = %if.then.624
  br label %if.end.629

if.end.629:                                       ; preds = %if.end.628, %if.else.620
  %526 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent596, align 8
  %keyval630 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %526, i32 0, i32 5
  %527 = load i32, i32* %keyval630, align 4
  switch i32 %527, label %sw.epilog.642 [
    i32 32, label %sw.bb.631
    i32 65408, label %sw.bb.631
    i32 65513, label %sw.bb.632
    i32 65514, label %sw.bb.632
    i32 65505, label %sw.bb.632
    i32 65506, label %sw.bb.632
    i32 65507, label %sw.bb.632
    i32 65508, label %sw.bb.632
    i32 65511, label %sw.bb.632
    i32 65512, label %sw.bb.632
  ]

sw.bb.631:                                        ; preds = %if.end.629, %if.end.629
  %528 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %529 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  call void @gimp_display_shell_space_released(%struct._GimpDisplayShell* %528, %union._GdkEvent* %529, %struct._GimpCoords* null)
  store i32 1, i32* %return_val, align 4
  br label %sw.epilog.642

sw.bb.632:                                        ; preds = %if.end.629, %if.end.629, %if.end.629, %if.end.629, %if.end.629, %if.end.629, %if.end.629, %if.end.629
  %530 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent596, align 8
  %keyval634 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %530, i32 0, i32 5
  %531 = load i32, i32* %keyval634, align 4
  %call635 = call i32 @gimp_display_shell_key_to_state(i32 %531)
  store i32 %call635, i32* %key633, align 4
  %532 = load i32, i32* %key633, align 4
  %neg636 = xor i32 %532, -1
  %533 = load i32, i32* %state, align 4
  %and637 = and i32 %533, %neg636
  store i32 %and637, i32* %state, align 4
  %534 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call638 = call i32 @gimp_image_is_empty(%struct._GimpImage* %534)
  %tobool639 = icmp ne i32 %call638, 0
  br i1 %tobool639, label %if.end.641, label %if.then.640

if.then.640:                                      ; preds = %sw.bb.632
  %535 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %536 = load i32, i32* %state, align 4
  %537 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  call void @tool_manager_modifier_state_active(%struct._Gimp* %535, i32 %536, %struct._GimpDisplay* %537)
  br label %if.end.641

if.end.641:                                       ; preds = %if.then.640, %sw.bb.632
  br label %sw.epilog.642

sw.epilog.642:                                    ; preds = %if.end.629, %if.end.641, %sw.bb.631
  %538 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %539 = load i32, i32* %state, align 4
  %540 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %proximity643 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %540, i32 0, i32 30
  %541 = load i32, i32* %proximity643, align 4
  %542 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  call void @tool_manager_oper_update_active(%struct._Gimp* %538, %struct._GimpCoords* %image_coords, i32 %539, i32 %541, %struct._GimpDisplay* %542)
  br label %if.end.644

if.end.644:                                       ; preds = %sw.epilog.642, %sw.epilog.619
  br label %sw.epilog.646

sw.default.645:                                   ; preds = %if.end.43
  br label %sw.epilog.646

sw.epilog.646:                                    ; preds = %sw.default.645, %if.end.644, %if.end.594, %if.end.527, %if.end.373, %if.end.312, %if.end.179, %if.end.95, %sw.bb.73, %sw.bb.71, %if.end.69, %if.end.54
  %543 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %busy647 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %543, i32 0, i32 16
  %544 = load i32, i32* %busy647, align 4
  %tobool648 = icmp ne i32 %544, 0
  br i1 %tobool648, label %if.then.649, label %if.end.650

if.then.649:                                      ; preds = %sw.epilog.646
  %545 = load i32, i32* %return_val, align 4
  store i32 %545, i32* %retval
  br label %return

if.end.650:                                       ; preds = %sw.epilog.646
  %546 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %547 = load i32, i32* %state, align 4
  %548 = load i32, i32* %update_sw_cursor, align 4
  call void @gimp_display_shell_update_cursor(%struct._GimpDisplayShell* %546, %struct._GimpCoords* %display_coords, %struct._GimpCoords* %image_coords, i32 %547, i32 %548)
  %549 = load i32, i32* %return_val, align 4
  store i32 %549, i32* %retval
  br label %return

return:                                           ; preds = %if.end.650, %if.then.649, %if.then.627, %if.then.556, %if.then.379, %if.then.308, %if.then.245, %if.then.229, %if.end.223, %if.then.206, %if.end.200, %if.then.184, %if.then.157, %if.then.149, %if.then.124, %if.then.104, %if.then.93, %if.then.84, %if.then.68, %if.then.64, %if.then.53, %if.then.50, %if.then.22, %if.then.16, %if.then.10, %if.then.6, %if.else
  %550 = load i32, i32* %retval
  ret i32 %550
}

declare i32 @gtk_widget_get_realized(%struct._GtkWidget*) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i32 @gtk_widget_is_ancestor(%struct._GtkWidget*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_get_event_widget(%union._GdkEvent*) #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_display_shell_canvas_no_image_events(%struct._GtkWidget* %canvas, %union._GdkEvent* %event, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %retval = alloca i32, align 4
  %canvas.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %kevent = alloca %struct._GdkEventKey*, align 8
  store %struct._GtkWidget* %canvas, %struct._GtkWidget** %canvas.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type = bitcast %union._GdkEvent* %0 to i32*
  %1 = load i32, i32* %type, align 4
  switch i32 %1, label %sw.default [
    i32 4, label %sw.bb
    i32 8, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %call = call i32 @gdk_event_triggers_context_menu(%union._GdkEvent* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %popup_manager = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %3, i32 0, i32 2
  %4 = load %struct._GimpUIManager*, %struct._GimpUIManager** %popup_manager, align 8
  %5 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %6 = bitcast %struct._GimpDisplayShell* %5 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_widget_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call1)
  %7 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWidget*
  call void @gimp_ui_manager_ui_popup(%struct._GimpUIManager* %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0), %struct._GtkWidget* %7, void (%struct._GtkMenu*, i32*, i32*, i8*)* null, i8* null, void (i8*)* null, i8* null)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %8 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %9 = bitcast %union._GdkEvent* %8 to %struct._GdkEventKey*
  store %struct._GdkEventKey* %9, %struct._GdkEventKey** %kevent, align 8
  %10 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent, align 8
  %keyval = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %10, i32 0, i32 5
  %11 = load i32, i32* %keyval, align 4
  %cmp = icmp eq i32 %11, 65289
  br i1 %cmp, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.3
  %12 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent, align 8
  %keyval4 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %12, i32 0, i32 5
  %13 = load i32, i32* %keyval4, align 4
  %cmp5 = icmp eq i32 %13, 65056
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %lor.lhs.false, %sw.bb.3
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %15 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent, align 8
  %call7 = call i32 @gimp_display_shell_tab_pressed(%struct._GimpDisplayShell* %14, %struct._GdkEventKey* %15)
  store i32 %call7, i32* %retval
  br label %return

if.end.8:                                         ; preds = %lor.lhs.false
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.8, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.6, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare void @gimp_log(i32, i8*, i32, i8*, ...) #1

declare i8* @gimp_print_event(%union._GdkEvent*) #1

declare i32 @gimp_devices_check_change(%struct._Gimp*, %union._GdkEvent*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_check_device_cursor(%struct._GimpDisplayShell* %shell) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %manager = alloca %struct._GimpDeviceManager*, align 8
  %current_device = alloca %struct._GimpDeviceInfo*, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 1
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %1, i32 0, i32 1
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call = call %struct._GimpDeviceManager* @gimp_devices_get_manager(%struct._Gimp* %2)
  store %struct._GimpDeviceManager* %call, %struct._GimpDeviceManager** %manager, align 8
  %3 = load %struct._GimpDeviceManager*, %struct._GimpDeviceManager** %manager, align 8
  %call1 = call %struct._GimpDeviceInfo* @gimp_device_manager_get_current_device(%struct._GimpDeviceManager* %3)
  store %struct._GimpDeviceInfo* %call1, %struct._GimpDeviceInfo** %current_device, align 8
  %4 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %current_device, align 8
  %call2 = call i32 @gimp_device_info_has_cursor(%struct._GimpDeviceInfo* %4)
  %tobool = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %5 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %draw_cursor = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %5, i32 0, i32 72
  store i32 %lnot.ext, i32* %draw_cursor, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_get_event_coords(%struct._GimpDisplayShell* %shell, %union._GdkEvent* %event, %struct._GimpCoords* %display_coords, i32* %state, i32* %time) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %display_coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32*, align 8
  %time.addr = alloca i32*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %manager = alloca %struct._GimpDeviceManager*, align 8
  %current_device = alloca %struct._GimpDeviceInfo*, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  store %struct._GimpCoords* %display_coords, %struct._GimpCoords** %display_coords.addr, align 8
  store i32* %state, i32** %state.addr, align 8
  store i32* %time, i32** %time.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 1
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call = call %struct._Gimp* @gimp_display_get_gimp(%struct._GimpDisplay* %1)
  store %struct._Gimp* %call, %struct._Gimp** %gimp, align 8
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call1 = call %struct._GimpDeviceManager* @gimp_devices_get_manager(%struct._Gimp* %2)
  store %struct._GimpDeviceManager* %call1, %struct._GimpDeviceManager** %manager, align 8
  %3 = load %struct._GimpDeviceManager*, %struct._GimpDeviceManager** %manager, align 8
  %call2 = call %struct._GimpDeviceInfo* @gimp_device_manager_get_current_device(%struct._GimpDeviceManager* %3)
  store %struct._GimpDeviceInfo* %call2, %struct._GimpDeviceInfo** %current_device, align 8
  %4 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %current_device, align 8
  %5 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %5, i32 0, i32 33
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  %call3 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %6)
  %7 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %8 = load %struct._GimpCoords*, %struct._GimpCoords** %display_coords.addr, align 8
  %call4 = call i32 @gimp_device_info_get_event_coords(%struct._GimpDeviceInfo* %4, %struct._GdkDrawable* %call3, %union._GdkEvent* %7, %struct._GimpCoords* %8)
  %9 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %current_device, align 8
  %10 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas5 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %10, i32 0, i32 33
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas5, align 8
  %call6 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %11)
  %12 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %13 = load i32*, i32** %state.addr, align 8
  %call7 = call i32 @gimp_device_info_get_event_state(%struct._GimpDeviceInfo* %9, %struct._GdkDrawable* %call6, %union._GdkEvent* %12, i32* %13)
  %14 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %call8 = call i32 @gdk_event_get_time(%union._GdkEvent* %14)
  %15 = load i32*, i32** %time.addr, align 8
  store i32 %call8, i32* %15, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_untransform_event_coords(%struct._GimpDisplayShell* %shell, %struct._GimpCoords* %display_coords, %struct._GimpCoords* %image_coords, i32* %update_software_cursor) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %display_coords.addr = alloca %struct._GimpCoords*, align 8
  %image_coords.addr = alloca %struct._GimpCoords*, align 8
  %update_software_cursor.addr = alloca i32*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %active_tool = alloca %struct._GimpTool*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GimpCoords* %display_coords, %struct._GimpCoords** %display_coords.addr, align 8
  store %struct._GimpCoords* %image_coords, %struct._GimpCoords** %image_coords.addr, align 8
  store i32* %update_software_cursor, i32** %update_software_cursor.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 1
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call = call %struct._Gimp* @gimp_display_get_gimp(%struct._GimpDisplay* %1)
  store %struct._Gimp* %call, %struct._Gimp** %gimp, align 8
  %2 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %3 = load %struct._GimpCoords*, %struct._GimpCoords** %display_coords.addr, align 8
  %4 = load %struct._GimpCoords*, %struct._GimpCoords** %image_coords.addr, align 8
  call void @gimp_display_shell_untransform_coords(%struct._GimpDisplayShell* %2, %struct._GimpCoords* %3, %struct._GimpCoords* %4)
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call1 = call %struct._GimpTool* @tool_manager_get_active(%struct._Gimp* %5)
  store %struct._GimpTool* %call1, %struct._GimpTool** %active_tool, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %tobool = icmp ne %struct._GimpTool* %6, null
  br i1 %tobool, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %7, i32 0, i32 3
  %8 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call2 = call i32 @gimp_tool_control_get_snap_to(%struct._GimpToolControl* %8)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end.11

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %control4 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %9, i32 0, i32 3
  %10 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control4, align 8
  call void @gimp_tool_control_get_snap_offsets(%struct._GimpToolControl* %10, i32* %x, i32* %y, i32* %width, i32* %height)
  %11 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %12 = load %struct._GimpCoords*, %struct._GimpCoords** %image_coords.addr, align 8
  %13 = load i32, i32* %x, align 4
  %14 = load i32, i32* %y, align 4
  %15 = load i32, i32* %width, align 4
  %16 = load i32, i32* %height, align 4
  %call5 = call i32 @gimp_display_shell_snap_coords(%struct._GimpDisplayShell* %11, %struct._GimpCoords* %12, i32 %13, i32 %14, i32 %15, i32 %16)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.then
  %17 = load i32*, i32** %update_software_cursor.addr, align 8
  %tobool8 = icmp ne i32* %17, null
  br i1 %tobool8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then.7
  %18 = load i32*, i32** %update_software_cursor.addr, align 8
  store i32 1, i32* %18, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then.7
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %land.lhs.true, %entry
  ret void
}

declare i32 @gtk_widget_has_focus(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_update_focus(%struct._GimpDisplayShell* %shell, i32 %focus_in, %struct._GimpCoords* %image_coords, i32 %state) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %focus_in.addr = alloca i32, align 4
  %image_coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %gimp = alloca %struct._Gimp*, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i32 %focus_in, i32* %focus_in.addr, align 4
  store %struct._GimpCoords* %image_coords, %struct._GimpCoords** %image_coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 1
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call = call %struct._Gimp* @gimp_display_get_gimp(%struct._GimpDisplay* %1)
  store %struct._Gimp* %call, %struct._Gimp** %gimp, align 8
  %2 = load i32, i32* %focus_in.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display1 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %4, i32 0, i32 1
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display1, align 8
  call void @tool_manager_focus_display_active(%struct._Gimp* %3, %struct._GimpDisplay* %5)
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %7 = load i32, i32* %state.addr, align 4
  %8 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display2 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %8, i32 0, i32 1
  %9 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display2, align 8
  call void @tool_manager_modifier_state_active(%struct._Gimp* %6, i32 %7, %struct._GimpDisplay* %9)
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @tool_manager_focus_display_active(%struct._Gimp* %10, %struct._GimpDisplay* null)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load %struct._GimpCoords*, %struct._GimpCoords** %image_coords.addr, align 8
  %tobool3 = icmp ne %struct._GimpCoords* %11, null
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %12 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %13 = load %struct._GimpCoords*, %struct._GimpCoords** %image_coords.addr, align 8
  %14 = load i32, i32* %state.addr, align 4
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %proximity = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %15, i32 0, i32 30
  %16 = load i32, i32* %proximity, align 4
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display5 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %17, i32 0, i32 1
  %18 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display5, align 8
  call void @tool_manager_oper_update_active(%struct._Gimp* %12, %struct._GimpCoords* %13, i32 %14, i32 %16, %struct._GimpDisplay* %18)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  ret void
}

declare void @gtk_widget_set_extension_events(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_proximity_in(%struct._GimpDisplayShell* %shell) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %proximity = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 30
  %1 = load i32, i32* %proximity, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %proximity1 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %2, i32 0, i32 30
  store i32 1, i32* %proximity1, align 4
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_check_device_cursor(%struct._GimpDisplayShell* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @tool_manager_oper_update_active(%struct._Gimp*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_proximity_out(%struct._GimpDisplayShell* %shell) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %proximity = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 30
  %1 = load i32, i32* %proximity, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %proximity1 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %2, i32 0, i32 30
  store i32 0, i32* %proximity1, align 4
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_clear_software_cursor(%struct._GimpDisplayShell* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_display_shell_button_to_state(i32 %button) #0 {
entry:
  %retval = alloca i32, align 4
  %button.addr = alloca i32, align 4
  store i32 %button, i32* %button.addr, align 4
  %0 = load i32, i32* %button.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 256, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %button.addr, align 4
  %cmp1 = icmp eq i32 %1, 2
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  store i32 512, i32* %retval
  br label %return

if.else.3:                                        ; preds = %if.else
  %2 = load i32, i32* %button.addr, align 4
  %cmp4 = icmp eq i32 %2, 3
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else.3
  store i32 1024, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.5, %if.then.2, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

declare void @gtk_widget_grab_focus(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_update_cursor(%struct._GimpDisplayShell* %shell, %struct._GimpCoords* %display_coords, %struct._GimpCoords* %image_coords, i32 %state, i32 %update_software_cursor) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %display_coords.addr = alloca %struct._GimpCoords*, align 8
  %image_coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %update_software_cursor.addr = alloca i32, align 4
  %display = alloca %struct._GimpDisplay*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %active_tool = alloca %struct._GimpTool*, align 8
  %precision = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GimpCoords* %display_coords, %struct._GimpCoords** %display_coords.addr, align 8
  store %struct._GimpCoords* %image_coords, %struct._GimpCoords** %image_coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store i32 %update_software_cursor, i32* %update_software_cursor.addr, align 4
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display1 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 1
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display1, align 8
  store %struct._GimpDisplay* %1, %struct._GimpDisplay** %display, align 8
  %2 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call = call %struct._Gimp* @gimp_display_get_gimp(%struct._GimpDisplay* %2)
  store %struct._Gimp* %call, %struct._Gimp** %gimp, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call2 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %3)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display3 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %4, i32 0, i32 1
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display3, align 8
  %config = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %5, i32 0, i32 2
  %6 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config, align 8
  %cursor_updating = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %6, i32 0, i32 11
  %7 = load i32, i32* %cursor_updating, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.36

if.end:                                           ; preds = %entry
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call4 = call %struct._GimpTool* @tool_manager_get_active(%struct._Gimp* %8)
  store %struct._GimpTool* %call4, %struct._GimpTool** %active_tool, align 8
  %9 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %tobool5 = icmp ne %struct._GimpTool* %9, null
  br i1 %tobool5, label %if.then.6, label %if.else.24

if.then.6:                                        ; preds = %if.end
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call7 = call i32 @gimp_image_is_empty(%struct._GimpImage* %10)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.then.6
  %11 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %11, i32 0, i32 3
  %12 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call9 = call i32 @gimp_tool_control_get_handle_empty_image(%struct._GimpToolControl* %12)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then.6
  %13 = load i32, i32* %state.addr, align 4
  %and = and i32 %13, 1792
  %tobool11 = icmp ne i32 %and, 0
  br i1 %tobool11, label %if.else, label %if.then.12

if.then.12:                                       ; preds = %land.lhs.true
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %15 = load %struct._GimpCoords*, %struct._GimpCoords** %image_coords.addr, align 8
  %16 = load i32, i32* %state.addr, align 4
  %17 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  call void @tool_manager_cursor_update_active(%struct._Gimp* %14, %struct._GimpCoords* %15, i32 %16, %struct._GimpDisplay* %17)
  br label %if.end.23

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call13 = call i32 @gimp_image_is_empty(%struct._GimpImage* %18)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %land.lhs.true.15, label %if.end.22

land.lhs.true.15:                                 ; preds = %if.else
  %19 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %control16 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %19, i32 0, i32 3
  %20 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control16, align 8
  %call17 = call i32 @gimp_tool_control_get_handle_empty_image(%struct._GimpToolControl* %20)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end.22, label %if.then.19

if.then.19:                                       ; preds = %land.lhs.true.15
  %21 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %22 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %control20 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %22, i32 0, i32 3
  %23 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control20, align 8
  %call21 = call i32 @gimp_tool_control_get_tool_cursor(%struct._GimpToolControl* %23)
  call void @gimp_display_shell_set_cursor(%struct._GimpDisplayShell* %21, i32 1025, i32 %call21, i32 1)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %land.lhs.true.15, %if.else
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.12
  br label %if.end.25

if.else.24:                                       ; preds = %if.end
  %24 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_set_cursor(%struct._GimpDisplayShell* %24, i32 1025, i32 0, i32 1)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %if.end.23
  %25 = load i32, i32* %update_software_cursor.addr, align 4
  %tobool26 = icmp ne i32 %25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.36

if.then.27:                                       ; preds = %if.end.25
  store i32 0, i32* %precision, align 4
  %26 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %tobool28 = icmp ne %struct._GimpTool* %26, null
  br i1 %tobool28, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.then.27
  %27 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %control30 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %27, i32 0, i32 3
  %28 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control30, align 8
  %call31 = call i32 @gimp_tool_control_get_precision(%struct._GimpToolControl* %28)
  store i32 %call31, i32* %precision, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.then.27
  %29 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %30 = load i32, i32* %precision, align 4
  %31 = load %struct._GimpCoords*, %struct._GimpCoords** %display_coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %31, i32 0, i32 0
  %32 = load double, double* %x, align 8
  %conv = fptosi double %32 to i32
  %33 = load %struct._GimpCoords*, %struct._GimpCoords** %display_coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %33, i32 0, i32 1
  %34 = load double, double* %y, align 8
  %conv33 = fptosi double %34 to i32
  %35 = load %struct._GimpCoords*, %struct._GimpCoords** %image_coords.addr, align 8
  %x34 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %35, i32 0, i32 0
  %36 = load double, double* %x34, align 8
  %37 = load %struct._GimpCoords*, %struct._GimpCoords** %image_coords.addr, align 8
  %y35 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %37, i32 0, i32 1
  %38 = load double, double* %y35, align 8
  call void @gimp_display_shell_update_software_cursor(%struct._GimpDisplayShell* %29, i32 %30, i32 %conv, i32 %conv33, double %36, double %38)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then, %if.end.32, %if.end.25
  ret void
}

declare i32 @gdk_event_triggers_context_menu(%union._GdkEvent*) #1

declare %struct._GimpUIManager* @tool_manager_get_popup_active(%struct._Gimp*, %struct._GimpCoords*, i32, %struct._GimpDisplay*, i8**) #1

declare void @gimp_ui_manager_ui_popup(%struct._GimpUIManager*, i8*, %struct._GtkWidget*, void (%struct._GtkMenu*, i32*, i32*, i8*)*, i8*, void (i8*)*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare i32 @gimp_display_shell_pointer_grab(%struct._GimpDisplayShell*, %union._GdkEvent*, i32) #1

declare i32 @gimp_display_shell_keyboard_grab(%struct._GimpDisplayShell*, %union._GdkEvent*) #1

declare void @gimp_display_shell_pointer_ungrab(%struct._GimpDisplayShell*, %union._GdkEvent*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_display_shell_initialize_tool(%struct._GimpDisplayShell* %shell, %struct._GimpCoords* %image_coords, i32 %state) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %image_coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %display = alloca %struct._GimpDisplay*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %initialized = alloca i32, align 4
  %active_tool = alloca %struct._GimpTool*, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GimpCoords* %image_coords, %struct._GimpCoords** %image_coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display1 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 1
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display1, align 8
  store %struct._GimpDisplay* %1, %struct._GimpDisplay** %display, align 8
  %2 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %2)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call2 = call %struct._Gimp* @gimp_display_get_gimp(%struct._GimpDisplay* %3)
  store %struct._Gimp* %call2, %struct._Gimp** %gimp, align 8
  store i32 0, i32* %initialized, align 4
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call3 = call %struct._GimpTool* @tool_manager_get_active(%struct._Gimp* %4)
  store %struct._GimpTool* %call3, %struct._GimpTool** %active_tool, align 8
  %5 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %tobool = icmp ne %struct._GimpTool* %5, null
  br i1 %tobool, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call4 = call i32 @gimp_image_is_empty(%struct._GimpImage* %6)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %7 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %7, i32 0, i32 3
  %8 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call6 = call i32 @gimp_tool_control_get_handle_empty_image(%struct._GimpToolControl* %8)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %if.end.25

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  store i32 1, i32* %initialized, align 4
  %9 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %drawable = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %9, i32 0, i32 5
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool8 = icmp ne %struct._GimpDrawable* %10, null
  br i1 %tobool8, label %if.else, label %if.then.9

if.then.9:                                        ; preds = %if.then
  %11 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %12 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call10 = call i32 @tool_manager_initialize_active(%struct._Gimp* %11, %struct._GimpDisplay* %12)
  store i32 %call10, i32* %initialized, align 4
  br label %if.end.24

if.else:                                          ; preds = %if.then
  %13 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %drawable11 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %13, i32 0, i32 5
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable11, align 8
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call12 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %15)
  %cmp = icmp ne %struct._GimpDrawable* %14, %call12
  br i1 %cmp, label %land.lhs.true.13, label %if.end

land.lhs.true.13:                                 ; preds = %if.else
  %16 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %control14 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %16, i32 0, i32 3
  %17 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control14, align 8
  %call15 = call i32 @gimp_tool_control_get_preserve(%struct._GimpToolControl* %17)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end, label %land.lhs.true.17

land.lhs.true.17:                                 ; preds = %land.lhs.true.13
  %18 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %control18 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %18, i32 0, i32 3
  %19 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control18, align 8
  %call19 = call i32 @gimp_tool_control_get_dirty_mask(%struct._GimpToolControl* %19)
  %and = and i32 %call19, 512
  %tobool20 = icmp ne i32 %and, 0
  br i1 %tobool20, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %land.lhs.true.17
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call22 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %20)
  call void @gimp_context_tool_changed(%struct._GimpContext* %call22)
  %21 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %22 = load %struct._GimpCoords*, %struct._GimpCoords** %image_coords.addr, align 8
  %23 = load i32, i32* %state.addr, align 4
  call void @gimp_display_shell_update_focus(%struct._GimpDisplayShell* %21, i32 1, %struct._GimpCoords* %22, i32 %23)
  %24 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %25 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call23 = call i32 @tool_manager_initialize_active(%struct._Gimp* %24, %struct._GimpDisplay* %25)
  store i32 %call23, i32* %initialized, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.21, %land.lhs.true.17, %land.lhs.true.13, %if.else
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %if.then.9
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %lor.lhs.false, %entry
  %26 = load i32, i32* %initialized, align 4
  ret i32 %26
}

declare void @gimp_motion_buffer_begin_stroke(%struct._GimpMotionBuffer*, i32, %struct._GimpCoords*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare void @tool_manager_button_press_active(%struct._Gimp*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_start_scrolling(%struct._GimpDisplayShell* %shell, %union._GdkEvent* %event, i32 %x, i32 %y) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scrolling = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 94
  %1 = load i32, i32* %scrolling, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_display_shell_start_scrolling, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %3 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %call = call i32 @gimp_display_shell_pointer_grab(%struct._GimpDisplayShell* %2, %union._GdkEvent* %3, i32 4)
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scrolling1 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %4, i32 0, i32 94
  store i32 1, i32* %scrolling1, align 4
  %5 = load i32, i32* %x.addr, align 4
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %6, i32 0, i32 11
  %7 = load i32, i32* %offset_x, align 4
  %add = add nsw i32 %5, %7
  %8 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scroll_start_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %8, i32 0, i32 95
  store i32 %add, i32* %scroll_start_x, align 4
  %9 = load i32, i32* %y.addr, align 4
  %10 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %10, i32 0, i32 12
  %11 = load i32, i32* %offset_y, align 4
  %add2 = add nsw i32 %9, %11
  %12 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scroll_start_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %12, i32 0, i32 96
  store i32 %add2, i32* %scroll_start_y, align 4
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_set_override_cursor(%struct._GimpDisplayShell* %13, i32 52)
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

declare %struct._GimpTool* @tool_manager_get_active(%struct._Gimp*) #1

declare i32 @gimp_tool_control_is_active(%struct._GimpToolControl*) #1

declare i32 @gimp_tool_control_get_wants_double_click(%struct._GimpToolControl*) #1

declare i32 @gimp_tool_control_get_wants_triple_click(%struct._GimpToolControl*) #1

declare void @gimp_display_shell_autoscroll_stop(%struct._GimpDisplayShell*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_display_shell_key_to_state(i32 %key) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i32, align 4
  store i32 %key, i32* %key.addr, align 4
  %0 = load i32, i32* %key.addr, align 4
  switch i32 %0, label %sw.default [
    i32 65513, label %sw.bb
    i32 65514, label %sw.bb
    i32 65505, label %sw.bb.1
    i32 65506, label %sw.bb.1
    i32 65507, label %sw.bb.2
    i32 65508, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry, %entry
  store i32 8, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry, %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry, %entry
  store i32 4, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i32, i32* %retval
  ret i32 %1
}

declare void @gimp_display_shell_keyboard_ungrab(%struct._GimpDisplayShell*, %union._GdkEvent*) #1

declare i32 @gimp_image_is_empty(%struct._GimpImage*) #1

declare i32 @gimp_tool_control_get_handle_empty_image(%struct._GimpToolControl*) #1

declare void @gimp_motion_buffer_end_stroke(%struct._GimpMotionBuffer*) #1

declare void @tool_manager_button_release_active(%struct._Gimp*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_space_released(%struct._GimpDisplayShell* %shell, %union._GdkEvent* %event, %struct._GimpCoords* %image_coords) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %image_coords.addr = alloca %struct._GimpCoords*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %state = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  store %struct._GimpCoords* %image_coords, %struct._GimpCoords** %image_coords.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 1
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call = call %struct._Gimp* @gimp_display_get_gimp(%struct._GimpDisplay* %1)
  store %struct._Gimp* %call, %struct._Gimp** %gimp, align 8
  %2 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %space_pressed = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %2, i32 0, i32 91
  %3 = load i32, i32* %space_pressed, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %space_release_pending = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %4, i32 0, i32 92
  %5 = load i32, i32* %space_release_pending, align 4
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display2 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %6, i32 0, i32 1
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display2, align 8
  %config = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %7, i32 0, i32 2
  %8 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config, align 8
  %space_bar_action = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %8, i32 0, i32 27
  %9 = load i32, i32* %space_bar_action, align 4
  switch i32 %9, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.3
    i32 2, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %if.end
  br label %sw.epilog

sw.bb.3:                                          ; preds = %if.end
  %10 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %11 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  call void @gimp_display_shell_stop_scrolling(%struct._GimpDisplayShell* %10, %union._GdkEvent* %11)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.end
  %12 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %space_shaded_tool = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %12, i32 0, i32 93
  %13 = load i8*, i8** %space_shaded_tool, align 8
  %tobool5 = icmp ne i8* %13, null
  br i1 %tobool5, label %if.then.6, label %if.end.16

if.then.6:                                        ; preds = %sw.bb.4
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call7 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %14)
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %space_shaded_tool8 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %16, i32 0, i32 93
  %17 = load i8*, i8** %space_shaded_tool8, align 8
  %call9 = call %struct._GimpToolInfo* @gimp_get_tool_info(%struct._Gimp* %15, i8* %17)
  call void @gimp_context_set_tool(%struct._GimpContext* %call7, %struct._GimpToolInfo* %call9)
  %18 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %space_shaded_tool10 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %18, i32 0, i32 93
  store i8* null, i8** %space_shaded_tool10, align 8
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %19, i32 0, i32 33
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  %call11 = call i32 @gtk_widget_has_focus(%struct._GtkWidget* %20)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then.6
  %21 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %call14 = call i32 @gdk_event_get_state(%union._GdkEvent* %21, i32* %state)
  %22 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %23 = load %struct._GimpCoords*, %struct._GimpCoords** %image_coords.addr, align 8
  %24 = load i32, i32* %state, align 4
  call void @gimp_display_shell_update_focus(%struct._GimpDisplayShell* %22, i32 1, %struct._GimpCoords* %23, i32 %24)
  br label %if.end.15

if.else:                                          ; preds = %if.then.6
  %25 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %26 = load %struct._GimpCoords*, %struct._GimpCoords** %image_coords.addr, align 8
  call void @gimp_display_shell_update_focus(%struct._GimpDisplayShell* %25, i32 0, %struct._GimpCoords* %26, i32 0)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.13
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %sw.bb.4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %if.end.16, %sw.bb.3, %sw.bb
  %27 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %28 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  call void @gimp_display_shell_keyboard_ungrab(%struct._GimpDisplayShell* %27, %union._GdkEvent* %28)
  %29 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %space_pressed17 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %29, i32 0, i32 91
  store i32 0, i32* %space_pressed17, align 4
  %30 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %space_release_pending18 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %30, i32 0, i32 92
  store i32 0, i32* %space_release_pending18, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_stop_scrolling(%struct._GimpDisplayShell* %shell, %union._GdkEvent* %event) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scrolling = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 94
  %1 = load i32, i32* %scrolling, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_display_shell_stop_scrolling, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_unset_override_cursor(%struct._GimpDisplayShell* %2)
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scrolling1 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %3, i32 0, i32 94
  store i32 0, i32* %scrolling1, align 4
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scroll_start_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %4, i32 0, i32 95
  store i32 0, i32* %scroll_start_x, align 4
  %5 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scroll_start_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %5, i32 0, i32 96
  store i32 0, i32* %scroll_start_y, align 4
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %7 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  call void @gimp_display_shell_pointer_ungrab(%struct._GimpDisplayShell* %6, %union._GdkEvent* %7)
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

declare %struct._GimpController* @gimp_controllers_get_mouse(%struct._Gimp*) #1

declare i32 @gimp_controller_mouse_button(%struct._GimpControllerMouse*, %struct._GdkEventButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_controller_mouse_get_type() #2

declare %struct._GimpController* @gimp_controllers_get_wheel(%struct._Gimp*) #1

declare i32 @gimp_controller_wheel_scroll(%struct._GimpControllerWheel*, %struct._GdkEventScroll*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_controller_wheel_get_type() #2

declare i32 @gimp_get_toggle_behavior_mask() #1

declare void @gimp_display_shell_scale(%struct._GimpDisplayShell*, i32, double, i32) #1

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare double @gtk_adjustment_get_page_increment(%struct._GtkAdjustment*) #1

declare double @gtk_adjustment_get_upper(%struct._GtkAdjustment*) #1

declare double @gtk_adjustment_get_page_size(%struct._GtkAdjustment*) #1

declare double @gtk_adjustment_get_lower(%struct._GtkAdjustment*) #1

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

declare i32 @gimp_tool_control_get_motion_mode(%struct._GimpToolControl*) #1

; Function Attrs: nounwind uwtable
define internal %union._GdkEvent* @gimp_display_shell_compress_motion(%struct._GimpDisplayShell* %shell) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %requeued_events = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %last_motion = alloca %union._GdkEvent*, align 8
  %event = alloca %union._GdkEvent*, align 8
  %event35 = alloca %union._GdkEvent*, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GList* null, %struct._GList** %requeued_events, align 8
  store %union._GdkEvent* null, %union._GdkEvent** %last_motion, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.31, %entry
  %call = call i32 @gdk_events_pending()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end.32

while.body:                                       ; preds = %while.cond
  %call1 = call %union._GdkEvent* @gdk_event_get()
  store %union._GdkEvent* %call1, %union._GdkEvent** %event, align 8
  %0 = load %union._GdkEvent*, %union._GdkEvent** %event, align 8
  %tobool2 = icmp ne %union._GdkEvent* %0, null
  br i1 %tobool2, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  br label %if.end.31

if.else:                                          ; preds = %while.body
  %1 = load %union._GdkEvent*, %union._GdkEvent** %event, align 8
  %call3 = call %struct._GtkWidget* @gtk_get_event_widget(%union._GdkEvent* %1)
  %2 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %2, i32 0, i32 33
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  %cmp = icmp eq %struct._GtkWidget* %call3, %3
  br i1 %cmp, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else
  %4 = load %union._GdkEvent*, %union._GdkEvent** %event, align 8
  %any = bitcast %union._GdkEvent* %4 to %struct._GdkEventAny*
  %type = getelementptr inbounds %struct._GdkEventAny, %struct._GdkEventAny* %any, i32 0, i32 0
  %5 = load i32, i32* %type, align 4
  %cmp4 = icmp eq i32 %5, 3
  br i1 %cmp4, label %if.then.5, label %if.else.8

if.then.5:                                        ; preds = %land.lhs.true
  %6 = load %union._GdkEvent*, %union._GdkEvent** %last_motion, align 8
  %tobool6 = icmp ne %union._GdkEvent* %6, null
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then.5
  %7 = load %union._GdkEvent*, %union._GdkEvent** %last_motion, align 8
  call void @gdk_event_free(%union._GdkEvent* %7)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then.5
  %8 = load %union._GdkEvent*, %union._GdkEvent** %event, align 8
  store %union._GdkEvent* %8, %union._GdkEvent** %last_motion, align 8
  br label %if.end.30

if.else.8:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %union._GdkEvent*, %union._GdkEvent** %event, align 8
  %call9 = call %struct._GtkWidget* @gtk_get_event_widget(%union._GdkEvent* %9)
  %10 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas10 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %10, i32 0, i32 33
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas10, align 8
  %cmp11 = icmp eq %struct._GtkWidget* %call9, %11
  br i1 %cmp11, label %land.lhs.true.12, label %if.else.27

land.lhs.true.12:                                 ; preds = %if.else.8
  %12 = load %union._GdkEvent*, %union._GdkEvent** %event, align 8
  %any13 = bitcast %union._GdkEvent* %12 to %struct._GdkEventAny*
  %type14 = getelementptr inbounds %struct._GdkEventAny, %struct._GdkEventAny* %any13, i32 0, i32 0
  %13 = load i32, i32* %type14, align 4
  %cmp15 = icmp eq i32 %13, 7
  br i1 %cmp15, label %if.then.16, label %if.else.27

if.then.16:                                       ; preds = %land.lhs.true.12
  %14 = load %struct._GList*, %struct._GList** %requeued_events, align 8
  %15 = load %union._GdkEvent*, %union._GdkEvent** %event, align 8
  %16 = bitcast %union._GdkEvent* %15 to i8*
  %call17 = call %struct._GList* @g_list_prepend(%struct._GList* %14, i8* %16)
  store %struct._GList* %call17, %struct._GList** %requeued_events, align 8
  br label %while.cond.18

while.cond.18:                                    ; preds = %if.end.26, %if.then.16
  %call19 = call i32 @gdk_events_pending()
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %while.body.21, label %while.end

while.body.21:                                    ; preds = %while.cond.18
  %call22 = call %union._GdkEvent* @gdk_event_get()
  store %union._GdkEvent* %call22, %union._GdkEvent** %event, align 8
  %tobool23 = icmp ne %union._GdkEvent* %call22, null
  br i1 %tobool23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %while.body.21
  %17 = load %struct._GList*, %struct._GList** %requeued_events, align 8
  %18 = load %union._GdkEvent*, %union._GdkEvent** %event, align 8
  %19 = bitcast %union._GdkEvent* %18 to i8*
  %call25 = call %struct._GList* @g_list_prepend(%struct._GList* %17, i8* %19)
  store %struct._GList* %call25, %struct._GList** %requeued_events, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %while.body.21
  br label %while.cond.18

while.end:                                        ; preds = %while.cond.18
  br label %while.end.32

if.else.27:                                       ; preds = %land.lhs.true.12, %if.else.8
  %20 = load %struct._GList*, %struct._GList** %requeued_events, align 8
  %21 = load %union._GdkEvent*, %union._GdkEvent** %event, align 8
  %22 = bitcast %union._GdkEvent* %21 to i8*
  %call28 = call %struct._GList* @g_list_prepend(%struct._GList* %20, i8* %22)
  store %struct._GList* %call28, %struct._GList** %requeued_events, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.27
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then
  br label %while.cond

while.end.32:                                     ; preds = %while.end, %while.cond
  %23 = load %struct._GList*, %struct._GList** %requeued_events, align 8
  %call33 = call %struct._GList* @g_list_reverse(%struct._GList* %23)
  store %struct._GList* %call33, %struct._GList** %requeued_events, align 8
  %24 = load %struct._GList*, %struct._GList** %requeued_events, align 8
  store %struct._GList* %24, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %while.end.32
  %25 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool34 = icmp ne %struct._GList* %25, null
  br i1 %tobool34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %26, i32 0, i32 0
  %27 = load i8*, i8** %data, align 8
  %28 = bitcast i8* %27 to %union._GdkEvent*
  store %union._GdkEvent* %28, %union._GdkEvent** %event35, align 8
  %29 = load %union._GdkEvent*, %union._GdkEvent** %event35, align 8
  call void @gdk_event_put(%union._GdkEvent* %29)
  %30 = load %union._GdkEvent*, %union._GdkEvent** %event35, align 8
  call void @gdk_event_free(%union._GdkEvent* %30)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool36 = icmp ne %struct._GList* %31, null
  br i1 %tobool36, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %32 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %32, i32 0, i32 1
  %33 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %33, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %struct._GList*, %struct._GList** %requeued_events, align 8
  call void @g_list_free(%struct._GList* %34)
  %35 = load %union._GdkEvent*, %union._GdkEvent** %last_motion, align 8
  ret %union._GdkEvent* %35
}

declare void @gimp_display_shell_scroll(%struct._GimpDisplayShell*, i32, i32) #1

declare i32 @gimp_tool_control_get_scroll_lock(%struct._GimpToolControl*) #1

declare void @gimp_display_shell_autoscroll_start(%struct._GimpDisplayShell*, i32, %struct._GdkEventMotion*) #1

declare i32 @gimp_motion_buffer_get_last_motion_time(%struct._GimpMotionBuffer*) #1

declare i32 @gdk_device_get_history(%struct._GdkDevice*, %struct._GdkDrawable*, i32, i32, %struct._GdkTimeCoord***, i32*) #1

declare %struct._GimpDeviceInfo* @gimp_device_info_get_by_device(%struct._GdkDevice*) #1

declare void @gimp_device_info_get_time_coords(%struct._GimpDeviceInfo*, %struct._GdkTimeCoord*, %struct._GimpCoords*) #1

declare i32 @gimp_motion_buffer_motion_event(%struct._GimpMotionBuffer*, %struct._GimpCoords*, i32, double, double, i32) #1

declare void @gimp_motion_buffer_request_stroke(%struct._GimpMotionBuffer*, i32, i32) #1

declare void @gdk_device_free_history(%struct._GdkTimeCoord**, i32) #1

declare void @gimp_motion_buffer_request_hover(%struct._GimpMotionBuffer*, i32, i32) #1

declare void @gdk_event_free(%union._GdkEvent*) #1

declare void @tool_manager_active_modifier_state_active(%struct._Gimp*, i32, %struct._GimpDisplay*) #1

declare void @tool_manager_focus_display_active(%struct._Gimp*, %struct._GimpDisplay*) #1

declare i32 @gimp_tool_control_get_wants_all_key_events(%struct._GimpToolControl*) #1

declare i32 @tool_manager_key_press_active(%struct._Gimp*, %struct._GdkEventKey*, %struct._GimpDisplay*) #1

declare %struct._GimpController* @gimp_controllers_get_keyboard(%struct._Gimp*) #1

declare i32 @gimp_controller_keyboard_key_press(%struct._GimpControllerKeyboard*, %struct._GdkEventKey*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_controller_keyboard_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_space_pressed(%struct._GimpDisplayShell* %shell, %union._GdkEvent* %event) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %manager = alloca %struct._GimpDeviceManager*, align 8
  %current_device = alloca %struct._GimpDeviceInfo*, align 8
  %coords = alloca %struct._GimpCoords, align 8
  %active_tool = alloca %struct._GimpTool*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %state = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 1
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call = call %struct._Gimp* @gimp_display_get_gimp(%struct._GimpDisplay* %1)
  store %struct._Gimp* %call, %struct._Gimp** %gimp, align 8
  %2 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %space_pressed = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %2, i32 0, i32 91
  %3 = load i32, i32* %space_pressed, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %5 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %call1 = call i32 @gimp_display_shell_keyboard_grab(%struct._GimpDisplayShell* %4, %union._GdkEvent* %5)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display5 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %6, i32 0, i32 1
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display5, align 8
  %config = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %7, i32 0, i32 2
  %8 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config, align 8
  %space_bar_action = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %8, i32 0, i32 27
  %9 = load i32, i32* %space_bar_action, align 4
  switch i32 %9, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.6
    i32 2, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %if.end.4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.end.4
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call7 = call %struct._GimpDeviceManager* @gimp_devices_get_manager(%struct._Gimp* %10)
  store %struct._GimpDeviceManager* %call7, %struct._GimpDeviceManager** %manager, align 8
  %11 = load %struct._GimpDeviceManager*, %struct._GimpDeviceManager** %manager, align 8
  %call8 = call %struct._GimpDeviceInfo* @gimp_device_manager_get_current_device(%struct._GimpDeviceManager* %11)
  store %struct._GimpDeviceInfo* %call8, %struct._GimpDeviceInfo** %current_device, align 8
  %12 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %current_device, align 8
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 33
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  %call9 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %14)
  call void @gimp_device_info_get_device_coords(%struct._GimpDeviceInfo* %12, %struct._GdkDrawable* %call9, %struct._GimpCoords* %coords)
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %16 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords, i32 0, i32 0
  %17 = load double, double* %x, align 8
  %conv = fptosi double %17 to i32
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords, i32 0, i32 1
  %18 = load double, double* %y, align 8
  %conv10 = fptosi double %18 to i32
  call void @gimp_display_shell_start_scrolling(%struct._GimpDisplayShell* %15, %union._GdkEvent* %16, i32 %conv, i32 %conv10)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.end.4
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call12 = call %struct._GimpTool* @tool_manager_get_active(%struct._Gimp* %19)
  store %struct._GimpTool* %call12, %struct._GimpTool** %active_tool, align 8
  %20 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %tobool13 = icmp ne %struct._GimpTool* %20, null
  br i1 %tobool13, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.11
  %21 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %22 = bitcast %struct._GimpTool* %21 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %22, %struct._GTypeInstance** %__inst, align 8
  %call14 = call i64 @gimp_move_tool_get_type() #5
  store i64 %call14, i64* %__t, align 8
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool15 = icmp ne %struct._GTypeInstance* %23, null
  br i1 %tobool15, label %if.else, label %if.then.16

if.then.16:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r, align 4
  br label %if.end.24

if.else:                                          ; preds = %lor.lhs.false
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool17 = icmp ne %struct._GTypeClass* %25, null
  br i1 %tobool17, label %land.lhs.true, label %if.else.21

land.lhs.true:                                    ; preds = %if.else
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class18 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %26, i32 0, i32 0
  %27 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class18, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %27, i32 0, i32 0
  %28 = load i64, i64* %g_type, align 8
  %29 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %28, %29
  br i1 %cmp, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.23

if.else.21:                                       ; preds = %land.lhs.true, %if.else
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %31 = load i64, i64* %__t, align 8
  %call22 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %30, i64 %31) #6
  store i32 %call22, i32* %__r, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.21, %if.then.20
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.16
  %32 = load i32, i32* %__r, align 4
  store i32 %32, i32* %tmp
  %33 = load i32, i32* %tmp
  %tobool25 = icmp ne i32 %33, 0
  br i1 %tobool25, label %if.end.32, label %if.then.26

if.then.26:                                       ; preds = %if.end.24, %sw.bb.11
  %34 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %tool_info = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %34, i32 0, i32 1
  %35 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %36 = bitcast %struct._GimpToolInfo* %35 to i8*
  %call28 = call i8* @gimp_object_get_name(i8* %36)
  %37 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %space_shaded_tool = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %37, i32 0, i32 93
  store i8* %call28, i8** %space_shaded_tool, align 8
  %38 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call29 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %38)
  %39 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call30 = call %struct._GimpToolInfo* @gimp_get_tool_info(%struct._Gimp* %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0))
  call void @gimp_context_set_tool(%struct._GimpContext* %call29, %struct._GimpToolInfo* %call30)
  %40 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %call31 = call i32 @gdk_event_get_state(%union._GdkEvent* %40, i32* %state)
  %41 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %42 = load i32, i32* %state, align 4
  call void @gimp_display_shell_update_focus(%struct._GimpDisplayShell* %41, i32 1, %struct._GimpCoords* null, i32 %42)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.26, %if.end.24
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.4, %if.end.32, %sw.bb.6, %sw.bb
  %43 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %space_pressed33 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %43, i32 0, i32 91
  store i32 1, i32* %space_pressed33, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_display_shell_tab_pressed(%struct._GimpDisplayShell* %shell, %struct._GdkEventKey* %kevent) #0 {
entry:
  %retval = alloca i32, align 4
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %kevent.addr = alloca %struct._GdkEventKey*, align 8
  %window = alloca %struct._GimpImageWindow*, align 8
  %manager = alloca %struct._GimpUIManager*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GdkEventKey* %kevent, %struct._GdkEventKey** %kevent.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call = call %struct._GimpImageWindow* @gimp_display_shell_get_window(%struct._GimpDisplayShell* %0)
  store %struct._GimpImageWindow* %call, %struct._GimpImageWindow** %window, align 8
  %1 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %call1 = call %struct._GimpUIManager* @gimp_image_window_get_ui_manager(%struct._GimpImageWindow* %1)
  store %struct._GimpUIManager* %call1, %struct._GimpUIManager** %manager, align 8
  %2 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %2, i32 0, i32 1
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call2 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %3)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  %4 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %state = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %4, i32 0, i32 4
  %5 = load i32, i32* %state, align 4
  %and = and i32 %5, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else.10

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool3 = icmp ne %struct._GimpImage* %6, null
  br i1 %tobool3, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.then
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call4 = call i32 @gimp_image_is_empty(%struct._GimpImage* %7)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.9, label %if.then.6

if.then.6:                                        ; preds = %land.lhs.true
  %8 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %keyval = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %8, i32 0, i32 5
  %9 = load i32, i32* %keyval, align 4
  %cmp = icmp eq i32 %9, 65289
  br i1 %cmp, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then.6
  %10 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %11 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %time = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %11, i32 0, i32 3
  %12 = load i32, i32* %time, align 4
  call void @gimp_display_shell_layer_select_init(%struct._GimpDisplayShell* %10, i32 1, i32 %12)
  br label %if.end

if.else:                                          ; preds = %if.then.6
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %14 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %time8 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %14, i32 0, i32 3
  %15 = load i32, i32* %time8, align 4
  call void @gimp_display_shell_layer_select_init(%struct._GimpDisplayShell* %13, i32 -1, i32 %15)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.7
  store i32 1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %land.lhs.true, %if.then
  br label %if.end.28

if.else.10:                                       ; preds = %entry
  %16 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %state11 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %16, i32 0, i32 4
  %17 = load i32, i32* %state11, align 4
  %and12 = and i32 %17, 8
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then.14, label %if.else.25

if.then.14:                                       ; preds = %if.else.10
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool15 = icmp ne %struct._GimpImage* %18, null
  br i1 %tobool15, label %if.then.16, label %if.end.24

if.then.16:                                       ; preds = %if.then.14
  %19 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %keyval17 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %19, i32 0, i32 5
  %20 = load i32, i32* %keyval17, align 4
  %cmp18 = icmp eq i32 %20, 65289
  br i1 %cmp18, label %if.then.19, label %if.else.21

if.then.19:                                       ; preds = %if.then.16
  %21 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager, align 8
  %call20 = call i32 @gimp_ui_manager_activate_action(%struct._GimpUIManager* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.23

if.else.21:                                       ; preds = %if.then.16
  %22 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager, align 8
  %call22 = call i32 @gimp_ui_manager_activate_action(%struct._GimpUIManager* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.21, %if.then.19
  store i32 1, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.then.14
  br label %if.end.27

if.else.25:                                       ; preds = %if.else.10
  %23 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager, align 8
  %call26 = call i32 @gimp_ui_manager_activate_action(%struct._GimpUIManager* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.27:                                        ; preds = %if.end.24
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end.9
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.28, %if.else.25, %if.end.23, %if.end
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare void @tool_manager_modifier_state_active(%struct._Gimp*, i32, %struct._GimpDisplay*) #1

declare i32 @tool_manager_key_release_active(%struct._Gimp*, %struct._GdkEventKey*, %struct._GimpDisplay*) #1

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_buffer_stroke(%struct._GimpMotionBuffer* %buffer, %struct._GimpCoords* %coords, i32 %time, i32 %state, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %buffer.addr = alloca %struct._GimpMotionBuffer*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %active_tool = alloca %struct._GimpTool*, align 8
  store %struct._GimpMotionBuffer* %buffer, %struct._GimpMotionBuffer** %buffer.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display1 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 1
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display1, align 8
  store %struct._GimpDisplay* %1, %struct._GimpDisplay** %display, align 8
  %2 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call = call %struct._Gimp* @gimp_display_get_gimp(%struct._GimpDisplay* %2)
  store %struct._Gimp* %call, %struct._Gimp** %gimp, align 8
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call2 = call %struct._GimpTool* @tool_manager_get_active(%struct._Gimp* %3)
  store %struct._GimpTool* %call2, %struct._GimpTool** %active_tool, align 8
  %4 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %tobool = icmp ne %struct._GimpTool* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 3
  %6 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call3 = call i32 @gimp_tool_control_is_active(%struct._GimpToolControl* %6)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %8 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %9 = load i32, i32* %time.addr, align 4
  %10 = load i32, i32* %state.addr, align 4
  %11 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  call void @tool_manager_motion_active(%struct._Gimp* %7, %struct._GimpCoords* %8, i32 %9, i32 %10, %struct._GimpDisplay* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare void @tool_manager_motion_active(%struct._Gimp*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*) #1

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_buffer_hover(%struct._GimpMotionBuffer* %buffer, %struct._GimpCoords* %coords, i32 %state, i32 %proximity, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %buffer.addr = alloca %struct._GimpMotionBuffer*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %proximity.addr = alloca i32, align 4
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %active_tool = alloca %struct._GimpTool*, align 8
  store %struct._GimpMotionBuffer* %buffer, %struct._GimpMotionBuffer** %buffer.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store i32 %proximity, i32* %proximity.addr, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display1 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 1
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display1, align 8
  store %struct._GimpDisplay* %1, %struct._GimpDisplay** %display, align 8
  %2 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call = call %struct._Gimp* @gimp_display_get_gimp(%struct._GimpDisplay* %2)
  store %struct._Gimp* %call, %struct._Gimp** %gimp, align 8
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call2 = call %struct._GimpTool* @tool_manager_get_active(%struct._Gimp* %3)
  store %struct._GimpTool* %call2, %struct._GimpTool** %active_tool, align 8
  %4 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %tobool = icmp ne %struct._GimpTool* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 3
  %6 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call3 = call i32 @gimp_tool_control_is_active(%struct._GimpToolControl* %6)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %8 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %9 = load i32, i32* %state.addr, align 4
  %10 = load i32, i32* %proximity.addr, align 4
  %11 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  call void @tool_manager_oper_update_active(%struct._Gimp* %7, %struct._GimpCoords* %8, i32 %9, i32 %10, %struct._GimpDisplay* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_display_shell_hruler_button_press(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %2 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call = call i32 @gimp_display_shell_ruler_button_press(%struct._GtkWidget* %0, %struct._GdkEventButton* %1, %struct._GimpDisplayShell* %2, i32 1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_display_shell_ruler_button_press(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event, %struct._GimpDisplayShell* %shell, i32 %horizontal) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %horizontal.addr = alloca i32, align 4
  %display = alloca %struct._GimpDisplay*, align 8
  %active_tool = alloca %struct._GimpTool*, align 8
  %sample_point = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst27 = alloca %struct._GTypeInstance*, align 8
  %__t29 = alloca i64, align 8
  %__r32 = alloca i32, align 4
  %tmp47 = alloca i32, align 4
  %__inst51 = alloca %struct._GTypeInstance*, align 8
  %__t53 = alloca i64, align 8
  %__r56 = alloca i32, align 4
  %tmp71 = alloca i32, align 4
  %__inst80 = alloca %struct._GTypeInstance*, align 8
  %__t82 = alloca i64, align 8
  %__r85 = alloca i32, align 4
  %tmp100 = alloca i32, align 4
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i32 %horizontal, i32* %horizontal.addr, align 4
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display1 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 1
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display1, align 8
  store %struct._GimpDisplay* %1, %struct._GimpDisplay** %display, align 8
  %2 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %2, i32 0, i32 1
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %busy = getelementptr inbounds %struct._Gimp, %struct._Gimp* %3, i32 0, i32 16
  %4 = load i32, i32* %busy, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %5)
  %tobool2 = icmp ne %struct._GimpImage* %call, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %6 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %type = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %6, i32 0, i32 0
  %7 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %7, 4
  br i1 %cmp, label %land.lhs.true, label %if.end.136

land.lhs.true:                                    ; preds = %if.end.4
  %8 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %8, i32 0, i32 8
  %9 = load i32, i32* %button, align 4
  %cmp5 = icmp eq i32 %9, 1
  br i1 %cmp5, label %if.then.6, label %if.end.136

if.then.6:                                        ; preds = %land.lhs.true
  %10 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %gimp7 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %10, i32 0, i32 1
  %11 = load %struct._Gimp*, %struct._Gimp** %gimp7, align 8
  %call8 = call %struct._GimpTool* @tool_manager_get_active(%struct._Gimp* %11)
  store %struct._GimpTool* %call8, %struct._GimpTool** %active_tool, align 8
  %12 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %state = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %12, i32 0, i32 7
  %13 = load i32, i32* %state, align 4
  %call9 = call i32 @gimp_get_toggle_behavior_mask()
  %and = and i32 %13, %call9
  store i32 %and, i32* %sample_point, align 4
  %14 = load i32, i32* %sample_point, align 4
  %tobool10 = icmp ne i32 %14, 0
  br i1 %tobool10, label %land.lhs.true.11, label %lor.lhs.false

land.lhs.true.11:                                 ; preds = %if.then.6
  %15 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %16 = bitcast %struct._GimpTool* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst, align 8
  %call12 = call i64 @gimp_color_tool_get_type() #5
  store i64 %call12, i64* %__t, align 8
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool13 = icmp ne %struct._GTypeInstance* %17, null
  br i1 %tobool13, label %if.else, label %if.then.14

if.then.14:                                       ; preds = %land.lhs.true.11
  store i32 0, i32* %__r, align 4
  br label %if.end.23

if.else:                                          ; preds = %land.lhs.true.11
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool15 = icmp ne %struct._GTypeClass* %19, null
  br i1 %tobool15, label %land.lhs.true.16, label %if.else.20

land.lhs.true.16:                                 ; preds = %if.else
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class17 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class17, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type, align 8
  %23 = load i64, i64* %__t, align 8
  %cmp18 = icmp eq i64 %22, %23
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %land.lhs.true.16
  store i32 1, i32* %__r, align 4
  br label %if.end.22

if.else.20:                                       ; preds = %land.lhs.true.16, %if.else
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %25 = load i64, i64* %__t, align 8
  %call21 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %24, i64 %25) #6
  store i32 %call21, i32* %__r, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.20, %if.then.19
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.14
  %26 = load i32, i32* %__r, align 4
  store i32 %26, i32* %tmp
  %27 = load i32, i32* %tmp
  %tobool24 = icmp ne i32 %27, 0
  br i1 %tobool24, label %land.lhs.true.25, label %lor.lhs.false

land.lhs.true.25:                                 ; preds = %if.end.23
  %28 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %29 = bitcast %struct._GimpTool* %28 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %29, %struct._GTypeInstance** %__inst27, align 8
  %call30 = call i64 @gimp_image_map_tool_get_type() #5
  store i64 %call30, i64* %__t29, align 8
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst27, align 8
  %tobool33 = icmp ne %struct._GTypeInstance* %30, null
  br i1 %tobool33, label %if.else.35, label %if.then.34

if.then.34:                                       ; preds = %land.lhs.true.25
  store i32 0, i32* %__r32, align 4
  br label %if.end.46

if.else.35:                                       ; preds = %land.lhs.true.25
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst27, align 8
  %g_class36 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class36, align 8
  %tobool37 = icmp ne %struct._GTypeClass* %32, null
  br i1 %tobool37, label %land.lhs.true.38, label %if.else.43

land.lhs.true.38:                                 ; preds = %if.else.35
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst27, align 8
  %g_class39 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class39, align 8
  %g_type40 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %34, i32 0, i32 0
  %35 = load i64, i64* %g_type40, align 8
  %36 = load i64, i64* %__t29, align 8
  %cmp41 = icmp eq i64 %35, %36
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %land.lhs.true.38
  store i32 1, i32* %__r32, align 4
  br label %if.end.45

if.else.43:                                       ; preds = %land.lhs.true.38, %if.else.35
  %37 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst27, align 8
  %38 = load i64, i64* %__t29, align 8
  %call44 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %37, i64 %38) #6
  store i32 %call44, i32* %__r32, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.43, %if.then.42
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.34
  %39 = load i32, i32* %__r32, align 4
  store i32 %39, i32* %tmp47
  %40 = load i32, i32* %tmp47
  %tobool48 = icmp ne i32 %40, 0
  br i1 %tobool48, label %lor.lhs.false, label %land.lhs.true.49

land.lhs.true.49:                                 ; preds = %if.end.46
  %41 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %42 = bitcast %struct._GimpTool* %41 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %42, %struct._GTypeInstance** %__inst51, align 8
  %call54 = call i64 @gimp_paint_tool_get_type() #5
  store i64 %call54, i64* %__t53, align 8
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst51, align 8
  %tobool57 = icmp ne %struct._GTypeInstance* %43, null
  br i1 %tobool57, label %if.else.59, label %if.then.58

if.then.58:                                       ; preds = %land.lhs.true.49
  store i32 0, i32* %__r56, align 4
  br label %if.end.70

if.else.59:                                       ; preds = %land.lhs.true.49
  %44 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst51, align 8
  %g_class60 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %44, i32 0, i32 0
  %45 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class60, align 8
  %tobool61 = icmp ne %struct._GTypeClass* %45, null
  br i1 %tobool61, label %land.lhs.true.62, label %if.else.67

land.lhs.true.62:                                 ; preds = %if.else.59
  %46 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst51, align 8
  %g_class63 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %46, i32 0, i32 0
  %47 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class63, align 8
  %g_type64 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %47, i32 0, i32 0
  %48 = load i64, i64* %g_type64, align 8
  %49 = load i64, i64* %__t53, align 8
  %cmp65 = icmp eq i64 %48, %49
  br i1 %cmp65, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %land.lhs.true.62
  store i32 1, i32* %__r56, align 4
  br label %if.end.69

if.else.67:                                       ; preds = %land.lhs.true.62, %if.else.59
  %50 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst51, align 8
  %51 = load i64, i64* %__t53, align 8
  %call68 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %50, i64 %51) #6
  store i32 %call68, i32* %__r56, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.67, %if.then.66
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.58
  %52 = load i32, i32* %__r56, align 4
  store i32 %52, i32* %tmp71
  %53 = load i32, i32* %tmp71
  %tobool72 = icmp ne i32 %53, 0
  br i1 %tobool72, label %land.lhs.true.73, label %if.end.112

land.lhs.true.73:                                 ; preds = %if.end.70
  %54 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %55 = bitcast %struct._GimpTool* %54 to %struct._GTypeInstance*
  %call74 = call i64 @gimp_paint_tool_get_type() #5
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call74)
  %56 = bitcast %struct._GTypeInstance* %call75 to %struct._GimpPaintTool*
  %pick_colors = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %56, i32 0, i32 1
  %57 = load i32, i32* %pick_colors, align 4
  %tobool76 = icmp ne i32 %57, 0
  br i1 %tobool76, label %if.end.112, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.73, %if.end.46, %if.end.23, %if.then.6
  %58 = load i32, i32* %sample_point, align 4
  %tobool77 = icmp ne i32 %58, 0
  br i1 %tobool77, label %if.then.102, label %land.lhs.true.78

land.lhs.true.78:                                 ; preds = %lor.lhs.false
  %59 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %60 = bitcast %struct._GimpTool* %59 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %60, %struct._GTypeInstance** %__inst80, align 8
  %call83 = call i64 @gimp_move_tool_get_type() #5
  store i64 %call83, i64* %__t82, align 8
  %61 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst80, align 8
  %tobool86 = icmp ne %struct._GTypeInstance* %61, null
  br i1 %tobool86, label %if.else.88, label %if.then.87

if.then.87:                                       ; preds = %land.lhs.true.78
  store i32 0, i32* %__r85, align 4
  br label %if.end.99

if.else.88:                                       ; preds = %land.lhs.true.78
  %62 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst80, align 8
  %g_class89 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %62, i32 0, i32 0
  %63 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class89, align 8
  %tobool90 = icmp ne %struct._GTypeClass* %63, null
  br i1 %tobool90, label %land.lhs.true.91, label %if.else.96

land.lhs.true.91:                                 ; preds = %if.else.88
  %64 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst80, align 8
  %g_class92 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %64, i32 0, i32 0
  %65 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class92, align 8
  %g_type93 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %65, i32 0, i32 0
  %66 = load i64, i64* %g_type93, align 8
  %67 = load i64, i64* %__t82, align 8
  %cmp94 = icmp eq i64 %66, %67
  br i1 %cmp94, label %if.then.95, label %if.else.96

if.then.95:                                       ; preds = %land.lhs.true.91
  store i32 1, i32* %__r85, align 4
  br label %if.end.98

if.else.96:                                       ; preds = %land.lhs.true.91, %if.else.88
  %68 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst80, align 8
  %69 = load i64, i64* %__t82, align 8
  %call97 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %68, i64 %69) #6
  store i32 %call97, i32* %__r85, align 4
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.96, %if.then.95
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.then.87
  %70 = load i32, i32* %__r85, align 4
  store i32 %70, i32* %tmp100
  %71 = load i32, i32* %tmp100
  %tobool101 = icmp ne i32 %71, 0
  br i1 %tobool101, label %if.end.112, label %if.then.102

if.then.102:                                      ; preds = %if.end.99, %lor.lhs.false
  %72 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %gimp104 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %72, i32 0, i32 1
  %73 = load %struct._Gimp*, %struct._Gimp** %gimp104, align 8
  %74 = load i32, i32* %sample_point, align 4
  %tobool105 = icmp ne i32 %74, 0
  %cond = select i1 %tobool105, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0)
  %call106 = call %struct._GimpToolInfo* @gimp_get_tool_info(%struct._Gimp* %73, i8* %cond)
  store %struct._GimpToolInfo* %call106, %struct._GimpToolInfo** %tool_info, align 8
  %75 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tobool107 = icmp ne %struct._GimpToolInfo* %75, null
  br i1 %tobool107, label %if.then.108, label %if.end.111

if.then.108:                                      ; preds = %if.then.102
  %76 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %gimp109 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %76, i32 0, i32 1
  %77 = load %struct._Gimp*, %struct._Gimp** %gimp109, align 8
  %call110 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %77)
  %78 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  call void @gimp_context_set_tool(%struct._GimpContext* %call110, %struct._GimpToolInfo* %78)
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.108, %if.then.102
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.end.99, %land.lhs.true.73, %if.end.70
  %79 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %gimp113 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %79, i32 0, i32 1
  %80 = load %struct._Gimp*, %struct._Gimp** %gimp113, align 8
  %call114 = call %struct._GimpTool* @tool_manager_get_active(%struct._Gimp* %80)
  store %struct._GimpTool* %call114, %struct._GimpTool** %active_tool, align 8
  %81 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %tobool115 = icmp ne %struct._GimpTool* %81, null
  br i1 %tobool115, label %if.then.116, label %if.end.135

if.then.116:                                      ; preds = %if.end.112
  %82 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %83 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %state117 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %83, i32 0, i32 7
  %84 = load i32, i32* %state117, align 4
  call void @gimp_display_shell_update_focus(%struct._GimpDisplayShell* %82, i32 1, %struct._GimpCoords* null, i32 %84)
  %85 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call118 = call i32 @gimp_display_shell_pointer_grab(%struct._GimpDisplayShell* %85, %union._GdkEvent* null, i32 0)
  %tobool119 = icmp ne i32 %call118, 0
  br i1 %tobool119, label %if.then.120, label %if.end.134

if.then.120:                                      ; preds = %if.then.116
  %86 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %87 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %88 = bitcast %struct._GdkEventButton* %87 to %union._GdkEvent*
  %call121 = call i32 @gimp_display_shell_keyboard_grab(%struct._GimpDisplayShell* %86, %union._GdkEvent* %88)
  %tobool122 = icmp ne i32 %call121, 0
  br i1 %tobool122, label %if.then.123, label %if.else.132

if.then.123:                                      ; preds = %if.then.120
  %89 = load i32, i32* %sample_point, align 4
  %tobool124 = icmp ne i32 %89, 0
  br i1 %tobool124, label %if.then.125, label %if.else.126

if.then.125:                                      ; preds = %if.then.123
  %90 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %91 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  call void @gimp_color_tool_start_sample_point(%struct._GimpTool* %90, %struct._GimpDisplay* %91)
  br label %if.end.131

if.else.126:                                      ; preds = %if.then.123
  %92 = load i32, i32* %horizontal.addr, align 4
  %tobool127 = icmp ne i32 %92, 0
  br i1 %tobool127, label %if.then.128, label %if.else.129

if.then.128:                                      ; preds = %if.else.126
  %93 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %94 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  call void @gimp_move_tool_start_hguide(%struct._GimpTool* %93, %struct._GimpDisplay* %94)
  br label %if.end.130

if.else.129:                                      ; preds = %if.else.126
  %95 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %96 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  call void @gimp_move_tool_start_vguide(%struct._GimpTool* %95, %struct._GimpDisplay* %96)
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.129, %if.then.128
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.then.125
  store i32 1, i32* %retval
  br label %return

if.else.132:                                      ; preds = %if.then.120
  %97 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_pointer_ungrab(%struct._GimpDisplayShell* %97, %union._GdkEvent* null)
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.132
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.then.116
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.end.112
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %land.lhs.true, %if.end.4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.136, %if.end.131, %if.then.3, %if.then
  %98 = load i32, i32* %retval
  ret i32 %98
}

; Function Attrs: nounwind uwtable
define i32 @gimp_display_shell_vruler_button_press(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %2 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call = call i32 @gimp_display_shell_ruler_button_press(%struct._GtkWidget* %0, %struct._GdkEventButton* %1, %struct._GimpDisplayShell* %2, i32 0)
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_color_tool_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

; Function Attrs: nounwind readnone
declare i64 @gimp_image_map_tool_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_tool_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_move_tool_get_type() #2

declare %struct._GimpToolInfo* @gimp_get_tool_info(%struct._Gimp*, i8*) #1

declare void @gimp_context_set_tool(%struct._GimpContext*, %struct._GimpToolInfo*) #1

declare void @gimp_color_tool_start_sample_point(%struct._GimpTool*, %struct._GimpDisplay*) #1

declare void @gimp_move_tool_start_hguide(%struct._GimpTool*, %struct._GimpDisplay*) #1

declare void @gimp_move_tool_start_vguide(%struct._GimpTool*, %struct._GimpDisplay*) #1

declare void @gimp_display_shell_clear_software_cursor(%struct._GimpDisplayShell*) #1

declare %struct._GimpDeviceManager* @gimp_devices_get_manager(%struct._Gimp*) #1

declare %struct._GimpDeviceInfo* @gimp_device_manager_get_current_device(%struct._GimpDeviceManager*) #1

declare i32 @gimp_device_info_has_cursor(%struct._GimpDeviceInfo*) #1

declare void @gimp_display_shell_set_override_cursor(%struct._GimpDisplayShell*, i32) #1

declare void @gimp_display_shell_unset_override_cursor(%struct._GimpDisplayShell*) #1

declare void @gimp_device_info_get_device_coords(%struct._GimpDeviceInfo*, %struct._GdkDrawable*, %struct._GimpCoords*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare i8* @gimp_object_get_name(i8*) #1

declare i32 @gdk_event_get_state(%union._GdkEvent*, i32*) #1

declare %struct._GimpImageWindow* @gimp_display_shell_get_window(%struct._GimpDisplayShell*) #1

declare %struct._GimpUIManager* @gimp_image_window_get_ui_manager(%struct._GimpImageWindow*) #1

declare void @gimp_display_shell_layer_select_init(%struct._GimpDisplayShell*, i32, i32) #1

declare i32 @gimp_ui_manager_activate_action(%struct._GimpUIManager*, i8*, i8*) #1

declare void @tool_manager_cursor_update_active(%struct._Gimp*, %struct._GimpCoords*, i32, %struct._GimpDisplay*) #1

declare void @gimp_display_shell_set_cursor(%struct._GimpDisplayShell*, i32, i32, i32) #1

declare i32 @gimp_tool_control_get_tool_cursor(%struct._GimpToolControl*) #1

declare i32 @gimp_tool_control_get_precision(%struct._GimpToolControl*) #1

declare void @gimp_display_shell_update_software_cursor(%struct._GimpDisplayShell*, i32, i32, i32, double, double) #1

declare i32 @tool_manager_initialize_active(%struct._Gimp*, %struct._GimpDisplay*) #1

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #1

declare i32 @gimp_tool_control_get_preserve(%struct._GimpToolControl*) #1

declare i32 @gimp_tool_control_get_dirty_mask(%struct._GimpToolControl*) #1

declare void @gimp_context_tool_changed(%struct._GimpContext*) #1

declare i32 @gimp_device_info_get_event_coords(%struct._GimpDeviceInfo*, %struct._GdkDrawable*, %union._GdkEvent*, %struct._GimpCoords*) #1

declare i32 @gimp_device_info_get_event_state(%struct._GimpDeviceInfo*, %struct._GdkDrawable*, %union._GdkEvent*, i32*) #1

declare i32 @gdk_event_get_time(%union._GdkEvent*) #1

declare void @gimp_display_shell_untransform_coords(%struct._GimpDisplayShell*, %struct._GimpCoords*, %struct._GimpCoords*) #1

declare i32 @gimp_tool_control_get_snap_to(%struct._GimpToolControl*) #1

declare void @gimp_tool_control_get_snap_offsets(%struct._GimpToolControl*, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_display_shell_snap_coords(%struct._GimpDisplayShell*, %struct._GimpCoords*, i32, i32, i32, i32) #1

declare i32 @gdk_events_pending() #1

declare %union._GdkEvent* @gdk_event_get() #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare %struct._GList* @g_list_reverse(%struct._GList*) #1

declare void @gdk_event_put(%union._GdkEvent*) #1

declare void @g_list_free(%struct._GList*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
