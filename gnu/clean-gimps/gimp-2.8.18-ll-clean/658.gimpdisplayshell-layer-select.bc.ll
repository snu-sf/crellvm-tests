; ModuleID = './app/display/gimpdisplayshell-layer-select.bc'
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
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct.LayerSelect = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpImage*, %struct._GimpLayer* }
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpLayerMask = type opaque
%struct._GeglNode = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._BoundSeg = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GimpView = type { %struct._GtkWidget, %struct._GdkDrawable*, %struct._GimpViewable*, %struct._GimpViewRenderer*, i8, i32 }
%struct._GimpViewRenderer = type opaque
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%union._GdkEvent = type { %struct._GdkEventCrossing }
%struct._GdkEventCrossing = type { i32, %struct._GdkDrawable*, i8, %struct._GdkDrawable*, i32, double, double, double, double, i32, i32, i32, i32 }
%struct._GdkEventKey = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32, i8*, i16, i8, i8 }
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GdkDisplayPointerHooks = type { void (%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_display_shell_layer_select_init = private unnamed_addr constant [37 x i8] c"gimp_display_shell_layer_select_init\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"GIMP_IS_DISPLAY_SHELL (shell)\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"gimp-layer-select\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Layer Select\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"event\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_layer_select_init(%struct._GimpDisplayShell* %shell, i32 %move, i32 %time) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %move.addr = alloca i32, align 4
  %time.addr = alloca i32, align 4
  %layer_select = alloca %struct.LayerSelect*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i32 %move, i32* %move.addr, align 4
  store i32 %time, i32* %time.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_display_shell_layer_select_init, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 1
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call11 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %14)
  store %struct._GimpImage* %call11, %struct._GimpImage** %image, align 8
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call12 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %15)
  store %struct._GimpLayer* %call12, %struct._GimpLayer** %layer, align 8
  %16 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool13 = icmp ne %struct._GimpLayer* %16, null
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %do.end
  br label %return

if.end.15:                                        ; preds = %do.end
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %18 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %19, i32 0, i32 1
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %20, i32 0, i32 1
  %21 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %layer_preview_size = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %21, i32 0, i32 43
  %22 = load i32, i32* %layer_preview_size, align 4
  %call16 = call %struct.LayerSelect* @layer_select_new(%struct._GimpImage* %17, %struct._GimpLayer* %18, i32 %22)
  store %struct.LayerSelect* %call16, %struct.LayerSelect** %layer_select, align 8
  %23 = load %struct.LayerSelect*, %struct.LayerSelect** %layer_select, align 8
  %24 = load i32, i32* %move.addr, align 4
  call void @layer_select_advance(%struct.LayerSelect* %23, i32 %24)
  %25 = load %struct.LayerSelect*, %struct.LayerSelect** %layer_select, align 8
  %window = getelementptr inbounds %struct.LayerSelect, %struct.LayerSelect* %25, i32 0, i32 0
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_window_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call17)
  %28 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkWindow*
  %29 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %30 = bitcast %struct._GimpDisplayShell* %29 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_widget_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call19)
  %31 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkWidget*
  %call21 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %31)
  call void @gtk_window_set_screen(%struct._GtkWindow* %28, %struct._GdkScreen* %call21)
  %32 = load %struct.LayerSelect*, %struct.LayerSelect** %layer_select, align 8
  %window22 = getelementptr inbounds %struct.LayerSelect, %struct.LayerSelect* %32, i32 0, i32 0
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %window22, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %33)
  %34 = load %struct.LayerSelect*, %struct.LayerSelect** %layer_select, align 8
  %window23 = getelementptr inbounds %struct.LayerSelect, %struct.LayerSelect* %34, i32 0, i32 0
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %window23, align 8
  %call24 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %35)
  %36 = load i32, i32* %time.addr, align 4
  %call25 = call i32 @gdk_keyboard_grab(%struct._GdkDrawable* %call24, i32 0, i32 %36)
  br label %return

return:                                           ; preds = %if.end.15, %if.then.14, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_display_shell_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #3

declare %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage*) #3

