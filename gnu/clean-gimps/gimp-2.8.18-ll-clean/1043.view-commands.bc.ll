; ModuleID = './app/actions/view-commands.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkActionPrivate = type opaque
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
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
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
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
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayOptions = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpRGB, i32 }
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
%struct._GimpUIManager = type { %struct._GtkUIManager, i8*, %struct._Gimp*, %struct._GList* }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
%struct._GimpZoomModel = type { %struct._GObject, i8* }
%struct._Selection = type opaque
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
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._GtkRadioAction = type { %struct._GtkToggleAction, %struct._GtkRadioActionPrivate* }
%struct._GtkToggleAction = type { %struct._GtkAction, %struct._GtkToggleActionPrivate* }
%struct._GtkToggleActionPrivate = type opaque
%struct._GtkRadioActionPrivate = type opaque
%struct._GimpImageWindow = type { %struct._GimpWindow }
%struct._GimpWindow = type { %struct._GtkWindow, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpActionGroup = type { %struct._GtkActionGroup, %struct._Gimp*, i8*, i8*, i8*, void (%struct._GimpActionGroup*, i8*)* }
%struct._GtkActionGroup = type { %struct._GObject, %struct._GtkActionGroupPrivate* }
%struct._GtkActionGroupPrivate = type opaque
%struct._GimpWindowStrategy = type opaque
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpColorDialog = type { %struct._GimpViewableDialog, i32, %struct._GtkWidget*, [12 x %struct._GtkWidget*] }
%struct._GimpViewableDialog = type { %struct._GimpDialog, %struct._GimpContext*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpLayerMask = type opaque
%struct._GeglNode = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._BoundSeg = type opaque
%struct._GimpProjection = type { %struct._GimpObject, %struct._GimpProjectable*, %struct._TilePyramid*, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglProcessor*, %struct._GSList*, %struct._GimpProjectionIdleRender, i32, i32, i32 }
%struct._GimpProjectable = type opaque
%struct._TilePyramid = type opaque
%struct._GeglProcessor = type opaque
%struct._GimpProjectionIdleRender = type { i32, i32, i32, i32, i32, i32, i32, %struct._GSList* }
%struct._GimpGroupLayer = type { %struct._GimpLayer }

@.str = private unnamed_addr constant [5 x i8] c"view\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"view-dot-for-dot\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"gimp-navigation-view\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"padding-color-dialog\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Set Canvas Padding Color\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"gtk-select-color\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Set Custom Canvas Padding Color\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"update\00", align 1

; Function Attrs: nounwind uwtable
define void @view_new_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpDisplay* @action_data_get_display(i8* %0)
  store %struct._GimpDisplay* %call, %struct._GimpDisplay** %display, align 8
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call1 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %2)
  store %struct._GimpDisplayShell* %call1, %struct._GimpDisplayShell** %shell, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %3, i32 0, i32 1
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call2 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %5)
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %unit = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %6, i32 0, i32 10
  %7 = load i32, i32* %unit, align 4
  %8 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %zoom = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %8, i32 0, i32 22
  %9 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %zoom, align 8
  %call3 = call double @gimp_zoom_model_get_factor(%struct._GimpZoomModel* %9)
  %call4 = call %struct._GimpObject* @gimp_create_display(%struct._Gimp* %4, %struct._GimpImage* %call2, i32 %7, double %call3)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare %struct._GimpDisplay* @action_data_get_display(i8*) #1

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

declare %struct._GimpObject* @gimp_create_display(%struct._Gimp*, %struct._GimpImage*, i32, double) #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare double @gimp_zoom_model_get_factor(%struct._GimpZoomModel*) #1

; Function Attrs: nounwind uwtable
define void @view_close_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpDisplay* @action_data_get_display(i8* %0)
  store %struct._GimpDisplay* %call, %struct._GimpDisplay** %display, align 8
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.5

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call1 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %2)
  store %struct._GimpDisplayShell* %call1, %struct._GimpDisplayShell** %shell, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call2 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %3)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool3 = icmp ne %struct._GimpImage* %4, null
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %5 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_close(%struct._GimpDisplayShell* %5, i32 0)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then, %if.then.4, %if.end
  ret void
}

declare void @gimp_display_shell_close(%struct._GimpDisplayShell*, i32) #1

; Function Attrs: nounwind uwtable
define void @view_zoom_fit_in_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpDisplay* @action_data_get_display(i8* %0)
  store %struct._GimpDisplay* %call, %struct._GimpDisplay** %display, align 8
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call1 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %2)
  call void @gimp_display_shell_scale_fit_in(%struct._GimpDisplayShell* %call1)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @gimp_display_shell_scale_fit_in(%struct._GimpDisplayShell*) #1

; Function Attrs: nounwind uwtable
define void @view_zoom_fill_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpDisplay* @action_data_get_display(i8* %0)
  store %struct._GimpDisplay* %call, %struct._GimpDisplay** %display, align 8
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call1 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %2)
  call void @gimp_display_shell_scale_fill(%struct._GimpDisplayShell* %call1)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @gimp_display_shell_scale_fill(%struct._GimpDisplayShell*) #1

; Function Attrs: nounwind uwtable
define void @view_zoom_revert_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpDisplay* @action_data_get_display(i8* %0)
  store %struct._GimpDisplay* %call, %struct._GimpDisplay** %display, align 8
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call1 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %2)
  %call2 = call i32 @gimp_display_shell_scale_revert(%struct._GimpDisplayShell* %call1)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i32 @gimp_display_shell_scale_revert(%struct._GimpDisplayShell*) #1

; Function Attrs: nounwind uwtable
define void @view_zoom_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %scale = alloca double, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpDisplayShell* @action_data_get_shell(i8* %0)
  store %struct._GimpDisplayShell* %call, %struct._GimpDisplayShell** %shell, align 8
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %tobool = icmp ne %struct._GimpDisplayShell* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %value.addr, align 4
  switch i32 %2, label %sw.default [
    i32 -2, label %sw.bb
    i32 -3, label %sw.bb.1
    i32 -6, label %sw.bb.2
    i32 -7, label %sw.bb.3
    i32 -8, label %sw.bb.4
    i32 -9, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %if.end
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_scale(%struct._GimpDisplayShell* %3, i32 5, double 0.000000e+00, i32 0)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %if.end
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_scale(%struct._GimpDisplayShell* %4, i32 4, double 0.000000e+00, i32 0)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %if.end
  %5 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_scale(%struct._GimpDisplayShell* %5, i32 1, double 0.000000e+00, i32 0)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %if.end
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_scale(%struct._GimpDisplayShell* %6, i32 0, double 0.000000e+00, i32 0)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.end
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_scale(%struct._GimpDisplayShell* %7, i32 3, double 0.000000e+00, i32 0)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.end
  %8 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_scale(%struct._GimpDisplayShell* %8, i32 2, double 0.000000e+00, i32 0)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %9 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %zoom = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %9, i32 0, i32 22
  %10 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %zoom, align 8
  %call6 = call double @gimp_zoom_model_get_factor(%struct._GimpZoomModel* %10)
  store double %call6, double* %scale, align 8
  %11 = load i32, i32* %value.addr, align 4
  %12 = load double, double* %scale, align 8
  %call7 = call double @action_select_value(i32 %11, double %12, double 0.000000e+00, double 5.120000e+02, double 1.000000e+00, double 1.250000e-01, double 1.000000e+00, double 1.600000e+01, double 0.000000e+00, i32 0)
  store double %call7, double* %scale, align 8
  %13 = load double, double* %scale, align 8
  %div = fdiv double %13, 5.120000e+02
  %call8 = call double @pow(double 6.553600e+04, double %div) #5
  %div9 = fdiv double %call8, 2.560000e+02
  store double %div9, double* %scale, align 8
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %15 = load double, double* %scale, align 8
  call void @gimp_display_shell_scale(%struct._GimpDisplayShell* %14, i32 6, double %15, i32 0)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.default, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  ret void
}

