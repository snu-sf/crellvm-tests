; ModuleID = './app/tools/gimprotatetool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpRotateToolClass = type { %struct._GimpTransformToolClass }
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
%struct._GimpToolInfo = type opaque
%struct._GimpToolControl = type { %struct._GimpObject, i32, i32, i32, %struct._GSList*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._GimpDrawable = type opaque
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpCanvasItem = type opaque
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._Gimp = type opaque
%struct._GimpDisplayConfig = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GError = type { i32, i32, i8* }
%struct._GdkEventKey = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32, i8*, i16, i8, i8 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpUIManager = type opaque
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpPaintInfo = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
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
%struct._GimpItem = type opaque
%struct._TileManager = type opaque
%struct._GimpRotateTool = type { %struct._GimpTransformTool, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkSpinButton = type { %struct._GtkEntry, %struct._GtkAdjustment*, %struct._GdkDrawable*, i32, double, double, i32, i24 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkScale = type { %struct._GtkRange, i32, i8 }
%struct._GtkRange = type { %struct._GtkWidget, %struct._GtkAdjustment*, i32, i8, i32, i32, %struct._GdkRectangle, i32, i32, i32, i8, %struct._GtkRangeLayout*, %struct._GtkRangeStepTimer*, i32, i32, i32, %struct._GdkDrawable* }
%struct._GtkRangeLayout = type opaque
%struct._GtkRangeStepTimer = type opaque
%struct._GimpSizeEntry = type { %struct._GtkTable, %struct._GSList*, i32, %struct._GtkWidget*, i32, i32, i32, i32, i32 }
%struct._GimpDisplayShell = type { %struct._GtkBox, %struct._GimpDisplay*, %struct._GimpUIManager*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct._GimpZoomModel*, double, i32, i32, i32, double, i32, i32, i32, %struct._Selection*, %struct._GList*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._cairo_surface*, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, i32, i8*, i8*, i32, i32, %struct._GdkPixbuf*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpColorDisplayStack*, i32, %struct._GtkWidget*, i32, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, %struct._GimpDrawable*, %struct._GimpRGB, %struct._GimpMotionBuffer*, %struct._GQueue* }
%struct._GimpDisplayOptions = type opaque
%struct._GimpZoomModel = type { %struct._GObject, i8* }
%struct._Selection = type opaque
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpColorDisplayStack = type { %struct._GObject, %struct._GList* }
%struct._GimpTreeHandler = type opaque
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._GimpTransformOptions = type { %struct._GimpToolOptions, i32, i32, i32, i32, i32, i32, double, i32, i32, i32 }

@gimp_rotate_tool_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpRotateTool\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"gimp-rotate-tool\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Rotate\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Rotate Tool: Rotate the layer, selection or path\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"_Rotate\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"<shift>R\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"gimp-tool-rotate\00", align 1
@gimp_rotate_tool_parent_class = internal global i8* null, align 8
@GimpRotateTool_private_offset = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"_Angle:\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Center _X:\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%a\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"Center _Y:\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"undo-type\04Rotate by %-3.3g\C2\B0 around (%g, %g)\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"Rotating\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_rotate_tool_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_rotate_tool_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_rotate_tool_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_transform_tool_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 344, void (i8*, i8*)* bitcast (void (i8*)* @gimp_rotate_tool_class_intern_init to void (i8*, i8*)*), i32 816, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpRotateTool*)* @gimp_rotate_tool_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_rotate_tool_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_rotate_tool_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_transform_tool_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_rotate_tool_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_rotate_tool_parent_class, align 8
  %1 = load i32, i32* @GimpRotateTool_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpRotateTool_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpRotateToolClass*
  call void @gimp_rotate_tool_class_init(%struct._GimpRotateToolClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rotate_tool_init(%struct._GimpRotateTool* %rotate_tool) #3 {
entry:
  %rotate_tool.addr = alloca %struct._GimpRotateTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %tr_tool = alloca %struct._GimpTransformTool*, align 8
  store %struct._GimpRotateTool* %rotate_tool, %struct._GimpRotateTool** %rotate_tool.addr, align 8
  %0 = load %struct._GimpRotateTool*, %struct._GimpRotateTool** %rotate_tool.addr, align 8
  %1 = bitcast %struct._GimpRotateTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpRotateTool*, %struct._GimpRotateTool** %rotate_tool.addr, align 8
  %4 = bitcast %struct._GimpRotateTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_transform_tool_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTransformTool*
  store %struct._GimpTransformTool* %5, %struct._GimpTransformTool** %tr_tool, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %6, i32 0, i32 3
  %7 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl* %7, i32 15)
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0)) #6
  %8 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %progress_text = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %8, i32 0, i32 32
  store i8* %call4, i8** %progress_text, align 8
  %9 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %use_grid = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %9, i32 0, i32 27
  store i32 1, i32* %use_grid, align 4
  %10 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %use_center = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %10, i32 0, i32 29
  store i32 1, i32* %use_center, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_rotate_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, i8* %data) #3 {
entry:
  %callback.addr = alloca void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  %call = call i64 @gimp_rotate_tool_get_type() #5
  %call1 = call i64 @gimp_transform_options_get_type() #5
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)) #6
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i32 0, i32 0)) #6
  %1 = load i8*, i8** %data.addr, align 8
  call void %0(i64 %call, i64 %call1, %struct._GtkWidget* (%struct._GimpToolOptions*)* @gimp_transform_options_gui, i32 128, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i8* %call2, i8* %call3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* %1)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_transform_options_get_type() #2