; Function Attrs: nounwind uwtable
define internal %struct.LayerSelect* @layer_select_new(%struct._GimpImage* %image, %struct._GimpLayer* %layer, i32 %view_size) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %view_size.addr = alloca i32, align 4
  %layer_select = alloca %struct.LayerSelect*, align 8
  %frame1 = alloca %struct._GtkWidget*, align 8
  %frame2 = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %alignment = alloca %struct._GtkWidget*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %call = call noalias i8* @g_slice_alloc0(i64 40)
  %0 = bitcast i8* %call to %struct.LayerSelect*
  store %struct.LayerSelect* %0, %struct.LayerSelect** %layer_select, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %2 = load %struct.LayerSelect*, %struct.LayerSelect** %layer_select, align 8
  %image1 = getelementptr inbounds %struct.LayerSelect, %struct.LayerSelect* %2, i32 0, i32 3
  store %struct._GimpImage* %1, %struct._GimpImage** %image1, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %4 = load %struct.LayerSelect*, %struct.LayerSelect** %layer_select, align 8
  %orig_layer = getelementptr inbounds %struct.LayerSelect, %struct.LayerSelect* %4, i32 0, i32 4
  store %struct._GimpLayer* %3, %struct._GimpLayer** %orig_layer, align 8
  %call2 = call %struct._GtkWidget* @gtk_window_new(i32 1)
  %5 = load %struct.LayerSelect*, %struct.LayerSelect** %layer_select, align 8
  %window = getelementptr inbounds %struct.LayerSelect, %struct.LayerSelect* %5, i32 0, i32 0
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %window, align 8
  %6 = load %struct.LayerSelect*, %struct.LayerSelect** %layer_select, align 8
  %window3 = getelementptr inbounds %struct.LayerSelect, %struct.LayerSelect* %6, i32 0, i32 0
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %window3, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_window_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWindow*
  call void @gtk_window_set_role(%struct._GtkWindow* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0))
  %10 = load %struct.LayerSelect*, %struct.LayerSelect** %layer_select, align 8
  %window6 = getelementptr inbounds %struct.LayerSelect, %struct.LayerSelect* %10, i32 0, i32 0
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %window6, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_window_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call7)
  %13 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkWindow*
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)) #7
  call void @gtk_window_set_title(%struct._GtkWindow* %13, i8* %call9)
  %14 = load %struct.LayerSelect*, %struct.LayerSelect** %layer_select, align 8
  %window10 = getelementptr inbounds %struct.LayerSelect, %struct.LayerSelect* %14, i32 0, i32 0
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %window10, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_window_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkWindow*
  call void @gtk_window_set_position(%struct._GtkWindow* %17, i32 2)
  %18 = load %struct.LayerSelect*, %struct.LayerSelect** %layer_select, align 8
  %window13 = getelementptr inbounds %struct.LayerSelect, %struct.LayerSelect* %18, i32 0, i32 0
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %window13, align 8
  call void @gtk_widget_set_events(%struct._GtkWidget* %19, i32 3328)
  %20 = load %struct.LayerSelect*, %struct.LayerSelect** %layer_select, align 8
  %window14 = getelementptr inbounds %struct.LayerSelect, %struct.LayerSelect* %20, i32 0, i32 0
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %window14, align 8
  %22 = bitcast %struct._GtkWidget* %21 to i8*
  %23 = load %struct.LayerSelect*, %struct.LayerSelect** %layer_select, align 8
  %24 = bitcast %struct.LayerSelect* %23 to i8*
  %call15 = call i64 @g_signal_connect_data(i8* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, %struct.LayerSelect*)* @layer_select_events to void ()*), i8* %24, void (i8*, %struct._GClosure*)* null, i32 0)
  %call16 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %frame1, align 8
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %frame1, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_frame_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call17)
  %27 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %27, i32 2)
  %28 = load %struct.LayerSelect*, %struct.LayerSelect** %layer_select, align 8
  %window19 = getelementptr inbounds %struct.LayerSelect, %struct.LayerSelect* %28, i32 0, i32 0
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %window19, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_container_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call20)
  %31 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkContainer*
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %frame1, align 8
  call void @gtk_container_add(%struct._GtkContainer* %31, %struct._GtkWidget* %32)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %frame1, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %33)
  %call22 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %frame2, align 8
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %frame2, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_frame_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call23)
  %36 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %36, i32 1)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %frame1, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_container_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call25)
  %39 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkContainer*
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %frame2, align 8
  call void @gtk_container_add(%struct._GtkContainer* %39, %struct._GtkWidget* %40)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %frame2, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %41)
  %call27 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %hbox, align 8
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_container_get_type() #5
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call28)
  %44 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %44, i32 6)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %frame2, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_container_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call30)
  %47 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkContainer*
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %47, %struct._GtkWidget* %48)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %49)
  %call32 = call %struct._GtkWidget* @gtk_alignment_new(float 5.000000e-01, float 5.000000e-01, float 0.000000e+00, float 0.000000e+00)
  store %struct._GtkWidget* %call32, %struct._GtkWidget** %alignment, align 8
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_box_get_type() #5
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call33)
  %52 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkBox*
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %alignment, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %52, %struct._GtkWidget* %53, i32 0, i32 0, i32 0)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %alignment, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %54)
  %55 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %55, i32 0, i32 1
  %56 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call35 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %56)
  %call36 = call i64 @gimp_view_get_type() #5
  %call37 = call i64 @gimp_layer_get_type() #5
  %57 = load i32, i32* %view_size.addr, align 4
  %call38 = call %struct._GtkWidget* @gimp_view_new_by_types(%struct._GimpContext* %call35, i64 %call36, i64 %call37, i32 %57, i32 1, i32 0)
  %58 = load %struct.LayerSelect*, %struct.LayerSelect** %layer_select, align 8
  %view = getelementptr inbounds %struct.LayerSelect, %struct.LayerSelect* %58, i32 0, i32 1
  store %struct._GtkWidget* %call38, %struct._GtkWidget** %view, align 8
  %59 = load %struct.LayerSelect*, %struct.LayerSelect** %layer_select, align 8
  %view39 = getelementptr inbounds %struct.LayerSelect, %struct.LayerSelect* %59, i32 0, i32 1
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %view39, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_view_get_type() #5
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call40)
  %62 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpView*
  %63 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %64 = bitcast %struct._GimpLayer* %63 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_viewable_get_type() #5
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call42)
  %65 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpViewable*
  call void @gimp_view_set_viewable(%struct._GimpView* %62, %struct._GimpViewable* %65)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %alignment, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_container_get_type() #5
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call44)
  %68 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkContainer*
  %69 = load %struct.LayerSelect*, %struct.LayerSelect** %layer_select, align 8
  %view46 = getelementptr inbounds %struct.LayerSelect, %struct.LayerSelect* %69, i32 0, i32 1
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %view46, align 8
  call void @gtk_container_add(%struct._GtkContainer* %68, %struct._GtkWidget* %70)
  %71 = load %struct.LayerSelect*, %struct.LayerSelect** %layer_select, align 8
  %view47 = getelementptr inbounds %struct.LayerSelect, %struct.LayerSelect* %71, i32 0, i32 1
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %view47, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %72)
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %alignment, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %73)
  %74 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %75 = bitcast %struct._GimpLayer* %74 to i8*
  %call48 = call i8* @gimp_object_get_name(i8* %75)
  %call49 = call %struct._GtkWidget* @gtk_label_new(i8* %call48)
  %76 = load %struct.LayerSelect*, %struct.LayerSelect** %layer_select, align 8
  %label = getelementptr inbounds %struct.LayerSelect, %struct.LayerSelect* %76, i32 0, i32 2
  store %struct._GtkWidget* %call49, %struct._GtkWidget** %label, align 8
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %78 = bitcast %struct._GtkWidget* %77 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_box_get_type() #5
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call50)
  %79 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkBox*
  %80 = load %struct.LayerSelect*, %struct.LayerSelect** %layer_select, align 8
  %label52 = getelementptr inbounds %struct.LayerSelect, %struct.LayerSelect* %80, i32 0, i32 2
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %label52, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %79, %struct._GtkWidget* %81, i32 0, i32 0, i32 0)
  %82 = load %struct.LayerSelect*, %struct.LayerSelect** %layer_select, align 8
  %label53 = getelementptr inbounds %struct.LayerSelect, %struct.LayerSelect* %82, i32 0, i32 2
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %label53, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %83)
  %84 = load %struct.LayerSelect*, %struct.LayerSelect** %layer_select, align 8
  ret %struct.LayerSelect* %84
}