declare %struct._GimpDisplayShell* @action_data_get_shell(i8*) #1

declare void @gimp_display_shell_scale(%struct._GimpDisplayShell*, i32, double, i32) #1

declare double @action_select_value(i32, double, double, double, double, double, double, double, double, i32) #1

; Function Attrs: nounwind
declare double @pow(double, double) #2

; Function Attrs: nounwind uwtable
define void @view_zoom_explicit_cmd_callback(%struct._GtkAction* %action, %struct._GtkAction* %current, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %current.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %value = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store %struct._GtkAction* %current, %struct._GtkAction** %current.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpDisplayShell* @action_data_get_shell(i8* %0)
  store %struct._GimpDisplayShell* %call, %struct._GimpDisplayShell** %shell, align 8
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %tobool = icmp ne %struct._GimpDisplayShell* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.12

if.end:                                           ; preds = %entry
  %2 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %3 = bitcast %struct._GtkAction* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_radio_action_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkRadioAction*
  %call3 = call i32 @gtk_radio_action_get_current_value(%struct._GtkRadioAction* %4)
  store i32 %call3, i32* %value, align 4
  %5 = load i32, i32* %value, align 4
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then.4, label %if.end.12

if.then.4:                                        ; preds = %if.end
  %6 = load i32, i32* %value, align 4
  %conv = sitofp i32 %6 to double
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %zoom = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %7, i32 0, i32 22
  %8 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %zoom, align 8
  %call5 = call double @gimp_zoom_model_get_factor(%struct._GimpZoomModel* %8)
  %sub = fsub double %conv, %call5
  %call6 = call double @fabs(double %sub) #6
  %cmp7 = fcmp ogt double %call6, 1.000000e-04
  br i1 %cmp7, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.then.4
  %9 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %10 = load i32, i32* %value, align 4
  %conv10 = sitofp i32 %10 to double
  %div = fdiv double %conv10, 1.000000e+04
  call void @gimp_display_shell_scale(%struct._GimpDisplayShell* %9, i32 6, double %div, i32 3)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.then.4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then, %if.end.11, %if.end
  ret void
}

declare i32 @gtk_radio_action_get_current_value(%struct._GtkRadioAction*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_action_get_type() #3

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind uwtable
define void @view_zoom_other_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpDisplayShell* @action_data_get_shell(i8* %0)
  store %struct._GimpDisplayShell* %call, %struct._GimpDisplayShell** %shell, align 8
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %tobool = icmp ne %struct._GimpDisplayShell* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.7

if.end:                                           ; preds = %entry
  %2 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %3 = bitcast %struct._GtkAction* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_toggle_action_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkToggleAction*
  %call3 = call i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction* %4)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %other_scale = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %5, i32 0, i32 27
  %6 = load double, double* %other_scale, align 8
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %zoom = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %7, i32 0, i32 22
  %8 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %zoom, align 8
  %call5 = call double @gimp_zoom_model_get_factor(%struct._GimpZoomModel* %8)
  %cmp = fcmp une double %6, %call5
  br i1 %cmp, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %land.lhs.true
  %9 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_scale_dialog(%struct._GimpDisplayShell* %9)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then, %if.then.6, %land.lhs.true, %if.end
  ret void
}

declare i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_action_get_type() #3

declare void @gimp_display_shell_scale_dialog(%struct._GimpDisplayShell*) #1

; Function Attrs: nounwind uwtable
define void @view_dot_for_dot_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %active = alloca i32, align 4
  %window = alloca %struct._GimpImageWindow*, align 8
  %group = alloca %struct._GimpActionGroup*, align 8
  %group17 = alloca %struct._GimpActionGroup*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpDisplay* @action_data_get_display(i8* %0)
  store %struct._GimpDisplay* %call, %struct._GimpDisplay** %display, align 8
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.21

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call1 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %2)
  store %struct._GimpDisplayShell* %call1, %struct._GimpDisplayShell** %shell, align 8
  %3 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %4 = bitcast %struct._GtkAction* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_toggle_action_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkToggleAction*
  %call4 = call i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction* %5)
  store i32 %call4, i32* %active, align 4
  %6 = load i32, i32* %active, align 4
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %dot_for_dot = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %7, i32 0, i32 17
  %8 = load i32, i32* %dot_for_dot, align 4
  %cmp = icmp ne i32 %6, %8
  br i1 %cmp, label %if.then.5, label %if.end.21

if.then.5:                                        ; preds = %if.end
  %9 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call6 = call %struct._GimpImageWindow* @gimp_display_shell_get_window(%struct._GimpDisplayShell* %9)
  store %struct._GimpImageWindow* %call6, %struct._GimpImageWindow** %window, align 8
  %10 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %11 = load i32, i32* %active, align 4
  call void @gimp_display_shell_scale_set_dot_for_dot(%struct._GimpDisplayShell* %10, i32 %11)
  %12 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %tobool7 = icmp ne %struct._GimpImageWindow* %12, null
  br i1 %tobool7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.then.5
  %13 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %call9 = call %struct._GimpUIManager* @gimp_image_window_get_ui_manager(%struct._GimpImageWindow* %13)
  %call10 = call %struct._GimpActionGroup* @gimp_ui_manager_get_action_group(%struct._GimpUIManager* %call9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0))
  store %struct._GimpActionGroup* %call10, %struct._GimpActionGroup** %group, align 8
  %14 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %dot_for_dot11 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %15, i32 0, i32 17
  %16 = load i32, i32* %dot_for_dot11, align 4
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 %16)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.then.5
  %17 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %18 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %18, i32 0, i32 1
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call13 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %19)
  %call14 = call i8* @gimp_context_get_display(%struct._GimpContext* %call13)
  %20 = bitcast i8* %call14 to %struct._GimpDisplay*
  %cmp15 = icmp eq %struct._GimpDisplay* %17, %20
  br i1 %cmp15, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %if.end.12
  %21 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %popup_manager = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %21, i32 0, i32 2
  %22 = load %struct._GimpUIManager*, %struct._GimpUIManager** %popup_manager, align 8
  %call18 = call %struct._GimpActionGroup* @gimp_ui_manager_get_action_group(%struct._GimpUIManager* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0))
  store %struct._GimpActionGroup* %call18, %struct._GimpActionGroup** %group17, align 8
  %23 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group17, align 8
  %24 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %dot_for_dot19 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %24, i32 0, i32 17
  %25 = load i32, i32* %dot_for_dot19, align 4
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 %25)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %if.end.12
  br label %if.end.21

