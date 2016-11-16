; ModuleID = './app/tools/gimptransformtool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpTransformToolClass = type { %struct._GimpDrawToolClass, void (%struct._GimpTransformTool*)*, void (%struct._GimpTransformTool*)*, void (%struct._GimpTransformTool*)*, void (%struct._GimpTransformTool*)*, void (%struct._GimpTransformTool*)*, i8* (%struct._GimpTransformTool*)*, %struct._TileManager* (%struct._GimpTransformTool*, %struct._GimpItem*, %struct._TileManager*, i32, i32, i32*, i32*)* }
%struct._GimpDrawToolClass = type { %struct._GimpToolClass, void (%struct._GimpDrawTool*)* }
%struct._GimpToolClass = type { %struct._GimpObjectClass, i32 (%struct._GimpTool*, %struct._GimpDisplay*)*, %struct._GimpDisplay* (%struct._GimpTool*, %struct._GimpImage*)*, i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)*, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)*, i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)*, i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)*, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)*, %struct._GimpUIManager* (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*, i8**)*, void (%struct._GimpTool*, %struct._GimpToolOptions*, %struct._GParamSpec*)* }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpTool = type { %struct._GimpObject, %struct._GimpToolInfo*, i32, %struct._GimpToolControl*, %struct._GimpDisplay*, %struct._GimpDrawable*, %struct._GimpDisplay*, i32, i32, i32, i32, i32, %struct._GimpCoords, i32, %struct._GList*, %struct._GimpCanvasItem*, %struct._GimpDisplay* }
%struct._GimpToolInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GimpToolOptions*, %struct._GimpPaintInfo*, %struct._GimpContainer* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpTemplate = type opaque
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
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GimpPaintInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpToolControl = type { %struct._GimpObject, i32, i32, i32, %struct._GSList*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpCanvasItem = type { %struct._GimpObject }
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpDisplayConfig = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GdkEventKey = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32, i8*, i16, i8, i8 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpUIManager = type opaque
%struct._GimpDrawTool = type { %struct._GimpTool, %struct._GimpDisplay*, i32, i32, i64, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GList* }
%struct._GimpTransformTool = type { %struct._GimpDrawTool, double, double, double, double, i32, i32, i32, i32, double, double, double, double, double, double, double, double, double, double, double, double, double, %struct._GimpMatrix3, [8 x double], [8 x double], [8 x double], i32, i32, i32, i32, i32, [11 x %struct._GimpCanvasItem*], i8*, %struct._GtkWidget* }
%struct._GimpMatrix3 = type { [3 x [3 x double]] }
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
%struct._TileManager = type opaque
%struct._GimpTransformOptions = type { %struct._GimpToolOptions, i32, i32, i32, i32, i32, i32, double, i32, i32, i32 }
%struct._GimpCanvasGroup = type { %struct._GimpCanvasItem }
%struct._BoundSeg = type { i32, i32, i32, i32, i8 }
%struct._GimpVectors = type { %struct._GimpItem, %struct._GList*, i32, i32, double, %struct.cairo_path*, i32, i32, double, double, double, double }
%struct.cairo_path = type { i32, %union._cairo_path_data_t*, i32 }
%union._cairo_path_data_t = type { %struct.anon.0 }
%struct.anon.0 = type { double, double }
%struct._GimpStroke = type { %struct._GimpObject, i32, %struct._GList*, i32 }
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GeglNode = type opaque
%struct._GimpDisplayShell = type { %struct._GtkBox, %struct._GimpDisplay*, %struct._GimpUIManager*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct._GimpZoomModel*, double, i32, i32, i32, double, i32, i32, i32, %struct._Selection*, %struct._GList*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._cairo_surface*, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, i32, i8*, i8*, i32, i32, %struct._GdkPixbuf*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpColorDisplayStack*, i32, %struct._GtkWidget*, i32, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, %struct._GimpDrawable*, %struct._GimpRGB, %struct._GimpMotionBuffer*, %struct._GQueue* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
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
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpViewableDialog = type { %struct._GimpDialog, %struct._GimpContext*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpToolDialog = type { %struct._GimpViewableDialog }
%struct._GimpUndo = type { %struct._GimpViewable, %struct._GimpImage*, i32, i32, i32, %struct._TempBuf*, i32 }
%struct._TempBuf = type opaque

@gimp_transform_tool_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"GimpTransformTool\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Gimp-Tools\00", align 1
@__func__.gimp_transform_tool_recalc_matrix = private unnamed_addr constant [34 x i8] c"gimp_transform_tool_recalc_matrix\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"GIMP_IS_TRANSFORM_TOOL (tr_tool)\00", align 1
@gimp_transform_tool_parent_class = internal global i8* null, align 8
@GimpTransformTool_private_offset = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"The selection does not intersect with the layer.\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"There is no layer to transform.\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"The active layer's pixels are locked.\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"There is no selection to transform.\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"The selection's pixels are locked.\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"There is no path to transform.\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"The active path's strokes are locked.\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"gimp-reset\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@__func__.gimp_transform_tool_response = private unnamed_addr constant [29 x i8] c"gimp_transform_tool_response\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"tool->display != NULL\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"transform-tool\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"constrain\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"tools/tools-transform-preview-opacity-set\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"Transforming\00", align 1
@__func__.gimp_transform_tool_transform_bounding_box = private unnamed_addr constant [43 x i8] c"gimp_transform_tool_transform_bounding_box\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_transform_tool_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_transform_tool_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_transform_tool_get_type.g_define_type_id__volatile to i8*))
  %tobool2 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  store i32 %land.ext, i32* %tmp
  %4 = load i32, i32* %tmp
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %call5 = call i64 @gimp_draw_tool_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 344, void (i8*, i8*)* bitcast (void (i8*)* @gimp_transform_tool_class_intern_init to void (i8*, i8*)*), i32 792, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpTransformTool*)* @gimp_transform_tool_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_transform_tool_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_transform_tool_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_draw_tool_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_transform_tool_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_transform_tool_parent_class, align 8
  %1 = load i32, i32* @GimpTransformTool_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpTransformTool_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpTransformToolClass*
  call void @gimp_transform_tool_class_init(%struct._GimpTransformToolClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_transform_tool_init(%struct._GimpTransformTool* %tr_tool) #3 {
entry:
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %0 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %1 = bitcast %struct._GimpTransformTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 3
  %4 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_set_action_value_1(%struct._GimpToolControl* %4, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i32 0, i32 0))
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control2 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 3
  %6 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control2, align 8
  call void @gimp_tool_control_set_scroll_lock(%struct._GimpToolControl* %6, i32 1)
  %7 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control3 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %7, i32 0, i32 3
  %8 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control3, align 8
  call void @gimp_tool_control_set_preserve(%struct._GimpToolControl* %8, i32 0)
  %9 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control4 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %9, i32 0, i32 3
  %10 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control4, align 8
  call void @gimp_tool_control_set_dirty_mask(%struct._GimpToolControl* %10, i32 834)
  %11 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control5 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %11, i32 0, i32 3
  %12 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control5, align 8
  call void @gimp_tool_control_set_precision(%struct._GimpToolControl* %12, i32 2)
  %13 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %function = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %13, i32 0, i32 26
  store i32 0, i32* %function, align 4
  %14 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %transform = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %14, i32 0, i32 22
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %transform)
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0)) #6
  %15 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %progress_text = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %15, i32 0, i32 32
  store i8* %call6, i8** %progress_text, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_transform_tool_recalc_matrix(%struct._GimpTransformTool* %tr_tool) #3 {
entry:
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %1 = bitcast %struct._GimpTransformTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_transform_tool_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_transform_tool_recalc_matrix, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.20

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %14 = bitcast %struct._GimpTransformTool* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpTransformToolClass*
  %recalc_matrix = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %16, i32 0, i32 5
  %17 = load void (%struct._GimpTransformTool*)*, void (%struct._GimpTransformTool*)** %recalc_matrix, align 8
  %tobool12 = icmp ne void (%struct._GimpTransformTool*)* %17, null
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %do.end
  %18 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %19 = bitcast %struct._GimpTransformTool* %18 to %struct._GTypeInstance*
  %g_class14 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class14, align 8
  %21 = bitcast %struct._GTypeClass* %20 to %struct._GimpTransformToolClass*
  %recalc_matrix15 = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %21, i32 0, i32 5
  %22 = load void (%struct._GimpTransformTool*)*, void (%struct._GimpTransformTool*)** %recalc_matrix15, align 8
  %23 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  call void %22(%struct._GimpTransformTool* %23)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %do.end
  %24 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  call void @gimp_transform_tool_transform_bounding_box(%struct._GimpTransformTool* %24)
  %25 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  call void @gimp_transform_tool_dialog_update(%struct._GimpTransformTool* %25)
  %26 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %dialog = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %26, i32 0, i32 33
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool17 = icmp ne %struct._GtkWidget* %27, null
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.16
  %28 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %dialog19 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %28, i32 0, i32 33
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog19, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %29)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.9, %if.then.18, %if.end.16
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_transform_tool_transform_bounding_box(%struct._GimpTransformTool* %tr_tool) #3 {
entry:
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %1 = bitcast %struct._GimpTransformTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_transform_tool_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__func__.gimp_transform_tool_transform_bounding_box, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %transform = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %13, i32 0, i32 22
  %14 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %14, i32 0, i32 5
  %15 = load i32, i32* %x1, align 4
  %conv = sitofp i32 %15 to double
  %16 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %y1 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %16, i32 0, i32 6
  %17 = load i32, i32* %y1, align 4
  %conv11 = sitofp i32 %17 to double
  %18 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %tx1 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %18, i32 0, i32 12
  %19 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %ty1 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %19, i32 0, i32 13
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %transform, double %conv, double %conv11, double* %tx1, double* %ty1)
  %20 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %transform12 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %20, i32 0, i32 22
  %21 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %21, i32 0, i32 7
  %22 = load i32, i32* %x2, align 4
  %conv13 = sitofp i32 %22 to double
  %23 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %y114 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %23, i32 0, i32 6
  %24 = load i32, i32* %y114, align 4
  %conv15 = sitofp i32 %24 to double
  %25 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %tx2 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %25, i32 0, i32 14
  %26 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %ty2 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %26, i32 0, i32 15
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %transform12, double %conv13, double %conv15, double* %tx2, double* %ty2)
  %27 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %transform16 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %27, i32 0, i32 22
  %28 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %x117 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %28, i32 0, i32 5
  %29 = load i32, i32* %x117, align 4
  %conv18 = sitofp i32 %29 to double
  %30 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %30, i32 0, i32 8
  %31 = load i32, i32* %y2, align 4
  %conv19 = sitofp i32 %31 to double
  %32 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %tx3 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %32, i32 0, i32 16
  %33 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %ty3 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %33, i32 0, i32 17
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %transform16, double %conv18, double %conv19, double* %tx3, double* %ty3)
  %34 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %transform20 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %34, i32 0, i32 22
  %35 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %x221 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %35, i32 0, i32 7
  %36 = load i32, i32* %x221, align 4
  %conv22 = sitofp i32 %36 to double
  %37 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %y223 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %37, i32 0, i32 8
  %38 = load i32, i32* %y223, align 4
  %conv24 = sitofp i32 %38 to double
  %39 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %tx4 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %39, i32 0, i32 18
  %40 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %ty4 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %40, i32 0, i32 19
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %transform20, double %conv22, double %conv24, double* %tx4, double* %ty4)
  %41 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %transform25 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %41, i32 0, i32 22
  %42 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %cx = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %42, i32 0, i32 9
  %43 = load double, double* %cx, align 8
  %44 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %cy = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %44, i32 0, i32 10
  %45 = load double, double* %cy, align 8
  %46 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %tcx = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %46, i32 0, i32 20
  %47 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %tcy = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %47, i32 0, i32 21
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %transform25, double %43, double %45, double* %tcx, double* %tcy)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_transform_tool_dialog_update(%struct._GimpTransformTool* %tr_tool) #3 {
entry:
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %0 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %dialog = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %0, i32 0, i32 33
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %3 = bitcast %struct._GimpTransformTool* %2 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %5 = bitcast %struct._GTypeClass* %4 to %struct._GimpTransformToolClass*
  %dialog_update = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %5, i32 0, i32 2
  %6 = load void (%struct._GimpTransformTool*)*, void (%struct._GimpTransformTool*)** %dialog_update, align 8
  %tobool1 = icmp ne void (%struct._GimpTransformTool*)* %6, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %8 = bitcast %struct._GimpTransformTool* %7 to %struct._GTypeInstance*
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %10 = bitcast %struct._GTypeClass* %9 to %struct._GimpTransformToolClass*
  %dialog_update3 = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %10, i32 0, i32 2
  %11 = load void (%struct._GimpTransformTool*)*, void (%struct._GimpTransformTool*)** %dialog_update3, align 8
  %12 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  call void %11(%struct._GimpTransformTool* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_transform_tool_class_init(%struct._GimpTransformToolClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpTransformToolClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %tool_class = alloca %struct._GimpToolClass*, align 8
  %draw_class = alloca %struct._GimpDrawToolClass*, align 8
  store %struct._GimpTransformToolClass* %klass, %struct._GimpTransformToolClass** %klass.addr, align 8
  %0 = load %struct._GimpTransformToolClass*, %struct._GimpTransformToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpTransformToolClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpTransformToolClass*, %struct._GimpTransformToolClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpTransformToolClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_tool_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpToolClass*
  store %struct._GimpToolClass* %5, %struct._GimpToolClass** %tool_class, align 8
  %6 = load %struct._GimpTransformToolClass*, %struct._GimpTransformToolClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpTransformToolClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_draw_tool_get_type() #7
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpDrawToolClass*
  store %struct._GimpDrawToolClass* %8, %struct._GimpDrawToolClass** %draw_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_transform_tool_finalize, void (%struct._GObject*)** %finalize, align 8
  %10 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %initialize = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %10, i32 0, i32 3
  store i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)* @gimp_transform_tool_initialize, i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)** %initialize, align 8
  %11 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %control = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %11, i32 0, i32 4
  store void (%struct._GimpTool*, i32, %struct._GimpDisplay*)* @gimp_transform_tool_control, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)** %control, align 8
  %12 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %12, i32 0, i32 5
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_transform_tool_button_press, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_press, align 8
  %13 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_release = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %13, i32 0, i32 6
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_transform_tool_button_release, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_release, align 8
  %14 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %motion = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %14, i32 0, i32 7
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_transform_tool_motion, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %motion, align 8
  %15 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %key_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %15, i32 0, i32 8
  store i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)* @gimp_transform_tool_key_press, i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)** %key_press, align 8
  %16 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %modifier_key = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %16, i32 0, i32 10
  store void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_transform_tool_modifier_key, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)** %modifier_key, align 8
  %17 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %active_modifier_key = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %17, i32 0, i32 11
  store void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_transform_tool_modifier_key, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)** %active_modifier_key, align 8
  %18 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %oper_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %18, i32 0, i32 12
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_transform_tool_oper_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %oper_update, align 8
  %19 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %19, i32 0, i32 13
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)* @gimp_transform_tool_cursor_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %20 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %options_notify = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %20, i32 0, i32 15
  store void (%struct._GimpTool*, %struct._GimpToolOptions*, %struct._GParamSpec*)* @gimp_transform_tool_options_notify, void (%struct._GimpTool*, %struct._GimpToolOptions*, %struct._GParamSpec*)** %options_notify, align 8
  %21 = load %struct._GimpDrawToolClass*, %struct._GimpDrawToolClass** %draw_class, align 8
  %draw = getelementptr inbounds %struct._GimpDrawToolClass, %struct._GimpDrawToolClass* %21, i32 0, i32 1
  store void (%struct._GimpDrawTool*)* @gimp_transform_tool_draw, void (%struct._GimpDrawTool*)** %draw, align 8
  %22 = load %struct._GimpTransformToolClass*, %struct._GimpTransformToolClass** %klass.addr, align 8
  %dialog = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %22, i32 0, i32 1
  store void (%struct._GimpTransformTool*)* null, void (%struct._GimpTransformTool*)** %dialog, align 8
  %23 = load %struct._GimpTransformToolClass*, %struct._GimpTransformToolClass** %klass.addr, align 8
  %dialog_update = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %23, i32 0, i32 2
  store void (%struct._GimpTransformTool*)* null, void (%struct._GimpTransformTool*)** %dialog_update, align 8
  %24 = load %struct._GimpTransformToolClass*, %struct._GimpTransformToolClass** %klass.addr, align 8
  %prepare = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %24, i32 0, i32 3
  store void (%struct._GimpTransformTool*)* null, void (%struct._GimpTransformTool*)** %prepare, align 8
  %25 = load %struct._GimpTransformToolClass*, %struct._GimpTransformToolClass** %klass.addr, align 8
  %motion5 = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %25, i32 0, i32 4
  store void (%struct._GimpTransformTool*)* null, void (%struct._GimpTransformTool*)** %motion5, align 8
  %26 = load %struct._GimpTransformToolClass*, %struct._GimpTransformToolClass** %klass.addr, align 8
  %recalc_matrix = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %26, i32 0, i32 5
  store void (%struct._GimpTransformTool*)* null, void (%struct._GimpTransformTool*)** %recalc_matrix, align 8
  %27 = load %struct._GimpTransformToolClass*, %struct._GimpTransformToolClass** %klass.addr, align 8
  %get_undo_desc = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %27, i32 0, i32 6
  store i8* (%struct._GimpTransformTool*)* null, i8* (%struct._GimpTransformTool*)** %get_undo_desc, align 8
  %28 = load %struct._GimpTransformToolClass*, %struct._GimpTransformToolClass** %klass.addr, align 8
  %transform = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %28, i32 0, i32 7
  store %struct._TileManager* (%struct._GimpTransformTool*, %struct._GimpItem*, %struct._TileManager*, i32, i32, i32*, i32*)* @gimp_transform_tool_real_transform, %struct._TileManager* (%struct._GimpTransformTool*, %struct._GimpItem*, %struct._TileManager*, i32, i32, i32*, i32*)** %transform, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_transform_tool_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %tr_tool = alloca %struct._GimpTransformTool*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_transform_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTransformTool*
  store %struct._GimpTransformTool* %2, %struct._GimpTransformTool** %tr_tool, align 8
  %3 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %dialog = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %3, i32 0, i32 33
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %dialog2 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %5, i32 0, i32 33
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog2, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %6)
  %7 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %dialog3 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %7, i32 0, i32 33
  store %struct._GtkWidget* null, %struct._GtkWidget** %dialog3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_transform_tool_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 80)
  %10 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 6
  %11 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %11(%struct._GObject* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_transform_tool_initialize(%struct._GimpTool* %tool, %struct._GimpDisplay* %display, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %tool.addr = alloca %struct._GimpTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %tr_tool = alloca %struct._GimpTransformTool*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %i = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_transform_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTransformTool*
  store %struct._GimpTransformTool* %2, %struct._GimpTransformTool** %tr_tool, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call2 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %3)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call3 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %4)
  store %struct._GimpDrawable* %call3, %struct._GimpDrawable** %drawable, align 8
  %5 = load i8*, i8** @gimp_transform_tool_parent_class, align 8
  %6 = bitcast i8* %5 to %struct._GTypeClass*
  %call4 = call i64 @gimp_tool_get_type() #7
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %6, i64 %call4)
  %7 = bitcast %struct._GTypeClass* %call5 to %struct._GimpToolClass*
  %initialize = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %7, i32 0, i32 3
  %8 = load i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)*, i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)** %initialize, align 8
  %9 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %10 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call6 = call i32 %8(%struct._GimpTool* %9, %struct._GimpDisplay* %10, %struct._GError** %11)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %12 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call7 = call %struct._GimpItem* @gimp_transform_tool_check_active_item(%struct._GimpTransformTool* %12, %struct._GimpImage* %13, %struct._GError** %14)
  store %struct._GimpItem* %call7, %struct._GimpItem** %item, align 8
  %15 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %tobool8 = icmp ne %struct._GimpItem* %15, null
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %17 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display11 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %17, i32 0, i32 4
  %18 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display11, align 8
  %cmp = icmp ne %struct._GimpDisplay* %16, %18
  br i1 %cmp, label %if.then.12, label %if.end.34

