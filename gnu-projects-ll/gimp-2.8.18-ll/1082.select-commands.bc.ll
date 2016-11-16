; ModuleID = './app/actions/select-commands.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkActionPrivate = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
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
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GeglNode = type opaque
%struct._BoundSeg = type opaque
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
%struct._GError = type { i32, i32, i8* }
%struct._GimpSelection = type { %struct._GimpChannel, i32 }
%struct._GimpLayer = type opaque
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpDisplayConfig = type opaque
%struct._GimpDisplayShell = type { %struct._GtkBox, %struct._GimpDisplay*, %struct._GimpUIManager*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct._GimpZoomModel*, double, i32, i32, i32, double, i32, i32, i32, %struct._Selection*, %struct._GList*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._cairo_surface*, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, i32, i8*, i8*, i32, i32, %struct._GdkPixbuf*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpColorDisplayStack*, i32, %struct._GtkWidget*, i32, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, %struct._GimpDrawable*, %struct._GimpRGB, %struct._GimpMotionBuffer*, %struct._GQueue* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GimpUIManager = type opaque
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
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GimpWindowStrategy = type opaque
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpStrokeOptions = type { %struct._GimpFillOptions }
%struct._GimpFillOptions = type { %struct._GimpContext }
%struct._GimpPaintOptions = type opaque

@.str = private unnamed_addr constant [18 x i8] c"Feather Selection\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"gimp-selection-feather\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Feather selection by\00", align 1
@select_feather_radius = internal global double 5.000000e+00, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"disconnect\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Shrink Selection\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"gimp-selection-shrink\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Shrink selection by\00", align 1
@select_shrink_pixels = internal global i32 1, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"_Shrink from image border\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"gimp-query-box-vbox\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"edge-lock-toggle\00", align 1
@select_shrink_edge_lock = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"Grow Selection\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"gimp-selection-grow\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"Grow selection by\00", align 1
@select_grow_pixels = internal global i32 1, align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"Border Selection\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"gimp-selection-border\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"Border selection by\00", align 1
@select_border_radius = internal global i32 5, align 4
@.str.16 = private unnamed_addr constant [16 x i8] c"_Feather border\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"border-feather-toggle\00", align 1
@select_border_feather = internal global i32 0, align 4
@.str.18 = private unnamed_addr constant [31 x i8] c"_Lock selection to image edges\00", align 1
@select_border_edge_lock = internal global i32 0, align 4
@.str.19 = private unnamed_addr constant [18 x i8] c"gimp-channel-list\00", align 1
@.str.20 = private unnamed_addr constant [50 x i8] c"There is no active layer or channel to stroke to.\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"Stroke Selection\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"gimp-selection-stroke\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"saved-stroke-options\00", align 1

; Function Attrs: nounwind uwtable
define void @select_invert_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
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
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %2)
  call void @gimp_channel_invert(%struct._GimpChannel* %call1, i32 1)
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %3)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare %struct._GimpImage* @action_data_get_image(i8*) #1

declare void @gimp_channel_invert(%struct._GimpChannel*, i32) #1

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #1

declare void @gimp_image_flush(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define void @select_all_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
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
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %2)
  call void @gimp_channel_all(%struct._GimpChannel* %call1, i32 1)
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %3)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @gimp_channel_all(%struct._GimpChannel*, i32) #1

; Function Attrs: nounwind uwtable
define void @select_none_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
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
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %2)
  call void @gimp_channel_clear(%struct._GimpChannel* %call1, i8* null, i32 1)
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %3)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @gimp_channel_clear(%struct._GimpChannel*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @select_float_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
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
  br label %if.end.14

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8
  %call1 = call %struct._GtkWidget* @action_data_get_widget(i8* %2)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %widget, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool2 = icmp ne %struct._GtkWidget* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %if.end.14

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call5 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %4)
  %5 = bitcast %struct._GimpChannel* %call5 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_selection_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call6)
  %6 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpSelection*
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call8 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %7)
  %8 = load i8*, i8** %data.addr, align 8
  %call9 = call %struct._GimpContext* @action_data_get_context(i8* %8)
  %call10 = call %struct._GimpLayer* @gimp_selection_float(%struct._GimpSelection* %6, %struct._GimpDrawable* %call8, %struct._GimpContext* %call9, i32 1, i32 0, i32 0, %struct._GError** %error)
  %tobool11 = icmp ne %struct._GimpLayer* %call10, null
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end.4
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %9)
  br label %if.end.14