if.end.21:                                        ; preds = %if.then, %if.end.20, %if.end
  ret void
}

declare %struct._GimpImageWindow* @gimp_display_shell_get_window(%struct._GimpDisplayShell*) #1

declare void @gimp_display_shell_scale_set_dot_for_dot(%struct._GimpDisplayShell*, i32) #1

declare %struct._GimpActionGroup* @gimp_ui_manager_get_action_group(%struct._GimpUIManager*, i8*) #1

declare %struct._GimpUIManager* @gimp_image_window_get_ui_manager(%struct._GimpImageWindow*) #1

declare void @gimp_action_group_set_action_active(%struct._GimpActionGroup*, i8*, i32) #1

declare i8* @gimp_context_get_display(%struct._GimpContext*) #1

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #1

; Function Attrs: nounwind uwtable
define void @view_scroll_horizontal_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %offset = alloca double, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpDisplayShell* @action_data_get_shell(i8* %0)
  store %struct._GimpDisplayShell* %call, %struct._GimpDisplayShell** %shell, align 8
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %tobool = icmp ne %struct._GimpDisplayShell* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %value.addr, align 4
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %hsbdata = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %3, i32 0, i32 34
  %4 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hsbdata, align 8
  %call1 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %4)
  %5 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %hsbdata2 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %5, i32 0, i32 34
  %6 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hsbdata2, align 8
  %call3 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %6)
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %hsbdata4 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %7, i32 0, i32 34
  %8 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hsbdata4, align 8
  %call5 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %8)
  %9 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %hsbdata6 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %9, i32 0, i32 34
  %10 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hsbdata6, align 8
  %call7 = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %10)
  %sub = fsub double %call5, %call7
  %11 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %hsbdata8 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %11, i32 0, i32 34
  %12 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hsbdata8, align 8
  %call9 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %12)
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %hsbdata10 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 34
  %14 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hsbdata10, align 8
  %call11 = call double @gtk_adjustment_get_step_increment(%struct._GtkAdjustment* %14)
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %hsbdata12 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %15, i32 0, i32 34
  %16 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hsbdata12, align 8
  %call13 = call double @gtk_adjustment_get_page_increment(%struct._GtkAdjustment* %16)
  %call14 = call double @action_select_value(i32 %2, double %call1, double %call3, double %sub, double %call9, double 1.000000e+00, double %call11, double %call13, double 0.000000e+00, i32 0)
  store double %call14, double* %offset, align 8
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %hsbdata15 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %17, i32 0, i32 34
  %18 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hsbdata15, align 8
  %19 = load double, double* %offset, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %18, double %19)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare double @gtk_adjustment_get_lower(%struct._GtkAdjustment*) #1

declare double @gtk_adjustment_get_upper(%struct._GtkAdjustment*) #1

declare double @gtk_adjustment_get_page_size(%struct._GtkAdjustment*) #1

declare double @gtk_adjustment_get_step_increment(%struct._GtkAdjustment*) #1

declare double @gtk_adjustment_get_page_increment(%struct._GtkAdjustment*) #1

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

; Function Attrs: nounwind uwtable
define void @view_scroll_vertical_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %offset = alloca double, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpDisplayShell* @action_data_get_shell(i8* %0)
  store %struct._GimpDisplayShell* %call, %struct._GimpDisplayShell** %shell, align 8
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %tobool = icmp ne %struct._GimpDisplayShell* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %value.addr, align 4
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %vsbdata = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %3, i32 0, i32 35
  %4 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vsbdata, align 8
  %call1 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %4)
  %5 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %vsbdata2 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %5, i32 0, i32 35
  %6 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vsbdata2, align 8
  %call3 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %6)
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %vsbdata4 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %7, i32 0, i32 35
  %8 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vsbdata4, align 8
  %call5 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %8)
  %9 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %vsbdata6 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %9, i32 0, i32 35
  %10 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vsbdata6, align 8
  %call7 = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %10)
  %sub = fsub double %call5, %call7
  %11 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %vsbdata8 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %11, i32 0, i32 35
  %12 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vsbdata8, align 8
  %call9 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %12)
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %vsbdata10 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 35
  %14 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vsbdata10, align 8
  %call11 = call double @gtk_adjustment_get_step_increment(%struct._GtkAdjustment* %14)
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %vsbdata12 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %15, i32 0, i32 35
  %16 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vsbdata12, align 8
  %call13 = call double @gtk_adjustment_get_page_increment(%struct._GtkAdjustment* %16)
  %call14 = call double @action_select_value(i32 %2, double %call1, double %call3, double %sub, double %call9, double 1.000000e+00, double %call11, double %call13, double 0.000000e+00, i32 0)
  store double %call14, double* %offset, align 8
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %vsbdata15 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %17, i32 0, i32 35
  %18 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vsbdata15, align 8
  %19 = load double, double* %offset, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %18, double %19)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @view_navigation_window_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._Gimp* @action_data_get_gimp(i8* %0)
  store %struct._Gimp* %call, %struct._Gimp** %gimp, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tobool = icmp ne %struct._Gimp* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8
  %call1 = call %struct._GimpDisplayShell* @action_data_get_shell(i8* %2)
  store %struct._GimpDisplayShell* %call1, %struct._GimpDisplayShell** %shell, align 8
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %tobool2 = icmp ne %struct._GimpDisplayShell* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call5 = call %struct._GimpObject* @gimp_get_window_strategy(%struct._Gimp* %4)
  %5 = bitcast %struct._GimpObject* %call5 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_window_strategy_interface_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call6)
  %6 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpWindowStrategy*
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call8 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %8 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %9 = bitcast %struct._GimpDisplayShell* %8 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_widget_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call9)
  %10 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkWidget*
  %call11 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %10)
  %call12 = call %struct._GtkWidget* @gimp_window_strategy_show_dockable_dialog(%struct._GimpWindowStrategy* %6, %struct._Gimp* %7, %struct._GimpDialogFactory* %call8, %struct._GdkScreen* %call11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  ret void
}

