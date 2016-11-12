; ModuleID = './app/actions/image-commands.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkActionPrivate = type opaque
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
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
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
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpUIManager = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpDisplayConfig = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GtkRadioAction = type { %struct._GtkToggleAction, %struct._GtkRadioActionPrivate* }
%struct._GtkToggleAction = type { %struct._GtkAction, %struct._GtkToggleActionPrivate* }
%struct._GtkToggleActionPrivate = type opaque
%struct._GtkRadioActionPrivate = type opaque
%struct.ImageResizeOptions = type { %struct._GimpContext*, %struct._GimpDisplay* }
%struct._GimpDisplayShell = type { %struct._GtkBox, %struct._GimpDisplay*, %struct._GimpUIManager*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct._GimpZoomModel*, double, i32, i32, i32, double, i32, i32, i32, %struct._Selection*, %struct._GList*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._cairo_surface*, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, i32, i8*, i8*, i32, i32, %struct._GdkPixbuf*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpColorDisplayStack*, i32, %struct._GtkWidget*, i32, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, %struct._GimpDrawable*, %struct._GimpRGB, %struct._GimpMotionBuffer*, %struct._GQueue* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpDisplayOptions = type opaque
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
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GeglNode = type opaque
%struct._BoundSeg = type opaque
%struct._ImageMergeLayersDialog = type { %struct._GtkWidget*, %struct._GimpImage*, %struct._GimpContext*, i32, i32, i32 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpLayer = type opaque

@.str = private unnamed_addr constant [22 x i8] c"gimp-image-new-dialog\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"image-convert-dialog\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@image_resize_unit = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Set Image Canvas Size\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"gimp-image-resize\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"disconnect\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Resizing\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Set Image Print Resolution\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"gimp-image-print-size\00", align 1
@image_scale_unit = internal global i32 0, align 4
@image_scale_interp = internal global i32 -1, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"Flipping\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"Rotating\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"Cannot crop because the current selection is empty.\00", align 1
@image_merge_layers_type = internal global i32 0, align 4
@image_merge_layers_merge_active_group = internal global i32 1, align 4
@image_merge_layers_discard_invisible = internal global i32 0, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.13 = private unnamed_addr constant [63 x i8] c"Resize Error: Both width and height must be greater than zero.\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"Gimp-Actions\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"Change Print Size\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"Scale Image\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"Scaling\00", align 1
@.str.18 = private unnamed_addr constant [62 x i8] c"Scale Error: Both width and height must be greater than zero.\00", align 1

; Function Attrs: nounwind uwtable
define void @image_new_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GtkWidget* @action_data_get_widget(i8* %0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %widget, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool = icmp ne %struct._GtkWidget* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.9

if.end:                                           ; preds = %entry
  %call1 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call2 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %2)
  %call3 = call %struct._GtkWidget* @gimp_dialog_factory_dialog_new(%struct._GimpDialogFactory* %call1, %struct._GdkScreen* %call2, %struct._GimpUIManager* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 -1, i32 0)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %dialog, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool4 = icmp ne %struct._GtkWidget* %3, null
  br i1 %tobool4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.end
  %4 = load i8*, i8** %data.addr, align 8
  %call6 = call %struct._GimpImage* @action_data_get_image(i8* %4)
  store %struct._GimpImage* %call6, %struct._GimpImage** %image, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @image_new_dialog_set(%struct._GtkWidget* %5, %struct._GimpImage* %6, %struct._GimpTemplate* null)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_window_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call7)
  %9 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %9)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then, %if.then.5, %if.end
  ret void
}

declare %struct._GtkWidget* @action_data_get_widget(i8*) #1

declare %struct._GtkWidget* @gimp_dialog_factory_dialog_new(%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpUIManager*, i8*, i32, i32) #1

declare %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton() #1

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #1

declare %struct._GimpImage* @action_data_get_image(i8*) #1

declare void @image_new_dialog_set(%struct._GtkWidget*, %struct._GimpImage*, %struct._GimpTemplate*) #1

declare void @gtk_window_present(%struct._GtkWindow*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

; Function Attrs: nounwind uwtable
define void @image_convert_cmd_callback(%struct._GtkAction* %action, %struct._GtkAction* %current, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %current.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %value = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store %struct._GtkAction* %current, %struct._GtkAction** %current.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
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
  %call1 = call %struct._GtkWidget* @action_data_get_widget(i8* %2)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %widget, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool2 = icmp ne %struct._GtkWidget* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load i8*, i8** %data.addr, align 8
  %call5 = call %struct._GimpDisplay* @action_data_get_display(i8* %4)
  store %struct._GimpDisplay* %call5, %struct._GimpDisplay** %display, align 8
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool6 = icmp ne %struct._GimpDisplay* %5, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %6 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %7 = bitcast %struct._GtkAction* %6 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_radio_action_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call9)
  %8 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkRadioAction*
  %call11 = call i32 @gtk_radio_action_get_current_value(%struct._GtkRadioAction* %8)
  store i32 %call11, i32* %value, align 4
  %9 = load i32, i32* %value, align 4
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call12 = call i32 @gimp_image_base_type(%struct._GimpImage* %10)
  %cmp = icmp eq i32 %9, %call12
  br i1 %cmp, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.8
  br label %return

if.end.14:                                        ; preds = %if.end.8
  %11 = load i32, i32* %value, align 4
  switch i32 %11, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %if.end.14, %if.end.14
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %13 = load i32, i32* %value, align 4
  %call15 = call i32 @gimp_image_convert(%struct._GimpImage* %12, i32 %13, i32 0, i32 0, i32 0, i32 0, i32 0, %struct._GimpPalette* null, %struct._GimpProgress* null, %struct._GError** %error)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.19, label %if.then.17

if.then.17:                                       ; preds = %sw.bb
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %14, i32 0, i32 1
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 80)
  %18 = bitcast %struct._GTypeInstance* %call18 to %struct._GObject*
  %19 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %19, i32 0, i32 2
  %20 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %15, %struct._GObject* %18, i32 1, i8* %20)
  call void @g_clear_error(%struct._GError** %error)
  br label %return