; Function Attrs: nounwind uwtable
define internal void @layer_select_advance(%struct.LayerSelect* %layer_select, i32 %move) #0 {
entry:
  %layer_select.addr = alloca %struct.LayerSelect*, align 8
  %move.addr = alloca i32, align 4
  %active_layer = alloca %struct._GimpLayer*, align 8
  %next_layer = alloca %struct._GimpLayer*, align 8
  %layers = alloca %struct._GList*, align 8
  %n_layers = alloca i32, align 4
  %index = alloca i32, align 4
  store %struct.LayerSelect* %layer_select, %struct.LayerSelect** %layer_select.addr, align 8
  store i32 %move, i32* %move.addr, align 4
  %0 = load i32, i32* %move.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.31

if.end:                                           ; preds = %entry
  %1 = load %struct.LayerSelect*, %struct.LayerSelect** %layer_select.addr, align 8
  %image = getelementptr inbounds %struct.LayerSelect, %struct.LayerSelect* %1, i32 0, i32 3
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call = call %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage* %2)
  %tobool = icmp ne %struct._GimpLayer* %call, null
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  br label %if.end.31

if.end.2:                                         ; preds = %if.end
  %3 = load %struct.LayerSelect*, %struct.LayerSelect** %layer_select.addr, align 8
  %image3 = getelementptr inbounds %struct.LayerSelect, %struct.LayerSelect* %3, i32 0, i32 3
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image3, align 8
  %call4 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %4)
  store %struct._GimpLayer* %call4, %struct._GimpLayer** %active_layer, align 8
  %5 = load %struct.LayerSelect*, %struct.LayerSelect** %layer_select.addr, align 8
  %image5 = getelementptr inbounds %struct.LayerSelect, %struct.LayerSelect* %5, i32 0, i32 3
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image5, align 8
  %call6 = call %struct._GList* @gimp_image_get_layer_list(%struct._GimpImage* %6)
  store %struct._GList* %call6, %struct._GList** %layers, align 8
  %7 = load %struct._GList*, %struct._GList** %layers, align 8
  %call7 = call i32 @g_list_length(%struct._GList* %7)
  store i32 %call7, i32* %n_layers, align 4
  %8 = load %struct._GList*, %struct._GList** %layers, align 8
  %9 = load %struct._GimpLayer*, %struct._GimpLayer** %active_layer, align 8
  %10 = bitcast %struct._GimpLayer* %9 to i8*
  %call8 = call i32 @g_list_index(%struct._GList* %8, i8* %10)
  store i32 %call8, i32* %index, align 4
  %11 = load i32, i32* %move.addr, align 4
  %12 = load i32, i32* %index, align 4
  %add = add nsw i32 %12, %11
  store i32 %add, i32* %index, align 4
  %13 = load i32, i32* %index, align 4
  %cmp9 = icmp slt i32 %13, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.2
  %14 = load i32, i32* %n_layers, align 4
  %sub = sub nsw i32 %14, 1
  store i32 %sub, i32* %index, align 4
  br label %if.end.14