declare %struct._Gimp* @action_data_get_gimp(i8*) #1

declare %struct._GtkWidget* @gimp_window_strategy_show_dockable_dialog(%struct._GimpWindowStrategy*, %struct._Gimp*, %struct._GimpDialogFactory*, %struct._GdkScreen*, i8*) #1

declare %struct._GimpObject* @gimp_get_window_strategy(%struct._Gimp*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_window_strategy_interface_get_type() #3

declare %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton() #1

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #3

; Function Attrs: nounwind uwtable
define void @view_display_filters_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpDisplayShell* @action_data_get_shell(i8* %0)
  store %struct._GimpDisplayShell* %call, %struct._GimpDisplayShell** %shell, align 8
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %tobool = icmp ne %struct._GimpDisplayShell* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %filters_dialog = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %2, i32 0, i32 79
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %filters_dialog, align 8
  %tobool1 = icmp ne %struct._GtkWidget* %3, null
  br i1 %tobool1, label %if.end.8, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call3 = call %struct._GtkWidget* @gimp_display_shell_filter_dialog_new(%struct._GimpDisplayShell* %4)
  %5 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %filters_dialog4 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %5, i32 0, i32 79
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %filters_dialog4, align 8
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %filters_dialog5 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %6, i32 0, i32 79
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %filters_dialog5, align 8
  %8 = bitcast %struct._GtkWidget* %7 to i8*
  %9 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %filters_dialog6 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %9, i32 0, i32 79
  %10 = bitcast %struct._GtkWidget** %filters_dialog6 to i8*
  %call7 = call i64 @g_signal_connect_data(i8* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget**)* @gtk_widget_destroyed to void ()*), i8* %10, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.2, %if.end
  %11 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %filters_dialog9 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %11, i32 0, i32 79
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %filters_dialog9, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_window_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call10)
  %14 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %14)
  br label %return

return:                                           ; preds = %if.end.8, %if.then
  ret void
}

declare %struct._GtkWidget* @gimp_display_shell_filter_dialog_new(%struct._GimpDisplayShell*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gtk_widget_destroyed(%struct._GtkWidget*, %struct._GtkWidget**) #1

declare void @gtk_window_present(%struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #3

; Function Attrs: nounwind uwtable
define void @view_toggle_selection_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %active = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %1 = bitcast %struct._GtkAction* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_action_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleAction*
  %call2 = call i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction* %2)
  store i32 %call2, i32* %active, align 4
  %3 = load i8*, i8** %data.addr, align 8
  %call3 = call %struct._GimpDisplayShell* @action_data_get_shell(i8* %3)
  store %struct._GimpDisplayShell* %call3, %struct._GimpDisplayShell** %shell, align 8
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %tobool = icmp ne %struct._GimpDisplayShell* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %active, align 4
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call4 = call i32 @gimp_display_shell_get_show_selection(%struct._GimpDisplayShell* %6)
  %cmp = icmp eq i32 %5, %call4
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %return

if.end.6:                                         ; preds = %if.end
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %8 = load i32, i32* %active, align 4
  call void @gimp_display_shell_set_show_selection(%struct._GimpDisplayShell* %7, i32 %8)
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  ret void
}

declare i32 @gimp_display_shell_get_show_selection(%struct._GimpDisplayShell*) #1

declare void @gimp_display_shell_set_show_selection(%struct._GimpDisplayShell*, i32) #1

; Function Attrs: nounwind uwtable
define void @view_toggle_layer_boundary_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %active = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %1 = bitcast %struct._GtkAction* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_action_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleAction*
  %call2 = call i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction* %2)
  store i32 %call2, i32* %active, align 4
  %3 = load i8*, i8** %data.addr, align 8
  %call3 = call %struct._GimpDisplayShell* @action_data_get_shell(i8* %3)
  store %struct._GimpDisplayShell* %call3, %struct._GimpDisplayShell** %shell, align 8
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %tobool = icmp ne %struct._GimpDisplayShell* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %active, align 4
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call4 = call i32 @gimp_display_shell_get_show_layer(%struct._GimpDisplayShell* %6)
  %cmp = icmp eq i32 %5, %call4
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %return

if.end.6:                                         ; preds = %if.end
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %8 = load i32, i32* %active, align 4
  call void @gimp_display_shell_set_show_layer(%struct._GimpDisplayShell* %7, i32 %8)
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  ret void
}

declare i32 @gimp_display_shell_get_show_layer(%struct._GimpDisplayShell*) #1

declare void @gimp_display_shell_set_show_layer(%struct._GimpDisplayShell*, i32) #1

; Function Attrs: nounwind uwtable
define void @view_toggle_menubar_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %active = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %1 = bitcast %struct._GtkAction* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_action_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleAction*
  %call2 = call i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction* %2)
  store i32 %call2, i32* %active, align 4
  %3 = load i8*, i8** %data.addr, align 8
  %call3 = call %struct._GimpDisplayShell* @action_data_get_shell(i8* %3)
  store %struct._GimpDisplayShell* %call3, %struct._GimpDisplayShell** %shell, align 8
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %tobool = icmp ne %struct._GimpDisplayShell* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %active, align 4
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call4 = call i32 @gimp_display_shell_get_show_menubar(%struct._GimpDisplayShell* %6)
  %cmp = icmp eq i32 %5, %call4
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %return

if.end.6:                                         ; preds = %if.end
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %8 = load i32, i32* %active, align 4
  call void @gimp_display_shell_set_show_menubar(%struct._GimpDisplayShell* %7, i32 %8)
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  ret void
}

declare i32 @gimp_display_shell_get_show_menubar(%struct._GimpDisplayShell*) #1

declare void @gimp_display_shell_set_show_menubar(%struct._GimpDisplayShell*, i32) #1

; Function Attrs: nounwind uwtable
define void @view_toggle_rulers_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %active = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %1 = bitcast %struct._GtkAction* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_action_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleAction*
  %call2 = call i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction* %2)
  store i32 %call2, i32* %active, align 4
  %3 = load i8*, i8** %data.addr, align 8
  %call3 = call %struct._GimpDisplayShell* @action_data_get_shell(i8* %3)
  store %struct._GimpDisplayShell* %call3, %struct._GimpDisplayShell** %shell, align 8
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %tobool = icmp ne %struct._GimpDisplayShell* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %active, align 4
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call4 = call i32 @gimp_display_shell_get_show_rulers(%struct._GimpDisplayShell* %6)
  %cmp = icmp eq i32 %5, %call4
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %return

if.end.6:                                         ; preds = %if.end
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %8 = load i32, i32* %active, align 4
  call void @gimp_display_shell_set_show_rulers(%struct._GimpDisplayShell* %7, i32 %8)
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  ret void
}

declare i32 @gimp_display_shell_get_show_rulers(%struct._GimpDisplayShell*) #1