if.end.19:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.end.14
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call21 to %struct._GObject*
  %call22 = call i8* @g_object_get_data(%struct._GObject* %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0))
  %24 = bitcast i8* %call22 to %struct._GtkWidget*
  store %struct._GtkWidget* %24, %struct._GtkWidget** %dialog, align 8
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool23 = icmp ne %struct._GtkWidget* %25, null
  br i1 %tobool23, label %if.end.31, label %if.then.24

if.then.24:                                       ; preds = %sw.bb.20
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %27 = load i8*, i8** %data.addr, align 8
  %call25 = call %struct._GimpContext* @action_data_get_context(i8* %27)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %29 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %30 = bitcast %struct._GimpDisplay* %29 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_progress_interface_get_type() #5
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call26)
  %31 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpProgress*
  %call28 = call %struct._GtkWidget* @convert_dialog_new(%struct._GimpImage* %26, %struct._GimpContext* %call25, %struct._GtkWidget* %28, %struct._GimpProgress* %31)
  store %struct._GtkWidget* %call28, %struct._GtkWidget** %dialog, align 8
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 80)
  %34 = bitcast %struct._GTypeInstance* %call29 to %struct._GObject*
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %36 = bitcast %struct._GtkWidget* %35 to i8*
  call void @g_object_set_data(%struct._GObject* %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i8* %36)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %38 = bitcast %struct._GtkWidget* %37 to i8*
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %40 = bitcast %struct._GtkWidget* %39 to i8*
  %call30 = call i64 @g_signal_connect_object(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @image_convert_dialog_unset to void ()*), i8* %40, i32 2)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.24, %sw.bb.20
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_window_get_type() #5
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call32)
  %43 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %43)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.14, %if.end.31, %if.end.19
  %44 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %44)
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.17, %if.then.13, %if.then.7, %if.then.3, %if.then
  ret void
}

declare %struct._GimpDisplay* @action_data_get_display(i8*) #1

declare i32 @gtk_radio_action_get_current_value(%struct._GtkRadioAction*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_action_get_type() #2

declare i32 @gimp_image_base_type(%struct._GimpImage*) #1

declare i32 @gimp_image_convert(%struct._GimpImage*, i32, i32, i32, i32, i32, i32, %struct._GimpPalette*, %struct._GimpProgress*, %struct._GError**) #1

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #1

declare void @g_clear_error(%struct._GError**) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare %struct._GtkWidget* @convert_dialog_new(%struct._GimpImage*, %struct._GimpContext*, %struct._GtkWidget*, %struct._GimpProgress*) #1

declare %struct._GimpContext* @action_data_get_context(i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #2

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @image_convert_dialog_unset(%struct._GtkWidget* %widget) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i8* null)
  ret void
}

declare void @gimp_image_flush(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define void @image_resize_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %options = alloca %struct.ImageResizeOptions*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
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
  %call1 = call %struct._GtkWidget* @action_data_get_widget(i8* %2)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %widget, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool2 = icmp ne %struct._GtkWidget* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load i8*, i8** %data.addr, align 8
  %call5 = call %struct._GimpDisplay* @action_data_get_display(i8* %4)
  store %struct._GimpDisplay* %call5, %struct._GimpDisplay** %display, align 8
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool6 = icmp ne %struct._GimpDisplay* %5, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %call9 = call noalias i8* @g_slice_alloc(i64 16)
  %6 = bitcast i8* %call9 to %struct.ImageResizeOptions*
  store %struct.ImageResizeOptions* %6, %struct.ImageResizeOptions** %options, align 8
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %8 = load %struct.ImageResizeOptions*, %struct.ImageResizeOptions** %options, align 8
  %display10 = getelementptr inbounds %struct.ImageResizeOptions, %struct.ImageResizeOptions* %8, i32 0, i32 1
  store %struct._GimpDisplay* %7, %struct._GimpDisplay** %display10, align 8
  %9 = load i8*, i8** %data.addr, align 8
  %call11 = call %struct._GimpContext* @action_data_get_context(i8* %9)
  %10 = load %struct.ImageResizeOptions*, %struct.ImageResizeOptions** %options, align 8
  %context = getelementptr inbounds %struct.ImageResizeOptions, %struct.ImageResizeOptions* %10, i32 0, i32 0
  store %struct._GimpContext* %call11, %struct._GimpContext** %context, align 8
  %11 = load i32, i32* @image_resize_unit, align 4
  %cmp = icmp ne i32 %11, 65536
  br i1 %cmp, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.8
  %12 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call13 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %12)
  %unit = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %call13, i32 0, i32 10
  %13 = load i32, i32* %unit, align 4
  store i32 %13, i32* @image_resize_unit, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end.8
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %15 = bitcast %struct._GimpImage* %14 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_viewable_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call15)
  %16 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpViewable*
  %17 = load i8*, i8** %data.addr, align 8
  %call17 = call %struct._GimpContext* @action_data_get_context(i8* %17)
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0)) #4
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %19 = load i32, i32* @image_resize_unit, align 4
  %20 = load %struct.ImageResizeOptions*, %struct.ImageResizeOptions** %options, align 8
  %21 = bitcast %struct.ImageResizeOptions* %20 to i8*
  %call19 = call %struct._GtkWidget* @resize_dialog_new(%struct._GimpViewable* %16, %struct._GimpContext* %call17, i8* %call18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), %struct._GtkWidget* %18, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 %19, void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, i32, i32, i8*)* @image_resize_callback, i8* %21)
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %dialog, align 8
  %22 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %23 = bitcast %struct._GimpDisplay* %22 to i8*
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %25 = bitcast %struct._GtkWidget* %24 to i8*
  %call20 = call i64 @g_signal_connect_object(i8* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @gtk_widget_destroy to void ()*), i8* %25, i32 2)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 80)
  %28 = bitcast %struct._GTypeInstance* %call21 to %struct._GObject*
  %29 = load %struct.ImageResizeOptions*, %struct.ImageResizeOptions** %options, align 8
  %30 = bitcast %struct.ImageResizeOptions* %29 to i8*
  call void @g_object_weak_ref(%struct._GObject* %28, void (i8*, %struct._GObject*)* bitcast (void (%struct.ImageResizeOptions*)* @image_resize_options_free to void (i8*, %struct._GObject*)*), i8* %30)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %31)
  br label %return