if.then.12:                                       ; preds = %if.end.10
  %19 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %20 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_control(%struct._GimpTool* %19, i32 2, %struct._GimpDisplay* %20)
  %21 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %22 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call13 = call i32 @gimp_transform_tool_bounds(%struct._GimpTransformTool* %21, %struct._GimpDisplay* %22)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.18, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  %23 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call16 = call i32 @gimp_error_quark() #7
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i32 0, i32 0)) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %23, i32 %call16, i32 0, i8* %call17)
  store i32 0, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.then.12
  %24 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %25 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display19 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %25, i32 0, i32 4
  store %struct._GimpDisplay* %24, %struct._GimpDisplay** %display19, align 8
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %27 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %drawable20 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %27, i32 0, i32 5
  store %struct._GimpDrawable* %26, %struct._GimpDrawable** %drawable20, align 8
  %28 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %dialog = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %28, i32 0, i32 33
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool21 = icmp ne %struct._GtkWidget* %29, null
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %if.end.18
  %30 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  call void @gimp_transform_tool_dialog(%struct._GimpTransformTool* %30)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.18
  %31 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %32 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_transform_tool_prepare(%struct._GimpTransformTool* %31, %struct._GimpDisplay* %32)
  %33 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  call void @gimp_transform_tool_recalc_matrix(%struct._GimpTransformTool* %33)
  %34 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %35 = bitcast %struct._GimpTool* %34 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_draw_tool_get_type() #7
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call24)
  %36 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpDrawTool*
  %37 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_draw_tool_start(%struct._GimpDrawTool* %36, %struct._GimpDisplay* %37)
  %38 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %function = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %38, i32 0, i32 26
  store i32 0, i32* %function, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.23
  %39 = load i32, i32* %i, align 4
  %cmp26 = icmp slt i32 %39, 8
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load i32, i32* %i, align 4
  %idxprom = sext i32 %40 to i64
  %41 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %trans_info = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %41, i32 0, i32 23
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* %trans_info, i32 0, i64 %idxprom
  %42 = load double, double* %arrayidx, align 8
  %43 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %43 to i64
  %44 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %old_trans_info = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %44, i32 0, i32 24
  %arrayidx28 = getelementptr inbounds [8 x double], [8 x double]* %old_trans_info, i32 0, i64 %idxprom27
  store double %42, double* %arrayidx28, align 8
  %45 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %45 to i64
  %46 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %trans_info30 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %46, i32 0, i32 23
  %arrayidx31 = getelementptr inbounds [8 x double], [8 x double]* %trans_info30, i32 0, i64 %idxprom29
  %47 = load double, double* %arrayidx31, align 8
  %48 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %48 to i64
  %49 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %prev_trans_info = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %49, i32 0, i32 25
  %arrayidx33 = getelementptr inbounds [8 x double], [8 x double]* %prev_trans_info, i32 0, i64 %idxprom32
  store double %47, double* %arrayidx33, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %50 = load i32, i32* %i, align 4
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.34

if.end.34:                                        ; preds = %for.end, %if.end.10
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.34, %if.then.15, %if.then.9, %if.then
  %51 = load i32, i32* %retval
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define internal void @gimp_transform_tool_control(%struct._GimpTool* %tool, i32 %action, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %action.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %tr_tool = alloca %struct._GimpTransformTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %action, i32* %action.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_transform_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTransformTool*
  store %struct._GimpTransformTool* %2, %struct._GimpTransformTool** %tr_tool, align 8
  %3 = load i32, i32* %action.addr, align 4
  switch i32 %3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %4 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call3 = call i32 @gimp_transform_tool_bounds(%struct._GimpTransformTool* %4, %struct._GimpDisplay* %5)
  %6 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  call void @gimp_transform_tool_recalc_matrix(%struct._GimpTransformTool* %6)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %7 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %function = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %7, i32 0, i32 26
  store i32 0, i32* %function, align 4
  %8 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %dialog = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %8, i32 0, i32 33
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.4
  %10 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %dialog5 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %10, i32 0, i32 33
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog5, align 8
  call void @gimp_dialog_factory_hide_dialog(%struct._GtkWidget* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.4
  %12 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %12, i32 0, i32 5
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %drawable, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end, %sw.bb.2, %sw.bb
  %13 = load i8*, i8** @gimp_transform_tool_parent_class, align 8
  %14 = bitcast i8* %13 to %struct._GTypeClass*
  %call6 = call i64 @gimp_tool_get_type() #7
  %call7 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %14, i64 %call6)
  %15 = bitcast %struct._GTypeClass* %call7 to %struct._GimpToolClass*
  %control = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %15, i32 0, i32 4
  %16 = load void (%struct._GimpTool*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)** %control, align 8
  %17 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %18 = load i32, i32* %action.addr, align 4
  %19 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %16(%struct._GimpTool* %17, i32 %18, %struct._GimpDisplay* %19)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_transform_tool_button_press(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %press_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %press_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %tr_tool = alloca %struct._GimpTransformTool*, align 8
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %x21 = alloca double, align 8
  %y23 = alloca double, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %press_type, i32* %press_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_transform_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTransformTool*
  store %struct._GimpTransformTool* %2, %struct._GimpTransformTool** %tr_tool, align 8
  %3 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %function = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %3, i32 0, i32 26
  %4 = load i32, i32* %function, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %6 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %7 = load i32, i32* %state.addr, align 4
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_transform_tool_oper_update(%struct._GimpTool* %5, %struct._GimpCoords* %6, i32 %7, i32 1, %struct._GimpDisplay* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %9, i32 0, i32 0
  %10 = load double, double* %x, align 8
  %11 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %lastx = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %11, i32 0, i32 3
  store double %10, double* %lastx, align 8
  %12 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %12, i32 0, i32 1
  %13 = load double, double* %y, align 8
  %14 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %lasty = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %14, i32 0, i32 4
  store double %13, double* %lasty, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %15, 8
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %trans_info = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %17, i32 0, i32 23
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* %trans_info, i32 0, i64 %idxprom
  %18 = load double, double* %arrayidx, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %19 to i64
  %20 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %prev_trans_info = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %20, i32 0, i32 25
  %arrayidx4 = getelementptr inbounds [8 x double], [8 x double]* %prev_trans_info, i32 0, i64 %idxprom3
  store double %18, double* %arrayidx4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %22, i32 0, i32 3
  %23 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_activate(%struct._GimpToolControl* %23)
  %24 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %function5 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %24, i32 0, i32 26
  %25 = load i32, i32* %function5, align 4
  %idxprom6 = zext i32 %25 to i64
  %26 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %handles = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %26, i32 0, i32 31
  %arrayidx7 = getelementptr inbounds [11 x %struct._GimpCanvasItem*], [11 x %struct._GimpCanvasItem*]* %handles, i32 0, i64 %idxprom6
  %27 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %arrayidx7, align 8
  %28 = bitcast %struct._GimpCanvasItem* %27 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %28, %struct._GTypeInstance** %__inst, align 8
  %call8 = call i64 @gimp_canvas_handle_get_type() #7
  store i64 %call8, i64* %__t, align 8
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %29, null
  br i1 %tobool, label %if.else, label %if.then.9

if.then.9:                                        ; preds = %for.end
  store i32 0, i32* %__r, align 4
  br label %if.end.17

if.else:                                          ; preds = %for.end
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool10 = icmp ne %struct._GTypeClass* %31, null
  br i1 %tobool10, label %land.lhs.true, label %if.else.14

land.lhs.true:                                    ; preds = %if.else
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type, align 8
  %35 = load i64, i64* %__t, align 8
  %cmp12 = icmp eq i64 %34, %35
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.16

if.else.14:                                       ; preds = %land.lhs.true, %if.else
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %37 = load i64, i64* %__t, align 8
  %call15 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %36, i64 %37) #8
  store i32 %call15, i32* %__r, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.14, %if.then.13
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.9
  %38 = load i32, i32* %__r, align 4
  store i32 %38, i32* %tmp
  %39 = load i32, i32* %tmp
  %tobool18 = icmp ne i32 %39, 0
  br i1 %tobool18, label %if.then.19, label %if.else.51

if.then.19:                                       ; preds = %if.end.17
  %40 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %function24 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %40, i32 0, i32 26
  %41 = load i32, i32* %function24, align 4
  %idxprom25 = zext i32 %41 to i64
  %42 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %handles26 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %42, i32 0, i32 31
  %arrayidx27 = getelementptr inbounds [11 x %struct._GimpCanvasItem*], [11 x %struct._GimpCanvasItem*]* %handles26, i32 0, i64 %idxprom25
  %43 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %arrayidx27, align 8
  call void @gimp_canvas_handle_get_position(%struct._GimpCanvasItem* %43, double* %x21, double* %y23)
  %44 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control28 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %44, i32 0, i32 3
  %45 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control28, align 8
  %46 = load double, double* %x21, align 8
  %47 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x29 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %47, i32 0, i32 0
  %48 = load double, double* %x29, align 8
  %sub = fsub double %46, %48
  %cmp30 = fcmp olt double %sub, 0.000000e+00
  br i1 %cmp30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.19
  %49 = load double, double* %x21, align 8
  %50 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x31 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %50, i32 0, i32 0
  %51 = load double, double* %x31, align 8
  %sub32 = fsub double %49, %51
  %sub33 = fsub double %sub32, 5.000000e-01
  br label %cond.end

cond.false:                                       ; preds = %if.then.19
  %52 = load double, double* %x21, align 8
  %53 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x34 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %53, i32 0, i32 0
  %54 = load double, double* %x34, align 8
  %sub35 = fsub double %52, %54
  %add = fadd double %sub35, 5.000000e-01
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub33, %cond.true ], [ %add, %cond.false ]
  %conv = fptosi double %cond to i32
  %55 = load double, double* %y23, align 8
  %56 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y36 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %56, i32 0, i32 1
  %57 = load double, double* %y36, align 8
  %sub37 = fsub double %55, %57
  %cmp38 = fcmp olt double %sub37, 0.000000e+00
  br i1 %cmp38, label %cond.true.40, label %cond.false.44

cond.true.40:                                     ; preds = %cond.end
  %58 = load double, double* %y23, align 8
  %59 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y41 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %59, i32 0, i32 1
  %60 = load double, double* %y41, align 8
  %sub42 = fsub double %58, %60
  %sub43 = fsub double %sub42, 5.000000e-01
  br label %cond.end.48

cond.false.44:                                    ; preds = %cond.end
  %61 = load double, double* %y23, align 8
  %62 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y45 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %62, i32 0, i32 1
  %63 = load double, double* %y45, align 8
  %sub46 = fsub double %61, %63
  %add47 = fadd double %sub46, 5.000000e-01
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.44, %cond.true.40
  %cond49 = phi double [ %sub43, %cond.true.40 ], [ %add47, %cond.false.44 ]
  %conv50 = fptosi double %cond49 to i32
  call void @gimp_tool_control_set_snap_offsets(%struct._GimpToolControl* %45, i32 %conv, i32 %conv50, i32 0, i32 0)
  br label %if.end.53

if.else.51:                                       ; preds = %if.end.17
  %64 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control52 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %64, i32 0, i32 3
  %65 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control52, align 8
  call void @gimp_tool_control_set_snap_offsets(%struct._GimpToolControl* %65, i32 0, i32 0, i32 0, i32 0)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.51, %cond.end.48
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_transform_tool_button_release(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %release_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %release_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %tr_tool = alloca %struct._GimpTransformTool*, align 8
  %i = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %release_type, i32* %release_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_transform_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTransformTool*
  store %struct._GimpTransformTool* %2, %struct._GimpTransformTool** %tr_tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 3
  %4 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_halt(%struct._GimpToolControl* %4)
  %5 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %function = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %5, i32 0, i32 26
  %6 = load i32, i32* %function, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %use_grid = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %7, i32 0, i32 27
  %8 = load i32, i32* %use_grid, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %if.end.17

if.end:                                           ; preds = %land.lhs.true, %entry
  %9 = load i32, i32* %release_type.addr, align 4
  %cmp2 = icmp ne i32 %9, 1
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %10 = load i32, i32* %state.addr, align 4
  %and = and i32 %10, 1
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.3
  %11 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %use_grid5 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %11, i32 0, i32 27
  %12 = load i32, i32* %use_grid5, align 4
  %tobool6 = icmp ne i32 %12, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %lor.lhs.false, %if.then.3
  %13 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  call void @gimp_transform_tool_response(%struct._GtkWidget* null, i32 -5, %struct._GimpTransformTool* %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %lor.lhs.false
  br label %if.end.17

if.else:                                          ; preds = %if.end
  %14 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %15 = bitcast %struct._GimpTool* %14 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_draw_tool_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call9)
  %16 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %16)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %17 = load i32, i32* %i, align 4
  %cmp11 = icmp slt i32 %17, 8
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %i, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %prev_trans_info = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %19, i32 0, i32 25
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* %prev_trans_info, i32 0, i64 %idxprom
  %20 = load double, double* %arrayidx, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %21 to i64
  %22 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %trans_info = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %22, i32 0, i32 23
  %arrayidx13 = getelementptr inbounds [8 x double], [8 x double]* %trans_info, i32 0, i64 %idxprom12
  store double %20, double* %arrayidx13, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %25 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call14 = call i32 @gimp_transform_tool_bounds(%struct._GimpTransformTool* %24, %struct._GimpDisplay* %25)
  %26 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  call void @gimp_transform_tool_recalc_matrix(%struct._GimpTransformTool* %26)
  %27 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %28 = bitcast %struct._GimpTool* %27 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_draw_tool_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call15)
  %29 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %29)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then, %for.end, %if.end.8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_transform_tool_motion(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %tr_tool = alloca %struct._GimpTransformTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_transform_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTransformTool*
  store %struct._GimpTransformTool* %2, %struct._GimpTransformTool** %tr_tool, align 8
  %3 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %function = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %3, i32 0, i32 26
  %4 = load i32, i32* %function, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %use_grid = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %5, i32 0, i32 27
  %6 = load i32, i32* %use_grid, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %8 = bitcast %struct._GimpTool* %7 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_draw_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call2)
  %9 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %9)
  %10 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %10, i32 0, i32 0
  %11 = load double, double* %x, align 8
  %12 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %curx = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %12, i32 0, i32 1
  store double %11, double* %curx, align 8
  %13 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %13, i32 0, i32 1
  %14 = load double, double* %y, align 8
  %15 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %cury = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %15, i32 0, i32 2
  store double %14, double* %cury, align 8
  %16 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %17 = bitcast %struct._GimpTransformTool* %16 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %19 = bitcast %struct._GTypeClass* %18 to %struct._GimpTransformToolClass*
  %motion = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %19, i32 0, i32 4
  %20 = load void (%struct._GimpTransformTool*)*, void (%struct._GimpTransformTool*)** %motion, align 8
  %tobool4 = icmp ne void (%struct._GimpTransformTool*)* %20, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %21 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %22 = bitcast %struct._GimpTransformTool* %21 to %struct._GTypeInstance*
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %24 = bitcast %struct._GTypeClass* %23 to %struct._GimpTransformToolClass*
  %motion7 = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %24, i32 0, i32 4
  %25 = load void (%struct._GimpTransformTool*)*, void (%struct._GimpTransformTool*)** %motion7, align 8
  %26 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  call void %25(%struct._GimpTransformTool* %26)
  %27 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  call void @gimp_transform_tool_recalc_matrix(%struct._GimpTransformTool* %27)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %28 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %curx9 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %28, i32 0, i32 1
  %29 = load double, double* %curx9, align 8
  %30 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %lastx = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %30, i32 0, i32 3
  store double %29, double* %lastx, align 8
  %31 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %cury10 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %31, i32 0, i32 2
  %32 = load double, double* %cury10, align 8
  %33 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %lasty = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %33, i32 0, i32 4
  store double %32, double* %lasty, align 8
  %34 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %35 = bitcast %struct._GimpTool* %34 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_draw_tool_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call11)
  %36 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %36)
  br label %return