if.else:                                          ; preds = %if.end.2
  %15 = load i32, i32* %index, align 4
  %16 = load i32, i32* %n_layers, align 4
  %cmp11 = icmp sge i32 %15, %16
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.else
  store i32 0, i32* %index, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.else
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.10
  %17 = load %struct._GList*, %struct._GList** %layers, align 8
  %18 = load i32, i32* %index, align 4
  %call15 = call i8* @g_list_nth_data(%struct._GList* %17, i32 %18)
  %19 = bitcast i8* %call15 to %struct._GimpLayer*
  store %struct._GimpLayer* %19, %struct._GimpLayer** %next_layer, align 8
  %20 = load %struct._GList*, %struct._GList** %layers, align 8
  call void @g_list_free(%struct._GList* %20)
  %21 = load %struct._GimpLayer*, %struct._GimpLayer** %next_layer, align 8
  %tobool16 = icmp ne %struct._GimpLayer* %21, null
  br i1 %tobool16, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %if.end.14
  %22 = load %struct._GimpLayer*, %struct._GimpLayer** %next_layer, align 8
  %23 = load %struct._GimpLayer*, %struct._GimpLayer** %active_layer, align 8
  %cmp17 = icmp ne %struct._GimpLayer* %22, %23
  br i1 %cmp17, label %if.then.18, label %if.end.31