declare %struct._GtkWidget* @gimp_transform_options_gui(%struct._GimpToolOptions*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_rotate_tool_class_init(%struct._GimpRotateToolClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpRotateToolClass*, align 8
  %tool_class = alloca %struct._GimpToolClass*, align 8
  %trans_class = alloca %struct._GimpTransformToolClass*, align 8
  store %struct._GimpRotateToolClass* %klass, %struct._GimpRotateToolClass** %klass.addr, align 8
  %0 = load %struct._GimpRotateToolClass*, %struct._GimpRotateToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpRotateToolClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpToolClass*
  store %struct._GimpToolClass* %2, %struct._GimpToolClass** %tool_class, align 8
  %3 = load %struct._GimpRotateToolClass*, %struct._GimpRotateToolClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpRotateToolClass* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_transform_tool_get_type() #5
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpTransformToolClass*
  store %struct._GimpTransformToolClass* %5, %struct._GimpTransformToolClass** %trans_class, align 8
  %6 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %key_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %6, i32 0, i32 8
  store i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)* @gimp_rotate_tool_key_press, i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)** %key_press, align 8
  %7 = load %struct._GimpTransformToolClass*, %struct._GimpTransformToolClass** %trans_class, align 8
  %dialog = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %7, i32 0, i32 1
  store void (%struct._GimpTransformTool*)* @gimp_rotate_tool_dialog, void (%struct._GimpTransformTool*)** %dialog, align 8
  %8 = load %struct._GimpTransformToolClass*, %struct._GimpTransformToolClass** %trans_class, align 8
  %dialog_update = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %8, i32 0, i32 2
  store void (%struct._GimpTransformTool*)* @gimp_rotate_tool_dialog_update, void (%struct._GimpTransformTool*)** %dialog_update, align 8
  %9 = load %struct._GimpTransformToolClass*, %struct._GimpTransformToolClass** %trans_class, align 8
  %prepare = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %9, i32 0, i32 3
  store void (%struct._GimpTransformTool*)* @gimp_rotate_tool_prepare, void (%struct._GimpTransformTool*)** %prepare, align 8
  %10 = load %struct._GimpTransformToolClass*, %struct._GimpTransformToolClass** %trans_class, align 8
  %motion = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %10, i32 0, i32 4
  store void (%struct._GimpTransformTool*)* @gimp_rotate_tool_motion, void (%struct._GimpTransformTool*)** %motion, align 8
  %11 = load %struct._GimpTransformToolClass*, %struct._GimpTransformToolClass** %trans_class, align 8
  %recalc_matrix = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %11, i32 0, i32 5
  store void (%struct._GimpTransformTool*)* @gimp_rotate_tool_recalc_matrix, void (%struct._GimpTransformTool*)** %recalc_matrix, align 8
  %12 = load %struct._GimpTransformToolClass*, %struct._GimpTransformToolClass** %trans_class, align 8
  %get_undo_desc = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %12, i32 0, i32 6
  store i8* (%struct._GimpTransformTool*)* @gimp_rotate_tool_get_undo_desc, i8* (%struct._GimpTransformTool*)** %get_undo_desc, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

; Function Attrs: nounwind uwtable
define internal i32 @gimp_rotate_tool_key_press(%struct._GimpTool* %tool, %struct._GdkEventKey* %kevent, %struct._GimpDisplay* %display) #3 {
entry:
  %retval = alloca i32, align 4
  %tool.addr = alloca %struct._GimpTool*, align 8
  %kevent.addr = alloca %struct._GdkEventKey*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %draw_tool = alloca %struct._GimpDrawTool*, align 8
  %rotate = alloca %struct._GimpRotateTool*, align 8
  %angle_spin = alloca %struct._GtkSpinButton*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GdkEventKey* %kevent, %struct._GdkEventKey** %kevent.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_draw_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawTool*
  store %struct._GimpDrawTool* %2, %struct._GimpDrawTool** %draw_tool, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %4 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %display2 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %4, i32 0, i32 1
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display2, align 8
  %cmp = icmp eq %struct._GimpDisplay* %3, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %7 = bitcast %struct._GimpTool* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_rotate_tool_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpRotateTool*
  store %struct._GimpRotateTool* %8, %struct._GimpRotateTool** %rotate, align 8
  %9 = load %struct._GimpRotateTool*, %struct._GimpRotateTool** %rotate, align 8
  %angle_spin_button = getelementptr inbounds %struct._GimpRotateTool, %struct._GimpRotateTool* %9, i32 0, i32 2
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %angle_spin_button, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_spin_button_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call5)
  %12 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkSpinButton*
  store %struct._GtkSpinButton* %12, %struct._GtkSpinButton** %angle_spin, align 8
  %13 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %keyval = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %13, i32 0, i32 5
  %14 = load i32, i32* %keyval, align 4
  switch i32 %14, label %sw.default [
    i32 65362, label %sw.bb
    i32 65364, label %sw.bb.7
    i32 65363, label %sw.bb.8
    i32 65361, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %if.then
  %15 = load %struct._GtkSpinButton*, %struct._GtkSpinButton** %angle_spin, align 8
  call void @gtk_spin_button_spin(%struct._GtkSpinButton* %15, i32 0, double 0.000000e+00)
  store i32 1, i32* %retval
  br label %return

sw.bb.7:                                          ; preds = %if.then
  %16 = load %struct._GtkSpinButton*, %struct._GtkSpinButton** %angle_spin, align 8
  call void @gtk_spin_button_spin(%struct._GtkSpinButton* %16, i32 1, double 0.000000e+00)
  store i32 1, i32* %retval
  br label %return

sw.bb.8:                                          ; preds = %if.then
  %17 = load %struct._GtkSpinButton*, %struct._GtkSpinButton** %angle_spin, align 8
  call void @gtk_spin_button_spin(%struct._GtkSpinButton* %17, i32 2, double 0.000000e+00)
  store i32 1, i32* %retval
  br label %return

sw.bb.9:                                          ; preds = %if.then
  %18 = load %struct._GtkSpinButton*, %struct._GtkSpinButton** %angle_spin, align 8
  call void @gtk_spin_button_spin(%struct._GtkSpinButton* %18, i32 3, double 0.000000e+00)
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %entry
  %19 = load i8*, i8** @gimp_rotate_tool_parent_class, align 8
  %20 = bitcast i8* %19 to %struct._GTypeClass*
  %call10 = call i64 @gimp_tool_get_type() #5
  %call11 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %20, i64 %call10)
  %21 = bitcast %struct._GTypeClass* %call11 to %struct._GimpToolClass*
  %key_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %21, i32 0, i32 8
  %22 = load i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)*, i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)** %key_press, align 8
  %23 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %24 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %25 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call12 = call i32 %22(%struct._GimpTool* %23, %struct._GdkEventKey* %24, %struct._GimpDisplay* %25)
  store i32 %call12, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rotate_tool_dialog(%struct._GimpTransformTool* %tr_tool) #3 {