return:                                           ; preds = %if.end.8, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_transform_tool_key_press(%struct._GimpTool* %tool, %struct._GdkEventKey* %kevent, %struct._GimpDisplay* %display) #3 {
entry:
  %retval = alloca i32, align 4
  %tool.addr = alloca %struct._GimpTool*, align 8
  %kevent.addr = alloca %struct._GdkEventKey*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %trans_tool = alloca %struct._GimpTransformTool*, align 8
  %draw_tool = alloca %struct._GimpDrawTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GdkEventKey* %kevent, %struct._GdkEventKey** %kevent.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_transform_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTransformTool*
  store %struct._GimpTransformTool* %2, %struct._GimpTransformTool** %trans_tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_draw_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDrawTool*
  store %struct._GimpDrawTool* %5, %struct._GimpDrawTool** %draw_tool, align 8
  %6 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %7 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %display4 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %7, i32 0, i32 1
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display4, align 8
  %cmp = icmp eq %struct._GimpDisplay* %6, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %keyval = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %9, i32 0, i32 5
  %10 = load i32, i32* %keyval, align 4
  switch i32 %10, label %sw.epilog [
    i32 65293, label %sw.bb
    i32 65421, label %sw.bb
    i32 65076, label %sw.bb
    i32 65288, label %sw.bb.5
    i32 65307, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %if.then, %if.then, %if.then
  %11 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %trans_tool, align 8
  call void @gimp_transform_tool_response(%struct._GtkWidget* null, i32 -5, %struct._GimpTransformTool* %11)
  store i32 1, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %if.then
  %12 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %trans_tool, align 8
  call void @gimp_transform_tool_response(%struct._GtkWidget* null, i32 1, %struct._GimpTransformTool* %12)
  store i32 1, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %if.then
  %13 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %trans_tool, align 8
  call void @gimp_transform_tool_response(%struct._GtkWidget* null, i32 -6, %struct._GimpTransformTool* %13)
  store i32 1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %sw.bb.6, %sw.bb.5, %sw.bb
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal void @gimp_transform_tool_modifier_key(%struct._GimpTool* %tool, i32 %key, i32 %press, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %key.addr = alloca i32, align 4
  %press.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %options = alloca %struct._GimpTransformOptions*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %press, i32* %press.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  %call2 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %2)
  %3 = bitcast %struct._GimpToolOptions* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_transform_options_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpTransformOptions*
  store %struct._GimpTransformOptions* %4, %struct._GimpTransformOptions** %options, align 8
  %5 = load i32, i32* %key.addr, align 4
  %call5 = call i32 @gimp_get_constrain_behavior_mask()
  %cmp = icmp eq i32 %5, %call5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpTransformOptions*, %struct._GimpTransformOptions** %options, align 8
  %7 = bitcast %struct._GimpTransformOptions* %6 to i8*
  %8 = load %struct._GimpTransformOptions*, %struct._GimpTransformOptions** %options, align 8
  %constrain = getelementptr inbounds %struct._GimpTransformOptions, %struct._GimpTransformOptions* %8, i32 0, i32 10
  %9 = load i32, i32* %constrain, align 4
  %tobool = icmp ne i32 %9, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  call void (i8*, i8*, ...) @g_object_set(i8* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i32 %lnot.ext, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_transform_tool_oper_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, i32 %proximity, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %proximity.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %tr_tool = alloca %struct._GimpTransformTool*, align 8
  %draw_tool = alloca %struct._GimpDrawTool*, align 8
  %function = alloca i32, align 4
  %closest_dist = alloca double, align 8
  %dist = alloca double, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store i32 %proximity, i32* %proximity.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_transform_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTransformTool*
  store %struct._GimpTransformTool* %2, %struct._GimpTransformTool** %tr_tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_draw_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDrawTool*
  store %struct._GimpDrawTool* %5, %struct._GimpDrawTool** %draw_tool, align 8
  store i32 1, i32* %function, align 4
  %6 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %7 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display4 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %7, i32 0, i32 4
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display4, align 8
  %cmp = icmp ne %struct._GimpDisplay* %6, %8
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %item = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %9, i32 0, i32 6
  %10 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %cmp5 = icmp eq %struct._GimpCanvasItem* %10, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %11 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %12 = load i32, i32* %function, align 4
  call void @gimp_transform_tool_set_function(%struct._GimpTransformTool* %11, i32 %12)
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %13 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %use_handles = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %13, i32 0, i32 28
  %14 = load i32, i32* %use_handles, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then.6, label %if.end.61

if.then.6:                                        ; preds = %if.end
  %15 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %17 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %17, i32 0, i32 0
  %18 = load double, double* %x, align 8
  %19 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %19, i32 0, i32 1
  %20 = load double, double* %y, align 8
  %21 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %tx1 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %21, i32 0, i32 12
  %22 = load double, double* %tx1, align 8
  %23 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %ty1 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %23, i32 0, i32 13
  %24 = load double, double* %ty1, align 8
  %call7 = call double @gimp_draw_tool_calc_distance_square(%struct._GimpDrawTool* %15, %struct._GimpDisplay* %16, double %18, double %20, double %22, double %24)
  store double %call7, double* %dist, align 8
  %25 = load double, double* %dist, align 8
  store double %25, double* %closest_dist, align 8
  store i32 2, i32* %function, align 4
  %26 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %27 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %28 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x8 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %28, i32 0, i32 0
  %29 = load double, double* %x8, align 8
  %30 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y9 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %30, i32 0, i32 1
  %31 = load double, double* %y9, align 8
  %32 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %tx2 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %32, i32 0, i32 14
  %33 = load double, double* %tx2, align 8
  %34 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %ty2 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %34, i32 0, i32 15
  %35 = load double, double* %ty2, align 8
  %call10 = call double @gimp_draw_tool_calc_distance_square(%struct._GimpDrawTool* %26, %struct._GimpDisplay* %27, double %29, double %31, double %33, double %35)
  store double %call10, double* %dist, align 8
  %36 = load double, double* %dist, align 8
  %37 = load double, double* %closest_dist, align 8
  %cmp11 = fcmp olt double %36, %37
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.6
  %38 = load double, double* %dist, align 8
  store double %38, double* %closest_dist, align 8
  store i32 3, i32* %function, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.then.6
  %39 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %40 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %41 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x14 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %41, i32 0, i32 0
  %42 = load double, double* %x14, align 8
  %43 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y15 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %43, i32 0, i32 1
  %44 = load double, double* %y15, align 8
  %45 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %tx3 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %45, i32 0, i32 16
  %46 = load double, double* %tx3, align 8
  %47 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %ty3 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %47, i32 0, i32 17
  %48 = load double, double* %ty3, align 8
  %call16 = call double @gimp_draw_tool_calc_distance_square(%struct._GimpDrawTool* %39, %struct._GimpDisplay* %40, double %42, double %44, double %46, double %48)
  store double %call16, double* %dist, align 8
  %49 = load double, double* %dist, align 8
  %50 = load double, double* %closest_dist, align 8
  %cmp17 = fcmp olt double %49, %50
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.13
  %51 = load double, double* %dist, align 8
  store double %51, double* %closest_dist, align 8
  store i32 4, i32* %function, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end.13
  %52 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %53 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %54 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x20 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %54, i32 0, i32 0
  %55 = load double, double* %x20, align 8
  %56 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y21 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %56, i32 0, i32 1
  %57 = load double, double* %y21, align 8
  %58 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %tx4 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %58, i32 0, i32 18
  %59 = load double, double* %tx4, align 8
  %60 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %ty4 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %60, i32 0, i32 19
  %61 = load double, double* %ty4, align 8
  %call22 = call double @gimp_draw_tool_calc_distance_square(%struct._GimpDrawTool* %52, %struct._GimpDisplay* %53, double %55, double %57, double %59, double %61)
  store double %call22, double* %dist, align 8
  %62 = load double, double* %dist, align 8
  %63 = load double, double* %closest_dist, align 8
  %cmp23 = fcmp olt double %62, %63
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.19
  %64 = load double, double* %dist, align 8
  store double %64, double* %closest_dist, align 8
  store i32 5, i32* %function, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.end.19
  %65 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %use_mid_handles = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %65, i32 0, i32 30
  %66 = load i32, i32* %use_mid_handles, align 4
  %tobool26 = icmp ne i32 %66, 0
  br i1 %tobool26, label %if.then.27, label %if.end.60

if.then.27:                                       ; preds = %if.end.25
  %67 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %handles = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %67, i32 0, i32 31
  %arrayidx = getelementptr inbounds [11 x %struct._GimpCanvasItem*], [11 x %struct._GimpCanvasItem*]* %handles, i32 0, i64 6
  %68 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %arrayidx, align 8
  %69 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x28 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %69, i32 0, i32 0
  %70 = load double, double* %x28, align 8
  %71 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y29 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %71, i32 0, i32 1
  %72 = load double, double* %y29, align 8
  %call30 = call i32 @gimp_canvas_item_hit(%struct._GimpCanvasItem* %68, double %70, double %72)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %if.then.27
  store i32 6, i32* %function, align 4
  br label %if.end.59

if.else:                                          ; preds = %if.then.27
  %73 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %handles33 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %73, i32 0, i32 31
  %arrayidx34 = getelementptr inbounds [11 x %struct._GimpCanvasItem*], [11 x %struct._GimpCanvasItem*]* %handles33, i32 0, i64 8
  %74 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %arrayidx34, align 8
  %75 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x35 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %75, i32 0, i32 0
  %76 = load double, double* %x35, align 8
  %77 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y36 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %77, i32 0, i32 1
  %78 = load double, double* %y36, align 8
  %call37 = call i32 @gimp_canvas_item_hit(%struct._GimpCanvasItem* %74, double %76, double %78)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %if.else
  store i32 8, i32* %function, align 4
  br label %if.end.58

if.else.40:                                       ; preds = %if.else
  %79 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %handles41 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %79, i32 0, i32 31
  %arrayidx42 = getelementptr inbounds [11 x %struct._GimpCanvasItem*], [11 x %struct._GimpCanvasItem*]* %handles41, i32 0, i64 7
  %80 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %arrayidx42, align 8
  %81 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x43 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %81, i32 0, i32 0
  %82 = load double, double* %x43, align 8
  %83 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y44 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %83, i32 0, i32 1
  %84 = load double, double* %y44, align 8
  %call45 = call i32 @gimp_canvas_item_hit(%struct._GimpCanvasItem* %80, double %82, double %84)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %if.else.40
  store i32 7, i32* %function, align 4
  br label %if.end.57

if.else.48:                                       ; preds = %if.else.40
  %85 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %handles49 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %85, i32 0, i32 31
  %arrayidx50 = getelementptr inbounds [11 x %struct._GimpCanvasItem*], [11 x %struct._GimpCanvasItem*]* %handles49, i32 0, i64 9
  %86 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %arrayidx50, align 8
  %87 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x51 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %87, i32 0, i32 0
  %88 = load double, double* %x51, align 8
  %89 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y52 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %89, i32 0, i32 1
  %90 = load double, double* %y52, align 8
  %call53 = call i32 @gimp_canvas_item_hit(%struct._GimpCanvasItem* %86, double %88, double %90)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.else.48
  store i32 9, i32* %function, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %if.else.48
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.47
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.39
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.32
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.end.25
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.end
  %91 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %use_center = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %91, i32 0, i32 29
  %92 = load i32, i32* %use_center, align 4
  %tobool62 = icmp ne i32 %92, 0
  br i1 %tobool62, label %land.lhs.true, label %if.end.70

land.lhs.true:                                    ; preds = %if.end.61
  %93 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %handles63 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %93, i32 0, i32 31
  %arrayidx64 = getelementptr inbounds [11 x %struct._GimpCanvasItem*], [11 x %struct._GimpCanvasItem*]* %handles63, i32 0, i64 10
  %94 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %arrayidx64, align 8
  %95 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x65 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %95, i32 0, i32 0
  %96 = load double, double* %x65, align 8
  %97 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y66 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %97, i32 0, i32 1
  %98 = load double, double* %y66, align 8
  %call67 = call i32 @gimp_canvas_item_hit(%struct._GimpCanvasItem* %94, double %96, double %98)
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %land.lhs.true
  store i32 10, i32* %function, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.69, %land.lhs.true, %if.end.61
  %99 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %100 = load i32, i32* %function, align 4
  call void @gimp_transform_tool_set_function(%struct._GimpTransformTool* %99, i32 %100)
  br label %return

return:                                           ; preds = %if.end.70, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_transform_tool_cursor_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %tr_tool = alloca %struct._GimpTransformTool*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %cursor = alloca i32, align 4
  %modifier = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_transform_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTransformTool*
  store %struct._GimpTransformTool* %2, %struct._GimpTransformTool** %tr_tool, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call2 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %3)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  %4 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %4, i32 0, i32 3
  %5 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call3 = call i32 @gimp_tool_control_get_cursor(%struct._GimpToolControl* %5)
  store i32 %call3, i32* %cursor, align 4
  store i32 0, i32* %modifier, align 4
  %6 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %use_handles = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %6, i32 0, i32 28
  %7 = load i32, i32* %use_handles, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %function = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %8, i32 0, i32 26
  %9 = load i32, i32* %function, align 4
  switch i32 %9, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.4
    i32 4, label %sw.bb.5
    i32 5, label %sw.bb.6
    i32 6, label %sw.bb.7
    i32 8, label %sw.bb.8
    i32 7, label %sw.bb.9
    i32 9, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %if.then
  store i32 1032, i32* %cursor, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.then
  store i32 1033, i32* %cursor, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.then
  store i32 1034, i32* %cursor, align 4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.then
  store i32 1035, i32* %cursor, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.then
  store i32 1036, i32* %cursor, align 4
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.then
  store i32 1038, i32* %cursor, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.then
  store i32 1039, i32* %cursor, align 4
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.then
  store i32 1037, i32* %cursor, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  store i32 1027, i32* %cursor, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %entry
  %10 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %use_center = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %10, i32 0, i32 29
  %11 = load i32, i32* %use_center, align 4
  %tobool11 = icmp ne i32 %11, 0
  br i1 %tobool11, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.end
  %12 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %function12 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %12, i32 0, i32 26
  %13 = load i32, i32* %function12, align 4
  %cmp = icmp eq i32 %13, 10
  br i1 %cmp, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %land.lhs.true
  store i32 5, i32* %modifier, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %land.lhs.true, %if.end
  %14 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call15 = call %struct._GimpItem* @gimp_transform_tool_check_active_item(%struct._GimpTransformTool* %14, %struct._GimpImage* %15, %struct._GError** null)
  %tobool16 = icmp ne %struct._GimpItem* %call15, null
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.end.14
  store i32 1, i32* %modifier, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.14
  %16 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control19 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %16, i32 0, i32 3
  %17 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control19, align 8
  %18 = load i32, i32* %cursor, align 4
  call void @gimp_tool_control_set_cursor(%struct._GimpToolControl* %17, i32 %18)
  %19 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control20 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %19, i32 0, i32 3
  %20 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control20, align 8
  %21 = load i32, i32* %modifier, align 4
  call void @gimp_tool_control_set_cursor_modifier(%struct._GimpToolControl* %20, i32 %21)
  %22 = load i8*, i8** @gimp_transform_tool_parent_class, align 8
  %23 = bitcast i8* %22 to %struct._GTypeClass*
  %call21 = call i64 @gimp_tool_get_type() #7
  %call22 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %23, i64 %call21)
  %24 = bitcast %struct._GTypeClass* %call22 to %struct._GimpToolClass*
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %24, i32 0, i32 13
  %25 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %26 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %27 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %28 = load i32, i32* %state.addr, align 4
  %29 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %25(%struct._GimpTool* %26, %struct._GimpCoords* %27, i32 %28, %struct._GimpDisplay* %29)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_transform_tool_options_notify(%struct._GimpTool* %tool, %struct._GimpToolOptions* %options, %struct._GParamSpec* %pspec) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %options.addr = alloca %struct._GimpToolOptions*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %tr_tool = alloca %struct._GimpTransformTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpToolOptions* %options, %struct._GimpToolOptions** %options.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_transform_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTransformTool*
  store %struct._GimpTransformTool* %2, %struct._GimpTransformTool** %tr_tool, align 8
  %3 = load i8*, i8** @gimp_transform_tool_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_tool_get_type() #7
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpToolClass*
  %options_notify = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %5, i32 0, i32 15
  %6 = load void (%struct._GimpTool*, %struct._GimpToolOptions*, %struct._GParamSpec*)*, void (%struct._GimpTool*, %struct._GimpToolOptions*, %struct._GParamSpec*)** %options_notify, align 8
  %7 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %8 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %options.addr, align 8
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  call void %6(%struct._GimpTool* %7, %struct._GimpToolOptions* %8, %struct._GParamSpec* %9)
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %10, i32 0, i32 1
  %11 = load i8*, i8** %name, align 8
  %call4 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0)) #8
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %13, i32 0, i32 4
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  call void @gimp_tool_control(%struct._GimpTool* %12, i32 2, %struct._GimpDisplay* %14)
  br label %if.end.33

if.end:                                           ; preds = %entry
  %15 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %use_grid = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %15, i32 0, i32 27
  %16 = load i32, i32* %use_grid, align 4
  %tobool5 = icmp ne i32 %16, 0
  br i1 %tobool5, label %if.then.6, label %if.end.28

if.then.6:                                        ; preds = %if.end
  %17 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %18 = bitcast %struct._GimpTransformTool* %17 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_draw_tool_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call7)
  %19 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %19)
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name9 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %20, i32 0, i32 1
  %21 = load i8*, i8** %name9, align 8
  %call10 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0)) #8
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.21, label %if.then.12

if.then.12:                                       ; preds = %if.then.6
  %22 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %function = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %22, i32 0, i32 26
  %23 = load i32, i32* %function, align 4
  %cmp = icmp ne i32 %23, 0
  br i1 %cmp, label %if.then.13, label %if.end.20

if.then.13:                                       ; preds = %if.then.12
  %24 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display14 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %24, i32 0, i32 4
  %25 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display14, align 8
  %tobool15 = icmp ne %struct._GimpDisplay* %25, null
  br i1 %tobool15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.then.13
  %26 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %27 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display17 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %27, i32 0, i32 4
  %28 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display17, align 8
  %call18 = call i32 @gimp_transform_tool_bounds(%struct._GimpTransformTool* %26, %struct._GimpDisplay* %28)
  %29 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  call void @gimp_transform_tool_recalc_matrix(%struct._GimpTransformTool* %29)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.then.13
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.12
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.6
  %30 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %function22 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %30, i32 0, i32 26
  %31 = load i32, i32* %function22, align 4
  %cmp23 = icmp ne i32 %31, 0
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.21
  %32 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  call void @gimp_transform_tool_transform_bounding_box(%struct._GimpTransformTool* %32)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.end.21
  %33 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %34 = bitcast %struct._GimpTransformTool* %33 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_draw_tool_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call26)
  %35 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %35)
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.25, %if.end
  %36 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name29 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %36, i32 0, i32 1
  %37 = load i8*, i8** %name29, align 8
  %call30 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0)) #8
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %if.end.28
  %38 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  call void @gimp_transform_tool_dialog_update(%struct._GimpTransformTool* %38)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then, %if.then.32, %if.end.28
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_transform_tool_draw(%struct._GimpDrawTool* %draw_tool) #3 {
entry:
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %tr_tool = alloca %struct._GimpTransformTool*, align 8
  %options = alloca %struct._GimpTransformOptions*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %handle_w = alloca i32, align 4
  %handle_h = alloca i32, align 4
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %x = alloca double, align 8
  %y = alloca double, align 8
  %stroke_group = alloca %struct._GimpCanvasGroup*, align 8
  %d = alloca i32, align 4
  %matrix = alloca %struct._GimpMatrix3, align 8
  %orig_in = alloca %struct._BoundSeg*, align 8
  %orig_out = alloca %struct._BoundSeg*, align 8
  %segs_in = alloca %struct._BoundSeg*, align 8
  %segs_out = alloca %struct._BoundSeg*, align 8
  %num_segs_in = alloca i32, align 4
  %num_segs_out = alloca i32, align 4
  %tx = alloca double, align 8
  %ty = alloca double, align 8
  %tx211 = alloca double, align 8
  %ty213 = alloca double, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %stroke = alloca %struct._GimpStroke*, align 8
  %matrix263 = alloca %struct._GimpMatrix3, align 8
  %coords = alloca %struct._GArray*, align 8
  %closed = alloca i32, align 4
  %i283 = alloca i32, align 4
  %curr = alloca %struct._GimpCoords*, align 8
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %4 = bitcast %struct._GimpDrawTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_transform_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTransformTool*
  store %struct._GimpTransformTool* %5, %struct._GimpTransformTool** %tr_tool, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %7 = bitcast %struct._GimpTool* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_tool_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpTool*
  %call6 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %8)
  %9 = bitcast %struct._GimpToolOptions* %call6 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_transform_options_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpTransformOptions*
  store %struct._GimpTransformOptions* %10, %struct._GimpTransformOptions** %options, align 8
  %11 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %11, i32 0, i32 4
  %12 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call9 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %12)
  store %struct._GimpImage* %call9, %struct._GimpImage** %image, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i32, i32* %i, align 4
  %conv = sext i32 %13 to i64
  %cmp = icmp ult i64 %conv, 11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %handles = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %15, i32 0, i32 31
  %arrayidx = getelementptr inbounds [11 x %struct._GimpCanvasItem*], [11 x %struct._GimpCanvasItem*]* %handles, i32 0, i64 %idxprom
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %use_grid = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %17, i32 0, i32 27
  %18 = load i32, i32* %use_grid, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.then, label %if.end.41

if.then:                                          ; preds = %for.end
  %19 = load %struct._GimpTransformOptions*, %struct._GimpTransformOptions** %options, align 8
  %call11 = call i32 @gimp_transform_options_show_preview(%struct._GimpTransformOptions* %19)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.30

if.then.13:                                       ; preds = %if.then
  %20 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %21 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %drawable = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %21, i32 0, i32 5
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %23 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %transform = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %23, i32 0, i32 22
  %24 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %x1 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %24, i32 0, i32 5
  %25 = load i32, i32* %x1, align 4
  %conv14 = sitofp i32 %25 to double
  %26 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %y1 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %26, i32 0, i32 6
  %27 = load i32, i32* %y1, align 4
  %conv15 = sitofp i32 %27 to double
  %28 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %x2 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %28, i32 0, i32 7
  %29 = load i32, i32* %x2, align 4
  %conv16 = sitofp i32 %29 to double
  %30 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %y2 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %30, i32 0, i32 8
  %31 = load i32, i32* %y2, align 4
  %conv17 = sitofp i32 %31 to double
  %32 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %33 = bitcast %struct._GimpTransformTool* %32 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %33, %struct._GTypeInstance** %__inst, align 8
  %call18 = call i64 @gimp_perspective_tool_get_type() #7
  store i64 %call18, i64* %__t, align 8
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %34, null
  br i1 %tobool19, label %if.else, label %if.then.20

if.then.20:                                       ; preds = %if.then.13
  store i32 0, i32* %__r, align 4
  br label %if.end.28

if.else:                                          ; preds = %if.then.13
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %35, i32 0, i32 0
  %36 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool21 = icmp ne %struct._GTypeClass* %36, null
  br i1 %tobool21, label %land.lhs.true, label %if.else.26

land.lhs.true:                                    ; preds = %if.else
  %37 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %37, i32 0, i32 0
  %38 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %38, i32 0, i32 0
  %39 = load i64, i64* %g_type, align 8
  %40 = load i64, i64* %__t, align 8
  %cmp23 = icmp eq i64 %39, %40
  br i1 %cmp23, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.26:                                       ; preds = %land.lhs.true, %if.else
  %41 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %42 = load i64, i64* %__t, align 8
  %call27 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %41, i64 %42) #8
  store i32 %call27, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.26, %if.then.25
  br label %if.end.28