declare void @gimp_display_shell_set_show_rulers(%struct._GimpDisplayShell*, i32) #1

; Function Attrs: nounwind uwtable
define void @view_toggle_scrollbars_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %active = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %1 = bitcast %struct._GtkAction* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_action_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleAction*
  %call2 = call i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction* %2)
  store i32 %call2, i32* %active, align 4
  %3 = load i8*, i8** %data.addr, align 8
  %call3 = call %struct._GimpDisplayShell* @action_data_get_shell(i8* %3)
  store %struct._GimpDisplayShell* %call3, %struct._GimpDisplayShell** %shell, align 8
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %tobool = icmp ne %struct._GimpDisplayShell* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %active, align 4
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call4 = call i32 @gimp_display_shell_get_show_scrollbars(%struct._GimpDisplayShell* %6)
  %cmp = icmp eq i32 %5, %call4
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %return

if.end.6:                                         ; preds = %if.end
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %8 = load i32, i32* %active, align 4
  call void @gimp_display_shell_set_show_scrollbars(%struct._GimpDisplayShell* %7, i32 %8)
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  ret void
}

declare i32 @gimp_display_shell_get_show_scrollbars(%struct._GimpDisplayShell*) #1

declare void @gimp_display_shell_set_show_scrollbars(%struct._GimpDisplayShell*, i32) #1

; Function Attrs: nounwind uwtable
define void @view_toggle_statusbar_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %active = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %1 = bitcast %struct._GtkAction* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_action_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleAction*
  %call2 = call i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction* %2)
  store i32 %call2, i32* %active, align 4
  %3 = load i8*, i8** %data.addr, align 8
  %call3 = call %struct._GimpDisplayShell* @action_data_get_shell(i8* %3)
  store %struct._GimpDisplayShell* %call3, %struct._GimpDisplayShell** %shell, align 8
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %tobool = icmp ne %struct._GimpDisplayShell* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %active, align 4
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call4 = call i32 @gimp_display_shell_get_show_statusbar(%struct._GimpDisplayShell* %6)
  %cmp = icmp eq i32 %5, %call4
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %return

if.end.6:                                         ; preds = %if.end
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %8 = load i32, i32* %active, align 4
  call void @gimp_display_shell_set_show_statusbar(%struct._GimpDisplayShell* %7, i32 %8)
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  ret void
}

declare i32 @gimp_display_shell_get_show_statusbar(%struct._GimpDisplayShell*) #1

declare void @gimp_display_shell_set_show_statusbar(%struct._GimpDisplayShell*, i32) #1

; Function Attrs: nounwind uwtable
define void @view_toggle_guides_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %active = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %1 = bitcast %struct._GtkAction* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_action_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleAction*
  %call2 = call i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction* %2)
  store i32 %call2, i32* %active, align 4
  %3 = load i8*, i8** %data.addr, align 8
  %call3 = call %struct._GimpDisplayShell* @action_data_get_shell(i8* %3)
  store %struct._GimpDisplayShell* %call3, %struct._GimpDisplayShell** %shell, align 8
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %tobool = icmp ne %struct._GimpDisplayShell* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %active, align 4
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call4 = call i32 @gimp_display_shell_get_show_guides(%struct._GimpDisplayShell* %6)
  %cmp = icmp eq i32 %5, %call4
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %return

if.end.6:                                         ; preds = %if.end
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %8 = load i32, i32* %active, align 4
  call void @gimp_display_shell_set_show_guides(%struct._GimpDisplayShell* %7, i32 %8)
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  ret void
}

declare i32 @gimp_display_shell_get_show_guides(%struct._GimpDisplayShell*) #1

declare void @gimp_display_shell_set_show_guides(%struct._GimpDisplayShell*, i32) #1

; Function Attrs: nounwind uwtable
define void @view_toggle_grid_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %active = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %1 = bitcast %struct._GtkAction* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_action_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleAction*
  %call2 = call i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction* %2)
  store i32 %call2, i32* %active, align 4
  %3 = load i8*, i8** %data.addr, align 8
  %call3 = call %struct._GimpDisplayShell* @action_data_get_shell(i8* %3)
  store %struct._GimpDisplayShell* %call3, %struct._GimpDisplayShell** %shell, align 8
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %tobool = icmp ne %struct._GimpDisplayShell* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %active, align 4
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call4 = call i32 @gimp_display_shell_get_show_grid(%struct._GimpDisplayShell* %6)
  %cmp = icmp eq i32 %5, %call4
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %return

if.end.6:                                         ; preds = %if.end
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %8 = load i32, i32* %active, align 4
  call void @gimp_display_shell_set_show_grid(%struct._GimpDisplayShell* %7, i32 %8)
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  ret void
}

declare i32 @gimp_display_shell_get_show_grid(%struct._GimpDisplayShell*) #1

declare void @gimp_display_shell_set_show_grid(%struct._GimpDisplayShell*, i32) #1

; Function Attrs: nounwind uwtable
define void @view_toggle_sample_points_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %active = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %1 = bitcast %struct._GtkAction* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_action_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleAction*
  %call2 = call i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction* %2)
  store i32 %call2, i32* %active, align 4
  %3 = load i8*, i8** %data.addr, align 8
  %call3 = call %struct._GimpDisplayShell* @action_data_get_shell(i8* %3)
  store %struct._GimpDisplayShell* %call3, %struct._GimpDisplayShell** %shell, align 8
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %tobool = icmp ne %struct._GimpDisplayShell* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %active, align 4
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call4 = call i32 @gimp_display_shell_get_show_sample_points(%struct._GimpDisplayShell* %6)
  %cmp = icmp eq i32 %5, %call4
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %return

if.end.6:                                         ; preds = %if.end
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %8 = load i32, i32* %active, align 4
  call void @gimp_display_shell_set_show_sample_points(%struct._GimpDisplayShell* %7, i32 %8)
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  ret void
}

declare i32 @gimp_display_shell_get_show_sample_points(%struct._GimpDisplayShell*) #1

declare void @gimp_display_shell_set_show_sample_points(%struct._GimpDisplayShell*, i32) #1

; Function Attrs: nounwind uwtable
define void @view_snap_to_guides_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %active = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %1 = bitcast %struct._GtkAction* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_action_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleAction*
  %call2 = call i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction* %2)
  store i32 %call2, i32* %active, align 4
  %3 = load i8*, i8** %data.addr, align 8
  %call3 = call %struct._GimpDisplayShell* @action_data_get_shell(i8* %3)
  store %struct._GimpDisplayShell* %call3, %struct._GimpDisplayShell** %shell, align 8
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %tobool = icmp ne %struct._GimpDisplayShell* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %active, align 4
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call4 = call i32 @gimp_display_shell_get_snap_to_guides(%struct._GimpDisplayShell* %6)
  %cmp = icmp eq i32 %5, %call4
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %return