entry:
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  %rotate = alloca %struct._GimpRotateTool*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %scale = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %0 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %1 = bitcast %struct._GimpTransformTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_rotate_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRotateTool*
  store %struct._GimpRotateTool* %2, %struct._GimpRotateTool** %rotate, align 8
  %call2 = call %struct._GtkWidget* @gtk_table_new(i32 4, i32 2, i32 0)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %table, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_container_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %5, i32 6)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_table_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %8, i32 2)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_table_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %11, i32 6)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_table_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call9)
  %14 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %14, i32 1, i32 6)
  %15 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %dialog = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %15, i32 0, i32 33
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_dialog_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call11)
  %18 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkDialog*
  %call13 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %18)
  %19 = bitcast %struct._GtkWidget* %call13 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_box_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call14)
  %20 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkBox*
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %20, %struct._GtkWidget* %21, i32 0, i32 0, i32 0)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %22)
  %23 = load %struct._GimpRotateTool*, %struct._GimpRotateTool** %rotate, align 8
  %angle_adj = getelementptr inbounds %struct._GimpRotateTool, %struct._GimpRotateTool* %23, i32 0, i32 1
  %24 = bitcast %struct._GtkAdjustment** %angle_adj to %struct._GtkObject**
  %call16 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %24, double 0.000000e+00, double -1.800000e+02, double 1.800000e+02, double 1.000000e-01, double 1.500000e+01, double 0.000000e+00, double 2.000000e+00, i32 2)
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %button, align 8
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_spin_button_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call17)
  %27 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkSpinButton*
  call void @gtk_spin_button_set_wrap(%struct._GtkSpinButton* %27, i32 1)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_entry_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call19)
  %30 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkEntry*
  call void @gtk_entry_set_width_chars(%struct._GtkEntry* %30, i32 10)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_table_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call21)
  %33 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkTable*
  %call23 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0)) #6
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call24 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %33, i32 0, i32 0, i8* %call23, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %34, i32 1, i32 1)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %36 = load %struct._GimpRotateTool*, %struct._GimpRotateTool** %rotate, align 8
  %angle_spin_button = getelementptr inbounds %struct._GimpRotateTool, %struct._GimpRotateTool* %36, i32 0, i32 2
  store %struct._GtkWidget* %35, %struct._GtkWidget** %angle_spin_button, align 8
  %37 = load %struct._GimpRotateTool*, %struct._GimpRotateTool** %rotate, align 8
  %angle_adj25 = getelementptr inbounds %struct._GimpRotateTool, %struct._GimpRotateTool* %37, i32 0, i32 1
  %38 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %angle_adj25, align 8
  %39 = bitcast %struct._GtkAdjustment* %38 to i8*
  %40 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %41 = bitcast %struct._GimpTransformTool* %40 to i8*
  %call26 = call i64 @g_signal_connect_data(i8* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpTransformTool*)* @rotate_angle_changed to void ()*), i8* %41, void (i8*, %struct._GClosure*)* null, i32 0)
  %42 = load %struct._GimpRotateTool*, %struct._GimpRotateTool** %rotate, align 8
  %angle_adj27 = getelementptr inbounds %struct._GimpRotateTool, %struct._GimpRotateTool* %42, i32 0, i32 1
  %43 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %angle_adj27, align 8
  %call28 = call %struct._GtkWidget* @gtk_scale_new(i32 0, %struct._GtkAdjustment* %43)
  store %struct._GtkWidget* %call28, %struct._GtkWidget** %scale, align 8
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_scale_get_type() #5
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call29)
  %46 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkScale*
  call void @gtk_scale_set_draw_value(%struct._GtkScale* %46, i32 0)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_table_get_type() #5
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call31)
  %49 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkTable*
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_table_attach(%struct._GtkTable* %49, %struct._GtkWidget* %50, i32 1, i32 2, i32 1, i32 2, i32 5, i32 2, i32 0, i32 0)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %51)
  %call33 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double 0.000000e+00, double -1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 2)
  store %struct._GtkWidget* %call33, %struct._GtkWidget** %button, align 8
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_entry_get_type() #5
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call34)
  %54 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkEntry*
  call void @gtk_entry_set_width_chars(%struct._GtkEntry* %54, i32 10)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_table_get_type() #5
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call36)
  %57 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkTable*
  %call38 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0)) #6
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call39 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %57, i32 0, i32 2, i8* %call38, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %58, i32 1, i32 1)
  %call40 = call %struct._GtkWidget* @gimp_size_entry_new(i32 1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32 1, i32 1, i32 0, i32 10, i32 1)
  %59 = load %struct._GimpRotateTool*, %struct._GimpRotateTool** %rotate, align 8
  %sizeentry = getelementptr inbounds %struct._GimpRotateTool, %struct._GimpRotateTool* %59, i32 0, i32 3
  store %struct._GtkWidget* %call40, %struct._GtkWidget** %sizeentry, align 8
  %60 = load %struct._GimpRotateTool*, %struct._GimpRotateTool** %rotate, align 8
  %sizeentry41 = getelementptr inbounds %struct._GimpRotateTool, %struct._GimpRotateTool* %60, i32 0, i32 3
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry41, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_size_entry_get_type() #5
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call42)
  %63 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpSizeEntry*
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %65 = bitcast %struct._GtkWidget* %64 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_spin_button_get_type() #5
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call44)
  %66 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkSpinButton*
  call void @gimp_size_entry_add_field(%struct._GimpSizeEntry* %63, %struct._GtkSpinButton* %66, %struct._GtkSpinButton* null)
  %67 = load %struct._GimpRotateTool*, %struct._GimpRotateTool** %rotate, align 8
  %sizeentry46 = getelementptr inbounds %struct._GimpRotateTool, %struct._GimpRotateTool* %67, i32 0, i32 3
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry46, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call47 = call i64 @gimp_size_entry_get_type() #5
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call47)
  %70 = bitcast %struct._GTypeInstance* %call48 to %struct._GimpSizeEntry*
  call void @gimp_size_entry_set_pixel_digits(%struct._GimpSizeEntry* %70, i32 2)
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %72 = bitcast %struct._GtkWidget* %71 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_table_get_type() #5
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call49)
  %73 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkTable*
  %call51 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0)) #6
  %74 = load %struct._GimpRotateTool*, %struct._GimpRotateTool** %rotate, align 8
  %sizeentry52 = getelementptr inbounds %struct._GimpRotateTool, %struct._GimpRotateTool* %74, i32 0, i32 3
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry52, align 8
  %call53 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %73, i32 0, i32 3, i8* %call51, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %75, i32 1, i32 1)
  %76 = load %struct._GimpRotateTool*, %struct._GimpRotateTool** %rotate, align 8
  %sizeentry54 = getelementptr inbounds %struct._GimpRotateTool, %struct._GimpRotateTool* %76, i32 0, i32 3
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry54, align 8
  %78 = bitcast %struct._GtkWidget* %77 to i8*
  %79 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %80 = bitcast %struct._GimpTransformTool* %79 to i8*
  %call55 = call i64 @g_signal_connect_data(i8* %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpTransformTool*)* @rotate_center_changed to void ()*), i8* %80, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rotate_tool_dialog_update(%struct._GimpTransformTool* %tr_tool) #3 {