if.else:                                          ; preds = %if.end.4
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %10, i32 0, i32 1
  %11 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 80)
  %14 = bitcast %struct._GTypeInstance* %call13 to %struct._GObject*
  %15 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %15, i32 0, i32 2
  %16 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %11, %struct._GObject* %14, i32 1, i8* %16)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then, %if.then.3, %if.else, %if.then.12
  ret void
}

declare %struct._GtkWidget* @action_data_get_widget(i8*) #1

declare %struct._GimpLayer* @gimp_selection_float(%struct._GimpSelection*, %struct._GimpDrawable*, %struct._GimpContext*, i32, i32, i32, %struct._GError**) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_selection_get_type() #2

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #1

declare %struct._GimpContext* @action_data_get_context(i8*) #1

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #1

declare void @g_clear_error(%struct._GError**) #1

; Function Attrs: nounwind uwtable
define void @select_feather_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
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
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %3, double* %xres, double* %yres)
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0)) #5
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call3 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %4)
  %5 = bitcast %struct._GimpDisplayShell* %call3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_widget_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWidget*
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)) #5
  %7 = load double, double* @select_feather_radius, align 8
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call7 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %8)
  %unit = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %call7, i32 0, i32 10
  %9 = load i32, i32* %unit, align 4
  %10 = load double, double* %xres, align 8
  %11 = load double, double* %yres, align 8
  %cmp = fcmp olt double %10, %11
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %12 = load double, double* %xres, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %13 = load double, double* %yres, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %12, %cond.true ], [ %13, %cond.false ]
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %15 = bitcast %struct._GimpImage* %14 to %struct._GTypeInstance*
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 80)
  %16 = bitcast %struct._GTypeInstance* %call8 to %struct._GObject*
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %18 = bitcast %struct._GimpImage* %17 to i8*
  %call9 = call %struct._GtkWidget* @gimp_query_size_box(i8* %call2, %struct._GtkWidget* %6, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i8* %call6, double %7, double 0.000000e+00, double 3.276700e+04, i32 3, i32 %9, double %cond, i32 0, %struct._GObject* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), void (%struct._GtkWidget*, double, i32, i8*)* @select_feather_callback, i8* %18)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %dialog, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %19)
  br label %return

return:                                           ; preds = %cond.end, %if.then
  ret void
}

declare %struct._GimpDisplay* @action_data_get_display(i8*) #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare void @gimp_image_get_resolution(%struct._GimpImage*, double*, double*) #1

declare %struct._GtkWidget* @gimp_query_size_box(i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, i8*, double, double, double, i32, i32, double, i32, %struct._GObject*, i8*, void (%struct._GtkWidget*, double, i32, i8*)*, i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare void @gimp_standard_help_func(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @select_feather_callback(%struct._GtkWidget* %widget, double %size, i32 %unit, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %size.addr = alloca double, align 8
  %unit.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %radius_x = alloca double, align 8
  %radius_y = alloca double, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %factor = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store double %size, double* %size.addr, align 8
  store i32 %unit, i32* %unit.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImage*
  store %struct._GimpImage* %2, %struct._GimpImage** %image, align 8
  %3 = load double, double* %size.addr, align 8
  store double %3, double* @select_feather_radius, align 8
  store double %3, double* %radius_y, align 8
  store double %3, double* %radius_x, align 8
  %4 = load i32, i32* %unit.addr, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %5, double* %xres, double* %yres)
  %6 = load double, double* %xres, align 8
  %7 = load double, double* %yres, align 8
  %cmp2 = fcmp ogt double %6, %7
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %8 = load double, double* %xres, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %9 = load double, double* %yres, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %8, %cond.true ], [ %9, %cond.false ]
  %10 = load double, double* %xres, align 8
  %11 = load double, double* %yres, align 8
  %cmp3 = fcmp olt double %10, %11
  br i1 %cmp3, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %cond.end
  %12 = load double, double* %xres, align 8
  br label %cond.end.6

cond.false.5:                                     ; preds = %cond.end
  %13 = load double, double* %yres, align 8
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.false.5, %cond.true.4
  %cond7 = phi double [ %12, %cond.true.4 ], [ %13, %cond.false.5 ]
  %div = fdiv double %cond, %cond7
  store double %div, double* %factor, align 8
  %14 = load double, double* %xres, align 8
  %15 = load double, double* %xres, align 8
  %16 = load double, double* %yres, align 8
  %cmp8 = fcmp olt double %15, %16
  br i1 %cmp8, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %cond.end.6
  %17 = load double, double* %xres, align 8
  br label %cond.end.11

cond.false.10:                                    ; preds = %cond.end.6
  %18 = load double, double* %yres, align 8
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.10, %cond.true.9
  %cond12 = phi double [ %17, %cond.true.9 ], [ %18, %cond.false.10 ]
  %cmp13 = fcmp oeq double %14, %cond12
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %cond.end.11
  %19 = load double, double* %factor, align 8
  %20 = load double, double* %radius_y, align 8
  %mul = fmul double %20, %19
  store double %mul, double* %radius_y, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end.11
  %21 = load double, double* %factor, align 8
  %22 = load double, double* %radius_x, align 8
  %mul15 = fmul double %22, %21
  store double %mul15, double* %radius_x, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.14
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %entry
  %23 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call17 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %23)
  %24 = load double, double* %radius_x, align 8
  %25 = load double, double* %radius_y, align 8
  call void @gimp_channel_feather(%struct._GimpChannel* %call17, double %24, double %25, i32 1)
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %26)
  ret void
}

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @select_sharpen_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
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
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %2)
  call void @gimp_channel_sharpen(%struct._GimpChannel* %call1, i32 1)
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %3)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @gimp_channel_sharpen(%struct._GimpChannel*, i32) #1