if.end.6:                                         ; preds = %if.end
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %8 = load i32, i32* %active, align 4
  call void @gimp_display_shell_set_snap_to_guides(%struct._GimpDisplayShell* %7, i32 %8)
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  ret void
}

declare i32 @gimp_display_shell_get_snap_to_guides(%struct._GimpDisplayShell*) #1

declare void @gimp_display_shell_set_snap_to_guides(%struct._GimpDisplayShell*, i32) #1

; Function Attrs: nounwind uwtable
define void @view_snap_to_grid_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %active = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %1 = bitcast %struct._GtkAction* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_action_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleAction*
  %call2 = call i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction* %2)
  store i32 %call2, i32* %active, align 4
  %3 = load i8*, i8** %data.addr, align 8
  %call3 = call %struct._GimpDisplayShell* @action_data_get_shell(i8* %3)
  store %struct._GimpDisplayShell* %call3, %struct._GimpDisplayShell** %shell, align 8
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %tobool = icmp ne %struct._GimpDisplayShell* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %active, align 4
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call4 = call i32 @gimp_display_shell_get_snap_to_grid(%struct._GimpDisplayShell* %6)
  %cmp = icmp eq i32 %5, %call4
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %return

if.end.6:                                         ; preds = %if.end
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %8 = load i32, i32* %active, align 4
  call void @gimp_display_shell_set_snap_to_grid(%struct._GimpDisplayShell* %7, i32 %8)
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  ret void
}

declare i32 @gimp_display_shell_get_snap_to_grid(%struct._GimpDisplayShell*) #1

declare void @gimp_display_shell_set_snap_to_grid(%struct._GimpDisplayShell*, i32) #1

; Function Attrs: nounwind uwtable
define void @view_snap_to_canvas_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %active = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %1 = bitcast %struct._GtkAction* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_action_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleAction*
  %call2 = call i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction* %2)
  store i32 %call2, i32* %active, align 4
  %3 = load i8*, i8** %data.addr, align 8
  %call3 = call %struct._GimpDisplayShell* @action_data_get_shell(i8* %3)
  store %struct._GimpDisplayShell* %call3, %struct._GimpDisplayShell** %shell, align 8
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %tobool = icmp ne %struct._GimpDisplayShell* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %active, align 4
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call4 = call i32 @gimp_display_shell_get_snap_to_canvas(%struct._GimpDisplayShell* %6)
  %cmp = icmp eq i32 %5, %call4
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %return

if.end.6:                                         ; preds = %if.end
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %8 = load i32, i32* %active, align 4
  call void @gimp_display_shell_set_snap_to_canvas(%struct._GimpDisplayShell* %7, i32 %8)
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  ret void
}

declare i32 @gimp_display_shell_get_snap_to_canvas(%struct._GimpDisplayShell*) #1

declare void @gimp_display_shell_set_snap_to_canvas(%struct._GimpDisplayShell*, i32) #1

; Function Attrs: nounwind uwtable
define void @view_snap_to_vectors_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %active = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %1 = bitcast %struct._GtkAction* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_action_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleAction*
  %call2 = call i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction* %2)
  store i32 %call2, i32* %active, align 4
  %3 = load i8*, i8** %data.addr, align 8
  %call3 = call %struct._GimpDisplayShell* @action_data_get_shell(i8* %3)
  store %struct._GimpDisplayShell* %call3, %struct._GimpDisplayShell** %shell, align 8
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %tobool = icmp ne %struct._GimpDisplayShell* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %active, align 4
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call4 = call i32 @gimp_display_shell_get_snap_to_vectors(%struct._GimpDisplayShell* %6)
  %cmp = icmp eq i32 %5, %call4
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %return

if.end.6:                                         ; preds = %if.end
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %8 = load i32, i32* %active, align 4
  call void @gimp_display_shell_set_snap_to_vectors(%struct._GimpDisplayShell* %7, i32 %8)
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  ret void
}

declare i32 @gimp_display_shell_get_snap_to_vectors(%struct._GimpDisplayShell*) #1

declare void @gimp_display_shell_set_snap_to_vectors(%struct._GimpDisplayShell*, i32) #1

; Function Attrs: nounwind uwtable
define void @view_padding_color_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %window = alloca %struct._GimpImageWindow*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %options = alloca %struct._GimpDisplayOptions*, align 8
  %fullscreen = alloca i32, align 4
  %color_dialog = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %shell19 = alloca %struct._GimpDisplayShell*, align 8
  %default_options = alloca %struct._GimpDisplayOptions*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpDisplay* @action_data_get_display(i8* %0)
  store %struct._GimpDisplay* %call, %struct._GimpDisplay** %display, align 8
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call1 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %2)
  store %struct._GimpDisplayShell* %call1, %struct._GimpDisplayShell** %shell, align 8
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call2 = call %struct._GimpImageWindow* @gimp_display_shell_get_window(%struct._GimpDisplayShell* %3)
  store %struct._GimpImageWindow* %call2, %struct._GimpImageWindow** %window, align 8
  %4 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %tobool3 = icmp ne %struct._GimpImageWindow* %4, null
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %5 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %call5 = call i32 @gimp_image_window_get_fullscreen(%struct._GimpImageWindow* %5)
  store i32 %call5, i32* %fullscreen, align 4
  br label %if.end.6

if.else:                                          ; preds = %if.end
  store i32 0, i32* %fullscreen, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.4
  %6 = load i32, i32* %fullscreen, align 4
  %tobool7 = icmp ne i32 %6, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %fullscreen_options = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %7, i32 0, i32 4
  %8 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %fullscreen_options, align 8
  store %struct._GimpDisplayOptions* %8, %struct._GimpDisplayOptions** %options, align 8
  br label %if.end.11

if.else.9:                                        ; preds = %if.end.6
  %9 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %options10 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %9, i32 0, i32 3
  %10 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options10, align 8
  store %struct._GimpDisplayOptions* %10, %struct._GimpDisplayOptions** %options, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.9, %if.then.8
  %11 = load i32, i32* %value.addr, align 4
  switch i32 %11, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb.13
    i32 -1, label %sw.bb.35
  ]

