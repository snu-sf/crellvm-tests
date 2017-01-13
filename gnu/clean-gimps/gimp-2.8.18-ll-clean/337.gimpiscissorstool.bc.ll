; ModuleID = './app/tools/gimpiscissorstool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Tile = type opaque
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpIscissorsToolClass = type { %struct._GimpSelectionToolClass }
%struct._GimpSelectionToolClass = type { %struct._GimpDrawToolClass }
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
%struct._Gimp = type opaque
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
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
%struct._GimpPaintInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpToolControl = type { %struct._GimpObject, i32, i32, i32, %struct._GSList*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpCanvasItem = type opaque
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpDisplayConfig = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GdkEventKey = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32, i8*, i16, i8, i8 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpUIManager = type opaque
%struct._GimpDrawTool = type { %struct._GimpTool, %struct._GimpDisplay*, i32, i32, i64, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GList* }
%struct._GimpIscissorsTool = type { %struct._GimpSelectionTool, i32, i32, i32, i32, i32, i32, i32, %struct._TempBuf*, %struct._ICurve*, %struct._ICurve*, %struct._ICurve*, %struct._GQueue*, i32, i32, i32, %struct._GimpChannel*, %struct._TileManager* }
%struct._GimpSelectionTool = type { %struct._GimpDrawTool, i32, i32, i32 }
%struct._TempBuf = type { i32, i32, i32, i32, i32, i8* }
%struct._ICurve = type { i32, i32, i32, i32, %struct._GPtrArray* }
%struct._GPtrArray = type { i8**, i32 }
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GeglNode = type opaque
%struct._BoundSeg = type opaque
%struct._TileManager = type opaque
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
%struct._GimpPickable = type opaque
%struct._GimpSelectionOptions = type { %struct._GimpToolOptions, i32, i32, i32, double, %struct._GtkWidget* }
%struct._GimpIscissorsOptions = type { %struct._GimpSelectionOptions, i32 }
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._PixelRegionIterator = type { %struct._GSList*, i32, i32, i32, i32, i32 }
%struct._GimpProjection = type opaque
%struct._GimpScanConvert = type opaque
%struct._GimpVector2 = type { double, double }

@gimp_iscissors_tool_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"GimpIscissorsTool\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"gimp-iscissors-tool\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Scissors\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"Scissors Select Tool: Select shapes using intelligent edge-fitting\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Intelligent _Scissors\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"gimp-tool-iscissors\00", align 1
@gimp_iscissors_tool_parent_class = internal global i8* null, align 8
@GimpIscissorsTool_private_offset = internal global i32 0, align 4
@diagonal_weight = internal global [256 x i32] zeroinitializer, align 16
@direction_value = internal global [256 x [4 x i32]] zeroinitializer, align 16
@cur_tile = internal global %struct._Tile* null, align 8
@distance_weights = internal global [1024 x float] zeroinitializer, align 16
@gradmap_tile_validate.first_gradient = internal global i32 1, align 4
@maxgrad_conv0 = internal global [16384 x i8] zeroinitializer, align 16
@blur_32 = internal constant [9 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 2.400000e+01, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 16
@maxgrad_conv1 = internal global [16384 x i8] zeroinitializer, align 16
@horz_deriv = internal constant [9 x float] [float 1.000000e+00, float 0.000000e+00, float -1.000000e+00, float 2.000000e+00, float 0.000000e+00, float -2.000000e+00, float 1.000000e+00, float 0.000000e+00, float -1.000000e+00], align 16
@maxgrad_conv2 = internal global [16384 x i8] zeroinitializer, align 16
@vert_deriv = internal constant [9 x float] [float 1.000000e+00, float 2.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float -2.000000e+00, float -1.000000e+00], align 16
@gradient_map_value.cur_tilex = internal global i32 0, align 4
@gradient_map_value.cur_tiley = internal global i32 0, align 4
@move = internal constant [8 x [2 x i32]] [[2 x i32] [i32 1, i32 0], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 -1, i32 1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 -1, i32 0], [2 x i32] [i32 0, i32 -1], [2 x i32] [i32 1, i32 -1], [2 x i32] [i32 -1, i32 -1]], align 16
@.str.7 = private unnamed_addr constant [30 x i8] c"Click-Drag to move this point\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"%s: disable auto-snap\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Click to close the curve\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"Click to add a point on this segment\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"Click or press Enter to convert to a selection\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"Press Enter to convert to a selection\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"Click or Click-Drag to add a point\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_iscissors_tool_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_iscissors_tool_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_iscissors_tool_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_selection_tool_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 288, void (i8*, i8*)* bitcast (void (i8*)* @gimp_iscissors_tool_class_intern_init to void (i8*, i8*)*), i32 368, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpIscissorsTool*)* @gimp_iscissors_tool_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_iscissors_tool_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_iscissors_tool_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_selection_tool_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_iscissors_tool_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_iscissors_tool_parent_class, align 8
  %1 = load i32, i32* @GimpIscissorsTool_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpIscissorsTool_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpIscissorsToolClass*
  call void @gimp_iscissors_tool_class_init(%struct._GimpIscissorsToolClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_iscissors_tool_init(%struct._GimpIscissorsTool* %iscissors) #3 {
entry:
  %iscissors.addr = alloca %struct._GimpIscissorsTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  store %struct._GimpIscissorsTool* %iscissors, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %0 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %1 = bitcast %struct._GimpIscissorsTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 3
  %4 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_set_scroll_lock(%struct._GimpToolControl* %4, i32 1)
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control2 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 3
  %6 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control2, align 8
  call void @gimp_tool_control_set_snap_to(%struct._GimpToolControl* %6, i32 0)
  %7 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control3 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %7, i32 0, i32 3
  %8 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control3, align 8
  call void @gimp_tool_control_set_preserve(%struct._GimpToolControl* %8, i32 0)
  %9 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control4 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %9, i32 0, i32 3
  %10 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control4, align 8
  call void @gimp_tool_control_set_dirty_mask(%struct._GimpToolControl* %10, i32 514)
  %11 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control5 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %11, i32 0, i32 3
  %12 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control5, align 8
  call void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl* %12, i32 10)
  %13 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %op = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %13, i32 0, i32 1
  store i32 0, i32* %op, align 4
  %call6 = call %struct._GQueue* @g_queue_new()
  %14 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %curves = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %14, i32 0, i32 12
  store %struct._GQueue* %call6, %struct._GQueue** %curves, align 8
  %15 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %state = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %15, i32 0, i32 15
  store i32 0, i32* %state, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_iscissors_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, i8* %data) #3 {
entry:
  %callback.addr = alloca void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  %call = call i64 @gimp_iscissors_tool_get_type() #5
  %call1 = call i64 @gimp_iscissors_options_get_type() #5
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0)) #6
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i32 0, i32 0)) #6
  %1 = load i8*, i8** %data.addr, align 8
  call void %0(i64 %call, i64 %call1, %struct._GtkWidget* (%struct._GimpToolOptions*)* @gimp_iscissors_options_gui, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i8* %call2, i8* %call3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8* %1)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_iscissors_options_get_type() #2

declare %struct._GtkWidget* @gimp_iscissors_options_gui(%struct._GimpToolOptions*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_iscissors_tool_class_init(%struct._GimpIscissorsToolClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpIscissorsToolClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %tool_class = alloca %struct._GimpToolClass*, align 8
  %draw_tool_class = alloca %struct._GimpDrawToolClass*, align 8
  %i = alloca i32, align 4
  store %struct._GimpIscissorsToolClass* %klass, %struct._GimpIscissorsToolClass** %klass.addr, align 8
  %0 = load %struct._GimpIscissorsToolClass*, %struct._GimpIscissorsToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpIscissorsToolClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpIscissorsToolClass*, %struct._GimpIscissorsToolClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpIscissorsToolClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_tool_get_type() #5
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpToolClass*
  store %struct._GimpToolClass* %5, %struct._GimpToolClass** %tool_class, align 8
  %6 = load %struct._GimpIscissorsToolClass*, %struct._GimpIscissorsToolClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpIscissorsToolClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_draw_tool_get_type() #5
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpDrawToolClass*
  store %struct._GimpDrawToolClass* %8, %struct._GimpDrawToolClass** %draw_tool_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_iscissors_tool_finalize, void (%struct._GObject*)** %finalize, align 8
  %10 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %control = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %10, i32 0, i32 4
  store void (%struct._GimpTool*, i32, %struct._GimpDisplay*)* @gimp_iscissors_tool_control, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)** %control, align 8
  %11 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %11, i32 0, i32 5
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_iscissors_tool_button_press, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_press, align 8
  %12 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_release = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %12, i32 0, i32 6
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_iscissors_tool_button_release, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_release, align 8
  %13 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %motion = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %13, i32 0, i32 7
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_iscissors_tool_motion, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %motion, align 8
  %14 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %oper_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %14, i32 0, i32 12
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_iscissors_tool_oper_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %oper_update, align 8
  %15 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %15, i32 0, i32 13
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)* @gimp_iscissors_tool_cursor_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %16 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %key_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %16, i32 0, i32 8
  store i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)* @gimp_iscissors_tool_key_press, i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)** %key_press, align 8
  %17 = load %struct._GimpDrawToolClass*, %struct._GimpDrawToolClass** %draw_tool_class, align 8
  %draw = getelementptr inbounds %struct._GimpDrawToolClass, %struct._GimpDrawToolClass* %17, i32 0, i32 1
  store void (%struct._GimpDrawTool*)* @gimp_iscissors_tool_draw, void (%struct._GimpDrawTool*)** %draw, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %18 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %18, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4
  %conv = sitofp i32 %19 to double
  %mul = fmul double %conv, 0x3FF6A09E667F3BCD
  %conv5 = fptosi double %mul to i32
  %20 = load i32, i32* %i, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @diagonal_weight, i32 0, i64 %idxprom
  store i32 %conv5, i32* %arrayidx, align 4
  %21 = load i32, i32* %i, align 4
  %sub = sub nsw i32 127, %21
  %call6 = call i32 @abs(i32 %sub) #5
  %sub7 = sub nsw i32 127, %call6
  %mul8 = mul nsw i32 %sub7, 2
  %22 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %22 to i64
  %arrayidx10 = getelementptr inbounds [256 x [4 x i32]], [256 x [4 x i32]]* @direction_value, i32 0, i64 %idxprom9
  %arrayidx11 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx10, i32 0, i64 0
  store i32 %mul8, i32* %arrayidx11, align 4
  %23 = load i32, i32* %i, align 4
  %sub12 = sub nsw i32 127, %23
  %call13 = call i32 @abs(i32 %sub12) #5
  %mul14 = mul nsw i32 %call13, 2
  %24 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %24 to i64
  %arrayidx16 = getelementptr inbounds [256 x [4 x i32]], [256 x [4 x i32]]* @direction_value, i32 0, i64 %idxprom15
  %arrayidx17 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx16, i32 0, i64 1
  store i32 %mul14, i32* %arrayidx17, align 4
  %25 = load i32, i32* %i, align 4
  %sub18 = sub nsw i32 191, %25
  %call19 = call i32 @abs(i32 %sub18) #5
  %mul20 = mul nsw i32 %call19, 2
  %26 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %26 to i64
  %arrayidx22 = getelementptr inbounds [256 x [4 x i32]], [256 x [4 x i32]]* @direction_value, i32 0, i64 %idxprom21
  %arrayidx23 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx22, i32 0, i64 2
  store i32 %mul20, i32* %arrayidx23, align 4
  %27 = load i32, i32* %i, align 4
  %sub24 = sub nsw i32 63, %27
  %call25 = call i32 @abs(i32 %sub24) #5
  %mul26 = mul nsw i32 %call25, 2
  %28 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %28 to i64
  %arrayidx28 = getelementptr inbounds [256 x [4 x i32]], [256 x [4 x i32]]* @direction_value, i32 0, i64 %idxprom27
  %arrayidx29 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx28, i32 0, i64 3
  store i32 %mul26, i32* %arrayidx29, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 255, i32* getelementptr inbounds ([256 x [4 x i32]], [256 x [4 x i32]]* @direction_value, i32 0, i64 255, i64 0), align 4
  store i32 255, i32* getelementptr inbounds ([256 x [4 x i32]], [256 x [4 x i32]]* @direction_value, i32 0, i64 255, i64 1), align 4
  store i32 255, i32* getelementptr inbounds ([256 x [4 x i32]], [256 x [4 x i32]]* @direction_value, i32 0, i64 255, i64 2), align 4
  store i32 255, i32* getelementptr inbounds ([256 x [4 x i32]], [256 x [4 x i32]]* @direction_value, i32 0, i64 255, i64 3), align 4
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_draw_tool_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_iscissors_tool_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %iscissors = alloca %struct._GimpIscissorsTool*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_iscissors_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIscissorsTool*
  store %struct._GimpIscissorsTool* %2, %struct._GimpIscissorsTool** %iscissors, align 8
  %3 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %curves = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %3, i32 0, i32 12
  %4 = load %struct._GQueue*, %struct._GQueue** %curves, align 8
  call void @g_queue_free(%struct._GQueue* %4)
  %5 = load i8*, i8** @gimp_iscissors_tool_parent_class, align 8
  %6 = bitcast i8* %5 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %6, i64 80)
  %7 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 6
  %8 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %9 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %8(%struct._GObject* %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_iscissors_tool_control(%struct._GimpTool* %tool, i32 %action, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %action.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %iscissors = alloca %struct._GimpIscissorsTool*, align 8
  %curve = alloca %struct._ICurve*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %action, i32* %action.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_iscissors_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIscissorsTool*
  store %struct._GimpIscissorsTool* %2, %struct._GimpIscissorsTool** %iscissors, align 8
  %3 = load i32, i32* %action.addr, align 4
  switch i32 %3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry, %entry
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %do.end, %sw.bb.2
  %4 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %curves = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %4, i32 0, i32 12
  %5 = load %struct._GQueue*, %struct._GQueue** %curves, align 8
  %call3 = call i32 @g_queue_is_empty(%struct._GQueue* %5)
  %tobool = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %curves4 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %6, i32 0, i32 12
  %7 = load %struct._GQueue*, %struct._GQueue** %curves4, align 8
  %call5 = call i8* @g_queue_pop_head(%struct._GQueue* %7)
  %8 = bitcast i8* %call5 to %struct._ICurve*
  store %struct._ICurve* %8, %struct._ICurve** %curve, align 8
  %9 = load %struct._ICurve*, %struct._ICurve** %curve, align 8
  %points = getelementptr inbounds %struct._ICurve, %struct._ICurve* %9, i32 0, i32 4
  %10 = load %struct._GPtrArray*, %struct._GPtrArray** %points, align 8
  %tobool6 = icmp ne %struct._GPtrArray* %10, null
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %11 = load %struct._ICurve*, %struct._ICurve** %curve, align 8
  %points7 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %11, i32 0, i32 4
  %12 = load %struct._GPtrArray*, %struct._GPtrArray** %points7, align 8
  %call8 = call i8** @g_ptr_array_free(%struct._GPtrArray* %12, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %do.body

do.body:                                          ; preds = %if.end
  %13 = load %struct._ICurve*, %struct._ICurve** %curve, align 8
  %14 = bitcast %struct._ICurve* %13 to i8*
  call void @g_slice_free1(i64 24, i8* %14)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %mask = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %15, i32 0, i32 16
  %16 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %tobool9 = icmp ne %struct._GimpChannel* %16, null
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %while.end
  %17 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %mask11 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %17, i32 0, i32 16
  %18 = load %struct._GimpChannel*, %struct._GimpChannel** %mask11, align 8
  %19 = bitcast %struct._GimpChannel* %18 to i8*
  call void @g_object_unref(i8* %19)
  %20 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %mask12 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %20, i32 0, i32 16
  store %struct._GimpChannel* null, %struct._GimpChannel** %mask12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %while.end
  %21 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %gradient_map = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %21, i32 0, i32 17
  %22 = load %struct._TileManager*, %struct._TileManager** %gradient_map, align 8
  %tobool14 = icmp ne %struct._TileManager* %22, null
  br i1 %tobool14, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %if.end.13
  %23 = load %struct._Tile*, %struct._Tile** @cur_tile, align 8
  %tobool16 = icmp ne %struct._Tile* %23, null
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.15
  %24 = load %struct._Tile*, %struct._Tile** @cur_tile, align 8
  call void @tile_release(%struct._Tile* %24, i32 0)
  store %struct._Tile* null, %struct._Tile** @cur_tile, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.then.15
  %25 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %gradient_map19 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %25, i32 0, i32 17
  %26 = load %struct._TileManager*, %struct._TileManager** %gradient_map19, align 8
  call void @tile_manager_unref(%struct._TileManager* %26)
  %27 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %gradient_map20 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %27, i32 0, i32 17
  store %struct._TileManager* null, %struct._TileManager** %gradient_map20, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.18, %if.end.13
  %28 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %curve1 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %28, i32 0, i32 10
  store %struct._ICurve* null, %struct._ICurve** %curve1, align 8
  %29 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %curve2 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %29, i32 0, i32 11
  store %struct._ICurve* null, %struct._ICurve** %curve2, align 8
  %30 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %first_point = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %30, i32 0, i32 13
  store i32 1, i32* %first_point, align 4
  %31 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %connected = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %31, i32 0, i32 14
  store i32 0, i32* %connected, align 4
  %32 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %state = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %32, i32 0, i32 15
  store i32 0, i32* %state, align 4
  %33 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %dp_buf = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %33, i32 0, i32 8
  %34 = load %struct._TempBuf*, %struct._TempBuf** %dp_buf, align 8
  %tobool22 = icmp ne %struct._TempBuf* %34, null
  br i1 %tobool22, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %if.end.21
  %35 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %dp_buf24 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %35, i32 0, i32 8
  %36 = load %struct._TempBuf*, %struct._TempBuf** %dp_buf24, align 8
  call void @temp_buf_free(%struct._TempBuf* %36)
  %37 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %dp_buf25 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %37, i32 0, i32 8
  store %struct._TempBuf* null, %struct._TempBuf** %dp_buf25, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %if.end.21
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end.26, %sw.bb
  %38 = load i8*, i8** @gimp_iscissors_tool_parent_class, align 8
  %39 = bitcast i8* %38 to %struct._GTypeClass*
  %call27 = call i64 @gimp_tool_get_type() #5
  %call28 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %39, i64 %call27)
  %40 = bitcast %struct._GTypeClass* %call28 to %struct._GimpToolClass*
  %control = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %40, i32 0, i32 4
  %41 = load void (%struct._GimpTool*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)** %control, align 8
  %42 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %43 = load i32, i32* %action.addr, align 4
  %44 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %41(%struct._GimpTool* %42, i32 %43, %struct._GimpDisplay* %44)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_iscissors_tool_button_press(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %press_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %press_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %iscissors = alloca %struct._GimpIscissorsTool*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %press_type, i32* %press_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_iscissors_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIscissorsTool*
  store %struct._GimpIscissorsTool* %2, %struct._GimpIscissorsTool** %iscissors, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call2 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %3)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  %4 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %4, i32 0, i32 0
  %5 = load double, double* %x, align 8
  %call3 = call double @rint(double %5) #5
  %conv = fptosi double %call3 to i32
  %6 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %x4 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %6, i32 0, i32 2
  store i32 %conv, i32* %x4, align 4
  %7 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %7, i32 0, i32 1
  %8 = load double, double* %y, align 8
  %call5 = call double @rint(double %8) #5
  %conv6 = fptosi double %call5 to i32
  %9 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %y7 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %9, i32 0, i32 3
  store i32 %conv6, i32* %y7, align 4
  %10 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %11 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display8 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %11, i32 0, i32 4
  %12 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display8, align 8
  %cmp = icmp ne %struct._GimpDisplay* %10, %12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_control(%struct._GimpTool* %13, i32 2, %struct._GimpDisplay* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %15, i32 0, i32 3
  %16 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_activate(%struct._GimpToolControl* %16)
  %17 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %18 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display10 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %18, i32 0, i32 4
  store %struct._GimpDisplay* %17, %struct._GimpDisplay** %display10, align 8
  %19 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %state11 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %19, i32 0, i32 15
  %20 = load i32, i32* %state11, align 4
  switch i32 %20, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end
  %21 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %state12 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %21, i32 0, i32 15
  store i32 1, i32* %state12, align 4
  %22 = load i32, i32* %state.addr, align 4
  %and = and i32 %22, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.16, label %if.then.13

if.then.13:                                       ; preds = %sw.bb
  %23 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %25 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %x14 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %25, i32 0, i32 2
  %26 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %y15 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %26, i32 0, i32 3
  call void @find_max_gradient(%struct._GimpIscissorsTool* %23, %struct._GimpImage* %24, i32* %x14, i32* %y15)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %sw.bb
  %27 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %x17 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %27, i32 0, i32 2
  %28 = load i32, i32* %x17, align 4
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call18 = call i32 @gimp_image_get_width(%struct._GimpImage* %29)
  %sub = sub nsw i32 %call18, 1
  %cmp19 = icmp sgt i32 %28, %sub
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.16
  %30 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call21 = call i32 @gimp_image_get_width(%struct._GimpImage* %30)
  %sub22 = sub nsw i32 %call21, 1
  br label %cond.end.29

cond.false:                                       ; preds = %if.end.16
  %31 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %x23 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %31, i32 0, i32 2
  %32 = load i32, i32* %x23, align 4
  %cmp24 = icmp slt i32 %32, 0
  br i1 %cmp24, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %cond.false
  br label %cond.end

cond.false.27:                                    ; preds = %cond.false
  %33 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %x28 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %33, i32 0, i32 2
  %34 = load i32, i32* %x28, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.27, %cond.true.26
  %cond = phi i32 [ 0, %cond.true.26 ], [ %34, %cond.false.27 ]
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.end, %cond.true
  %cond30 = phi i32 [ %sub22, %cond.true ], [ %cond, %cond.end ]
  %35 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %x31 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %35, i32 0, i32 2
  store i32 %cond30, i32* %x31, align 4
  %36 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %y32 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %36, i32 0, i32 3
  %37 = load i32, i32* %y32, align 4
  %38 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call33 = call i32 @gimp_image_get_height(%struct._GimpImage* %38)
  %sub34 = sub nsw i32 %call33, 1
  %cmp35 = icmp sgt i32 %37, %sub34
  br i1 %cmp35, label %cond.true.37, label %cond.false.40

cond.true.37:                                     ; preds = %cond.end.29
  %39 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call38 = call i32 @gimp_image_get_height(%struct._GimpImage* %39)
  %sub39 = sub nsw i32 %call38, 1
  br label %cond.end.49

cond.false.40:                                    ; preds = %cond.end.29
  %40 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %y41 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %40, i32 0, i32 3
  %41 = load i32, i32* %y41, align 4
  %cmp42 = icmp slt i32 %41, 0
  br i1 %cmp42, label %cond.true.44, label %cond.false.45

cond.true.44:                                     ; preds = %cond.false.40
  br label %cond.end.47

cond.false.45:                                    ; preds = %cond.false.40
  %42 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %y46 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %42, i32 0, i32 3
  %43 = load i32, i32* %y46, align 4
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.45, %cond.true.44
  %cond48 = phi i32 [ 0, %cond.true.44 ], [ %43, %cond.false.45 ]
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.end.47, %cond.true.37
  %cond50 = phi i32 [ %sub39, %cond.true.37 ], [ %cond48, %cond.end.47 ]
  %44 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %y51 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %44, i32 0, i32 3
  store i32 %cond50, i32* %y51, align 4
  %45 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %x52 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %45, i32 0, i32 2
  %46 = load i32, i32* %x52, align 4
  %47 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %ix = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %47, i32 0, i32 4
  store i32 %46, i32* %ix, align 4
  %48 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %y53 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %48, i32 0, i32 3
  %49 = load i32, i32* %y53, align 4
  %50 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %iy = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %50, i32 0, i32 5
  store i32 %49, i32* %iy, align 4
  %51 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %52 = bitcast %struct._GimpTool* %51 to %struct._GTypeInstance*
  %call54 = call i64 @gimp_draw_tool_get_type() #5
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call54)
  %53 = bitcast %struct._GTypeInstance* %call55 to %struct._GimpDrawTool*
  %54 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_draw_tool_start(%struct._GimpDrawTool* %53, %struct._GimpDisplay* %54)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %55 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %56 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x56 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %56, i32 0, i32 0
  %57 = load double, double* %x56, align 8
  %58 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y57 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %58, i32 0, i32 1
  %59 = load double, double* %y57, align 8
  %call58 = call i32 @clicked_on_vertex(%struct._GimpIscissorsTool* %55, double %57, double %59)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then.60, label %if.else

if.then.60:                                       ; preds = %sw.default
  %60 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %x61 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %60, i32 0, i32 2
  %61 = load i32, i32* %x61, align 4
  %62 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %nx = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %62, i32 0, i32 6
  store i32 %61, i32* %nx, align 4
  %63 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %y62 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %63, i32 0, i32 3
  %64 = load i32, i32* %y62, align 4
  %65 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %ny = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %65, i32 0, i32 7
  store i32 %64, i32* %ny, align 4
  %66 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %state63 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %66, i32 0, i32 15
  store i32 2, i32* %state63, align 4
  %67 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %68 = bitcast %struct._GimpTool* %67 to %struct._GTypeInstance*
  %call64 = call i64 @gimp_draw_tool_get_type() #5
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call64)
  %69 = bitcast %struct._GTypeInstance* %call65 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %69)
  br label %if.end.88

if.else:                                          ; preds = %sw.default
  %70 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %connected = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %70, i32 0, i32 14
  %71 = load i32, i32* %connected, align 4
  %tobool66 = icmp ne i32 %71, 0
  br i1 %tobool66, label %land.lhs.true, label %if.else.77

land.lhs.true:                                    ; preds = %if.else
  %72 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %mask = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %72, i32 0, i32 16
  %73 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %tobool67 = icmp ne %struct._GimpChannel* %73, null
  br i1 %tobool67, label %land.lhs.true.68, label %if.else.77

land.lhs.true.68:                                 ; preds = %land.lhs.true
  %74 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %mask69 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %74, i32 0, i32 16
  %75 = load %struct._GimpChannel*, %struct._GimpChannel** %mask69, align 8
  %76 = bitcast %struct._GimpChannel* %75 to %struct._GTypeInstance*
  %call70 = call i64 @gimp_pickable_interface_get_type() #5
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call70)
  %77 = bitcast %struct._GTypeInstance* %call71 to %struct._GimpPickable*
  %78 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %x72 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %78, i32 0, i32 2
  %79 = load i32, i32* %x72, align 4
  %80 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %y73 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %80, i32 0, i32 3
  %81 = load i32, i32* %y73, align 4
  %call74 = call i32 @gimp_pickable_get_opacity_at(%struct._GimpPickable* %77, i32 %79, i32 %81)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %land.lhs.true.68
  %82 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %83 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_iscissors_tool_apply(%struct._GimpIscissorsTool* %82, %struct._GimpDisplay* %83)
  br label %if.end.87