; Function Attrs: nounwind uwtable
define void @select_shrink_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
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
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %3, double* %xres, double* %yres)
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0)) #5
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call3 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %4)
  %5 = bitcast %struct._GimpDisplayShell* %call3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_widget_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWidget*
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0)) #5
  %7 = load i32, i32* @select_shrink_pixels, align 4
  %conv = sitofp i32 %7 to double
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call7 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %8)
  %unit = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %call7, i32 0, i32 10
  %9 = load i32, i32* %unit, align 4
  %10 = load double, double* %xres, align 8
  %11 = load double, double* %yres, align 8
  %cmp = fcmp olt double %10, %11
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %12 = load double, double* %xres, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %13 = load double, double* %yres, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %12, %cond.true ], [ %13, %cond.false ]
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %15 = bitcast %struct._GimpImage* %14 to %struct._GTypeInstance*
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 80)
  %16 = bitcast %struct._GTypeInstance* %call9 to %struct._GObject*
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %18 = bitcast %struct._GimpImage* %17 to i8*
  %call10 = call %struct._GtkWidget* @gimp_query_size_box(i8* %call2, %struct._GtkWidget* %6, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i8* %call6, double %conv, double 1.000000e+00, double 3.276700e+04, i32 0, i32 %9, double %cond, i32 0, %struct._GObject* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), void (%struct._GtkWidget*, double, i32, i8*)* @select_shrink_callback, i8* %18)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %dialog, align 8
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0)) #5
  %call12 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call11)
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %button, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 80)
  %21 = bitcast %struct._GTypeInstance* %call13 to %struct._GObject*
  %call14 = call i8* @g_object_get_data(%struct._GObject* %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0))
  %22 = bitcast i8* %call14 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #4
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call15)
  %23 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %23, %struct._GtkWidget* %24, i32 0, i32 0, i32 0)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 80)
  %27 = bitcast %struct._GTypeInstance* %call17 to %struct._GObject*
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %29 = bitcast %struct._GtkWidget* %28 to i8*
  call void @g_object_set_data(%struct._GObject* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i8* %29)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_toggle_button_get_type() #4
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call18)
  %32 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkToggleButton*
  %33 = load i32, i32* @select_shrink_edge_lock, align 4
  %tobool20 = icmp ne i32 %33, 0
  %lnot = xor i1 %tobool20, true
  %lnot.ext = zext i1 %lnot to i32
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %32, i32 %lnot.ext)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %34)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %35)
  br label %return

return:                                           ; preds = %cond.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @select_shrink_callback(%struct._GtkWidget* %widget, double %size, i32 %unit, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %size.addr = alloca double, align 8
  %unit.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %radius_x = alloca i32, align 4
  %radius_y = alloca i32, align 4
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %factor = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store double %size, double* %size.addr, align 8
  store i32 %unit, i32* %unit.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImage*
  store %struct._GimpImage* %2, %struct._GimpImage** %image, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 80)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %call3 = call i8* @g_object_get_data(%struct._GObject* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0))
  %6 = bitcast i8* %call3 to %struct._GtkWidget*
  store %struct._GtkWidget* %6, %struct._GtkWidget** %button, align 8
  %7 = load double, double* %size.addr, align 8
  %add = fadd double %7, 5.000000e-01
  %conv = fptosi double %add to i32
  store i32 %conv, i32* @select_shrink_pixels, align 4
  store i32 %conv, i32* %radius_y, align 4
  store i32 %conv, i32* %radius_x, align 4
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_toggle_button_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkToggleButton*
  %call6 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %10)
  %tobool = icmp ne i32 %call6, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* @select_shrink_edge_lock, align 4
  %11 = load i32, i32* %unit.addr, align 4
  %cmp = icmp ne i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end.30

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %12, double* %xres, double* %yres)
  %13 = load double, double* %xres, align 8
  %14 = load double, double* %yres, align 8
  %cmp8 = fcmp ogt double %13, %14
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %15 = load double, double* %xres, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %16 = load double, double* %yres, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %15, %cond.true ], [ %16, %cond.false ]
  %17 = load double, double* %xres, align 8
  %18 = load double, double* %yres, align 8
  %cmp10 = fcmp olt double %17, %18
  br i1 %cmp10, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %cond.end
  %19 = load double, double* %xres, align 8
  br label %cond.end.14

