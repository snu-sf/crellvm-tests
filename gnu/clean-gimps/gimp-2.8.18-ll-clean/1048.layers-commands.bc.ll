; ModuleID = './app/actions/layers-commands.bc'
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
%struct._GimpToolInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GimpToolOptions*, %struct._GimpPaintInfo*, %struct._GimpContainer* }
%struct._GimpToolOptions = type opaque
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
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpLayerMask = type { %struct._GimpChannel, %struct._GimpLayer*, i32, i32, i32 }
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._BoundSeg = type opaque
%struct._GeglNode = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
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
%struct._GimpTool = type { %struct._GimpObject, %struct._GimpToolInfo*, i32, %struct._GimpToolControl*, %struct._GimpDisplay*, %struct._GimpDrawable*, %struct._GimpDisplay*, i32, i32, i32, i32, i32, %struct._GimpCoords, i32, %struct._GList*, %struct._GimpCanvasItem*, %struct._GimpDisplay* }
%struct._GimpToolControl = type opaque
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GimpCanvasItem = type opaque
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpDisplayConfig = type opaque
%struct._GimpTextTool = type { %struct._GimpDrawTool, %struct._GimpText*, %struct._GList*, i32, i32, %struct._GimpTextBuffer*, %struct._GimpText*, %struct._GimpTextLayer*, %struct._GimpImage*, %struct._GtkWidget*, %struct._GimpUIManager*, i32, i32, %struct._GimpTextLayout*, i32, %struct._GtkWidget*, %struct._GtkWidget*, i32, %struct._GtkTextIter, i32, i32, %struct._GtkIMContext*, i32, %struct._GtkWidget*, %struct._GtkWidget*, i8*, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpDrawTool = type { %struct._GimpTool, %struct._GimpDisplay*, i32, i32, i64, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GList* }
%struct._GimpTextBuffer = type opaque
%struct._GimpText = type { %struct._GimpObject, i8*, i8*, i8*, i32, double, i32, i32, i32, i8*, i32, %struct._GimpRGB, i32, i32, double, double, double, i32, double, double, i32, %struct._GimpMatrix2, double, double, double }
%struct._GimpMatrix2 = type { [2 x [2 x double]] }
%struct._GimpTextLayer = type { %struct._GimpLayer, %struct._GimpText*, i8*, i32, i32 }
%struct._GimpUIManager = type opaque
%struct._GimpTextLayout = type opaque
%struct._GtkTextIter = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i8* }
%struct._GtkIMContext = type { %struct._GObject }
%struct._LayerOptionsDialog = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i32, %struct._GimpImage*, %struct._GimpContext*, %struct._GimpLayer* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GError = type { i32, i32, i8* }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._PangoLayout = type opaque
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GimpSizeEntry = type { %struct._GtkTable, %struct._GSList*, i32, %struct._GtkWidget*, i32, i32, i32, i32, i32 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GimpAction = type { %struct._GtkAction, %struct._GimpContext*, %struct._GimpRGB*, %struct._GimpViewable*, i32, i32 }
%struct._GimpPickable = type opaque
%struct._GimpProjection = type opaque
%struct._TileManager = type opaque
%struct._GimpGroupLayer = type { %struct._GimpLayer }
%struct._GimpVectors = type opaque
%struct._GimpDisplayShell = type { %struct._GtkBox, %struct._GimpDisplay*, %struct._GimpUIManager*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct._GimpZoomModel*, double, i32, i32, i32, double, i32, i32, i32, %struct._Selection*, %struct._GList*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._cairo_surface*, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, i32, i8*, i8*, i32, i32, %struct._GdkPixbuf*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpColorDisplayStack*, i32, %struct._GtkWidget*, i32, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, %struct._GimpDrawable*, %struct._GimpRGB, %struct._GimpMotionBuffer*, %struct._GQueue* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpDisplayOptions = type opaque
%struct._GimpZoomModel = type { %struct._GObject, i8* }
%struct._Selection = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpColorDisplayStack = type { %struct._GObject, %struct._GList* }
%struct._GimpTreeHandler = type opaque
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._LayerAddMaskDialog = type { %struct._GtkWidget*, %struct._GimpLayer*, i32, %struct._GimpChannel*, i32 }
%struct._GtkToggleAction = type { %struct._GtkAction, %struct._GtkToggleActionPrivate* }
%struct._GtkToggleActionPrivate = type opaque
%struct._GimpUndo = type { %struct._GimpViewable, %struct._GimpImage*, i32, i32, i32, %struct._TempBuf*, i32 }
%struct._TempBuf = type opaque
%struct._GimpItemUndo = type { %struct._GimpUndo, %struct._GimpItem* }

@.str = private unnamed_addr constant [15 x i8] c"gimp-text-tool\00", align 1
@layer_fill_type = internal global i32 3, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Layer Attributes\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"gimp-layer-edit\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"gtk-edit\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Edit Layer Attributes\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@layer_name = internal global i8* null, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"Layer\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"New Layer\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"gimp-layer-new\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"gimp-layer\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Create a New Layer\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Visible\00", align 1
@layer_resize_unit = internal global i32 0, align 4
@.str.12 = private unnamed_addr constant [24 x i8] c"Set Layer Boundary Size\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"gimp-layer-resize\00", align 1
@layer_scale_unit = internal global i32 0, align 4
@layer_scale_interp = internal global i32 -1, align 4
@.str.14 = private unnamed_addr constant [12 x i8] c"Scale Layer\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"gimp-layer-scale\00", align 1
@.str.16 = private unnamed_addr constant [52 x i8] c"Cannot crop because the current selection is empty.\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"Crop Layer\00", align 1
@layer_add_mask_type = internal global i32 0, align 4
@layer_mask_invert = internal global i32 0, align 4
@layer_modes = internal constant [21 x i32] [i32 0, i32 1, i32 3, i32 15, i32 4, i32 5, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14], align 16
@.str.18 = private unnamed_addr constant [33 x i8] c"%s: could not allocate new layer\00", align 1
@__func__.layers_new_layer_response = private unnamed_addr constant [26 x i8] c"layers_new_layer_response\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"Gimp-Actions\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"auto-rename\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"Please select a channel first\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"Add Layer Mask\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"Scaling\00", align 1
@.str.24 = private unnamed_addr constant [62 x i8] c"Scale Error: Both width and height must be greater than zero.\00", align 1
@.str.25 = private unnamed_addr constant [63 x i8] c"Resize Error: Both width and height must be greater than zero.\00", align 1

; Function Attrs: nounwind uwtable
define void @layers_text_tool_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %active_tool = alloca %struct._GimpTool*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %__inst32 = alloca %struct._GTypeInstance*, align 8
  %__t34 = alloca i64, align 8
  %__r37 = alloca i32, align 4
  %tmp52 = alloca i32, align 4
  %__inst61 = alloca %struct._GTypeInstance*, align 8
  %__t63 = alloca i64, align 8
  %__r66 = alloca i32, align 4
  %tmp81 = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.86

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %2)
  store %struct._GimpLayer* %call1, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool2 = icmp ne %struct._GimpLayer* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %if.end.86

if.end.4:                                         ; preds = %if.end
  %4 = load i8*, i8** %data.addr, align 8
  %call5 = call %struct._GtkWidget* @action_data_get_widget(i8* %4)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %widget, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool6 = icmp ne %struct._GtkWidget* %5, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  br label %if.end.86

if.end.8:                                         ; preds = %if.end.4
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %7 = bitcast %struct._GimpLayer* %6 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_item_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call9)
  %8 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpItem*
  %call11 = call i32 @gimp_item_is_text_layer(%struct._GimpItem* %8)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.8
  %9 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %10 = load i8*, i8** %data.addr, align 8
  call void @layers_edit_attributes_cmd_callback(%struct._GtkAction* %9, i8* %10)
  br label %if.end.86

if.end.14:                                        ; preds = %if.end.8
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %11, i32 0, i32 1
  %12 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call15 = call %struct._GimpTool* @tool_manager_get_active(%struct._Gimp* %12)
  store %struct._GimpTool* %call15, %struct._GimpTool** %active_tool, align 8
  %13 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %14 = bitcast %struct._GimpTool* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst, align 8
  %call16 = call i64 @gimp_text_tool_get_type() #6
  store i64 %call16, i64* %__t, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool17 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool17, label %if.else, label %if.then.18

if.then.18:                                       ; preds = %if.end.14
  store i32 0, i32* %__r, align 4
  br label %if.end.25

if.else:                                          ; preds = %if.end.14
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool19 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool19, label %land.lhs.true, label %if.else.22

land.lhs.true:                                    ; preds = %if.else
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class20 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class20, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type, align 8
  %21 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %20, %21
  br i1 %cmp, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.24

if.else.22:                                       ; preds = %land.lhs.true, %if.else
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %23 = load i64, i64* %__t, align 8
  %call23 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
  store i32 %call23, i32* %__r, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.22, %if.then.21
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.18
  %24 = load i32, i32* %__r, align 4
  store i32 %24, i32* %tmp
  %25 = load i32, i32* %tmp
  %tobool26 = icmp ne i32 %25, 0
  br i1 %tobool26, label %if.end.59, label %if.then.27

if.then.27:                                       ; preds = %if.end.25
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp29 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %26, i32 0, i32 1
  %27 = load %struct._Gimp*, %struct._Gimp** %gimp29, align 8
  %call30 = call %struct._GimpToolInfo* @gimp_get_tool_info(%struct._Gimp* %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  store %struct._GimpToolInfo* %call30, %struct._GimpToolInfo** %tool_info, align 8
  %28 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %29 = bitcast %struct._GimpToolInfo* %28 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %29, %struct._GTypeInstance** %__inst32, align 8
  %call35 = call i64 @gimp_tool_info_get_type() #6
  store i64 %call35, i64* %__t34, align 8
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst32, align 8
  %tobool38 = icmp ne %struct._GTypeInstance* %30, null
  br i1 %tobool38, label %if.else.40, label %if.then.39

if.then.39:                                       ; preds = %if.then.27
  store i32 0, i32* %__r37, align 4
  br label %if.end.51

if.else.40:                                       ; preds = %if.then.27
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst32, align 8
  %g_class41 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class41, align 8
  %tobool42 = icmp ne %struct._GTypeClass* %32, null
  br i1 %tobool42, label %land.lhs.true.43, label %if.else.48

land.lhs.true.43:                                 ; preds = %if.else.40
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst32, align 8
  %g_class44 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class44, align 8
  %g_type45 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %34, i32 0, i32 0
  %35 = load i64, i64* %g_type45, align 8
  %36 = load i64, i64* %__t34, align 8
  %cmp46 = icmp eq i64 %35, %36
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %land.lhs.true.43
  store i32 1, i32* %__r37, align 4
  br label %if.end.50

if.else.48:                                       ; preds = %land.lhs.true.43, %if.else.40
  %37 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst32, align 8
  %38 = load i64, i64* %__t34, align 8
  %call49 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %37, i64 %38) #7
  store i32 %call49, i32* %__r37, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.48, %if.then.47
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then.39
  %39 = load i32, i32* %__r37, align 4
  store i32 %39, i32* %tmp52
  %40 = load i32, i32* %tmp52
  %tobool53 = icmp ne i32 %40, 0
  br i1 %tobool53, label %if.then.54, label %if.end.58

if.then.54:                                       ; preds = %if.end.51
  %41 = load i8*, i8** %data.addr, align 8
  %call55 = call %struct._GimpContext* @action_data_get_context(i8* %41)
  %42 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  call void @gimp_context_set_tool(%struct._GimpContext* %call55, %struct._GimpToolInfo* %42)
  %43 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp56 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %43, i32 0, i32 1
  %44 = load %struct._Gimp*, %struct._Gimp** %gimp56, align 8
  %call57 = call %struct._GimpTool* @tool_manager_get_active(%struct._Gimp* %44)
  store %struct._GimpTool* %call57, %struct._GimpTool** %active_tool, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.54, %if.end.51
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.end.25
  %45 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %46 = bitcast %struct._GimpTool* %45 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %46, %struct._GTypeInstance** %__inst61, align 8
  %call64 = call i64 @gimp_text_tool_get_type() #6
  store i64 %call64, i64* %__t63, align 8
  %47 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst61, align 8
  %tobool67 = icmp ne %struct._GTypeInstance* %47, null
  br i1 %tobool67, label %if.else.69, label %if.then.68