entry:
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  %rotate = alloca %struct._GimpRotateTool*, align 8
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %0 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %1 = bitcast %struct._GimpTransformTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_rotate_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRotateTool*
  store %struct._GimpRotateTool* %2, %struct._GimpRotateTool** %rotate, align 8
  %3 = load %struct._GimpRotateTool*, %struct._GimpRotateTool** %rotate, align 8
  %angle_adj = getelementptr inbounds %struct._GimpRotateTool, %struct._GimpRotateTool* %3, i32 0, i32 1
  %4 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %angle_adj, align 8
  %5 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %5, i32 0, i32 23
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* %trans_info, i32 0, i64 0
  %6 = load double, double* %arrayidx, align 8
  %mul = fmul double %6, 3.600000e+02
  %div = fdiv double %mul, 0x401921FB54442D18
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %4, double %div)
  %7 = load %struct._GimpRotateTool*, %struct._GimpRotateTool** %rotate, align 8
  %sizeentry = getelementptr inbounds %struct._GimpRotateTool, %struct._GimpRotateTool* %7, i32 0, i32 3
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  %9 = bitcast %struct._GtkWidget* %8 to i8*
  %10 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %11 = bitcast %struct._GimpTransformTool* %10 to i8*
  %call2 = call i32 @g_signal_handlers_block_matched(i8* %9, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GimpTransformTool*)* @rotate_center_changed to i8*), i8* %11)
  %12 = load %struct._GimpRotateTool*, %struct._GimpRotateTool** %rotate, align 8
  %sizeentry3 = getelementptr inbounds %struct._GimpRotateTool, %struct._GimpRotateTool* %12, i32 0, i32 3
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry3, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_size_entry_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call4)
  %15 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpSizeEntry*
  %16 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info6 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %16, i32 0, i32 23
  %arrayidx7 = getelementptr inbounds [8 x double], [8 x double]* %trans_info6, i32 0, i64 2
  %17 = load double, double* %arrayidx7, align 8
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %15, i32 0, double %17)
  %18 = load %struct._GimpRotateTool*, %struct._GimpRotateTool** %rotate, align 8
  %sizeentry8 = getelementptr inbounds %struct._GimpRotateTool, %struct._GimpRotateTool* %18, i32 0, i32 3
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry8, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_size_entry_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call9)
  %21 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpSizeEntry*
  %22 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info11 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %22, i32 0, i32 23
  %arrayidx12 = getelementptr inbounds [8 x double], [8 x double]* %trans_info11, i32 0, i64 3
  %23 = load double, double* %arrayidx12, align 8
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %21, i32 1, double %23)
  %24 = load %struct._GimpRotateTool*, %struct._GimpRotateTool** %rotate, align 8
  %sizeentry13 = getelementptr inbounds %struct._GimpRotateTool, %struct._GimpRotateTool* %24, i32 0, i32 3
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry13, align 8
  %26 = bitcast %struct._GtkWidget* %25 to i8*
  %27 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %28 = bitcast %struct._GimpTransformTool* %27 to i8*
  %call14 = call i32 @g_signal_handlers_unblock_matched(i8* %26, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GimpTransformTool*)* @rotate_center_changed to i8*), i8* %28)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rotate_tool_prepare(%struct._GimpTransformTool* %tr_tool) #3 {