if.else.77:                                       ; preds = %land.lhs.true.68, %land.lhs.true, %if.else
  %84 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %connected78 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %84, i32 0, i32 14
  %85 = load i32, i32* %connected78, align 4
  %tobool79 = icmp ne i32 %85, 0
  br i1 %tobool79, label %if.end.86, label %if.then.80

if.then.80:                                       ; preds = %if.else.77
  %86 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %87 = bitcast %struct._GimpTool* %86 to %struct._GTypeInstance*
  %call81 = call i64 @gimp_draw_tool_get_type() #5
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call81)
  %88 = bitcast %struct._GTypeInstance* %call82 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %88)
  %89 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %state83 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %89, i32 0, i32 15
  store i32 1, i32* %state83, align 4
  %90 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %91 = bitcast %struct._GimpTool* %90 to %struct._GTypeInstance*
  %call84 = call i64 @gimp_draw_tool_get_type() #5
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 %call84)
  %92 = bitcast %struct._GTypeInstance* %call85 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %92)
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.80, %if.else.77
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.then.76
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %if.then.60
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.88, %cond.end.49
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_iscissors_tool_button_release(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %release_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %release_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %iscissors = alloca %struct._GimpIscissorsTool*, align 8
  %curve = alloca %struct._ICurve*, align 8
  %curve35 = alloca %struct._ICurve*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %release_type, i32* %release_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_iscissors_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIscissorsTool*
  store %struct._GimpIscissorsTool* %2, %struct._GimpIscissorsTool** %iscissors, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 3
  %4 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_halt(%struct._GimpToolControl* %4)
  %5 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %state2 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %5, i32 0, i32 15
  %6 = load i32, i32* %state2, align 4
  %cmp = icmp eq i32 %6, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.75

if.end:                                           ; preds = %entry
  %7 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %8 = bitcast %struct._GimpTool* %7 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_draw_tool_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call3)
  %9 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %9)
  %10 = load i32, i32* %release_type.addr, align 4
  %cmp5 = icmp ne i32 %10, 1
  br i1 %cmp5, label %if.then.6, label %if.end.68

if.then.6:                                        ; preds = %if.end
  %11 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %state7 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %11, i32 0, i32 15
  %12 = load i32, i32* %state7, align 4
  switch i32 %12, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.49
  ]

sw.bb:                                            ; preds = %if.then.6
  %13 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %first_point = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %13, i32 0, i32 13
  %14 = load i32, i32* %first_point, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.else, label %if.then.8

if.then.8:                                        ; preds = %sw.bb
  %15 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %curves = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %15, i32 0, i32 12
  %16 = load %struct._GQueue*, %struct._GQueue** %curves, align 8
  %call9 = call i32 @g_queue_is_empty(%struct._GQueue* %16)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.27, label %if.then.11

if.then.11:                                       ; preds = %if.then.8
  %17 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %curves12 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %17, i32 0, i32 12
  %18 = load %struct._GQueue*, %struct._GQueue** %curves12, align 8
  %call13 = call i8* @g_queue_peek_head(%struct._GQueue* %18)
  %19 = bitcast i8* %call13 to %struct._ICurve*
  store %struct._ICurve* %19, %struct._ICurve** %curve, align 8
  %20 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %21 = bitcast %struct._GimpTool* %20 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_draw_tool_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call14)
  %22 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpDrawTool*
  %23 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %24 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %x = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %24, i32 0, i32 2
  %25 = load i32, i32* %x, align 4
  %conv = sitofp i32 %25 to double
  %26 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %y = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %26, i32 0, i32 3
  %27 = load i32, i32* %y, align 4
  %conv16 = sitofp i32 %27 to double
  %28 = load %struct._ICurve*, %struct._ICurve** %curve, align 8
  %x1 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %28, i32 0, i32 0
  %29 = load i32, i32* %x1, align 4
  %conv17 = sitofp i32 %29 to double
  %30 = load %struct._ICurve*, %struct._ICurve** %curve, align 8
  %y1 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %30, i32 0, i32 1
  %31 = load i32, i32* %y1, align 4
  %conv18 = sitofp i32 %31 to double
  %call19 = call i32 @gimp_draw_tool_on_handle(%struct._GimpDrawTool* %22, %struct._GimpDisplay* %23, double %conv, double %conv16, i32 2, double %conv17, double %conv18, i32 13, i32 13, i32 0)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.26

if.then.21:                                       ; preds = %if.then.11
  %32 = load %struct._ICurve*, %struct._ICurve** %curve, align 8
  %x122 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %32, i32 0, i32 0
  %33 = load i32, i32* %x122, align 4
  %34 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %x23 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %34, i32 0, i32 2
  store i32 %33, i32* %x23, align 4
  %35 = load %struct._ICurve*, %struct._ICurve** %curve, align 8
  %y124 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %35, i32 0, i32 1
  %36 = load i32, i32* %y124, align 4
  %37 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %y25 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %37, i32 0, i32 3
  store i32 %36, i32* %y25, align 4
  %38 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %connected = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %38, i32 0, i32 14
  store i32 1, i32* %connected, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.21, %if.then.11
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.8
  %39 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %ix = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %39, i32 0, i32 4
  %40 = load i32, i32* %ix, align 4
  %41 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %x28 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %41, i32 0, i32 2
  %42 = load i32, i32* %x28, align 4
  %cmp29 = icmp ne i32 %40, %42
  br i1 %cmp29, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.27
  %43 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %iy = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %43, i32 0, i32 5
  %44 = load i32, i32* %iy, align 4
  %45 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %y31 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %45, i32 0, i32 3
  %46 = load i32, i32* %y31, align 4
  %cmp32 = icmp ne i32 %44, %46
  br i1 %cmp32, label %if.then.34, label %if.end.46

if.then.34:                                       ; preds = %lor.lhs.false, %if.end.27
  %call36 = call noalias i8* @g_slice_alloc(i64 24)
  %47 = bitcast i8* %call36 to %struct._ICurve*
  store %struct._ICurve* %47, %struct._ICurve** %curve35, align 8
  %48 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %ix37 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %48, i32 0, i32 4
  %49 = load i32, i32* %ix37, align 4
  %50 = load %struct._ICurve*, %struct._ICurve** %curve35, align 8
  %x138 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %50, i32 0, i32 0
  store i32 %49, i32* %x138, align 4
  %51 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %iy39 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %51, i32 0, i32 5
  %52 = load i32, i32* %iy39, align 4
  %53 = load %struct._ICurve*, %struct._ICurve** %curve35, align 8
  %y140 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %53, i32 0, i32 1
  store i32 %52, i32* %y140, align 4
  %54 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %x41 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %54, i32 0, i32 2
  %55 = load i32, i32* %x41, align 4
  %56 = load %struct._ICurve*, %struct._ICurve** %curve35, align 8
  %x2 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %56, i32 0, i32 2
  store i32 %55, i32* %x2, align 4
  %57 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %ix42 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %57, i32 0, i32 4
  store i32 %55, i32* %ix42, align 4
  %58 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %y43 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %58, i32 0, i32 3
  %59 = load i32, i32* %y43, align 4
  %60 = load %struct._ICurve*, %struct._ICurve** %curve35, align 8
  %y2 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %60, i32 0, i32 3
  store i32 %59, i32* %y2, align 4
  %61 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %iy44 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %61, i32 0, i32 5
  store i32 %59, i32* %iy44, align 4
  %62 = load %struct._ICurve*, %struct._ICurve** %curve35, align 8
  %points = getelementptr inbounds %struct._ICurve, %struct._ICurve* %62, i32 0, i32 4
  store %struct._GPtrArray* null, %struct._GPtrArray** %points, align 8
  %63 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %curves45 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %63, i32 0, i32 12
  %64 = load %struct._GQueue*, %struct._GQueue** %curves45, align 8
  %65 = load %struct._ICurve*, %struct._ICurve** %curve35, align 8
  %66 = bitcast %struct._ICurve* %65 to i8*
  call void @g_queue_push_tail(%struct._GQueue* %64, i8* %66)
  %67 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %68 = load %struct._ICurve*, %struct._ICurve** %curve35, align 8
  call void @calculate_curve(%struct._GimpIscissorsTool* %67, %struct._ICurve* %68)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.34, %lor.lhs.false
  br label %if.end.48

if.else:                                          ; preds = %sw.bb
  %69 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %first_point47 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %69, i32 0, i32 13
  store i32 0, i32* %first_point47, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.else, %if.end.46
  br label %sw.epilog

sw.bb.49:                                         ; preds = %if.then.6
  %70 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %curve1 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %70, i32 0, i32 10
  %71 = load %struct._ICurve*, %struct._ICurve** %curve1, align 8
  %tobool50 = icmp ne %struct._ICurve* %71, null
  br i1 %tobool50, label %if.then.51, label %if.end.57

if.then.51:                                       ; preds = %sw.bb.49
  %72 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %nx = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %72, i32 0, i32 6
  %73 = load i32, i32* %nx, align 4
  %74 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %curve152 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %74, i32 0, i32 10
  %75 = load %struct._ICurve*, %struct._ICurve** %curve152, align 8
  %x153 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %75, i32 0, i32 0
  store i32 %73, i32* %x153, align 4
  %76 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %ny = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %76, i32 0, i32 7
  %77 = load i32, i32* %ny, align 4
  %78 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %curve154 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %78, i32 0, i32 10
  %79 = load %struct._ICurve*, %struct._ICurve** %curve154, align 8
  %y155 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %79, i32 0, i32 1
  store i32 %77, i32* %y155, align 4
  %80 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %81 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %curve156 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %81, i32 0, i32 10
  %82 = load %struct._ICurve*, %struct._ICurve** %curve156, align 8
  call void @calculate_curve(%struct._GimpIscissorsTool* %80, %struct._ICurve* %82)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.51, %sw.bb.49
  %83 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %curve2 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %83, i32 0, i32 11
  %84 = load %struct._ICurve*, %struct._ICurve** %curve2, align 8
  %tobool58 = icmp ne %struct._ICurve* %84, null
  br i1 %tobool58, label %if.then.59, label %if.end.67

if.then.59:                                       ; preds = %if.end.57
  %85 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %nx60 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %85, i32 0, i32 6
  %86 = load i32, i32* %nx60, align 4
  %87 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %curve261 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %87, i32 0, i32 11
  %88 = load %struct._ICurve*, %struct._ICurve** %curve261, align 8
  %x262 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %88, i32 0, i32 2
  store i32 %86, i32* %x262, align 4
  %89 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %ny63 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %89, i32 0, i32 7
  %90 = load i32, i32* %ny63, align 4
  %91 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %curve264 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %91, i32 0, i32 11
  %92 = load %struct._ICurve*, %struct._ICurve** %curve264, align 8
  %y265 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %92, i32 0, i32 3
  store i32 %90, i32* %y265, align 4
  %93 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %94 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %curve266 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %94, i32 0, i32 11
  %95 = load %struct._ICurve*, %struct._ICurve** %curve266, align 8
  call void @calculate_curve(%struct._GimpIscissorsTool* %93, %struct._ICurve* %95)
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.59, %if.end.57
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.67, %if.end.48
  br label %if.end.68

if.end.68:                                        ; preds = %sw.epilog, %if.end
  %96 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %state69 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %96, i32 0, i32 15
  store i32 3, i32* %state69, align 4
  %97 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %98 = bitcast %struct._GimpTool* %97 to %struct._GTypeInstance*
  %call70 = call i64 @gimp_draw_tool_get_type() #5
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call70)
  %99 = bitcast %struct._GTypeInstance* %call71 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %99)
  %100 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %connected72 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %100, i32 0, i32 14
  %101 = load i32, i32* %connected72, align 4
  %tobool73 = icmp ne i32 %101, 0
  br i1 %tobool73, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.end.68
  %102 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %103 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @iscissors_convert(%struct._GimpIscissorsTool* %102, %struct._GimpDisplay* %103)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then, %if.then.74, %if.end.68
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_iscissors_tool_motion(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %iscissors = alloca %struct._GimpIscissorsTool*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_iscissors_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIscissorsTool*
  store %struct._GimpIscissorsTool* %2, %struct._GimpIscissorsTool** %iscissors, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call2 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %3)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  %4 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %state3 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %4, i32 0, i32 15
  %5 = load i32, i32* %state3, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %7 = bitcast %struct._GimpTool* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_draw_tool_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %8)
  %9 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %9, i32 0, i32 0
  %10 = load double, double* %x, align 8
  %call6 = call double @rint(double %10) #5
  %conv = fptosi double %call6 to i32
  %11 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %x7 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %11, i32 0, i32 2
  store i32 %conv, i32* %x7, align 4
  %12 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %12, i32 0, i32 1
  %13 = load double, double* %y, align 8
  %call8 = call double @rint(double %13) #5
  %conv9 = fptosi double %call8 to i32
  %14 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %y10 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %14, i32 0, i32 3
  store i32 %conv9, i32* %y10, align 4
  %15 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %state11 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %15, i32 0, i32 15
  %16 = load i32, i32* %state11, align 4
  switch i32 %16, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.56
  ]

sw.bb:                                            ; preds = %if.end
  %17 = load i32, i32* %state.addr, align 4
  %and = and i32 %17, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.15, label %if.then.12

if.then.12:                                       ; preds = %sw.bb
  %18 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %20 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %x13 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %20, i32 0, i32 2
  %21 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %y14 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %21, i32 0, i32 3
  call void @find_max_gradient(%struct._GimpIscissorsTool* %18, %struct._GimpImage* %19, i32* %x13, i32* %y14)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %sw.bb
  %22 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %x16 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %22, i32 0, i32 2
  %23 = load i32, i32* %x16, align 4
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call17 = call i32 @gimp_image_get_width(%struct._GimpImage* %24)
  %sub = sub nsw i32 %call17, 1
  %cmp18 = icmp sgt i32 %23, %sub
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.15
  %25 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call20 = call i32 @gimp_image_get_width(%struct._GimpImage* %25)
  %sub21 = sub nsw i32 %call20, 1
  br label %cond.end.28

cond.false:                                       ; preds = %if.end.15
  %26 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %x22 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %26, i32 0, i32 2
  %27 = load i32, i32* %x22, align 4
  %cmp23 = icmp slt i32 %27, 0
  br i1 %cmp23, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %cond.false
  br label %cond.end

cond.false.26:                                    ; preds = %cond.false
  %28 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %x27 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %28, i32 0, i32 2
  %29 = load i32, i32* %x27, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.26, %cond.true.25
  %cond = phi i32 [ 0, %cond.true.25 ], [ %29, %cond.false.26 ]
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.end, %cond.true
  %cond29 = phi i32 [ %sub21, %cond.true ], [ %cond, %cond.end ]
  %30 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %x30 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %30, i32 0, i32 2
  store i32 %cond29, i32* %x30, align 4
  %31 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %y31 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %31, i32 0, i32 3
  %32 = load i32, i32* %y31, align 4
  %33 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call32 = call i32 @gimp_image_get_height(%struct._GimpImage* %33)
  %sub33 = sub nsw i32 %call32, 1
  %cmp34 = icmp sgt i32 %32, %sub33
  br i1 %cmp34, label %cond.true.36, label %cond.false.39

cond.true.36:                                     ; preds = %cond.end.28
  %34 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call37 = call i32 @gimp_image_get_height(%struct._GimpImage* %34)
  %sub38 = sub nsw i32 %call37, 1
  br label %cond.end.48

cond.false.39:                                    ; preds = %cond.end.28
  %35 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %y40 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %35, i32 0, i32 3
  %36 = load i32, i32* %y40, align 4
  %cmp41 = icmp slt i32 %36, 0
  br i1 %cmp41, label %cond.true.43, label %cond.false.44

cond.true.43:                                     ; preds = %cond.false.39
  br label %cond.end.46

cond.false.44:                                    ; preds = %cond.false.39
  %37 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %y45 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %37, i32 0, i32 3
  %38 = load i32, i32* %y45, align 4
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.44, %cond.true.43
  %cond47 = phi i32 [ 0, %cond.true.43 ], [ %38, %cond.false.44 ]
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.end.46, %cond.true.36
  %cond49 = phi i32 [ %sub38, %cond.true.36 ], [ %cond47, %cond.end.46 ]
  %39 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %y50 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %39, i32 0, i32 3
  store i32 %cond49, i32* %y50, align 4
  %40 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %first_point = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %40, i32 0, i32 13
  %41 = load i32, i32* %first_point, align 4
  %tobool51 = icmp ne i32 %41, 0
  br i1 %tobool51, label %if.then.52, label %if.end.55

if.then.52:                                       ; preds = %cond.end.48
  %42 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %x53 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %42, i32 0, i32 2
  %43 = load i32, i32* %x53, align 4
  %44 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %ix = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %44, i32 0, i32 4
  store i32 %43, i32* %ix, align 4
  %45 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %y54 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %45, i32 0, i32 3
  %46 = load i32, i32* %y54, align 4
  %47 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %iy = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %47, i32 0, i32 5
  store i32 %46, i32* %iy, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.52, %cond.end.48
  br label %sw.epilog

sw.bb.56:                                         ; preds = %if.end
  %48 = load i32, i32* %state.addr, align 4
  %and57 = and i32 %48, 1
  %tobool58 = icmp ne i32 %and57, 0
  br i1 %tobool58, label %if.end.62, label %if.then.59

if.then.59:                                       ; preds = %sw.bb.56
  %49 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %50 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %51 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %x60 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %51, i32 0, i32 2
  %52 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %y61 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %52, i32 0, i32 3
  call void @find_max_gradient(%struct._GimpIscissorsTool* %49, %struct._GimpImage* %50, i32* %x60, i32* %y61)
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.59, %sw.bb.56
  %53 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %x63 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %53, i32 0, i32 2
  %54 = load i32, i32* %x63, align 4
  %55 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call64 = call i32 @gimp_image_get_width(%struct._GimpImage* %55)
  %sub65 = sub nsw i32 %call64, 1
  %cmp66 = icmp sgt i32 %54, %sub65
  br i1 %cmp66, label %cond.true.68, label %cond.false.71

cond.true.68:                                     ; preds = %if.end.62
  %56 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call69 = call i32 @gimp_image_get_width(%struct._GimpImage* %56)
  %sub70 = sub nsw i32 %call69, 1
  br label %cond.end.80

cond.false.71:                                    ; preds = %if.end.62
  %57 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %x72 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %57, i32 0, i32 2
  %58 = load i32, i32* %x72, align 4
  %cmp73 = icmp slt i32 %58, 0
  br i1 %cmp73, label %cond.true.75, label %cond.false.76

cond.true.75:                                     ; preds = %cond.false.71
  br label %cond.end.78

cond.false.76:                                    ; preds = %cond.false.71
  %59 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %x77 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %59, i32 0, i32 2
  %60 = load i32, i32* %x77, align 4
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.76, %cond.true.75
  %cond79 = phi i32 [ 0, %cond.true.75 ], [ %60, %cond.false.76 ]
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.end.78, %cond.true.68
  %cond81 = phi i32 [ %sub70, %cond.true.68 ], [ %cond79, %cond.end.78 ]
  %61 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %x82 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %61, i32 0, i32 2
  store i32 %cond81, i32* %x82, align 4
  %62 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %y83 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %62, i32 0, i32 3
  %63 = load i32, i32* %y83, align 4
  %64 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call84 = call i32 @gimp_image_get_height(%struct._GimpImage* %64)
  %sub85 = sub nsw i32 %call84, 1
  %cmp86 = icmp sgt i32 %63, %sub85
  br i1 %cmp86, label %cond.true.88, label %cond.false.91

cond.true.88:                                     ; preds = %cond.end.80
  %65 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call89 = call i32 @gimp_image_get_height(%struct._GimpImage* %65)
  %sub90 = sub nsw i32 %call89, 1
  br label %cond.end.100

cond.false.91:                                    ; preds = %cond.end.80
  %66 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %y92 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %66, i32 0, i32 3
  %67 = load i32, i32* %y92, align 4
  %cmp93 = icmp slt i32 %67, 0
  br i1 %cmp93, label %cond.true.95, label %cond.false.96

cond.true.95:                                     ; preds = %cond.false.91
  br label %cond.end.98

cond.false.96:                                    ; preds = %cond.false.91
  %68 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %y97 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %68, i32 0, i32 3
  %69 = load i32, i32* %y97, align 4
  br label %cond.end.98

cond.end.98:                                      ; preds = %cond.false.96, %cond.true.95
  %cond99 = phi i32 [ 0, %cond.true.95 ], [ %69, %cond.false.96 ]
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.end.98, %cond.true.88
  %cond101 = phi i32 [ %sub90, %cond.true.88 ], [ %cond99, %cond.end.98 ]
  %70 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %y102 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %70, i32 0, i32 3
  store i32 %cond101, i32* %y102, align 4
  %71 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %x103 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %71, i32 0, i32 2
  %72 = load i32, i32* %x103, align 4
  %73 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %nx = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %73, i32 0, i32 6
  store i32 %72, i32* %nx, align 4
  %74 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %y104 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %74, i32 0, i32 3
  %75 = load i32, i32* %y104, align 4
  %76 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %ny = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %76, i32 0, i32 7
  store i32 %75, i32* %ny, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %cond.end.100, %if.end.55
  %77 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %78 = bitcast %struct._GimpTool* %77 to %struct._GTypeInstance*
  %call105 = call i64 @gimp_draw_tool_get_type() #5
  %call106 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call105)
  %79 = bitcast %struct._GTypeInstance* %call106 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %79)
  br label %return

return:                                           ; preds = %sw.epilog, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_iscissors_tool_oper_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, i32 %proximity, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %proximity.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %iscissors = alloca %struct._GimpIscissorsTool*, align 8
  %status = alloca i8*, align 8
  %curve = alloca %struct._ICurve*, align 8
  %status60 = alloca i8*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store i32 %proximity, i32* %proximity.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_iscissors_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIscissorsTool*
  store %struct._GimpIscissorsTool* %2, %struct._GimpIscissorsTool** %iscissors, align 8
  %3 = load i8*, i8** @gimp_iscissors_tool_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_tool_get_type() #5
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpToolClass*
  %oper_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %5, i32 0, i32 12
  %6 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %oper_update, align 8
  %7 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %8 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %9 = load i32, i32* %state.addr, align 4
  %10 = load i32, i32* %proximity.addr, align 4
  %11 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %6(%struct._GimpTool* %7, %struct._GimpCoords* %8, i32 %9, i32 %10, %struct._GimpDisplay* %11)
  %12 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %13 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %13, i32 0, i32 0
  %14 = load double, double* %x, align 8
  %15 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %15, i32 0, i32 1
  %16 = load double, double* %y, align 8
  %call4 = call i32 @mouse_over_vertex(%struct._GimpIscissorsTool* %12, double %14, double %16)
  %cmp = icmp sgt i32 %call4, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i32 0, i32 0)) #6
  %17 = load i32, i32* %state.addr, align 4
  %neg = xor i32 %17, -1
  %and = and i32 1, %neg
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0)) #6
  %call7 = call i8* @gimp_suggest_modifiers(i8* %call5, i32 %and, i8* %call6, i8* null, i8* null)
  store i8* %call7, i8** %status, align 8
  %18 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %19 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %20 = load i8*, i8** %status, align 8
  call void (%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) @gimp_tool_replace_status(%struct._GimpTool* %18, %struct._GimpDisplay* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* %20)
  %21 = load i8*, i8** %status, align 8
  call void @g_free(i8* %21)
  %22 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %op = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %22, i32 0, i32 1
  store i32 2, i32* %op, align 4
  br label %if.end.71

if.else:                                          ; preds = %entry
  %23 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %24 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x8 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %24, i32 0, i32 0
  %25 = load double, double* %x8, align 8
  %26 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y9 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %26, i32 0, i32 1
  %27 = load double, double* %y9, align 8
  %call10 = call %struct._GList* @mouse_over_curve(%struct._GimpIscissorsTool* %23, double %25, double %27)
  %tobool = icmp ne %struct._GList* %call10, null
  br i1 %tobool, label %if.then.11, label %if.else.28

if.then.11:                                       ; preds = %if.else
  %28 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %curves = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %28, i32 0, i32 12
  %29 = load %struct._GQueue*, %struct._GQueue** %curves, align 8
  %call12 = call i8* @g_queue_peek_head(%struct._GQueue* %29)
  %30 = bitcast i8* %call12 to %struct._ICurve*
  store %struct._ICurve* %30, %struct._ICurve** %curve, align 8
  %31 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %32 = bitcast %struct._GimpTool* %31 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_draw_tool_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call13)
  %33 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpDrawTool*
  %34 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %35 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x15 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %35, i32 0, i32 0
  %36 = load double, double* %x15, align 8
  %call16 = call double @rint(double %36) #5
  %37 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y17 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %37, i32 0, i32 1
  %38 = load double, double* %y17, align 8
  %call18 = call double @rint(double %38) #5
  %39 = load %struct._ICurve*, %struct._ICurve** %curve, align 8
  %x1 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %39, i32 0, i32 0
  %40 = load i32, i32* %x1, align 4
  %conv = sitofp i32 %40 to double
  %41 = load %struct._ICurve*, %struct._ICurve** %curve, align 8
  %y1 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %41, i32 0, i32 1
  %42 = load i32, i32* %y1, align 4
  %conv19 = sitofp i32 %42 to double
  %call20 = call i32 @gimp_draw_tool_on_handle(%struct._GimpDrawTool* %33, %struct._GimpDisplay* %34, double %call16, double %call18, i32 2, double %conv, double %conv19, i32 13, i32 13, i32 0)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.else.25

if.then.22:                                       ; preds = %if.then.11
  %43 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %44 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call23 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0)) #6
  call void (%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) @gimp_tool_replace_status(%struct._GimpTool* %43, %struct._GimpDisplay* %44, i8* %call23)
  %45 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %op24 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %45, i32 0, i32 1
  store i32 4, i32* %op24, align 4
  br label %if.end

if.else.25:                                       ; preds = %if.then.11
  %46 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %47 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i32 0, i32 0)) #6
  call void (%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) @gimp_tool_replace_status(%struct._GimpTool* %46, %struct._GimpDisplay* %47, i8* %call26)
  %48 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %op27 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %48, i32 0, i32 1
  store i32 3, i32* %op27, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.25, %if.then.22
  br label %if.end.70

if.else.28:                                       ; preds = %if.else
  %49 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %connected = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %49, i32 0, i32 14
  %50 = load i32, i32* %connected, align 4
  %tobool29 = icmp ne i32 %50, 0
  br i1 %tobool29, label %land.lhs.true, label %if.else.56