cond.false.13:                                    ; preds = %cond.end
  %20 = load double, double* %yres, align 8
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.13, %cond.true.12
  %cond15 = phi double [ %19, %cond.true.12 ], [ %20, %cond.false.13 ]
  %div = fdiv double %cond, %cond15
  store double %div, double* %factor, align 8
  %21 = load double, double* %xres, align 8
  %22 = load double, double* %xres, align 8
  %23 = load double, double* %yres, align 8
  %cmp16 = fcmp olt double %22, %23
  br i1 %cmp16, label %cond.true.18, label %cond.false.19

cond.true.18:                                     ; preds = %cond.end.14
  %24 = load double, double* %xres, align 8
  br label %cond.end.20

cond.false.19:                                    ; preds = %cond.end.14
  %25 = load double, double* %yres, align 8
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.19, %cond.true.18
  %cond21 = phi double [ %24, %cond.true.18 ], [ %25, %cond.false.19 ]
  %cmp22 = fcmp oeq double %21, %cond21
  br i1 %cmp22, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %cond.end.20
  %26 = load double, double* %factor, align 8
  %27 = load i32, i32* %radius_y, align 4
  %conv25 = sitofp i32 %27 to double
  %mul = fmul double %conv25, %26
  %conv26 = fptosi double %mul to i32
  store i32 %conv26, i32* %radius_y, align 4
  br label %if.end

if.else:                                          ; preds = %cond.end.20
  %28 = load double, double* %factor, align 8
  %29 = load i32, i32* %radius_x, align 4
  %conv27 = sitofp i32 %29 to double
  %mul28 = fmul double %conv27, %28
  %conv29 = fptosi double %mul28 to i32
  store i32 %conv29, i32* %radius_x, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.24
  br label %if.end.30

if.end.30:                                        ; preds = %if.end, %entry
  %30 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call31 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %30)
  %31 = load i32, i32* %radius_x, align 4
  %32 = load i32, i32* %radius_y, align 4
  %33 = load i32, i32* @select_shrink_edge_lock, align 4
  call void @gimp_channel_shrink(%struct._GimpChannel* %call31, i32 %31, i32 %32, i32 %33, i32 1)
  %34 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %34)
  ret void
}

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #2

; Function Attrs: nounwind uwtable
define void @select_grow_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
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
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %3, double* %xres, double* %yres)
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0)) #5
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call3 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %4)
  %5 = bitcast %struct._GimpDisplayShell* %call3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_widget_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWidget*
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0)) #5
  %7 = load i32, i32* @select_grow_pixels, align 4
  %conv = sitofp i32 %7 to double
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call7 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %8)
  %unit = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %call7, i32 0, i32 10
  %9 = load i32, i32* %unit, align 4
  %10 = load double, double* %xres, align 8
  %11 = load double, double* %yres, align 8
  %cmp = fcmp olt double %10, %11
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %12 = load double, double* %xres, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %13 = load double, double* %yres, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %12, %cond.true ], [ %13, %cond.false ]
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %15 = bitcast %struct._GimpImage* %14 to %struct._GTypeInstance*
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 80)
  %16 = bitcast %struct._GTypeInstance* %call9 to %struct._GObject*
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %18 = bitcast %struct._GimpImage* %17 to i8*
  %call10 = call %struct._GtkWidget* @gimp_query_size_box(i8* %call2, %struct._GtkWidget* %6, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), i8* %call6, double %conv, double 1.000000e+00, double 3.276700e+04, i32 0, i32 %9, double %cond, i32 0, %struct._GObject* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), void (%struct._GtkWidget*, double, i32, i8*)* @select_grow_callback, i8* %18)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %dialog, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %19)
  br label %return