return:                                           ; preds = %if.end.14, %if.then.7, %if.then.3, %if.then
  ret void
}

declare noalias i8* @g_slice_alloc(i64) #1

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

declare %struct._GtkWidget* @resize_dialog_new(%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, i32, void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, i32, i32, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare void @gimp_standard_help_func(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @image_resize_callback(%struct._GtkWidget* %dialog, %struct._GimpViewable* %viewable, i32 %width, i32 %height, i32 %unit, i32 %offset_x, i32 %offset_y, i32 %layer_set, i8* %data) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %unit.addr = alloca i32, align 4
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %layer_set.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %options = alloca %struct.ImageResizeOptions*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %progress = alloca %struct._GimpProgress*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %unit, i32* %unit.addr, align 4
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  store i32 %layer_set, i32* %layer_set.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.ImageResizeOptions*
  store %struct.ImageResizeOptions* %1, %struct.ImageResizeOptions** %options, align 8
  %2 = load i32, i32* %unit.addr, align 4
  store i32 %2, i32* @image_resize_unit, align 4
  %3 = load i32, i32* %width.addr, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %height.addr, align 4
  %cmp1 = icmp sgt i32 %4, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %6 = bitcast %struct._GimpViewable* %5 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call)
  %7 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpImage*
  store %struct._GimpImage* %7, %struct._GimpImage** %image, align 8
  %8 = load %struct.ImageResizeOptions*, %struct.ImageResizeOptions** %options, align 8
  %display3 = getelementptr inbounds %struct.ImageResizeOptions, %struct.ImageResizeOptions* %8, i32 0, i32 1
  %9 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display3, align 8
  store %struct._GimpDisplay* %9, %struct._GimpDisplay** %display, align 8
  %10 = load %struct.ImageResizeOptions*, %struct.ImageResizeOptions** %options, align 8
  %context4 = getelementptr inbounds %struct.ImageResizeOptions, %struct.ImageResizeOptions* %10, i32 0, i32 0
  %11 = load %struct._GimpContext*, %struct._GimpContext** %context4, align 8
  store %struct._GimpContext* %11, %struct._GimpContext** %context, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %12)
  %13 = load i32, i32* %width.addr, align 4
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call5 = call i32 @gimp_image_get_width(%struct._GimpImage* %14)
  %cmp6 = icmp eq i32 %13, %call5
  br i1 %cmp6, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %if.then
  %15 = load i32, i32* %height.addr, align 4
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call8 = call i32 @gimp_image_get_height(%struct._GimpImage* %16)
  %cmp9 = icmp eq i32 %15, %call8
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %land.lhs.true.7
  br label %if.end.17

if.end:                                           ; preds = %land.lhs.true.7, %if.then
  %17 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %18 = bitcast %struct._GimpDisplay* %17 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_progress_interface_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call11)
  %19 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpProgress*
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0)) #4
  %call14 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %19, i8* %call13, i32 0)
  store %struct._GimpProgress* %call14, %struct._GimpProgress** %progress, align 8
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %21 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %22 = load i32, i32* %width.addr, align 4
  %23 = load i32, i32* %height.addr, align 4
  %24 = load i32, i32* %offset_x.addr, align 4
  %25 = load i32, i32* %offset_y.addr, align 4
  %26 = load i32, i32* %layer_set.addr, align 4
  %27 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  call void @gimp_image_resize_with_layers(%struct._GimpImage* %20, %struct._GimpContext* %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, %struct._GimpProgress* %27)
  %28 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %tobool = icmp ne %struct._GimpProgress* %28, null
  br i1 %tobool, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end
  %29 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %29)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end
  %30 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %30)
  br label %if.end.17

if.else:                                          ; preds = %land.lhs.true, %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.10, %if.else, %if.end.16
  ret void
}

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @g_object_weak_ref(%struct._GObject*, void (i8*, %struct._GObject*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @image_resize_options_free(%struct.ImageResizeOptions* %options) #0 {
entry:
  %options.addr = alloca %struct.ImageResizeOptions*, align 8
  store %struct.ImageResizeOptions* %options, %struct.ImageResizeOptions** %options.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.ImageResizeOptions*, %struct.ImageResizeOptions** %options.addr, align 8
  %1 = bitcast %struct.ImageResizeOptions* %0 to i8*
  call void @g_slice_free1(i64 16, i8* %1)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @image_resize_to_layers_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %progress = alloca %struct._GimpProgress*, align 8
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
  %call1 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %2)
  store %struct._GimpImage* %call1, %struct._GimpImage** %image, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %4 = bitcast %struct._GimpDisplay* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_progress_interface_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpProgress*
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0)) #4
  %call5 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %5, i8* %call4, i32 0)
  store %struct._GimpProgress* %call5, %struct._GimpProgress** %progress, align 8
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = load i8*, i8** %data.addr, align 8
  %call6 = call %struct._GimpContext* @action_data_get_context(i8* %7)
  %8 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  call void @gimp_image_resize_to_layers(%struct._GimpImage* %6, %struct._GimpContext* %call6, %struct._GimpProgress* %8)
  %9 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %tobool7 = icmp ne %struct._GimpProgress* %9, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %10 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %10)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %11)
  br label %return