entry:
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  %rotate = alloca %struct._GimpRotateTool*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %0 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %1 = bitcast %struct._GimpTransformTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_rotate_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRotateTool*
  store %struct._GimpRotateTool* %2, %struct._GimpRotateTool** %rotate, align 8
  %3 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %4 = bitcast %struct._GimpTransformTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %display4 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 4
  %6 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display4, align 8
  store %struct._GimpDisplay* %6, %struct._GimpDisplay** %display, align 8
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call5 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %7)
  store %struct._GimpImage* %call5, %struct._GimpImage** %image, align 8
  %8 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %8, i32 0, i32 23
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* %trans_info, i32 0, i64 0
  store double 0.000000e+00, double* %arrayidx, align 8
  %9 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info6 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %9, i32 0, i32 23
  %arrayidx7 = getelementptr inbounds [8 x double], [8 x double]* %trans_info6, i32 0, i64 1
  store double 0.000000e+00, double* %arrayidx7, align 8
  %10 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %cx = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %10, i32 0, i32 9
  %11 = load double, double* %cx, align 8
  %12 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info8 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %12, i32 0, i32 23
  %arrayidx9 = getelementptr inbounds [8 x double], [8 x double]* %trans_info8, i32 0, i64 2
  store double %11, double* %arrayidx9, align 8
  %13 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %cy = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %13, i32 0, i32 10
  %14 = load double, double* %cy, align 8
  %15 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info10 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %15, i32 0, i32 23
  %arrayidx11 = getelementptr inbounds [8 x double], [8 x double]* %trans_info10, i32 0, i64 3
  store double %14, double* %arrayidx11, align 8
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %16, double* %xres, double* %yres)
  %17 = load %struct._GimpRotateTool*, %struct._GimpRotateTool** %rotate, align 8
  %sizeentry = getelementptr inbounds %struct._GimpRotateTool, %struct._GimpRotateTool* %17, i32 0, i32 3
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  %19 = bitcast %struct._GtkWidget* %18 to i8*
  %20 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %21 = bitcast %struct._GimpTransformTool* %20 to i8*
  %call12 = call i32 @g_signal_handlers_block_matched(i8* %19, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GimpTransformTool*)* @rotate_center_changed to i8*), i8* %21)
  %22 = load %struct._GimpRotateTool*, %struct._GimpRotateTool** %rotate, align 8
  %sizeentry13 = getelementptr inbounds %struct._GimpRotateTool, %struct._GimpRotateTool* %22, i32 0, i32 3
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry13, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_size_entry_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call14)
  %25 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpSizeEntry*
  %26 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call16 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %26)
  %unit = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %call16, i32 0, i32 10
  %27 = load i32, i32* %unit, align 4
  call void @gimp_size_entry_set_unit(%struct._GimpSizeEntry* %25, i32 %27)
  %28 = load %struct._GimpRotateTool*, %struct._GimpRotateTool** %rotate, align 8
  %sizeentry17 = getelementptr inbounds %struct._GimpRotateTool, %struct._GimpRotateTool* %28, i32 0, i32 3
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry17, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_size_entry_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call18)
  %31 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpSizeEntry*
  %32 = load double, double* %xres, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %31, i32 0, double %32, i32 0)
  %33 = load %struct._GimpRotateTool*, %struct._GimpRotateTool** %rotate, align 8
  %sizeentry20 = getelementptr inbounds %struct._GimpRotateTool, %struct._GimpRotateTool* %33, i32 0, i32 3
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry20, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_size_entry_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call21)
  %36 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpSizeEntry*
  %37 = load double, double* %yres, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %36, i32 1, double %37, i32 0)
  %38 = load %struct._GimpRotateTool*, %struct._GimpRotateTool** %rotate, align 8
  %sizeentry23 = getelementptr inbounds %struct._GimpRotateTool, %struct._GimpRotateTool* %38, i32 0, i32 3
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry23, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_size_entry_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call24)
  %41 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpSizeEntry*
  %42 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call26 = call i32 @gimp_image_get_width(%struct._GimpImage* %42)
  %add = add nsw i32 65536, %call26
  %conv = sitofp i32 %add to double
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %41, i32 0, double -6.553600e+04, double %conv)
  %43 = load %struct._GimpRotateTool*, %struct._GimpRotateTool** %rotate, align 8
  %sizeentry27 = getelementptr inbounds %struct._GimpRotateTool, %struct._GimpRotateTool* %43, i32 0, i32 3
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry27, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_size_entry_get_type() #5
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call28)
  %46 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpSizeEntry*
  %47 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call30 = call i32 @gimp_image_get_height(%struct._GimpImage* %47)
  %add31 = add nsw i32 65536, %call30
  %conv32 = sitofp i32 %add31 to double
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %46, i32 1, double -6.553600e+04, double %conv32)
  %48 = load %struct._GimpRotateTool*, %struct._GimpRotateTool** %rotate, align 8
  %sizeentry33 = getelementptr inbounds %struct._GimpRotateTool, %struct._GimpRotateTool* %48, i32 0, i32 3
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry33, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_size_entry_get_type() #5
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call34)
  %51 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpSizeEntry*
  %52 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %52, i32 0, i32 5
  %53 = load i32, i32* %x1, align 4
  %conv36 = sitofp i32 %53 to double
  %54 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %54, i32 0, i32 7
  %55 = load i32, i32* %x2, align 4
  %conv37 = sitofp i32 %55 to double
  call void @gimp_size_entry_set_size(%struct._GimpSizeEntry* %51, i32 0, double %conv36, double %conv37)
  %56 = load %struct._GimpRotateTool*, %struct._GimpRotateTool** %rotate, align 8
  %sizeentry38 = getelementptr inbounds %struct._GimpRotateTool, %struct._GimpRotateTool* %56, i32 0, i32 3
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry38, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_size_entry_get_type() #5
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call39)
  %59 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpSizeEntry*
  %60 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %y1 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %60, i32 0, i32 6
  %61 = load i32, i32* %y1, align 4
  %conv41 = sitofp i32 %61 to double
  %62 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %62, i32 0, i32 8
  %63 = load i32, i32* %y2, align 4
  %conv42 = sitofp i32 %63 to double
  call void @gimp_size_entry_set_size(%struct._GimpSizeEntry* %59, i32 1, double %conv41, double %conv42)
  %64 = load %struct._GimpRotateTool*, %struct._GimpRotateTool** %rotate, align 8
  %sizeentry43 = getelementptr inbounds %struct._GimpRotateTool, %struct._GimpRotateTool* %64, i32 0, i32 3
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry43, align 8
  %66 = bitcast %struct._GtkWidget* %65 to i8*
  %67 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %68 = bitcast %struct._GimpTransformTool* %67 to i8*
  %call44 = call i32 @g_signal_handlers_unblock_matched(i8* %66, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GimpTransformTool*)* @rotate_center_changed to i8*), i8* %68)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rotate_tool_motion(%struct._GimpTransformTool* %tr_tool) #3 {