sw.bb:                                            ; preds = %if.end.11, %if.end.11, %if.end.11
  %12 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %13 = bitcast %struct._GimpDisplayShell* %12 to %struct._GTypeInstance*
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 80)
  %14 = bitcast %struct._GTypeInstance* %call12 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %15 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options, align 8
  %padding_mode_set = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %15, i32 0, i32 12
  store i32 1, i32* %padding_mode_set, align 4
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %17 = load i32, i32* %value.addr, align 4
  %18 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options, align 8
  %padding_color = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %18, i32 0, i32 11
  call void @gimp_display_shell_set_padding(%struct._GimpDisplayShell* %16, i32 %17, %struct._GimpRGB* %padding_color)
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.end.11
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %20 = bitcast %struct._GimpDisplayShell* %19 to %struct._GTypeInstance*
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 80)
  %21 = bitcast %struct._GTypeInstance* %call14 to %struct._GObject*
  %call15 = call i8* @g_object_get_data(%struct._GObject* %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0))
  %22 = bitcast i8* %call15 to %struct._GtkWidget*
  store %struct._GtkWidget* %22, %struct._GtkWidget** %color_dialog, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog, align 8
  %tobool16 = icmp ne %struct._GtkWidget* %23, null
  br i1 %tobool16, label %if.end.32, label %if.then.17

if.then.17:                                       ; preds = %sw.bb.13
  %24 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call18 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %24)
  store %struct._GimpImage* %call18, %struct._GimpImage** %image, align 8
  %25 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call20 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %25)
  store %struct._GimpDisplayShell* %call20, %struct._GimpDisplayShell** %shell19, align 8
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %27 = bitcast %struct._GimpImage* %26 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_viewable_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call21)
  %28 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpViewable*
  %29 = load i8*, i8** %data.addr, align 8
  %call23 = call %struct._GimpContext* @action_data_get_context(i8* %29)
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0)) #5
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  %30 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell19, align 8
  %31 = bitcast %struct._GimpDisplayShell* %30 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_widget_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call26)
  %32 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkWidget*
  %33 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options, align 8
  %padding_color28 = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %33, i32 0, i32 11
  %call29 = call %struct._GtkWidget* @gimp_color_dialog_new(%struct._GimpViewable* %28, %struct._GimpContext* %call23, i8* %call24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* %call25, %struct._GtkWidget* %32, %struct._GimpDialogFactory* null, i8* null, %struct._GimpRGB* %padding_color28, i32 0, i32 0)
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %color_dialog, align 8
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog, align 8
  %35 = bitcast %struct._GtkWidget* %34 to i8*
  %36 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell19, align 8
  %37 = bitcast %struct._GimpDisplayShell* %36 to i8*
  %call30 = call i64 @g_signal_connect_data(i8* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorDialog*, %struct._GimpRGB*, i32, %struct._GimpDisplayShell*)* @view_padding_color_dialog_update to void ()*), i8* %37, void (i8*, %struct._GClosure*)* null, i32 0)
  %38 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell19, align 8
  %39 = bitcast %struct._GimpDisplayShell* %38 to %struct._GTypeInstance*
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 80)
  %40 = bitcast %struct._GTypeInstance* %call31 to %struct._GObject*
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog, align 8
  %42 = bitcast %struct._GtkWidget* %41 to i8*
  call void @g_object_set_data_full(%struct._GObject* %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i8* %42, void (i8*)* bitcast (void (%struct._GtkWidget*)* @gtk_widget_destroy to void (i8*)*))
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.17, %sw.bb.13
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_window_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call33)
  %45 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %45)
  br label %sw.epilog

sw.bb.35:                                         ; preds = %if.end.11
  %46 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %47 = bitcast %struct._GimpDisplayShell* %46 to %struct._GTypeInstance*
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 80)
  %48 = bitcast %struct._GTypeInstance* %call36 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %49 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options, align 8
  %padding_mode_set37 = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %49, i32 0, i32 12
  store i32 0, i32* %padding_mode_set37, align 4
  %50 = load i32, i32* %fullscreen, align 4
  %tobool38 = icmp ne i32 %50, 0
  br i1 %tobool38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %sw.bb.35
  %51 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %config = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %51, i32 0, i32 2
  %52 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config, align 8
  %default_fullscreen_view = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %52, i32 0, i32 21
  %53 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %default_fullscreen_view, align 8
  store %struct._GimpDisplayOptions* %53, %struct._GimpDisplayOptions** %default_options, align 8
  br label %if.end.42

if.else.40:                                       ; preds = %sw.bb.35
  %54 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %config41 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %54, i32 0, i32 2
  %55 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config41, align 8
  %default_view = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %55, i32 0, i32 20
  %56 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %default_view, align 8
  store %struct._GimpDisplayOptions* %56, %struct._GimpDisplayOptions** %default_options, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.40, %if.then.39
  %57 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %58 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %default_options, align 8
  %padding_mode = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %58, i32 0, i32 10
  %59 = load i32, i32* %padding_mode, align 4
  %60 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %default_options, align 8
  %padding_color43 = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %60, i32 0, i32 11
  call void @gimp_display_shell_set_padding(%struct._GimpDisplayShell* %57, i32 %59, %struct._GimpRGB* %padding_color43)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %if.end.11, %if.end.42, %if.end.32, %sw.bb
  ret void
}

declare i32 @gimp_image_window_get_fullscreen(%struct._GimpImageWindow*) #1

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare void @gimp_display_shell_set_padding(%struct._GimpDisplayShell*, i32, %struct._GimpRGB*) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare %struct._GtkWidget* @gimp_color_dialog_new(%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GimpDialogFactory*, i8*, %struct._GimpRGB*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #3

declare %struct._GimpContext* @action_data_get_context(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @view_padding_color_dialog_update(%struct._GimpColorDialog* %dialog, %struct._GimpRGB* %color, i32 %state, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %dialog.addr = alloca %struct._GimpColorDialog*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %state.addr = alloca i32, align 4
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %window = alloca %struct._GimpImageWindow*, align 8
  %options = alloca %struct._GimpDisplayOptions*, align 8
  %fullscreen = alloca i32, align 4
  store %struct._GimpColorDialog* %dialog, %struct._GimpColorDialog** %dialog.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call = call %struct._GimpImageWindow* @gimp_display_shell_get_window(%struct._GimpDisplayShell* %0)
  store %struct._GimpImageWindow* %call, %struct._GimpImageWindow** %window, align 8
  %1 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %tobool = icmp ne %struct._GimpImageWindow* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %call1 = call i32 @gimp_image_window_get_fullscreen(%struct._GimpImageWindow* %2)
  store i32 %call1, i32* %fullscreen, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %fullscreen, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %fullscreen, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.end
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %fullscreen_options = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %4, i32 0, i32 4
  %5 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %fullscreen_options, align 8
  store %struct._GimpDisplayOptions* %5, %struct._GimpDisplayOptions** %options, align 8
  br label %if.end.6

if.else.4:                                        ; preds = %if.end
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %options5 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %6, i32 0, i32 3
  %7 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options5, align 8
  store %struct._GimpDisplayOptions* %7, %struct._GimpDisplayOptions** %options, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.4, %if.then.3
  %8 = load i32, i32* %state.addr, align 4
  switch i32 %8, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %if.end.6
  %9 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options, align 8
  %padding_mode_set = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %9, i32 0, i32 12
  store i32 1, i32* %padding_mode_set, align 4
  %10 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %11 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_display_shell_set_padding(%struct._GimpDisplayShell* %10, i32 3, %struct._GimpRGB* %11)
  br label %sw.bb.7

sw.bb.7:                                          ; preds = %if.end.6, %sw.bb
  %12 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %13 = bitcast %struct._GimpDisplayShell* %12 to %struct._GTypeInstance*
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 80)
  %14 = bitcast %struct._GTypeInstance* %call8 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i8* null)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.7
  ret void
}

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @view_shrink_wrap_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpDisplayShell* @action_data_get_shell(i8* %0)
  store %struct._GimpDisplayShell* %call, %struct._GimpDisplayShell** %shell, align 8
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %tobool = icmp ne %struct._GimpDisplayShell* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_scale_shrink_wrap(%struct._GimpDisplayShell* %2, i32 0)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @gimp_display_shell_scale_shrink_wrap(%struct._GimpDisplayShell*, i32) #1