land.lhs.true:                                    ; preds = %if.else.28
  %51 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %mask = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %51, i32 0, i32 16
  %52 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %tobool30 = icmp ne %struct._GimpChannel* %52, null
  br i1 %tobool30, label %if.then.31, label %if.else.56

if.then.31:                                       ; preds = %land.lhs.true
  %53 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %mask32 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %53, i32 0, i32 16
  %54 = load %struct._GimpChannel*, %struct._GimpChannel** %mask32, align 8
  %55 = bitcast %struct._GimpChannel* %54 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_pickable_interface_get_type() #5
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call33)
  %56 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpPickable*
  %57 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x35 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %57, i32 0, i32 0
  %58 = load double, double* %x35, align 8
  %call36 = call double @rint(double %58) #5
  %conv37 = fptosi double %call36 to i32
  %59 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y38 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %59, i32 0, i32 1
  %60 = load double, double* %y38, align 8
  %call39 = call double @rint(double %60) #5
  %conv40 = fptosi double %call39 to i32
  %call41 = call i32 @gimp_pickable_get_opacity_at(%struct._GimpPickable* %56, i32 %conv37, i32 %conv40)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.43, label %if.else.49

if.then.43:                                       ; preds = %if.then.31
  %61 = load i32, i32* %proximity.addr, align 4
  %tobool44 = icmp ne i32 %61, 0
  br i1 %tobool44, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %if.then.43
  %62 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %63 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call46 = call i8* @gettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i32 0, i32 0)) #6
  call void (%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) @gimp_tool_replace_status(%struct._GimpTool* %62, %struct._GimpDisplay* %63, i8* %call46)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %if.then.43
  %64 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %op48 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %64, i32 0, i32 1
  store i32 1, i32* %op48, align 4
  br label %if.end.55

if.else.49:                                       ; preds = %if.then.31
  %65 = load i32, i32* %proximity.addr, align 4
  %tobool50 = icmp ne i32 %65, 0
  br i1 %tobool50, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.else.49
  %66 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %67 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call52 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i32 0, i32 0)) #6
  call void (%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) @gimp_tool_replace_status(%struct._GimpTool* %66, %struct._GimpDisplay* %67, i8* %call52)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.else.49
  %68 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %op54 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %68, i32 0, i32 1
  store i32 5, i32* %op54, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.53, %if.end.47
  br label %if.end.69

if.else.56:                                       ; preds = %land.lhs.true, %if.else.28
  %69 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %state57 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %69, i32 0, i32 15
  %70 = load i32, i32* %state57, align 4
  switch i32 %70, label %sw.default [
    i32 3, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.else.56
  %71 = load i32, i32* %proximity.addr, align 4
  %tobool58 = icmp ne i32 %71, 0
  br i1 %tobool58, label %if.then.59, label %if.end.66

if.then.59:                                       ; preds = %sw.bb
  %call61 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i32 0, i32 0)) #6
  %72 = load i32, i32* %state.addr, align 4
  %neg62 = xor i32 %72, -1
  %and63 = and i32 1, %neg62
  %call64 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0)) #6
  %call65 = call i8* @gimp_suggest_modifiers(i8* %call61, i32 %and63, i8* %call64, i8* null, i8* null)
  store i8* %call65, i8** %status60, align 8
  %73 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %74 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %75 = load i8*, i8** %status60, align 8
  call void (%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) @gimp_tool_replace_status(%struct._GimpTool* %73, %struct._GimpDisplay* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* %75)
  %76 = load i8*, i8** %status60, align 8
  call void @g_free(i8* %76)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.59, %sw.bb
  %77 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %op67 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %77, i32 0, i32 1
  store i32 3, i32* %op67, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.else.56
  %78 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %op68 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %78, i32 0, i32 1
  store i32 0, i32* %op68, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.66
  br label %if.end.69

if.end.69:                                        ; preds = %sw.epilog, %if.end.55
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.end
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_iscissors_tool_cursor_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %iscissors = alloca %struct._GimpIscissorsTool*, align 8
  %modifier = alloca i32, align 4
  %options = alloca %struct._GimpSelectionOptions*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_iscissors_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIscissorsTool*
  store %struct._GimpIscissorsTool* %2, %struct._GimpIscissorsTool** %iscissors, align 8
  store i32 0, i32* %modifier, align 4
  %3 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %op = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %3, i32 0, i32 1
  %4 = load i32, i32* %op, align 4
  switch i32 %4, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.7
    i32 3, label %sw.bb.8
    i32 4, label %sw.bb.9
    i32 5, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %6 = bitcast %struct._GimpTool* %5 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call2)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %7)
  %8 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_selection_options_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpSelectionOptions*
  store %struct._GimpSelectionOptions* %9, %struct._GimpSelectionOptions** %options, align 8
  %10 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %options, align 8
  %operation = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %10, i32 0, i32 1
  %11 = load i32, i32* %operation, align 4
  %cmp = icmp eq i32 %11, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 13, i32* %modifier, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  store i32 5, i32* %modifier, align 4
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  store i32 2, i32* %modifier, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  store i32 12, i32* %modifier, align 4
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  store i32 1, i32* %modifier, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %if.end
  %12 = load i32, i32* %modifier, align 4
  %cmp11 = icmp ne i32 %12, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %sw.epilog
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %15 = load i32, i32* %modifier, align 4
  call void @gimp_tool_set_cursor(%struct._GimpTool* %13, %struct._GimpDisplay* %14, i32 1025, i32 10, i32 %15)
  br label %if.end.15

if.else:                                          ; preds = %sw.epilog
  %16 = load i8*, i8** @gimp_iscissors_tool_parent_class, align 8
  %17 = bitcast i8* %16 to %struct._GTypeClass*
  %call13 = call i64 @gimp_tool_get_type() #5
  %call14 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %17, i64 %call13)
  %18 = bitcast %struct._GTypeClass* %call14 to %struct._GimpToolClass*
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %18, i32 0, i32 13
  %19 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %20 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %21 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %22 = load i32, i32* %state.addr, align 4
  %23 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %19(%struct._GimpTool* %20, %struct._GimpCoords* %21, i32 %22, %struct._GimpDisplay* %23)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.12
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_iscissors_tool_key_press(%struct._GimpTool* %tool, %struct._GdkEventKey* %kevent, %struct._GimpDisplay* %display) #3 {
entry:
  %retval = alloca i32, align 4
  %tool.addr = alloca %struct._GimpTool*, align 8
  %kevent.addr = alloca %struct._GdkEventKey*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %iscissors = alloca %struct._GimpIscissorsTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GdkEventKey* %kevent, %struct._GdkEventKey** %kevent.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_iscissors_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIscissorsTool*
  store %struct._GimpIscissorsTool* %2, %struct._GimpIscissorsTool** %iscissors, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %4 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display2 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %4, i32 0, i32 4
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display2, align 8
  %cmp = icmp ne %struct._GimpDisplay* %3, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %keyval = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %6, i32 0, i32 5
  %7 = load i32, i32* %keyval, align 4
  switch i32 %7, label %sw.default [
    i32 65293, label %sw.bb
    i32 65421, label %sw.bb
    i32 65076, label %sw.bb
    i32 65307, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end
  %8 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %connected = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %8, i32 0, i32 14
  %9 = load i32, i32* %connected, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %sw.bb
  %10 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %mask = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %10, i32 0, i32 16
  %11 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %tobool3 = icmp ne %struct._GimpChannel* %11, null
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %land.lhs.true
  %12 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_iscissors_tool_apply(%struct._GimpIscissorsTool* %12, %struct._GimpDisplay* %13)
  store i32 1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %land.lhs.true, %sw.bb
  store i32 0, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %if.end
  %14 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %15 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_control(%struct._GimpTool* %14, i32 2, %struct._GimpDisplay* %15)
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.6, %if.end.5, %if.then.4, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal void @gimp_iscissors_tool_draw(%struct._GimpDrawTool* %draw_tool) #3 {
entry:
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %iscissors = alloca %struct._GimpIscissorsTool*, align 8
  %options = alloca %struct._GimpIscissorsOptions*, align 8
  %curve = alloca %struct._ICurve*, align 8
  %list = alloca %struct._GList*, align 8
  %curve83 = alloca %struct._ICurve*, align 8
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_iscissors_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIscissorsTool*
  store %struct._GimpIscissorsTool* %2, %struct._GimpIscissorsTool** %iscissors, align 8
  %3 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %4 = bitcast %struct._GimpDrawTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_iscissors_options_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpIscissorsOptions*
  store %struct._GimpIscissorsOptions* %7, %struct._GimpIscissorsOptions** %options, align 8
  %8 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %state = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %8, i32 0, i32 15
  %9 = load i32, i32* %state, align 4
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.then, label %if.end.69

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %11 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %x = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %11, i32 0, i32 2
  %12 = load i32, i32* %x, align 4
  %conv = sitofp i32 %12 to double
  %13 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %y = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %13, i32 0, i32 3
  %14 = load i32, i32* %y, align 4
  %conv7 = sitofp i32 %14 to double
  %call8 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %10, i32 4, double %conv, double %conv7, i32 13, i32 13, i32 0)
  %15 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %first_point = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %15, i32 0, i32 13
  %16 = load i32, i32* %first_point, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.end.68, label %if.then.9

if.then.9:                                        ; preds = %if.then
  %17 = load %struct._GimpIscissorsOptions*, %struct._GimpIscissorsOptions** %options, align 8
  %interactive = getelementptr inbounds %struct._GimpIscissorsOptions, %struct._GimpIscissorsOptions* %17, i32 0, i32 1
  %18 = load i32, i32* %interactive, align 4
  %tobool10 = icmp ne i32 %18, 0
  br i1 %tobool10, label %if.else, label %if.then.11

if.then.11:                                       ; preds = %if.then.9
  %19 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %20 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %ix = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %20, i32 0, i32 4
  %21 = load i32, i32* %ix, align 4
  %conv12 = sitofp i32 %21 to double
  %22 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %iy = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %22, i32 0, i32 5
  %23 = load i32, i32* %iy, align 4
  %conv13 = sitofp i32 %23 to double
  %24 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %x14 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %24, i32 0, i32 2
  %25 = load i32, i32* %x14, align 4
  %conv15 = sitofp i32 %25 to double
  %26 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %y16 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %26, i32 0, i32 3
  %27 = load i32, i32* %y16, align 4
  %conv17 = sitofp i32 %27 to double
  %call18 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_line(%struct._GimpDrawTool* %19, double %conv12, double %conv13, double %conv15, double %conv17)
  br label %if.end.67

if.else:                                          ; preds = %if.then.9
  %28 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %livewire = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %28, i32 0, i32 9
  %29 = load %struct._ICurve*, %struct._ICurve** %livewire, align 8
  %tobool19 = icmp ne %struct._ICurve* %29, null
  br i1 %tobool19, label %lor.lhs.false, label %if.then.41

lor.lhs.false:                                    ; preds = %if.else
  %30 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %livewire20 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %30, i32 0, i32 9
  %31 = load %struct._ICurve*, %struct._ICurve** %livewire20, align 8
  %tobool21 = icmp ne %struct._ICurve* %31, null
  br i1 %tobool21, label %land.lhs.true, label %if.end.65

land.lhs.true:                                    ; preds = %lor.lhs.false
  %32 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %ix22 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %32, i32 0, i32 4
  %33 = load i32, i32* %ix22, align 4
  %34 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %livewire23 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %34, i32 0, i32 9
  %35 = load %struct._ICurve*, %struct._ICurve** %livewire23, align 8
  %x1 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %35, i32 0, i32 0
  %36 = load i32, i32* %x1, align 4
  %cmp24 = icmp ne i32 %33, %36
  br i1 %cmp24, label %if.then.41, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %land.lhs.true
  %37 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %x27 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %37, i32 0, i32 2
  %38 = load i32, i32* %x27, align 4
  %39 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %livewire28 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %39, i32 0, i32 9
  %40 = load %struct._ICurve*, %struct._ICurve** %livewire28, align 8
  %x2 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %40, i32 0, i32 2
  %41 = load i32, i32* %x2, align 4
  %cmp29 = icmp ne i32 %38, %41
  br i1 %cmp29, label %if.then.41, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %lor.lhs.false.26
  %42 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %iy32 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %42, i32 0, i32 5
  %43 = load i32, i32* %iy32, align 4
  %44 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %livewire33 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %44, i32 0, i32 9
  %45 = load %struct._ICurve*, %struct._ICurve** %livewire33, align 8
  %y1 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %45, i32 0, i32 1
  %46 = load i32, i32* %y1, align 4
  %cmp34 = icmp ne i32 %43, %46
  br i1 %cmp34, label %if.then.41, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %lor.lhs.false.31
  %47 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %y37 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %47, i32 0, i32 3
  %48 = load i32, i32* %y37, align 4
  %49 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %livewire38 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %49, i32 0, i32 9
  %50 = load %struct._ICurve*, %struct._ICurve** %livewire38, align 8
  %y2 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %50, i32 0, i32 3
  %51 = load i32, i32* %y2, align 4
  %cmp39 = icmp ne i32 %48, %51
  br i1 %cmp39, label %if.then.41, label %if.end.65

if.then.41:                                       ; preds = %lor.lhs.false.36, %lor.lhs.false.31, %lor.lhs.false.26, %land.lhs.true, %if.else
  %call42 = call noalias i8* @g_slice_alloc(i64 24)
  %52 = bitcast i8* %call42 to %struct._ICurve*
  store %struct._ICurve* %52, %struct._ICurve** %curve, align 8
  %53 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %ix43 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %53, i32 0, i32 4
  %54 = load i32, i32* %ix43, align 4
  %55 = load %struct._ICurve*, %struct._ICurve** %curve, align 8
  %x144 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %55, i32 0, i32 0
  store i32 %54, i32* %x144, align 4
  %56 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %iy45 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %56, i32 0, i32 5
  %57 = load i32, i32* %iy45, align 4
  %58 = load %struct._ICurve*, %struct._ICurve** %curve, align 8
  %y146 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %58, i32 0, i32 1
  store i32 %57, i32* %y146, align 4
  %59 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %x47 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %59, i32 0, i32 2
  %60 = load i32, i32* %x47, align 4
  %61 = load %struct._ICurve*, %struct._ICurve** %curve, align 8
  %x248 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %61, i32 0, i32 2
  store i32 %60, i32* %x248, align 4
  %62 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %y49 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %62, i32 0, i32 3
  %63 = load i32, i32* %y49, align 4
  %64 = load %struct._ICurve*, %struct._ICurve** %curve, align 8
  %y250 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %64, i32 0, i32 3
  store i32 %63, i32* %y250, align 4
  %65 = load %struct._ICurve*, %struct._ICurve** %curve, align 8
  %points = getelementptr inbounds %struct._ICurve, %struct._ICurve* %65, i32 0, i32 4
  store %struct._GPtrArray* null, %struct._GPtrArray** %points, align 8
  %66 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %livewire51 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %66, i32 0, i32 9
  %67 = load %struct._ICurve*, %struct._ICurve** %livewire51, align 8
  %tobool52 = icmp ne %struct._ICurve* %67, null
  br i1 %tobool52, label %if.then.53, label %if.end.63

if.then.53:                                       ; preds = %if.then.41
  %68 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %livewire54 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %68, i32 0, i32 9
  %69 = load %struct._ICurve*, %struct._ICurve** %livewire54, align 8
  %points55 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %69, i32 0, i32 4
  %70 = load %struct._GPtrArray*, %struct._GPtrArray** %points55, align 8
  %tobool56 = icmp ne %struct._GPtrArray* %70, null
  br i1 %tobool56, label %if.then.57, label %if.end

if.then.57:                                       ; preds = %if.then.53
  %71 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %livewire58 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %71, i32 0, i32 9
  %72 = load %struct._ICurve*, %struct._ICurve** %livewire58, align 8
  %points59 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %72, i32 0, i32 4
  %73 = load %struct._GPtrArray*, %struct._GPtrArray** %points59, align 8
  %call60 = call i8** @g_ptr_array_free(%struct._GPtrArray* %73, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then.57, %if.then.53
  br label %do.body

do.body:                                          ; preds = %if.end
  %74 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %livewire61 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %74, i32 0, i32 9
  %75 = load %struct._ICurve*, %struct._ICurve** %livewire61, align 8
  %76 = bitcast %struct._ICurve* %75 to i8*
  call void @g_slice_free1(i64 24, i8* %76)
  br label %do.end

do.end:                                           ; preds = %do.body
  %77 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %livewire62 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %77, i32 0, i32 9
  store %struct._ICurve* null, %struct._ICurve** %livewire62, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %do.end, %if.then.41
  %78 = load %struct._ICurve*, %struct._ICurve** %curve, align 8
  %79 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %livewire64 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %79, i32 0, i32 9
  store %struct._ICurve* %78, %struct._ICurve** %livewire64, align 8
  %80 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %81 = load %struct._ICurve*, %struct._ICurve** %curve, align 8
  call void @calculate_curve(%struct._GimpIscissorsTool* %80, %struct._ICurve* %81)
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.63, %lor.lhs.false.36, %lor.lhs.false
  %82 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %83 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %livewire66 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %83, i32 0, i32 9
  %84 = load %struct._ICurve*, %struct._ICurve** %livewire66, align 8
  call void @iscissors_draw_curve(%struct._GimpDrawTool* %82, %struct._ICurve* %84)
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.65, %if.then.11
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.then
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %entry
  %85 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %first_point70 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %85, i32 0, i32 13
  %86 = load i32, i32* %first_point70, align 4
  %tobool71 = icmp ne i32 %86, 0
  br i1 %tobool71, label %if.end.108, label %if.then.72

if.then.72:                                       ; preds = %if.end.69
  %87 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %connected = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %87, i32 0, i32 14
  %88 = load i32, i32* %connected, align 4
  %tobool73 = icmp ne i32 %88, 0
  br i1 %tobool73, label %if.end.80, label %if.then.74

if.then.74:                                       ; preds = %if.then.72
  %89 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %90 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %ix75 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %90, i32 0, i32 4
  %91 = load i32, i32* %ix75, align 4
  %conv76 = sitofp i32 %91 to double
  %92 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %iy77 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %92, i32 0, i32 5
  %93 = load i32, i32* %iy77, align 4
  %conv78 = sitofp i32 %93 to double
  %call79 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %89, i32 3, double %conv76, double %conv78, i32 13, i32 13, i32 0)
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.74, %if.then.72
  %94 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %curves = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %94, i32 0, i32 12
  %95 = load %struct._GQueue*, %struct._GQueue** %curves, align 8
  %call81 = call %struct._GList* @g_queue_peek_head_link(%struct._GQueue* %95)
  store %struct._GList* %call81, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.80
  %96 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool82 = icmp ne %struct._GList* %96, null
  br i1 %tobool82, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %97 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %97, i32 0, i32 0
  %98 = load i8*, i8** %data, align 8
  %99 = bitcast i8* %98 to %struct._ICurve*
  store %struct._ICurve* %99, %struct._ICurve** %curve83, align 8
  %100 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %state84 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %100, i32 0, i32 15
  %101 = load i32, i32* %state84, align 4
  %cmp85 = icmp eq i32 %101, 2
  br i1 %cmp85, label %if.then.87, label %if.end.92

if.then.87:                                       ; preds = %for.body
  %102 = load %struct._ICurve*, %struct._ICurve** %curve83, align 8
  %103 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %curve1 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %103, i32 0, i32 10
  %104 = load %struct._ICurve*, %struct._ICurve** %curve1, align 8
  %cmp88 = icmp eq %struct._ICurve* %102, %104
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.then.87
  br label %for.inc

if.end.91:                                        ; preds = %if.then.87
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %for.body
  %105 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %106 = load %struct._ICurve*, %struct._ICurve** %curve83, align 8
  %x193 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %106, i32 0, i32 0
  %107 = load i32, i32* %x193, align 4
  %conv94 = sitofp i32 %107 to double
  %108 = load %struct._ICurve*, %struct._ICurve** %curve83, align 8
  %y195 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %108, i32 0, i32 1
  %109 = load i32, i32* %y195, align 4
  %conv96 = sitofp i32 %109 to double
  %call97 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %105, i32 3, double %conv94, double %conv96, i32 13, i32 13, i32 0)
  %110 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %state98 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %110, i32 0, i32 15
  %111 = load i32, i32* %state98, align 4
  %cmp99 = icmp eq i32 %111, 2
  br i1 %cmp99, label %if.then.101, label %if.end.106

if.then.101:                                      ; preds = %if.end.92
  %112 = load %struct._ICurve*, %struct._ICurve** %curve83, align 8
  %113 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %curve2 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %113, i32 0, i32 11
  %114 = load %struct._ICurve*, %struct._ICurve** %curve2, align 8
  %cmp102 = icmp eq %struct._ICurve* %112, %114
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %if.then.101
  br label %for.inc

if.end.105:                                       ; preds = %if.then.101
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.end.92
  %115 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %116 = load %struct._ICurve*, %struct._ICurve** %curve83, align 8
  call void @iscissors_draw_curve(%struct._GimpDrawTool* %115, %struct._ICurve* %116)
  br label %for.inc

for.inc:                                          ; preds = %if.end.106, %if.then.104, %if.then.90
  %117 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool107 = icmp ne %struct._GList* %117, null
  br i1 %tobool107, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %118 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %118, i32 0, i32 1
  %119 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %119, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.108

if.end.108:                                       ; preds = %for.end, %if.end.69
  %120 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %state109 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %120, i32 0, i32 15
  %121 = load i32, i32* %state109, align 4
  %cmp110 = icmp eq i32 %121, 2
  br i1 %cmp110, label %if.then.112, label %if.end.146

if.then.112:                                      ; preds = %if.end.108
  %122 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %curve1113 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %122, i32 0, i32 10
  %123 = load %struct._ICurve*, %struct._ICurve** %curve1113, align 8
  %tobool114 = icmp ne %struct._ICurve* %123, null
  br i1 %tobool114, label %if.then.115, label %if.end.125

if.then.115:                                      ; preds = %if.then.112
  %124 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %125 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %curve1116 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %125, i32 0, i32 10
  %126 = load %struct._ICurve*, %struct._ICurve** %curve1116, align 8
  %x2117 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %126, i32 0, i32 2
  %127 = load i32, i32* %x2117, align 4
  %conv118 = sitofp i32 %127 to double
  %128 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %curve1119 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %128, i32 0, i32 10
  %129 = load %struct._ICurve*, %struct._ICurve** %curve1119, align 8
  %y2120 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %129, i32 0, i32 3
  %130 = load i32, i32* %y2120, align 4
  %conv121 = sitofp i32 %130 to double
  %131 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %nx = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %131, i32 0, i32 6
  %132 = load i32, i32* %nx, align 4
  %conv122 = sitofp i32 %132 to double
  %133 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %ny = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %133, i32 0, i32 7
  %134 = load i32, i32* %ny, align 4
  %conv123 = sitofp i32 %134 to double
  %call124 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_line(%struct._GimpDrawTool* %124, double %conv118, double %conv121, double %conv122, double %conv123)
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.115, %if.then.112
  %135 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %curve2126 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %135, i32 0, i32 11
  %136 = load %struct._ICurve*, %struct._ICurve** %curve2126, align 8
  %tobool127 = icmp ne %struct._ICurve* %136, null
  br i1 %tobool127, label %if.then.128, label %if.end.140

if.then.128:                                      ; preds = %if.end.125
  %137 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %138 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %curve2129 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %138, i32 0, i32 11
  %139 = load %struct._ICurve*, %struct._ICurve** %curve2129, align 8
  %x1130 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %139, i32 0, i32 0
  %140 = load i32, i32* %x1130, align 4
  %conv131 = sitofp i32 %140 to double
  %141 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %curve2132 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %141, i32 0, i32 11
  %142 = load %struct._ICurve*, %struct._ICurve** %curve2132, align 8
  %y1133 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %142, i32 0, i32 1
  %143 = load i32, i32* %y1133, align 4
  %conv134 = sitofp i32 %143 to double
  %144 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %nx135 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %144, i32 0, i32 6
  %145 = load i32, i32* %nx135, align 4
  %conv136 = sitofp i32 %145 to double
  %146 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %ny137 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %146, i32 0, i32 7
  %147 = load i32, i32* %ny137, align 4
  %conv138 = sitofp i32 %147 to double
  %call139 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_line(%struct._GimpDrawTool* %137, double %conv131, double %conv134, double %conv136, double %conv138)
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.128, %if.end.125
  %148 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %149 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %nx141 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %149, i32 0, i32 6
  %150 = load i32, i32* %nx141, align 4
  %conv142 = sitofp i32 %150 to double
  %151 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors, align 8
  %ny143 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %151, i32 0, i32 7
  %152 = load i32, i32* %ny143, align 4
  %conv144 = sitofp i32 %152 to double
  %call145 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %148, i32 3, double %conv142, double %conv144, i32 13, i32 13, i32 0)
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.140, %if.end.108
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @g_queue_free(%struct._GQueue*) #1

declare i32 @g_queue_is_empty(%struct._GQueue*) #1

declare i8* @g_queue_pop_head(%struct._GQueue*) #1

declare i8** @g_ptr_array_free(%struct._GPtrArray*, i32) #1

declare void @g_slice_free1(i64, i8*) #1

declare void @g_object_unref(i8*) #1

declare void @tile_release(%struct._Tile*, i32) #1

declare void @tile_manager_unref(%struct._TileManager*) #1

declare void @temp_buf_free(%struct._TempBuf*) #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

; Function Attrs: nounwind readnone
declare double @rint(double) #2

declare void @gimp_tool_control(%struct._GimpTool*, i32, %struct._GimpDisplay*) #1

declare void @gimp_tool_control_activate(%struct._GimpToolControl*) #1

; Function Attrs: nounwind uwtable
define internal void @find_max_gradient(%struct._GimpIscissorsTool* %iscissors, %struct._GimpImage* %image, i32* %x, i32* %y) #3 {
entry:
  %iscissors.addr = alloca %struct._GimpIscissorsTool*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %radius = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %endx = alloca i32, align 4
  %endy = alloca i32, align 4
  %cx = alloca i32, align 4
  %cy = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %pr = alloca i8*, align 8
  %max_gradient = alloca float, align 4
  %gradient = alloca i8*, align 8
  %g = alloca float, align 4
  store %struct._GimpIscissorsTool* %iscissors, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  %0 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %gradient_map = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %0, i32 0, i32 17
  %1 = load %struct._TileManager*, %struct._TileManager** %gradient_map, align 8
  %tobool = icmp ne %struct._TileManager* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call %struct._TileManager* @gradient_map_new(%struct._GimpImage* %2)
  %3 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %gradient_map1 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %3, i32 0, i32 17
  store %struct._TileManager* %call, %struct._TileManager** %gradient_map1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 16, i32* %radius, align 4
  %4 = load i32*, i32** %x.addr, align 8
  %5 = load i32, i32* %4, align 4
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call2 = call i32 @gimp_image_get_width(%struct._GimpImage* %6)
  %cmp = icmp sgt i32 %5, %call2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call3 = call i32 @gimp_image_get_width(%struct._GimpImage* %7)
  br label %cond.end.7