entry:
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  %options = alloca %struct._GimpTransformOptions*, align 8
  %angle1 = alloca double, align 8
  %angle2 = alloca double, align 8
  %angle = alloca double, align 8
  %cx = alloca double, align 8
  %cy = alloca double, align 8
  %x1 = alloca double, align 8
  %y1 = alloca double, align 8
  %x2 = alloca double, align 8
  %y2 = alloca double, align 8
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %0 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %1 = bitcast %struct._GimpTransformTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  %call2 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %2)
  %3 = bitcast %struct._GimpToolOptions* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_transform_options_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpTransformOptions*
  store %struct._GimpTransformOptions* %4, %struct._GimpTransformOptions** %options, align 8
  %5 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %function = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %5, i32 0, i32 26
  %6 = load i32, i32* %function, align 4
  %cmp = icmp eq i32 %6, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %curx = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %7, i32 0, i32 1
  %8 = load double, double* %curx, align 8
  %9 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %9, i32 0, i32 23
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* %trans_info, i32 0, i64 2
  store double %8, double* %arrayidx, align 8
  %10 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %cury = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %10, i32 0, i32 2
  %11 = load double, double* %cury, align 8
  %12 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info5 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %12, i32 0, i32 23
  %arrayidx6 = getelementptr inbounds [8 x double], [8 x double]* %trans_info5, i32 0, i64 3
  store double %11, double* %arrayidx6, align 8
  %13 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %curx7 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %13, i32 0, i32 1
  %14 = load double, double* %curx7, align 8
  %15 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %cx8 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %15, i32 0, i32 9
  store double %14, double* %cx8, align 8
  %16 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %cury9 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %16, i32 0, i32 2
  %17 = load double, double* %cury9, align 8
  %18 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %cy10 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %18, i32 0, i32 10
  store double %17, double* %cy10, align 8
  br label %if.end.61

if.end:                                           ; preds = %entry
  %19 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info11 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %19, i32 0, i32 23
  %arrayidx12 = getelementptr inbounds [8 x double], [8 x double]* %trans_info11, i32 0, i64 2
  %20 = load double, double* %arrayidx12, align 8
  store double %20, double* %cx, align 8
  %21 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info13 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %21, i32 0, i32 23
  %arrayidx14 = getelementptr inbounds [8 x double], [8 x double]* %trans_info13, i32 0, i64 3
  %22 = load double, double* %arrayidx14, align 8
  store double %22, double* %cy, align 8
  %23 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %curx15 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %23, i32 0, i32 1
  %24 = load double, double* %curx15, align 8
  %25 = load double, double* %cx, align 8
  %sub = fsub double %24, %25
  store double %sub, double* %x1, align 8
  %26 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %lastx = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %26, i32 0, i32 3
  %27 = load double, double* %lastx, align 8
  %28 = load double, double* %cx, align 8
  %sub16 = fsub double %27, %28
  store double %sub16, double* %x2, align 8
  %29 = load double, double* %cy, align 8
  %30 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %cury17 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %30, i32 0, i32 2
  %31 = load double, double* %cury17, align 8
  %sub18 = fsub double %29, %31
  store double %sub18, double* %y1, align 8
  %32 = load double, double* %cy, align 8
  %33 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %lasty = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %33, i32 0, i32 4
  %34 = load double, double* %lasty, align 8
  %sub19 = fsub double %32, %34
  store double %sub19, double* %y2, align 8
  %35 = load double, double* %y1, align 8
  %36 = load double, double* %x1, align 8
  %call20 = call double @atan2(double %35, double %36) #6
  store double %call20, double* %angle1, align 8
  %37 = load double, double* %y2, align 8
  %38 = load double, double* %x2, align 8
  %call21 = call double @atan2(double %37, double %38) #6
  store double %call21, double* %angle2, align 8
  %39 = load double, double* %angle2, align 8
  %40 = load double, double* %angle1, align 8
  %sub22 = fsub double %39, %40
  store double %sub22, double* %angle, align 8
  %41 = load double, double* %angle, align 8
  %cmp23 = fcmp ogt double %41, 0x400921FB54442D18
  br i1 %cmp23, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %42 = load double, double* %angle, align 8
  %cmp24 = fcmp olt double %42, 0xC00921FB54442D18
  br i1 %cmp24, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %lor.lhs.false, %if.end
  %43 = load double, double* %angle2, align 8
  %44 = load double, double* %angle1, align 8
  %cmp26 = fcmp olt double %44, 0.000000e+00
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.25
  %45 = load double, double* %angle1, align 8
  %add = fadd double 0x401921FB54442D18, %45
  br label %cond.end

cond.false:                                       ; preds = %if.then.25
  %46 = load double, double* %angle1, align 8
  %sub27 = fsub double %46, 0x401921FB54442D18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %add, %cond.true ], [ %sub27, %cond.false ]
  %sub28 = fsub double %43, %cond
  store double %sub28, double* %angle, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %cond.end, %lor.lhs.false
  %47 = load double, double* %angle, align 8
  %48 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info30 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %48, i32 0, i32 23
  %arrayidx31 = getelementptr inbounds [8 x double], [8 x double]* %trans_info30, i32 0, i64 1
  %49 = load double, double* %arrayidx31, align 8
  %add32 = fadd double %49, %47
  store double %add32, double* %arrayidx31, align 8
  %50 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info33 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %50, i32 0, i32 23
  %arrayidx34 = getelementptr inbounds [8 x double], [8 x double]* %trans_info33, i32 0, i64 1
  %51 = load double, double* %arrayidx34, align 8
  %cmp35 = fcmp olt double %51, 0xC00921FB54442D18
  br i1 %cmp35, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %if.end.29
  %52 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info37 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %52, i32 0, i32 23
  %arrayidx38 = getelementptr inbounds [8 x double], [8 x double]* %trans_info37, i32 0, i64 1
  %53 = load double, double* %arrayidx38, align 8
  %add39 = fadd double %53, 0x401921FB54442D18
  store double %add39, double* %arrayidx38, align 8
  br label %if.end.48