if.then.68:                                       ; preds = %if.end.59
  store i32 0, i32* %__r66, align 4
  br label %if.end.80

if.else.69:                                       ; preds = %if.end.59
  %48 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst61, align 8
  %g_class70 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %48, i32 0, i32 0
  %49 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class70, align 8
  %tobool71 = icmp ne %struct._GTypeClass* %49, null
  br i1 %tobool71, label %land.lhs.true.72, label %if.else.77

land.lhs.true.72:                                 ; preds = %if.else.69
  %50 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst61, align 8
  %g_class73 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %50, i32 0, i32 0
  %51 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class73, align 8
  %g_type74 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %51, i32 0, i32 0
  %52 = load i64, i64* %g_type74, align 8
  %53 = load i64, i64* %__t63, align 8
  %cmp75 = icmp eq i64 %52, %53
  br i1 %cmp75, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %land.lhs.true.72
  store i32 1, i32* %__r66, align 4
  br label %if.end.79

if.else.77:                                       ; preds = %land.lhs.true.72, %if.else.69
  %54 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst61, align 8
  %55 = load i64, i64* %__t63, align 8
  %call78 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %54, i64 %55) #7
  store i32 %call78, i32* %__r66, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.77, %if.then.76
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.68
  %56 = load i32, i32* %__r66, align 4
  store i32 %56, i32* %tmp81
  %57 = load i32, i32* %tmp81
  %tobool82 = icmp ne i32 %57, 0
  br i1 %tobool82, label %if.then.83, label %if.end.86

if.then.83:                                       ; preds = %if.end.80
  %58 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %59 = bitcast %struct._GimpTool* %58 to %struct._GTypeInstance*
  %call84 = call i64 @gimp_text_tool_get_type() #6
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call84)
  %60 = bitcast %struct._GTypeInstance* %call85 to %struct._GimpTextTool*
  %61 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  call void @gimp_text_tool_set_layer(%struct._GimpTextTool* %60, %struct._GimpLayer* %61)
  br label %if.end.86

if.end.86:                                        ; preds = %if.then, %if.then.3, %if.then.7, %if.then.13, %if.then.83, %if.end.80
  ret void
}

declare %struct._GimpImage* @action_data_get_image(i8*) #1

declare %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage*) #1

declare %struct._GtkWidget* @action_data_get_widget(i8*) #1

declare i32 @gimp_item_is_text_layer(%struct._GimpItem*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

; Function Attrs: nounwind uwtable
define void @layers_edit_attributes_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %dialog = alloca %struct._LayerOptionsDialog*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
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
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %2)
  store %struct._GimpLayer* %call1, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool2 = icmp ne %struct._GimpLayer* %3, null
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
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %7 = bitcast %struct._GimpLayer* %6 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_item_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call9)
  %8 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpItem*
  %call11 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %8)
  %9 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %10 = load i8*, i8** %data.addr, align 8
  %call12 = call %struct._GimpContext* @action_data_get_context(i8* %10)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %12 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %13 = bitcast %struct._GimpLayer* %12 to i8*
  %call13 = call i8* @gimp_object_get_name(i8* %13)
  %14 = load i32, i32* @layer_fill_type, align 4
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)) #5
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0)) #5
  %call16 = call %struct._LayerOptionsDialog* @layer_options_dialog_new(%struct._GimpImage* %call11, %struct._GimpLayer* %9, %struct._GimpContext* %call12, %struct._GtkWidget* %11, i8* %call13, i32 %14, i8* %call14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* %call15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0))
  store %struct._LayerOptionsDialog* %call16, %struct._LayerOptionsDialog** %dialog, align 8
  %15 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %dialog, align 8
  %dialog17 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %15, i32 0, i32 0
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog17, align 8
  %17 = bitcast %struct._GtkWidget* %16 to i8*
  %18 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %dialog, align 8
  %19 = bitcast %struct._LayerOptionsDialog* %18 to i8*
  %call18 = call i64 @g_signal_connect_data(i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._LayerOptionsDialog*)* @layers_edit_layer_response to void ()*), i8* %19, void (i8*, %struct._GClosure*)* null, i32 0)
  %20 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %dialog, align 8
  %dialog19 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %20, i32 0, i32 0
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog19, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %21)
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.then.3, %if.then
  ret void
}

declare %struct._GimpTool* @tool_manager_get_active(%struct._Gimp*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_text_tool_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare %struct._GimpToolInfo* @gimp_get_tool_info(%struct._Gimp*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_info_get_type() #2

declare void @gimp_context_set_tool(%struct._GimpContext*, %struct._GimpToolInfo*) #1

declare %struct._GimpContext* @action_data_get_context(i8*) #1

declare void @gimp_text_tool_set_layer(%struct._GimpTextTool*, %struct._GimpLayer*) #1

declare %struct._LayerOptionsDialog* @layer_options_dialog_new(%struct._GimpImage*, %struct._GimpLayer*, %struct._GimpContext*, %struct._GtkWidget*, i8*, i32, i8*, i8*, i8*, i8*, i8*) #1

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

declare i8* @gimp_object_get_name(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @layers_edit_layer_response(%struct._GtkWidget* %widget, i32 %response_id, %struct._LayerOptionsDialog* %dialog) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %dialog.addr = alloca %struct._LayerOptionsDialog*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %new_name = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._LayerOptionsDialog* %dialog, %struct._LayerOptionsDialog** %dialog.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end.26

if.then:                                          ; preds = %entry
  %1 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %dialog.addr, align 8
  %layer1 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %1, i32 0, i32 9
  %2 = load %struct._GimpLayer*, %struct._GimpLayer** %layer1, align 8
  store %struct._GimpLayer* %2, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %dialog.addr, align 8
  %name_entry = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %3, i32 0, i32 1
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %name_entry, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkEntry*
  %call3 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %6)
  store i8* %call3, i8** %new_name, align 8
  %7 = load i8*, i8** %new_name, align 8
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %9 = bitcast %struct._GimpLayer* %8 to i8*
  %call4 = call i8* @gimp_object_get_name(i8* %9)
  %call5 = call i32 @strcmp(i8* %7, i8* %call4) #7
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then.6, label %if.end.14

if.then.6:                                        ; preds = %if.then
  store %struct._GError* null, %struct._GError** %error, align 8
  %10 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %11 = bitcast %struct._GimpLayer* %10 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_item_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call7)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpItem*
  %13 = load i8*, i8** %new_name, align 8
  %call9 = call i32 @gimp_item_rename(%struct._GimpItem* %12, i8* %13, %struct._GError** %error)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then.6
  %14 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %dialog.addr, align 8
  %image = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %14, i32 0, i32 7
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %15)
  br label %if.end

if.else:                                          ; preds = %if.then.6
  %16 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %dialog.addr, align 8
  %image12 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %16, i32 0, i32 7
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image12, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %17, i32 0, i32 1
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 80)
  %21 = bitcast %struct._GTypeInstance* %call13 to %struct._GObject*
  %22 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %22, i32 0, i32 2
  %23 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %18, %struct._GObject* %21, i32 1, i8* %23)
  call void @g_clear_error(%struct._GError** %error)
  br label %return

if.end:                                           ; preds = %if.then.11
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then
  %24 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %dialog.addr, align 8
  %rename_toggle = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %24, i32 0, i32 3
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %rename_toggle, align 8
  %tobool15 = icmp ne %struct._GtkWidget* %25, null
  br i1 %tobool15, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %if.end.14
  %26 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %27 = bitcast %struct._GimpLayer* %26 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_item_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call16)
  %28 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpItem*
  %call18 = call i32 @gimp_item_is_text_layer(%struct._GimpItem* %28)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.25

if.then.20:                                       ; preds = %land.lhs.true
  %29 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %30 = bitcast %struct._GimpLayer* %29 to i8*
  %31 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %dialog.addr, align 8
  %rename_toggle21 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %31, i32 0, i32 3
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %rename_toggle21, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_toggle_button_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call22)
  %34 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkToggleButton*
  %call24 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %34)
  call void (i8*, i8*, ...) @g_object_set(i8* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), i32 %call24, i8* null)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.20, %land.lhs.true, %if.end.14
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %entry
  %35 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %dialog.addr, align 8
  %dialog27 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %35, i32 0, i32 0
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog27, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %36)
  br label %return

return:                                           ; preds = %if.end.26, %if.else
  ret void
}

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @layers_new_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %dialog = alloca %struct._LayerOptionsDialog*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %floating_sel = alloca %struct._GimpLayer*, align 8
  %error = alloca %struct._GError*, align 8
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
  %call5 = call %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage* %4)
  store %struct._GimpLayer* %call5, %struct._GimpLayer** %floating_sel, align 8
  %tobool6 = icmp ne %struct._GimpLayer* %call5, null
  br i1 %tobool6, label %if.then.7, label %if.end.13

if.then.7:                                        ; preds = %if.end.4
  store %struct._GError* null, %struct._GError** %error, align 8
  %5 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  %call8 = call i32 @floating_sel_to_layer(%struct._GimpLayer* %5, %struct._GError** %error)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.12, label %if.then.10

if.then.10:                                       ; preds = %if.then.7
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %6, i32 0, i32 1
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 80)
  %10 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  %11 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %11, i32 0, i32 2
  %12 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %7, %struct._GObject* %10, i32 1, i8* %12)
  call void @g_clear_error(%struct._GError** %error)
  br label %return

if.end.12:                                        ; preds = %if.then.7
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %13)
  br label %return

if.end.13:                                        ; preds = %if.end.4
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %15 = load i8*, i8** %data.addr, align 8
  %call14 = call %struct._GimpContext* @action_data_get_context(i8* %15)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %17 = load i8*, i8** @layer_name, align 8
  %tobool15 = icmp ne i8* %17, null
  br i1 %tobool15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.13
  %18 = load i8*, i8** @layer_name, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.13
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0)) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %18, %cond.true ], [ %call16, %cond.false ]
  %19 = load i32, i32* @layer_fill_type, align 4
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0)) #5
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0)) #5
  %call19 = call %struct._LayerOptionsDialog* @layer_options_dialog_new(%struct._GimpImage* %14, %struct._GimpLayer* null, %struct._GimpContext* %call14, %struct._GtkWidget* %16, i8* %cond, i32 %19, i8* %call17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* %call18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0))
  store %struct._LayerOptionsDialog* %call19, %struct._LayerOptionsDialog** %dialog, align 8
  %20 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %dialog, align 8
  %dialog20 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %20, i32 0, i32 0
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog20, align 8
  %22 = bitcast %struct._GtkWidget* %21 to i8*
  %23 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %dialog, align 8
  %24 = bitcast %struct._LayerOptionsDialog* %23 to i8*
  %call21 = call i64 @g_signal_connect_data(i8* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._LayerOptionsDialog*)* @layers_new_layer_response to void ()*), i8* %24, void (i8*, %struct._GClosure*)* null, i32 0)
  %25 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %dialog, align 8
  %dialog22 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %25, i32 0, i32 0
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog22, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %26)
  br label %return

return:                                           ; preds = %cond.end, %if.end.12, %if.then.10, %if.then.3, %if.then
  ret void
}

declare %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage*) #1

declare i32 @floating_sel_to_layer(%struct._GimpLayer*, %struct._GError**) #1

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #1

declare void @g_clear_error(%struct._GError**) #1