cond.false:                                       ; preds = %if.end
  %8 = load i32*, i32** %x.addr, align 8
  %9 = load i32, i32* %8, align 4
  %cmp4 = icmp slt i32 %9, 0
  br i1 %cmp4, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.false
  br label %cond.end

cond.false.6:                                     ; preds = %cond.false
  %10 = load i32*, i32** %x.addr, align 8
  %11 = load i32, i32* %10, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.6, %cond.true.5
  %cond = phi i32 [ 0, %cond.true.5 ], [ %11, %cond.false.6 ]
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.end, %cond.true
  %cond8 = phi i32 [ %call3, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond8, i32* %cx, align 4
  %12 = load i32*, i32** %y.addr, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call9 = call i32 @gimp_image_get_height(%struct._GimpImage* %14)
  %cmp10 = icmp sgt i32 %13, %call9
  br i1 %cmp10, label %cond.true.11, label %cond.false.13

cond.true.11:                                     ; preds = %cond.end.7
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call12 = call i32 @gimp_image_get_height(%struct._GimpImage* %15)
  br label %cond.end.19

cond.false.13:                                    ; preds = %cond.end.7
  %16 = load i32*, i32** %y.addr, align 8
  %17 = load i32, i32* %16, align 4
  %cmp14 = icmp slt i32 %17, 0
  br i1 %cmp14, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %cond.false.13
  br label %cond.end.17

cond.false.16:                                    ; preds = %cond.false.13
  %18 = load i32*, i32** %y.addr, align 8
  %19 = load i32, i32* %18, align 4
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.16, %cond.true.15
  %cond18 = phi i32 [ 0, %cond.true.15 ], [ %19, %cond.false.16 ]
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.end.17, %cond.true.11
  %cond20 = phi i32 [ %call12, %cond.true.11 ], [ %cond18, %cond.end.17 ]
  store i32 %cond20, i32* %cy, align 4
  %20 = load i32, i32* %cx, align 4
  %21 = load i32, i32* %radius, align 4
  %sub = sub nsw i32 %20, %21
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call21 = call i32 @gimp_image_get_width(%struct._GimpImage* %22)
  %cmp22 = icmp sgt i32 %sub, %call21
  br i1 %cmp22, label %cond.true.23, label %cond.false.25

cond.true.23:                                     ; preds = %cond.end.19
  %23 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call24 = call i32 @gimp_image_get_width(%struct._GimpImage* %23)
  br label %cond.end.33

cond.false.25:                                    ; preds = %cond.end.19
  %24 = load i32, i32* %cx, align 4
  %25 = load i32, i32* %radius, align 4
  %sub26 = sub nsw i32 %24, %25
  %cmp27 = icmp slt i32 %sub26, 0
  br i1 %cmp27, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %cond.false.25
  br label %cond.end.31

cond.false.29:                                    ; preds = %cond.false.25
  %26 = load i32, i32* %cx, align 4
  %27 = load i32, i32* %radius, align 4
  %sub30 = sub nsw i32 %26, %27
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.29, %cond.true.28
  %cond32 = phi i32 [ 0, %cond.true.28 ], [ %sub30, %cond.false.29 ]
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.end.31, %cond.true.23
  %cond34 = phi i32 [ %call24, %cond.true.23 ], [ %cond32, %cond.end.31 ]
  store i32 %cond34, i32* %x1, align 4
  %28 = load i32, i32* %cy, align 4
  %29 = load i32, i32* %radius, align 4
  %sub35 = sub nsw i32 %28, %29
  %30 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call36 = call i32 @gimp_image_get_height(%struct._GimpImage* %30)
  %cmp37 = icmp sgt i32 %sub35, %call36
  br i1 %cmp37, label %cond.true.38, label %cond.false.40

cond.true.38:                                     ; preds = %cond.end.33
  %31 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call39 = call i32 @gimp_image_get_height(%struct._GimpImage* %31)
  br label %cond.end.48

cond.false.40:                                    ; preds = %cond.end.33
  %32 = load i32, i32* %cy, align 4
  %33 = load i32, i32* %radius, align 4
  %sub41 = sub nsw i32 %32, %33
  %cmp42 = icmp slt i32 %sub41, 0
  br i1 %cmp42, label %cond.true.43, label %cond.false.44

cond.true.43:                                     ; preds = %cond.false.40
  br label %cond.end.46

cond.false.44:                                    ; preds = %cond.false.40
  %34 = load i32, i32* %cy, align 4
  %35 = load i32, i32* %radius, align 4
  %sub45 = sub nsw i32 %34, %35
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.44, %cond.true.43
  %cond47 = phi i32 [ 0, %cond.true.43 ], [ %sub45, %cond.false.44 ]
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.end.46, %cond.true.38
  %cond49 = phi i32 [ %call39, %cond.true.38 ], [ %cond47, %cond.end.46 ]
  store i32 %cond49, i32* %y1, align 4
  %36 = load i32, i32* %cx, align 4
  %37 = load i32, i32* %radius, align 4
  %add = add nsw i32 %36, %37
  %38 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call50 = call i32 @gimp_image_get_width(%struct._GimpImage* %38)
  %cmp51 = icmp sgt i32 %add, %call50
  br i1 %cmp51, label %cond.true.52, label %cond.false.54

cond.true.52:                                     ; preds = %cond.end.48
  %39 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call53 = call i32 @gimp_image_get_width(%struct._GimpImage* %39)
  br label %cond.end.62

cond.false.54:                                    ; preds = %cond.end.48
  %40 = load i32, i32* %cx, align 4
  %41 = load i32, i32* %radius, align 4
  %add55 = add nsw i32 %40, %41
  %cmp56 = icmp slt i32 %add55, 0
  br i1 %cmp56, label %cond.true.57, label %cond.false.58

cond.true.57:                                     ; preds = %cond.false.54
  br label %cond.end.60

cond.false.58:                                    ; preds = %cond.false.54
  %42 = load i32, i32* %cx, align 4
  %43 = load i32, i32* %radius, align 4
  %add59 = add nsw i32 %42, %43
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.false.58, %cond.true.57
  %cond61 = phi i32 [ 0, %cond.true.57 ], [ %add59, %cond.false.58 ]
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.end.60, %cond.true.52
  %cond63 = phi i32 [ %call53, %cond.true.52 ], [ %cond61, %cond.end.60 ]
  store i32 %cond63, i32* %x2, align 4
  %44 = load i32, i32* %cy, align 4
  %45 = load i32, i32* %radius, align 4
  %add64 = add nsw i32 %44, %45
  %46 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call65 = call i32 @gimp_image_get_height(%struct._GimpImage* %46)
  %cmp66 = icmp sgt i32 %add64, %call65
  br i1 %cmp66, label %cond.true.67, label %cond.false.69

cond.true.67:                                     ; preds = %cond.end.62
  %47 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call68 = call i32 @gimp_image_get_height(%struct._GimpImage* %47)
  br label %cond.end.77

cond.false.69:                                    ; preds = %cond.end.62
  %48 = load i32, i32* %cy, align 4
  %49 = load i32, i32* %radius, align 4
  %add70 = add nsw i32 %48, %49
  %cmp71 = icmp slt i32 %add70, 0
  br i1 %cmp71, label %cond.true.72, label %cond.false.73

cond.true.72:                                     ; preds = %cond.false.69
  br label %cond.end.75

cond.false.73:                                    ; preds = %cond.false.69
  %50 = load i32, i32* %cy, align 4
  %51 = load i32, i32* %radius, align 4
  %add74 = add nsw i32 %50, %51
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.false.73, %cond.true.72
  %cond76 = phi i32 [ 0, %cond.true.72 ], [ %add74, %cond.false.73 ]
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.end.75, %cond.true.67
  %cond78 = phi i32 [ %call68, %cond.true.67 ], [ %cond76, %cond.end.75 ]
  store i32 %cond78, i32* %y2, align 4
  store float 0.000000e+00, float* %max_gradient, align 4
  %52 = load i32, i32* %cx, align 4
  %53 = load i32*, i32** %x.addr, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* %cy, align 4
  %55 = load i32*, i32** %y.addr, align 8
  store i32 %54, i32* %55, align 4
  %56 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %gradient_map79 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %56, i32 0, i32 17
  %57 = load %struct._TileManager*, %struct._TileManager** %gradient_map79, align 8
  %58 = load i32, i32* %x1, align 4
  %59 = load i32, i32* %y1, align 4
  %60 = load i32, i32* %x2, align 4
  %61 = load i32, i32* %x1, align 4
  %sub80 = sub nsw i32 %60, %61
  %62 = load i32, i32* %y2, align 4
  %63 = load i32, i32* %y1, align 4
  %sub81 = sub nsw i32 %62, %63
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %57, i32 %58, i32 %59, i32 %sub80, i32 %sub81, i32 0)
  %call82 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 1, %struct._PixelRegion* %srcPR)
  %64 = bitcast %struct._PixelRegionIterator* %call82 to i8*
  store i8* %64, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.111, %cond.end.77
  %65 = load i8*, i8** %pr, align 8
  %cmp83 = icmp ne i8* %65, null
  br i1 %cmp83, label %for.body, label %for.end.113

for.body:                                         ; preds = %for.cond
  %x84 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 6
  %66 = load i32, i32* %x84, align 4
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 8
  %67 = load i32, i32* %w, align 4
  %add85 = add nsw i32 %66, %67
  store i32 %add85, i32* %endx, align 4
  %y86 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 7
  %68 = load i32, i32* %y86, align 4
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 9
  %69 = load i32, i32* %h, align 4
  %add87 = add nsw i32 %68, %69
  store i32 %add87, i32* %endy, align 4
  %y88 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 7
  %70 = load i32, i32* %y88, align 4
  store i32 %70, i32* %i, align 4
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.108, %for.body
  %71 = load i32, i32* %i, align 4
  %72 = load i32, i32* %endy, align 4
  %cmp90 = icmp slt i32 %71, %72
  br i1 %cmp90, label %for.body.91, label %for.end.110

for.body.91:                                      ; preds = %for.cond.89
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 0
  %73 = load i8*, i8** %data, align 8
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 5
  %74 = load i32, i32* %rowstride, align 4
  %75 = load i32, i32* %i, align 4
  %y92 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 7
  %76 = load i32, i32* %y92, align 4
  %sub93 = sub nsw i32 %75, %76
  %mul = mul nsw i32 %74, %sub93
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %73, i64 %idx.ext
  store i8* %add.ptr, i8** %gradient, align 8
  %x94 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 6
  %77 = load i32, i32* %x94, align 4
  store i32 %77, i32* %j, align 4
  br label %for.cond.95

for.cond.95:                                      ; preds = %for.inc, %for.body.91
  %78 = load i32, i32* %j, align 4
  %79 = load i32, i32* %endx, align 4
  %cmp96 = icmp slt i32 %78, %79
  br i1 %cmp96, label %for.body.97, label %for.end

for.body.97:                                      ; preds = %for.cond.95
  %80 = load i8*, i8** %gradient, align 8
  %81 = load i8, i8* %80, align 1
  %conv = uitofp i8 %81 to float
  store float %conv, float* %g, align 4
  %82 = load i8*, i8** %gradient, align 8
  %add.ptr98 = getelementptr inbounds i8, i8* %82, i64 2
  store i8* %add.ptr98, i8** %gradient, align 8
  %83 = load i32, i32* %i, align 4
  %84 = load i32, i32* %y1, align 4
  %sub99 = sub nsw i32 %83, %84
  %mul100 = mul nsw i32 %sub99, 32
  %85 = load i32, i32* %j, align 4
  %86 = load i32, i32* %x1, align 4
  %sub101 = sub nsw i32 %85, %86
  %add102 = add nsw i32 %mul100, %sub101
  %idxprom = sext i32 %add102 to i64
  %arrayidx = getelementptr inbounds [1024 x float], [1024 x float]* @distance_weights, i32 0, i64 %idxprom
  %87 = load float, float* %arrayidx, align 4
  %88 = load float, float* %g, align 4
  %mul103 = fmul float %88, %87
  store float %mul103, float* %g, align 4
  %89 = load float, float* %g, align 4
  %90 = load float, float* %max_gradient, align 4
  %cmp104 = fcmp ogt float %89, %90
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %for.body.97
  %91 = load float, float* %g, align 4
  store float %91, float* %max_gradient, align 4
  %92 = load i32, i32* %j, align 4
  %93 = load i32*, i32** %x.addr, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* %i, align 4
  %95 = load i32*, i32** %y.addr, align 8
  store i32 %94, i32* %95, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.106, %for.body.97
  br label %for.inc

for.inc:                                          ; preds = %if.end.107
  %96 = load i32, i32* %j, align 4
  %inc = add nsw i32 %96, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.95

for.end:                                          ; preds = %for.cond.95
  br label %for.inc.108

for.inc.108:                                      ; preds = %for.end
  %97 = load i32, i32* %i, align 4
  %inc109 = add nsw i32 %97, 1
  store i32 %inc109, i32* %i, align 4
  br label %for.cond.89

for.end.110:                                      ; preds = %for.cond.89
  br label %for.inc.111

for.inc.111:                                      ; preds = %for.end.110
  %98 = load i8*, i8** %pr, align 8
  %99 = bitcast i8* %98 to %struct._PixelRegionIterator*
  %call112 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %99)
  %100 = bitcast %struct._PixelRegionIterator* %call112 to i8*
  store i8* %100, i8** %pr, align 8
  br label %for.cond

for.end.113:                                      ; preds = %for.cond
  ret void
}

declare i32 @gimp_image_get_width(%struct._GimpImage*) #1

declare i32 @gimp_image_get_height(%struct._GimpImage*) #1

declare void @gimp_draw_tool_start(%struct._GimpDrawTool*, %struct._GimpDisplay*) #1

; Function Attrs: nounwind uwtable
define internal i32 @clicked_on_vertex(%struct._GimpIscissorsTool* %iscissors, double %x, double %y) #3 {
entry:
  %retval = alloca i32, align 4
  %iscissors.addr = alloca %struct._GimpIscissorsTool*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %curves_found = alloca i32, align 4
  store %struct._GimpIscissorsTool* %iscissors, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store i32 0, i32* %curves_found, align 4
  %0 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %1 = load double, double* %x.addr, align 8
  %2 = load double, double* %y.addr, align 8
  %call = call i32 @mouse_over_vertex(%struct._GimpIscissorsTool* %0, double %1, double %2)
  store i32 %call, i32* %curves_found, align 4
  %3 = load i32, i32* %curves_found, align 4
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %5 = bitcast %struct._GimpIscissorsTool* %4 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_draw_tool_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %6)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %curves_found, align 4
  %cmp3 = icmp eq i32 %7, 1
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %8 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %9 = load double, double* %x.addr, align 8
  %10 = load double, double* %y.addr, align 8
  %call6 = call i32 @clicked_on_curve(%struct._GimpIscissorsTool* %8, double %9, double %10)
  store i32 %call6, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare void @gimp_draw_tool_resume(%struct._GimpDrawTool*) #1

declare i32 @gimp_pickable_get_opacity_at(%struct._GimpPickable*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_pickable_interface_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_iscissors_tool_apply(%struct._GimpIscissorsTool* %iscissors, %struct._GimpDisplay* %display) #3 {
entry:
  %iscissors.addr = alloca %struct._GimpIscissorsTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %options = alloca %struct._GimpSelectionOptions*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GimpIscissorsTool* %iscissors, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %1 = bitcast %struct._GimpIscissorsTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_selection_options_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpSelectionOptions*
  store %struct._GimpSelectionOptions* %7, %struct._GimpSelectionOptions** %options, align 8
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call7 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %8)
  store %struct._GimpImage* %call7, %struct._GimpImage** %image, align 8
  %9 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %10 = bitcast %struct._GimpTool* %9 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_draw_tool_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call8)
  %11 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_stop(%struct._GimpDrawTool* %11)
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call10 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %12)
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %tool_info = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %13, i32 0, i32 1
  %14 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %blurb = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %14, i32 0, i32 5
  %15 = load i8*, i8** %blurb, align 8
  %16 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %mask = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %16, i32 0, i32 16
  %17 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %18 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %options, align 8
  %operation = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %18, i32 0, i32 1
  %19 = load i32, i32* %operation, align 4
  %20 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %options, align 8
  %feather = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %20, i32 0, i32 3
  %21 = load i32, i32* %feather, align 4
  %22 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %options, align 8
  %feather_radius = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %22, i32 0, i32 4
  %23 = load double, double* %feather_radius, align 8
  %24 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %options, align 8
  %feather_radius11 = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %24, i32 0, i32 4
  %25 = load double, double* %feather_radius11, align 8
  call void @gimp_channel_select_channel(%struct._GimpChannel* %call10, i8* %15, %struct._GimpChannel* %17, i32 0, i32 0, i32 %19, i32 %21, double %23, double %25)
  %26 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %27 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_control(%struct._GimpTool* %26, i32 2, %struct._GimpDisplay* %27)
  %28 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %28)
  ret void
}

declare void @gimp_draw_tool_pause(%struct._GimpDrawTool*) #1

; Function Attrs: nounwind uwtable
define internal %struct._TileManager* @gradient_map_new(%struct._GimpImage* %image) #3 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %tm = alloca %struct._TileManager*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call i32 @gimp_image_get_width(%struct._GimpImage* %0)
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call1 = call i32 @gimp_image_get_height(%struct._GimpImage* %1)
  %call2 = call %struct._TileManager* @tile_manager_new(i32 %call, i32 %call1, i32 2)
  store %struct._TileManager* %call2, %struct._TileManager** %tm, align 8
  %2 = load %struct._TileManager*, %struct._TileManager** %tm, align 8
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %4 = bitcast %struct._GimpImage* %3 to i8*
  call void @tile_manager_set_validate_proc(%struct._TileManager* %2, void (%struct._TileManager*, %struct._Tile*, i8*)* bitcast (void (%struct._TileManager*, %struct._Tile*, %struct._GimpImage*)* @gradmap_tile_validate to void (%struct._TileManager*, %struct._Tile*, i8*)*), i8* %4)
  %5 = load %struct._TileManager*, %struct._TileManager** %tm, align 8
  ret %struct._TileManager* %5
}

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #1

declare %struct._PixelRegionIterator* @pixel_regions_register(i32, ...) #1

declare %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator*) #1

declare %struct._TileManager* @tile_manager_new(i32, i32, i32) #1

declare void @tile_manager_set_validate_proc(%struct._TileManager*, void (%struct._TileManager*, %struct._Tile*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gradmap_tile_validate(%struct._TileManager* %tm, %struct._Tile* %tile, %struct._GimpImage* %image) #3 {
entry:
  %tm.addr = alloca %struct._TileManager*, align 8
  %tile.addr = alloca %struct._Tile*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %pickable = alloca %struct._GimpPickable*, align 8
  %srctile = alloca %struct._Tile*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %dw = alloca i32, align 4
  %dh = alloca i32, align 4
  %sw = alloca i32, align 4
  %sh = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %b = alloca i32, align 4
  %gradient = alloca float, align 4
  %tiledata = alloca i8*, align 8
  %gradmap = alloca i8*, align 8
  %radius = alloca i32, align 4
  %datah = alloca i8*, align 8
  %datav = alloca i8*, align 8
  %hmax = alloca i8, align 1
  %vmax = alloca i8, align 1
  %direction = alloca float, align 4
  store %struct._TileManager* %tm, %struct._TileManager** %tm.addr, align 8
  store %struct._Tile* %tile, %struct._Tile** %tile.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  %0 = load i32, i32* @gradmap_tile_validate.first_gradient, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 16, i32* %radius, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.12, %if.then
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 32
  br i1 %cmp, label %for.body, label %for.end.14

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %2, 32
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %radius, align 4
  %sub = sub nsw i32 %3, %4
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %radius, align 4
  %sub4 = sub nsw i32 %5, %6
  %mul = mul nsw i32 %sub, %sub4
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %radius, align 4
  %sub5 = sub nsw i32 %7, %8
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %radius, align 4
  %sub6 = sub nsw i32 %9, %10
  %mul7 = mul nsw i32 %sub5, %sub6
  %add = add nsw i32 %mul, %mul7
  %conv = sitofp i32 %add to double
  %call = call double @sqrt(double %conv) #6
  %add8 = fadd double 1.000000e+00, %call
  %div = fdiv double 1.000000e+00, %add8
  %conv9 = fptrunc double %div to float
  %11 = load i32, i32* %i, align 4
  %mul10 = mul nsw i32 %11, 32
  %12 = load i32, i32* %j, align 4
  %add11 = add nsw i32 %mul10, %12
  %idxprom = sext i32 %add11 to i64
  %arrayidx = getelementptr inbounds [1024 x float], [1024 x float]* @distance_weights, i32 0, i64 %idxprom
  store float %conv9, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %14, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond

for.end.14:                                       ; preds = %for.cond
  store i32 0, i32* @gradmap_tile_validate.first_gradient, align 4
  br label %if.end

if.end:                                           ; preds = %for.end.14, %entry
  %15 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %16 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  call void @tile_manager_get_tile_coordinates(%struct._TileManager* %15, %struct._Tile* %16, i32* %x, i32* %y)
  %17 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %call15 = call i32 @tile_ewidth(%struct._Tile* %17)
  store i32 %call15, i32* %dw, align 4
  %18 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %call16 = call i32 @tile_eheight(%struct._Tile* %18)
  store i32 %call16, i32* %dh, align 4
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call17 = call %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage* %19)
  %20 = bitcast %struct._GimpProjection* %call17 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_pickable_interface_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call18)
  %21 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpPickable*
  store %struct._GimpPickable* %21, %struct._GimpPickable** %pickable, align 8
  %22 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable, align 8
  call void @gimp_pickable_flush(%struct._GimpPickable* %22)
  %23 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable, align 8
  %call20 = call %struct._TileManager* @gimp_pickable_get_tiles(%struct._GimpPickable* %23)
  %24 = load i32, i32* %x, align 4
  %25 = load i32, i32* %y, align 4
  %call21 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %call20, i32 %24, i32 %25, i32 1, i32 0)
  store %struct._Tile* %call21, %struct._Tile** %srctile, align 8
  %26 = load %struct._Tile*, %struct._Tile** %srctile, align 8
  %tobool22 = icmp ne %struct._Tile* %26, null
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.end
  br label %return

if.end.24:                                        ; preds = %if.end
  %27 = load %struct._Tile*, %struct._Tile** %srctile, align 8
  %call25 = call i32 @tile_ewidth(%struct._Tile* %27)
  store i32 %call25, i32* %sw, align 4
  %28 = load %struct._Tile*, %struct._Tile** %srctile, align 8
  %call26 = call i32 @tile_eheight(%struct._Tile* %28)
  store i32 %call26, i32* %sh, align 4
  %29 = load %struct._Tile*, %struct._Tile** %srctile, align 8
  %call27 = call i8* @tile_data_pointer(%struct._Tile* %29, i32 0, i32 0)
  %30 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable, align 8
  %call28 = call i32 @gimp_pickable_get_bytes(%struct._GimpPickable* %30)
  %31 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable, align 8
  %call29 = call i32 @gimp_pickable_get_bytes(%struct._GimpPickable* %31)
  %32 = load i32, i32* %dw, align 4
  %33 = load i32, i32* %sw, align 4
  %cmp30 = icmp slt i32 %32, %33
  br i1 %cmp30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.24
  %34 = load i32, i32* %dw, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.24
  %35 = load i32, i32* %sw, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %34, %cond.true ], [ %35, %cond.false ]
  %mul32 = mul nsw i32 %call29, %cond
  %36 = load i32, i32* %dw, align 4
  %37 = load i32, i32* %sw, align 4
  %cmp33 = icmp slt i32 %36, %37
  br i1 %cmp33, label %cond.true.35, label %cond.false.36

cond.true.35:                                     ; preds = %cond.end
  %38 = load i32, i32* %dw, align 4
  br label %cond.end.37

cond.false.36:                                    ; preds = %cond.end
  %39 = load i32, i32* %sw, align 4
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.36, %cond.true.35
  %cond38 = phi i32 [ %38, %cond.true.35 ], [ %39, %cond.false.36 ]
  %40 = load i32, i32* %dh, align 4
  %41 = load i32, i32* %sh, align 4
  %cmp39 = icmp slt i32 %40, %41
  br i1 %cmp39, label %cond.true.41, label %cond.false.42

cond.true.41:                                     ; preds = %cond.end.37
  %42 = load i32, i32* %dh, align 4
  br label %cond.end.43

cond.false.42:                                    ; preds = %cond.end.37
  %43 = load i32, i32* %sh, align 4
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.42, %cond.true.41
  %cond44 = phi i32 [ %42, %cond.true.41 ], [ %43, %cond.false.42 ]
  call void @pixel_region_init_data(%struct._PixelRegion* %srcPR, i8* %call27, i32 %call28, i32 %mul32, i32 0, i32 0, i32 %cond38, i32 %cond44)
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 8
  %44 = load i32, i32* %w, align 4
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 9
  %45 = load i32, i32* %h, align 4
  call void @pixel_region_init_data(%struct._PixelRegion* %destPR, i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @maxgrad_conv0, i32 0, i32 0), i32 4, i32 256, i32 0, i32 0, i32 %44, i32 %45)
  call void @convolve_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR, float* getelementptr inbounds ([9 x float], [9 x float]* @blur_32, i32 0, i32 0), i32 3, double 3.200000e+01, i32 0, i32 0)
  %w45 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 8
  %46 = load i32, i32* %w45, align 4
  %h46 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 9
  %47 = load i32, i32* %h46, align 4
  call void @pixel_region_init_data(%struct._PixelRegion* %srcPR, i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @maxgrad_conv0, i32 0, i32 0), i32 4, i32 256, i32 0, i32 0, i32 %46, i32 %47)
  %w47 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 8
  %48 = load i32, i32* %w47, align 4
  %h48 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 9
  %49 = load i32, i32* %h48, align 4
  call void @pixel_region_init_data(%struct._PixelRegion* %destPR, i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @maxgrad_conv1, i32 0, i32 0), i32 4, i32 256, i32 0, i32 0, i32 %48, i32 %49)
  call void @convolve_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR, float* getelementptr inbounds ([9 x float], [9 x float]* @horz_deriv, i32 0, i32 0), i32 3, double 1.000000e+00, i32 2, i32 0)
  %w49 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 8
  %50 = load i32, i32* %w49, align 4
  %h50 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 9
  %51 = load i32, i32* %h50, align 4
  call void @pixel_region_init_data(%struct._PixelRegion* %destPR, i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @maxgrad_conv2, i32 0, i32 0), i32 4, i32 256, i32 0, i32 0, i32 %50, i32 %51)
  call void @convolve_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR, float* getelementptr inbounds ([9 x float], [9 x float]* @vert_deriv, i32 0, i32 0), i32 3, double 1.000000e+00, i32 2, i32 0)
  %52 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %call51 = call i8* @tile_data_pointer(%struct._Tile* %52, i32 0, i32 0)
  store i8* %call51, i8** %tiledata, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.200, %cond.end.43
  %53 = load i32, i32* %i, align 4
  %h53 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 9
  %54 = load i32, i32* %h53, align 4
  %cmp54 = icmp slt i32 %53, %54
  br i1 %cmp54, label %for.body.56, label %for.end.202