if.else:                                          ; preds = %if.end.29
  %54 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info40 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %54, i32 0, i32 23
  %arrayidx41 = getelementptr inbounds [8 x double], [8 x double]* %trans_info40, i32 0, i64 1
  %55 = load double, double* %arrayidx41, align 8
  %cmp42 = fcmp ogt double %55, 0x400921FB54442D18
  br i1 %cmp42, label %if.then.43, label %if.end.47

if.then.43:                                       ; preds = %if.else
  %56 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info44 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %56, i32 0, i32 23
  %arrayidx45 = getelementptr inbounds [8 x double], [8 x double]* %trans_info44, i32 0, i64 1
  %57 = load double, double* %arrayidx45, align 8
  %sub46 = fsub double %57, 0x401921FB54442D18
  store double %sub46, double* %arrayidx45, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.43, %if.else
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.36
  %58 = load %struct._GimpTransformOptions*, %struct._GimpTransformOptions** %options, align 8
  %constrain = getelementptr inbounds %struct._GimpTransformOptions, %struct._GimpTransformOptions* %58, i32 0, i32 10
  %59 = load i32, i32* %constrain, align 4
  %tobool = icmp ne i32 %59, 0
  br i1 %tobool, label %if.then.49, label %if.else.56

if.then.49:                                       ; preds = %if.end.48
  %60 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info50 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %60, i32 0, i32 23
  %arrayidx51 = getelementptr inbounds [8 x double], [8 x double]* %trans_info50, i32 0, i64 1
  %61 = load double, double* %arrayidx51, align 8
  %add52 = fadd double %61, 0x3FC0C152382D7365
  %div = fdiv double %add52, 0x3FD0C152382D7365
  %conv = fptosi double %div to i32
  %conv53 = sitofp i32 %conv to double
  %mul = fmul double 0x3FD0C152382D7365, %conv53
  %62 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info54 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %62, i32 0, i32 23
  %arrayidx55 = getelementptr inbounds [8 x double], [8 x double]* %trans_info54, i32 0, i64 0
  store double %mul, double* %arrayidx55, align 8
  br label %if.end.61

if.else.56:                                       ; preds = %if.end.48
  %63 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info57 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %63, i32 0, i32 23
  %arrayidx58 = getelementptr inbounds [8 x double], [8 x double]* %trans_info57, i32 0, i64 1
  %64 = load double, double* %arrayidx58, align 8
  %65 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info59 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %65, i32 0, i32 23
  %arrayidx60 = getelementptr inbounds [8 x double], [8 x double]* %trans_info59, i32 0, i64 0
  store double %64, double* %arrayidx60, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.then, %if.else.56, %if.then.49
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rotate_tool_recalc_matrix(%struct._GimpTransformTool* %tr_tool) #3 {
entry:
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %0 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %0, i32 0, i32 23
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* %trans_info, i32 0, i64 2
  %1 = load double, double* %arrayidx, align 8
  %2 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %cx = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %2, i32 0, i32 9
  store double %1, double* %cx, align 8
  %3 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info1 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %3, i32 0, i32 23
  %arrayidx2 = getelementptr inbounds [8 x double], [8 x double]* %trans_info1, i32 0, i64 3
  %4 = load double, double* %arrayidx2, align 8
  %5 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %cy = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %5, i32 0, i32 10
  store double %4, double* %cy, align 8
  %6 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %transform = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %6, i32 0, i32 22
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %transform)
  %7 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %transform3 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %7, i32 0, i32 22
  %8 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %cx4 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %8, i32 0, i32 9
  %9 = load double, double* %cx4, align 8
  %10 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %cy5 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %10, i32 0, i32 10
  %11 = load double, double* %cy5, align 8
  %12 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info6 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %12, i32 0, i32 23
  %arrayidx7 = getelementptr inbounds [8 x double], [8 x double]* %trans_info6, i32 0, i64 0
  %13 = load double, double* %arrayidx7, align 8
  call void @gimp_transform_matrix_rotate_center(%struct._GimpMatrix3* %transform3, double %9, double %11, double %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_rotate_tool_get_undo_desc(%struct._GimpTransformTool* %tr_tool) #3 {
entry:
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %call = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i32 0, i32 0), i64 10)
  %0 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %0, i32 0, i32 23
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* %trans_info, i32 0, i64 0
  %1 = load double, double* %arrayidx, align 8
  %mul = fmul double %1, 3.600000e+02
  %div = fdiv double %mul, 0x401921FB54442D18
  %2 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info1 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %2, i32 0, i32 23
  %arrayidx2 = getelementptr inbounds [8 x double], [8 x double]* %trans_info1, i32 0, i64 2
  %3 = load double, double* %arrayidx2, align 8
  %4 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info3 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %4, i32 0, i32 23
  %arrayidx4 = getelementptr inbounds [8 x double], [8 x double]* %trans_info3, i32 0, i64 3
  %5 = load double, double* %arrayidx4, align 8
  %call5 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call, double %div, double %3, double %5)
  ret i8* %call5
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_draw_tool_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gtk_spin_button_get_type() #2