if.end.28:                                        ; preds = %if.end, %if.then.20
  %43 = load i32, i32* %__r, align 4
  store i32 %43, i32* %tmp
  %44 = load i32, i32* %tmp
  %45 = load %struct._GimpTransformOptions*, %struct._GimpTransformOptions** %options, align 8
  %preview_opacity = getelementptr inbounds %struct._GimpTransformOptions, %struct._GimpTransformOptions* %45, i32 0, i32 7
  %46 = load double, double* %preview_opacity, align 8
  %call29 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_transform_preview(%struct._GimpDrawTool* %20, %struct._GimpDrawable* %22, %struct._GimpMatrix3* %transform, double %conv14, double %conv15, double %conv16, double %conv17, i32 %44, double %46)
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.28, %if.then
  %47 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %48 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %transform31 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %48, i32 0, i32 22
  %49 = load %struct._GimpTransformOptions*, %struct._GimpTransformOptions** %options, align 8
  %grid_type = getelementptr inbounds %struct._GimpTransformOptions, %struct._GimpTransformOptions* %49, i32 0, i32 8
  %50 = load i32, i32* %grid_type, align 4
  %51 = load %struct._GimpTransformOptions*, %struct._GimpTransformOptions** %options, align 8
  %grid_size = getelementptr inbounds %struct._GimpTransformOptions, %struct._GimpTransformOptions* %51, i32 0, i32 9
  %52 = load i32, i32* %grid_size, align 4
  %53 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %x132 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %53, i32 0, i32 5
  %54 = load i32, i32* %x132, align 4
  %conv33 = sitofp i32 %54 to double
  %55 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %y134 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %55, i32 0, i32 6
  %56 = load i32, i32* %y134, align 4
  %conv35 = sitofp i32 %56 to double
  %57 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %x236 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %57, i32 0, i32 7
  %58 = load i32, i32* %x236, align 4
  %conv37 = sitofp i32 %58 to double
  %59 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %y238 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %59, i32 0, i32 8
  %60 = load i32, i32* %y238, align 4
  %conv39 = sitofp i32 %60 to double
  %call40 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_transform_guides(%struct._GimpDrawTool* %47, %struct._GimpMatrix3* %transform31, i32 %50, i32 %52, double %conv33, double %conv35, double %conv37, double %conv39)
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.30, %for.end
  %61 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %62 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display42 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %62, i32 0, i32 4
  %63 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display42, align 8
  call void @gimp_transform_tool_handles_recalc(%struct._GimpTransformTool* %61, %struct._GimpDisplay* %63, i32* %handle_w, i32* %handle_h)
  %64 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %use_handles = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %64, i32 0, i32 28
  %65 = load i32, i32* %use_handles, align 4
  %tobool43 = icmp ne i32 %65, 0
  br i1 %tobool43, label %if.then.44, label %if.end.104

if.then.44:                                       ; preds = %if.end.41
  %66 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %67 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %tx1 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %67, i32 0, i32 12
  %68 = load double, double* %tx1, align 8
  %69 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %ty1 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %69, i32 0, i32 13
  %70 = load double, double* %ty1, align 8
  %71 = load i32, i32* %handle_w, align 4
  %72 = load i32, i32* %handle_h, align 4
  %call45 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %66, i32 0, double %68, double %70, i32 %71, i32 %72, i32 0)
  %73 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %handles46 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %73, i32 0, i32 31
  %arrayidx47 = getelementptr inbounds [11 x %struct._GimpCanvasItem*], [11 x %struct._GimpCanvasItem*]* %handles46, i32 0, i64 2
  store %struct._GimpCanvasItem* %call45, %struct._GimpCanvasItem** %arrayidx47, align 8
  %74 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %75 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %tx2 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %75, i32 0, i32 14
  %76 = load double, double* %tx2, align 8
  %77 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %ty2 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %77, i32 0, i32 15
  %78 = load double, double* %ty2, align 8
  %79 = load i32, i32* %handle_w, align 4
  %80 = load i32, i32* %handle_h, align 4
  %call48 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %74, i32 0, double %76, double %78, i32 %79, i32 %80, i32 0)
  %81 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %handles49 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %81, i32 0, i32 31
  %arrayidx50 = getelementptr inbounds [11 x %struct._GimpCanvasItem*], [11 x %struct._GimpCanvasItem*]* %handles49, i32 0, i64 3
  store %struct._GimpCanvasItem* %call48, %struct._GimpCanvasItem** %arrayidx50, align 8
  %82 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %83 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %tx3 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %83, i32 0, i32 16
  %84 = load double, double* %tx3, align 8
  %85 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %ty3 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %85, i32 0, i32 17
  %86 = load double, double* %ty3, align 8
  %87 = load i32, i32* %handle_w, align 4
  %88 = load i32, i32* %handle_h, align 4
  %call51 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %82, i32 0, double %84, double %86, i32 %87, i32 %88, i32 0)
  %89 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %handles52 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %89, i32 0, i32 31
  %arrayidx53 = getelementptr inbounds [11 x %struct._GimpCanvasItem*], [11 x %struct._GimpCanvasItem*]* %handles52, i32 0, i64 4
  store %struct._GimpCanvasItem* %call51, %struct._GimpCanvasItem** %arrayidx53, align 8
  %90 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %91 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %tx4 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %91, i32 0, i32 18
  %92 = load double, double* %tx4, align 8
  %93 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %ty4 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %93, i32 0, i32 19
  %94 = load double, double* %ty4, align 8
  %95 = load i32, i32* %handle_w, align 4
  %96 = load i32, i32* %handle_h, align 4
  %call54 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %90, i32 0, double %92, double %94, i32 %95, i32 %96, i32 0)
  %97 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %handles55 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %97, i32 0, i32 31
  %arrayidx56 = getelementptr inbounds [11 x %struct._GimpCanvasItem*], [11 x %struct._GimpCanvasItem*]* %handles55, i32 0, i64 5
  store %struct._GimpCanvasItem* %call54, %struct._GimpCanvasItem** %arrayidx56, align 8
  %98 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %use_mid_handles = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %98, i32 0, i32 30
  %99 = load i32, i32* %use_mid_handles, align 4
  %tobool57 = icmp ne i32 %99, 0
  br i1 %tobool57, label %if.then.58, label %if.end.103

if.then.58:                                       ; preds = %if.then.44
  %100 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %tx161 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %100, i32 0, i32 12
  %101 = load double, double* %tx161, align 8
  %102 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %tx262 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %102, i32 0, i32 14
  %103 = load double, double* %tx262, align 8
  %add = fadd double %101, %103
  %div = fdiv double %add, 2.000000e+00
  store double %div, double* %x, align 8
  %104 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %ty163 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %104, i32 0, i32 13
  %105 = load double, double* %ty163, align 8
  %106 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %ty264 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %106, i32 0, i32 15
  %107 = load double, double* %ty264, align 8
  %add65 = fadd double %105, %107
  %div66 = fdiv double %add65, 2.000000e+00
  store double %div66, double* %y, align 8
  %108 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %109 = load double, double* %x, align 8
  %110 = load double, double* %y, align 8
  %111 = load i32, i32* %handle_w, align 4
  %112 = load i32, i32* %handle_h, align 4
  %call67 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %108, i32 0, double %109, double %110, i32 %111, i32 %112, i32 0)
  %113 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %handles68 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %113, i32 0, i32 31
  %arrayidx69 = getelementptr inbounds [11 x %struct._GimpCanvasItem*], [11 x %struct._GimpCanvasItem*]* %handles68, i32 0, i64 6
  store %struct._GimpCanvasItem* %call67, %struct._GimpCanvasItem** %arrayidx69, align 8
  %114 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %tx270 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %114, i32 0, i32 14
  %115 = load double, double* %tx270, align 8
  %116 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %tx471 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %116, i32 0, i32 18
  %117 = load double, double* %tx471, align 8
  %add72 = fadd double %115, %117
  %div73 = fdiv double %add72, 2.000000e+00
  store double %div73, double* %x, align 8
  %118 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %ty274 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %118, i32 0, i32 15
  %119 = load double, double* %ty274, align 8
  %120 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %ty475 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %120, i32 0, i32 19
  %121 = load double, double* %ty475, align 8
  %add76 = fadd double %119, %121
  %div77 = fdiv double %add76, 2.000000e+00
  store double %div77, double* %y, align 8
  %122 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %123 = load double, double* %x, align 8
  %124 = load double, double* %y, align 8
  %125 = load i32, i32* %handle_w, align 4
  %126 = load i32, i32* %handle_h, align 4
  %call78 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %122, i32 0, double %123, double %124, i32 %125, i32 %126, i32 0)
  %127 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %handles79 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %127, i32 0, i32 31
  %arrayidx80 = getelementptr inbounds [11 x %struct._GimpCanvasItem*], [11 x %struct._GimpCanvasItem*]* %handles79, i32 0, i64 8
  store %struct._GimpCanvasItem* %call78, %struct._GimpCanvasItem** %arrayidx80, align 8
  %128 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %tx381 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %128, i32 0, i32 16
  %129 = load double, double* %tx381, align 8
  %130 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %tx482 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %130, i32 0, i32 18
  %131 = load double, double* %tx482, align 8
  %add83 = fadd double %129, %131
  %div84 = fdiv double %add83, 2.000000e+00
  store double %div84, double* %x, align 8
  %132 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %ty385 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %132, i32 0, i32 17
  %133 = load double, double* %ty385, align 8
  %134 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %ty486 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %134, i32 0, i32 19
  %135 = load double, double* %ty486, align 8
  %add87 = fadd double %133, %135
  %div88 = fdiv double %add87, 2.000000e+00
  store double %div88, double* %y, align 8
  %136 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %137 = load double, double* %x, align 8
  %138 = load double, double* %y, align 8
  %139 = load i32, i32* %handle_w, align 4
  %140 = load i32, i32* %handle_h, align 4
  %call89 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %136, i32 0, double %137, double %138, i32 %139, i32 %140, i32 0)
  %141 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %handles90 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %141, i32 0, i32 31
  %arrayidx91 = getelementptr inbounds [11 x %struct._GimpCanvasItem*], [11 x %struct._GimpCanvasItem*]* %handles90, i32 0, i64 7
  store %struct._GimpCanvasItem* %call89, %struct._GimpCanvasItem** %arrayidx91, align 8
  %142 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %tx392 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %142, i32 0, i32 16
  %143 = load double, double* %tx392, align 8
  %144 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %tx193 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %144, i32 0, i32 12
  %145 = load double, double* %tx193, align 8
  %add94 = fadd double %143, %145
  %div95 = fdiv double %add94, 2.000000e+00
  store double %div95, double* %x, align 8
  %146 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %ty396 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %146, i32 0, i32 17
  %147 = load double, double* %ty396, align 8
  %148 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %ty197 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %148, i32 0, i32 13
  %149 = load double, double* %ty197, align 8
  %add98 = fadd double %147, %149
  %div99 = fdiv double %add98, 2.000000e+00
  store double %div99, double* %y, align 8
  %150 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %151 = load double, double* %x, align 8
  %152 = load double, double* %y, align 8
  %153 = load i32, i32* %handle_w, align 4
  %154 = load i32, i32* %handle_h, align 4
  %call100 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %150, i32 0, double %151, double %152, i32 %153, i32 %154, i32 0)
  %155 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %handles101 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %155, i32 0, i32 31
  %arrayidx102 = getelementptr inbounds [11 x %struct._GimpCanvasItem*], [11 x %struct._GimpCanvasItem*]* %handles101, i32 0, i64 9
  store %struct._GimpCanvasItem* %call100, %struct._GimpCanvasItem** %arrayidx102, align 8
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.58, %if.then.44
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.end.41
  %156 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %use_center = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %156, i32 0, i32 29
  %157 = load i32, i32* %use_center, align 4
  %tobool105 = icmp ne i32 %157, 0
  br i1 %tobool105, label %if.then.106, label %if.end.120

if.then.106:                                      ; preds = %if.end.104
  %158 = load i32, i32* %handle_w, align 4
  %159 = load i32, i32* %handle_h, align 4
  %cmp109 = icmp slt i32 %158, %159
  br i1 %cmp109, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.106
  %160 = load i32, i32* %handle_w, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.106
  %161 = load i32, i32* %handle_h, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %160, %cond.true ], [ %161, %cond.false ]
  store i32 %cond, i32* %d, align 4
  %162 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %call111 = call %struct._GimpCanvasGroup* @gimp_draw_tool_add_stroke_group(%struct._GimpDrawTool* %162)
  store %struct._GimpCanvasGroup* %call111, %struct._GimpCanvasGroup** %stroke_group, align 8
  %163 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %stroke_group, align 8
  %164 = bitcast %struct._GimpCanvasGroup* %163 to %struct._GTypeInstance*
  %call112 = call i64 @gimp_canvas_item_get_type() #7
  %call113 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %164, i64 %call112)
  %165 = bitcast %struct._GTypeInstance* %call113 to %struct._GimpCanvasItem*
  %166 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %handles114 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %166, i32 0, i32 31
  %arrayidx115 = getelementptr inbounds [11 x %struct._GimpCanvasItem*], [11 x %struct._GimpCanvasItem*]* %handles114, i32 0, i64 10
  store %struct._GimpCanvasItem* %165, %struct._GimpCanvasItem** %arrayidx115, align 8
  %167 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %168 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %stroke_group, align 8
  call void @gimp_draw_tool_push_group(%struct._GimpDrawTool* %167, %struct._GimpCanvasGroup* %168)
  %169 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %170 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %tcx = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %170, i32 0, i32 20
  %171 = load double, double* %tcx, align 8
  %172 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %tcy = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %172, i32 0, i32 21
  %173 = load double, double* %tcy, align 8
  %174 = load i32, i32* %d, align 4
  %175 = load i32, i32* %d, align 4
  %call116 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %169, i32 2, double %171, double %173, i32 %174, i32 %175, i32 0)
  %176 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %177 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %tcx117 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %177, i32 0, i32 20
  %178 = load double, double* %tcx117, align 8
  %179 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %tcy118 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %179, i32 0, i32 21
  %180 = load double, double* %tcy118, align 8
  %181 = load i32, i32* %d, align 4
  %182 = load i32, i32* %d, align 4
  %call119 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %176, i32 4, double %178, double %180, i32 %181, i32 %182, i32 0)
  %183 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  call void @gimp_draw_tool_pop_group(%struct._GimpDrawTool* %183)
  br label %if.end.120

if.end.120:                                       ; preds = %cond.end, %if.end.104
  %184 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %function = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %184, i32 0, i32 26
  %185 = load i32, i32* %function, align 4
  %idxprom121 = zext i32 %185 to i64
  %186 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %handles122 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %186, i32 0, i32 31
  %arrayidx123 = getelementptr inbounds [11 x %struct._GimpCanvasItem*], [11 x %struct._GimpCanvasItem*]* %handles122, i32 0, i64 %idxprom121
  %187 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %arrayidx123, align 8
  %tobool124 = icmp ne %struct._GimpCanvasItem* %187, null
  br i1 %tobool124, label %if.then.125, label %if.end.130

if.then.125:                                      ; preds = %if.end.120
  %188 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %function126 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %188, i32 0, i32 26
  %189 = load i32, i32* %function126, align 4
  %idxprom127 = zext i32 %189 to i64
  %190 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %handles128 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %190, i32 0, i32 31
  %arrayidx129 = getelementptr inbounds [11 x %struct._GimpCanvasItem*], [11 x %struct._GimpCanvasItem*]* %handles128, i32 0, i64 %idxprom127
  %191 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %arrayidx129, align 8
  call void @gimp_canvas_item_set_highlight(%struct._GimpCanvasItem* %191, i32 1)
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.125, %if.end.120
  %192 = load %struct._GimpTransformOptions*, %struct._GimpTransformOptions** %options, align 8
  %type = getelementptr inbounds %struct._GimpTransformOptions, %struct._GimpTransformOptions* %192, i32 0, i32 1
  %193 = load i32, i32* %type, align 4
  %cmp131 = icmp eq i32 %193, 1
  br i1 %cmp131, label %if.then.133, label %if.else.255

if.then.133:                                      ; preds = %if.end.130
  %194 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %transform135 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %194, i32 0, i32 22
  %195 = bitcast %struct._GimpMatrix3* %matrix to i8*
  %196 = bitcast %struct._GimpMatrix3* %transform135 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %195, i8* %196, i64 72, i32 8, i1 false)
  %197 = load %struct._GimpTransformOptions*, %struct._GimpTransformOptions** %options, align 8
  %direction = getelementptr inbounds %struct._GimpTransformOptions, %struct._GimpTransformOptions* %197, i32 0, i32 2
  %198 = load i32, i32* %direction, align 4
  %cmp142 = icmp eq i32 %198, 1
  br i1 %cmp142, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %if.then.133
  call void @gimp_matrix3_invert(%struct._GimpMatrix3* %matrix)
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.144, %if.then.133
  %199 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call146 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %199)
  %call147 = call i32 @gimp_channel_boundary(%struct._GimpChannel* %call146, %struct._BoundSeg** %orig_in, %struct._BoundSeg** %orig_out, i32* %num_segs_in, i32* %num_segs_out, i32 0, i32 0, i32 0, i32 0)
  %200 = load %struct._BoundSeg*, %struct._BoundSeg** %orig_in, align 8
  %201 = bitcast %struct._BoundSeg* %200 to i8*
  %202 = load i32, i32* %num_segs_in, align 4
  %conv148 = sext i32 %202 to i64
  %mul = mul i64 %conv148, 20
  %conv149 = trunc i64 %mul to i32
  %call150 = call noalias i8* @g_memdup(i8* %201, i32 %conv149)
  %203 = bitcast i8* %call150 to %struct._BoundSeg*
  store %struct._BoundSeg* %203, %struct._BoundSeg** %segs_in, align 8
  %204 = load %struct._BoundSeg*, %struct._BoundSeg** %orig_out, align 8
  %205 = bitcast %struct._BoundSeg* %204 to i8*
  %206 = load i32, i32* %num_segs_out, align 4
  %conv151 = sext i32 %206 to i64
  %mul152 = mul i64 %conv151, 20
  %conv153 = trunc i64 %mul152 to i32
  %call154 = call noalias i8* @g_memdup(i8* %205, i32 %conv153)
  %207 = bitcast i8* %call154 to %struct._BoundSeg*
  store %struct._BoundSeg* %207, %struct._BoundSeg** %segs_out, align 8
  %208 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_in, align 8
  %tobool155 = icmp ne %struct._BoundSeg* %208, null
  br i1 %tobool155, label %if.then.156, label %if.end.203

if.then.156:                                      ; preds = %if.end.145
  store i32 0, i32* %i, align 4
  br label %for.cond.157

for.cond.157:                                     ; preds = %for.inc.199, %if.then.156
  %209 = load i32, i32* %i, align 4
  %210 = load i32, i32* %num_segs_in, align 4
  %cmp158 = icmp slt i32 %209, %210
  br i1 %cmp158, label %for.body.160, label %for.end.201

for.body.160:                                     ; preds = %for.cond.157
  %211 = load i32, i32* %i, align 4
  %idxprom163 = sext i32 %211 to i64
  %212 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_in, align 8
  %arrayidx164 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %212, i64 %idxprom163
  %x1165 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx164, i32 0, i32 0
  %213 = load i32, i32* %x1165, align 4
  %conv166 = sitofp i32 %213 to double
  %214 = load i32, i32* %i, align 4
  %idxprom167 = sext i32 %214 to i64
  %215 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_in, align 8
  %arrayidx168 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %215, i64 %idxprom167
  %y1169 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx168, i32 0, i32 1
  %216 = load i32, i32* %y1169, align 4
  %conv170 = sitofp i32 %216 to double
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %matrix, double %conv166, double %conv170, double* %tx, double* %ty)
  %217 = load double, double* %tx, align 8
  %call171 = call double @rint(double %217) #7
  %conv172 = fptosi double %call171 to i32
  %218 = load i32, i32* %i, align 4
  %idxprom173 = sext i32 %218 to i64
  %219 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_in, align 8
  %arrayidx174 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %219, i64 %idxprom173
  %x1175 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx174, i32 0, i32 0
  store i32 %conv172, i32* %x1175, align 4
  %220 = load double, double* %ty, align 8
  %call176 = call double @rint(double %220) #7
  %conv177 = fptosi double %call176 to i32
  %221 = load i32, i32* %i, align 4
  %idxprom178 = sext i32 %221 to i64
  %222 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_in, align 8
  %arrayidx179 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %222, i64 %idxprom178
  %y1180 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx179, i32 0, i32 1
  store i32 %conv177, i32* %y1180, align 4
  %223 = load i32, i32* %i, align 4
  %idxprom181 = sext i32 %223 to i64
  %224 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_in, align 8
  %arrayidx182 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %224, i64 %idxprom181
  %x2183 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx182, i32 0, i32 2
  %225 = load i32, i32* %x2183, align 4
  %conv184 = sitofp i32 %225 to double
  %226 = load i32, i32* %i, align 4
  %idxprom185 = sext i32 %226 to i64
  %227 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_in, align 8
  %arrayidx186 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %227, i64 %idxprom185
  %y2187 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx186, i32 0, i32 3
  %228 = load i32, i32* %y2187, align 4
  %conv188 = sitofp i32 %228 to double
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %matrix, double %conv184, double %conv188, double* %tx, double* %ty)
  %229 = load double, double* %tx, align 8
  %call189 = call double @rint(double %229) #7
  %conv190 = fptosi double %call189 to i32
  %230 = load i32, i32* %i, align 4
  %idxprom191 = sext i32 %230 to i64
  %231 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_in, align 8
  %arrayidx192 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %231, i64 %idxprom191
  %x2193 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx192, i32 0, i32 2
  store i32 %conv190, i32* %x2193, align 4
  %232 = load double, double* %ty, align 8
  %call194 = call double @rint(double %232) #7
  %conv195 = fptosi double %call194 to i32
  %233 = load i32, i32* %i, align 4
  %idxprom196 = sext i32 %233 to i64
  %234 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_in, align 8
  %arrayidx197 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %234, i64 %idxprom196
  %y2198 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx197, i32 0, i32 3
  store i32 %conv195, i32* %y2198, align 4
  br label %for.inc.199