declare void @gimp_image_flush(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define internal void @layers_new_layer_response(%struct._GtkWidget* %widget, i32 %response_id, %struct._LayerOptionsDialog* %dialog) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %dialog.addr = alloca %struct._LayerOptionsDialog*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._LayerOptionsDialog* %dialog, %struct._LayerOptionsDialog** %dialog.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end.28

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @layer_name, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %2 = load i8*, i8** @layer_name, align 8
  call void @g_free(i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %3 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %dialog.addr, align 8
  %name_entry = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %3, i32 0, i32 1
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %name_entry, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkEntry*
  %call3 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %6)
  %call4 = call noalias i8* @g_strdup(i8* %call3)
  store i8* %call4, i8** @layer_name, align 8
  %7 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %dialog.addr, align 8
  %fill_type = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %7, i32 0, i32 4
  %8 = load i32, i32* %fill_type, align 4
  store i32 %8, i32* @layer_fill_type, align 4
  %9 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %dialog.addr, align 8
  %size_se = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %9, i32 0, i32 2
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %size_se, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_size_entry_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call5)
  %12 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpSizeEntry*
  %call7 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %12, i32 0)
  %call8 = call double @rint(double %call7) #6
  %conv = fptosi double %call8 to i32
  %13 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %dialog.addr, align 8
  %xsize = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %13, i32 0, i32 5
  store i32 %conv, i32* %xsize, align 4
  %14 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %dialog.addr, align 8
  %size_se9 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %14, i32 0, i32 2
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %size_se9, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_size_entry_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call10)
  %17 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpSizeEntry*
  %call12 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %17, i32 1)
  %call13 = call double @rint(double %call12) #6
  %conv14 = fptosi double %call13 to i32
  %18 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %dialog.addr, align 8
  %ysize = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %18, i32 0, i32 6
  store i32 %conv14, i32* %ysize, align 4
  %19 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %dialog.addr, align 8
  %image = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %19, i32 0, i32 7
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %21 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %dialog.addr, align 8
  %xsize15 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %21, i32 0, i32 5
  %22 = load i32, i32* %xsize15, align 4
  %23 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %dialog.addr, align 8
  %ysize16 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %23, i32 0, i32 6
  %24 = load i32, i32* %ysize16, align 4
  %25 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %dialog.addr, align 8
  %image17 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %25, i32 0, i32 7
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image17, align 8
  %call18 = call i32 @gimp_image_base_type_with_alpha(%struct._GimpImage* %26)
  %27 = load i8*, i8** @layer_name, align 8
  %call19 = call %struct._GimpLayer* @gimp_layer_new(%struct._GimpImage* %20, i32 %22, i32 %24, i32 %call18, i8* %27, double 1.000000e+00, i32 0)
  store %struct._GimpLayer* %call19, %struct._GimpLayer** %layer, align 8
  %28 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool20 = icmp ne %struct._GimpLayer* %28, null
  br i1 %tobool20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.end
  %29 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %30 = bitcast %struct._GimpLayer* %29 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_drawable_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call22)
  %31 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpDrawable*
  %32 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %dialog.addr, align 8
  %context = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %32, i32 0, i32 8
  %33 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %34 = load i32, i32* @layer_fill_type, align 4
  call void @gimp_drawable_fill_by_type(%struct._GimpDrawable* %31, %struct._GimpContext* %33, i32 %34)
  %35 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %dialog.addr, align 8
  %image24 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %35, i32 0, i32 7
  %36 = load %struct._GimpImage*, %struct._GimpImage** %image24, align 8
  %37 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call25 = call i32 @gimp_image_add_layer(%struct._GimpImage* %36, %struct._GimpLayer* %37, %struct._GimpLayer* inttoptr (i64 1 to %struct._GimpLayer*), i32 -1, i32 1)
  %38 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %dialog.addr, align 8
  %image26 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %38, i32 0, i32 7
  %39 = load %struct._GimpImage*, %struct._GimpImage** %image26, align 8
  call void @gimp_image_flush(%struct._GimpImage* %39)
  br label %if.end.27

if.else:                                          ; preds = %if.end
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.layers_new_layer_response, i32 0, i32 0))
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.21
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %entry
  %40 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %dialog.addr, align 8
  %dialog29 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %40, i32 0, i32 0
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog29, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %41)
  ret void
}

; Function Attrs: nounwind uwtable
define void @layers_new_last_vals_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %floating_sel = alloca %struct._GimpLayer*, align 8
  %new_layer = alloca %struct._GimpLayer*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %opacity = alloca double, align 8
  %mode = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %template = alloca %struct._GimpLayer*, align 8
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
  %call5 = call %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage* %4)
  store %struct._GimpLayer* %call5, %struct._GimpLayer** %floating_sel, align 8
  %tobool6 = icmp ne %struct._GimpLayer* %call5, null
  br i1 %tobool6, label %if.then.7, label %if.end.13

if.then.7:                                        ; preds = %if.end.4
  store %struct._GError* null, %struct._GError** %error, align 8
  %5 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  %call8 = call i32 @floating_sel_to_layer(%struct._GimpLayer* %5, %struct._GError** %error)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.12, label %if.then.10

if.then.10:                                       ; preds = %if.then.7
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %6, i32 0, i32 1
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 80)
  %10 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  %11 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %11, i32 0, i32 2
  %12 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %7, %struct._GObject* %10, i32 1, i8* %12)
  call void @g_clear_error(%struct._GError** %error)
  br label %return

if.end.12:                                        ; preds = %if.then.7
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %13)
  br label %return

if.end.13:                                        ; preds = %if.end.4
  %14 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %15 = bitcast %struct._GtkAction* %14 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_action_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call14)
  %16 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpAction*
  %viewable = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %16, i32 0, i32 3
  %17 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %18 = bitcast %struct._GimpViewable* %17 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %18, %struct._GTypeInstance** %__inst, align 8
  %call16 = call i64 @gimp_layer_get_type() #6
  store i64 %call16, i64* %__t, align 8
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool17 = icmp ne %struct._GTypeInstance* %19, null
  br i1 %tobool17, label %if.else, label %if.then.18

if.then.18:                                       ; preds = %if.end.13
  store i32 0, i32* %__r, align 4
  br label %if.end.25

if.else:                                          ; preds = %if.end.13
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool19 = icmp ne %struct._GTypeClass* %21, null
  br i1 %tobool19, label %land.lhs.true, label %if.else.22

land.lhs.true:                                    ; preds = %if.else
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class20 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class20, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type, align 8
  %25 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %24, %25
  br i1 %cmp, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.24

if.else.22:                                       ; preds = %land.lhs.true, %if.else
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %27 = load i64, i64* %__t, align 8
  %call23 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %26, i64 %27) #7
  store i32 %call23, i32* %__r, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.22, %if.then.21
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.18
  %28 = load i32, i32* %__r, align 4
  store i32 %28, i32* %tmp
  %29 = load i32, i32* %tmp
  %tobool26 = icmp ne i32 %29, 0
  br i1 %tobool26, label %if.then.27, label %if.else.44

if.then.27:                                       ; preds = %if.end.25
  %30 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %31 = bitcast %struct._GtkAction* %30 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_action_get_type() #6
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call29)
  %32 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpAction*
  %viewable31 = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %32, i32 0, i32 3
  %33 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable31, align 8
  %34 = bitcast %struct._GimpViewable* %33 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_layer_get_type() #6
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call32)
  %35 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpLayer*
  store %struct._GimpLayer* %35, %struct._GimpLayer** %template, align 8
  %36 = load %struct._GimpLayer*, %struct._GimpLayer** %template, align 8
  %37 = bitcast %struct._GimpLayer* %36 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_item_get_type() #6
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call34)
  %38 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %38, i32* %off_x, i32* %off_y)
  %39 = load %struct._GimpLayer*, %struct._GimpLayer** %template, align 8
  %40 = bitcast %struct._GimpLayer* %39 to %struct._GTypeInstance*
  %call36 = call i64 @gimp_item_get_type() #6
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call36)
  %41 = bitcast %struct._GTypeInstance* %call37 to %struct._GimpItem*
  %call38 = call i32 @gimp_item_get_width(%struct._GimpItem* %41)
  store i32 %call38, i32* %width, align 4
  %42 = load %struct._GimpLayer*, %struct._GimpLayer** %template, align 8
  %43 = bitcast %struct._GimpLayer* %42 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_item_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call39)
  %44 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpItem*
  %call41 = call i32 @gimp_item_get_height(%struct._GimpItem* %44)
  store i32 %call41, i32* %height, align 4
  %45 = load %struct._GimpLayer*, %struct._GimpLayer** %template, align 8
  %call42 = call double @gimp_layer_get_opacity(%struct._GimpLayer* %45)
  store double %call42, double* %opacity, align 8
  %46 = load %struct._GimpLayer*, %struct._GimpLayer** %template, align 8
  %call43 = call i32 @gimp_layer_get_mode(%struct._GimpLayer* %46)
  store i32 %call43, i32* %mode, align 4
  br label %if.end.47

if.else.44:                                       ; preds = %if.end.25
  %47 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call45 = call i32 @gimp_image_get_width(%struct._GimpImage* %47)
  store i32 %call45, i32* %width, align 4
  %48 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call46 = call i32 @gimp_image_get_height(%struct._GimpImage* %48)
  store i32 %call46, i32* %height, align 4
  store i32 0, i32* %off_x, align 4
  store i32 0, i32* %off_y, align 4
  store double 1.000000e+00, double* %opacity, align 8
  store i32 0, i32* %mode, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.44, %if.then.27
  %49 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call48 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0)) #5
  %call49 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %49, i32 29, i8* %call48)
  %50 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %51 = load i32, i32* %width, align 4
  %52 = load i32, i32* %height, align 4
  %53 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call50 = call i32 @gimp_image_base_type_with_alpha(%struct._GimpImage* %53)
  %54 = load i8*, i8** @layer_name, align 8
  %55 = load double, double* %opacity, align 8
  %56 = load i32, i32* %mode, align 4
  %call51 = call %struct._GimpLayer* @gimp_layer_new(%struct._GimpImage* %50, i32 %51, i32 %52, i32 %call50, i8* %54, double %55, i32 %56)
  store %struct._GimpLayer* %call51, %struct._GimpLayer** %new_layer, align 8
  %57 = load %struct._GimpLayer*, %struct._GimpLayer** %new_layer, align 8
  %58 = bitcast %struct._GimpLayer* %57 to %struct._GTypeInstance*
  %call52 = call i64 @gimp_drawable_get_type() #6
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call52)
  %59 = bitcast %struct._GTypeInstance* %call53 to %struct._GimpDrawable*
  %60 = load i8*, i8** %data.addr, align 8
  %call54 = call %struct._GimpContext* @action_data_get_context(i8* %60)
  %61 = load i32, i32* @layer_fill_type, align 4
  call void @gimp_drawable_fill_by_type(%struct._GimpDrawable* %59, %struct._GimpContext* %call54, i32 %61)
  %62 = load %struct._GimpLayer*, %struct._GimpLayer** %new_layer, align 8
  %63 = bitcast %struct._GimpLayer* %62 to %struct._GTypeInstance*
  %call55 = call i64 @gimp_item_get_type() #6
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call55)
  %64 = bitcast %struct._GTypeInstance* %call56 to %struct._GimpItem*
  %65 = load i32, i32* %off_x, align 4
  %66 = load i32, i32* %off_y, align 4
  call void @gimp_item_translate(%struct._GimpItem* %64, i32 %65, i32 %66, i32 0)
  %67 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %68 = load %struct._GimpLayer*, %struct._GimpLayer** %new_layer, align 8
  %call57 = call i32 @gimp_image_add_layer(%struct._GimpImage* %67, %struct._GimpLayer* %68, %struct._GimpLayer* inttoptr (i64 1 to %struct._GimpLayer*), i32 -1, i32 1)
  %69 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call58 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %69)
  %70 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %70)
  br label %return

return:                                           ; preds = %if.end.47, %if.end.12, %if.then.10, %if.then.3, %if.then
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_action_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_get_type() #2

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #1

declare i32 @gimp_item_get_width(%struct._GimpItem*) #1

declare i32 @gimp_item_get_height(%struct._GimpItem*) #1

declare double @gimp_layer_get_opacity(%struct._GimpLayer*) #1

declare i32 @gimp_layer_get_mode(%struct._GimpLayer*) #1