return:                                           ; preds = %cond.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @select_grow_callback(%struct._GtkWidget* %widget, double %size, i32 %unit, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %size.addr = alloca double, align 8
  %unit.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %radius_x = alloca double, align 8
  %radius_y = alloca double, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %factor = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store double %size, double* %size.addr, align 8
  store i32 %unit, i32* %unit.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImage*
  store %struct._GimpImage* %2, %struct._GimpImage** %image, align 8
  %3 = load double, double* %size.addr, align 8
  %add = fadd double %3, 5.000000e-01
  %conv = fptosi double %add to i32
  store i32 %conv, i32* @select_grow_pixels, align 4
  %conv2 = sitofp i32 %conv to double
  store double %conv2, double* %radius_y, align 8
  store double %conv2, double* %radius_x, align 8
  %4 = load i32, i32* %unit.addr, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end.22

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %5, double* %xres, double* %yres)
  %6 = load double, double* %xres, align 8
  %7 = load double, double* %yres, align 8
  %cmp4 = fcmp ogt double %6, %7
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %8 = load double, double* %xres, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %9 = load double, double* %yres, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %8, %cond.true ], [ %9, %cond.false ]
  %10 = load double, double* %xres, align 8
  %11 = load double, double* %yres, align 8
  %cmp6 = fcmp olt double %10, %11
  br i1 %cmp6, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.end
  %12 = load double, double* %xres, align 8
  br label %cond.end.10

cond.false.9:                                     ; preds = %cond.end
  %13 = load double, double* %yres, align 8
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.9, %cond.true.8
  %cond11 = phi double [ %12, %cond.true.8 ], [ %13, %cond.false.9 ]
  %div = fdiv double %cond, %cond11
  store double %div, double* %factor, align 8
  %14 = load double, double* %xres, align 8
  %15 = load double, double* %xres, align 8
  %16 = load double, double* %yres, align 8
  %cmp12 = fcmp olt double %15, %16
  br i1 %cmp12, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %cond.end.10
  %17 = load double, double* %xres, align 8
  br label %cond.end.16

cond.false.15:                                    ; preds = %cond.end.10
  %18 = load double, double* %yres, align 8
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.15, %cond.true.14
  %cond17 = phi double [ %17, %cond.true.14 ], [ %18, %cond.false.15 ]
  %cmp18 = fcmp oeq double %14, %cond17
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %cond.end.16
  %19 = load double, double* %factor, align 8
  %20 = load double, double* %radius_y, align 8
  %mul = fmul double %20, %19
  store double %mul, double* %radius_y, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end.16
  %21 = load double, double* %factor, align 8
  %22 = load double, double* %radius_x, align 8
  %mul21 = fmul double %22, %21
  store double %mul21, double* %radius_x, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.20
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %entry
  %23 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call23 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %23)
  %24 = load double, double* %radius_x, align 8
  %conv24 = fptosi double %24 to i32
  %25 = load double, double* %radius_y, align 8
  %conv25 = fptosi double %25 to i32
  call void @gimp_channel_grow(%struct._GimpChannel* %call23, i32 %conv24, i32 %conv25, i32 1)
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %26)
  ret void
}

; Function Attrs: nounwind uwtable
define void @select_border_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
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
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %3, double* %xres, double* %yres)
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0)) #5
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call3 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %4)
  %5 = bitcast %struct._GimpDisplayShell* %call3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_widget_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWidget*
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0)) #5
  %7 = load i32, i32* @select_border_radius, align 4
  %conv = sitofp i32 %7 to double
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call7 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %8)
  %unit = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %call7, i32 0, i32 10
  %9 = load i32, i32* %unit, align 4
  %10 = load double, double* %xres, align 8
  %11 = load double, double* %yres, align 8
  %cmp = fcmp olt double %10, %11
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %12 = load double, double* %xres, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %13 = load double, double* %yres, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %12, %cond.true ], [ %13, %cond.false ]
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %15 = bitcast %struct._GimpImage* %14 to %struct._GTypeInstance*
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 80)
  %16 = bitcast %struct._GTypeInstance* %call9 to %struct._GObject*
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %18 = bitcast %struct._GimpImage* %17 to i8*
  %call10 = call %struct._GtkWidget* @gimp_query_size_box(i8* %call2, %struct._GtkWidget* %6, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i8* %call6, double %conv, double 1.000000e+00, double 3.276700e+04, i32 0, i32 %9, double %cond, i32 0, %struct._GObject* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), void (%struct._GtkWidget*, double, i32, i8*)* @select_border_callback, i8* %18)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %dialog, align 8
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0)) #5
  %call12 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call11)
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %button, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 80)
  %21 = bitcast %struct._GTypeInstance* %call13 to %struct._GObject*
  %call14 = call i8* @g_object_get_data(%struct._GObject* %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0))
  %22 = bitcast i8* %call14 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #4
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call15)
  %23 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %23, %struct._GtkWidget* %24, i32 0, i32 0, i32 0)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 80)
  %27 = bitcast %struct._GTypeInstance* %call17 to %struct._GObject*
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %29 = bitcast %struct._GtkWidget* %28 to i8*
  call void @g_object_set_data(%struct._GObject* %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0), i8* %29)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_toggle_button_get_type() #4
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call18)
  %32 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkToggleButton*
  %33 = load i32, i32* @select_border_feather, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %32, i32 %33)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %34)
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i32 0, i32 0)) #5
  %call21 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call20)
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %button, align 8
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 80)
  %37 = bitcast %struct._GTypeInstance* %call22 to %struct._GObject*
  %call23 = call i8* @g_object_get_data(%struct._GObject* %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0))
  %38 = bitcast i8* %call23 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_box_get_type() #4
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call24)
  %39 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkBox*
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %39, %struct._GtkWidget* %40, i32 0, i32 0, i32 0)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 80)
  %43 = bitcast %struct._GTypeInstance* %call26 to %struct._GObject*
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %45 = bitcast %struct._GtkWidget* %44 to i8*
  call void @g_object_set_data(%struct._GObject* %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i8* %45)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_toggle_button_get_type() #4
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call27)
  %48 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkToggleButton*
  %49 = load i32, i32* @select_border_edge_lock, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %48, i32 %49)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %50)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %51)
  br label %return