for.body.56:                                      ; preds = %for.cond.52
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 5
  %55 = load i32, i32* %rowstride, align 4
  %56 = load i32, i32* %i, align 4
  %mul57 = mul nsw i32 %55, %56
  %idx.ext = sext i32 %mul57 to i64
  %add.ptr = getelementptr inbounds i8, i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @maxgrad_conv1, i32 0, i32 0), i64 %idx.ext
  store i8* %add.ptr, i8** %datah, align 8
  %rowstride58 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 5
  %57 = load i32, i32* %rowstride58, align 4
  %58 = load i32, i32* %i, align 4
  %mul59 = mul nsw i32 %57, %58
  %idx.ext60 = sext i32 %mul59 to i64
  %add.ptr61 = getelementptr inbounds i8, i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @maxgrad_conv2, i32 0, i32 0), i64 %idx.ext60
  store i8* %add.ptr61, i8** %datav, align 8
  %59 = load i8*, i8** %tiledata, align 8
  %60 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %call62 = call i32 @tile_ewidth(%struct._Tile* %60)
  %mul63 = mul nsw i32 %call62, 2
  %61 = load i32, i32* %i, align 4
  %mul64 = mul nsw i32 %mul63, %61
  %idx.ext65 = sext i32 %mul64 to i64
  %add.ptr66 = getelementptr inbounds i8, i8* %59, i64 %idx.ext65
  store i8* %add.ptr66, i8** %gradmap, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.197, %for.body.56
  %62 = load i32, i32* %j, align 4
  %w68 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 8
  %63 = load i32, i32* %w68, align 4
  %cmp69 = icmp slt i32 %62, %63
  br i1 %cmp69, label %for.body.71, label %for.end.199

for.body.71:                                      ; preds = %for.cond.67
  %64 = load i8*, i8** %datah, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %64, i64 0
  %65 = load i8, i8* %arrayidx72, align 1
  %conv73 = zext i8 %65 to i32
  %sub74 = sub nsw i32 %conv73, 128
  %conv75 = trunc i32 %sub74 to i8
  store i8 %conv75, i8* %hmax, align 1
  %66 = load i8*, i8** %datav, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %66, i64 0
  %67 = load i8, i8* %arrayidx76, align 1
  %conv77 = zext i8 %67 to i32
  %sub78 = sub nsw i32 %conv77, 128
  %conv79 = trunc i32 %sub78 to i8
  store i8 %conv79, i8* %vmax, align 1
  store i32 1, i32* %b, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.116, %for.body.71
  %68 = load i32, i32* %b, align 4
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 10
  %69 = load i32, i32* %bytes, align 4
  %cmp81 = icmp slt i32 %68, %69
  br i1 %cmp81, label %for.body.83, label %for.end.118

for.body.83:                                      ; preds = %for.cond.80
  %70 = load i32, i32* %b, align 4
  %idxprom84 = sext i32 %70 to i64
  %71 = load i8*, i8** %datah, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %71, i64 %idxprom84
  %72 = load i8, i8* %arrayidx85, align 1
  %conv86 = zext i8 %72 to i32
  %sub87 = sub nsw i32 %conv86, 128
  %call88 = call i32 @abs(i32 %sub87) #5
  %73 = load i8, i8* %hmax, align 1
  %conv89 = sext i8 %73 to i32
  %call90 = call i32 @abs(i32 %conv89) #5
  %cmp91 = icmp sgt i32 %call88, %call90
  br i1 %cmp91, label %if.then.93, label %if.end.99

if.then.93:                                       ; preds = %for.body.83
  %74 = load i32, i32* %b, align 4
  %idxprom94 = sext i32 %74 to i64
  %75 = load i8*, i8** %datah, align 8
  %arrayidx95 = getelementptr inbounds i8, i8* %75, i64 %idxprom94
  %76 = load i8, i8* %arrayidx95, align 1
  %conv96 = zext i8 %76 to i32
  %sub97 = sub nsw i32 %conv96, 128
  %conv98 = trunc i32 %sub97 to i8
  store i8 %conv98, i8* %hmax, align 1
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.93, %for.body.83
  %77 = load i32, i32* %b, align 4
  %idxprom100 = sext i32 %77 to i64
  %78 = load i8*, i8** %datav, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %78, i64 %idxprom100
  %79 = load i8, i8* %arrayidx101, align 1
  %conv102 = zext i8 %79 to i32
  %sub103 = sub nsw i32 %conv102, 128
  %call104 = call i32 @abs(i32 %sub103) #5
  %80 = load i8, i8* %vmax, align 1
  %conv105 = sext i8 %80 to i32
  %call106 = call i32 @abs(i32 %conv105) #5
  %cmp107 = icmp sgt i32 %call104, %call106
  br i1 %cmp107, label %if.then.109, label %if.end.115

if.then.109:                                      ; preds = %if.end.99
  %81 = load i32, i32* %b, align 4
  %idxprom110 = sext i32 %81 to i64
  %82 = load i8*, i8** %datav, align 8
  %arrayidx111 = getelementptr inbounds i8, i8* %82, i64 %idxprom110
  %83 = load i8, i8* %arrayidx111, align 1
  %conv112 = zext i8 %83 to i32
  %sub113 = sub nsw i32 %conv112, 128
  %conv114 = trunc i32 %sub113 to i8
  store i8 %conv114, i8* %vmax, align 1
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.109, %if.end.99
  br label %for.inc.116

for.inc.116:                                      ; preds = %if.end.115
  %84 = load i32, i32* %b, align 4
  %inc117 = add nsw i32 %84, 1
  store i32 %inc117, i32* %b, align 4
  br label %for.cond.80

for.end.118:                                      ; preds = %for.cond.80
  %85 = load i32, i32* %i, align 4
  %cmp119 = icmp eq i32 %85, 0
  br i1 %cmp119, label %if.then.133, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.118
  %86 = load i32, i32* %j, align 4
  %cmp121 = icmp eq i32 %86, 0
  br i1 %cmp121, label %if.then.133, label %lor.lhs.false.123

lor.lhs.false.123:                                ; preds = %lor.lhs.false
  %87 = load i32, i32* %i, align 4
  %h124 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 9
  %88 = load i32, i32* %h124, align 4
  %sub125 = sub nsw i32 %88, 1
  %cmp126 = icmp eq i32 %87, %sub125
  br i1 %cmp126, label %if.then.133, label %lor.lhs.false.128

lor.lhs.false.128:                                ; preds = %lor.lhs.false.123
  %89 = load i32, i32* %j, align 4
  %w129 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 8
  %90 = load i32, i32* %w129, align 4
  %sub130 = sub nsw i32 %90, 1
  %cmp131 = icmp eq i32 %89, %sub130
  br i1 %cmp131, label %if.then.133, label %if.end.142

if.then.133:                                      ; preds = %lor.lhs.false.128, %lor.lhs.false.123, %lor.lhs.false, %for.end.118
  %91 = load i32, i32* %j, align 4
  %mul134 = mul nsw i32 %91, 2
  %add135 = add nsw i32 %mul134, 0
  %idxprom136 = sext i32 %add135 to i64
  %92 = load i8*, i8** %gradmap, align 8
  %arrayidx137 = getelementptr inbounds i8, i8* %92, i64 %idxprom136
  store i8 0, i8* %arrayidx137, align 1
  %93 = load i32, i32* %j, align 4
  %mul138 = mul nsw i32 %93, 2
  %add139 = add nsw i32 %mul138, 1
  %idxprom140 = sext i32 %add139 to i64
  %94 = load i8*, i8** %gradmap, align 8
  %arrayidx141 = getelementptr inbounds i8, i8* %94, i64 %idxprom140
  store i8 -1, i8* %arrayidx141, align 1
  br label %contin

if.end.142:                                       ; preds = %lor.lhs.false.128
  %95 = load i8, i8* %hmax, align 1
  %conv143 = sext i8 %95 to i32
  %96 = load i8, i8* %hmax, align 1
  %conv144 = sext i8 %96 to i32
  %mul145 = mul nsw i32 %conv143, %conv144
  %97 = load i8, i8* %vmax, align 1
  %conv146 = sext i8 %97 to i32
  %98 = load i8, i8* %vmax, align 1
  %conv147 = sext i8 %98 to i32
  %mul148 = mul nsw i32 %conv146, %conv147
  %add149 = add nsw i32 %mul145, %mul148
  %conv150 = sitofp i32 %add149 to double
  %call151 = call double @sqrt(double %conv150) #6
  %conv152 = fptrunc double %call151 to float
  store float %conv152, float* %gradient, align 4
  %99 = load float, float* %gradient, align 4
  %mul153 = fmul float %99, 2.550000e+02
  %conv154 = fpext float %mul153 to double
  %div155 = fdiv double %conv154, 1.796060e+02
  %conv156 = fptoui double %div155 to i8
  %100 = load i32, i32* %j, align 4
  %mul157 = mul nsw i32 %100, 2
  %idxprom158 = sext i32 %mul157 to i64
  %101 = load i8*, i8** %gradmap, align 8
  %arrayidx159 = getelementptr inbounds i8, i8* %101, i64 %idxprom158
  store i8 %conv156, i8* %arrayidx159, align 1
  %102 = load float, float* %gradient, align 4
  %cmp160 = fcmp ogt float %102, 6.300000e+01
  br i1 %cmp160, label %if.then.162, label %if.else.185

if.then.162:                                      ; preds = %if.end.142
  %103 = load i8, i8* %hmax, align 1
  %tobool163 = icmp ne i8 %103, 0
  br i1 %tobool163, label %if.else, label %if.then.164

if.then.164:                                      ; preds = %if.then.162
  %104 = load i8, i8* %vmax, align 1
  %conv165 = sext i8 %104 to i32
  %cmp166 = icmp sgt i32 %conv165, 0
  %cond168 = select i1 %cmp166, double 0x3FF921FB54442D18, double 0xBFF921FB54442D18
  %conv169 = fptrunc double %cond168 to float
  store float %conv169, float* %direction, align 4
  br label %if.end.175

if.else:                                          ; preds = %if.then.162
  %105 = load i8, i8* %vmax, align 1
  %conv170 = sitofp i8 %105 to double
  %106 = load i8, i8* %hmax, align 1
  %conv171 = sitofp i8 %106 to double
  %div172 = fdiv double %conv170, %conv171
  %call173 = call double @atan(double %div172) #6
  %conv174 = fptrunc double %call173 to float
  store float %conv174, float* %direction, align 4
  br label %if.end.175

if.end.175:                                       ; preds = %if.else, %if.then.164
  %107 = load float, float* %direction, align 4
  %conv176 = fpext float %107 to double
  %add177 = fadd double %conv176, 0x3FF921FB54442D18
  %mul178 = fmul double 2.540000e+02, %add177
  %div179 = fdiv double %mul178, 0x400921FB54442D18
  %conv180 = fptoui double %div179 to i8
  %108 = load i32, i32* %j, align 4
  %mul181 = mul nsw i32 %108, 2
  %add182 = add nsw i32 %mul181, 1
  %idxprom183 = sext i32 %add182 to i64
  %109 = load i8*, i8** %gradmap, align 8
  %arrayidx184 = getelementptr inbounds i8, i8* %109, i64 %idxprom183
  store i8 %conv180, i8* %arrayidx184, align 1
  br label %if.end.190

if.else.185:                                      ; preds = %if.end.142
  %110 = load i32, i32* %j, align 4
  %mul186 = mul nsw i32 %110, 2
  %add187 = add nsw i32 %mul186, 1
  %idxprom188 = sext i32 %add187 to i64
  %111 = load i8*, i8** %gradmap, align 8
  %arrayidx189 = getelementptr inbounds i8, i8* %111, i64 %idxprom188
  store i8 -1, i8* %arrayidx189, align 1
  br label %if.end.190

if.end.190:                                       ; preds = %if.else.185, %if.end.175
  br label %contin

contin:                                           ; preds = %if.end.190, %if.then.133
  %bytes191 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 10
  %112 = load i32, i32* %bytes191, align 4
  %113 = load i8*, i8** %datah, align 8
  %idx.ext192 = sext i32 %112 to i64
  %add.ptr193 = getelementptr inbounds i8, i8* %113, i64 %idx.ext192
  store i8* %add.ptr193, i8** %datah, align 8
  %bytes194 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 10
  %114 = load i32, i32* %bytes194, align 4
  %115 = load i8*, i8** %datav, align 8
  %idx.ext195 = sext i32 %114 to i64
  %add.ptr196 = getelementptr inbounds i8, i8* %115, i64 %idx.ext195
  store i8* %add.ptr196, i8** %datav, align 8
  br label %for.inc.197

for.inc.197:                                      ; preds = %contin
  %116 = load i32, i32* %j, align 4
  %inc198 = add nsw i32 %116, 1
  store i32 %inc198, i32* %j, align 4
  br label %for.cond.67

for.end.199:                                      ; preds = %for.cond.67
  br label %for.inc.200

for.inc.200:                                      ; preds = %for.end.199
  %117 = load i32, i32* %i, align 4
  %inc201 = add nsw i32 %117, 1
  store i32 %inc201, i32* %i, align 4
  br label %for.cond.52

for.end.202:                                      ; preds = %for.cond.52
  %118 = load %struct._Tile*, %struct._Tile** %srctile, align 8
  call void @tile_release(%struct._Tile* %118, i32 0)
  br label %return

return:                                           ; preds = %for.end.202, %if.then.23
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double) #4

declare void @tile_manager_get_tile_coordinates(%struct._TileManager*, %struct._Tile*, i32*, i32*) #1

declare i32 @tile_ewidth(%struct._Tile*) #1

declare i32 @tile_eheight(%struct._Tile*) #1

declare %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage*) #1

declare void @gimp_pickable_flush(%struct._GimpPickable*) #1

declare %struct._Tile* @tile_manager_get_tile(%struct._TileManager*, i32, i32, i32, i32) #1

declare %struct._TileManager* @gimp_pickable_get_tiles(%struct._GimpPickable*) #1

declare void @pixel_region_init_data(%struct._PixelRegion*, i8*, i32, i32, i32, i32, i32, i32) #1

declare i8* @tile_data_pointer(%struct._Tile*, i32, i32) #1

declare i32 @gimp_pickable_get_bytes(%struct._GimpPickable*) #1

declare void @convolve_region(%struct._PixelRegion*, %struct._PixelRegion*, float*, i32, double, i32, i32) #1

; Function Attrs: nounwind
declare double @atan(double) #4

; Function Attrs: nounwind uwtable
define internal i32 @mouse_over_vertex(%struct._GimpIscissorsTool* %iscissors, double %x, double %y) #3 {
entry:
  %retval = alloca i32, align 4
  %iscissors.addr = alloca %struct._GimpIscissorsTool*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %list = alloca %struct._GList*, align 8
  %curves_found = alloca i32, align 4
  %curve = alloca %struct._ICurve*, align 8
  store %struct._GimpIscissorsTool* %iscissors, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store i32 0, i32* %curves_found, align 4
  %0 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %curve2 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %0, i32 0, i32 11
  store %struct._ICurve* null, %struct._ICurve** %curve2, align 8
  %1 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %curve1 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %1, i32 0, i32 10
  store %struct._ICurve* null, %struct._ICurve** %curve1, align 8
  %2 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %curves = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %2, i32 0, i32 12
  %3 = load %struct._GQueue*, %struct._GQueue** %curves, align 8
  %call = call %struct._GList* @g_queue_peek_head_link(%struct._GQueue* %3)
  store %struct._GList* %call, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %4 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8
  %7 = bitcast i8* %6 to %struct._ICurve*
  store %struct._ICurve* %7, %struct._ICurve** %curve, align 8
  %8 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %9 = bitcast %struct._GimpIscissorsTool* %8 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_draw_tool_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call1)
  %10 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpDrawTool*
  %11 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %12 = bitcast %struct._GimpIscissorsTool* %11 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_tool_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call3)
  %13 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpTool*
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %13, i32 0, i32 4
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %15 = load double, double* %x.addr, align 8
  %16 = load double, double* %y.addr, align 8
  %17 = load %struct._ICurve*, %struct._ICurve** %curve, align 8
  %x1 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %17, i32 0, i32 0
  %18 = load i32, i32* %x1, align 4
  %conv = sitofp i32 %18 to double
  %19 = load %struct._ICurve*, %struct._ICurve** %curve, align 8
  %y1 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %19, i32 0, i32 1
  %20 = load i32, i32* %y1, align 4
  %conv5 = sitofp i32 %20 to double
  %call6 = call i32 @gimp_draw_tool_on_handle(%struct._GimpDrawTool* %10, %struct._GimpDisplay* %14, double %15, double %16, i32 2, double %conv, double %conv5, i32 13, i32 13, i32 0)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %21 = load %struct._ICurve*, %struct._ICurve** %curve, align 8
  %22 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %curve18 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %22, i32 0, i32 10
  store %struct._ICurve* %21, %struct._ICurve** %curve18, align 8
  %23 = load i32, i32* %curves_found, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %curves_found, align 4
  %tobool9 = icmp ne i32 %23, 0
  br i1 %tobool9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  %24 = load i32, i32* %curves_found, align 4
  store i32 %24, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.27

if.else:                                          ; preds = %for.body
  %25 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %26 = bitcast %struct._GimpIscissorsTool* %25 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_draw_tool_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call11)
  %27 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpDrawTool*
  %28 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %29 = bitcast %struct._GimpIscissorsTool* %28 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_tool_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call13)
  %30 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpTool*
  %display15 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %30, i32 0, i32 4
  %31 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display15, align 8
  %32 = load double, double* %x.addr, align 8
  %33 = load double, double* %y.addr, align 8
  %34 = load %struct._ICurve*, %struct._ICurve** %curve, align 8
  %x2 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %34, i32 0, i32 2
  %35 = load i32, i32* %x2, align 4
  %conv16 = sitofp i32 %35 to double
  %36 = load %struct._ICurve*, %struct._ICurve** %curve, align 8
  %y2 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %36, i32 0, i32 3
  %37 = load i32, i32* %y2, align 4
  %conv17 = sitofp i32 %37 to double
  %call18 = call i32 @gimp_draw_tool_on_handle(%struct._GimpDrawTool* %27, %struct._GimpDisplay* %31, double %32, double %33, i32 2, double %conv16, double %conv17, i32 13, i32 13, i32 0)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.26

if.then.20:                                       ; preds = %if.else
  %38 = load %struct._ICurve*, %struct._ICurve** %curve, align 8
  %39 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %curve221 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %39, i32 0, i32 11
  store %struct._ICurve* %38, %struct._ICurve** %curve221, align 8
  %40 = load i32, i32* %curves_found, align 4
  %inc22 = add nsw i32 %40, 1
  store i32 %inc22, i32* %curves_found, align 4
  %tobool23 = icmp ne i32 %40, 0
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.then.20
  %41 = load i32, i32* %curves_found, align 4
  store i32 %41, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.then.20
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.else
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %42 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool28 = icmp ne %struct._GList* %42, null
  br i1 %tobool28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %43 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %43, i32 0, i32 1
  %44 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %44, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load i32, i32* %curves_found, align 4
  store i32 %45, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.24, %if.then.10
  %46 = load i32, i32* %retval
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define internal i32 @clicked_on_curve(%struct._GimpIscissorsTool* %iscissors, double %x, double %y) #3 {
entry:
  %retval = alloca i32, align 4
  %iscissors.addr = alloca %struct._GimpIscissorsTool*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %list = alloca %struct._GList*, align 8
  %curve = alloca %struct._ICurve*, align 8
  %new_curve = alloca %struct._ICurve*, align 8
  store %struct._GimpIscissorsTool* %iscissors, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %1 = load double, double* %x.addr, align 8
  %2 = load double, double* %y.addr, align 8
  %call = call %struct._GList* @mouse_over_curve(%struct._GimpIscissorsTool* %0, double %1, double %2)
  store %struct._GList* %call, %struct._GList** %list, align 8
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  %6 = bitcast i8* %5 to %struct._ICurve*
  store %struct._ICurve* %6, %struct._ICurve** %curve, align 8
  %7 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %8 = bitcast %struct._GimpIscissorsTool* %7 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_draw_tool_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call1)
  %9 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %9)
  %call3 = call noalias i8* @g_slice_alloc(i64 24)
  %10 = bitcast i8* %call3 to %struct._ICurve*
  store %struct._ICurve* %10, %struct._ICurve** %new_curve, align 8
  %11 = load %struct._ICurve*, %struct._ICurve** %curve, align 8
  %x2 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %11, i32 0, i32 2
  %12 = load i32, i32* %x2, align 4
  %13 = load %struct._ICurve*, %struct._ICurve** %new_curve, align 8
  %x24 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %13, i32 0, i32 2
  store i32 %12, i32* %x24, align 4
  %14 = load %struct._ICurve*, %struct._ICurve** %curve, align 8
  %y2 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %14, i32 0, i32 3
  %15 = load i32, i32* %y2, align 4
  %16 = load %struct._ICurve*, %struct._ICurve** %new_curve, align 8
  %y25 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %16, i32 0, i32 3
  store i32 %15, i32* %y25, align 4
  %17 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %x6 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %17, i32 0, i32 2
  %18 = load i32, i32* %x6, align 4
  %19 = load %struct._ICurve*, %struct._ICurve** %curve, align 8
  %x27 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %19, i32 0, i32 2
  store i32 %18, i32* %x27, align 4
  %20 = load %struct._ICurve*, %struct._ICurve** %new_curve, align 8
  %x1 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %20, i32 0, i32 0
  store i32 %18, i32* %x1, align 4
  %21 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %y8 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %21, i32 0, i32 3
  %22 = load i32, i32* %y8, align 4
  %23 = load %struct._ICurve*, %struct._ICurve** %curve, align 8
  %y29 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %23, i32 0, i32 3
  store i32 %22, i32* %y29, align 4
  %24 = load %struct._ICurve*, %struct._ICurve** %new_curve, align 8
  %y1 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %24, i32 0, i32 1
  store i32 %22, i32* %y1, align 4
  %25 = load %struct._ICurve*, %struct._ICurve** %new_curve, align 8
  %points = getelementptr inbounds %struct._ICurve, %struct._ICurve* %25, i32 0, i32 4
  store %struct._GPtrArray* null, %struct._GPtrArray** %points, align 8
  %26 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %curves = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %26, i32 0, i32 12
  %27 = load %struct._GQueue*, %struct._GQueue** %curves, align 8
  %28 = load %struct._GList*, %struct._GList** %list, align 8
  %29 = load %struct._ICurve*, %struct._ICurve** %new_curve, align 8
  %30 = bitcast %struct._ICurve* %29 to i8*
  call void @g_queue_insert_after(%struct._GQueue* %27, %struct._GList* %28, i8* %30)
  %31 = load %struct._ICurve*, %struct._ICurve** %new_curve, align 8
  %32 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %curve1 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %32, i32 0, i32 10
  store %struct._ICurve* %31, %struct._ICurve** %curve1, align 8
  %33 = load %struct._ICurve*, %struct._ICurve** %curve, align 8
  %34 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %curve2 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %34, i32 0, i32 11
  store %struct._ICurve* %33, %struct._ICurve** %curve2, align 8
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %35 = load i32, i32* %retval
  ret i32 %35
}

declare %struct._GList* @g_queue_peek_head_link(%struct._GQueue*) #1

declare i32 @gimp_draw_tool_on_handle(%struct._GimpDrawTool*, %struct._GimpDisplay*, double, double, i32, double, double, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GList* @mouse_over_curve(%struct._GimpIscissorsTool* %iscissors, double %x, double %y) #3 {
entry:
  %retval = alloca %struct._GList*, align 8
  %iscissors.addr = alloca %struct._GimpIscissorsTool*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %list = alloca %struct._GList*, align 8
  %curve = alloca %struct._ICurve*, align 8
  %pt = alloca i8**, align 8
  %len = alloca i32, align 4
  %coords = alloca i32, align 4
  %tx = alloca i32, align 4
  %ty = alloca i32, align 4
  store %struct._GimpIscissorsTool* %iscissors, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %curves = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %0, i32 0, i32 12
  %1 = load %struct._GQueue*, %struct._GQueue** %curves, align 8
  %call = call %struct._GList* @g_queue_peek_head_link(%struct._GQueue* %1)
  store %struct._GList* %call, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._ICurve*
  store %struct._ICurve* %5, %struct._ICurve** %curve, align 8
  %6 = load %struct._ICurve*, %struct._ICurve** %curve, align 8
  %points = getelementptr inbounds %struct._ICurve, %struct._ICurve* %6, i32 0, i32 4
  %7 = load %struct._GPtrArray*, %struct._GPtrArray** %points, align 8
  %pdata = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %7, i32 0, i32 0
  %8 = load i8**, i8*** %pdata, align 8
  store i8** %8, i8*** %pt, align 8
  %9 = load %struct._ICurve*, %struct._ICurve** %curve, align 8
  %points1 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %9, i32 0, i32 4
  %10 = load %struct._GPtrArray*, %struct._GPtrArray** %points1, align 8
  %len2 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %10, i32 0, i32 1
  %11 = load i32, i32* %len2, align 4
  store i32 %11, i32* %len, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.body
  %12 = load i32, i32* %len, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %len, align 4
  %tobool3 = icmp ne i32 %12, 0
  br i1 %tobool3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i8**, i8*** %pt, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = ptrtoint i8* %14 to i64
  %conv = trunc i64 %15 to i32
  store i32 %conv, i32* %coords, align 4
  %16 = load i8**, i8*** %pt, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %16, i32 1
  store i8** %incdec.ptr, i8*** %pt, align 8
  %17 = load i32, i32* %coords, align 4
  %and = and i32 %17, 65535
  store i32 %and, i32* %tx, align 4
  %18 = load i32, i32* %coords, align 4
  %shr = lshr i32 %18, 16
  store i32 %shr, i32* %ty, align 4
  %19 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %20 = bitcast %struct._GimpIscissorsTool* %19 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_draw_tool_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call4)
  %21 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpDrawTool*
  %22 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %23 = bitcast %struct._GimpIscissorsTool* %22 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_tool_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call6)
  %24 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpTool*
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %24, i32 0, i32 4
  %25 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %26 = load i32, i32* %tx, align 4
  %conv8 = sitofp i32 %26 to double
  %27 = load i32, i32* %ty, align 4
  %conv9 = sitofp i32 %27 to double
  %28 = load double, double* %x.addr, align 8
  %29 = load double, double* %y.addr, align 8
  %call10 = call double @gimp_draw_tool_calc_distance_square(%struct._GimpDrawTool* %21, %struct._GimpDisplay* %25, double %conv8, double %conv9, double %28, double %29)
  %cmp = fcmp olt double %call10, 3.600000e+01
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %30 = load %struct._GList*, %struct._GList** %list, align 8
  store %struct._GList* %30, %struct._GList** %retval
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %31 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool12 = icmp ne %struct._GList* %31, null
  br i1 %tobool12, label %cond.true, label %cond.false

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
  store %struct._GList* null, %struct._GList** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %34 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %34
}