declare void @gtk_spin_button_spin(%struct._GtkSpinButton*, i32, double) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_table_set_row_spacing(%struct._GtkTable*, i32, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #1

declare void @gtk_spin_button_set_wrap(%struct._GtkSpinButton*, i32) #1

declare void @gtk_entry_set_width_chars(%struct._GtkEntry*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #2

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @rotate_angle_changed(%struct._GtkAdjustment* %adj, %struct._GimpTransformTool* %tr_tool) #3 {
entry:
  %adj.addr = alloca %struct._GtkAdjustment*, align 8
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  %value = alloca double, align 8
  store %struct._GtkAdjustment* %adj, %struct._GtkAdjustment** %adj.addr, align 8
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %0)
  %mul = fmul double %call, 0x401921FB54442D18
  %div = fdiv double %mul, 3.600000e+02
  store double %div, double* %value, align 8
  %1 = load double, double* %value, align 8
  %2 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %2, i32 0, i32 23
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* %trans_info, i32 0, i64 0
  %3 = load double, double* %arrayidx, align 8
  %sub = fsub double %1, %3
  %cmp = fcmp olt double %sub, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load double, double* %value, align 8
  %5 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info1 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %5, i32 0, i32 23
  %arrayidx2 = getelementptr inbounds [8 x double], [8 x double]* %trans_info1, i32 0, i64 0
  %6 = load double, double* %arrayidx2, align 8
  %sub3 = fsub double %4, %6
  %sub4 = fsub double -0.000000e+00, %sub3
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load double, double* %value, align 8
  %8 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info5 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %8, i32 0, i32 23
  %arrayidx6 = getelementptr inbounds [8 x double], [8 x double]* %trans_info5, i32 0, i64 0
  %9 = load double, double* %arrayidx6, align 8
  %sub7 = fsub double %7, %9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub4, %cond.true ], [ %sub7, %cond.false ]
  %cmp8 = fcmp ogt double %cond, 1.000000e-04
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %10 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %11 = bitcast %struct._GimpTransformTool* %10 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_draw_tool_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call9)
  %12 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %12)
  %13 = load double, double* %value, align 8
  %14 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info11 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %14, i32 0, i32 23
  %arrayidx12 = getelementptr inbounds [8 x double], [8 x double]* %trans_info11, i32 0, i64 0
  store double %13, double* %arrayidx12, align 8
  %15 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info13 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %15, i32 0, i32 23
  %arrayidx14 = getelementptr inbounds [8 x double], [8 x double]* %trans_info13, i32 0, i64 1
  store double %13, double* %arrayidx14, align 8
  %16 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  call void @gimp_transform_tool_recalc_matrix(%struct._GimpTransformTool* %16)
  %17 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %18 = bitcast %struct._GimpTransformTool* %17 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_draw_tool_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call15)
  %19 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %19)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  ret void
}

declare %struct._GtkWidget* @gtk_scale_new(i32, %struct._GtkAdjustment*) #1

declare void @gtk_scale_set_draw_value(%struct._GtkScale*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scale_get_type() #2

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare %struct._GtkWidget* @gimp_size_entry_new(i32, i32, i8*, i32, i32, i32, i32, i32) #1

declare void @gimp_size_entry_add_field(%struct._GimpSizeEntry*, %struct._GtkSpinButton*, %struct._GtkSpinButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_size_entry_get_type() #2

declare void @gimp_size_entry_set_pixel_digits(%struct._GimpSizeEntry*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @rotate_center_changed(%struct._GtkWidget* %widget, %struct._GimpTransformTool* %tr_tool) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  %cx = alloca double, align 8
  %cy = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_size_entry_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSizeEntry*
  %call2 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %2, i32 0)
  store double %call2, double* %cx, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_size_entry_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpSizeEntry*
  %call5 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %5, i32 1)
  store double %call5, double* %cy, align 8
  %6 = load double, double* %cx, align 8
  %7 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %7, i32 0, i32 23
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* %trans_info, i32 0, i64 2
  %8 = load double, double* %arrayidx, align 8
  %cmp = fcmp une double %6, %8
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load double, double* %cy, align 8
  %10 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info6 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %10, i32 0, i32 23
  %arrayidx7 = getelementptr inbounds [8 x double], [8 x double]* %trans_info6, i32 0, i64 3
  %11 = load double, double* %arrayidx7, align 8
  %cmp8 = fcmp une double %9, %11
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %12 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %13 = bitcast %struct._GimpTransformTool* %12 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_draw_tool_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call9)
  %14 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %14)
  %15 = load double, double* %cx, align 8
  %16 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info11 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %16, i32 0, i32 23
  %arrayidx12 = getelementptr inbounds [8 x double], [8 x double]* %trans_info11, i32 0, i64 2
  store double %15, double* %arrayidx12, align 8
  %17 = load double, double* %cy, align 8
  %18 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info13 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %18, i32 0, i32 23
  %arrayidx14 = getelementptr inbounds [8 x double], [8 x double]* %trans_info13, i32 0, i64 3
  store double %17, double* %arrayidx14, align 8
  %19 = load double, double* %cx, align 8
  %20 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %cx15 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %20, i32 0, i32 9
  store double %19, double* %cx15, align 8
  %21 = load double, double* %cy, align 8
  %22 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %cy16 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %22, i32 0, i32 10
  store double %21, double* %cy16, align 8
  %23 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  call void @gimp_transform_tool_recalc_matrix(%struct._GimpTransformTool* %23)
  %24 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %25 = bitcast %struct._GimpTransformTool* %24 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_draw_tool_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call17)
  %26 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %26)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  ret void
}

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare void @gimp_draw_tool_pause(%struct._GimpDrawTool*) #1

declare void @gimp_transform_tool_recalc_matrix(%struct._GimpTransformTool*) #1

declare void @gimp_draw_tool_resume(%struct._GimpDrawTool*) #1

declare double @gimp_size_entry_get_refval(%struct._GimpSizeEntry*, i32) #1

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @gimp_size_entry_set_refval(%struct._GimpSizeEntry*, i32, double) #1

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare void @gimp_image_get_resolution(%struct._GimpImage*, double*, double*) #1

declare void @gimp_size_entry_set_unit(%struct._GimpSizeEntry*, i32) #1

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

declare void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry*, i32, double, i32) #1

declare void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry*, i32, double, double) #1

declare i32 @gimp_image_get_width(%struct._GimpImage*) #1

declare i32 @gimp_image_get_height(%struct._GimpImage*) #1

declare void @gimp_size_entry_set_size(%struct._GimpSizeEntry*, i32, double, double) #1

declare %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool*) #1

; Function Attrs: nounwind
declare double @atan2(double, double) #4

declare void @gimp_matrix3_identity(%struct._GimpMatrix3*) #1

declare void @gimp_transform_matrix_rotate_center(%struct._GimpMatrix3*, double, double, double) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i8* @g_dpgettext(i8*, i8*, i64) #1

declare void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl*, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