; Function Attrs: nounwind uwtable
define void @view_fullscreen_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %window = alloca %struct._GimpImageWindow*, align 8
  %active = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpDisplay* @action_data_get_display(i8* %0)
  store %struct._GimpDisplay* %call, %struct._GimpDisplay** %display, align 8
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.8

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call1 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %2)
  store %struct._GimpDisplayShell* %call1, %struct._GimpDisplayShell** %shell, align 8
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call2 = call %struct._GimpImageWindow* @gimp_display_shell_get_window(%struct._GimpDisplayShell* %3)
  store %struct._GimpImageWindow* %call2, %struct._GimpImageWindow** %window, align 8
  %4 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %tobool3 = icmp ne %struct._GimpImageWindow* %4, null
  br i1 %tobool3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %if.end
  %5 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %6 = bitcast %struct._GtkAction* %5 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_toggle_action_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkToggleAction*
  %call7 = call i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction* %7)
  store i32 %call7, i32* %active, align 4
  %8 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %9 = load i32, i32* %active, align 4
  call void @gimp_image_window_set_fullscreen(%struct._GimpImageWindow* %8, i32 %9)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then, %if.then.4, %if.end
  ret void
}

declare void @gimp_image_window_set_fullscreen(%struct._GimpImageWindow*, i32) #1

; Function Attrs: nounwind uwtable
define void @view_use_gegl_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %layers = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %active = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8
  %call1 = call %struct._GimpDisplayShell* @action_data_get_shell(i8* %2)
  store %struct._GimpDisplayShell* %call1, %struct._GimpDisplayShell** %shell, align 8
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %tobool2 = icmp ne %struct._GimpDisplayShell* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %5 = bitcast %struct._GtkAction* %4 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_toggle_action_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call5)
  %6 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkToggleAction*
  %call7 = call i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction* %6)
  store i32 %call7, i32* %active, align 4
  %7 = load i32, i32* %active, align 4
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call8 = call %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage* %8)
  %use_gegl = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %call8, i32 0, i32 10
  store i32 %7, i32* %use_gegl, align 4
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call9 = call %struct._GList* @gimp_image_get_layer_list(%struct._GimpImage* %9)
  store %struct._GList* %call9, %struct._GList** %layers, align 8
  %10 = load %struct._GList*, %struct._GList** %layers, align 8
  store %struct._GList* %10, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.4
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool10 = icmp ne %struct._GList* %11, null
  br i1 %tobool10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %data11 = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 0
  %13 = load i8*, i8** %data11, align 8
  %14 = bitcast i8* %13 to %struct._GimpLayer*
  store %struct._GimpLayer* %14, %struct._GimpLayer** %layer, align 8
  %15 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %16 = bitcast %struct._GimpLayer* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst, align 8
  %call12 = call i64 @gimp_group_layer_get_type() #6
  store i64 %call12, i64* %__t, align 8
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool13 = icmp ne %struct._GTypeInstance* %17, null
  br i1 %tobool13, label %if.else, label %if.then.14

if.then.14:                                       ; preds = %for.body
  store i32 0, i32* %__r, align 4
  br label %if.end.21

if.else:                                          ; preds = %for.body
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool15 = icmp ne %struct._GTypeClass* %19, null
  br i1 %tobool15, label %land.lhs.true, label %if.else.18

land.lhs.true:                                    ; preds = %if.else
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class16 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class16, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type, align 8
  %23 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %22, %23
  br i1 %cmp, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.20

if.else.18:                                       ; preds = %land.lhs.true, %if.else
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %25 = load i64, i64* %__t, align 8
  %call19 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %24, i64 %25) #7
  store i32 %call19, i32* %__r, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.18, %if.then.17
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.14
  %26 = load i32, i32* %__r, align 4
  store i32 %26, i32* %tmp
  %27 = load i32, i32* %tmp
  %tobool22 = icmp ne i32 %27, 0
  br i1 %tobool22, label %if.then.23, label %if.end.28

if.then.23:                                       ; preds = %if.end.21
  %28 = load i32, i32* %active, align 4
  %29 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %30 = bitcast %struct._GimpLayer* %29 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_group_layer_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call24)
  %31 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpGroupLayer*
  %call26 = call %struct._GimpProjection* @gimp_group_layer_get_projection(%struct._GimpGroupLayer* %31)
  %use_gegl27 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %call26, i32 0, i32 10
  store i32 %28, i32* %use_gegl27, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.23, %if.end.21
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %32 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool29 = icmp ne %struct._GList* %32, null
  br i1 %tobool29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %33 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %33, i32 0, i32 1
  %34 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %34, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load %struct._GList*, %struct._GList** %layers, align 8
  call void @g_list_free(%struct._GList* %35)
  %36 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %37 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call30 = call i32 @gimp_image_get_width(%struct._GimpImage* %37)
  %38 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call31 = call i32 @gimp_image_get_height(%struct._GimpImage* %38)
  call void @gimp_image_invalidate(%struct._GimpImage* %36, i32 0, i32 0, i32 %call30, i32 %call31)
  %39 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %39)
  br label %return

return:                                           ; preds = %for.end, %if.then.3, %if.then
  ret void
}

declare %struct._GimpImage* @action_data_get_image(i8*) #1

declare %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage*) #1

declare %struct._GList* @gimp_image_get_layer_list(%struct._GimpImage*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_group_layer_get_type() #3

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare %struct._GimpProjection* @gimp_group_layer_get_projection(%struct._GimpGroupLayer*) #1

declare void @g_list_free(%struct._GList*) #1

declare void @gimp_image_invalidate(%struct._GimpImage*, i32, i32, i32, i32) #1

declare i32 @gimp_image_get_width(%struct._GimpImage*) #1

declare i32 @gimp_image_get_height(%struct._GimpImage*) #1

declare void @gimp_image_flush(%struct._GimpImage*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