return:                                           ; preds = %if.end.9, %if.then
  ret void
}

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress*, i8*, i32) #1

declare void @gimp_image_resize_to_layers(%struct._GimpImage*, %struct._GimpContext*, %struct._GimpProgress*) #1

declare void @gimp_progress_end(%struct._GimpProgress*) #1

; Function Attrs: nounwind uwtable
define void @image_resize_to_selection_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %progress = alloca %struct._GimpProgress*, align 8
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
  %call1 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %2)
  store %struct._GimpImage* %call1, %struct._GimpImage** %image, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %4 = bitcast %struct._GimpDisplay* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_progress_interface_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpProgress*
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0)) #4
  %call5 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %5, i8* %call4, i32 0)
  store %struct._GimpProgress* %call5, %struct._GimpProgress** %progress, align 8
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = load i8*, i8** %data.addr, align 8
  %call6 = call %struct._GimpContext* @action_data_get_context(i8* %7)
  %8 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  call void @gimp_image_resize_to_selection(%struct._GimpImage* %6, %struct._GimpContext* %call6, %struct._GimpProgress* %8)
  %9 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %tobool7 = icmp ne %struct._GimpProgress* %9, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %10 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %10)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %11)
  br label %return

return:                                           ; preds = %if.end.9, %if.then
  ret void
}

declare void @gimp_image_resize_to_selection(%struct._GimpImage*, %struct._GimpContext*, %struct._GimpProgress*) #1

; Function Attrs: nounwind uwtable
define void @image_print_size_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
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
  %2 = load i8*, i8** %data.addr, align 8
  %call1 = call %struct._GtkWidget* @action_data_get_widget(i8* %2)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %widget, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool2 = icmp ne %struct._GtkWidget* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call5 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %4)
  store %struct._GimpImage* %call5, %struct._GimpImage** %image, align 8
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %6 = load i8*, i8** %data.addr, align 8
  %call6 = call %struct._GimpContext* @action_data_get_context(i8* %6)
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0)) #4
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call8 = call %struct._GtkWidget* @print_size_dialog_new(%struct._GimpImage* %5, %struct._GimpContext* %call6, i8* %call7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), %struct._GtkWidget* %7, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), void (%struct._GtkWidget*, %struct._GimpImage*, double, double, i32, i8*)* @image_print_size_callback, i8* null)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %dialog, align 8
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %9 = bitcast %struct._GimpDisplay* %8 to i8*
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %11 = bitcast %struct._GtkWidget* %10 to i8*
  %call9 = call i64 @g_signal_connect_object(i8* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @gtk_widget_destroy to void ()*), i8* %11, i32 2)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %12)
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  ret void
}

declare %struct._GtkWidget* @print_size_dialog_new(%struct._GimpImage*, %struct._GimpContext*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, void (%struct._GtkWidget*, %struct._GimpImage*, double, double, i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @image_print_size_callback(%struct._GtkWidget* %dialog, %struct._GimpImage* %image, double %xresolution, double %yresolution, i32 %resolution_unit, i8* %data) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %xresolution.addr = alloca double, align 8
  %yresolution.addr = alloca double, align 8
  %resolution_unit.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store double %xresolution, double* %xresolution.addr, align 8
  store double %yresolution, double* %yresolution.addr, align 8
  store i32 %resolution_unit, i32* %resolution_unit.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %0)
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %1, double* %xres, double* %yres)
  %2 = load double, double* %xresolution.addr, align 8
  %3 = load double, double* %xres, align 8
  %cmp = fcmp oeq double %2, %3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load double, double* %yresolution.addr, align 8
  %5 = load double, double* %yres, align 8
  %cmp1 = fcmp oeq double %4, %5
  br i1 %cmp1, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %6 = load i32, i32* %resolution_unit.addr, align 4
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call i32 @gimp_image_get_unit(%struct._GimpImage* %7)
  %cmp3 = icmp eq i32 %6, %call
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.2
  br label %return

if.end:                                           ; preds = %land.lhs.true.2, %land.lhs.true, %entry
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0)) #4
  %call5 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %8, i32 1, i8* %call4)
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %10 = load double, double* %xresolution.addr, align 8
  %11 = load double, double* %yresolution.addr, align 8
  call void @gimp_image_set_resolution(%struct._GimpImage* %9, double %10, double %11)
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %13 = load i32, i32* %resolution_unit.addr, align 4
  call void @gimp_image_set_unit(%struct._GimpImage* %12, i32 %13)
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call6 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %14)
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_flush(%struct._GimpImage* %15)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @image_scale_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
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
  %2 = load i8*, i8** %data.addr, align 8
  %call1 = call %struct._GtkWidget* @action_data_get_widget(i8* %2)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %widget, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool2 = icmp ne %struct._GtkWidget* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call5 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %4)
  store %struct._GimpImage* %call5, %struct._GimpImage** %image, align 8
  %5 = load i32, i32* @image_scale_unit, align 4
  %cmp = icmp ne i32 %5, 65536
  br i1 %cmp, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.4
  %6 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call7 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %6)
  %unit = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %call7, i32 0, i32 10
  %7 = load i32, i32* %unit, align 4
  store i32 %7, i32* @image_scale_unit, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end.4
  %8 = load i32, i32* @image_scale_interp, align 4
  %cmp9 = icmp eq i32 %8, -1
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.8
  %9 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %9, i32 0, i32 1
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %10, i32 0, i32 1
  %11 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %interpolation_type = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %11, i32 0, i32 2
  %12 = load i32, i32* %interpolation_type, align 4
  store i32 %12, i32* @image_scale_interp, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.8
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %14 = load i8*, i8** %data.addr, align 8
  %call12 = call %struct._GimpContext* @action_data_get_context(i8* %14)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %16 = load i32, i32* @image_scale_unit, align 4
  %17 = load i32, i32* @image_scale_interp, align 4
  %18 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %19 = bitcast %struct._GimpDisplay* %18 to i8*
  %call13 = call %struct._GtkWidget* @image_scale_dialog_new(%struct._GimpImage* %13, %struct._GimpContext* %call12, %struct._GtkWidget* %15, i32 %16, i32 %17, void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, double, double, i32, i8*)* @image_scale_callback, i8* %19)
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %dialog, align 8
  %20 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %21 = bitcast %struct._GimpDisplay* %20 to i8*
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %23 = bitcast %struct._GtkWidget* %22 to i8*
  %call14 = call i64 @g_signal_connect_object(i8* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @gtk_widget_destroy to void ()*), i8* %23, i32 2)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %24)
  br label %return