for.inc.199:                                      ; preds = %for.body.160
  %235 = load i32, i32* %i, align 4
  %inc200 = add nsw i32 %235, 1
  store i32 %inc200, i32* %i, align 4
  br label %for.cond.157

for.end.201:                                      ; preds = %for.cond.157
  %236 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %237 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_in, align 8
  %238 = load i32, i32* %num_segs_in, align 4
  %call202 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_boundary(%struct._GimpDrawTool* %236, %struct._BoundSeg* %237, i32 %238, %struct._GimpMatrix3* null, double 0.000000e+00, double 0.000000e+00)
  %239 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_in, align 8
  %240 = bitcast %struct._BoundSeg* %239 to i8*
  call void @g_free(i8* %240)
  br label %if.end.203

if.end.203:                                       ; preds = %for.end.201, %if.end.145
  %241 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_out, align 8
  %tobool204 = icmp ne %struct._BoundSeg* %241, null
  br i1 %tobool204, label %if.then.205, label %if.end.254

if.then.205:                                      ; preds = %if.end.203
  store i32 0, i32* %i, align 4
  br label %for.cond.206

for.cond.206:                                     ; preds = %for.inc.250, %if.then.205
  %242 = load i32, i32* %i, align 4
  %243 = load i32, i32* %num_segs_out, align 4
  %cmp207 = icmp slt i32 %242, %243
  br i1 %cmp207, label %for.body.209, label %for.end.252

for.body.209:                                     ; preds = %for.cond.206
  %244 = load i32, i32* %i, align 4
  %idxprom214 = sext i32 %244 to i64
  %245 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_out, align 8
  %arrayidx215 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %245, i64 %idxprom214
  %x1216 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx215, i32 0, i32 0
  %246 = load i32, i32* %x1216, align 4
  %conv217 = sitofp i32 %246 to double
  %247 = load i32, i32* %i, align 4
  %idxprom218 = sext i32 %247 to i64
  %248 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_out, align 8
  %arrayidx219 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %248, i64 %idxprom218
  %y1220 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx219, i32 0, i32 1
  %249 = load i32, i32* %y1220, align 4
  %conv221 = sitofp i32 %249 to double
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %matrix, double %conv217, double %conv221, double* %tx211, double* %ty213)
  %250 = load double, double* %tx211, align 8
  %call222 = call double @rint(double %250) #7
  %conv223 = fptosi double %call222 to i32
  %251 = load i32, i32* %i, align 4
  %idxprom224 = sext i32 %251 to i64
  %252 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_out, align 8
  %arrayidx225 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %252, i64 %idxprom224
  %x1226 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx225, i32 0, i32 0
  store i32 %conv223, i32* %x1226, align 4
  %253 = load double, double* %ty213, align 8
  %call227 = call double @rint(double %253) #7
  %conv228 = fptosi double %call227 to i32
  %254 = load i32, i32* %i, align 4
  %idxprom229 = sext i32 %254 to i64
  %255 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_out, align 8
  %arrayidx230 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %255, i64 %idxprom229
  %y1231 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx230, i32 0, i32 1
  store i32 %conv228, i32* %y1231, align 4
  %256 = load i32, i32* %i, align 4
  %idxprom232 = sext i32 %256 to i64
  %257 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_out, align 8
  %arrayidx233 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %257, i64 %idxprom232
  %x2234 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx233, i32 0, i32 2
  %258 = load i32, i32* %x2234, align 4
  %conv235 = sitofp i32 %258 to double
  %259 = load i32, i32* %i, align 4
  %idxprom236 = sext i32 %259 to i64
  %260 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_out, align 8
  %arrayidx237 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %260, i64 %idxprom236
  %y2238 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx237, i32 0, i32 3
  %261 = load i32, i32* %y2238, align 4
  %conv239 = sitofp i32 %261 to double
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %matrix, double %conv235, double %conv239, double* %tx211, double* %ty213)
  %262 = load double, double* %tx211, align 8
  %call240 = call double @rint(double %262) #7
  %conv241 = fptosi double %call240 to i32
  %263 = load i32, i32* %i, align 4
  %idxprom242 = sext i32 %263 to i64
  %264 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_out, align 8
  %arrayidx243 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %264, i64 %idxprom242
  %x2244 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx243, i32 0, i32 2
  store i32 %conv241, i32* %x2244, align 4
  %265 = load double, double* %ty213, align 8
  %call245 = call double @rint(double %265) #7
  %conv246 = fptosi double %call245 to i32
  %266 = load i32, i32* %i, align 4
  %idxprom247 = sext i32 %266 to i64
  %267 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_out, align 8
  %arrayidx248 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %267, i64 %idxprom247
  %y2249 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx248, i32 0, i32 3
  store i32 %conv246, i32* %y2249, align 4
  br label %for.inc.250

for.inc.250:                                      ; preds = %for.body.209
  %268 = load i32, i32* %i, align 4
  %inc251 = add nsw i32 %268, 1
  store i32 %inc251, i32* %i, align 4
  br label %for.cond.206

for.end.252:                                      ; preds = %for.cond.206
  %269 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %270 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_out, align 8
  %271 = load i32, i32* %num_segs_out, align 4
  %call253 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_boundary(%struct._GimpDrawTool* %269, %struct._BoundSeg* %270, i32 %271, %struct._GimpMatrix3* null, double 0.000000e+00, double 0.000000e+00)
  %272 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_out, align 8
  %273 = bitcast %struct._BoundSeg* %272 to i8*
  call void @g_free(i8* %273)
  br label %if.end.254

if.end.254:                                       ; preds = %for.end.252, %if.end.203
  br label %if.end.310

if.else.255:                                      ; preds = %if.end.130
  %274 = load %struct._GimpTransformOptions*, %struct._GimpTransformOptions** %options, align 8
  %type256 = getelementptr inbounds %struct._GimpTransformOptions, %struct._GimpTransformOptions* %274, i32 0, i32 1
  %275 = load i32, i32* %type256, align 4
  %cmp257 = icmp eq i32 %275, 2
  br i1 %cmp257, label %if.then.259, label %if.end.309

if.then.259:                                      ; preds = %if.else.255
  store %struct._GimpStroke* null, %struct._GimpStroke** %stroke, align 8
  %276 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %transform264 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %276, i32 0, i32 22
  %277 = bitcast %struct._GimpMatrix3* %matrix263 to i8*
  %278 = bitcast %struct._GimpMatrix3* %transform264 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %277, i8* %278, i64 72, i32 8, i1 false)
  %279 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call265 = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %279)
  store %struct._GimpVectors* %call265, %struct._GimpVectors** %vectors, align 8
  %280 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool266 = icmp ne %struct._GimpVectors* %280, null
  br i1 %tobool266, label %if.then.267, label %if.end.308

if.then.267:                                      ; preds = %if.then.259
  %281 = load %struct._GimpTransformOptions*, %struct._GimpTransformOptions** %options, align 8
  %direction268 = getelementptr inbounds %struct._GimpTransformOptions, %struct._GimpTransformOptions* %281, i32 0, i32 2
  %282 = load i32, i32* %direction268, align 4
  %cmp269 = icmp eq i32 %282, 1
  br i1 %cmp269, label %if.then.271, label %if.end.272

if.then.271:                                      ; preds = %if.then.267
  call void @gimp_matrix3_invert(%struct._GimpMatrix3* %matrix263)
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.271, %if.then.267
  br label %while.cond

while.cond:                                       ; preds = %if.end.307, %if.end.272
  %283 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %284 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %call273 = call %struct._GimpStroke* @gimp_vectors_stroke_get_next(%struct._GimpVectors* %283, %struct._GimpStroke* %284)
  store %struct._GimpStroke* %call273, %struct._GimpStroke** %stroke, align 8
  %tobool274 = icmp ne %struct._GimpStroke* %call273, null
  br i1 %tobool274, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %285 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %call277 = call %struct._GArray* @gimp_stroke_interpolate(%struct._GimpStroke* %285, double 1.000000e+00, i32* %closed)
  store %struct._GArray* %call277, %struct._GArray** %coords, align 8
  %286 = load %struct._GArray*, %struct._GArray** %coords, align 8
  %tobool278 = icmp ne %struct._GArray* %286, null
  br i1 %tobool278, label %land.lhs.true.279, label %if.end.303

land.lhs.true.279:                                ; preds = %while.body
  %287 = load %struct._GArray*, %struct._GArray** %coords, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %287, i32 0, i32 1
  %288 = load i32, i32* %len, align 4
  %tobool280 = icmp ne i32 %288, 0
  br i1 %tobool280, label %if.then.281, label %if.end.303

if.then.281:                                      ; preds = %land.lhs.true.279
  store i32 0, i32* %i283, align 4
  br label %for.cond.284

for.cond.284:                                     ; preds = %for.inc.296, %if.then.281
  %289 = load i32, i32* %i283, align 4
  %290 = load %struct._GArray*, %struct._GArray** %coords, align 8
  %len285 = getelementptr inbounds %struct._GArray, %struct._GArray* %290, i32 0, i32 1
  %291 = load i32, i32* %len285, align 4
  %cmp286 = icmp ult i32 %289, %291
  br i1 %cmp286, label %for.body.288, label %for.end.298

for.body.288:                                     ; preds = %for.cond.284
  %292 = load i32, i32* %i283, align 4
  %idxprom290 = sext i32 %292 to i64
  %293 = load %struct._GArray*, %struct._GArray** %coords, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %293, i32 0, i32 0
  %294 = load i8*, i8** %data, align 8
  %295 = bitcast i8* %294 to %struct._GimpCoords*
  %arrayidx291 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %295, i64 %idxprom290
  store %struct._GimpCoords* %arrayidx291, %struct._GimpCoords** %curr, align 8
  %296 = load %struct._GimpCoords*, %struct._GimpCoords** %curr, align 8
  %x292 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %296, i32 0, i32 0
  %297 = load double, double* %x292, align 8
  %298 = load %struct._GimpCoords*, %struct._GimpCoords** %curr, align 8
  %y293 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %298, i32 0, i32 1
  %299 = load double, double* %y293, align 8
  %300 = load %struct._GimpCoords*, %struct._GimpCoords** %curr, align 8
  %x294 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %300, i32 0, i32 0
  %301 = load %struct._GimpCoords*, %struct._GimpCoords** %curr, align 8
  %y295 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %301, i32 0, i32 1
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %matrix263, double %297, double %299, double* %x294, double* %y295)
  br label %for.inc.296

for.inc.296:                                      ; preds = %for.body.288
  %302 = load i32, i32* %i283, align 4
  %inc297 = add nsw i32 %302, 1
  store i32 %inc297, i32* %i283, align 4
  br label %for.cond.284

for.end.298:                                      ; preds = %for.cond.284
  %303 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %304 = load %struct._GArray*, %struct._GArray** %coords, align 8
  %data299 = getelementptr inbounds %struct._GArray, %struct._GArray* %304, i32 0, i32 0
  %305 = load i8*, i8** %data299, align 8
  %306 = bitcast i8* %305 to %struct._GimpCoords*
  %arrayidx300 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %306, i64 0
  %307 = load %struct._GArray*, %struct._GArray** %coords, align 8
  %len301 = getelementptr inbounds %struct._GArray, %struct._GArray* %307, i32 0, i32 1
  %308 = load i32, i32* %len301, align 4
  %call302 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_strokes(%struct._GimpDrawTool* %303, %struct._GimpCoords* %arrayidx300, i32 %308, i32 0)
  br label %if.end.303

if.end.303:                                       ; preds = %for.end.298, %land.lhs.true.279, %while.body
  %309 = load %struct._GArray*, %struct._GArray** %coords, align 8
  %tobool304 = icmp ne %struct._GArray* %309, null
  br i1 %tobool304, label %if.then.305, label %if.end.307

if.then.305:                                      ; preds = %if.end.303
  %310 = load %struct._GArray*, %struct._GArray** %coords, align 8
  %call306 = call i8* @g_array_free(%struct._GArray* %310, i32 1)
  br label %if.end.307

if.end.307:                                       ; preds = %if.then.305, %if.end.303
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.308

if.end.308:                                       ; preds = %while.end, %if.then.259
  br label %if.end.309

if.end.309:                                       ; preds = %if.end.308, %if.else.255
  br label %if.end.310

if.end.310:                                       ; preds = %if.end.309, %if.end.254
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._TileManager* @gimp_transform_tool_real_transform(%struct._GimpTransformTool* %tr_tool, %struct._GimpItem* %active_item, %struct._TileManager* %orig_tiles, i32 %orig_offset_x, i32 %orig_offset_y, i32* %new_offset_x, i32* %new_offset_y) #3 {
entry:
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  %active_item.addr = alloca %struct._GimpItem*, align 8
  %orig_tiles.addr = alloca %struct._TileManager*, align 8
  %orig_offset_x.addr = alloca i32, align 4
  %orig_offset_y.addr = alloca i32, align 4
  %new_offset_x.addr = alloca i32*, align 8
  %new_offset_y.addr = alloca i32*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %options = alloca %struct._GimpTransformOptions*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %progress = alloca %struct._GimpProgress*, align 8
  %ret = alloca %struct._TileManager*, align 8
  %clip = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst41 = alloca %struct._GTypeInstance*, align 8
  %__t43 = alloca i64, align 8
  %__r46 = alloca i32, align 4
  %tmp61 = alloca i32, align 4
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  store %struct._GimpItem* %active_item, %struct._GimpItem** %active_item.addr, align 8
  store %struct._TileManager* %orig_tiles, %struct._TileManager** %orig_tiles.addr, align 8
  store i32 %orig_offset_x, i32* %orig_offset_x.addr, align 4
  store i32 %orig_offset_y, i32* %orig_offset_y.addr, align 4
  store i32* %new_offset_x, i32** %new_offset_x.addr, align 8
  store i32* %new_offset_y, i32** %new_offset_y.addr, align 8
  %0 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %1 = bitcast %struct._GimpTransformTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_transform_options_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpTransformOptions*
  store %struct._GimpTransformOptions* %7, %struct._GimpTransformOptions** %options, align 8
  %8 = load %struct._GimpTransformOptions*, %struct._GimpTransformOptions** %options, align 8
  %9 = bitcast %struct._GimpTransformOptions* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_context_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpContext*
  store %struct._GimpContext* %10, %struct._GimpContext** %context, align 8
  store %struct._TileManager* null, %struct._TileManager** %ret, align 8
  %11 = load %struct._GimpTransformOptions*, %struct._GimpTransformOptions** %options, align 8
  %clip9 = getelementptr inbounds %struct._GimpTransformOptions, %struct._GimpTransformOptions* %11, i32 0, i32 5
  %12 = load i32, i32* %clip9, align 4
  store i32 %12, i32* %clip, align 4
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %14 = bitcast %struct._GimpTool* %13 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_progress_interface_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call10)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpProgress*
  %16 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %progress_text = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %16, i32 0, i32 32
  %17 = load i8*, i8** %progress_text, align 8
  %call12 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %15, i8* %17, i32 0)
  store %struct._GimpProgress* %call12, %struct._GimpProgress** %progress, align 8
  %18 = load %struct._TileManager*, %struct._TileManager** %orig_tiles.addr, align 8
  %tobool = icmp ne %struct._TileManager* %18, null
  br i1 %tobool, label %if.then, label %if.else.31

if.then:                                          ; preds = %entry
  %19 = load %struct._GimpItem*, %struct._GimpItem** %active_item.addr, align 8
  %20 = bitcast %struct._GimpItem* %19 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %20, %struct._GTypeInstance** %__inst, align 8
  %call13 = call i64 @gimp_channel_get_type() #7
  store i64 %call13, i64* %__t, align 8
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool14 = icmp ne %struct._GTypeInstance* %21, null
  br i1 %tobool14, label %if.else, label %if.then.15

if.then.15:                                       ; preds = %if.then
  store i32 0, i32* %__r, align 4
  br label %if.end.21

if.else:                                          ; preds = %if.then
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool16 = icmp ne %struct._GTypeClass* %23, null
  br i1 %tobool16, label %land.lhs.true, label %if.else.19

land.lhs.true:                                    ; preds = %if.else
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class17 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class17, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type, align 8
  %27 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %26, %27
  br i1 %cmp, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.19:                                       ; preds = %land.lhs.true, %if.else
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %29 = load i64, i64* %__t, align 8
  %call20 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %28, i64 %29) #8
  store i32 %call20, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.19, %if.then.18
  br label %if.end.21

if.end.21:                                        ; preds = %if.end, %if.then.15
  %30 = load i32, i32* %__r, align 4
  store i32 %30, i32* %tmp
  %31 = load i32, i32* %tmp
  %tobool22 = icmp ne i32 %31, 0
  br i1 %tobool22, label %land.lhs.true.23, label %if.end.27

land.lhs.true.23:                                 ; preds = %if.end.21
  %32 = load %struct._TileManager*, %struct._TileManager** %orig_tiles.addr, align 8
  %call24 = call i32 @tile_manager_bpp(%struct._TileManager* %32)
  %cmp25 = icmp eq i32 %call24, 1
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %land.lhs.true.23
  store i32 1, i32* %clip, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %land.lhs.true.23, %if.end.21
  %33 = load %struct._GimpItem*, %struct._GimpItem** %active_item.addr, align 8
  %34 = bitcast %struct._GimpItem* %33 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_drawable_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call28)
  %35 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpDrawable*
  %36 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %37 = load %struct._TileManager*, %struct._TileManager** %orig_tiles.addr, align 8
  %38 = load i32, i32* %orig_offset_x.addr, align 4
  %39 = load i32, i32* %orig_offset_y.addr, align 4
  %40 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %transform = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %40, i32 0, i32 22
  %41 = load %struct._GimpTransformOptions*, %struct._GimpTransformOptions** %options, align 8
  %direction = getelementptr inbounds %struct._GimpTransformOptions, %struct._GimpTransformOptions* %41, i32 0, i32 2
  %42 = load i32, i32* %direction, align 4
  %43 = load %struct._GimpTransformOptions*, %struct._GimpTransformOptions** %options, align 8
  %interpolation = getelementptr inbounds %struct._GimpTransformOptions, %struct._GimpTransformOptions* %43, i32 0, i32 3
  %44 = load i32, i32* %interpolation, align 4
  %45 = load %struct._GimpTransformOptions*, %struct._GimpTransformOptions** %options, align 8
  %recursion_level = getelementptr inbounds %struct._GimpTransformOptions, %struct._GimpTransformOptions* %45, i32 0, i32 4
  %46 = load i32, i32* %recursion_level, align 4
  %47 = load i32, i32* %clip, align 4
  %48 = load i32*, i32** %new_offset_x.addr, align 8
  %49 = load i32*, i32** %new_offset_y.addr, align 8
  %50 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %call30 = call %struct._TileManager* @gimp_drawable_transform_tiles_affine(%struct._GimpDrawable* %35, %struct._GimpContext* %36, %struct._TileManager* %37, i32 %38, i32 %39, %struct._GimpMatrix3* %transform, i32 %42, i32 %44, i32 %46, i32 %47, i32* %48, i32* %49, %struct._GimpProgress* %50)
  store %struct._TileManager* %call30, %struct._TileManager** %ret, align 8
  br label %if.end.70