declare i32 @gimp_image_get_width(%struct._GimpImage*) #1

declare i32 @gimp_image_get_height(%struct._GimpImage*) #1

declare i32 @gimp_image_undo_group_start(%struct._GimpImage*, i32, i8*) #1

declare %struct._GimpLayer* @gimp_layer_new(%struct._GimpImage*, i32, i32, i32, i8*, double, i32) #1

declare i32 @gimp_image_base_type_with_alpha(%struct._GimpImage*) #1

declare void @gimp_drawable_fill_by_type(%struct._GimpDrawable*, %struct._GimpContext*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

declare void @gimp_item_translate(%struct._GimpItem*, i32, i32, i32) #1

declare i32 @gimp_image_add_layer(%struct._GimpImage*, %struct._GimpLayer*, %struct._GimpLayer*, i32, i32) #1

declare i32 @gimp_image_undo_group_end(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define void @layers_new_from_visible_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %pickable = alloca %struct._GimpPickable*, align 8
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
  %call1 = call %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage* %2)
  %3 = bitcast %struct._GimpProjection* %call1 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_pickable_interface_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call2)
  %4 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpPickable*
  store %struct._GimpPickable* %4, %struct._GimpPickable** %pickable, align 8
  %5 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable, align 8
  call void @gimp_pickable_flush(%struct._GimpPickable* %5)
  %6 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable, align 8
  %call4 = call %struct._TileManager* @gimp_pickable_get_tiles(%struct._GimpPickable* %6)
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call5 = call i32 @gimp_image_base_type_with_alpha(%struct._GimpImage* %8)
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0)) #5
  %call7 = call %struct._GimpLayer* @gimp_layer_new_from_tiles(%struct._TileManager* %call4, %struct._GimpImage* %7, i32 %call5, i8* %call6, double 1.000000e+00, i32 0)
  store %struct._GimpLayer* %call7, %struct._GimpLayer** %layer, align 8
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %10 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call8 = call i32 @gimp_image_add_layer(%struct._GimpImage* %9, %struct._GimpLayer* %10, %struct._GimpLayer* inttoptr (i64 1 to %struct._GimpLayer*), i32 -1, i32 1)
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %11)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_pickable_interface_get_type() #2

declare void @gimp_pickable_flush(%struct._GimpPickable*) #1

declare %struct._GimpLayer* @gimp_layer_new_from_tiles(%struct._TileManager*, %struct._GimpImage*, i32, i8*, double, i32) #1

declare %struct._TileManager* @gimp_pickable_get_tiles(%struct._GimpPickable*) #1

; Function Attrs: nounwind uwtable
define void @layers_new_group_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
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
  %call1 = call %struct._GimpLayer* @gimp_group_layer_new(%struct._GimpImage* %2)
  store %struct._GimpLayer* %call1, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call2 = call i32 @gimp_image_add_layer(%struct._GimpImage* %3, %struct._GimpLayer* %4, %struct._GimpLayer* inttoptr (i64 1 to %struct._GimpLayer*), i32 -1, i32 1)
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %5)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare %struct._GimpLayer* @gimp_group_layer_new(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define void @layers_select_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %new_layer = alloca %struct._GimpLayer*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.13

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %2)
  store %struct._GimpLayer* %call1, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool2 = icmp ne %struct._GimpLayer* %3, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %5 = bitcast %struct._GimpLayer* %4 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_item_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItem*
  %call6 = call %struct._GimpContainer* @gimp_item_get_container(%struct._GimpItem* %6)
  store %struct._GimpContainer* %call6, %struct._GimpContainer** %container, align 8
  br label %if.end.8

if.else:                                          ; preds = %if.end
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call7 = call %struct._GimpContainer* @gimp_image_get_layers(%struct._GimpImage* %7)
  store %struct._GimpContainer* %call7, %struct._GimpContainer** %container, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.3
  %8 = load i32, i32* %value.addr, align 4
  %9 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %10 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %11 = bitcast %struct._GimpLayer* %10 to %struct._GimpObject*
  %call9 = call %struct._GimpObject* @action_select_object(i32 %8, %struct._GimpContainer* %9, %struct._GimpObject* %11)
  %12 = bitcast %struct._GimpObject* %call9 to %struct._GimpLayer*
  store %struct._GimpLayer* %12, %struct._GimpLayer** %new_layer, align 8
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %new_layer, align 8
  %tobool10 = icmp ne %struct._GimpLayer* %13, null
  br i1 %tobool10, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.end.8
  %14 = load %struct._GimpLayer*, %struct._GimpLayer** %new_layer, align 8
  %15 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %cmp = icmp ne %struct._GimpLayer* %14, %15
  br i1 %cmp, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %land.lhs.true
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %17 = load %struct._GimpLayer*, %struct._GimpLayer** %new_layer, align 8
  %call12 = call %struct._GimpLayer* @gimp_image_set_active_layer(%struct._GimpImage* %16, %struct._GimpLayer* %17)
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %18)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then, %if.then.11, %land.lhs.true, %if.end.8
  ret void
}

declare %struct._GimpContainer* @gimp_item_get_container(%struct._GimpItem*) #1

declare %struct._GimpContainer* @gimp_image_get_layers(%struct._GimpImage*) #1

declare %struct._GimpObject* @action_select_object(i32, %struct._GimpContainer*, %struct._GimpObject*) #1

declare %struct._GimpLayer* @gimp_image_set_active_layer(%struct._GimpImage*, %struct._GimpLayer*) #1

; Function Attrs: nounwind uwtable
define void @layers_raise_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
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
  %call1 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %2)
  store %struct._GimpLayer* %call1, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool2 = icmp ne %struct._GimpLayer* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %5 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %6 = bitcast %struct._GimpLayer* %5 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %call7 = call i32 @gimp_image_raise_item(%struct._GimpImage* %4, %struct._GimpItem* %7, %struct._GError** null)
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %8)
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  ret void
}

declare i32 @gimp_image_raise_item(%struct._GimpImage*, %struct._GimpItem*, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define void @layers_raise_to_top_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
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
  %call1 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %2)
  store %struct._GimpLayer* %call1, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool2 = icmp ne %struct._GimpLayer* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %5 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %6 = bitcast %struct._GimpLayer* %5 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %call7 = call i32 @gimp_image_raise_item_to_top(%struct._GimpImage* %4, %struct._GimpItem* %7)
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %8)
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  ret void
}

declare i32 @gimp_image_raise_item_to_top(%struct._GimpImage*, %struct._GimpItem*) #1

; Function Attrs: nounwind uwtable
define void @layers_lower_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
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
  %call1 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %2)
  store %struct._GimpLayer* %call1, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool2 = icmp ne %struct._GimpLayer* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %5 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %6 = bitcast %struct._GimpLayer* %5 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %call7 = call i32 @gimp_image_lower_item(%struct._GimpImage* %4, %struct._GimpItem* %7, %struct._GError** null)
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %8)
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  ret void
}

declare i32 @gimp_image_lower_item(%struct._GimpImage*, %struct._GimpItem*, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define void @layers_lower_to_bottom_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
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
  %call1 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %2)
  store %struct._GimpLayer* %call1, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool2 = icmp ne %struct._GimpLayer* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %5 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %6 = bitcast %struct._GimpLayer* %5 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %call7 = call i32 @gimp_image_lower_item_to_bottom(%struct._GimpImage* %4, %struct._GimpItem* %7)
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %8)
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  ret void
}

declare i32 @gimp_image_lower_item_to_bottom(%struct._GimpImage*, %struct._GimpItem*) #1

; Function Attrs: nounwind uwtable
define void @layers_duplicate_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %new_layer = alloca %struct._GimpLayer*, align 8
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
  %call1 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %2)
  store %struct._GimpLayer* %call1, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool2 = icmp ne %struct._GimpLayer* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %5 = bitcast %struct._GimpLayer* %4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call5)
  %6 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %7 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %8 = bitcast %struct._GimpLayer* %7 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %call7 = call %struct._GimpItem* @gimp_item_duplicate(%struct._GimpItem* %6, i64 %10)
  %11 = bitcast %struct._GimpItem* %call7 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_layer_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call8)
  %12 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpLayer*
  store %struct._GimpLayer* %12, %struct._GimpLayer** %new_layer, align 8
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %14 = load %struct._GimpLayer*, %struct._GimpLayer** %new_layer, align 8
  %15 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call10 = call %struct._GimpLayer* @gimp_layer_get_parent(%struct._GimpLayer* %15)
  %call11 = call i32 @gimp_image_add_layer(%struct._GimpImage* %13, %struct._GimpLayer* %14, %struct._GimpLayer* %call10, i32 -1, i32 1)
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %16)
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  ret void
}

declare %struct._GimpItem* @gimp_item_duplicate(%struct._GimpItem*, i64) #1

declare %struct._GimpLayer* @gimp_layer_get_parent(%struct._GimpLayer*) #1

; Function Attrs: nounwind uwtable
define void @layers_anchor_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.8

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %2)
  store %struct._GimpLayer* %call1, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool2 = icmp ne %struct._GimpLayer* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %if.end.8

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call5 = call i32 @gimp_layer_is_floating_sel(%struct._GimpLayer* %4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  %5 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  call void @floating_sel_anchor(%struct._GimpLayer* %5)
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %6)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then, %if.then.3, %if.then.7, %if.end.4
  ret void
}

declare i32 @gimp_layer_is_floating_sel(%struct._GimpLayer*) #1

declare void @floating_sel_anchor(%struct._GimpLayer*) #1

; Function Attrs: nounwind uwtable
define void @layers_merge_down_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
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
  %call1 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %2)
  store %struct._GimpLayer* %call1, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool2 = icmp ne %struct._GimpLayer* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %5 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %6 = load i8*, i8** %data.addr, align 8
  %call5 = call %struct._GimpContext* @action_data_get_context(i8* %6)
  %call6 = call %struct._GimpLayer* @gimp_image_merge_down(%struct._GimpImage* %4, %struct._GimpLayer* %5, %struct._GimpContext* %call5, i32 0, %struct._GError** null)
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %7)
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  ret void
}

declare %struct._GimpLayer* @gimp_image_merge_down(%struct._GimpImage*, %struct._GimpLayer*, %struct._GimpContext*, i32, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define void @layers_merge_group_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
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
  %call1 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %2)
  store %struct._GimpLayer* %call1, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool2 = icmp ne %struct._GimpLayer* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %5 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %6 = bitcast %struct._GimpLayer* %5 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_group_layer_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpGroupLayer*
  %call7 = call %struct._GimpLayer* @gimp_image_merge_group_layer(%struct._GimpImage* %4, %struct._GimpGroupLayer* %7)
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %8)
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  ret void
}

declare %struct._GimpLayer* @gimp_image_merge_group_layer(%struct._GimpImage*, %struct._GimpGroupLayer*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_group_layer_get_type() #2

; Function Attrs: nounwind uwtable
define void @layers_delete_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
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
  %call1 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %2)
  store %struct._GimpLayer* %call1, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool2 = icmp ne %struct._GimpLayer* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %5 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  call void @gimp_image_remove_layer(%struct._GimpImage* %4, %struct._GimpLayer* %5, i32 1, %struct._GimpLayer* null)
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %6)
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  ret void
}

declare void @gimp_image_remove_layer(%struct._GimpImage*, %struct._GimpLayer*, i32, %struct._GimpLayer*) #1

; Function Attrs: nounwind uwtable
define void @layers_text_discard_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
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
  br label %if.end.19

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %2)
  store %struct._GimpLayer* %call1, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool2 = icmp ne %struct._GimpLayer* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %if.end.19

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %5 = bitcast %struct._GimpLayer* %4 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %5, %struct._GTypeInstance** %__inst, align 8
  %call5 = call i64 @gimp_text_layer_get_type() #6
  store i64 %call5, i64* %__t, align 8
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool6 = icmp ne %struct._GTypeInstance* %6, null
  br i1 %tobool6, label %if.else, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  store i32 0, i32* %__r, align 4
  br label %if.end.14