return:                                           ; preds = %if.end.11, %if.then.3, %if.then
  ret void
}

declare %struct._GtkWidget* @image_scale_dialog_new(%struct._GimpImage*, %struct._GimpContext*, %struct._GtkWidget*, i32, i32, void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, double, double, i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @image_scale_callback(%struct._GtkWidget* %dialog, %struct._GimpViewable* %viewable, i32 %width, i32 %height, i32 %unit, i32 %interpolation, double %xresolution, double %yresolution, i32 %resolution_unit, i8* %user_data) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %unit.addr = alloca i32, align 4
  %interpolation.addr = alloca i32, align 4
  %xresolution.addr = alloca double, align 8
  %yresolution.addr = alloca double, align 8
  %resolution_unit.addr = alloca i32, align 4
  %user_data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %progress = alloca %struct._GimpProgress*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %unit, i32* %unit.addr, align 4
  store i32 %interpolation, i32* %interpolation.addr, align 4
  store double %xresolution, double* %xresolution.addr, align 8
  store double %yresolution, double* %yresolution.addr, align 8
  store i32 %resolution_unit, i32* %resolution_unit.addr, align 4
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImage*
  store %struct._GimpImage* %2, %struct._GimpImage** %image, align 8
  %3 = load i32, i32* %unit.addr, align 4
  store i32 %3, i32* @image_scale_unit, align 4
  %4 = load i32, i32* %interpolation.addr, align 4
  store i32 %4, i32* @image_scale_interp, align 4
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %5, double* %xres, double* %yres)
  %6 = load i32, i32* %width.addr, align 4
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %7 = load i32, i32* %height.addr, align 4
  %cmp2 = icmp sgt i32 %7, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %8 = load i32, i32* %width.addr, align 4
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call3 = call i32 @gimp_image_get_width(%struct._GimpImage* %9)
  %cmp4 = icmp eq i32 %8, %call3
  br i1 %cmp4, label %land.lhs.true.5, label %if.end

land.lhs.true.5:                                  ; preds = %if.then
  %10 = load i32, i32* %height.addr, align 4
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call6 = call i32 @gimp_image_get_height(%struct._GimpImage* %11)
  %cmp7 = icmp eq i32 %10, %call6
  br i1 %cmp7, label %land.lhs.true.8, label %if.end

land.lhs.true.8:                                  ; preds = %land.lhs.true.5
  %12 = load double, double* %xresolution.addr, align 8
  %13 = load double, double* %xres, align 8
  %cmp9 = fcmp oeq double %12, %13
  br i1 %cmp9, label %land.lhs.true.10, label %if.end

land.lhs.true.10:                                 ; preds = %land.lhs.true.8
  %14 = load double, double* %yresolution.addr, align 8
  %15 = load double, double* %yres, align 8
  %cmp11 = fcmp oeq double %14, %15
  br i1 %cmp11, label %land.lhs.true.12, label %if.end

land.lhs.true.12:                                 ; preds = %land.lhs.true.10
  %16 = load i32, i32* %resolution_unit.addr, align 4
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call13 = call i32 @gimp_image_get_unit(%struct._GimpImage* %17)
  %cmp14 = icmp eq i32 %16, %call13
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %land.lhs.true.12
  br label %if.end.31

if.end:                                           ; preds = %land.lhs.true.12, %land.lhs.true.10, %land.lhs.true.8, %land.lhs.true.5, %if.then
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0)) #4
  %call17 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %18, i32 1, i8* %call16)
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %20 = load double, double* %xresolution.addr, align 8
  %21 = load double, double* %yresolution.addr, align 8
  call void @gimp_image_set_resolution(%struct._GimpImage* %19, double %20, double %21)
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %23 = load i32, i32* %resolution_unit.addr, align 4
  call void @gimp_image_set_unit(%struct._GimpImage* %22, i32 %23)
  %24 = load i32, i32* %width.addr, align 4
  %25 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call18 = call i32 @gimp_image_get_width(%struct._GimpImage* %25)
  %cmp19 = icmp ne i32 %24, %call18
  br i1 %cmp19, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %26 = load i32, i32* %height.addr, align 4
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call20 = call i32 @gimp_image_get_height(%struct._GimpImage* %27)
  %cmp21 = icmp ne i32 %26, %call20
  br i1 %cmp21, label %if.then.22, label %if.end.29

if.then.22:                                       ; preds = %lor.lhs.false, %if.end
  %28 = load i8*, i8** %user_data.addr, align 8
  %29 = bitcast i8* %28 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_progress_interface_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call23)
  %30 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpProgress*
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0)) #4
  %call26 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %30, i8* %call25, i32 0)
  store %struct._GimpProgress* %call26, %struct._GimpProgress** %progress, align 8
  %31 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %32 = load i32, i32* %width.addr, align 4
  %33 = load i32, i32* %height.addr, align 4
  %34 = load i32, i32* %interpolation.addr, align 4
  %35 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  call void @gimp_image_scale(%struct._GimpImage* %31, i32 %32, i32 %33, i32 %34, %struct._GimpProgress* %35)
  %36 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %tobool = icmp ne %struct._GimpProgress* %36, null
  br i1 %tobool, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.22
  %37 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %37)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.then.22
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %lor.lhs.false
  %38 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call30 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %38)
  %39 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %39)
  br label %if.end.31