if.else.31:                                       ; preds = %entry
  %51 = load %struct._GimpItem*, %struct._GimpItem** %active_item.addr, align 8
  %call32 = call i32 @gimp_item_get_linked(%struct._GimpItem* %51)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.else.39

if.then.34:                                       ; preds = %if.else.31
  %52 = load %struct._GimpItem*, %struct._GimpItem** %active_item.addr, align 8
  %53 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %54 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %transform35 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %54, i32 0, i32 22
  %55 = load %struct._GimpTransformOptions*, %struct._GimpTransformOptions** %options, align 8
  %direction36 = getelementptr inbounds %struct._GimpTransformOptions, %struct._GimpTransformOptions* %55, i32 0, i32 2
  %56 = load i32, i32* %direction36, align 4
  %57 = load %struct._GimpTransformOptions*, %struct._GimpTransformOptions** %options, align 8
  %interpolation37 = getelementptr inbounds %struct._GimpTransformOptions, %struct._GimpTransformOptions* %57, i32 0, i32 3
  %58 = load i32, i32* %interpolation37, align 4
  %59 = load %struct._GimpTransformOptions*, %struct._GimpTransformOptions** %options, align 8
  %recursion_level38 = getelementptr inbounds %struct._GimpTransformOptions, %struct._GimpTransformOptions* %59, i32 0, i32 4
  %60 = load i32, i32* %recursion_level38, align 4
  %61 = load i32, i32* %clip, align 4
  %62 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  call void @gimp_item_linked_transform(%struct._GimpItem* %52, %struct._GimpContext* %53, %struct._GimpMatrix3* %transform35, i32 %56, i32 %58, i32 %60, i32 %61, %struct._GimpProgress* %62)
  br label %if.end.69

if.else.39:                                       ; preds = %if.else.31
  %63 = load %struct._GimpItem*, %struct._GimpItem** %active_item.addr, align 8
  %64 = bitcast %struct._GimpItem* %63 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %64, %struct._GTypeInstance** %__inst41, align 8
  %call44 = call i64 @gimp_channel_get_type() #7
  store i64 %call44, i64* %__t43, align 8
  %65 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %tobool47 = icmp ne %struct._GTypeInstance* %65, null
  br i1 %tobool47, label %if.else.49, label %if.then.48

if.then.48:                                       ; preds = %if.else.39
  store i32 0, i32* %__r46, align 4
  br label %if.end.60

if.else.49:                                       ; preds = %if.else.39
  %66 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class50 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %66, i32 0, i32 0
  %67 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class50, align 8
  %tobool51 = icmp ne %struct._GTypeClass* %67, null
  br i1 %tobool51, label %land.lhs.true.52, label %if.else.57

land.lhs.true.52:                                 ; preds = %if.else.49
  %68 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class53 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %68, i32 0, i32 0
  %69 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class53, align 8
  %g_type54 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %69, i32 0, i32 0
  %70 = load i64, i64* %g_type54, align 8
  %71 = load i64, i64* %__t43, align 8
  %cmp55 = icmp eq i64 %70, %71
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %land.lhs.true.52
  store i32 1, i32* %__r46, align 4
  br label %if.end.59

if.else.57:                                       ; preds = %land.lhs.true.52, %if.else.49
  %72 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %73 = load i64, i64* %__t43, align 8
  %call58 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %72, i64 %73) #8
  store i32 %call58, i32* %__r46, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.57, %if.then.56
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.48
  %74 = load i32, i32* %__r46, align 4
  store i32 %74, i32* %tmp61
  %75 = load i32, i32* %tmp61
  %tobool62 = icmp ne i32 %75, 0
  br i1 %tobool62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.60
  store i32 1, i32* %clip, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %if.end.60
  %76 = load %struct._GimpItem*, %struct._GimpItem** %active_item.addr, align 8
  %77 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %78 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %transform65 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %78, i32 0, i32 22
  %79 = load %struct._GimpTransformOptions*, %struct._GimpTransformOptions** %options, align 8
  %direction66 = getelementptr inbounds %struct._GimpTransformOptions, %struct._GimpTransformOptions* %79, i32 0, i32 2
  %80 = load i32, i32* %direction66, align 4
  %81 = load %struct._GimpTransformOptions*, %struct._GimpTransformOptions** %options, align 8
  %interpolation67 = getelementptr inbounds %struct._GimpTransformOptions, %struct._GimpTransformOptions* %81, i32 0, i32 3
  %82 = load i32, i32* %interpolation67, align 4
  %83 = load %struct._GimpTransformOptions*, %struct._GimpTransformOptions** %options, align 8
  %recursion_level68 = getelementptr inbounds %struct._GimpTransformOptions, %struct._GimpTransformOptions* %83, i32 0, i32 4
  %84 = load i32, i32* %recursion_level68, align 4
  %85 = load i32, i32* %clip, align 4
  %86 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  call void @gimp_item_transform(%struct._GimpItem* %76, %struct._GimpContext* %77, %struct._GimpMatrix3* %transform65, i32 %80, i32 %82, i32 %84, i32 %85, %struct._GimpProgress* %86)
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.64, %if.then.34
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.end.27
  %87 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %tobool71 = icmp ne %struct._GimpProgress* %87, null
  br i1 %tobool71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.70
  %88 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %88)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %if.end.70
  %89 = load %struct._TileManager*, %struct._TileManager** %ret, align 8
  ret %struct._TileManager* %89
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpItem* @gimp_transform_tool_check_active_item(%struct._GimpTransformTool* %tr_tool, %struct._GimpImage* %image, %struct._GError** %error) #3 {
entry:
  %retval = alloca %struct._GimpItem*, align 8
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %options = alloca %struct._GimpTransformOptions*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %null_message = alloca i8*, align 8
  %locked_message = alloca i8*, align 8
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %1 = bitcast %struct._GimpTransformTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  %call2 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %2)
  %3 = bitcast %struct._GimpToolOptions* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_transform_options_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpTransformOptions*
  store %struct._GimpTransformOptions* %4, %struct._GimpTransformOptions** %options, align 8
  store i8* null, i8** %null_message, align 8
  store i8* null, i8** %locked_message, align 8
  %5 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call5 = call %struct._GimpItem* @gimp_transform_tool_get_active_item(%struct._GimpTransformTool* %5, %struct._GimpImage* %6)
  store %struct._GimpItem* %call5, %struct._GimpItem** %item, align 8
  %7 = load %struct._GimpTransformOptions*, %struct._GimpTransformOptions** %options, align 8
  %type = getelementptr inbounds %struct._GimpTransformOptions, %struct._GimpTransformOptions* %7, i32 0, i32 1
  %8 = load i32, i32* %type, align 4
  switch i32 %8, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.8
    i32 2, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %entry
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0)) #6
  store i8* %call6, i8** %null_message, align 8
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0)) #6
  store i8* %call7, i8** %locked_message, align 8
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0), i8** %null_message, align 8
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0), i8** %locked_message, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0)) #6
  store i8* %call10, i8** %null_message, align 8
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i32 0, i32 0)) #6
  store i8* %call11, i8** %locked_message, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.9, %sw.bb.8, %sw.bb
  %9 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %tobool = icmp ne %struct._GimpItem* %9, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.epilog
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call12 = call i32 @gimp_error_quark() #7
  %11 = load i8*, i8** %null_message, align 8
  call void @g_set_error_literal(%struct._GError** %10, i32 %call12, i32 0, i8* %11)
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

if.end:                                           ; preds = %sw.epilog
  %12 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call13 = call i32 @gimp_item_is_content_locked(%struct._GimpItem* %12)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call16 = call i32 @gimp_error_quark() #7
  %14 = load i8*, i8** %locked_message, align 8
  call void @g_set_error_literal(%struct._GError** %13, i32 %call16, i32 0, i8* %14)
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

if.end.17:                                        ; preds = %if.end
  %15 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  store %struct._GimpItem* %15, %struct._GimpItem** %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.15, %if.then
  %16 = load %struct._GimpItem*, %struct._GimpItem** %retval
  ret %struct._GimpItem* %16
}

declare void @gimp_tool_control(%struct._GimpTool*, i32, %struct._GimpDisplay*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_transform_tool_bounds(%struct._GimpTransformTool* %tr_tool, %struct._GimpDisplay* %display) #3 {
entry:
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %options = alloca %struct._GimpTransformOptions*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %non_empty = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %1 = bitcast %struct._GimpTransformTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  %call2 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %2)
  %3 = bitcast %struct._GimpToolOptions* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_transform_options_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpTransformOptions*
  store %struct._GimpTransformOptions* %4, %struct._GimpTransformOptions** %options, align 8
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call5 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %5)
  store %struct._GimpImage* %call5, %struct._GimpImage** %image, align 8
  store i32 1, i32* %non_empty, align 4
  %6 = load %struct._GimpTransformOptions*, %struct._GimpTransformOptions** %options, align 8
  %type = getelementptr inbounds %struct._GimpTransformOptions, %struct._GimpTransformOptions* %6, i32 0, i32 1
  %7 = load i32, i32* %type, align 4
  switch i32 %7, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.17
    i32 2, label %sw.bb.17
  ]

sw.bb:                                            ; preds = %entry
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call6 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %8)
  store %struct._GimpDrawable* %call6, %struct._GimpDrawable** %drawable, align 8
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %10 = bitcast %struct._GimpDrawable* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_item_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %11, i32* %offset_x, i32* %offset_y)
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %13 = bitcast %struct._GimpDrawable* %12 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_item_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call9)
  %14 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpItem*
  %call11 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %14, i32* %x, i32* %y, i32* %width, i32* %height)
  store i32 %call11, i32* %non_empty, align 4
  %15 = load i32, i32* %x, align 4
  %16 = load i32, i32* %offset_x, align 4
  %add = add nsw i32 %15, %16
  %17 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %17, i32 0, i32 5
  store i32 %add, i32* %x1, align 4
  %18 = load i32, i32* %y, align 4
  %19 = load i32, i32* %offset_y, align 4
  %add12 = add nsw i32 %18, %19
  %20 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %y1 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %20, i32 0, i32 6
  store i32 %add12, i32* %y1, align 4
  %21 = load i32, i32* %x, align 4
  %22 = load i32, i32* %width, align 4
  %add13 = add nsw i32 %21, %22
  %23 = load i32, i32* %offset_x, align 4
  %add14 = add nsw i32 %add13, %23
  %24 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %24, i32 0, i32 7
  store i32 %add14, i32* %x2, align 4
  %25 = load i32, i32* %y, align 4
  %26 = load i32, i32* %height, align 4
  %add15 = add nsw i32 %25, %26
  %27 = load i32, i32* %offset_y, align 4
  %add16 = add nsw i32 %add15, %27
  %28 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %28, i32 0, i32 8
  store i32 %add16, i32* %y2, align 4
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry, %entry
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call18 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %29)
  %30 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %x119 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %30, i32 0, i32 5
  %31 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %y120 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %31, i32 0, i32 6
  %32 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %x221 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %32, i32 0, i32 7
  %33 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %y222 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %33, i32 0, i32 8
  %call23 = call i32 @gimp_channel_bounds(%struct._GimpChannel* %call18, i32* %x119, i32* %y120, i32* %x221, i32* %y222)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.17, %sw.bb
  %34 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %x124 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %34, i32 0, i32 5
  %35 = load i32, i32* %x124, align 4
  %36 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %x225 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %36, i32 0, i32 7
  %37 = load i32, i32* %x225, align 4
  %add26 = add nsw i32 %35, %37
  %conv = sitofp i32 %add26 to double
  %div = fdiv double %conv, 2.000000e+00
  %38 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %cx = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %38, i32 0, i32 9
  store double %div, double* %cx, align 8
  %39 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %y127 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %39, i32 0, i32 6
  %40 = load i32, i32* %y127, align 4
  %41 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %y228 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %41, i32 0, i32 8
  %42 = load i32, i32* %y228, align 4
  %add29 = add nsw i32 %40, %42
  %conv30 = sitofp i32 %add29 to double
  %div31 = fdiv double %conv30, 2.000000e+00
  %43 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %cy = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %43, i32 0, i32 10
  store double %div31, double* %cy, align 8
  %44 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %x232 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %44, i32 0, i32 7
  %45 = load i32, i32* %x232, align 4
  %46 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %x133 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %46, i32 0, i32 5
  %47 = load i32, i32* %x133, align 4
  %sub = sub nsw i32 %45, %47
  %conv34 = sitofp i32 %sub to double
  %48 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %y235 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %48, i32 0, i32 8
  %49 = load i32, i32* %y235, align 4
  %50 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %y136 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %50, i32 0, i32 6
  %51 = load i32, i32* %y136, align 4
  %sub37 = sub nsw i32 %49, %51
  %conv38 = sitofp i32 %sub37 to double
  %div39 = fdiv double %conv34, %conv38
  %52 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %aspect = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %52, i32 0, i32 11
  store double %div39, double* %aspect, align 8
  %53 = load i32, i32* %non_empty, align 4
  ret i32 %53
}

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_error_quark() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

; Function Attrs: nounwind uwtable
define internal void @gimp_transform_tool_dialog(%struct._GimpTransformTool* %tr_tool) #3 {
entry:
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %stock_id = alloca i8*, align 8
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %0 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %1 = bitcast %struct._GimpTransformTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %tool_info2 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 1
  %4 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info2, align 8
  store %struct._GimpToolInfo* %4, %struct._GimpToolInfo** %tool_info, align 8
  %5 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %6 = bitcast %struct._GimpTransformTool* %5 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %8 = bitcast %struct._GTypeClass* %7 to %struct._GimpTransformToolClass*
  %dialog = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %8, i32 0, i32 1
  %9 = load void (%struct._GimpTransformTool*)*, void (%struct._GimpTransformTool*)** %dialog, align 8
  %tobool = icmp ne void (%struct._GimpTransformTool*)* %9, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %10 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %11 = bitcast %struct._GimpToolInfo* %10 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_viewable_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call3)
  %12 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpViewable*
  %call5 = call i8* @gimp_viewable_get_stock_id(%struct._GimpViewable* %12)
  store i8* %call5, i8** %stock_id, align 8
  %13 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %14 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %14, i32 0, i32 4
  %15 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call6 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %15)
  %16 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %blurb = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %16, i32 0, i32 5
  %17 = load i8*, i8** %blurb, align 8
  %18 = load i8*, i8** %stock_id, align 8
  %call7 = call %struct._GtkWidget* (%struct._GimpToolInfo*, %struct._GimpDisplayShell*, i8*, ...) @gimp_tool_dialog_new(%struct._GimpToolInfo* %13, %struct._GimpDisplayShell* %call6, i8* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 -6, i8* %18, i32 -5, i8* null)
  %19 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %dialog8 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %19, i32 0, i32 33
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %dialog8, align 8
  %20 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %dialog9 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %20, i32 0, i32 33
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog9, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_dialog_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call10)
  %23 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %23, i32 -5)
  %24 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %dialog12 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %24, i32 0, i32 33
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog12, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_dialog_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call13)
  %27 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %27, i32 1, i32 -5, i32 -6, i32 -1)
  %28 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %dialog15 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %28, i32 0, i32 33
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog15, align 8
  %30 = bitcast %struct._GtkWidget* %29 to i8*
  %31 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %32 = bitcast %struct._GimpTransformTool* %31 to i8*
  %call16 = call i64 @g_signal_connect_data(i8* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._GimpTransformTool*)* @gimp_transform_tool_response to void ()*), i8* %32, void (i8*, %struct._GClosure*)* null, i32 0)
  %33 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %34 = bitcast %struct._GimpTransformTool* %33 to %struct._GTypeInstance*
  %g_class17 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class17, align 8
  %36 = bitcast %struct._GTypeClass* %35 to %struct._GimpTransformToolClass*
  %dialog18 = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %36, i32 0, i32 1
  %37 = load void (%struct._GimpTransformTool*)*, void (%struct._GimpTransformTool*)** %dialog18, align 8
  %38 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  call void %37(%struct._GimpTransformTool* %38)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_transform_tool_prepare(%struct._GimpTransformTool* %tr_tool, %struct._GimpDisplay* %display) #3 {
entry:
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %options = alloca %struct._GimpTransformOptions*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %item = alloca %struct._GimpItem*, align 8
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %dialog = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %0, i32 0, i32 33
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %3 = bitcast %struct._GimpTransformTool* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  %call2 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %4)
  %5 = bitcast %struct._GimpToolOptions* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_transform_options_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpTransformOptions*
  store %struct._GimpTransformOptions* %6, %struct._GimpTransformOptions** %options, align 8
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call5 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %7)
  store %struct._GimpImage* %call5, %struct._GimpImage** %image, align 8
  %8 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call6 = call %struct._GimpItem* @gimp_transform_tool_get_active_item(%struct._GimpTransformTool* %8, %struct._GimpImage* %9)
  store %struct._GimpItem* %call6, %struct._GimpItem** %item, align 8
  %10 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %dialog7 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %10, i32 0, i32 33
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog7, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_viewable_dialog_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call8)
  %13 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpViewableDialog*
  %14 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %15 = bitcast %struct._GimpItem* %14 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_viewable_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call10)
  %16 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpViewable*
  %17 = load %struct._GimpTransformOptions*, %struct._GimpTransformOptions** %options, align 8
  %18 = bitcast %struct._GimpTransformOptions* %17 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_context_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call12)
  %19 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpContext*
  call void @gimp_viewable_dialog_set_viewable(%struct._GimpViewableDialog* %13, %struct._GimpViewable* %16, %struct._GimpContext* %19)
  %20 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %dialog14 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %20, i32 0, i32 33
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog14, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_tool_dialog_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call15)
  %23 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpToolDialog*
  %24 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call17 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %24)
  call void @gimp_tool_dialog_set_shell(%struct._GimpToolDialog* %23, %struct._GimpDisplayShell* %call17)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %25 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %26 = bitcast %struct._GimpTransformTool* %25 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %26, i32 0, i32 0
  %27 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %28 = bitcast %struct._GTypeClass* %27 to %struct._GimpTransformToolClass*
  %prepare = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %28, i32 0, i32 3
  %29 = load void (%struct._GimpTransformTool*)*, void (%struct._GimpTransformTool*)** %prepare, align 8
  %tobool18 = icmp ne void (%struct._GimpTransformTool*)* %29, null
  br i1 %tobool18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %if.end
  %30 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %31 = bitcast %struct._GimpTransformTool* %30 to %struct._GTypeInstance*
  %g_class20 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class20, align 8
  %33 = bitcast %struct._GTypeClass* %32 to %struct._GimpTransformToolClass*
  %prepare21 = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %33, i32 0, i32 3
  %34 = load void (%struct._GimpTransformTool*)*, void (%struct._GimpTransformTool*)** %prepare21, align 8
  %35 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  call void %34(%struct._GimpTransformTool* %35)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %if.end
  ret void
}

declare void @gimp_draw_tool_start(%struct._GimpDrawTool*, %struct._GimpDisplay*) #1

declare %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_transform_options_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GimpItem* @gimp_transform_tool_get_active_item(%struct._GimpTransformTool* %tr_tool, %struct._GimpImage* %image) #3 {
entry:
  %retval = alloca %struct._GimpItem*, align 8
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %options = alloca %struct._GimpTransformOptions*, align 8
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  %0 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %1 = bitcast %struct._GimpTransformTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  %call2 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %2)
  %3 = bitcast %struct._GimpToolOptions* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_transform_options_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpTransformOptions*
  store %struct._GimpTransformOptions* %4, %struct._GimpTransformOptions** %options, align 8
  %5 = load %struct._GimpTransformOptions*, %struct._GimpTransformOptions** %options, align 8
  %type = getelementptr inbounds %struct._GimpTransformOptions, %struct._GimpTransformOptions* %5, i32 0, i32 1
  %6 = load i32, i32* %type, align 4
  switch i32 %6, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.8
    i32 2, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call5 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %7)
  %8 = bitcast %struct._GimpDrawable* %call5 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_item_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call6)
  %9 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpItem*
  store %struct._GimpItem* %9, %struct._GimpItem** %retval
  br label %return

sw.bb.8:                                          ; preds = %entry
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call9 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %10)
  %11 = bitcast %struct._GimpChannel* %call9 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_item_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call10)
  %12 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpItem*
  store %struct._GimpItem* %12, %struct._GimpItem** %retval
  br label %return