return:                                           ; preds = %cond.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @select_border_callback(%struct._GtkWidget* %widget, double %size, i32 %unit, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %size.addr = alloca double, align 8
  %unit.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %feather_button = alloca %struct._GtkWidget*, align 8
  %edge_lock_button = alloca %struct._GtkWidget*, align 8
  %radius_x = alloca double, align 8
  %radius_y = alloca double, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %factor = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store double %size, double* %size.addr, align 8
  store i32 %unit, i32* %unit.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImage*
  store %struct._GimpImage* %2, %struct._GimpImage** %image, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 80)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %call3 = call i8* @g_object_get_data(%struct._GObject* %5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0))
  %6 = bitcast i8* %call3 to %struct._GtkWidget*
  store %struct._GtkWidget* %6, %struct._GtkWidget** %feather_button, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 80)
  %9 = bitcast %struct._GTypeInstance* %call4 to %struct._GObject*
  %call5 = call i8* @g_object_get_data(%struct._GObject* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0))
  %10 = bitcast i8* %call5 to %struct._GtkWidget*
  store %struct._GtkWidget* %10, %struct._GtkWidget** %edge_lock_button, align 8
  %11 = load double, double* %size.addr, align 8
  %add = fadd double %11, 5.000000e-01
  %conv = fptosi double %add to i32
  store i32 %conv, i32* @select_border_radius, align 4
  %conv6 = sitofp i32 %conv to double
  store double %conv6, double* %radius_y, align 8
  store double %conv6, double* %radius_x, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %feather_button, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_toggle_button_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call7)
  %14 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkToggleButton*
  %call9 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %14)
  store i32 %call9, i32* @select_border_feather, align 4
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %edge_lock_button, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_toggle_button_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call10)
  %17 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkToggleButton*
  %call12 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %17)
  store i32 %call12, i32* @select_border_edge_lock, align 4
  %18 = load i32, i32* %unit.addr, align 4
  %cmp = icmp ne i32 %18, 0
  br i1 %cmp, label %if.then, label %if.end.32

if.then:                                          ; preds = %entry
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %19, double* %xres, double* %yres)
  %20 = load double, double* %xres, align 8
  %21 = load double, double* %yres, align 8
  %cmp14 = fcmp ogt double %20, %21
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %22 = load double, double* %xres, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %23 = load double, double* %yres, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %22, %cond.true ], [ %23, %cond.false ]
  %24 = load double, double* %xres, align 8
  %25 = load double, double* %yres, align 8
  %cmp16 = fcmp olt double %24, %25
  br i1 %cmp16, label %cond.true.18, label %cond.false.19

cond.true.18:                                     ; preds = %cond.end
  %26 = load double, double* %xres, align 8
  br label %cond.end.20