if.else:                                          ; preds = %land.lhs.true, %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.15, %if.else, %if.end.29
  ret void
}

; Function Attrs: nounwind uwtable
define void @image_flip_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %progress = alloca %struct._GimpProgress*, align 8
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
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call1 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %2)
  store %struct._GimpImage* %call1, %struct._GimpImage** %image, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %4 = bitcast %struct._GimpDisplay* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_progress_interface_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpProgress*
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0)) #4
  %call5 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %5, i8* %call4, i32 0)
  store %struct._GimpProgress* %call5, %struct._GimpProgress** %progress, align 8
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = load i8*, i8** %data.addr, align 8
  %call6 = call %struct._GimpContext* @action_data_get_context(i8* %7)
  %8 = load i32, i32* %value.addr, align 4
  %9 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  call void @gimp_image_flip(%struct._GimpImage* %6, %struct._GimpContext* %call6, i32 %8, %struct._GimpProgress* %9)
  %10 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %tobool7 = icmp ne %struct._GimpProgress* %10, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %11 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %11)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %12)
  br label %return

return:                                           ; preds = %if.end.9, %if.then
  ret void
}

declare void @gimp_image_flip(%struct._GimpImage*, %struct._GimpContext*, i32, %struct._GimpProgress*) #1

; Function Attrs: nounwind uwtable
define void @image_rotate_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %progress = alloca %struct._GimpProgress*, align 8
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
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call1 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %2)
  store %struct._GimpImage* %call1, %struct._GimpImage** %image, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %4 = bitcast %struct._GimpDisplay* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_progress_interface_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpProgress*
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0)) #4
  %call5 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %5, i8* %call4, i32 0)
  store %struct._GimpProgress* %call5, %struct._GimpProgress** %progress, align 8
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = load i8*, i8** %data.addr, align 8
  %call6 = call %struct._GimpContext* @action_data_get_context(i8* %7)
  %8 = load i32, i32* %value.addr, align 4
  %9 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  call void @gimp_image_rotate(%struct._GimpImage* %6, %struct._GimpContext* %call6, i32 %8, %struct._GimpProgress* %9)
  %10 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %tobool7 = icmp ne %struct._GimpProgress* %10, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %11 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %11)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %12)
  br label %return

return:                                           ; preds = %if.end.9, %if.then
  ret void
}

declare void @gimp_image_rotate(%struct._GimpImage*, %struct._GimpContext*, i32, %struct._GimpProgress*) #1

; Function Attrs: nounwind uwtable
define void @image_crop_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
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
  %call1 = call %struct._GtkWidget* @action_data_get_widget(i8* %2)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %widget, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool2 = icmp ne %struct._GtkWidget* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call5 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %4)
  %call6 = call i32 @gimp_channel_bounds(%struct._GimpChannel* %call5, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.11, label %if.then.8

if.then.8:                                        ; preds = %if.end.4
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 80)
  %9 = bitcast %struct._GTypeInstance* %call9 to %struct._GObject*
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i32 0, i32 0)) #4
  call void @gimp_message_literal(%struct._Gimp* %6, %struct._GObject* %9, i32 1, i8* %call10)
  br label %return

if.end.11:                                        ; preds = %if.end.4
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %11 = load i8*, i8** %data.addr, align 8
  %call12 = call %struct._GimpContext* @action_data_get_context(i8* %11)
  %12 = load i32, i32* %x1, align 4
  %13 = load i32, i32* %y1, align 4
  %14 = load i32, i32* %x2, align 4
  %15 = load i32, i32* %y2, align 4
  call void @gimp_image_crop(%struct._GimpImage* %10, %struct._GimpContext* %call12, i32 %12, i32 %13, i32 %14, i32 %15, i32 0, i32 1)
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %16)
  br label %return

return:                                           ; preds = %if.end.11, %if.then.8, %if.then.3, %if.then
  ret void
}

declare i32 @gimp_channel_bounds(%struct._GimpChannel*, i32*, i32*, i32*, i32*) #1

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #1

declare void @gimp_image_crop(%struct._GimpImage*, %struct._GimpContext*, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @image_duplicate_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %new_image = alloca %struct._GimpImage*, align 8
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
  %call1 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %2)
  store %struct._GimpImage* %call1, %struct._GimpImage** %image, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call2 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %3)
  store %struct._GimpDisplayShell* %call2, %struct._GimpDisplayShell** %shell, align 8
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call3 = call %struct._GimpImage* @gimp_image_duplicate(%struct._GimpImage* %4)
  store %struct._GimpImage* %call3, %struct._GimpImage** %new_image, align 8
  %5 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %7 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %8 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %unit = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %8, i32 0, i32 10
  %9 = load i32, i32* %unit, align 4
  %10 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %zoom = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %10, i32 0, i32 22
  %11 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %zoom, align 8
  %call4 = call double @gimp_zoom_model_get_factor(%struct._GimpZoomModel* %11)
  %call5 = call %struct._GimpObject* @gimp_create_display(%struct._Gimp* %6, %struct._GimpImage* %7, i32 %9, double %call4)
  %12 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %13 = bitcast %struct._GimpImage* %12 to i8*
  call void @g_object_unref(i8* %13)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare %struct._GimpImage* @gimp_image_duplicate(%struct._GimpImage*) #1

declare %struct._GimpObject* @gimp_create_display(%struct._Gimp*, %struct._GimpImage*, i32, double) #1