declare noalias i8* @g_slice_alloc(i64) #1

declare void @g_queue_insert_after(%struct._GQueue*, %struct._GList*, i8*) #1

declare double @gimp_draw_tool_calc_distance_square(%struct._GimpDrawTool*, %struct._GimpDisplay*, double, double, double, double) #1

declare %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_selection_options_get_type() #2

declare void @gimp_draw_tool_stop(%struct._GimpDrawTool*) #1

declare void @gimp_channel_select_channel(%struct._GimpChannel*, i8*, %struct._GimpChannel*, i32, i32, i32, i32, double, double) #1

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #1

declare void @gimp_image_flush(%struct._GimpImage*) #1

declare void @gimp_tool_control_halt(%struct._GimpToolControl*) #1

declare i8* @g_queue_peek_head(%struct._GQueue*) #1

declare void @g_queue_push_tail(%struct._GQueue*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @calculate_curve(%struct._GimpIscissorsTool* %iscissors, %struct._ICurve* %curve) #3 {
entry:
  %iscissors.addr = alloca %struct._GimpIscissorsTool*, align 8
  %curve.addr = alloca %struct._ICurve*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %dir = alloca i32, align 4
  %xs = alloca i32, align 4
  %ys = alloca i32, align 4
  %xe = alloca i32, align 4
  %ye = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %ewidth = alloca i32, align 4
  %eheight = alloca i32, align 4
  store %struct._GimpIscissorsTool* %iscissors, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  store %struct._ICurve* %curve, %struct._ICurve** %curve.addr, align 8
  %0 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %1 = bitcast %struct._GimpIscissorsTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  %display2 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %2, i32 0, i32 4
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display2, align 8
  store %struct._GimpDisplay* %3, %struct._GimpDisplay** %display, align 8
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call3 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %4)
  store %struct._GimpImage* %call3, %struct._GimpImage** %image, align 8
  %5 = load %struct._ICurve*, %struct._ICurve** %curve.addr, align 8
  %x14 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %5, i32 0, i32 0
  %6 = load i32, i32* %x14, align 4
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call5 = call i32 @gimp_image_get_width(%struct._GimpImage* %7)
  %sub = sub nsw i32 %call5, 1
  %cmp = icmp sgt i32 %6, %sub
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call6 = call i32 @gimp_image_get_width(%struct._GimpImage* %8)
  %sub7 = sub nsw i32 %call6, 1
  br label %cond.end.13

cond.false:                                       ; preds = %entry
  %9 = load %struct._ICurve*, %struct._ICurve** %curve.addr, align 8
  %x18 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %9, i32 0, i32 0
  %10 = load i32, i32* %x18, align 4
  %cmp9 = icmp slt i32 %10, 0
  br i1 %cmp9, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %cond.false
  br label %cond.end

cond.false.11:                                    ; preds = %cond.false
  %11 = load %struct._ICurve*, %struct._ICurve** %curve.addr, align 8
  %x112 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %11, i32 0, i32 0
  %12 = load i32, i32* %x112, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.11, %cond.true.10
  %cond = phi i32 [ 0, %cond.true.10 ], [ %12, %cond.false.11 ]
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.end, %cond.true
  %cond14 = phi i32 [ %sub7, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond14, i32* %xs, align 4
  %13 = load %struct._ICurve*, %struct._ICurve** %curve.addr, align 8
  %y115 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %13, i32 0, i32 1
  %14 = load i32, i32* %y115, align 4
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call16 = call i32 @gimp_image_get_height(%struct._GimpImage* %15)
  %sub17 = sub nsw i32 %call16, 1
  %cmp18 = icmp sgt i32 %14, %sub17
  br i1 %cmp18, label %cond.true.19, label %cond.false.22

cond.true.19:                                     ; preds = %cond.end.13
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call20 = call i32 @gimp_image_get_height(%struct._GimpImage* %16)
  %sub21 = sub nsw i32 %call20, 1
  br label %cond.end.30

cond.false.22:                                    ; preds = %cond.end.13
  %17 = load %struct._ICurve*, %struct._ICurve** %curve.addr, align 8
  %y123 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %17, i32 0, i32 1
  %18 = load i32, i32* %y123, align 4
  %cmp24 = icmp slt i32 %18, 0
  br i1 %cmp24, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %cond.false.22
  br label %cond.end.28

cond.false.26:                                    ; preds = %cond.false.22
  %19 = load %struct._ICurve*, %struct._ICurve** %curve.addr, align 8
  %y127 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %19, i32 0, i32 1
  %20 = load i32, i32* %y127, align 4
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.26, %cond.true.25
  %cond29 = phi i32 [ 0, %cond.true.25 ], [ %20, %cond.false.26 ]
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.end.28, %cond.true.19
  %cond31 = phi i32 [ %sub21, %cond.true.19 ], [ %cond29, %cond.end.28 ]
  store i32 %cond31, i32* %ys, align 4
  %21 = load %struct._ICurve*, %struct._ICurve** %curve.addr, align 8
  %x232 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %21, i32 0, i32 2
  %22 = load i32, i32* %x232, align 4
  %23 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call33 = call i32 @gimp_image_get_width(%struct._GimpImage* %23)
  %sub34 = sub nsw i32 %call33, 1
  %cmp35 = icmp sgt i32 %22, %sub34
  br i1 %cmp35, label %cond.true.36, label %cond.false.39

cond.true.36:                                     ; preds = %cond.end.30
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call37 = call i32 @gimp_image_get_width(%struct._GimpImage* %24)
  %sub38 = sub nsw i32 %call37, 1
  br label %cond.end.47

cond.false.39:                                    ; preds = %cond.end.30
  %25 = load %struct._ICurve*, %struct._ICurve** %curve.addr, align 8
  %x240 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %25, i32 0, i32 2
  %26 = load i32, i32* %x240, align 4
  %cmp41 = icmp slt i32 %26, 0
  br i1 %cmp41, label %cond.true.42, label %cond.false.43

cond.true.42:                                     ; preds = %cond.false.39
  br label %cond.end.45

cond.false.43:                                    ; preds = %cond.false.39
  %27 = load %struct._ICurve*, %struct._ICurve** %curve.addr, align 8
  %x244 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %27, i32 0, i32 2
  %28 = load i32, i32* %x244, align 4
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.43, %cond.true.42
  %cond46 = phi i32 [ 0, %cond.true.42 ], [ %28, %cond.false.43 ]
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.end.45, %cond.true.36
  %cond48 = phi i32 [ %sub38, %cond.true.36 ], [ %cond46, %cond.end.45 ]
  store i32 %cond48, i32* %xe, align 4
  %29 = load %struct._ICurve*, %struct._ICurve** %curve.addr, align 8
  %y249 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %29, i32 0, i32 3
  %30 = load i32, i32* %y249, align 4
  %31 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call50 = call i32 @gimp_image_get_height(%struct._GimpImage* %31)
  %sub51 = sub nsw i32 %call50, 1
  %cmp52 = icmp sgt i32 %30, %sub51
  br i1 %cmp52, label %cond.true.53, label %cond.false.56

cond.true.53:                                     ; preds = %cond.end.47
  %32 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call54 = call i32 @gimp_image_get_height(%struct._GimpImage* %32)
  %sub55 = sub nsw i32 %call54, 1
  br label %cond.end.64

cond.false.56:                                    ; preds = %cond.end.47
  %33 = load %struct._ICurve*, %struct._ICurve** %curve.addr, align 8
  %y257 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %33, i32 0, i32 3
  %34 = load i32, i32* %y257, align 4
  %cmp58 = icmp slt i32 %34, 0
  br i1 %cmp58, label %cond.true.59, label %cond.false.60

cond.true.59:                                     ; preds = %cond.false.56
  br label %cond.end.62

cond.false.60:                                    ; preds = %cond.false.56
  %35 = load %struct._ICurve*, %struct._ICurve** %curve.addr, align 8
  %y261 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %35, i32 0, i32 3
  %36 = load i32, i32* %y261, align 4
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.60, %cond.true.59
  %cond63 = phi i32 [ 0, %cond.true.59 ], [ %36, %cond.false.60 ]
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.end.62, %cond.true.53
  %cond65 = phi i32 [ %sub55, %cond.true.53 ], [ %cond63, %cond.end.62 ]
  store i32 %cond65, i32* %ye, align 4
  %37 = load i32, i32* %xs, align 4
  %38 = load i32, i32* %xe, align 4
  %cmp66 = icmp slt i32 %37, %38
  br i1 %cmp66, label %cond.true.67, label %cond.false.68

cond.true.67:                                     ; preds = %cond.end.64
  %39 = load i32, i32* %xs, align 4
  br label %cond.end.69

cond.false.68:                                    ; preds = %cond.end.64
  %40 = load i32, i32* %xe, align 4
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.68, %cond.true.67
  %cond70 = phi i32 [ %39, %cond.true.67 ], [ %40, %cond.false.68 ]
  store i32 %cond70, i32* %x1, align 4
  %41 = load i32, i32* %ys, align 4
  %42 = load i32, i32* %ye, align 4
  %cmp71 = icmp slt i32 %41, %42
  br i1 %cmp71, label %cond.true.72, label %cond.false.73

cond.true.72:                                     ; preds = %cond.end.69
  %43 = load i32, i32* %ys, align 4
  br label %cond.end.74

cond.false.73:                                    ; preds = %cond.end.69
  %44 = load i32, i32* %ye, align 4
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.false.73, %cond.true.72
  %cond75 = phi i32 [ %43, %cond.true.72 ], [ %44, %cond.false.73 ]
  store i32 %cond75, i32* %y1, align 4
  %45 = load i32, i32* %xs, align 4
  %46 = load i32, i32* %xe, align 4
  %cmp76 = icmp sgt i32 %45, %46
  br i1 %cmp76, label %cond.true.77, label %cond.false.78

cond.true.77:                                     ; preds = %cond.end.74
  %47 = load i32, i32* %xs, align 4
  br label %cond.end.79

cond.false.78:                                    ; preds = %cond.end.74
  %48 = load i32, i32* %xe, align 4
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.78, %cond.true.77
  %cond80 = phi i32 [ %47, %cond.true.77 ], [ %48, %cond.false.78 ]
  %add = add nsw i32 %cond80, 1
  store i32 %add, i32* %x2, align 4
  %49 = load i32, i32* %ys, align 4
  %50 = load i32, i32* %ye, align 4
  %cmp81 = icmp sgt i32 %49, %50
  br i1 %cmp81, label %cond.true.82, label %cond.false.83

cond.true.82:                                     ; preds = %cond.end.79
  %51 = load i32, i32* %ys, align 4
  br label %cond.end.84

cond.false.83:                                    ; preds = %cond.end.79
  %52 = load i32, i32* %ye, align 4
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.83, %cond.true.82
  %cond85 = phi i32 [ %51, %cond.true.82 ], [ %52, %cond.false.83 ]
  %add86 = add nsw i32 %cond85, 1
  store i32 %add86, i32* %y2, align 4
  %53 = load i32, i32* %x2, align 4
  %54 = load i32, i32* %x1, align 4
  %sub87 = sub nsw i32 %53, %54
  %conv = sitofp i32 %sub87 to double
  %mul = fmul double %conv, 2.000000e-01
  %add88 = fadd double %mul, 5.000000e+00
  %conv89 = fptosi double %add88 to i32
  store i32 %conv89, i32* %ewidth, align 4
  %55 = load i32, i32* %y2, align 4
  %56 = load i32, i32* %y1, align 4
  %sub90 = sub nsw i32 %55, %56
  %conv91 = sitofp i32 %sub90 to double
  %mul92 = fmul double %conv91, 2.000000e-01
  %add93 = fadd double %mul92, 5.000000e+00
  %conv94 = fptosi double %add93 to i32
  store i32 %conv94, i32* %eheight, align 4
  %57 = load i32, i32* %xe, align 4
  %58 = load i32, i32* %xs, align 4
  %cmp95 = icmp sge i32 %57, %58
  br i1 %cmp95, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.84
  %59 = load i32, i32* %ewidth, align 4
  %60 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call97 = call i32 @gimp_image_get_width(%struct._GimpImage* %60)
  %61 = load i32, i32* %x2, align 4
  %sub98 = sub nsw i32 %call97, %61
  %cmp99 = icmp sgt i32 %59, %sub98
  br i1 %cmp99, label %cond.true.101, label %cond.false.104

cond.true.101:                                    ; preds = %if.then
  %62 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call102 = call i32 @gimp_image_get_width(%struct._GimpImage* %62)
  %63 = load i32, i32* %x2, align 4
  %sub103 = sub nsw i32 %call102, %63
  br label %cond.end.111

cond.false.104:                                   ; preds = %if.then
  %64 = load i32, i32* %ewidth, align 4
  %cmp105 = icmp slt i32 %64, 0
  br i1 %cmp105, label %cond.true.107, label %cond.false.108

cond.true.107:                                    ; preds = %cond.false.104
  br label %cond.end.109

cond.false.108:                                   ; preds = %cond.false.104
  %65 = load i32, i32* %ewidth, align 4
  br label %cond.end.109

cond.end.109:                                     ; preds = %cond.false.108, %cond.true.107
  %cond110 = phi i32 [ 0, %cond.true.107 ], [ %65, %cond.false.108 ]
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.end.109, %cond.true.101
  %cond112 = phi i32 [ %sub103, %cond.true.101 ], [ %cond110, %cond.end.109 ]
  %66 = load i32, i32* %x2, align 4
  %add113 = add nsw i32 %66, %cond112
  store i32 %add113, i32* %x2, align 4
  br label %if.end

if.else:                                          ; preds = %cond.end.84
  %67 = load i32, i32* %ewidth, align 4
  %68 = load i32, i32* %x1, align 4
  %cmp114 = icmp sgt i32 %67, %68
  br i1 %cmp114, label %cond.true.116, label %cond.false.117

cond.true.116:                                    ; preds = %if.else
  %69 = load i32, i32* %x1, align 4
  br label %cond.end.124

cond.false.117:                                   ; preds = %if.else
  %70 = load i32, i32* %ewidth, align 4
  %cmp118 = icmp slt i32 %70, 0
  br i1 %cmp118, label %cond.true.120, label %cond.false.121

cond.true.120:                                    ; preds = %cond.false.117
  br label %cond.end.122

cond.false.121:                                   ; preds = %cond.false.117
  %71 = load i32, i32* %ewidth, align 4
  br label %cond.end.122

cond.end.122:                                     ; preds = %cond.false.121, %cond.true.120
  %cond123 = phi i32 [ 0, %cond.true.120 ], [ %71, %cond.false.121 ]
  br label %cond.end.124

cond.end.124:                                     ; preds = %cond.end.122, %cond.true.116
  %cond125 = phi i32 [ %69, %cond.true.116 ], [ %cond123, %cond.end.122 ]
  %72 = load i32, i32* %x1, align 4
  %sub126 = sub nsw i32 %72, %cond125
  store i32 %sub126, i32* %x1, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.124, %cond.end.111
  %73 = load i32, i32* %ye, align 4
  %74 = load i32, i32* %ys, align 4
  %cmp127 = icmp sge i32 %73, %74
  br i1 %cmp127, label %if.then.129, label %if.else.147

if.then.129:                                      ; preds = %if.end
  %75 = load i32, i32* %eheight, align 4
  %76 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call130 = call i32 @gimp_image_get_height(%struct._GimpImage* %76)
  %77 = load i32, i32* %y2, align 4
  %sub131 = sub nsw i32 %call130, %77
  %cmp132 = icmp sgt i32 %75, %sub131
  br i1 %cmp132, label %cond.true.134, label %cond.false.137

cond.true.134:                                    ; preds = %if.then.129
  %78 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call135 = call i32 @gimp_image_get_height(%struct._GimpImage* %78)
  %79 = load i32, i32* %y2, align 4
  %sub136 = sub nsw i32 %call135, %79
  br label %cond.end.144

cond.false.137:                                   ; preds = %if.then.129
  %80 = load i32, i32* %eheight, align 4
  %cmp138 = icmp slt i32 %80, 0
  br i1 %cmp138, label %cond.true.140, label %cond.false.141

cond.true.140:                                    ; preds = %cond.false.137
  br label %cond.end.142

cond.false.141:                                   ; preds = %cond.false.137
  %81 = load i32, i32* %eheight, align 4
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.false.141, %cond.true.140
  %cond143 = phi i32 [ 0, %cond.true.140 ], [ %81, %cond.false.141 ]
  br label %cond.end.144

cond.end.144:                                     ; preds = %cond.end.142, %cond.true.134
  %cond145 = phi i32 [ %sub136, %cond.true.134 ], [ %cond143, %cond.end.142 ]
  %82 = load i32, i32* %y2, align 4
  %add146 = add nsw i32 %82, %cond145
  store i32 %add146, i32* %y2, align 4
  br label %if.end.161

if.else.147:                                      ; preds = %if.end
  %83 = load i32, i32* %eheight, align 4
  %84 = load i32, i32* %y1, align 4
  %cmp148 = icmp sgt i32 %83, %84
  br i1 %cmp148, label %cond.true.150, label %cond.false.151

cond.true.150:                                    ; preds = %if.else.147
  %85 = load i32, i32* %y1, align 4
  br label %cond.end.158

cond.false.151:                                   ; preds = %if.else.147
  %86 = load i32, i32* %eheight, align 4
  %cmp152 = icmp slt i32 %86, 0
  br i1 %cmp152, label %cond.true.154, label %cond.false.155

cond.true.154:                                    ; preds = %cond.false.151
  br label %cond.end.156

cond.false.155:                                   ; preds = %cond.false.151
  %87 = load i32, i32* %eheight, align 4
  br label %cond.end.156

cond.end.156:                                     ; preds = %cond.false.155, %cond.true.154
  %cond157 = phi i32 [ 0, %cond.true.154 ], [ %87, %cond.false.155 ]
  br label %cond.end.158

cond.end.158:                                     ; preds = %cond.end.156, %cond.true.150
  %cond159 = phi i32 [ %85, %cond.true.150 ], [ %cond157, %cond.end.156 ]
  %88 = load i32, i32* %y1, align 4
  %sub160 = sub nsw i32 %88, %cond159
  store i32 %sub160, i32* %y1, align 4
  br label %if.end.161

if.end.161:                                       ; preds = %cond.end.158, %cond.end.144
  %89 = load %struct._ICurve*, %struct._ICurve** %curve.addr, align 8
  %points = getelementptr inbounds %struct._ICurve, %struct._ICurve* %89, i32 0, i32 4
  %90 = load %struct._GPtrArray*, %struct._GPtrArray** %points, align 8
  %tobool = icmp ne %struct._GPtrArray* %90, null
  br i1 %tobool, label %if.then.162, label %if.end.166

if.then.162:                                      ; preds = %if.end.161
  %91 = load %struct._ICurve*, %struct._ICurve** %curve.addr, align 8
  %points163 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %91, i32 0, i32 4
  %92 = load %struct._GPtrArray*, %struct._GPtrArray** %points163, align 8
  %call164 = call i8** @g_ptr_array_free(%struct._GPtrArray* %92, i32 1)
  %93 = load %struct._ICurve*, %struct._ICurve** %curve.addr, align 8
  %points165 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %93, i32 0, i32 4
  store %struct._GPtrArray* null, %struct._GPtrArray** %points165, align 8
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.162, %if.end.161
  %94 = load i32, i32* %x2, align 4
  %95 = load i32, i32* %x1, align 4
  %sub167 = sub nsw i32 %94, %95
  %tobool168 = icmp ne i32 %sub167, 0
  br i1 %tobool168, label %land.lhs.true, label %if.else.186

land.lhs.true:                                    ; preds = %if.end.166
  %96 = load i32, i32* %y2, align 4
  %97 = load i32, i32* %y1, align 4
  %sub169 = sub nsw i32 %96, %97
  %tobool170 = icmp ne i32 %sub169, 0
  br i1 %tobool170, label %if.then.171, label %if.else.186

if.then.171:                                      ; preds = %land.lhs.true
  %98 = load i32, i32* %x2, align 4
  %99 = load i32, i32* %x1, align 4
  %sub172 = sub nsw i32 %98, %99
  store i32 %sub172, i32* %width, align 4
  %100 = load i32, i32* %y2, align 4
  %101 = load i32, i32* %y1, align 4
  %sub173 = sub nsw i32 %100, %101
  store i32 %sub173, i32* %height, align 4
  %102 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %gradient_map = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %102, i32 0, i32 17
  %103 = load %struct._TileManager*, %struct._TileManager** %gradient_map, align 8
  %tobool174 = icmp ne %struct._TileManager* %103, null
  br i1 %tobool174, label %if.end.178, label %if.then.175

if.then.175:                                      ; preds = %if.then.171
  %104 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call176 = call %struct._TileManager* @gradient_map_new(%struct._GimpImage* %104)
  %105 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %gradient_map177 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %105, i32 0, i32 17
  store %struct._TileManager* %call176, %struct._TileManager** %gradient_map177, align 8
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.175, %if.then.171
  %106 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %dp_buf = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %106, i32 0, i32 8
  %107 = load %struct._TempBuf*, %struct._TempBuf** %dp_buf, align 8
  %108 = load i32, i32* %x1, align 4
  %109 = load i32, i32* %y1, align 4
  %110 = load i32, i32* %width, align 4
  %111 = load i32, i32* %height, align 4
  %call179 = call %struct._TempBuf* @temp_buf_resize(%struct._TempBuf* %107, i32 4, i32 %108, i32 %109, i32 %110, i32 %111)
  %112 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %dp_buf180 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %112, i32 0, i32 8
  store %struct._TempBuf* %call179, %struct._TempBuf** %dp_buf180, align 8
  %113 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %gradient_map181 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %113, i32 0, i32 17
  %114 = load %struct._TileManager*, %struct._TileManager** %gradient_map181, align 8
  %115 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %dp_buf182 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %115, i32 0, i32 8
  %116 = load %struct._TempBuf*, %struct._TempBuf** %dp_buf182, align 8
  %117 = load i32, i32* %x1, align 4
  %118 = load i32, i32* %y1, align 4
  %119 = load i32, i32* %x2, align 4
  %120 = load i32, i32* %y2, align 4
  %121 = load i32, i32* %xs, align 4
  %122 = load i32, i32* %ys, align 4
  call void @find_optimal_path(%struct._TileManager* %114, %struct._TempBuf* %116, i32 %117, i32 %118, i32 %119, i32 %120, i32 %121, i32 %122)
  %123 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %124 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %dp_buf183 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %124, i32 0, i32 8
  %125 = load %struct._TempBuf*, %struct._TempBuf** %dp_buf183, align 8
  %126 = load i32, i32* %x1, align 4
  %127 = load i32, i32* %y1, align 4
  %128 = load i32, i32* %xs, align 4
  %129 = load i32, i32* %ys, align 4
  %130 = load i32, i32* %xe, align 4
  %131 = load i32, i32* %ye, align 4
  %call184 = call %struct._GPtrArray* @plot_pixels(%struct._GimpIscissorsTool* %123, %struct._TempBuf* %125, i32 %126, i32 %127, i32 %128, i32 %129, i32 %130, i32 %131)
  %132 = load %struct._ICurve*, %struct._ICurve** %curve.addr, align 8
  %points185 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %132, i32 0, i32 4
  store %struct._GPtrArray* %call184, %struct._GPtrArray** %points185, align 8
  br label %if.end.224

if.else.186:                                      ; preds = %land.lhs.true, %if.end.166
  %133 = load i32, i32* %x2, align 4
  %134 = load i32, i32* %x1, align 4
  %sub187 = sub nsw i32 %133, %134
  %cmp188 = icmp eq i32 %sub187, 0
  br i1 %cmp188, label %if.then.190, label %if.else.202

if.then.190:                                      ; preds = %if.else.186
  %135 = load i32, i32* %ys, align 4
  store i32 %135, i32* %y, align 4
  %136 = load i32, i32* %ys, align 4
  %137 = load i32, i32* %ye, align 4
  %cmp191 = icmp sgt i32 %136, %137
  %cond193 = select i1 %cmp191, i32 -1, i32 1
  store i32 %cond193, i32* %dir, align 4
  %call194 = call %struct._GPtrArray* @g_ptr_array_new()
  %138 = load %struct._ICurve*, %struct._ICurve** %curve.addr, align 8
  %points195 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %138, i32 0, i32 4
  store %struct._GPtrArray* %call194, %struct._GPtrArray** %points195, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.190
  %139 = load i32, i32* %y, align 4
  %140 = load i32, i32* %ye, align 4
  %cmp196 = icmp ne i32 %139, %140
  br i1 %cmp196, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %141 = load %struct._ICurve*, %struct._ICurve** %curve.addr, align 8
  %points198 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %141, i32 0, i32 4
  %142 = load %struct._GPtrArray*, %struct._GPtrArray** %points198, align 8
  %143 = load i32, i32* %y, align 4
  %shl = shl i32 %143, 16
  %144 = load i32, i32* %xs, align 4
  %add199 = add nsw i32 %shl, %144
  %conv200 = sext i32 %add199 to i64
  %145 = inttoptr i64 %conv200 to i8*
  call void @g_ptr_array_add(%struct._GPtrArray* %142, i8* %145)
  %146 = load i32, i32* %dir, align 4
  %147 = load i32, i32* %y, align 4
  %add201 = add nsw i32 %147, %146
  store i32 %add201, i32* %y, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.223

if.else.202:                                      ; preds = %if.else.186
  %148 = load i32, i32* %y2, align 4
  %149 = load i32, i32* %y1, align 4
  %sub203 = sub nsw i32 %148, %149
  %cmp204 = icmp eq i32 %sub203, 0
  br i1 %cmp204, label %if.then.206, label %if.end.222

if.then.206:                                      ; preds = %if.else.202
  %150 = load i32, i32* %xs, align 4
  store i32 %150, i32* %x, align 4
  %151 = load i32, i32* %xs, align 4
  %152 = load i32, i32* %xe, align 4
  %cmp207 = icmp sgt i32 %151, %152
  %cond209 = select i1 %cmp207, i32 -1, i32 1
  store i32 %cond209, i32* %dir, align 4
  %call210 = call %struct._GPtrArray* @g_ptr_array_new()
  %153 = load %struct._ICurve*, %struct._ICurve** %curve.addr, align 8
  %points211 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %153, i32 0, i32 4
  store %struct._GPtrArray* %call210, %struct._GPtrArray** %points211, align 8
  br label %while.cond.212

while.cond.212:                                   ; preds = %while.body.215, %if.then.206
  %154 = load i32, i32* %x, align 4
  %155 = load i32, i32* %xe, align 4
  %cmp213 = icmp ne i32 %154, %155
  br i1 %cmp213, label %while.body.215, label %while.end.221

while.body.215:                                   ; preds = %while.cond.212
  %156 = load %struct._ICurve*, %struct._ICurve** %curve.addr, align 8
  %points216 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %156, i32 0, i32 4
  %157 = load %struct._GPtrArray*, %struct._GPtrArray** %points216, align 8
  %158 = load i32, i32* %ys, align 4
  %shl217 = shl i32 %158, 16
  %159 = load i32, i32* %x, align 4
  %add218 = add nsw i32 %shl217, %159
  %conv219 = sext i32 %add218 to i64
  %160 = inttoptr i64 %conv219 to i8*
  call void @g_ptr_array_add(%struct._GPtrArray* %157, i8* %160)
  %161 = load i32, i32* %dir, align 4
  %162 = load i32, i32* %x, align 4
  %add220 = add nsw i32 %162, %161
  store i32 %add220, i32* %x, align 4
  br label %while.cond.212

while.end.221:                                    ; preds = %while.cond.212
  br label %if.end.222

if.end.222:                                       ; preds = %while.end.221, %if.else.202
  br label %if.end.223

if.end.223:                                       ; preds = %if.end.222, %while.end
  br label %if.end.224

if.end.224:                                       ; preds = %if.end.223, %if.end.178
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @iscissors_convert(%struct._GimpIscissorsTool* %iscissors, %struct._GimpDisplay* %display) #3 {
entry:
  %iscissors.addr = alloca %struct._GimpIscissorsTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %options = alloca %struct._GimpSelectionOptions*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %sc = alloca %struct._GimpScanConvert*, align 8
  %list = alloca %struct._GList*, align 8
  %points = alloca %struct._GimpVector2*, align 8
  %n_total_points = alloca i32, align 4
  %icurve = alloca %struct._ICurve*, align 8
  %icurve16 = alloca %struct._ICurve*, align 8
  %i = alloca i32, align 4
  %n_points = alloca i32, align 4
  %packed = alloca i32, align 4
  store %struct._GimpIscissorsTool* %iscissors, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %1 = bitcast %struct._GimpIscissorsTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  %call2 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %2)
  %3 = bitcast %struct._GimpToolOptions* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_selection_options_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpSelectionOptions*
  store %struct._GimpSelectionOptions* %4, %struct._GimpSelectionOptions** %options, align 8
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call5 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %5)
  store %struct._GimpImage* %call5, %struct._GimpImage** %image, align 8
  store %struct._GimpVector2* null, %struct._GimpVector2** %points, align 8
  store i32 0, i32* %n_total_points, align 4
  %call6 = call %struct._GimpScanConvert* @gimp_scan_convert_new()
  store %struct._GimpScanConvert* %call6, %struct._GimpScanConvert** %sc, align 8
  %6 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %curves = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %6, i32 0, i32 12
  %7 = load %struct._GQueue*, %struct._GQueue** %curves, align 8
  %call7 = call %struct._GList* @g_queue_peek_tail_link(%struct._GQueue* %7)
  store %struct._GList* %call7, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %8 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %8, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %9, i32 0, i32 0
  %10 = load i8*, i8** %data, align 8
  %11 = bitcast i8* %10 to %struct._ICurve*
  store %struct._ICurve* %11, %struct._ICurve** %icurve, align 8
  %12 = load %struct._ICurve*, %struct._ICurve** %icurve, align 8
  %points8 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %12, i32 0, i32 4
  %13 = load %struct._GPtrArray*, %struct._GPtrArray** %points8, align 8
  %len = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %13, i32 0, i32 1
  %14 = load i32, i32* %len, align 4
  %15 = load i32, i32* %n_total_points, align 4
  %add = add i32 %15, %14
  store i32 %add, i32* %n_total_points, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool9 = icmp ne %struct._GList* %16, null
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %prev = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 2
  %18 = load %struct._GList*, %struct._GList** %prev, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %18, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %n_total_points, align 4
  %conv = zext i32 %19 to i64
  %call10 = call noalias i8* @g_malloc_n(i64 %conv, i64 16)
  %20 = bitcast i8* %call10 to %struct._GimpVector2*
  store %struct._GimpVector2* %20, %struct._GimpVector2** %points, align 8
  store i32 0, i32* %n_total_points, align 4
  %21 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %curves11 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %21, i32 0, i32 12
  %22 = load %struct._GQueue*, %struct._GQueue** %curves11, align 8
  %call12 = call %struct._GList* @g_queue_peek_tail_link(%struct._GQueue* %22)
  store %struct._GList* %call12, %struct._GList** %list, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %cond.end.41, %for.end
  %23 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool14 = icmp ne %struct._GList* %23, null
  br i1 %tobool14, label %for.body.15, label %for.end.43