cond.false.19:                                    ; preds = %cond.end
  %27 = load double, double* %yres, align 8
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.19, %cond.true.18
  %cond21 = phi double [ %26, %cond.true.18 ], [ %27, %cond.false.19 ]
  %div = fdiv double %cond, %cond21
  store double %div, double* %factor, align 8
  %28 = load double, double* %xres, align 8
  %29 = load double, double* %xres, align 8
  %30 = load double, double* %yres, align 8
  %cmp22 = fcmp olt double %29, %30
  br i1 %cmp22, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %cond.end.20
  %31 = load double, double* %xres, align 8
  br label %cond.end.26

cond.false.25:                                    ; preds = %cond.end.20
  %32 = load double, double* %yres, align 8
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.25, %cond.true.24
  %cond27 = phi double [ %31, %cond.true.24 ], [ %32, %cond.false.25 ]
  %cmp28 = fcmp oeq double %28, %cond27
  br i1 %cmp28, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %cond.end.26
  %33 = load double, double* %factor, align 8
  %34 = load double, double* %radius_y, align 8
  %mul = fmul double %34, %33
  store double %mul, double* %radius_y, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end.26
  %35 = load double, double* %factor, align 8
  %36 = load double, double* %radius_x, align 8
  %mul31 = fmul double %36, %35
  store double %mul31, double* %radius_x, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.30
  br label %if.end.32

if.end.32:                                        ; preds = %if.end, %entry
  %37 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call33 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %37)
  %38 = load double, double* %radius_x, align 8
  %conv34 = fptosi double %38 to i32
  %39 = load double, double* %radius_y, align 8
  %conv35 = fptosi double %39 to i32
  %40 = load i32, i32* @select_border_feather, align 4
  %41 = load i32, i32* @select_border_edge_lock, align 4
  call void @gimp_channel_border(%struct._GimpChannel* %call33, i32 %conv34, i32 %conv35, i32 %40, i32 %41, i32 1)
  %42 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %42)
  ret void
}

; Function Attrs: nounwind uwtable
define void @select_save_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
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
  %call5 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %4)
  %5 = bitcast %struct._GimpChannel* %call5 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_selection_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call6)
  %6 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpSelection*
  %call8 = call %struct._GimpChannel* @gimp_selection_save(%struct._GimpSelection* %6)
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %7)
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %8, i32 0, i32 1
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call9 = call %struct._GimpObject* @gimp_get_window_strategy(%struct._Gimp* %9)
  %10 = bitcast %struct._GimpObject* %call9 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_window_strategy_interface_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call10)
  %11 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpWindowStrategy*
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp12 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %12, i32 0, i32 1
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp12, align 8
  %call13 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call14 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %14)
  %call15 = call %struct._GtkWidget* @gimp_window_strategy_show_dockable_dialog(%struct._GimpWindowStrategy* %11, %struct._Gimp* %13, %struct._GimpDialogFactory* %call13, %struct._GdkScreen* %call14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  ret void
}

declare %struct._GimpChannel* @gimp_selection_save(%struct._GimpSelection*) #1

declare %struct._GtkWidget* @gimp_window_strategy_show_dockable_dialog(%struct._GimpWindowStrategy*, %struct._Gimp*, %struct._GimpDialogFactory*, %struct._GdkScreen*, i8*) #1

declare %struct._GimpObject* @gimp_get_window_strategy(%struct._Gimp*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_window_strategy_interface_get_type() #2

declare %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton() #1

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @select_stroke_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
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
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call5 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %4)
  store %struct._GimpDrawable* %call5, %struct._GimpDrawable** %drawable, align 8
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool6 = icmp ne %struct._GimpDrawable* %5, null
  br i1 %tobool6, label %if.end.10, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %6, i32 0, i32 1
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 80)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GObject*
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.20, i32 0, i32 0)) #5
  call void @gimp_message_literal(%struct._Gimp* %7, %struct._GObject* %10, i32 1, i8* %call9)
  br label %return

if.end.10:                                        ; preds = %if.end.4
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call11 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %11)
  %12 = bitcast %struct._GimpChannel* %call11 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #4
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call12)
  %13 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %14 = load i8*, i8** %data.addr, align 8
  %call14 = call %struct._GimpContext* @action_data_get_context(i8* %14)
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0)) #5
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call16 = call %struct._GtkWidget* @stroke_dialog_new(%struct._GimpItem* %13, %struct._GimpContext* %call14, i8* %call15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0), %struct._GtkWidget* %15)
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %dialog, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %16)
  br label %return

return:                                           ; preds = %if.end.10, %if.then.7, %if.then.3, %if.then
  ret void
}