sw.bb.12:                                         ; preds = %entry
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call13 = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %13)
  %14 = bitcast %struct._GimpVectors* %call13 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_item_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call14)
  %15 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpItem*
  store %struct._GimpItem* %15, %struct._GimpItem** %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.12, %sw.bb.8, %sw.bb
  %16 = load %struct._GimpItem*, %struct._GimpItem** %retval
  ret %struct._GimpItem* %16
}

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #1

declare i32 @gimp_item_is_content_locked(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #1

declare %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage*) #1

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #1

declare i32 @gimp_item_mask_intersect(%struct._GimpItem*, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_channel_bounds(%struct._GimpChannel*, i32*, i32*, i32*, i32*) #1

declare i8* @gimp_viewable_get_stock_id(%struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare %struct._GtkWidget* @gimp_tool_dialog_new(%struct._GimpToolInfo*, %struct._GimpDisplayShell*, i8*, ...) #1

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

declare void @gtk_dialog_set_default_response(%struct._GtkDialog*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_transform_tool_response(%struct._GtkWidget* %widget, i32 %response_id, %struct._GimpTransformTool* %tr_tool) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %i = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %0 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %1 = bitcast %struct._GimpTransformTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load i32, i32* %response_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 -5, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %5 = bitcast %struct._GimpTool* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_draw_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %6)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %7 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %7, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %old_trans_info = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %9, i32 0, i32 24
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* %old_trans_info, i32 0, i64 %idxprom
  %10 = load double, double* %arrayidx, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %11 to i64
  %12 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %12, i32 0, i32 23
  %arrayidx5 = getelementptr inbounds [8 x double], [8 x double]* %trans_info, i32 0, i64 %idxprom4
  store double %10, double* %arrayidx5, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %15 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %15, i32 0, i32 4
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call6 = call i32 @gimp_transform_tool_bounds(%struct._GimpTransformTool* %14, %struct._GimpDisplay* %16)
  %17 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  call void @gimp_transform_tool_recalc_matrix(%struct._GimpTransformTool* %17)
  %18 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %19 = bitcast %struct._GimpTool* %18 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_draw_tool_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call7)
  %20 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %20)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.bb.9
  %21 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display10 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %21, i32 0, i32 4
  %22 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display10, align 8
  %cmp11 = icmp ne %struct._GimpDisplay* %22, null
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_transform_tool_response, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0))
  br label %sw.epilog

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %23 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %24 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display12 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %24, i32 0, i32 4
  %25 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display12, align 8
  call void @gimp_transform_tool_transform(%struct._GimpTransformTool* %23, %struct._GimpDisplay* %25)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %26 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %27 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display13 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %27, i32 0, i32 4
  %28 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display13, align 8
  call void @gimp_tool_control(%struct._GimpTool* %26, i32 2, %struct._GimpDisplay* %28)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %sw.default, %do.end, %for.end
  ret void
}

declare void @gimp_draw_tool_pause(%struct._GimpDrawTool*) #1

declare void @gimp_draw_tool_resume(%struct._GimpDrawTool*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_transform_tool_transform(%struct._GimpTransformTool* %tr_tool, %struct._GimpDisplay* %display) #3 {
entry:
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %options = alloca %struct._GimpTransformOptions*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %active_item = alloca %struct._GimpItem*, align 8
  %orig_tiles = alloca %struct._TileManager*, align 8
  %orig_offset_x = alloca i32, align 4
  %orig_offset_y = alloca i32, align 4
  %new_tiles = alloca %struct._TileManager*, align 8
  %new_offset_x = alloca i32, align 4
  %new_offset_y = alloca i32, align 4
  %undo_desc = alloca i8*, align 8
  %new_layer = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %1 = bitcast %struct._GimpTransformTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_transform_options_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpTransformOptions*
  store %struct._GimpTransformOptions* %7, %struct._GimpTransformOptions** %options, align 8
  %8 = load %struct._GimpTransformOptions*, %struct._GimpTransformOptions** %options, align 8
  %9 = bitcast %struct._GimpTransformOptions* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_context_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpContext*
  store %struct._GimpContext* %10, %struct._GimpContext** %context, align 8
  %11 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call9 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %11)
  store %struct._GimpImage* %call9, %struct._GimpImage** %image, align 8
  store %struct._TileManager* null, %struct._TileManager** %orig_tiles, align 8
  store i32 0, i32* %orig_offset_x, align 4
  store i32 0, i32* %orig_offset_y, align 4
  store i8* null, i8** %undo_desc, align 8
  store i32 0, i32* %new_layer, align 4
  store %struct._GError* null, %struct._GError** %error, align 8
  %12 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call10 = call %struct._GimpItem* @gimp_transform_tool_check_active_item(%struct._GimpTransformTool* %12, %struct._GimpImage* %13, %struct._GError** %error)
  store %struct._GimpItem* %call10, %struct._GimpItem** %active_item, align 8
  %14 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  %tobool = icmp ne %struct._GimpItem* %14, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %15 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %17 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %17, i32 0, i32 2
  %18 = load i8*, i8** %message, align 8
  call void @gimp_tool_message_literal(%struct._GimpTool* %15, %struct._GimpDisplay* %16, i8* %18)
  call void @g_clear_error(%struct._GError** %error)
  %19 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %20 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_control(%struct._GimpTool* %19, i32 2, %struct._GimpDisplay* %20)
  br label %return

if.end:                                           ; preds = %entry
  %21 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %dialog = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %21, i32 0, i32 33
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool11 = icmp ne %struct._GtkWidget* %22, null
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end
  %23 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %dialog13 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %23, i32 0, i32 33
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog13, align 8
  call void @gimp_dialog_factory_hide_dialog(%struct._GtkWidget* %24)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end
  %25 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %25, i32 0, i32 1
  %26 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @gimp_set_busy(%struct._Gimp* %26)
  %27 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %28 = bitcast %struct._GimpTransformTool* %27 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_draw_tool_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call15)
  %29 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_stop(%struct._GimpDrawTool* %29)
  %30 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %30, i32 0, i32 3
  %31 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_push_preserve(%struct._GimpToolControl* %31, i32 1)
  %32 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %33 = bitcast %struct._GimpTransformTool* %32 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %35 = bitcast %struct._GTypeClass* %34 to %struct._GimpTransformToolClass*
  %get_undo_desc = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %35, i32 0, i32 6
  %36 = load i8* (%struct._GimpTransformTool*)*, i8* (%struct._GimpTransformTool*)** %get_undo_desc, align 8
  %37 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %call17 = call i8* %36(%struct._GimpTransformTool* %37)
  store i8* %call17, i8** %undo_desc, align 8
  %38 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %39 = load i8*, i8** %undo_desc, align 8
  %call18 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %38, i32 32, i8* %39)
  %40 = load i8*, i8** %undo_desc, align 8
  call void @g_free(i8* %40)
  %41 = load %struct._GimpTransformOptions*, %struct._GimpTransformOptions** %options, align 8
  %type = getelementptr inbounds %struct._GimpTransformOptions, %struct._GimpTransformOptions* %41, i32 0, i32 1
  %42 = load i32, i32* %type, align 4
  switch i32 %42, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.30
    i32 2, label %sw.bb.35
  ]

sw.bb:                                            ; preds = %if.end.14
  %43 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %drawable = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %43, i32 0, i32 5
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %45 = bitcast %struct._GimpDrawable* %44 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_viewable_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call19)
  %46 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpViewable*
  %call21 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %46)
  %tobool22 = icmp ne %struct._GimpContainer* %call21, null
  br i1 %tobool22, label %if.end.29, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb
  %47 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call23 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %47)
  %call24 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call23)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end.29, label %if.then.26

if.then.26:                                       ; preds = %land.lhs.true
  %48 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %drawable27 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %48, i32 0, i32 5
  %49 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable27, align 8
  %50 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call28 = call %struct._TileManager* @gimp_drawable_transform_cut(%struct._GimpDrawable* %49, %struct._GimpContext* %50, i32* %orig_offset_x, i32* %orig_offset_y, i32* %new_layer)
  store %struct._TileManager* %call28, %struct._TileManager** %orig_tiles, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %land.lhs.true, %sw.bb
  br label %sw.epilog

sw.bb.30:                                         ; preds = %if.end.14
  %51 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  %52 = bitcast %struct._GimpItem* %51 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_drawable_get_type() #7
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call31)
  %53 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpDrawable*
  %call33 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %53)
  %call34 = call %struct._TileManager* @tile_manager_ref(%struct._TileManager* %call33)
  store %struct._TileManager* %call34, %struct._TileManager** %orig_tiles, align 8
  store i32 0, i32* %orig_offset_x, align 4
  store i32 0, i32* %orig_offset_y, align 4
  br label %sw.epilog

sw.bb.35:                                         ; preds = %if.end.14
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.14, %sw.bb.35, %sw.bb.30, %if.end.29
  %54 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %55 = bitcast %struct._GimpTransformTool* %54 to %struct._GTypeInstance*
  %g_class36 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %55, i32 0, i32 0
  %56 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class36, align 8
  %57 = bitcast %struct._GTypeClass* %56 to %struct._GimpTransformToolClass*
  %transform = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %57, i32 0, i32 7
  %58 = load %struct._TileManager* (%struct._GimpTransformTool*, %struct._GimpItem*, %struct._TileManager*, i32, i32, i32*, i32*)*, %struct._TileManager* (%struct._GimpTransformTool*, %struct._GimpItem*, %struct._TileManager*, i32, i32, i32*, i32*)** %transform, align 8
  %59 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %60 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  %61 = load %struct._TileManager*, %struct._TileManager** %orig_tiles, align 8
  %62 = load i32, i32* %orig_offset_x, align 4
  %63 = load i32, i32* %orig_offset_y, align 4
  %call37 = call %struct._TileManager* %58(%struct._GimpTransformTool* %59, %struct._GimpItem* %60, %struct._TileManager* %61, i32 %62, i32 %63, i32* %new_offset_x, i32* %new_offset_y)
  store %struct._TileManager* %call37, %struct._TileManager** %new_tiles, align 8
  %64 = load %struct._TileManager*, %struct._TileManager** %orig_tiles, align 8
  %tobool38 = icmp ne %struct._TileManager* %64, null
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %sw.epilog
  %65 = load %struct._TileManager*, %struct._TileManager** %orig_tiles, align 8
  call void @tile_manager_unref(%struct._TileManager* %65)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %sw.epilog
  %66 = load %struct._GimpTransformOptions*, %struct._GimpTransformOptions** %options, align 8
  %type41 = getelementptr inbounds %struct._GimpTransformOptions, %struct._GimpTransformOptions* %66, i32 0, i32 1
  %67 = load i32, i32* %type41, align 4
  switch i32 %67, label %sw.epilog.60 [
    i32 0, label %sw.bb.42
    i32 1, label %sw.bb.48
    i32 2, label %sw.bb.59
  ]

sw.bb.42:                                         ; preds = %if.end.40
  %68 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %tobool43 = icmp ne %struct._TileManager* %68, null
  br i1 %tobool43, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %sw.bb.42
  %69 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %drawable45 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %69, i32 0, i32 5
  %70 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable45, align 8
  %71 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %72 = load i32, i32* %new_offset_x, align 4
  %73 = load i32, i32* %new_offset_y, align 4
  %74 = load i32, i32* %new_layer, align 4
  %call46 = call %struct._GimpDrawable* @gimp_drawable_transform_paste(%struct._GimpDrawable* %70, %struct._TileManager* %71, i32 %72, i32 %73, i32 %74)
  %75 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  call void @tile_manager_unref(%struct._TileManager* %75)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.44, %sw.bb.42
  br label %sw.epilog.60

sw.bb.48:                                         ; preds = %if.end.40
  %76 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %tobool49 = icmp ne %struct._TileManager* %76, null
  br i1 %tobool49, label %if.then.50, label %if.end.58

if.then.50:                                       ; preds = %sw.bb.48
  %77 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  %78 = bitcast %struct._GimpItem* %77 to %struct._GTypeInstance*
  %call51 = call i64 @gimp_channel_get_type() #7
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call51)
  %79 = bitcast %struct._GTypeInstance* %call52 to %struct._GimpChannel*
  call void @gimp_channel_push_undo(%struct._GimpChannel* %79, i8* null)
  %80 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  %81 = bitcast %struct._GimpItem* %80 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_drawable_get_type() #7
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call53)
  %82 = bitcast %struct._GTypeInstance* %call54 to %struct._GimpDrawable*
  %83 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %84 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  %85 = bitcast %struct._GimpItem* %84 to %struct._GTypeInstance*
  %call55 = call i64 @gimp_drawable_get_type() #7
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call55)
  %86 = bitcast %struct._GTypeInstance* %call56 to %struct._GimpDrawable*
  %call57 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %86)
  call void @gimp_drawable_set_tiles(%struct._GimpDrawable* %82, i32 0, i8* null, %struct._TileManager* %83, i32 %call57)
  %87 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  call void @tile_manager_unref(%struct._TileManager* %87)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.50, %sw.bb.48
  br label %sw.epilog.60

sw.bb.59:                                         ; preds = %if.end.40
  br label %sw.epilog.60

sw.epilog.60:                                     ; preds = %if.end.40, %sw.bb.59, %if.end.58, %if.end.47
  %88 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call61 = call i64 @gimp_transform_tool_undo_get_type() #7
  %89 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %call62 = call %struct._GimpUndo* (%struct._GimpImage*, i64, i32, i8*, i32, ...) @gimp_image_undo_push(%struct._GimpImage* %88, i64 %call61, i32 74, i8* null, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), %struct._GimpTransformTool* %89, i8* null)
  %90 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call63 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %90)
  %91 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control64 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %91, i32 0, i32 3
  %92 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control64, align 8
  call void @gimp_tool_control_pop_preserve(%struct._GimpToolControl* %92)
  %93 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %94 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_control(%struct._GimpTool* %93, i32 2, %struct._GimpDisplay* %94)
  %95 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %gimp65 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %95, i32 0, i32 1
  %96 = load %struct._Gimp*, %struct._Gimp** %gimp65, align 8
  call void @gimp_unset_busy(%struct._Gimp* %96)
  %97 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %97)
  br label %return

return:                                           ; preds = %sw.epilog.60, %if.then
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare void @gimp_tool_message_literal(%struct._GimpTool*, %struct._GimpDisplay*, i8*) #1

declare void @g_clear_error(%struct._GError**) #1

declare void @gimp_dialog_factory_hide_dialog(%struct._GtkWidget*) #1

declare void @gimp_set_busy(%struct._Gimp*) #1

declare void @gimp_draw_tool_stop(%struct._GimpDrawTool*) #1

declare void @gimp_tool_control_push_preserve(%struct._GimpToolControl*, i32) #1

declare i32 @gimp_image_undo_group_start(%struct._GimpImage*, i32, i8*) #1

declare void @g_free(i8*) #1

declare %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable*) #1

declare i32 @gimp_channel_is_empty(%struct._GimpChannel*) #1

declare %struct._TileManager* @gimp_drawable_transform_cut(%struct._GimpDrawable*, %struct._GimpContext*, i32*, i32*, i32*) #1

declare %struct._TileManager* @tile_manager_ref(%struct._TileManager*) #1

declare %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

declare void @tile_manager_unref(%struct._TileManager*) #1

declare %struct._GimpDrawable* @gimp_drawable_transform_paste(%struct._GimpDrawable*, %struct._TileManager*, i32, i32, i32) #1

declare void @gimp_channel_push_undo(%struct._GimpChannel*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_get_type() #2

declare void @gimp_drawable_set_tiles(%struct._GimpDrawable*, i32, i8*, %struct._TileManager*, i32) #1

declare i32 @gimp_drawable_type(%struct._GimpDrawable*) #1

declare %struct._GimpUndo* @gimp_image_undo_push(%struct._GimpImage*, i64, i32, i8*, i32, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_transform_tool_undo_get_type() #2

declare i32 @gimp_image_undo_group_end(%struct._GimpImage*) #1

declare void @gimp_tool_control_pop_preserve(%struct._GimpToolControl*) #1

declare void @gimp_unset_busy(%struct._Gimp*) #1

declare void @gimp_image_flush(%struct._GimpImage*) #1

declare void @gimp_viewable_dialog_set_viewable(%struct._GimpViewableDialog*, %struct._GimpViewable*, %struct._GimpContext*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_dialog_get_type() #2

declare void @gimp_tool_dialog_set_shell(%struct._GimpToolDialog*, %struct._GimpDisplayShell*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_dialog_get_type() #2

declare void @gimp_tool_control_activate(%struct._GimpToolControl*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_canvas_handle_get_type() #2

declare void @gimp_canvas_handle_get_position(%struct._GimpCanvasItem*, double*, double*) #1

declare void @gimp_tool_control_set_snap_offsets(%struct._GimpToolControl*, i32, i32, i32, i32) #1

declare void @gimp_tool_control_halt(%struct._GimpToolControl*) #1

declare i32 @gimp_get_constrain_behavior_mask() #1

declare void @g_object_set(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_transform_tool_set_function(%struct._GimpTransformTool* %tr_tool, i32 %function) #3 {
entry:
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  %function.addr = alloca i32, align 4
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  store i32 %function, i32* %function.addr, align 4
  %0 = load i32, i32* %function.addr, align 4
  %1 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %function1 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %1, i32 0, i32 26
  %2 = load i32, i32* %function1, align 4
  %cmp = icmp ne i32 %0, %2
  br i1 %cmp, label %if.then, label %if.end.28

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %function2 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %3, i32 0, i32 26
  %4 = load i32, i32* %function2, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %handles = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %5, i32 0, i32 31
  %arrayidx = getelementptr inbounds [11 x %struct._GimpCanvasItem*], [11 x %struct._GimpCanvasItem*]* %handles, i32 0, i64 %idxprom
  %6 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %arrayidx, align 8
  %tobool = icmp ne %struct._GimpCanvasItem* %6, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %7 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %8 = bitcast %struct._GimpTransformTool* %7 to %struct._GTypeInstance*
  %call = call i64 @gimp_draw_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call)
  %9 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDrawTool*
  %call4 = call i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool* %9)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %land.lhs.true
  %10 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %function7 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %10, i32 0, i32 26
  %11 = load i32, i32* %function7, align 4
  %idxprom8 = zext i32 %11 to i64
  %12 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %handles9 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %12, i32 0, i32 31
  %arrayidx10 = getelementptr inbounds [11 x %struct._GimpCanvasItem*], [11 x %struct._GimpCanvasItem*]* %handles9, i32 0, i64 %idxprom8
  %13 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %arrayidx10, align 8
  call void @gimp_canvas_item_set_highlight(%struct._GimpCanvasItem* %13, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %land.lhs.true, %if.then
  %14 = load i32, i32* %function.addr, align 4
  %15 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %function11 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %15, i32 0, i32 26
  store i32 %14, i32* %function11, align 4
  %16 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %function12 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %16, i32 0, i32 26
  %17 = load i32, i32* %function12, align 4
  %idxprom13 = zext i32 %17 to i64
  %18 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %handles14 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %18, i32 0, i32 31
  %arrayidx15 = getelementptr inbounds [11 x %struct._GimpCanvasItem*], [11 x %struct._GimpCanvasItem*]* %handles14, i32 0, i64 %idxprom13
  %19 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %arrayidx15, align 8
  %tobool16 = icmp ne %struct._GimpCanvasItem* %19, null
  br i1 %tobool16, label %land.lhs.true.17, label %if.end.27

land.lhs.true.17:                                 ; preds = %if.end
  %20 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %21 = bitcast %struct._GimpTransformTool* %20 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_draw_tool_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call18)
  %22 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpDrawTool*
  %call20 = call i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool* %22)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.27

if.then.22:                                       ; preds = %land.lhs.true.17
  %23 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %function23 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %23, i32 0, i32 26
  %24 = load i32, i32* %function23, align 4
  %idxprom24 = zext i32 %24 to i64
  %25 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %handles25 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %25, i32 0, i32 31
  %arrayidx26 = getelementptr inbounds [11 x %struct._GimpCanvasItem*], [11 x %struct._GimpCanvasItem*]* %handles25, i32 0, i64 %idxprom24
  %26 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %arrayidx26, align 8
  call void @gimp_canvas_item_set_highlight(%struct._GimpCanvasItem* %26, i32 1)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.22, %land.lhs.true.17, %if.end
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %entry
  ret void
}

declare double @gimp_draw_tool_calc_distance_square(%struct._GimpDrawTool*, %struct._GimpDisplay*, double, double, double, double) #1

declare i32 @gimp_canvas_item_hit(%struct._GimpCanvasItem*, double, double) #1

declare i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool*) #1

declare void @gimp_canvas_item_set_highlight(%struct._GimpCanvasItem*, i32) #1

declare i32 @gimp_tool_control_get_cursor(%struct._GimpToolControl*) #1

declare void @gimp_tool_control_set_cursor(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_cursor_modifier(%struct._GimpToolControl*, i32) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @gimp_transform_options_show_preview(%struct._GimpTransformOptions*) #1

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_transform_preview(%struct._GimpDrawTool*, %struct._GimpDrawable*, %struct._GimpMatrix3*, double, double, double, double, i32, double) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_perspective_tool_get_type() #2

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_transform_guides(%struct._GimpDrawTool*, %struct._GimpMatrix3*, i32, i32, double, double, double, double) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_transform_tool_handles_recalc(%struct._GimpTransformTool* %tr_tool, %struct._GimpDisplay* %display, i32* %handle_w, i32* %handle_h) #3 {
entry:
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %handle_w.addr = alloca i32*, align 8
  %handle_h.addr = alloca i32*, align 8
  %dx1 = alloca i32, align 4
  %dy1 = alloca i32, align 4
  %dx2 = alloca i32, align 4
  %dy2 = alloca i32, align 4
  %dx3 = alloca i32, align 4
  %dy3 = alloca i32, align 4
  %dx4 = alloca i32, align 4
  %dy4 = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store i32* %handle_w, i32** %handle_w.addr, align 8
  store i32* %handle_h, i32** %handle_h.addr, align 8
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %0)
  %1 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %tx1 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %1, i32 0, i32 12
  %2 = load double, double* %tx1, align 8
  %3 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %ty1 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %3, i32 0, i32 13
  %4 = load double, double* %ty1, align 8
  call void @gimp_display_shell_transform_xy(%struct._GimpDisplayShell* %call, double %2, double %4, i32* %dx1, i32* %dy1)
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call1 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %5)
  %6 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %tx2 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %6, i32 0, i32 14
  %7 = load double, double* %tx2, align 8
  %8 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %ty2 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %8, i32 0, i32 15
  %9 = load double, double* %ty2, align 8
  call void @gimp_display_shell_transform_xy(%struct._GimpDisplayShell* %call1, double %7, double %9, i32* %dx2, i32* %dy2)
  %10 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call2 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %10)
  %11 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %tx3 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %11, i32 0, i32 16
  %12 = load double, double* %tx3, align 8
  %13 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %ty3 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %13, i32 0, i32 17
  %14 = load double, double* %ty3, align 8
  call void @gimp_display_shell_transform_xy(%struct._GimpDisplayShell* %call2, double %12, double %14, i32* %dx3, i32* %dy3)
  %15 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call3 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %15)
  %16 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %tx4 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %16, i32 0, i32 18
  %17 = load double, double* %tx4, align 8
  %18 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %ty4 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %18, i32 0, i32 19
  %19 = load double, double* %ty4, align 8
  call void @gimp_display_shell_transform_xy(%struct._GimpDisplayShell* %call3, double %17, double %19, i32* %dx4, i32* %dy4)
  %20 = load i32, i32* %dx1, align 4
  %21 = load i32, i32* %dx2, align 4
  %cmp = icmp slt i32 %20, %21
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %22 = load i32, i32* %dx1, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %23 = load i32, i32* %dx2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %22, %cond.true ], [ %23, %cond.false ]
  %24 = load i32, i32* %dx3, align 4
  %25 = load i32, i32* %dx4, align 4
  %cmp4 = icmp slt i32 %24, %25
  br i1 %cmp4, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.end
  %26 = load i32, i32* %dx3, align 4
  br label %cond.end.7