for.body.15:                                      ; preds = %for.cond.13
  %24 = load %struct._GList*, %struct._GList** %list, align 8
  %data17 = getelementptr inbounds %struct._GList, %struct._GList* %24, i32 0, i32 0
  %25 = load i8*, i8** %data17, align 8
  %26 = bitcast i8* %25 to %struct._ICurve*
  store %struct._ICurve* %26, %struct._ICurve** %icurve16, align 8
  %27 = load %struct._ICurve*, %struct._ICurve** %icurve16, align 8
  %points18 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %27, i32 0, i32 4
  %28 = load %struct._GPtrArray*, %struct._GPtrArray** %points18, align 8
  %len19 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %28, i32 0, i32 1
  %29 = load i32, i32* %len19, align 4
  store i32 %29, i32* %n_points, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.33, %for.body.15
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %n_points, align 4
  %cmp = icmp ult i32 %30, %31
  br i1 %cmp, label %for.body.22, label %for.end.34

for.body.22:                                      ; preds = %for.cond.20
  %32 = load i32, i32* %i, align 4
  %idxprom = sext i32 %32 to i64
  %33 = load %struct._ICurve*, %struct._ICurve** %icurve16, align 8
  %points23 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %33, i32 0, i32 4
  %34 = load %struct._GPtrArray*, %struct._GPtrArray** %points23, align 8
  %pdata = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %34, i32 0, i32 0
  %35 = load i8**, i8*** %pdata, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %35, i64 %idxprom
  %36 = load i8*, i8** %arrayidx, align 8
  %37 = ptrtoint i8* %36 to i64
  %conv24 = trunc i64 %37 to i32
  store i32 %conv24, i32* %packed, align 4
  %38 = load i32, i32* %packed, align 4
  %and = and i32 %38, 65535
  %conv25 = uitofp i32 %and to double
  %39 = load i32, i32* %n_total_points, align 4
  %40 = load i32, i32* %i, align 4
  %add26 = add i32 %39, %40
  %idxprom27 = zext i32 %add26 to i64
  %41 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %arrayidx28 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %41, i64 %idxprom27
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx28, i32 0, i32 0
  store double %conv25, double* %x, align 8
  %42 = load i32, i32* %packed, align 4
  %shr = lshr i32 %42, 16
  %conv29 = uitofp i32 %shr to double
  %43 = load i32, i32* %n_total_points, align 4
  %44 = load i32, i32* %i, align 4
  %add30 = add i32 %43, %44
  %idxprom31 = zext i32 %add30 to i64
  %45 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %arrayidx32 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %45, i64 %idxprom31
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx32, i32 0, i32 1
  store double %conv29, double* %y, align 8
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.22
  %46 = load i32, i32* %i, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.20

for.end.34:                                       ; preds = %for.cond.20
  %47 = load i32, i32* %n_points, align 4
  %48 = load i32, i32* %n_total_points, align 4
  %add35 = add i32 %48, %47
  store i32 %add35, i32* %n_total_points, align 4
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.end.34
  %49 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool37 = icmp ne %struct._GList* %49, null
  br i1 %tobool37, label %cond.true.38, label %cond.false.40

cond.true.38:                                     ; preds = %for.inc.36
  %50 = load %struct._GList*, %struct._GList** %list, align 8
  %prev39 = getelementptr inbounds %struct._GList, %struct._GList* %50, i32 0, i32 2
  %51 = load %struct._GList*, %struct._GList** %prev39, align 8
  br label %cond.end.41

cond.false.40:                                    ; preds = %for.inc.36
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.40, %cond.true.38
  %cond42 = phi %struct._GList* [ %51, %cond.true.38 ], [ null, %cond.false.40 ]
  store %struct._GList* %cond42, %struct._GList** %list, align 8
  br label %for.cond.13

for.end.43:                                       ; preds = %for.cond.13
  %52 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc, align 8
  %53 = load i32, i32* %n_total_points, align 4
  %54 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  call void @gimp_scan_convert_add_polyline(%struct._GimpScanConvert* %52, i32 %53, %struct._GimpVector2* %54, i32 1)
  %55 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %56 = bitcast %struct._GimpVector2* %55 to i8*
  call void @g_free(i8* %56)
  %57 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %mask = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %57, i32 0, i32 16
  %58 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %tobool44 = icmp ne %struct._GimpChannel* %58, null
  br i1 %tobool44, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.43
  %59 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %mask45 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %59, i32 0, i32 16
  %60 = load %struct._GimpChannel*, %struct._GimpChannel** %mask45, align 8
  %61 = bitcast %struct._GimpChannel* %60 to i8*
  call void @g_object_unref(i8* %61)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.43
  %62 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %63 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call46 = call i32 @gimp_image_get_width(%struct._GimpImage* %63)
  %64 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call47 = call i32 @gimp_image_get_height(%struct._GimpImage* %64)
  %call48 = call %struct._GimpChannel* @gimp_channel_new_mask(%struct._GimpImage* %62, i32 %call46, i32 %call47)
  %65 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %mask49 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %65, i32 0, i32 16
  store %struct._GimpChannel* %call48, %struct._GimpChannel** %mask49, align 8
  %66 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc, align 8
  %67 = load %struct._GimpIscissorsTool*, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  %mask50 = getelementptr inbounds %struct._GimpIscissorsTool, %struct._GimpIscissorsTool* %67, i32 0, i32 16
  %68 = load %struct._GimpChannel*, %struct._GimpChannel** %mask50, align 8
  %69 = bitcast %struct._GimpChannel* %68 to %struct._GTypeInstance*
  %call51 = call i64 @gimp_drawable_get_type() #5
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call51)
  %70 = bitcast %struct._GTypeInstance* %call52 to %struct._GimpDrawable*
  %call53 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %70)
  %71 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %options, align 8
  %antialias = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %71, i32 0, i32 2
  %72 = load i32, i32* %antialias, align 4
  call void @gimp_scan_convert_render(%struct._GimpScanConvert* %66, %struct._TileManager* %call53, i32 0, i32 0, i32 %72)
  %73 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc, align 8
  call void @gimp_scan_convert_free(%struct._GimpScanConvert* %73)
  ret void
}

declare %struct._TempBuf* @temp_buf_resize(%struct._TempBuf*, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @find_optimal_path(%struct._TileManager* %gradient_map, %struct._TempBuf* %dp_buf, i32 %x1, i32 %y1, i32 %x2, i32 %y2, i32 %xs, i32 %ys) #3 {
entry:
  %gradient_map.addr = alloca %struct._TileManager*, align 8
  %dp_buf.addr = alloca %struct._TempBuf*, align 8
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %xs.addr = alloca i32, align 4
  %ys.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %link = alloca i32, align 4
  %linkdir = alloca i32, align 4
  %dirx = alloca i32, align 4
  %diry = alloca i32, align 4
  %min_cost = alloca i32, align 4
  %new_cost = alloca i32, align 4
  %offset = alloca i32, align 4
  %cum_cost = alloca [8 x i32], align 16
  %link_cost = alloca [8 x i32], align 16
  %pixel_cost = alloca [8 x i32], align 16
  %pixel = alloca [8 x i32], align 16
  %data = alloca i32*, align 8
  %d = alloca i32*, align 8
  store %struct._TileManager* %gradient_map, %struct._TileManager** %gradient_map.addr, align 8
  store %struct._TempBuf* %dp_buf, %struct._TempBuf** %dp_buf.addr, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  store i32 %xs, i32* %xs.addr, align 4
  store i32 %ys, i32* %ys.addr, align 4
  %0 = load %struct._TempBuf*, %struct._TempBuf** %dp_buf.addr, align 8
  %call = call i8* @temp_buf_data_clear(%struct._TempBuf* %0)
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %data, align 8
  %2 = load i32, i32* %xs.addr, align 4
  %3 = load i32, i32* %x1.addr, align 4
  %sub = sub nsw i32 %2, %3
  %cmp = icmp eq i32 %sub, 0
  %cond = select i1 %cmp, i32 1, i32 -1
  store i32 %cond, i32* %dirx, align 4
  %4 = load i32, i32* %ys.addr, align 4
  %5 = load i32, i32* %y1.addr, align 4
  %sub1 = sub nsw i32 %4, %5
  %cmp2 = icmp eq i32 %sub1, 0
  %cond3 = select i1 %cmp2, i32 1, i32 -1
  store i32 %cond3, i32* %diry, align 4
  %6 = load i32, i32* %dirx, align 4
  %7 = load i32, i32* %diry, align 4
  %mul = mul nsw i32 %6, %7
  store i32 %mul, i32* %linkdir, align 4
  %8 = load i32, i32* %ys.addr, align 4
  store i32 %8, i32* %y, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.195, %entry
  %9 = load i32, i32* %i, align 4
  %10 = load %struct._TempBuf*, %struct._TempBuf** %dp_buf.addr, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %10, i32 0, i32 2
  %11 = load i32, i32* %height, align 4
  %cmp4 = icmp slt i32 %9, %11
  br i1 %cmp4, label %for.body, label %for.end.197

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %xs.addr, align 4
  store i32 %12, i32* %x, align 4
  %13 = load i32*, i32** %data, align 8
  %14 = load i32, i32* %y, align 4
  %15 = load i32, i32* %y1.addr, align 4
  %sub5 = sub nsw i32 %14, %15
  %16 = load %struct._TempBuf*, %struct._TempBuf** %dp_buf.addr, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %16, i32 0, i32 1
  %17 = load i32, i32* %width, align 4
  %mul6 = mul nsw i32 %sub5, %17
  %idx.ext = sext i32 %mul6 to i64
  %add.ptr = getelementptr inbounds i32, i32* %13, i64 %idx.ext
  %18 = load i32, i32* %x, align 4
  %19 = load i32, i32* %x1.addr, align 4
  %sub7 = sub nsw i32 %18, %19
  %idx.ext8 = sext i32 %sub7 to i64
  %add.ptr9 = getelementptr inbounds i32, i32* %add.ptr, i64 %idx.ext8
  store i32* %add.ptr9, i32** %d, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.191, %for.body
  %20 = load i32, i32* %j, align 4
  %21 = load %struct._TempBuf*, %struct._TempBuf** %dp_buf.addr, align 8
  %width11 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %21, i32 0, i32 1
  %22 = load i32, i32* %width11, align 4
  %cmp12 = icmp slt i32 %20, %22
  br i1 %cmp12, label %for.body.13, label %for.end.193

for.body.13:                                      ; preds = %for.cond.10
  store i32 2147483647, i32* %min_cost, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %for.body.13
  %23 = load i32, i32* %k, align 4
  %cmp15 = icmp slt i32 %23, 8
  br i1 %cmp15, label %for.body.16, label %for.end

for.body.16:                                      ; preds = %for.cond.14
  %24 = load i32, i32* %k, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %pixel, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.16
  %25 = load i32, i32* %k, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.14

for.end:                                          ; preds = %for.cond.14
  %26 = load i32, i32* %j, align 4
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %27 = load i32, i32* %dirx, align 4
  %sub17 = sub nsw i32 0, %27
  %and = and i32 %sub17, 255
  %or = or i32 0, %and
  %28 = load i32, i32* %dirx, align 4
  %cmp18 = icmp eq i32 %28, 1
  %cond19 = select i1 %cmp18, i32 4, i32 0
  %idxprom20 = sext i32 %cond19 to i64
  %arrayidx21 = getelementptr inbounds [8 x i32], [8 x i32]* %pixel, i32 0, i64 %idxprom20
  store i32 %or, i32* %arrayidx21, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %29 = load i32, i32* %i, align 4
  %tobool22 = icmp ne i32 %29, 0
  br i1 %tobool22, label %if.then.23, label %if.end.65

if.then.23:                                       ; preds = %if.end
  %30 = load i32, i32* %diry, align 4
  %sub24 = sub nsw i32 0, %30
  %and25 = and i32 %sub24, 255
  %shl = shl i32 %and25, 8
  %31 = load i32, i32* %diry, align 4
  %cmp26 = icmp eq i32 %31, 1
  %cond27 = select i1 %cmp26, i32 5, i32 1
  %idxprom28 = sext i32 %cond27 to i64
  %arrayidx29 = getelementptr inbounds [8 x i32], [8 x i32]* %pixel, i32 0, i64 %idxprom28
  store i32 %shl, i32* %arrayidx29, align 4
  %32 = load i32, i32* %linkdir, align 4
  %cmp30 = icmp eq i32 %32, 1
  %cond31 = select i1 %cmp30, i32 3, i32 2
  store i32 %cond31, i32* %link, align 4
  %33 = load i32, i32* %j, align 4
  %tobool32 = icmp ne i32 %33, 0
  br i1 %tobool32, label %if.then.33, label %if.end.44

if.then.33:                                       ; preds = %if.then.23
  %34 = load i32, i32* %diry, align 4
  %sub34 = sub nsw i32 0, %34
  %and35 = and i32 %sub34, 255
  %shl36 = shl i32 %and35, 8
  %35 = load i32, i32* %dirx, align 4
  %sub37 = sub nsw i32 0, %35
  %and38 = and i32 %sub37, 255
  %or39 = or i32 %shl36, %and38
  %36 = load i32, i32* %diry, align 4
  %cmp40 = icmp eq i32 %36, 1
  br i1 %cmp40, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.33
  %37 = load i32, i32* %link, align 4
  %add = add nsw i32 %37, 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.33
  %38 = load i32, i32* %link, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond41 = phi i32 [ %add, %cond.true ], [ %38, %cond.false ]
  %idxprom42 = sext i32 %cond41 to i64
  %arrayidx43 = getelementptr inbounds [8 x i32], [8 x i32]* %pixel, i32 0, i64 %idxprom42
  store i32 %or39, i32* %arrayidx43, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %cond.end, %if.then.23
  %39 = load i32, i32* %linkdir, align 4
  %cmp45 = icmp eq i32 %39, 1
  %cond46 = select i1 %cmp45, i32 2, i32 3
  store i32 %cond46, i32* %link, align 4
  %40 = load i32, i32* %j, align 4
  %41 = load %struct._TempBuf*, %struct._TempBuf** %dp_buf.addr, align 8
  %width47 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %41, i32 0, i32 1
  %42 = load i32, i32* %width47, align 4
  %sub48 = sub nsw i32 %42, 1
  %cmp49 = icmp ne i32 %40, %sub48
  br i1 %cmp49, label %if.then.50, label %if.end.64

if.then.50:                                       ; preds = %if.end.44
  %43 = load i32, i32* %diry, align 4
  %sub51 = sub nsw i32 0, %43
  %and52 = and i32 %sub51, 255
  %shl53 = shl i32 %and52, 8
  %44 = load i32, i32* %dirx, align 4
  %and54 = and i32 %44, 255
  %or55 = or i32 %shl53, %and54
  %45 = load i32, i32* %diry, align 4
  %cmp56 = icmp eq i32 %45, 1
  br i1 %cmp56, label %cond.true.57, label %cond.false.59

cond.true.57:                                     ; preds = %if.then.50
  %46 = load i32, i32* %link, align 4
  %add58 = add nsw i32 %46, 4
  br label %cond.end.60

cond.false.59:                                    ; preds = %if.then.50
  %47 = load i32, i32* %link, align 4
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.false.59, %cond.true.57
  %cond61 = phi i32 [ %add58, %cond.true.57 ], [ %47, %cond.false.59 ]
  %idxprom62 = sext i32 %cond61 to i64
  %arrayidx63 = getelementptr inbounds [8 x i32], [8 x i32]* %pixel, i32 0, i64 %idxprom62
  store i32 %or55, i32* %arrayidx63, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %cond.end.60, %if.end.44
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.end
  store i32 -1, i32* %link, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.121, %if.end.65
  %48 = load i32, i32* %k, align 4
  %cmp67 = icmp slt i32 %48, 8
  br i1 %cmp67, label %for.body.68, label %for.end.123

for.body.68:                                      ; preds = %for.cond.66
  %49 = load i32, i32* %k, align 4
  %idxprom69 = sext i32 %49 to i64
  %arrayidx70 = getelementptr inbounds [8 x i32], [8 x i32]* %pixel, i32 0, i64 %idxprom69
  %50 = load i32, i32* %arrayidx70, align 4
  %tobool71 = icmp ne i32 %50, 0
  br i1 %tobool71, label %if.then.72, label %if.end.120

if.then.72:                                       ; preds = %for.body.68
  %51 = load %struct._TileManager*, %struct._TileManager** %gradient_map.addr, align 8
  %52 = load i32, i32* %xs.addr, align 4
  %53 = load i32, i32* %j, align 4
  %54 = load i32, i32* %dirx, align 4
  %mul73 = mul nsw i32 %53, %54
  %add74 = add nsw i32 %52, %mul73
  %55 = load i32, i32* %ys.addr, align 4
  %56 = load i32, i32* %i, align 4
  %57 = load i32, i32* %diry, align 4
  %mul75 = mul nsw i32 %56, %57
  %add76 = add nsw i32 %55, %mul75
  %58 = load i32, i32* %k, align 4
  %idxprom77 = sext i32 %58 to i64
  %arrayidx78 = getelementptr inbounds [8 x i32], [8 x i32]* %pixel, i32 0, i64 %idxprom77
  %59 = load i32, i32* %arrayidx78, align 4
  %60 = load i32, i32* %k, align 4
  %cmp79 = icmp sgt i32 %60, 3
  br i1 %cmp79, label %cond.true.80, label %cond.false.82

cond.true.80:                                     ; preds = %if.then.72
  %61 = load i32, i32* %k, align 4
  %sub81 = sub nsw i32 %61, 4
  br label %cond.end.83

cond.false.82:                                    ; preds = %if.then.72
  %62 = load i32, i32* %k, align 4
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.82, %cond.true.80
  %cond84 = phi i32 [ %sub81, %cond.true.80 ], [ %62, %cond.false.82 ]
  %call85 = call i32 @calculate_link(%struct._TileManager* %51, i32 %add74, i32 %add76, i32 %59, i32 %cond84)
  %63 = load i32, i32* %k, align 4
  %idxprom86 = sext i32 %63 to i64
  %arrayidx87 = getelementptr inbounds [8 x i32], [8 x i32]* %link_cost, i32 0, i64 %idxprom86
  store i32 %call85, i32* %arrayidx87, align 4
  %64 = load i32, i32* %k, align 4
  %idxprom88 = sext i32 %64 to i64
  %arrayidx89 = getelementptr inbounds [8 x i32], [8 x i32]* %pixel, i32 0, i64 %idxprom88
  %65 = load i32, i32* %arrayidx89, align 4
  %and90 = and i32 %65, 255
  %conv = trunc i32 %and90 to i8
  %conv91 = sext i8 %conv to i32
  %66 = load i32, i32* %k, align 4
  %idxprom92 = sext i32 %66 to i64
  %arrayidx93 = getelementptr inbounds [8 x i32], [8 x i32]* %pixel, i32 0, i64 %idxprom92
  %67 = load i32, i32* %arrayidx93, align 4
  %and94 = and i32 %67, 65280
  %shr = lshr i32 %and94, 8
  %conv95 = trunc i32 %shr to i8
  %conv96 = sext i8 %conv95 to i32
  %68 = load %struct._TempBuf*, %struct._TempBuf** %dp_buf.addr, align 8
  %width97 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %68, i32 0, i32 1
  %69 = load i32, i32* %width97, align 4
  %mul98 = mul nsw i32 %conv96, %69
  %add99 = add nsw i32 %conv91, %mul98
  store i32 %add99, i32* %offset, align 4
  %70 = load i32, i32* %offset, align 4
  %idxprom100 = sext i32 %70 to i64
  %71 = load i32*, i32** %d, align 8
  %arrayidx101 = getelementptr inbounds i32, i32* %71, i64 %idxprom100
  %72 = load i32, i32* %arrayidx101, align 4
  %shr102 = lshr i32 %72, 8
  %73 = load i32, i32* %k, align 4
  %idxprom103 = sext i32 %73 to i64
  %arrayidx104 = getelementptr inbounds [8 x i32], [8 x i32]* %pixel_cost, i32 0, i64 %idxprom103
  store i32 %shr102, i32* %arrayidx104, align 4
  %74 = load i32, i32* %k, align 4
  %idxprom105 = sext i32 %74 to i64
  %arrayidx106 = getelementptr inbounds [8 x i32], [8 x i32]* %pixel_cost, i32 0, i64 %idxprom105
  %75 = load i32, i32* %arrayidx106, align 4
  %76 = load i32, i32* %k, align 4
  %idxprom107 = sext i32 %76 to i64
  %arrayidx108 = getelementptr inbounds [8 x i32], [8 x i32]* %link_cost, i32 0, i64 %idxprom107
  %77 = load i32, i32* %arrayidx108, align 4
  %add109 = add nsw i32 %75, %77
  %78 = load i32, i32* %k, align 4
  %idxprom110 = sext i32 %78 to i64
  %arrayidx111 = getelementptr inbounds [8 x i32], [8 x i32]* %cum_cost, i32 0, i64 %idxprom110
  store i32 %add109, i32* %arrayidx111, align 4
  %79 = load i32, i32* %k, align 4
  %idxprom112 = sext i32 %79 to i64
  %arrayidx113 = getelementptr inbounds [8 x i32], [8 x i32]* %cum_cost, i32 0, i64 %idxprom112
  %80 = load i32, i32* %arrayidx113, align 4
  %81 = load i32, i32* %min_cost, align 4
  %cmp114 = icmp slt i32 %80, %81
  br i1 %cmp114, label %if.then.116, label %if.end.119

if.then.116:                                      ; preds = %cond.end.83
  %82 = load i32, i32* %k, align 4
  %idxprom117 = sext i32 %82 to i64
  %arrayidx118 = getelementptr inbounds [8 x i32], [8 x i32]* %cum_cost, i32 0, i64 %idxprom117
  %83 = load i32, i32* %arrayidx118, align 4
  store i32 %83, i32* %min_cost, align 4
  %84 = load i32, i32* %k, align 4
  store i32 %84, i32* %link, align 4
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.116, %cond.end.83
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %for.body.68
  br label %for.inc.121

for.inc.121:                                      ; preds = %if.end.120
  %85 = load i32, i32* %k, align 4
  %inc122 = add nsw i32 %85, 1
  store i32 %inc122, i32* %k, align 4
  br label %for.cond.66

for.end.123:                                      ; preds = %for.cond.66
  %86 = load i32, i32* %link, align 4
  %cmp124 = icmp sge i32 %86, 0
  br i1 %cmp124, label %if.then.126, label %if.else

if.then.126:                                      ; preds = %for.end.123
  %87 = load i32, i32* %link, align 4
  %idxprom127 = sext i32 %87 to i64
  %arrayidx128 = getelementptr inbounds [8 x i32], [8 x i32]* %cum_cost, i32 0, i64 %idxprom127
  %88 = load i32, i32* %arrayidx128, align 4
  %shl129 = shl i32 %88, 8
  %89 = load i32, i32* %link, align 4
  %add130 = add nsw i32 %shl129, %89
  %90 = load i32*, i32** %d, align 8
  store i32 %add130, i32* %90, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.131

for.cond.131:                                     ; preds = %for.inc.179, %if.then.126
  %91 = load i32, i32* %k, align 4
  %cmp132 = icmp slt i32 %91, 8
  br i1 %cmp132, label %for.body.134, label %for.end.181

for.body.134:                                     ; preds = %for.cond.131
  %92 = load i32, i32* %k, align 4
  %idxprom135 = sext i32 %92 to i64
  %arrayidx136 = getelementptr inbounds [8 x i32], [8 x i32]* %pixel, i32 0, i64 %idxprom135
  %93 = load i32, i32* %arrayidx136, align 4
  %tobool137 = icmp ne i32 %93, 0
  br i1 %tobool137, label %land.lhs.true, label %if.end.178

land.lhs.true:                                    ; preds = %for.body.134
  %94 = load i32, i32* %k, align 4
  %95 = load i32, i32* %link, align 4
  %cmp138 = icmp ne i32 %94, %95
  br i1 %cmp138, label %if.then.140, label %if.end.178

if.then.140:                                      ; preds = %land.lhs.true
  %96 = load i32, i32* %k, align 4
  %idxprom141 = sext i32 %96 to i64
  %arrayidx142 = getelementptr inbounds [8 x i32], [8 x i32]* %link_cost, i32 0, i64 %idxprom141
  %97 = load i32, i32* %arrayidx142, align 4
  %98 = load i32, i32* %link, align 4
  %idxprom143 = sext i32 %98 to i64
  %arrayidx144 = getelementptr inbounds [8 x i32], [8 x i32]* %cum_cost, i32 0, i64 %idxprom143
  %99 = load i32, i32* %arrayidx144, align 4
  %add145 = add nsw i32 %97, %99
  store i32 %add145, i32* %new_cost, align 4
  %100 = load i32, i32* %k, align 4
  %idxprom146 = sext i32 %100 to i64
  %arrayidx147 = getelementptr inbounds [8 x i32], [8 x i32]* %pixel_cost, i32 0, i64 %idxprom146
  %101 = load i32, i32* %arrayidx147, align 4
  %102 = load i32, i32* %new_cost, align 4
  %cmp148 = icmp sgt i32 %101, %102
  br i1 %cmp148, label %if.then.150, label %if.end.177

if.then.150:                                      ; preds = %if.then.140
  %103 = load i32, i32* %k, align 4
  %idxprom151 = sext i32 %103 to i64
  %arrayidx152 = getelementptr inbounds [8 x i32], [8 x i32]* %pixel, i32 0, i64 %idxprom151
  %104 = load i32, i32* %arrayidx152, align 4
  %and153 = and i32 %104, 255
  %conv154 = trunc i32 %and153 to i8
  %conv155 = sext i8 %conv154 to i32
  %105 = load i32, i32* %k, align 4
  %idxprom156 = sext i32 %105 to i64
  %arrayidx157 = getelementptr inbounds [8 x i32], [8 x i32]* %pixel, i32 0, i64 %idxprom156
  %106 = load i32, i32* %arrayidx157, align 4
  %and158 = and i32 %106, 65280
  %shr159 = lshr i32 %and158, 8
  %conv160 = trunc i32 %shr159 to i8
  %conv161 = sext i8 %conv160 to i32
  %107 = load %struct._TempBuf*, %struct._TempBuf** %dp_buf.addr, align 8
  %width162 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %107, i32 0, i32 1
  %108 = load i32, i32* %width162, align 4
  %mul163 = mul nsw i32 %conv161, %108
  %add164 = add nsw i32 %conv155, %mul163
  store i32 %add164, i32* %offset, align 4
  %109 = load i32, i32* %new_cost, align 4
  %shl165 = shl i32 %109, 8
  %110 = load i32, i32* %k, align 4
  %cmp166 = icmp sgt i32 %110, 3
  br i1 %cmp166, label %cond.true.168, label %cond.false.170

cond.true.168:                                    ; preds = %if.then.150
  %111 = load i32, i32* %k, align 4
  %sub169 = sub nsw i32 %111, 4
  br label %cond.end.172

cond.false.170:                                   ; preds = %if.then.150
  %112 = load i32, i32* %k, align 4
  %add171 = add nsw i32 %112, 4
  br label %cond.end.172

cond.end.172:                                     ; preds = %cond.false.170, %cond.true.168
  %cond173 = phi i32 [ %sub169, %cond.true.168 ], [ %add171, %cond.false.170 ]
  %add174 = add nsw i32 %shl165, %cond173
  %113 = load i32, i32* %offset, align 4
  %idxprom175 = sext i32 %113 to i64
  %114 = load i32*, i32** %d, align 8
  %arrayidx176 = getelementptr inbounds i32, i32* %114, i64 %idxprom175
  store i32 %add174, i32* %arrayidx176, align 4
  br label %if.end.177

if.end.177:                                       ; preds = %cond.end.172, %if.then.140
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.177, %land.lhs.true, %for.body.134
  br label %for.inc.179

for.inc.179:                                      ; preds = %if.end.178
  %115 = load i32, i32* %k, align 4
  %inc180 = add nsw i32 %115, 1
  store i32 %inc180, i32* %k, align 4
  br label %for.cond.131

for.end.181:                                      ; preds = %for.cond.131
  br label %if.end.187

if.else:                                          ; preds = %for.end.123
  %116 = load i32, i32* %i, align 4
  %tobool182 = icmp ne i32 %116, 0
  br i1 %tobool182, label %if.end.186, label %land.lhs.true.183

land.lhs.true.183:                                ; preds = %if.else
  %117 = load i32, i32* %j, align 4
  %tobool184 = icmp ne i32 %117, 0
  br i1 %tobool184, label %if.end.186, label %if.then.185

if.then.185:                                      ; preds = %land.lhs.true.183
  %118 = load i32*, i32** %d, align 8
  store i32 9, i32* %118, align 4
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.185, %land.lhs.true.183, %if.else
  br label %if.end.187

if.end.187:                                       ; preds = %if.end.186, %for.end.181
  %119 = load i32, i32* %dirx, align 4
  %120 = load i32*, i32** %d, align 8
  %idx.ext188 = sext i32 %119 to i64
  %add.ptr189 = getelementptr inbounds i32, i32* %120, i64 %idx.ext188
  store i32* %add.ptr189, i32** %d, align 8
  %121 = load i32, i32* %dirx, align 4
  %122 = load i32, i32* %x, align 4
  %add190 = add nsw i32 %122, %121
  store i32 %add190, i32* %x, align 4
  br label %for.inc.191

for.inc.191:                                      ; preds = %if.end.187
  %123 = load i32, i32* %j, align 4
  %inc192 = add nsw i32 %123, 1
  store i32 %inc192, i32* %j, align 4
  br label %for.cond.10

for.end.193:                                      ; preds = %for.cond.10
  %124 = load i32, i32* %diry, align 4
  %125 = load i32, i32* %y, align 4
  %add194 = add nsw i32 %125, %124
  store i32 %add194, i32* %y, align 4
  br label %for.inc.195

for.inc.195:                                      ; preds = %for.end.193
  %126 = load i32, i32* %i, align 4
  %inc196 = add nsw i32 %126, 1
  store i32 %inc196, i32* %i, align 4
  br label %for.cond

for.end.197:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GPtrArray* @plot_pixels(%struct._GimpIscissorsTool* %iscissors, %struct._TempBuf* %dp_buf, i32 %x1, i32 %y1, i32 %xs, i32 %ys, i32 %xe, i32 %ye) #3 {
entry:
  %iscissors.addr = alloca %struct._GimpIscissorsTool*, align 8
  %dp_buf.addr = alloca %struct._TempBuf*, align 8
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %xs.addr = alloca i32, align 4
  %ys.addr = alloca i32, align 4
  %xe.addr = alloca i32, align 4
  %ye.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %coords = alloca i32, align 4
  %link = alloca i32, align 4
  %width = alloca i32, align 4
  %data = alloca i32*, align 8
  %list = alloca %struct._GPtrArray*, align 8
  store %struct._GimpIscissorsTool* %iscissors, %struct._GimpIscissorsTool** %iscissors.addr, align 8
  store %struct._TempBuf* %dp_buf, %struct._TempBuf** %dp_buf.addr, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %xs, i32* %xs.addr, align 4
  store i32 %ys, i32* %ys.addr, align 4
  store i32 %xe, i32* %xe.addr, align 4
  store i32 %ye, i32* %ye.addr, align 4
  %0 = load %struct._TempBuf*, %struct._TempBuf** %dp_buf.addr, align 8
  %width1 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %0, i32 0, i32 1
  %1 = load i32, i32* %width1, align 4
  store i32 %1, i32* %width, align 4
  %2 = load %struct._TempBuf*, %struct._TempBuf** %dp_buf.addr, align 8
  %call = call i8* @temp_buf_get_data(%struct._TempBuf* %2)
  %3 = bitcast i8* %call to i32*
  %4 = load i32, i32* %ye.addr, align 4
  %5 = load i32, i32* %y1.addr, align 4
  %sub = sub nsw i32 %4, %5
  %6 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %sub, %6
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %3, i64 %idx.ext
  %7 = load i32, i32* %xe.addr, align 4
  %8 = load i32, i32* %x1.addr, align 4
  %sub2 = sub nsw i32 %7, %8
  %idx.ext3 = sext i32 %sub2 to i64
  %add.ptr4 = getelementptr inbounds i32, i32* %add.ptr, i64 %idx.ext3
  store i32* %add.ptr4, i32** %data, align 8
  %9 = load i32, i32* %xe.addr, align 4
  store i32 %9, i32* %x, align 4
  %10 = load i32, i32* %ye.addr, align 4
  store i32 %10, i32* %y, align 4
  %call5 = call %struct._GPtrArray* @g_ptr_array_new()
  store %struct._GPtrArray* %call5, %struct._GPtrArray** %list, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end
  %11 = load i32, i32* %y, align 4
  %shl = shl i32 %11, 16
  %12 = load i32, i32* %x, align 4
  %add = add nsw i32 %shl, %12
  store i32 %add, i32* %coords, align 4
  %13 = load %struct._GPtrArray*, %struct._GPtrArray** %list, align 8
  %14 = load i32, i32* %coords, align 4
  %conv = zext i32 %14 to i64
  %15 = inttoptr i64 %conv to i8*
  call void @g_ptr_array_add(%struct._GPtrArray* %13, i8* %15)
  %16 = load i32*, i32** %data, align 8
  %17 = load i32, i32* %16, align 4
  %and = and i32 %17, 255
  store i32 %and, i32* %link, align 4
  %18 = load i32, i32* %link, align 4
  %cmp = icmp eq i32 %18, 9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %19 = load %struct._GPtrArray*, %struct._GPtrArray** %list, align 8
  ret %struct._GPtrArray* %19

if.end:                                           ; preds = %while.body
  %20 = load i32, i32* %link, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* @move, i32 0, i64 %idxprom
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx, i32 0, i64 0
  %21 = load i32, i32* %arrayidx7, align 4
  %22 = load i32, i32* %x, align 4
  %add8 = add nsw i32 %22, %21
  store i32 %add8, i32* %x, align 4
  %23 = load i32, i32* %link, align 4
  %idxprom9 = sext i32 %23 to i64
  %arrayidx10 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* @move, i32 0, i64 %idxprom9
  %arrayidx11 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx10, i32 0, i64 1
  %24 = load i32, i32* %arrayidx11, align 4
  %25 = load i32, i32* %y, align 4
  %add12 = add nsw i32 %25, %24
  store i32 %add12, i32* %y, align 4
  %26 = load i32, i32* %link, align 4
  %idxprom13 = sext i32 %26 to i64
  %arrayidx14 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* @move, i32 0, i64 %idxprom13
  %arrayidx15 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx14, i32 0, i64 1
  %27 = load i32, i32* %arrayidx15, align 4
  %28 = load i32, i32* %width, align 4
  %mul16 = mul nsw i32 %27, %28
  %29 = load i32, i32* %link, align 4
  %idxprom17 = sext i32 %29 to i64
  %arrayidx18 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* @move, i32 0, i64 %idxprom17
  %arrayidx19 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx18, i32 0, i64 0
  %30 = load i32, i32* %arrayidx19, align 4
  %add20 = add nsw i32 %mul16, %30
  %31 = load i32*, i32** %data, align 8
  %idx.ext21 = sext i32 %add20 to i64
  %add.ptr22 = getelementptr inbounds i32, i32* %31, i64 %idx.ext21
  store i32* %add.ptr22, i32** %data, align 8
  br label %while.body
}