declare double @gimp_zoom_model_get_factor(%struct._GimpZoomModel*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define void @image_merge_layers_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %dialog = alloca %struct._ImageMergeLayersDialog*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
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
  %call1 = call %struct._GtkWidget* @action_data_get_widget(i8* %2)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %widget, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool2 = icmp ne %struct._GtkWidget* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %5 = load i8*, i8** %data.addr, align 8
  %call5 = call %struct._GimpContext* @action_data_get_context(i8* %5)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %7 = load i32, i32* @image_merge_layers_type, align 4
  %8 = load i32, i32* @image_merge_layers_merge_active_group, align 4
  %9 = load i32, i32* @image_merge_layers_discard_invisible, align 4
  %call6 = call %struct._ImageMergeLayersDialog* @image_merge_layers_dialog_new(%struct._GimpImage* %4, %struct._GimpContext* %call5, %struct._GtkWidget* %6, i32 %7, i32 %8, i32 %9)
  store %struct._ImageMergeLayersDialog* %call6, %struct._ImageMergeLayersDialog** %dialog, align 8
  %10 = load %struct._ImageMergeLayersDialog*, %struct._ImageMergeLayersDialog** %dialog, align 8
  %dialog7 = getelementptr inbounds %struct._ImageMergeLayersDialog, %struct._ImageMergeLayersDialog* %10, i32 0, i32 0
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog7, align 8
  %12 = bitcast %struct._GtkWidget* %11 to i8*
  %13 = load %struct._ImageMergeLayersDialog*, %struct._ImageMergeLayersDialog** %dialog, align 8
  %14 = bitcast %struct._ImageMergeLayersDialog* %13 to i8*
  %call8 = call i64 @g_signal_connect_data(i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._ImageMergeLayersDialog*)* @image_merge_layers_response to void ()*), i8* %14, void (i8*, %struct._GClosure*)* null, i32 0)
  %15 = load %struct._ImageMergeLayersDialog*, %struct._ImageMergeLayersDialog** %dialog, align 8
  %dialog9 = getelementptr inbounds %struct._ImageMergeLayersDialog, %struct._ImageMergeLayersDialog* %15, i32 0, i32 0
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog9, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %16)
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  ret void
}

declare %struct._ImageMergeLayersDialog* @image_merge_layers_dialog_new(%struct._GimpImage*, %struct._GimpContext*, %struct._GtkWidget*, i32, i32, i32) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @image_merge_layers_response(%struct._GtkWidget* %widget, i32 %response_id, %struct._ImageMergeLayersDialog* %dialog) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %dialog.addr = alloca %struct._ImageMergeLayersDialog*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._ImageMergeLayersDialog* %dialog, %struct._ImageMergeLayersDialog** %dialog.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._ImageMergeLayersDialog*, %struct._ImageMergeLayersDialog** %dialog.addr, align 8
  %merge_type = getelementptr inbounds %struct._ImageMergeLayersDialog, %struct._ImageMergeLayersDialog* %1, i32 0, i32 3
  %2 = load i32, i32* %merge_type, align 4
  store i32 %2, i32* @image_merge_layers_type, align 4
  %3 = load %struct._ImageMergeLayersDialog*, %struct._ImageMergeLayersDialog** %dialog.addr, align 8
  %merge_active_group = getelementptr inbounds %struct._ImageMergeLayersDialog, %struct._ImageMergeLayersDialog* %3, i32 0, i32 4
  %4 = load i32, i32* %merge_active_group, align 4
  store i32 %4, i32* @image_merge_layers_merge_active_group, align 4
  %5 = load %struct._ImageMergeLayersDialog*, %struct._ImageMergeLayersDialog** %dialog.addr, align 8
  %discard_invisible = getelementptr inbounds %struct._ImageMergeLayersDialog, %struct._ImageMergeLayersDialog* %5, i32 0, i32 5
  %6 = load i32, i32* %discard_invisible, align 4
  store i32 %6, i32* @image_merge_layers_discard_invisible, align 4
  %7 = load %struct._ImageMergeLayersDialog*, %struct._ImageMergeLayersDialog** %dialog.addr, align 8
  %image = getelementptr inbounds %struct._ImageMergeLayersDialog, %struct._ImageMergeLayersDialog* %7, i32 0, i32 1
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %9 = load %struct._ImageMergeLayersDialog*, %struct._ImageMergeLayersDialog** %dialog.addr, align 8
  %context = getelementptr inbounds %struct._ImageMergeLayersDialog, %struct._ImageMergeLayersDialog* %9, i32 0, i32 2
  %10 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %11 = load i32, i32* @image_merge_layers_type, align 4
  %12 = load i32, i32* @image_merge_layers_merge_active_group, align 4
  %13 = load i32, i32* @image_merge_layers_discard_invisible, align 4
  %call = call %struct._GimpLayer* @gimp_image_merge_visible_layers(%struct._GimpImage* %8, %struct._GimpContext* %10, i32 %11, i32 %12, i32 %13)
  %14 = load %struct._ImageMergeLayersDialog*, %struct._ImageMergeLayersDialog** %dialog.addr, align 8
  %image1 = getelementptr inbounds %struct._ImageMergeLayersDialog, %struct._ImageMergeLayersDialog* %14, i32 0, i32 1
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image1, align 8
  call void @gimp_image_flush(%struct._GimpImage* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %16)
  ret void
}

; Function Attrs: nounwind uwtable
define void @image_flatten_image_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
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
  %call1 = call %struct._GtkWidget* @action_data_get_widget(i8* %2)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %widget, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool2 = icmp ne %struct._GtkWidget* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %5 = load i8*, i8** %data.addr, align 8
  %call5 = call %struct._GimpContext* @action_data_get_context(i8* %5)
  %call6 = call %struct._GimpLayer* @gimp_image_flatten(%struct._GimpImage* %4, %struct._GimpContext* %call5, %struct._GError** %error)
  %tobool7 = icmp ne %struct._GimpLayer* %call6, null
  br i1 %tobool7, label %if.end.10, label %if.then.8

if.then.8:                                        ; preds = %if.end.4
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %6, i32 0, i32 1
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 80)
  %10 = bitcast %struct._GTypeInstance* %call9 to %struct._GObject*
  %11 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %11, i32 0, i32 2
  %12 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %7, %struct._GObject* %10, i32 1, i8* %12)
  call void @g_clear_error(%struct._GError** %error)
  br label %return