if.else:                                          ; preds = %if.end.4
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool8 = icmp ne %struct._GTypeClass* %8, null
  br i1 %tobool8, label %land.lhs.true, label %if.else.11

land.lhs.true:                                    ; preds = %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class9 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %9, i32 0, i32 0
  %10 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class9, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type, align 8
  %12 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %11, %12
  br i1 %cmp, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.13

if.else.11:                                       ; preds = %land.lhs.true, %if.else
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %14 = load i64, i64* %__t, align 8
  %call12 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %13, i64 %14) #7
  store i32 %call12, i32* %__r, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.11, %if.then.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.7
  %15 = load i32, i32* %__r, align 4
  store i32 %15, i32* %tmp
  %16 = load i32, i32* %tmp
  %tobool15 = icmp ne i32 %16, 0
  br i1 %tobool15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.end.14
  %17 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %18 = bitcast %struct._GimpLayer* %17 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_text_layer_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call17)
  %19 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpTextLayer*
  call void @gimp_text_layer_discard(%struct._GimpTextLayer* %19)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then, %if.then.3, %if.then.16, %if.end.14
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_text_layer_get_type() #2

declare void @gimp_text_layer_discard(%struct._GimpTextLayer*) #1

; Function Attrs: nounwind uwtable
define void @layers_text_to_vectors_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %vectors = alloca %struct._GimpVectors*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.28

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %2)
  store %struct._GimpLayer* %call1, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool2 = icmp ne %struct._GimpLayer* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %if.end.28

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %5 = bitcast %struct._GimpLayer* %4 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %5, %struct._GTypeInstance** %__inst, align 8
  %call5 = call i64 @gimp_text_layer_get_type() #6
  store i64 %call5, i64* %__t, align 8
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool6 = icmp ne %struct._GTypeInstance* %6, null
  br i1 %tobool6, label %if.else, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  store i32 0, i32* %__r, align 4
  br label %if.end.14

if.else:                                          ; preds = %if.end.4
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool8 = icmp ne %struct._GTypeClass* %8, null
  br i1 %tobool8, label %land.lhs.true, label %if.else.11

land.lhs.true:                                    ; preds = %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class9 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %9, i32 0, i32 0
  %10 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class9, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type, align 8
  %12 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %11, %12
  br i1 %cmp, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.13

if.else.11:                                       ; preds = %land.lhs.true, %if.else
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %14 = load i64, i64* %__t, align 8
  %call12 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %13, i64 %14) #7
  store i32 %call12, i32* %__r, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.11, %if.then.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.7
  %15 = load i32, i32* %__r, align 4
  store i32 %15, i32* %tmp
  %16 = load i32, i32* %tmp
  %tobool15 = icmp ne i32 %16, 0
  br i1 %tobool15, label %if.then.16, label %if.end.28

if.then.16:                                       ; preds = %if.end.14
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %18 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %19 = bitcast %struct._GimpLayer* %18 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_text_layer_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call20)
  %20 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpTextLayer*
  %text = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %20, i32 0, i32 1
  %21 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %call22 = call %struct._GimpVectors* @gimp_text_vectors_new(%struct._GimpImage* %17, %struct._GimpText* %21)
  store %struct._GimpVectors* %call22, %struct._GimpVectors** %vectors, align 8
  %22 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %23 = bitcast %struct._GimpLayer* %22 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_item_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call23)
  %24 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %24, i32* %x, i32* %y)
  %25 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %26 = bitcast %struct._GimpVectors* %25 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_item_get_type() #6
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call25)
  %27 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpItem*
  %28 = load i32, i32* %x, align 4
  %29 = load i32, i32* %y, align 4
  call void @gimp_item_translate(%struct._GimpItem* %27, i32 %28, i32 %29, i32 0)
  %30 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %31 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %call27 = call i32 @gimp_image_add_vectors(%struct._GimpImage* %30, %struct._GimpVectors* %31, %struct._GimpVectors* inttoptr (i64 1 to %struct._GimpVectors*), i32 -1, i32 1)
  %32 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %32)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then, %if.then.3, %if.then.16, %if.end.14
  ret void
}

declare %struct._GimpVectors* @gimp_text_vectors_new(%struct._GimpImage*, %struct._GimpText*) #1

declare i32 @gimp_image_add_vectors(%struct._GimpImage*, %struct._GimpVectors*, %struct._GimpVectors*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @layers_text_along_vectors_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %new_vectors = alloca %struct._GimpVectors*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.35

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %2)
  store %struct._GimpLayer* %call1, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool2 = icmp ne %struct._GimpLayer* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %if.end.35

if.end.4:                                         ; preds = %if.end
  %4 = load i8*, i8** %data.addr, align 8
  %call5 = call %struct._GimpImage* @action_data_get_image(i8* %4)
  store %struct._GimpImage* %call5, %struct._GimpImage** %image, align 8
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool6 = icmp ne %struct._GimpImage* %5, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  br label %if.end.35

if.end.8:                                         ; preds = %if.end.4
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call9 = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %6)
  store %struct._GimpVectors* %call9, %struct._GimpVectors** %vectors, align 8
  %7 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool10 = icmp ne %struct._GimpVectors* %7, null
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.8
  br label %if.end.35

if.end.12:                                        ; preds = %if.end.8
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %9 = bitcast %struct._GimpLayer* %8 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %9, %struct._GTypeInstance** %__inst, align 8
  %call13 = call i64 @gimp_text_layer_get_type() #6
  store i64 %call13, i64* %__t, align 8
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool14 = icmp ne %struct._GTypeInstance* %10, null
  br i1 %tobool14, label %if.else, label %if.then.15

if.then.15:                                       ; preds = %if.end.12
  store i32 0, i32* %__r, align 4
  br label %if.end.22

if.else:                                          ; preds = %if.end.12
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %11, i32 0, i32 0
  %12 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool16 = icmp ne %struct._GTypeClass* %12, null
  br i1 %tobool16, label %land.lhs.true, label %if.else.19

land.lhs.true:                                    ; preds = %if.else
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class17 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %13, i32 0, i32 0
  %14 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class17, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %14, i32 0, i32 0
  %15 = load i64, i64* %g_type, align 8
  %16 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %15, %16
  br i1 %cmp, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.21

if.else.19:                                       ; preds = %land.lhs.true, %if.else
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %18 = load i64, i64* %__t, align 8
  %call20 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %17, i64 %18) #7
  store i32 %call20, i32* %__r, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.19, %if.then.18
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.15
  %19 = load i32, i32* %__r, align 4
  store i32 %19, i32* %tmp
  %20 = load i32, i32* %tmp
  %tobool23 = icmp ne i32 %20, 0
  br i1 %tobool23, label %if.then.24, label %if.end.35

if.then.24:                                       ; preds = %if.end.22
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %22 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %23 = bitcast %struct._GimpLayer* %22 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_text_layer_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call26)
  %24 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpTextLayer*
  %text = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %24, i32 0, i32 1
  %25 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %call28 = call %struct._GimpVectors* @gimp_text_vectors_new(%struct._GimpImage* %21, %struct._GimpText* %25)
  store %struct._GimpVectors* %call28, %struct._GimpVectors** %new_vectors, align 8
  %26 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %27 = load %struct._GimpVectors*, %struct._GimpVectors** %new_vectors, align 8
  %28 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %29 = bitcast %struct._GimpLayer* %28 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_item_get_type() #6
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call29)
  %30 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpItem*
  %call31 = call i32 @gimp_item_get_height(%struct._GimpItem* %30)
  %conv = sitofp i32 %call31 to double
  %mul = fmul double 5.000000e-01, %conv
  call void @gimp_vectors_warp_vectors(%struct._GimpVectors* %26, %struct._GimpVectors* %27, double %mul)
  %31 = load %struct._GimpVectors*, %struct._GimpVectors** %new_vectors, align 8
  %32 = bitcast %struct._GimpVectors* %31 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_item_get_type() #6
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call32)
  %33 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpItem*
  call void @gimp_item_set_visible(%struct._GimpItem* %33, i32 1, i32 0)
  %34 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %35 = load %struct._GimpVectors*, %struct._GimpVectors** %new_vectors, align 8
  %call34 = call i32 @gimp_image_add_vectors(%struct._GimpImage* %34, %struct._GimpVectors* %35, %struct._GimpVectors* inttoptr (i64 1 to %struct._GimpVectors*), i32 -1, i32 1)
  %36 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %36)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then, %if.then.3, %if.then.7, %if.then.11, %if.then.24, %if.end.22
  ret void
}

declare %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage*) #1

declare void @gimp_vectors_warp_vectors(%struct._GimpVectors*, %struct._GimpVectors*, double) #1

declare void @gimp_item_set_visible(%struct._GimpItem*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @layers_resize_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %display, align 8
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
  %call1 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %2)
  store %struct._GimpLayer* %call1, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool2 = icmp ne %struct._GimpLayer* %3, null
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
  %6 = load i8*, i8** %data.addr, align 8
  %7 = bitcast i8* %6 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %7, %struct._GTypeInstance** %__inst, align 8
  %call9 = call i64 @gimp_image_window_get_type() #6
  store i64 %call9, i64* %__t, align 8
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool10 = icmp ne %struct._GTypeInstance* %8, null
  br i1 %tobool10, label %if.else, label %if.then.11

if.then.11:                                       ; preds = %if.end.8
  store i32 0, i32* %__r, align 4
  br label %if.end.18

if.else:                                          ; preds = %if.end.8
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %9, i32 0, i32 0
  %10 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool12 = icmp ne %struct._GTypeClass* %10, null
  br i1 %tobool12, label %land.lhs.true, label %if.else.15

land.lhs.true:                                    ; preds = %if.else
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class13 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %11, i32 0, i32 0
  %12 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class13, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %12, i32 0, i32 0
  %13 = load i64, i64* %g_type, align 8
  %14 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %13, %14
  br i1 %cmp, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.17

if.else.15:                                       ; preds = %land.lhs.true, %if.else
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %16 = load i64, i64* %__t, align 8
  %call16 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %15, i64 %16) #7
  store i32 %call16, i32* %__r, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.14
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.11
  %17 = load i32, i32* %__r, align 4
  store i32 %17, i32* %tmp
  %18 = load i32, i32* %tmp
  %tobool19 = icmp ne i32 %18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.18
  %19 = load i8*, i8** %data.addr, align 8
  %call21 = call %struct._GimpDisplay* @action_data_get_display(i8* %19)
  store %struct._GimpDisplay* %call21, %struct._GimpDisplay** %display, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.18
  %20 = load i32, i32* @layer_resize_unit, align 4
  %cmp23 = icmp ne i32 %20, 65536
  br i1 %cmp23, label %land.lhs.true.24, label %if.end.28

land.lhs.true.24:                                 ; preds = %if.end.22
  %21 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool25 = icmp ne %struct._GimpDisplay* %21, null
  br i1 %tobool25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %land.lhs.true.24
  %22 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call27 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %22)
  %unit = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %call27, i32 0, i32 10
  %23 = load i32, i32* %unit, align 4
  store i32 %23, i32* @layer_resize_unit, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %land.lhs.true.24, %if.end.22
  %24 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %25 = bitcast %struct._GimpLayer* %24 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_viewable_get_type() #6
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call29)
  %26 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpViewable*
  %27 = load i8*, i8** %data.addr, align 8
  %call31 = call %struct._GimpContext* @action_data_get_context(i8* %27)
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0)) #5
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %29 = load i32, i32* @layer_resize_unit, align 4
  %30 = load i8*, i8** %data.addr, align 8
  %call33 = call %struct._GimpContext* @action_data_get_context(i8* %30)
  %31 = bitcast %struct._GimpContext* %call33 to i8*
  %call34 = call %struct._GtkWidget* @resize_dialog_new(%struct._GimpViewable* %26, %struct._GimpContext* %call31, i8* %call32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0), %struct._GtkWidget* %28, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0), i32 %29, void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, i32, i32, i8*)* @layers_resize_layer_callback, i8* %31)
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %dialog, align 8
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %32)
  br label %return