if.then.18:                                       ; preds = %land.lhs.true
  %24 = load %struct.LayerSelect*, %struct.LayerSelect** %layer_select.addr, align 8
  %image19 = getelementptr inbounds %struct.LayerSelect, %struct.LayerSelect* %24, i32 0, i32 3
  %25 = load %struct._GimpImage*, %struct._GimpImage** %image19, align 8
  %26 = load %struct._GimpLayer*, %struct._GimpLayer** %next_layer, align 8
  %call20 = call %struct._GimpLayer* @gimp_image_set_active_layer(%struct._GimpImage* %25, %struct._GimpLayer* %26)
  store %struct._GimpLayer* %call20, %struct._GimpLayer** %active_layer, align 8
  %27 = load %struct._GimpLayer*, %struct._GimpLayer** %active_layer, align 8
  %tobool21 = icmp ne %struct._GimpLayer* %27, null
  br i1 %tobool21, label %if.then.22, label %if.end.30

if.then.22:                                       ; preds = %if.then.18
  %28 = load %struct.LayerSelect*, %struct.LayerSelect** %layer_select.addr, align 8
  %view = getelementptr inbounds %struct.LayerSelect, %struct.LayerSelect* %28, i32 0, i32 1
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_view_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call23)
  %31 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpView*
  %32 = load %struct._GimpLayer*, %struct._GimpLayer** %active_layer, align 8
  %33 = bitcast %struct._GimpLayer* %32 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_viewable_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call25)
  %34 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpViewable*
  call void @gimp_view_set_viewable(%struct._GimpView* %31, %struct._GimpViewable* %34)
  %35 = load %struct.LayerSelect*, %struct.LayerSelect** %layer_select.addr, align 8
  %label = getelementptr inbounds %struct.LayerSelect, %struct.LayerSelect* %35, i32 0, i32 2
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_label_get_type() #5
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call27)
  %38 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkLabel*
  %39 = load %struct._GimpLayer*, %struct._GimpLayer** %active_layer, align 8
  %40 = bitcast %struct._GimpLayer* %39 to i8*
  %call29 = call i8* @gimp_object_get_name(i8* %40)
  call void @gtk_label_set_text(%struct._GtkLabel* %38, i8* %call29)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.22, %if.then.18
  br label %if.end.31

if.end.31:                                        ; preds = %if.then, %if.then.1, %if.end.30, %land.lhs.true, %if.end.14
  ret void
}