declare %struct._GPtrArray* @g_ptr_array_new() #1

declare void @g_ptr_array_add(%struct._GPtrArray*, i8*) #1

declare i8* @temp_buf_data_clear(%struct._TempBuf*) #1

; Function Attrs: nounwind uwtable
define internal i32 @calculate_link(%struct._TileManager* %gradient_map, i32 %x, i32 %y, i32 %pixel, i32 %link) #3 {
entry:
  %gradient_map.addr = alloca %struct._TileManager*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %pixel.addr = alloca i32, align 4
  %link.addr = alloca i32, align 4
  %value = alloca i32, align 4
  %grad1 = alloca i8, align 1
  %dir1 = alloca i8, align 1
  %grad2 = alloca i8, align 1
  %dir2 = alloca i8, align 1
  store %struct._TileManager* %gradient_map, %struct._TileManager** %gradient_map.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %pixel, i32* %pixel.addr, align 4
  store i32 %link, i32* %link.addr, align 4
  store i32 0, i32* %value, align 4
  %0 = load %struct._TileManager*, %struct._TileManager** %gradient_map.addr, align 8
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* %y.addr, align 4
  %call = call i32 @gradient_map_value(%struct._TileManager* %0, i32 %1, i32 %2, i8* %grad1, i8* %dir1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 0, i8* %grad1, align 1
  store i8 -1, i8* %dir1, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8, i8* %grad1, align 1
  %conv = zext i8 %3 to i32
  %sub = sub nsw i32 255, %conv
  %conv1 = trunc i32 %sub to i8
  store i8 %conv1, i8* %grad1, align 1
  %4 = load i32, i32* %link.addr, align 4
  %cmp = icmp sgt i32 %4, 1
  br i1 %cmp, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %5 = load i8, i8* %grad1, align 1
  %idxprom = zext i8 %5 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @diagonal_weight, i32 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %conv4 = sitofp i32 %6 to double
  %mul = fmul double %conv4, 8.000000e-01
  %7 = load i32, i32* %value, align 4
  %conv5 = sitofp i32 %7 to double
  %add = fadd double %conv5, %mul
  %conv6 = fptosi double %add to i32
  store i32 %conv6, i32* %value, align 4
  br label %if.end.13

if.else:                                          ; preds = %if.end
  %8 = load i8, i8* %grad1, align 1
  %conv7 = zext i8 %8 to i32
  %conv8 = sitofp i32 %conv7 to double
  %mul9 = fmul double %conv8, 8.000000e-01
  %9 = load i32, i32* %value, align 4
  %conv10 = sitofp i32 %9 to double
  %add11 = fadd double %conv10, %mul9
  %conv12 = fptosi double %add11 to i32
  store i32 %conv12, i32* %value, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.3
  %10 = load i32, i32* %pixel.addr, align 4
  %and = and i32 %10, 255
  %conv14 = trunc i32 %and to i8
  %conv15 = sext i8 %conv14 to i32
  %11 = load i32, i32* %x.addr, align 4
  %add16 = add nsw i32 %11, %conv15
  store i32 %add16, i32* %x.addr, align 4
  %12 = load i32, i32* %pixel.addr, align 4
  %and17 = and i32 %12, 65280
  %shr = lshr i32 %and17, 8
  %conv18 = trunc i32 %shr to i8
  %conv19 = sext i8 %conv18 to i32
  %13 = load i32, i32* %y.addr, align 4
  %add20 = add nsw i32 %13, %conv19
  store i32 %add20, i32* %y.addr, align 4
  %14 = load %struct._TileManager*, %struct._TileManager** %gradient_map.addr, align 8
  %15 = load i32, i32* %x.addr, align 4
  %16 = load i32, i32* %y.addr, align 4
  %call21 = call i32 @gradient_map_value(%struct._TileManager* %14, i32 %15, i32 %16, i8* %grad2, i8* %dir2)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.end.13
  store i8 0, i8* %grad2, align 1
  store i8 -1, i8* %dir2, align 1
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.end.13
  %17 = load i32, i32* %link.addr, align 4
  %idxprom25 = sext i32 %17 to i64
  %18 = load i8, i8* %dir1, align 1
  %idxprom26 = zext i8 %18 to i64
  %arrayidx27 = getelementptr inbounds [256 x [4 x i32]], [256 x [4 x i32]]* @direction_value, i32 0, i64 %idxprom26
  %arrayidx28 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx27, i32 0, i64 %idxprom25
  %19 = load i32, i32* %arrayidx28, align 4
  %20 = load i32, i32* %link.addr, align 4
  %idxprom29 = sext i32 %20 to i64
  %21 = load i8, i8* %dir2, align 1
  %idxprom30 = zext i8 %21 to i64
  %arrayidx31 = getelementptr inbounds [256 x [4 x i32]], [256 x [4 x i32]]* @direction_value, i32 0, i64 %idxprom30
  %arrayidx32 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx31, i32 0, i64 %idxprom29
  %22 = load i32, i32* %arrayidx32, align 4
  %add33 = add nsw i32 %19, %22
  %conv34 = sitofp i32 %add33 to double
  %mul35 = fmul double %conv34, 2.000000e-01
  %23 = load i32, i32* %value, align 4
  %conv36 = sitofp i32 %23 to double
  %add37 = fadd double %conv36, %mul35
  %conv38 = fptosi double %add37 to i32
  store i32 %conv38, i32* %value, align 4
  %24 = load i32, i32* %value, align 4
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @gradient_map_value(%struct._TileManager* %map, i32 %x, i32 %y, i8* %grad, i8* %dir) #3 {
entry:
  %retval = alloca i32, align 4
  %map.addr = alloca %struct._TileManager*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %grad.addr = alloca i8*, align 8
  %dir.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  store %struct._TileManager* %map, %struct._TileManager** %map.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i8* %grad, i8** %grad.addr, align 8
  store i8* %dir, i8** %dir.addr, align 8
  %0 = load %struct._Tile*, %struct._Tile** @cur_tile, align 8
  %tobool = icmp ne %struct._Tile* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %x.addr, align 4
  %div = sdiv i32 %1, 64
  %2 = load i32, i32* @gradient_map_value.cur_tilex, align 4
  %cmp = icmp ne i32 %div, %2
  br i1 %cmp, label %if.then, label %lor.lhs.false.1

lor.lhs.false.1:                                  ; preds = %lor.lhs.false
  %3 = load i32, i32* %y.addr, align 4
  %div2 = sdiv i32 %3, 64
  %4 = load i32, i32* @gradient_map_value.cur_tiley, align 4
  %cmp3 = icmp ne i32 %div2, %4
  br i1 %cmp3, label %if.then, label %if.end.11

if.then:                                          ; preds = %lor.lhs.false.1, %lor.lhs.false, %entry
  %5 = load %struct._Tile*, %struct._Tile** @cur_tile, align 8
  %tobool4 = icmp ne %struct._Tile* %5, null
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %6 = load %struct._Tile*, %struct._Tile** @cur_tile, align 8
  call void @tile_release(%struct._Tile* %6, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %7 = load %struct._TileManager*, %struct._TileManager** %map.addr, align 8
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i32, i32* %y.addr, align 4
  %call = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %7, i32 %8, i32 %9, i32 1, i32 0)
  store %struct._Tile* %call, %struct._Tile** @cur_tile, align 8
  %10 = load %struct._Tile*, %struct._Tile** @cur_tile, align 8
  %tobool6 = icmp ne %struct._Tile* %10, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %11 = load i32, i32* %x.addr, align 4
  %div9 = sdiv i32 %11, 64
  store i32 %div9, i32* @gradient_map_value.cur_tilex, align 4
  %12 = load i32, i32* %y.addr, align 4
  %div10 = sdiv i32 %12, 64
  store i32 %div10, i32* @gradient_map_value.cur_tiley, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.8, %lor.lhs.false.1
  %13 = load %struct._Tile*, %struct._Tile** @cur_tile, align 8
  %14 = load i32, i32* %x.addr, align 4
  %15 = load i32, i32* %y.addr, align 4
  %call12 = call i8* @tile_data_pointer(%struct._Tile* %13, i32 %14, i32 %15)
  store i8* %call12, i8** %p, align 8
  %16 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 0
  %17 = load i8, i8* %arrayidx, align 1
  %18 = load i8*, i8** %grad.addr, align 8
  store i8 %17, i8* %18, align 1
  %19 = load i8*, i8** %p, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %19, i64 1
  %20 = load i8, i8* %arrayidx13, align 1
  %21 = load i8*, i8** %dir.addr, align 8
  store i8 %20, i8* %21, align 1
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.7
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare i8* @temp_buf_get_data(%struct._TempBuf*) #1

declare %struct._GimpScanConvert* @gimp_scan_convert_new() #1

declare %struct._GList* @g_queue_peek_tail_link(%struct._GQueue*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_scan_convert_add_polyline(%struct._GimpScanConvert*, i32, %struct._GimpVector2*, i32) #1

declare void @g_free(i8*) #1

declare %struct._GimpChannel* @gimp_channel_new_mask(%struct._GimpImage*, i32, i32) #1

declare void @gimp_scan_convert_render(%struct._GimpScanConvert*, %struct._TileManager*, i32, i32, i32) #1

declare %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

declare void @gimp_scan_convert_free(%struct._GimpScanConvert*) #1

declare i8* @gimp_suggest_modifiers(i8*, i32, i8*, i8*, i8*) #1

declare void @gimp_tool_replace_status(%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) #1

declare void @gimp_tool_set_cursor(%struct._GimpTool*, %struct._GimpDisplay*, i32, i32, i32) #1

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool*, i32, double, double, i32, i32, i32) #1

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_line(%struct._GimpDrawTool*, double, double, double, double) #1

; Function Attrs: nounwind uwtable
define internal void @iscissors_draw_curve(%struct._GimpDrawTool* %draw_tool, %struct._ICurve* %curve) #3 {
entry:
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %curve.addr = alloca %struct._ICurve*, align 8
  %points = alloca %struct._GimpVector2*, align 8
  %point = alloca i8**, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %coords = alloca i32, align 4
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  store %struct._ICurve* %curve, %struct._ICurve** %curve.addr, align 8
  %0 = load %struct._ICurve*, %struct._ICurve** %curve.addr, align 8
  %points1 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %0, i32 0, i32 4
  %1 = load %struct._GPtrArray*, %struct._GPtrArray** %points1, align 8
  %tobool = icmp ne %struct._GPtrArray* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._ICurve*, %struct._ICurve** %curve.addr, align 8
  %points2 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %2, i32 0, i32 4
  %3 = load %struct._GPtrArray*, %struct._GPtrArray** %points2, align 8
  %len3 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %3, i32 0, i32 1
  %4 = load i32, i32* %len3, align 4
  store i32 %4, i32* %len, align 4
  %5 = load i32, i32* %len, align 4
  %conv = sext i32 %5 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 16)
  %6 = bitcast i8* %call to %struct._GimpVector2*
  store %struct._GimpVector2* %6, %struct._GimpVector2** %points, align 8
  store i32 0, i32* %i, align 4
  %7 = load %struct._ICurve*, %struct._ICurve** %curve.addr, align 8
  %points4 = getelementptr inbounds %struct._ICurve, %struct._ICurve* %7, i32 0, i32 4
  %8 = load %struct._GPtrArray*, %struct._GPtrArray** %points4, align 8
  %pdata = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %8, i32 0, i32 0
  %9 = load i8**, i8*** %pdata, align 8
  store i8** %9, i8*** %point, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %len, align 4
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i8**, i8*** %point, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = ptrtoint i8* %13 to i64
  %conv6 = trunc i64 %14 to i32
  store i32 %conv6, i32* %coords, align 4
  %15 = load i32, i32* %coords, align 4
  %and = and i32 %15, 65535
  %conv7 = uitofp i32 %and to double
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %arrayidx = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %17, i64 %idxprom
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx, i32 0, i32 0
  store double %conv7, double* %x, align 8
  %18 = load i32, i32* %coords, align 4
  %shr = lshr i32 %18, 16
  %conv8 = uitofp i32 %shr to double
  %19 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %19 to i64
  %20 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %arrayidx10 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %20, i64 %idxprom9
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx10, i32 0, i32 1
  store double %conv8, double* %y, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  %22 = load i8**, i8*** %point, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %22, i32 1
  store i8** %incdec.ptr, i8*** %point, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %24 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %25 = load i32, i32* %len, align 4
  %call11 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_lines(%struct._GimpDrawTool* %23, %struct._GimpVector2* %24, i32 %25, i32 0)
  %26 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %27 = bitcast %struct._GimpVector2* %26 to i8*
  call void @g_free(i8* %27)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_lines(%struct._GimpDrawTool*, %struct._GimpVector2*, i32, i32) #1

declare void @gimp_tool_control_set_scroll_lock(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_snap_to(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_preserve(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_dirty_mask(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl*, i32) #1

declare %struct._GQueue* @g_queue_new() #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