return:                                           ; preds = %if.end.28, %if.then.7, %if.then.3, %if.then
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_window_get_type() #2

declare %struct._GimpDisplay* @action_data_get_display(i8*) #1

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

declare %struct._GtkWidget* @resize_dialog_new(%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, i32, void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, i32, i32, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare void @gimp_standard_help_func(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @layers_resize_layer_callback(%struct._GtkWidget* %dialog, %struct._GimpViewable* %viewable, i32 %width, i32 %height, i32 %unit, i32 %offset_x, i32 %offset_y, i32 %unused, i8* %data) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %unit.addr = alloca i32, align 4
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %unused.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %item = alloca %struct._GimpItem*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %unit, i32* %unit.addr, align 4
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  store i32 %unused, i32* %unused.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_context_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContext*
  store %struct._GimpContext* %2, %struct._GimpContext** %context, align 8
  %3 = load i32, i32* %unit.addr, align 4
  store i32 %3, i32* @layer_resize_unit, align 4
  %4 = load i32, i32* %width.addr, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %height.addr, align 4
  %cmp2 = icmp sgt i32 %5, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %7 = bitcast %struct._GimpViewable* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_item_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpItem*
  store %struct._GimpItem* %8, %struct._GimpItem** %item, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %9)
  %10 = load i32, i32* %width.addr, align 4
  %11 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call5 = call i32 @gimp_item_get_width(%struct._GimpItem* %11)
  %cmp6 = icmp eq i32 %10, %call5
  br i1 %cmp6, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %if.then
  %12 = load i32, i32* %height.addr, align 4
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call8 = call i32 @gimp_item_get_height(%struct._GimpItem* %13)
  %cmp9 = icmp eq i32 %12, %call8
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %land.lhs.true.7
  br label %if.end.12

if.end:                                           ; preds = %land.lhs.true.7, %if.then
  %14 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %16 = load i32, i32* %width.addr, align 4
  %17 = load i32, i32* %height.addr, align 4
  %18 = load i32, i32* %offset_x.addr, align 4
  %19 = load i32, i32* %offset_y.addr, align 4
  call void @gimp_item_resize(%struct._GimpItem* %14, %struct._GimpContext* %15, i32 %16, i32 %17, i32 %18, i32 %19)
  %20 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call11 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %20)
  call void @gimp_image_flush(%struct._GimpImage* %call11)
  br label %if.end.12

if.else:                                          ; preds = %land.lhs.true, %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.else, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @layers_resize_to_image_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
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
  %call1 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %2)
  store %struct._GimpLayer* %call1, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool2 = icmp ne %struct._GimpLayer* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %5 = load i8*, i8** %data.addr, align 8
  %call5 = call %struct._GimpContext* @action_data_get_context(i8* %5)
  call void @gimp_layer_resize_to_image(%struct._GimpLayer* %4, %struct._GimpContext* %call5)
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %6)
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  ret void
}

declare void @gimp_layer_resize_to_image(%struct._GimpLayer*, %struct._GimpContext*) #1

; Function Attrs: nounwind uwtable
define void @layers_scale_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %display, align 8
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
  %call1 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %2)
  store %struct._GimpLayer* %call1, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool2 = icmp ne %struct._GimpLayer* %3, null
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
  %6 = load i8*, i8** %data.addr, align 8
  %7 = bitcast i8* %6 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %7, %struct._GTypeInstance** %__inst, align 8
  %call9 = call i64 @gimp_image_window_get_type() #6
  store i64 %call9, i64* %__t, align 8
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool10 = icmp ne %struct._GTypeInstance* %8, null
  br i1 %tobool10, label %if.else, label %if.then.11

if.then.11:                                       ; preds = %if.end.8
  store i32 0, i32* %__r, align 4
  br label %if.end.18

if.else:                                          ; preds = %if.end.8
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %9, i32 0, i32 0
  %10 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool12 = icmp ne %struct._GTypeClass* %10, null
  br i1 %tobool12, label %land.lhs.true, label %if.else.15

land.lhs.true:                                    ; preds = %if.else
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class13 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %11, i32 0, i32 0
  %12 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class13, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %12, i32 0, i32 0
  %13 = load i64, i64* %g_type, align 8
  %14 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %13, %14
  br i1 %cmp, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.17

if.else.15:                                       ; preds = %land.lhs.true, %if.else
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %16 = load i64, i64* %__t, align 8
  %call16 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %15, i64 %16) #7
  store i32 %call16, i32* %__r, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.14
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.11
  %17 = load i32, i32* %__r, align 4
  store i32 %17, i32* %tmp
  %18 = load i32, i32* %tmp
  %tobool19 = icmp ne i32 %18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.18
  %19 = load i8*, i8** %data.addr, align 8
  %call21 = call %struct._GimpDisplay* @action_data_get_display(i8* %19)
  store %struct._GimpDisplay* %call21, %struct._GimpDisplay** %display, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.18
  %20 = load i32, i32* @layer_scale_unit, align 4
  %cmp23 = icmp ne i32 %20, 65536
  br i1 %cmp23, label %land.lhs.true.24, label %if.end.28

land.lhs.true.24:                                 ; preds = %if.end.22
  %21 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool25 = icmp ne %struct._GimpDisplay* %21, null
  br i1 %tobool25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %land.lhs.true.24
  %22 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call27 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %22)
  %unit = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %call27, i32 0, i32 10
  %23 = load i32, i32* %unit, align 4
  store i32 %23, i32* @layer_scale_unit, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %land.lhs.true.24, %if.end.22
  %24 = load i32, i32* @layer_scale_interp, align 4
  %cmp29 = icmp eq i32 %24, -1
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.28
  %25 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %25, i32 0, i32 1
  %26 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %26, i32 0, i32 1
  %27 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %interpolation_type = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %27, i32 0, i32 2
  %28 = load i32, i32* %interpolation_type, align 4
  store i32 %28, i32* @layer_scale_interp, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.end.28
  %29 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %30 = bitcast %struct._GimpLayer* %29 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_viewable_get_type() #6
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call32)
  %31 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpViewable*
  %32 = load i8*, i8** %data.addr, align 8
  %call34 = call %struct._GimpContext* @action_data_get_context(i8* %32)
  %call35 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0)) #5
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %34 = load i32, i32* @layer_scale_unit, align 4
  %35 = load i32, i32* @layer_scale_interp, align 4
  %36 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %37 = bitcast %struct._GimpDisplay* %36 to i8*
  %call36 = call %struct._GtkWidget* @scale_dialog_new(%struct._GimpViewable* %31, %struct._GimpContext* %call34, i8* %call35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), %struct._GtkWidget* %33, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 %34, i32 %35, void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, double, double, i32, i8*)* @layers_scale_layer_callback, i8* %37)
  store %struct._GtkWidget* %call36, %struct._GtkWidget** %dialog, align 8
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %38)
  br label %return

return:                                           ; preds = %if.end.31, %if.then.7, %if.then.3, %if.then
  ret void
}

declare %struct._GtkWidget* @scale_dialog_new(%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, i32, i32, void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, double, double, i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @layers_scale_layer_callback(%struct._GtkWidget* %dialog, %struct._GimpViewable* %viewable, i32 %width, i32 %height, i32 %unit, i32 %interpolation, double %xresolution, double %yresolution, i32 %resolution_unit, i8* %data) #0 {
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
  %data.addr = alloca i8*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %progress = alloca %struct._GimpProgress*, align 8
  %progress_dialog = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %unit, i32* %unit.addr, align 4
  store i32 %interpolation, i32* %interpolation.addr, align 4
  store double %xresolution, double* %xresolution.addr, align 8
  store double %yresolution, double* %yresolution.addr, align 8
  store i32 %resolution_unit, i32* %resolution_unit.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %2, %struct._GimpDisplay** %display, align 8
  %3 = load i32, i32* %unit.addr, align 4
  store i32 %3, i32* @layer_scale_unit, align 4
  %4 = load i32, i32* %interpolation.addr, align 4
  store i32 %4, i32* @layer_scale_interp, align 4
  %5 = load i32, i32* %width.addr, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %land.lhs.true, label %if.else.27

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, i32* %height.addr, align 4
  %cmp2 = icmp sgt i32 %6, 0
  br i1 %cmp2, label %if.then, label %if.else.27

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %8 = bitcast %struct._GimpViewable* %7 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_item_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call3)
  %9 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpItem*
  store %struct._GimpItem* %9, %struct._GimpItem** %item, align 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %progress_dialog, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %10)
  %11 = load i32, i32* %width.addr, align 4
  %12 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call5 = call i32 @gimp_item_get_width(%struct._GimpItem* %12)
  %cmp6 = icmp eq i32 %11, %call5
  br i1 %cmp6, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %if.then
  %13 = load i32, i32* %height.addr, align 4
  %14 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call8 = call i32 @gimp_item_get_height(%struct._GimpItem* %14)
  %cmp9 = icmp eq i32 %13, %call8
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %land.lhs.true.7
  br label %if.end.28

if.end:                                           ; preds = %land.lhs.true.7, %if.then
  %15 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %15, null
  br i1 %tobool, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %17 = bitcast %struct._GimpDisplay* %16 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_progress_interface_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call12)
  %18 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpProgress*
  store %struct._GimpProgress* %18, %struct._GimpProgress** %progress, align 8
  br label %if.end.17

if.else:                                          ; preds = %if.end
  %call14 = call %struct._GtkWidget* @gimp_progress_dialog_new()
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %progress_dialog, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %progress_dialog, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_progress_interface_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call15)
  %21 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpProgress*
  store %struct._GimpProgress* %21, %struct._GimpProgress** %progress, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.11
  %22 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0)) #5
  %call19 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %22, i8* %call18, i32 0)
  store %struct._GimpProgress* %call19, %struct._GimpProgress** %progress, align 8
  %23 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %24 = load i32, i32* %width.addr, align 4
  %25 = load i32, i32* %height.addr, align 4
  %26 = load i32, i32* %interpolation.addr, align 4
  %27 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  call void @gimp_item_scale_by_origin(%struct._GimpItem* %23, i32 %24, i32 %25, i32 %26, %struct._GimpProgress* %27, i32 1)
  %28 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %tobool20 = icmp ne %struct._GimpProgress* %28, null
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.17
  %29 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %29)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.17
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %progress_dialog, align 8
  %tobool23 = icmp ne %struct._GtkWidget* %30, null
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.22
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %progress_dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %31)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.end.22
  %32 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call26 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %32)
  call void @gimp_image_flush(%struct._GimpImage* %call26)
  br label %if.end.28

if.else.27:                                       ; preds = %land.lhs.true, %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.10, %if.else.27, %if.end.25
  ret void
}

; Function Attrs: nounwind uwtable
define void @layers_crop_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
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
  %call1 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %2)
  store %struct._GimpLayer* %call1, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool2 = icmp ne %struct._GimpLayer* %3, null
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
  %call9 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %6)
  %call10 = call i32 @gimp_channel_bounds(%struct._GimpChannel* %call9, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.15, label %if.then.12

if.then.12:                                       ; preds = %if.end.8
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %7, i32 0, i32 1
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 80)
  %11 = bitcast %struct._GTypeInstance* %call13 to %struct._GObject*
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.16, i32 0, i32 0)) #5
  call void @gimp_message_literal(%struct._Gimp* %8, %struct._GObject* %11, i32 1, i8* %call14)
  br label %return