declare void @gtk_window_set_screen(%struct._GtkWindow*, %struct._GdkScreen*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #1

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #1

declare void @gtk_widget_show(%struct._GtkWidget*) #3

declare i32 @gdk_keyboard_grab(%struct._GdkDrawable*, i32, i32) #3

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #3

declare noalias i8* @g_slice_alloc0(i64) #3

declare %struct._GtkWidget* @gtk_window_new(i32) #3

declare void @gtk_window_set_role(%struct._GtkWindow*, i8*) #3

declare void @gtk_window_set_title(%struct._GtkWindow*, i8*) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @gtk_window_set_position(%struct._GtkWindow*, i32) #3

declare void @gtk_widget_set_events(%struct._GtkWidget*, i32) #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @layer_select_events(%struct._GtkWidget* %widget, %union._GdkEvent* %event, %struct.LayerSelect* %layer_select) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %layer_select.addr = alloca %struct.LayerSelect*, align 8
  %kevent = alloca %struct._GdkEventKey*, align 8
  %bevent = alloca %struct._GdkEventButton*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  store %struct.LayerSelect* %layer_select, %struct.LayerSelect** %layer_select.addr, align 8
  %0 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type = bitcast %union._GdkEvent* %0 to i32*
  %1 = load i32, i32* %type, align 4
  switch i32 %1, label %sw.default [
    i32 4, label %sw.bb
    i32 8, label %sw.bb.1
    i32 9, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %3 = bitcast %union._GdkEvent* %2 to %struct._GdkEventButton*
  store %struct._GdkEventButton* %3, %struct._GdkEventButton** %bevent, align 8
  %4 = load %struct.LayerSelect*, %struct.LayerSelect** %layer_select.addr, align 8
  %5 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %time = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %5, i32 0, i32 3
  %6 = load i32, i32* %time, align 4
  call void @layer_select_destroy(%struct.LayerSelect* %4, i32 %6)
  br label %sw.epilog.17

sw.bb.1:                                          ; preds = %entry
  %7 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %8 = bitcast %union._GdkEvent* %7 to %struct._GdkEventKey*
  store %struct._GdkEventKey* %8, %struct._GdkEventKey** %kevent, align 8
  %9 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent, align 8
  %keyval = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %9, i32 0, i32 5
  %10 = load i32, i32* %keyval, align 4
  switch i32 %10, label %sw.epilog [
    i32 65289, label %sw.bb.2
    i32 65056, label %sw.bb.3
  ]

sw.bb.2:                                          ; preds = %sw.bb.1
  %11 = load %struct.LayerSelect*, %struct.LayerSelect** %layer_select.addr, align 8
  call void @layer_select_advance(%struct.LayerSelect* %11, i32 1)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %sw.bb.1
  %12 = load %struct.LayerSelect*, %struct.LayerSelect** %layer_select.addr, align 8
  call void @layer_select_advance(%struct.LayerSelect* %12, i32 -1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.1, %sw.bb.3, %sw.bb.2
  store i32 1, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  %13 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %14 = bitcast %union._GdkEvent* %13 to %struct._GdkEventKey*
  store %struct._GdkEventKey* %14, %struct._GdkEventKey** %kevent, align 8
  %15 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent, align 8
  %keyval5 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %15, i32 0, i32 5
  %16 = load i32, i32* %keyval5, align 4
  switch i32 %16, label %sw.epilog.13 [
    i32 65513, label %sw.bb.6
    i32 65514, label %sw.bb.6
    i32 65507, label %sw.bb.7
    i32 65508, label %sw.bb.7
    i32 65505, label %sw.bb.10
    i32 65506, label %sw.bb.10
  ]

sw.bb.6:                                          ; preds = %sw.bb.4, %sw.bb.4
  %17 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent, align 8
  %state = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %17, i32 0, i32 4
  %18 = load i32, i32* %state, align 4
  %and = and i32 %18, -9
  store i32 %and, i32* %state, align 4
  br label %sw.epilog.13

sw.bb.7:                                          ; preds = %sw.bb.4, %sw.bb.4
  %19 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent, align 8
  %state8 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %19, i32 0, i32 4
  %20 = load i32, i32* %state8, align 4
  %and9 = and i32 %20, -5
  store i32 %and9, i32* %state8, align 4
  br label %sw.epilog.13

sw.bb.10:                                         ; preds = %sw.bb.4, %sw.bb.4
  %21 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent, align 8
  %state11 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %21, i32 0, i32 4
  %22 = load i32, i32* %state11, align 4
  %and12 = and i32 %22, -2
  store i32 %and12, i32* %state11, align 4
  br label %sw.epilog.13

sw.epilog.13:                                     ; preds = %sw.bb.4, %sw.bb.10, %sw.bb.7, %sw.bb.6
  %23 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent, align 8
  %state14 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %23, i32 0, i32 4
  %24 = load i32, i32* %state14, align 4
  %and15 = and i32 %24, 4
  %tobool = icmp ne i32 %and15, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.epilog.13
  %25 = load %struct.LayerSelect*, %struct.LayerSelect** %layer_select.addr, align 8
  %26 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent, align 8
  %time16 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %26, i32 0, i32 3
  %27 = load i32, i32* %time16, align 4
  call void @layer_select_destroy(%struct.LayerSelect* %25, i32 %27)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.13
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  br label %sw.epilog.17

sw.epilog.17:                                     ; preds = %sw.default, %sw.bb
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog.17, %if.end, %sw.epilog
  %28 = load i32, i32* %retval
  ret i32 %28
}

declare %struct._GtkWidget* @gtk_frame_new(i8*) #3

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #3

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #3

declare %struct._GtkWidget* @gtk_alignment_new(float, float, float, float) #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #1

declare %struct._GtkWidget* @gimp_view_new_by_types(%struct._GimpContext*, i64, i64, i32, i32, i32) #3

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_view_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_get_type() #1

declare void @gimp_view_set_viewable(%struct._GimpView*, %struct._GimpViewable*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #3

declare i8* @gimp_object_get_name(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @layer_select_destroy(%struct.LayerSelect* %layer_select, i32 %time) #0 {
entry:
  %layer_select.addr = alloca %struct.LayerSelect*, align 8
  %time.addr = alloca i32, align 4
  store %struct.LayerSelect* %layer_select, %struct.LayerSelect** %layer_select.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  %0 = load %struct.LayerSelect*, %struct.LayerSelect** %layer_select.addr, align 8
  %window = getelementptr inbounds %struct.LayerSelect, %struct.LayerSelect* %0, i32 0, i32 0
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %call = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %1)
  %2 = load i32, i32* %time.addr, align 4
  call void @gdk_display_keyboard_ungrab(%struct._GdkDisplay* %call, i32 %2)
  %3 = load %struct.LayerSelect*, %struct.LayerSelect** %layer_select.addr, align 8
  %window1 = getelementptr inbounds %struct.LayerSelect, %struct.LayerSelect* %3, i32 0, i32 0
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %window1, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %4)
  %5 = load %struct.LayerSelect*, %struct.LayerSelect** %layer_select.addr, align 8
  %orig_layer = getelementptr inbounds %struct.LayerSelect, %struct.LayerSelect* %5, i32 0, i32 4
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %orig_layer, align 8
  %7 = load %struct.LayerSelect*, %struct.LayerSelect** %layer_select.addr, align 8
  %image = getelementptr inbounds %struct.LayerSelect, %struct.LayerSelect* %7, i32 0, i32 3
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call2 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %8)
  %cmp = icmp ne %struct._GimpLayer* %6, %call2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.LayerSelect*, %struct.LayerSelect** %layer_select.addr, align 8
  %image3 = getelementptr inbounds %struct.LayerSelect, %struct.LayerSelect* %9, i32 0, i32 3
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image3, align 8
  call void @gimp_image_flush(%struct._GimpImage* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %11 = load %struct.LayerSelect*, %struct.LayerSelect** %layer_select.addr, align 8
  %12 = bitcast %struct.LayerSelect* %11 to i8*
  call void @g_slice_free1(i64 40, i8* %12)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare void @gdk_display_keyboard_ungrab(%struct._GdkDisplay*, i32) #3

declare %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget*) #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #3

declare void @gimp_image_flush(%struct._GimpImage*) #3

declare void @g_slice_free1(i64, i8*) #3

declare %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage*) #3

declare %struct._GList* @gimp_image_get_layer_list(%struct._GimpImage*) #3

declare i32 @g_list_length(%struct._GList*) #3

declare i32 @g_list_index(%struct._GList*, i8*) #3

declare i8* @g_list_nth_data(%struct._GList*, i32) #3

declare void @g_list_free(%struct._GList*) #3

declare %struct._GimpLayer* @gimp_image_set_active_layer(%struct._GimpImage*, %struct._GimpLayer*) #3

declare void @gtk_label_set_text(%struct._GtkLabel*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #1

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