if.end.10:                                        ; preds = %if.end.4
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %13)
  br label %return

return:                                           ; preds = %if.end.10, %if.then.8, %if.then.3, %if.then
  ret void
}

declare %struct._GimpLayer* @gimp_image_flatten(%struct._GimpImage*, %struct._GimpContext*, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define void @image_configure_grid_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %image = alloca %struct._GimpImage*, align 8
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
  %call1 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %2)
  store %struct._GimpImage* %call1, %struct._GimpImage** %image, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call2 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %3)
  store %struct._GimpDisplayShell* %call2, %struct._GimpDisplayShell** %shell, align 8
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %grid_dialog = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %4, i32 0, i32 76
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %grid_dialog, align 8
  %tobool3 = icmp ne %struct._GtkWidget* %5, null
  br i1 %tobool3, label %if.end.24, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = load i8*, i8** %data.addr, align 8
  %call5 = call %struct._GimpContext* @action_data_get_context(i8* %7)
  %8 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %9 = bitcast %struct._GimpDisplayShell* %8 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_widget_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call6)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkWidget*
  %call8 = call %struct._GtkWidget* @grid_dialog_new(%struct._GimpImage* %6, %struct._GimpContext* %call5, %struct._GtkWidget* %10)
  %11 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %grid_dialog9 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %11, i32 0, i32 76
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %grid_dialog9, align 8
  %12 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %grid_dialog10 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %12, i32 0, i32 76
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %grid_dialog10, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_window_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkWindow*
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %17 = bitcast %struct._GimpDisplayShell* %16 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_widget_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call13)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkWidget*
  %call15 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %18)
  %19 = bitcast %struct._GtkWidget* %call15 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_window_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call16)
  %20 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkWindow*
  call void @gtk_window_set_transient_for(%struct._GtkWindow* %15, %struct._GtkWindow* %20)
  %21 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %grid_dialog18 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %21, i32 0, i32 76
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %grid_dialog18, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_window_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call19)
  %24 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkWindow*
  call void @gtk_window_set_destroy_with_parent(%struct._GtkWindow* %24, i32 1)
  %25 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %grid_dialog21 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %25, i32 0, i32 76
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %grid_dialog21, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 80)
  %28 = bitcast %struct._GTypeInstance* %call22 to %struct._GObject*
  %29 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %grid_dialog23 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %29, i32 0, i32 76
  %30 = bitcast %struct._GtkWidget** %grid_dialog23 to i8*
  %31 = bitcast i8* %30 to i8**
  call void @g_object_add_weak_pointer(%struct._GObject* %28, i8** %31)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.4, %if.end
  %32 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %grid_dialog25 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %32, i32 0, i32 76
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %grid_dialog25, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_window_get_type() #5
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call26)
  %35 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %35)
  br label %return

return:                                           ; preds = %if.end.24, %if.then
  ret void
}

declare %struct._GtkWidget* @grid_dialog_new(%struct._GimpImage*, %struct._GimpContext*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare void @gtk_window_set_transient_for(%struct._GtkWindow*, %struct._GtkWindow*) #1

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

declare void @gtk_window_set_destroy_with_parent(%struct._GtkWindow*, i32) #1

declare void @g_object_add_weak_pointer(%struct._GObject*, i8**) #1

; Function Attrs: nounwind uwtable
define void @image_properties_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
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
  %call1 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %2)
  store %struct._GimpImage* %call1, %struct._GimpImage** %image, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call2 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %3)
  store %struct._GimpDisplayShell* %call2, %struct._GimpDisplayShell** %shell, align 8
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %5 = load i8*, i8** %data.addr, align 8
  %call3 = call %struct._GimpContext* @action_data_get_context(i8* %5)
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %7 = bitcast %struct._GimpDisplayShell* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_widget_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWidget*
  %call6 = call %struct._GtkWidget* @image_properties_dialog_new(%struct._GimpImage* %4, %struct._GimpContext* %call3, %struct._GtkWidget* %8)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %dialog, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_window_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkWindow*
  %12 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %13 = bitcast %struct._GimpDisplayShell* %12 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_widget_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call9)
  %14 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkWidget*
  %call11 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %14)
  %15 = bitcast %struct._GtkWidget* %call11 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_window_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call12)
  %16 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkWindow*
  call void @gtk_window_set_transient_for(%struct._GtkWindow* %11, %struct._GtkWindow* %16)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_window_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call14)
  %19 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkWindow*
  call void @gtk_window_set_destroy_with_parent(%struct._GtkWindow* %19, i32 1)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_window_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call16)
  %22 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %22)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare %struct._GtkWidget* @image_properties_dialog_new(%struct._GimpImage*, %struct._GimpContext*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #2

declare i32 @gimp_image_get_width(%struct._GimpImage*) #1

declare i32 @gimp_image_get_height(%struct._GimpImage*) #1

declare void @gimp_image_resize_with_layers(%struct._GimpImage*, %struct._GimpContext*, i32, i32, i32, i32, i32, %struct._GimpProgress*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare void @g_slice_free1(i64, i8*) #1

declare void @gimp_image_get_resolution(%struct._GimpImage*, double*, double*) #1

declare i32 @gimp_image_get_unit(%struct._GimpImage*) #1

declare i32 @gimp_image_undo_group_start(%struct._GimpImage*, i32, i8*) #1

declare void @gimp_image_set_resolution(%struct._GimpImage*, double, double) #1

declare void @gimp_image_set_unit(%struct._GimpImage*, i32) #1

declare i32 @gimp_image_undo_group_end(%struct._GimpImage*) #1

declare void @gimp_image_scale(%struct._GimpImage*, i32, i32, i32, %struct._GimpProgress*) #1

declare %struct._GimpLayer* @gimp_image_merge_visible_layers(%struct._GimpImage*, %struct._GimpContext*, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