if.end.15:                                        ; preds = %if.end.8
  %12 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %13 = bitcast %struct._GimpLayer* %12 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_item_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call16)
  %14 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %14, i32* %off_x, i32* %off_y)
  %15 = load i32, i32* %x1, align 4
  %16 = load i32, i32* %off_x, align 4
  %sub = sub nsw i32 %16, %15
  store i32 %sub, i32* %off_x, align 4
  %17 = load i32, i32* %y1, align 4
  %18 = load i32, i32* %off_y, align 4
  %sub18 = sub nsw i32 %18, %17
  store i32 %sub18, i32* %off_y, align 4
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0)) #5
  %call20 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %19, i32 22, i8* %call19)
  %20 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %21 = bitcast %struct._GimpLayer* %20 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_item_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call21)
  %22 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpItem*
  %23 = load i8*, i8** %data.addr, align 8
  %call23 = call %struct._GimpContext* @action_data_get_context(i8* %23)
  %24 = load i32, i32* %x2, align 4
  %25 = load i32, i32* %x1, align 4
  %sub24 = sub nsw i32 %24, %25
  %26 = load i32, i32* %y2, align 4
  %27 = load i32, i32* %y1, align 4
  %sub25 = sub nsw i32 %26, %27
  %28 = load i32, i32* %off_x, align 4
  %29 = load i32, i32* %off_y, align 4
  call void @gimp_item_resize(%struct._GimpItem* %22, %struct._GimpContext* %call23, i32 %sub24, i32 %sub25, i32 %28, i32 %29)
  %30 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call26 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %30)
  %31 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %31)
  br label %return

return:                                           ; preds = %if.end.15, %if.then.12, %if.then.7, %if.then.3, %if.then
  ret void
}

declare i32 @gimp_channel_bounds(%struct._GimpChannel*, i32*, i32*, i32*, i32*) #1

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #1

declare void @gimp_item_resize(%struct._GimpItem*, %struct._GimpContext*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @layers_mask_add_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %dialog = alloca %struct._LayerAddMaskDialog*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
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
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %2)
  store %struct._GimpLayer* %call1, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool2 = icmp ne %struct._GimpLayer* %3, null
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
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %7 = load i8*, i8** %data.addr, align 8
  %call9 = call %struct._GimpContext* @action_data_get_context(i8* %7)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %9 = load i32, i32* @layer_add_mask_type, align 4
  %10 = load i32, i32* @layer_mask_invert, align 4
  %call10 = call %struct._LayerAddMaskDialog* @layer_add_mask_dialog_new(%struct._GimpLayer* %6, %struct._GimpContext* %call9, %struct._GtkWidget* %8, i32 %9, i32 %10)
  store %struct._LayerAddMaskDialog* %call10, %struct._LayerAddMaskDialog** %dialog, align 8
  %11 = load %struct._LayerAddMaskDialog*, %struct._LayerAddMaskDialog** %dialog, align 8
  %dialog11 = getelementptr inbounds %struct._LayerAddMaskDialog, %struct._LayerAddMaskDialog* %11, i32 0, i32 0
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog11, align 8
  %13 = bitcast %struct._GtkWidget* %12 to i8*
  %14 = load %struct._LayerAddMaskDialog*, %struct._LayerAddMaskDialog** %dialog, align 8
  %15 = bitcast %struct._LayerAddMaskDialog* %14 to i8*
  %call12 = call i64 @g_signal_connect_data(i8* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._LayerAddMaskDialog*)* @layers_add_mask_response to void ()*), i8* %15, void (i8*, %struct._GClosure*)* null, i32 0)
  %16 = load %struct._LayerAddMaskDialog*, %struct._LayerAddMaskDialog** %dialog, align 8
  %dialog13 = getelementptr inbounds %struct._LayerAddMaskDialog, %struct._LayerAddMaskDialog* %16, i32 0, i32 0
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog13, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %17)
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.then.3, %if.then
  ret void
}

declare %struct._LayerAddMaskDialog* @layer_add_mask_dialog_new(%struct._GimpLayer*, %struct._GimpContext*, %struct._GtkWidget*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @layers_add_mask_response(%struct._GtkWidget* %widget, i32 %response_id, %struct._LayerAddMaskDialog* %dialog) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %dialog.addr = alloca %struct._LayerAddMaskDialog*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %mask = alloca %struct._GimpLayerMask*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._LayerAddMaskDialog* %dialog, %struct._LayerAddMaskDialog** %dialog.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end.20

if.then:                                          ; preds = %entry
  %1 = load %struct._LayerAddMaskDialog*, %struct._LayerAddMaskDialog** %dialog.addr, align 8
  %layer1 = getelementptr inbounds %struct._LayerAddMaskDialog, %struct._LayerAddMaskDialog* %1, i32 0, i32 1
  %2 = load %struct._GimpLayer*, %struct._GimpLayer** %layer1, align 8
  store %struct._GimpLayer* %2, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %4 = bitcast %struct._GimpLayer* %3 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpItem*
  %call3 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %5)
  store %struct._GimpImage* %call3, %struct._GimpImage** %image, align 8
  %6 = load %struct._LayerAddMaskDialog*, %struct._LayerAddMaskDialog** %dialog.addr, align 8
  %add_mask_type = getelementptr inbounds %struct._LayerAddMaskDialog, %struct._LayerAddMaskDialog* %6, i32 0, i32 2
  %7 = load i32, i32* %add_mask_type, align 4
  %cmp4 = icmp eq i32 %7, 6
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %8 = load %struct._LayerAddMaskDialog*, %struct._LayerAddMaskDialog** %dialog.addr, align 8
  %channel = getelementptr inbounds %struct._LayerAddMaskDialog, %struct._LayerAddMaskDialog* %8, i32 0, i32 3
  %9 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %tobool = icmp ne %struct._GimpChannel* %9, null
  br i1 %tobool, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %land.lhs.true
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %10, i32 0, i32 1
  %11 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 80)
  %14 = bitcast %struct._GTypeInstance* %call6 to %struct._GObject*
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i32 0, i32 0)) #5
  call void @gimp_message_literal(%struct._Gimp* %11, %struct._GObject* %14, i32 1, i8* %call7)
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  %15 = load %struct._LayerAddMaskDialog*, %struct._LayerAddMaskDialog** %dialog.addr, align 8
  %add_mask_type8 = getelementptr inbounds %struct._LayerAddMaskDialog, %struct._LayerAddMaskDialog* %15, i32 0, i32 2
  %16 = load i32, i32* %add_mask_type8, align 4
  store i32 %16, i32* @layer_add_mask_type, align 4
  %17 = load %struct._LayerAddMaskDialog*, %struct._LayerAddMaskDialog** %dialog.addr, align 8
  %invert = getelementptr inbounds %struct._LayerAddMaskDialog, %struct._LayerAddMaskDialog* %17, i32 0, i32 4
  %18 = load i32, i32* %invert, align 4
  store i32 %18, i32* @layer_mask_invert, align 4
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0)) #5
  %call10 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %19, i32 24, i8* %call9)
  %20 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %21 = load i32, i32* @layer_add_mask_type, align 4
  %22 = load %struct._LayerAddMaskDialog*, %struct._LayerAddMaskDialog** %dialog.addr, align 8
  %channel11 = getelementptr inbounds %struct._LayerAddMaskDialog, %struct._LayerAddMaskDialog* %22, i32 0, i32 3
  %23 = load %struct._GimpChannel*, %struct._GimpChannel** %channel11, align 8
  %call12 = call %struct._GimpLayerMask* @gimp_layer_create_mask(%struct._GimpLayer* %20, i32 %21, %struct._GimpChannel* %23)
  store %struct._GimpLayerMask* %call12, %struct._GimpLayerMask** %mask, align 8
  %24 = load i32, i32* @layer_mask_invert, align 4
  %tobool13 = icmp ne i32 %24, 0
  br i1 %tobool13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %if.end
  %25 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %26 = bitcast %struct._GimpLayerMask* %25 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_channel_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call15)
  %27 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpChannel*
  call void @gimp_channel_invert(%struct._GimpChannel* %27, i32 0)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %if.end
  %28 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %29 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %call18 = call %struct._GimpLayerMask* @gimp_layer_add_mask(%struct._GimpLayer* %28, %struct._GimpLayerMask* %29, i32 1, %struct._GError** null)
  %30 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call19 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %30)
  %31 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %31)
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.17, %entry
  %32 = load %struct._LayerAddMaskDialog*, %struct._LayerAddMaskDialog** %dialog.addr, align 8
  %dialog21 = getelementptr inbounds %struct._LayerAddMaskDialog, %struct._LayerAddMaskDialog* %32, i32 0, i32 0
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog21, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %33)
  br label %return

return:                                           ; preds = %if.end.20, %if.then.5
  ret void
}

; Function Attrs: nounwind uwtable
define void @layers_mask_apply_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %mode = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.8

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %2)
  store %struct._GimpLayer* %call1, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool2 = icmp ne %struct._GimpLayer* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %if.end.8

if.end.4:                                         ; preds = %if.end
  %4 = load i32, i32* %value.addr, align 4
  store i32 %4, i32* %mode, align 4
  %5 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call5 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %5)
  %tobool6 = icmp ne %struct._GimpLayerMask* %call5, null
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %7 = load i32, i32* %mode, align 4
  call void @gimp_layer_apply_mask(%struct._GimpLayer* %6, i32 %7, i32 1)
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %8)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then, %if.then.3, %if.then.7, %if.end.4
  ret void
}

declare %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer*) #1

declare void @gimp_layer_apply_mask(%struct._GimpLayer*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @layers_mask_edit_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %mask = alloca %struct._GimpLayerMask*, align 8
  %active = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.11

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %2)
  store %struct._GimpLayer* %call1, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool2 = icmp ne %struct._GimpLayer* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %if.end.11

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call5 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %4)
  store %struct._GimpLayerMask* %call5, %struct._GimpLayerMask** %mask, align 8
  %5 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool6 = icmp ne %struct._GimpLayerMask* %5, null
  br i1 %tobool6, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %if.end.4
  %6 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %7 = bitcast %struct._GtkAction* %6 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_toggle_action_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call8)
  %8 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkToggleAction*
  %call10 = call i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction* %8)
  store i32 %call10, i32* %active, align 4
  %9 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %10 = load i32, i32* %active, align 4
  call void @gimp_layer_mask_set_edit(%struct._GimpLayerMask* %9, i32 %10)
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %11)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then, %if.then.3, %if.then.7, %if.end.4
  ret void
}

declare i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_action_get_type() #2

declare void @gimp_layer_mask_set_edit(%struct._GimpLayerMask*, i32) #1

; Function Attrs: nounwind uwtable
define void @layers_mask_show_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %mask = alloca %struct._GimpLayerMask*, align 8
  %active = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.11

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %2)
  store %struct._GimpLayer* %call1, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool2 = icmp ne %struct._GimpLayer* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %if.end.11

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call5 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %4)
  store %struct._GimpLayerMask* %call5, %struct._GimpLayerMask** %mask, align 8
  %5 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool6 = icmp ne %struct._GimpLayerMask* %5, null
  br i1 %tobool6, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %if.end.4
  %6 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %7 = bitcast %struct._GtkAction* %6 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_toggle_action_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call8)
  %8 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkToggleAction*
  %call10 = call i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction* %8)
  store i32 %call10, i32* %active, align 4
  %9 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %10 = load i32, i32* %active, align 4
  call void @gimp_layer_mask_set_show(%struct._GimpLayerMask* %9, i32 %10, i32 1)
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %11)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then, %if.then.3, %if.then.7, %if.end.4
  ret void
}

declare void @gimp_layer_mask_set_show(%struct._GimpLayerMask*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @layers_mask_disable_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %mask = alloca %struct._GimpLayerMask*, align 8
  %active = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.12

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %2)
  store %struct._GimpLayer* %call1, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool2 = icmp ne %struct._GimpLayer* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %if.end.12

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call5 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %4)
  store %struct._GimpLayerMask* %call5, %struct._GimpLayerMask** %mask, align 8
  %5 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool6 = icmp ne %struct._GimpLayerMask* %5, null
  br i1 %tobool6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %if.end.4
  %6 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %7 = bitcast %struct._GtkAction* %6 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_toggle_action_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call8)
  %8 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkToggleAction*
  %call10 = call i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction* %8)
  store i32 %call10, i32* %active, align 4
  %9 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %10 = load i32, i32* %active, align 4
  %tobool11 = icmp ne i32 %10, 0
  %lnot = xor i1 %tobool11, true
  %lnot.ext = zext i1 %lnot to i32
  call void @gimp_layer_mask_set_apply(%struct._GimpLayerMask* %9, i32 %lnot.ext, i32 1)
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %11)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then, %if.then.3, %if.then.7, %if.end.4
  ret void
}