cond.false.6:                                     ; preds = %cond.end
  %27 = load i32, i32* %dx4, align 4
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.6, %cond.true.5
  %cond8 = phi i32 [ %26, %cond.true.5 ], [ %27, %cond.false.6 ]
  %cmp9 = icmp slt i32 %cond, %cond8
  br i1 %cmp9, label %cond.true.10, label %cond.false.16

cond.true.10:                                     ; preds = %cond.end.7
  %28 = load i32, i32* %dx1, align 4
  %29 = load i32, i32* %dx2, align 4
  %cmp11 = icmp slt i32 %28, %29
  br i1 %cmp11, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %cond.true.10
  %30 = load i32, i32* %dx1, align 4
  br label %cond.end.14

cond.false.13:                                    ; preds = %cond.true.10
  %31 = load i32, i32* %dx2, align 4
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.13, %cond.true.12
  %cond15 = phi i32 [ %30, %cond.true.12 ], [ %31, %cond.false.13 ]
  br label %cond.end.22

cond.false.16:                                    ; preds = %cond.end.7
  %32 = load i32, i32* %dx3, align 4
  %33 = load i32, i32* %dx4, align 4
  %cmp17 = icmp slt i32 %32, %33
  br i1 %cmp17, label %cond.true.18, label %cond.false.19

cond.true.18:                                     ; preds = %cond.false.16
  %34 = load i32, i32* %dx3, align 4
  br label %cond.end.20

cond.false.19:                                    ; preds = %cond.false.16
  %35 = load i32, i32* %dx4, align 4
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.19, %cond.true.18
  %cond21 = phi i32 [ %34, %cond.true.18 ], [ %35, %cond.false.19 ]
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.end.20, %cond.end.14
  %cond23 = phi i32 [ %cond15, %cond.end.14 ], [ %cond21, %cond.end.20 ]
  store i32 %cond23, i32* %x1, align 4
  %36 = load i32, i32* %dy1, align 4
  %37 = load i32, i32* %dy2, align 4
  %cmp24 = icmp slt i32 %36, %37
  br i1 %cmp24, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %cond.end.22
  %38 = load i32, i32* %dy1, align 4
  br label %cond.end.27

cond.false.26:                                    ; preds = %cond.end.22
  %39 = load i32, i32* %dy2, align 4
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.26, %cond.true.25
  %cond28 = phi i32 [ %38, %cond.true.25 ], [ %39, %cond.false.26 ]
  %40 = load i32, i32* %dy3, align 4
  %41 = load i32, i32* %dy4, align 4
  %cmp29 = icmp slt i32 %40, %41
  br i1 %cmp29, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %cond.end.27
  %42 = load i32, i32* %dy3, align 4
  br label %cond.end.32

cond.false.31:                                    ; preds = %cond.end.27
  %43 = load i32, i32* %dy4, align 4
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.31, %cond.true.30
  %cond33 = phi i32 [ %42, %cond.true.30 ], [ %43, %cond.false.31 ]
  %cmp34 = icmp slt i32 %cond28, %cond33
  br i1 %cmp34, label %cond.true.35, label %cond.false.41

cond.true.35:                                     ; preds = %cond.end.32
  %44 = load i32, i32* %dy1, align 4
  %45 = load i32, i32* %dy2, align 4
  %cmp36 = icmp slt i32 %44, %45
  br i1 %cmp36, label %cond.true.37, label %cond.false.38

cond.true.37:                                     ; preds = %cond.true.35
  %46 = load i32, i32* %dy1, align 4
  br label %cond.end.39

cond.false.38:                                    ; preds = %cond.true.35
  %47 = load i32, i32* %dy2, align 4
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.38, %cond.true.37
  %cond40 = phi i32 [ %46, %cond.true.37 ], [ %47, %cond.false.38 ]
  br label %cond.end.47

cond.false.41:                                    ; preds = %cond.end.32
  %48 = load i32, i32* %dy3, align 4
  %49 = load i32, i32* %dy4, align 4
  %cmp42 = icmp slt i32 %48, %49
  br i1 %cmp42, label %cond.true.43, label %cond.false.44

cond.true.43:                                     ; preds = %cond.false.41
  %50 = load i32, i32* %dy3, align 4
  br label %cond.end.45

cond.false.44:                                    ; preds = %cond.false.41
  %51 = load i32, i32* %dy4, align 4
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.44, %cond.true.43
  %cond46 = phi i32 [ %50, %cond.true.43 ], [ %51, %cond.false.44 ]
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.end.45, %cond.end.39
  %cond48 = phi i32 [ %cond40, %cond.end.39 ], [ %cond46, %cond.end.45 ]
  store i32 %cond48, i32* %y1, align 4
  %52 = load i32, i32* %dx1, align 4
  %53 = load i32, i32* %dx2, align 4
  %cmp49 = icmp sgt i32 %52, %53
  br i1 %cmp49, label %cond.true.50, label %cond.false.51

cond.true.50:                                     ; preds = %cond.end.47
  %54 = load i32, i32* %dx1, align 4
  br label %cond.end.52

cond.false.51:                                    ; preds = %cond.end.47
  %55 = load i32, i32* %dx2, align 4
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.51, %cond.true.50
  %cond53 = phi i32 [ %54, %cond.true.50 ], [ %55, %cond.false.51 ]
  %56 = load i32, i32* %dx3, align 4
  %57 = load i32, i32* %dx4, align 4
  %cmp54 = icmp sgt i32 %56, %57
  br i1 %cmp54, label %cond.true.55, label %cond.false.56

cond.true.55:                                     ; preds = %cond.end.52
  %58 = load i32, i32* %dx3, align 4
  br label %cond.end.57

cond.false.56:                                    ; preds = %cond.end.52
  %59 = load i32, i32* %dx4, align 4
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.56, %cond.true.55
  %cond58 = phi i32 [ %58, %cond.true.55 ], [ %59, %cond.false.56 ]
  %cmp59 = icmp sgt i32 %cond53, %cond58
  br i1 %cmp59, label %cond.true.60, label %cond.false.66

cond.true.60:                                     ; preds = %cond.end.57
  %60 = load i32, i32* %dx1, align 4
  %61 = load i32, i32* %dx2, align 4
  %cmp61 = icmp sgt i32 %60, %61
  br i1 %cmp61, label %cond.true.62, label %cond.false.63

cond.true.62:                                     ; preds = %cond.true.60
  %62 = load i32, i32* %dx1, align 4
  br label %cond.end.64

cond.false.63:                                    ; preds = %cond.true.60
  %63 = load i32, i32* %dx2, align 4
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.63, %cond.true.62
  %cond65 = phi i32 [ %62, %cond.true.62 ], [ %63, %cond.false.63 ]
  br label %cond.end.72

cond.false.66:                                    ; preds = %cond.end.57
  %64 = load i32, i32* %dx3, align 4
  %65 = load i32, i32* %dx4, align 4
  %cmp67 = icmp sgt i32 %64, %65
  br i1 %cmp67, label %cond.true.68, label %cond.false.69

cond.true.68:                                     ; preds = %cond.false.66
  %66 = load i32, i32* %dx3, align 4
  br label %cond.end.70

cond.false.69:                                    ; preds = %cond.false.66
  %67 = load i32, i32* %dx4, align 4
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.false.69, %cond.true.68
  %cond71 = phi i32 [ %66, %cond.true.68 ], [ %67, %cond.false.69 ]
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.end.70, %cond.end.64
  %cond73 = phi i32 [ %cond65, %cond.end.64 ], [ %cond71, %cond.end.70 ]
  store i32 %cond73, i32* %x2, align 4
  %68 = load i32, i32* %dy1, align 4
  %69 = load i32, i32* %dy2, align 4
  %cmp74 = icmp sgt i32 %68, %69
  br i1 %cmp74, label %cond.true.75, label %cond.false.76

cond.true.75:                                     ; preds = %cond.end.72
  %70 = load i32, i32* %dy1, align 4
  br label %cond.end.77

cond.false.76:                                    ; preds = %cond.end.72
  %71 = load i32, i32* %dy2, align 4
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.false.76, %cond.true.75
  %cond78 = phi i32 [ %70, %cond.true.75 ], [ %71, %cond.false.76 ]
  %72 = load i32, i32* %dy3, align 4
  %73 = load i32, i32* %dy4, align 4
  %cmp79 = icmp sgt i32 %72, %73
  br i1 %cmp79, label %cond.true.80, label %cond.false.81

cond.true.80:                                     ; preds = %cond.end.77
  %74 = load i32, i32* %dy3, align 4
  br label %cond.end.82

cond.false.81:                                    ; preds = %cond.end.77
  %75 = load i32, i32* %dy4, align 4
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.81, %cond.true.80
  %cond83 = phi i32 [ %74, %cond.true.80 ], [ %75, %cond.false.81 ]
  %cmp84 = icmp sgt i32 %cond78, %cond83
  br i1 %cmp84, label %cond.true.85, label %cond.false.91

cond.true.85:                                     ; preds = %cond.end.82
  %76 = load i32, i32* %dy1, align 4
  %77 = load i32, i32* %dy2, align 4
  %cmp86 = icmp sgt i32 %76, %77
  br i1 %cmp86, label %cond.true.87, label %cond.false.88

cond.true.87:                                     ; preds = %cond.true.85
  %78 = load i32, i32* %dy1, align 4
  br label %cond.end.89

cond.false.88:                                    ; preds = %cond.true.85
  %79 = load i32, i32* %dy2, align 4
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.false.88, %cond.true.87
  %cond90 = phi i32 [ %78, %cond.true.87 ], [ %79, %cond.false.88 ]
  br label %cond.end.97

cond.false.91:                                    ; preds = %cond.end.82
  %80 = load i32, i32* %dy3, align 4
  %81 = load i32, i32* %dy4, align 4
  %cmp92 = icmp sgt i32 %80, %81
  br i1 %cmp92, label %cond.true.93, label %cond.false.94

cond.true.93:                                     ; preds = %cond.false.91
  %82 = load i32, i32* %dy3, align 4
  br label %cond.end.95

cond.false.94:                                    ; preds = %cond.false.91
  %83 = load i32, i32* %dy4, align 4
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.false.94, %cond.true.93
  %cond96 = phi i32 [ %82, %cond.true.93 ], [ %83, %cond.false.94 ]
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.end.95, %cond.end.89
  %cond98 = phi i32 [ %cond90, %cond.end.89 ], [ %cond96, %cond.end.95 ]
  store i32 %cond98, i32* %y2, align 4
  %84 = load i32, i32* %x2, align 4
  %85 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %84, %85
  %div = sdiv i32 %sub, 3
  %cmp99 = icmp sgt i32 %div, 25
  br i1 %cmp99, label %cond.true.100, label %cond.false.101

cond.true.100:                                    ; preds = %cond.end.97
  br label %cond.end.111

cond.false.101:                                   ; preds = %cond.end.97
  %86 = load i32, i32* %x2, align 4
  %87 = load i32, i32* %x1, align 4
  %sub102 = sub nsw i32 %86, %87
  %div103 = sdiv i32 %sub102, 3
  %cmp104 = icmp slt i32 %div103, 6
  br i1 %cmp104, label %cond.true.105, label %cond.false.106

cond.true.105:                                    ; preds = %cond.false.101
  br label %cond.end.109

cond.false.106:                                   ; preds = %cond.false.101
  %88 = load i32, i32* %x2, align 4
  %89 = load i32, i32* %x1, align 4
  %sub107 = sub nsw i32 %88, %89
  %div108 = sdiv i32 %sub107, 3
  br label %cond.end.109

cond.end.109:                                     ; preds = %cond.false.106, %cond.true.105
  %cond110 = phi i32 [ 6, %cond.true.105 ], [ %div108, %cond.false.106 ]
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.end.109, %cond.true.100
  %cond112 = phi i32 [ 25, %cond.true.100 ], [ %cond110, %cond.end.109 ]
  %90 = load i32*, i32** %handle_w.addr, align 8
  store i32 %cond112, i32* %90, align 4
  %91 = load i32, i32* %y2, align 4
  %92 = load i32, i32* %y1, align 4
  %sub113 = sub nsw i32 %91, %92
  %div114 = sdiv i32 %sub113, 3
  %cmp115 = icmp sgt i32 %div114, 25
  br i1 %cmp115, label %cond.true.116, label %cond.false.117

cond.true.116:                                    ; preds = %cond.end.111
  br label %cond.end.127

cond.false.117:                                   ; preds = %cond.end.111
  %93 = load i32, i32* %y2, align 4
  %94 = load i32, i32* %y1, align 4
  %sub118 = sub nsw i32 %93, %94
  %div119 = sdiv i32 %sub118, 3
  %cmp120 = icmp slt i32 %div119, 6
  br i1 %cmp120, label %cond.true.121, label %cond.false.122

cond.true.121:                                    ; preds = %cond.false.117
  br label %cond.end.125

cond.false.122:                                   ; preds = %cond.false.117
  %95 = load i32, i32* %y2, align 4
  %96 = load i32, i32* %y1, align 4
  %sub123 = sub nsw i32 %95, %96
  %div124 = sdiv i32 %sub123, 3
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.false.122, %cond.true.121
  %cond126 = phi i32 [ 6, %cond.true.121 ], [ %div124, %cond.false.122 ]
  br label %cond.end.127

cond.end.127:                                     ; preds = %cond.end.125, %cond.true.116
  %cond128 = phi i32 [ 25, %cond.true.116 ], [ %cond126, %cond.end.125 ]
  %97 = load i32*, i32** %handle_h.addr, align 8
  store i32 %cond128, i32* %97, align 4
  ret void
}

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool*, i32, double, double, i32, i32, i32) #1

declare %struct._GimpCanvasGroup* @gimp_draw_tool_add_stroke_group(%struct._GimpDrawTool*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_canvas_item_get_type() #2

declare void @gimp_draw_tool_push_group(%struct._GimpDrawTool*, %struct._GimpCanvasGroup*) #1

declare void @gimp_draw_tool_pop_group(%struct._GimpDrawTool*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

declare void @gimp_matrix3_invert(%struct._GimpMatrix3*) #1

declare i32 @gimp_channel_boundary(%struct._GimpChannel*, %struct._BoundSeg**, %struct._BoundSeg**, i32*, i32*, i32, i32, i32, i32) #1

declare noalias i8* @g_memdup(i8*, i32) #1

declare void @gimp_matrix3_transform_point(%struct._GimpMatrix3*, double, double, double*, double*) #1

; Function Attrs: nounwind readnone
declare double @rint(double) #2

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_boundary(%struct._GimpDrawTool*, %struct._BoundSeg*, i32, %struct._GimpMatrix3*, double, double) #1

declare %struct._GimpStroke* @gimp_vectors_stroke_get_next(%struct._GimpVectors*, %struct._GimpStroke*) #1

declare %struct._GArray* @gimp_stroke_interpolate(%struct._GimpStroke*, double, i32*) #1

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_strokes(%struct._GimpDrawTool*, %struct._GimpCoords*, i32, i32) #1

declare i8* @g_array_free(%struct._GArray*, i32) #1

declare void @gimp_display_shell_transform_xy(%struct._GimpDisplayShell*, double, double, i32*, i32*) #1

declare %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress*, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #2

declare i32 @tile_manager_bpp(%struct._TileManager*) #1

declare %struct._TileManager* @gimp_drawable_transform_tiles_affine(%struct._GimpDrawable*, %struct._GimpContext*, %struct._TileManager*, i32, i32, %struct._GimpMatrix3*, i32, i32, i32, i32, i32*, i32*, %struct._GimpProgress*) #1

declare i32 @gimp_item_get_linked(%struct._GimpItem*) #1

declare void @gimp_item_linked_transform(%struct._GimpItem*, %struct._GimpContext*, %struct._GimpMatrix3*, i32, i32, i32, i32, %struct._GimpProgress*) #1

declare void @gimp_item_transform(%struct._GimpItem*, %struct._GimpContext*, %struct._GimpMatrix3*, i32, i32, i32, i32, %struct._GimpProgress*) #1

declare void @gimp_progress_end(%struct._GimpProgress*) #1

declare void @gimp_tool_control_set_action_value_1(%struct._GimpToolControl*, i8*) #1

declare void @gimp_tool_control_set_scroll_lock(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_preserve(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_dirty_mask(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_precision(%struct._GimpToolControl*, i32) #1

declare void @gimp_matrix3_identity(%struct._GimpMatrix3*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