declare %struct._GtkWidget* @stroke_dialog_new(%struct._GimpItem*, %struct._GimpContext*, i8*, i8*, i8*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

; Function Attrs: nounwind uwtable
define void @select_stroke_last_vals_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %options = alloca %struct._GimpStrokeOptions*, align 8
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
  %call1 = call %struct._GimpContext* @action_data_get_context(i8* %2)
  store %struct._GimpContext* %call1, %struct._GimpContext** %context, align 8
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool2 = icmp ne %struct._GimpContext* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load i8*, i8** %data.addr, align 8
  %call5 = call %struct._GtkWidget* @action_data_get_widget(i8* %4)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %widget, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool6 = icmp ne %struct._GtkWidget* %5, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call9 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %6)
  store %struct._GimpDrawable* %call9, %struct._GimpDrawable** %drawable, align 8
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool10 = icmp ne %struct._GimpDrawable* %7, null
  br i1 %tobool10, label %if.end.14, label %if.then.11

if.then.11:                                       ; preds = %if.end.8
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %8, i32 0, i32 1
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 80)
  %12 = bitcast %struct._GTypeInstance* %call12 to %struct._GObject*
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.20, i32 0, i32 0)) #5
  call void @gimp_message_literal(%struct._Gimp* %9, %struct._GObject* %12, i32 1, i8* %call13)
  br label %return

if.end.14:                                        ; preds = %if.end.8
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp15 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %13, i32 0, i32 1
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp15, align 8
  %15 = bitcast %struct._Gimp* %14 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 80)
  %16 = bitcast %struct._GTypeInstance* %call16 to %struct._GObject*
  %call17 = call i8* @g_object_get_data(%struct._GObject* %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i32 0, i32 0))
  %17 = bitcast i8* %call17 to %struct._GimpStrokeOptions*
  store %struct._GimpStrokeOptions* %17, %struct._GimpStrokeOptions** %options, align 8
  %18 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options, align 8
  %tobool18 = icmp ne %struct._GimpStrokeOptions* %18, null
  br i1 %tobool18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.end.14
  %19 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options, align 8
  %20 = bitcast %struct._GimpStrokeOptions* %19 to i8*
  %call20 = call i8* @g_object_ref(i8* %20)
  br label %if.end.23

if.else:                                          ; preds = %if.end.14
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp21 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %21, i32 0, i32 1
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp21, align 8
  %23 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call22 = call %struct._GimpStrokeOptions* @gimp_stroke_options_new(%struct._Gimp* %22, %struct._GimpContext* %23, i32 1)
  store %struct._GimpStrokeOptions* %call22, %struct._GimpStrokeOptions** %options, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.19
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call24 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %24)
  %25 = bitcast %struct._GimpChannel* %call24 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_item_get_type() #4
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call25)
  %26 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpItem*
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %28 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %29 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options, align 8
  %call27 = call i32 @gimp_item_stroke(%struct._GimpItem* %26, %struct._GimpDrawable* %27, %struct._GimpContext* %28, %struct._GimpStrokeOptions* %29, %struct._GimpPaintOptions* null, i32 1, %struct._GimpProgress* null, %struct._GError** %error)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.else.32, label %if.then.29

if.then.29:                                       ; preds = %if.end.23
  %30 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp30 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %30, i32 0, i32 1
  %31 = load %struct._Gimp*, %struct._Gimp** %gimp30, align 8
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 80)
  %34 = bitcast %struct._GTypeInstance* %call31 to %struct._GObject*
  %35 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %35, i32 0, i32 2
  %36 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %31, %struct._GObject* %34, i32 1, i8* %36)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.33

if.else.32:                                       ; preds = %if.end.23
  %37 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %37)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.32, %if.then.29
  %38 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options, align 8
  %39 = bitcast %struct._GimpStrokeOptions* %38 to i8*
  call void @g_object_unref(i8* %39)
  br label %return

return:                                           ; preds = %if.end.33, %if.then.11, %if.then.7, %if.then.3, %if.then
  ret void
}

declare i8* @g_object_ref(i8*) #1

declare %struct._GimpStrokeOptions* @gimp_stroke_options_new(%struct._Gimp*, %struct._GimpContext*, i32) #1

declare i32 @gimp_item_stroke(%struct._GimpItem*, %struct._GimpDrawable*, %struct._GimpContext*, %struct._GimpStrokeOptions*, %struct._GimpPaintOptions*, i32, %struct._GimpProgress*, %struct._GError**) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #2

declare void @gimp_channel_feather(%struct._GimpChannel*, double, double, i32) #1

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

declare void @gimp_channel_border(%struct._GimpChannel*, i32, i32, i32, i32, i32) #1

declare void @gimp_channel_grow(%struct._GimpChannel*, i32, i32, i32) #1

declare void @gimp_channel_shrink(%struct._GimpChannel*, i32, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