declare void @gimp_layer_mask_set_apply(%struct._GimpLayerMask*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @layers_mask_to_selection_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %mask = alloca %struct._GimpLayerMask*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.10

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %2)
  store %struct._GimpLayer* %call1, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool2 = icmp ne %struct._GimpLayer* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %if.end.10

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call5 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %4)
  store %struct._GimpLayerMask* %call5, %struct._GimpLayerMask** %mask, align 8
  %5 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool6 = icmp ne %struct._GimpLayerMask* %5, null
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end.4
  %6 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %7 = bitcast %struct._GimpLayerMask* %6 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_item_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call8)
  %8 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpItem*
  %9 = load i32, i32* %value.addr, align 4
  call void @gimp_item_to_selection(%struct._GimpItem* %8, i32 %9, i32 1, i32 0, double 0.000000e+00, double 0.000000e+00)
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %10)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then, %if.then.3, %if.then.7, %if.end.4
  ret void
}

declare void @gimp_item_to_selection(%struct._GimpItem*, i32, i32, i32, double, double) #1

; Function Attrs: nounwind uwtable
define void @layers_alpha_add_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.10

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %2)
  store %struct._GimpLayer* %call1, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool2 = icmp ne %struct._GimpLayer* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %if.end.10

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %5 = bitcast %struct._GimpLayer* %4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_drawable_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call5)
  %6 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpDrawable*
  %call7 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end.4
  %7 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  call void @gimp_layer_add_alpha(%struct._GimpLayer* %7)
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %8)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then, %if.then.3, %if.then.9, %if.end.4
  ret void
}

declare i32 @gimp_drawable_has_alpha(%struct._GimpDrawable*) #1

declare void @gimp_layer_add_alpha(%struct._GimpLayer*) #1

; Function Attrs: nounwind uwtable
define void @layers_alpha_remove_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.11

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %2)
  store %struct._GimpLayer* %call1, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool2 = icmp ne %struct._GimpLayer* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %if.end.11

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %5 = bitcast %struct._GimpLayer* %4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_drawable_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call5)
  %6 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpDrawable*
  %call7 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.4
  %7 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %8 = load i8*, i8** %data.addr, align 8
  %call10 = call %struct._GimpContext* @action_data_get_context(i8* %8)
  call void @gimp_layer_flatten(%struct._GimpLayer* %7, %struct._GimpContext* %call10)
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %9)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then, %if.then.3, %if.then.9, %if.end.4
  ret void
}

declare void @gimp_layer_flatten(%struct._GimpLayer*, %struct._GimpContext*) #1

; Function Attrs: nounwind uwtable
define void @layers_alpha_to_selection_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
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
  %call1 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %2)
  store %struct._GimpLayer* %call1, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool2 = icmp ne %struct._GimpLayer* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %5 = bitcast %struct._GimpLayer* %4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call5)
  %6 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %7 = load i32, i32* %value.addr, align 4
  call void @gimp_item_to_selection(%struct._GimpItem* %6, i32 %7, i32 1, i32 0, double 0.000000e+00, double 0.000000e+00)
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %8)
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @layers_opacity_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %opacity = alloca double, align 8
  %undo = alloca %struct._GimpUndo*, align 8
  %push_undo = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  store i32 1, i32* %push_undo, align 4
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
  %call1 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %2)
  store %struct._GimpLayer* %call1, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool2 = icmp ne %struct._GimpLayer* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call5 = call i64 @gimp_item_undo_get_type() #6
  %call6 = call %struct._GimpUndo* @gimp_image_undo_can_compress(%struct._GimpImage* %4, i64 %call5, i32 56)
  store %struct._GimpUndo* %call6, %struct._GimpUndo** %undo, align 8
  %5 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %tobool7 = icmp ne %struct._GimpUndo* %5, null
  br i1 %tobool7, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.end.4
  %6 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %7 = bitcast %struct._GimpUndo* %6 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_item_undo_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call8)
  %8 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpItemUndo*
  %item = getelementptr inbounds %struct._GimpItemUndo, %struct._GimpItemUndo* %8, i32 0, i32 1
  %9 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %10 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %11 = bitcast %struct._GimpLayer* %10 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_item_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call10)
  %12 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpItem*
  %cmp = icmp eq %struct._GimpItem* %9, %12
  br i1 %cmp, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %land.lhs.true
  store i32 0, i32* %push_undo, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %land.lhs.true, %if.end.4
  %13 = load i32, i32* %value.addr, align 4
  %14 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call14 = call double @gimp_layer_get_opacity(%struct._GimpLayer* %14)
  %call15 = call double @action_select_value(i32 %13, double %call14, double 0.000000e+00, double 1.000000e+00, double 1.000000e+00, double 0x3F70101010101010, double 1.000000e-02, double 1.000000e-01, double 0.000000e+00, i32 0)
  store double %call15, double* %opacity, align 8
  %15 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %16 = load double, double* %opacity, align 8
  %17 = load i32, i32* %push_undo, align 4
  call void @gimp_layer_set_opacity(%struct._GimpLayer* %15, double %16, i32 %17)
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %18)
  br label %return

return:                                           ; preds = %if.end.13, %if.then.3, %if.then
  ret void
}

declare %struct._GimpUndo* @gimp_image_undo_can_compress(%struct._GimpImage*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_undo_get_type() #2

declare double @action_select_value(i32, double, double, double, double, double, double, double, double, i32) #1

declare void @gimp_layer_set_opacity(%struct._GimpLayer*, double, i32) #1

; Function Attrs: nounwind uwtable
define void @layers_mode_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %layer_mode = alloca i32, align 4
  %index = alloca i32, align 4
  %undo = alloca %struct._GimpUndo*, align 8
  %push_undo = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  store i32 1, i32* %push_undo, align 4
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
  %call1 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %2)
  store %struct._GimpLayer* %call1, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool2 = icmp ne %struct._GimpLayer* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call5 = call i64 @gimp_item_undo_get_type() #6
  %call6 = call %struct._GimpUndo* @gimp_image_undo_can_compress(%struct._GimpImage* %4, i64 %call5, i32 55)
  store %struct._GimpUndo* %call6, %struct._GimpUndo** %undo, align 8
  %5 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %tobool7 = icmp ne %struct._GimpUndo* %5, null
  br i1 %tobool7, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.end.4
  %6 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %7 = bitcast %struct._GimpUndo* %6 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_item_undo_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call8)
  %8 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpItemUndo*
  %item = getelementptr inbounds %struct._GimpItemUndo, %struct._GimpItemUndo* %8, i32 0, i32 1
  %9 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %10 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %11 = bitcast %struct._GimpLayer* %10 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_item_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call10)
  %12 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpItem*
  %cmp = icmp eq %struct._GimpItem* %9, %12
  br i1 %cmp, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %land.lhs.true
  store i32 0, i32* %push_undo, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %land.lhs.true, %if.end.4
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call14 = call i32 @gimp_layer_get_mode(%struct._GimpLayer* %13)
  store i32 %call14, i32* %layer_mode, align 4
  %14 = load i32, i32* %value.addr, align 4
  %15 = load i32, i32* %layer_mode, align 4
  %call15 = call i32 @layers_mode_index(i32 %15)
  %conv = sitofp i32 %call15 to double
  %call16 = call double @action_select_value(i32 %14, double %conv, double 0.000000e+00, double 2.000000e+01, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, i32 0)
  %conv17 = fptosi double %call16 to i32
  store i32 %conv17, i32* %index, align 4
  %16 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %17 = load i32, i32* %index, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds [21 x i32], [21 x i32]* @layer_modes, i32 0, i64 %idxprom
  %18 = load i32, i32* %arrayidx, align 4
  %19 = load i32, i32* %push_undo, align 4
  call void @gimp_layer_set_mode(%struct._GimpLayer* %16, i32 %18, i32 %19)
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %20)
  br label %return

return:                                           ; preds = %if.end.13, %if.then.3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @layers_mode_index(i32 %layer_mode) #0 {
entry:
  %layer_mode.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %layer_mode, i32* %layer_mode.addr, align 4
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 20
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [21 x i32], [21 x i32]* @layer_modes, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %layer_mode.addr, align 4
  %cmp2 = icmp ne i32 %2, %3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %6 = load i32, i32* %i, align 4
  ret i32 %6
}

declare void @gimp_layer_set_mode(%struct._GimpLayer*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @layers_lock_alpha_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %lock_alpha = alloca i32, align 4
  %undo = alloca %struct._GimpUndo*, align 8
  %push_undo = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.20

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %2)
  store %struct._GimpLayer* %call1, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool2 = icmp ne %struct._GimpLayer* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %if.end.20

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %5 = bitcast %struct._GtkAction* %4 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_toggle_action_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call5)
  %6 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkToggleAction*
  %call7 = call i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction* %6)
  store i32 %call7, i32* %lock_alpha, align 4
  %7 = load i32, i32* %lock_alpha, align 4
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call8 = call i32 @gimp_layer_get_lock_alpha(%struct._GimpLayer* %8)
  %cmp = icmp ne i32 %7, %call8
  br i1 %cmp, label %if.then.9, label %if.end.20

if.then.9:                                        ; preds = %if.end.4
  store i32 1, i32* %push_undo, align 4
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call10 = call i64 @gimp_item_undo_get_type() #6
  %call11 = call %struct._GimpUndo* @gimp_image_undo_can_compress(%struct._GimpImage* %9, i64 %call10, i32 57)
  store %struct._GimpUndo* %call11, %struct._GimpUndo** %undo, align 8
  %10 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %tobool12 = icmp ne %struct._GimpUndo* %10, null
  br i1 %tobool12, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.then.9
  %11 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %12 = bitcast %struct._GimpUndo* %11 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_item_undo_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call13)
  %13 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpItemUndo*
  %item = getelementptr inbounds %struct._GimpItemUndo, %struct._GimpItemUndo* %13, i32 0, i32 1
  %14 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %15 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %16 = bitcast %struct._GimpLayer* %15 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_item_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call15)
  %17 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpItem*
  %cmp17 = icmp eq %struct._GimpItem* %14, %17
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %land.lhs.true
  store i32 0, i32* %push_undo, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %land.lhs.true, %if.then.9
  %18 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %19 = load i32, i32* %lock_alpha, align 4
  %20 = load i32, i32* %push_undo, align 4
  call void @gimp_layer_set_lock_alpha(%struct._GimpLayer* %18, i32 %19, i32 %20)
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %21)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then, %if.then.3, %if.end.19, %if.end.4
  ret void
}

declare i32 @gimp_layer_get_lock_alpha(%struct._GimpLayer*) #1

declare void @gimp_layer_set_lock_alpha(%struct._GimpLayer*, i32, i32) #1

declare void @g_free(i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare i8* @gtk_entry_get_text(%struct._GtkEntry*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #2

; Function Attrs: nounwind readnone
declare double @rint(double) #2

declare double @gimp_size_entry_get_refval(%struct._GimpSizeEntry*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_size_entry_get_type() #2

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
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare i32 @gimp_item_rename(%struct._GimpItem*, i8*, %struct._GError**) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #2

declare %struct._GimpLayerMask* @gimp_layer_create_mask(%struct._GimpLayer*, i32, %struct._GimpChannel*) #1

declare void @gimp_channel_invert(%struct._GimpChannel*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_get_type() #2

declare %struct._GimpLayerMask* @gimp_layer_add_mask(%struct._GimpLayer*, %struct._GimpLayerMask*, i32, %struct._GError**) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_display_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #2

declare %struct._GtkWidget* @gimp_progress_dialog_new() #1

declare %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress*, i8*, i32) #1

declare void @gimp_item_scale_by_origin(%struct._GimpItem*, i32, i32, i32, %struct._GimpProgress*, i32) #1

declare void @gimp_progress_end(%struct._GimpProgress*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
