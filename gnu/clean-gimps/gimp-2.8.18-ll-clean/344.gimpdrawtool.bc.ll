; ModuleID = './app/tools/gimpdrawtool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
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
%struct._GimpToolControl = type opaque
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpCanvasItem = type { %struct._GimpObject }
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._Gimp = type opaque
%struct._GimpDisplayConfig = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GError = type { i32, i32, i8* }
%struct._GdkEventKey = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32, i8*, i16, i8, i8 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpUIManager = type opaque
%struct._GimpToolOptions = type opaque
%struct._GimpDrawTool = type { %struct._GimpTool, %struct._GimpDisplay*, i32, i32, i64, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GList* }
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
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GimpDisplayOptions = type opaque
%struct._GimpZoomModel = type opaque
%struct._Selection = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpColorDisplayStack = type opaque
%struct._GimpTreeHandler = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._GimpCanvasGroup = type { %struct._GimpCanvasItem }
%struct._GimpVector2 = type { double, double }
%struct.cairo_path = type { i32, %union._cairo_path_data_t*, i32 }
%union._cairo_path_data_t = type { %struct.anon.0 }
%struct.anon.0 = type { double, double }
%struct._GimpContext = type opaque
%struct._BoundSeg = type opaque
%struct._GimpMatrix3 = type { [3 x [3 x double]] }
%struct._PangoRectangle = type { i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpVectors = type { %struct._GimpItem, %struct._GList*, i32, i32, double, %struct.cairo_path*, i32, i32, double, double, double, double }
%struct._GimpAnchor = type { %struct._GimpCoords, i32, i32 }
%struct._GimpStroke = type { %struct._GimpObject, i32, %struct._GList*, i32 }

@gimp_draw_tool_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"GimpDrawTool\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Gimp-Tools\00", align 1
@__func__.gimp_draw_tool_start = private unnamed_addr constant [21 x i8] c"gimp_draw_tool_start\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"GIMP_IS_DRAW_TOOL (draw_tool)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"GIMP_IS_DISPLAY (display)\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"gimp_draw_tool_is_active (draw_tool) == FALSE\00", align 1
@__func__.gimp_draw_tool_stop = private unnamed_addr constant [20 x i8] c"gimp_draw_tool_stop\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"gimp_draw_tool_is_active (draw_tool) == TRUE\00", align 1
@__func__.gimp_draw_tool_is_active = private unnamed_addr constant [25 x i8] c"gimp_draw_tool_is_active\00", align 1
@__func__.gimp_draw_tool_pause = private unnamed_addr constant [21 x i8] c"gimp_draw_tool_pause\00", align 1
@__func__.gimp_draw_tool_resume = private unnamed_addr constant [22 x i8] c"gimp_draw_tool_resume\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"draw_tool->paused_count > 0\00", align 1
@__func__.gimp_draw_tool_calc_distance_square = private unnamed_addr constant [36 x i8] c"gimp_draw_tool_calc_distance_square\00", align 1
@__func__.gimp_draw_tool_add_preview = private unnamed_addr constant [27 x i8] c"gimp_draw_tool_add_preview\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"GIMP_IS_CANVAS_ITEM (item)\00", align 1
@__func__.gimp_draw_tool_remove_preview = private unnamed_addr constant [30 x i8] c"gimp_draw_tool_remove_preview\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"draw_tool->preview != NULL\00", align 1
@__func__.gimp_draw_tool_add_item = private unnamed_addr constant [24 x i8] c"gimp_draw_tool_add_item\00", align 1
@__func__.gimp_draw_tool_remove_item = private unnamed_addr constant [27 x i8] c"gimp_draw_tool_remove_item\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"draw_tool->item != NULL\00", align 1
@__func__.gimp_draw_tool_add_stroke_group = private unnamed_addr constant [32 x i8] c"gimp_draw_tool_add_stroke_group\00", align 1
@__func__.gimp_draw_tool_add_fill_group = private unnamed_addr constant [30 x i8] c"gimp_draw_tool_add_fill_group\00", align 1
@__func__.gimp_draw_tool_push_group = private unnamed_addr constant [26 x i8] c"gimp_draw_tool_push_group\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"GIMP_IS_CANVAS_GROUP (group)\00", align 1
@__func__.gimp_draw_tool_pop_group = private unnamed_addr constant [25 x i8] c"gimp_draw_tool_pop_group\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"draw_tool->group_stack != NULL\00", align 1
@__func__.gimp_draw_tool_add_line = private unnamed_addr constant [24 x i8] c"gimp_draw_tool_add_line\00", align 1
@__func__.gimp_draw_tool_add_guide = private unnamed_addr constant [25 x i8] c"gimp_draw_tool_add_guide\00", align 1
@__func__.gimp_draw_tool_add_sample_point = private unnamed_addr constant [32 x i8] c"gimp_draw_tool_add_sample_point\00", align 1
@__func__.gimp_draw_tool_add_rectangle = private unnamed_addr constant [29 x i8] c"gimp_draw_tool_add_rectangle\00", align 1
@__func__.gimp_draw_tool_add_rectangle_guides = private unnamed_addr constant [36 x i8] c"gimp_draw_tool_add_rectangle_guides\00", align 1
@__func__.gimp_draw_tool_add_arc = private unnamed_addr constant [23 x i8] c"gimp_draw_tool_add_arc\00", align 1
@__func__.gimp_draw_tool_add_handle = private unnamed_addr constant [26 x i8] c"gimp_draw_tool_add_handle\00", align 1
@__func__.gimp_draw_tool_add_corner = private unnamed_addr constant [26 x i8] c"gimp_draw_tool_add_corner\00", align 1
@__func__.gimp_draw_tool_add_lines = private unnamed_addr constant [25 x i8] c"gimp_draw_tool_add_lines\00", align 1
@__func__.gimp_draw_tool_add_strokes = private unnamed_addr constant [27 x i8] c"gimp_draw_tool_add_strokes\00", align 1
@__func__.gimp_draw_tool_add_path = private unnamed_addr constant [24 x i8] c"gimp_draw_tool_add_path\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"desc != NULL\00", align 1
@__func__.gimp_draw_tool_add_pen = private unnamed_addr constant [23 x i8] c"gimp_draw_tool_add_pen\00", align 1
@__func__.gimp_draw_tool_add_boundary = private unnamed_addr constant [28 x i8] c"gimp_draw_tool_add_boundary\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"n_bound_segs > 0\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"bound_segs != NULL\00", align 1
@__func__.gimp_draw_tool_add_text_cursor = private unnamed_addr constant [31 x i8] c"gimp_draw_tool_add_text_cursor\00", align 1
@__func__.gimp_draw_tool_add_transform_guides = private unnamed_addr constant [36 x i8] c"gimp_draw_tool_add_transform_guides\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"transform != NULL\00", align 1
@__func__.gimp_draw_tool_add_transform_preview = private unnamed_addr constant [37 x i8] c"gimp_draw_tool_add_transform_preview\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"GIMP_IS_DRAWABLE (drawable)\00", align 1
@__func__.gimp_draw_tool_on_handle = private unnamed_addr constant [25 x i8] c"gimp_draw_tool_on_handle\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"%s: invalid handle type %d\00", align 1
@__func__.gimp_draw_tool_on_vectors_handle = private unnamed_addr constant [33 x i8] c"gimp_draw_tool_on_vectors_handle\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"GIMP_IS_VECTORS (vectors)\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"coord != NULL\00", align 1
@__func__.gimp_draw_tool_on_vectors_curve = private unnamed_addr constant [32 x i8] c"gimp_draw_tool_on_vectors_curve\00", align 1
@gimp_draw_tool_parent_class = internal global i8* null, align 8
@GimpDrawTool_private_offset = internal global i32 0, align 4
@.str.20 = private unnamed_addr constant [78 x i8] c"%s: draw_tool->group_stack not empty after calling GimpDrawTool::draw() of %s\00", align 1
@__func__.gimp_draw_tool_draw = private unnamed_addr constant [20 x i8] c"gimp_draw_tool_draw\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_draw_tool_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_draw_tool_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_draw_tool_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_tool_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 288, void (i8*, i8*)* bitcast (void (i8*)* @gimp_draw_tool_class_intern_init to void (i8*, i8*)*), i32 248, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpDrawTool*)* @gimp_draw_tool_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_draw_tool_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_draw_tool_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_draw_tool_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_draw_tool_parent_class, align 8
  %1 = load i32, i32* @GimpDrawTool_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpDrawTool_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpDrawToolClass*
  call void @gimp_draw_tool_class_init(%struct._GimpDrawToolClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_draw_tool_init(%struct._GimpDrawTool* %draw_tool) #3 {
entry:
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %display = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %0, i32 0, i32 1
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %display, align 8
  %1 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %paused_count = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %1, i32 0, i32 2
  store i32 0, i32* %paused_count, align 4
  %2 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %preview = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %2, i32 0, i32 5
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %preview, align 8
  %3 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %item = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %3, i32 0, i32 6
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %item, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_draw_tool_start(%struct._GimpDrawTool* %draw_tool, %struct._GimpDisplay* %display) #3 {
entry:
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_draw_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_draw_tool_start, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpDisplay* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_display_get_type() #7
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_draw_tool_start, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %call40 = call i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool* %26)
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.39
  br label %if.end.44

if.else.43:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_draw_tool_start, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %27 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %28 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %display46 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %28, i32 0, i32 1
  store %struct._GimpDisplay* %27, %struct._GimpDisplay** %display46, align 8
  %29 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  call void @gimp_draw_tool_draw(%struct._GimpDrawTool* %29)
  br label %return

return:                                           ; preds = %do.end.45, %if.else.43, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_display_get_type() #2

; Function Attrs: nounwind uwtable
define i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool* %draw_tool) #3 {
entry:
  %retval = alloca i32, align 4
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_draw_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_draw_tool_is_active, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %display = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %13, i32 0, i32 1
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %cmp11 = icmp ne %struct._GimpDisplay* %14, null
  %conv = zext i1 %cmp11 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal void @gimp_draw_tool_draw(%struct._GimpDrawTool* %draw_tool) #3 {
entry:
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %now = alloca i64, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %call = call i64 @g_get_monotonic_time()
  store i64 %call, i64* %now, align 8
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %display = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %0, i32 0, i32 1
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %paused_count = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %2, i32 0, i32 2
  %3 = load i32, i32* %paused_count, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.lhs.true.1, label %if.end.28

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %4 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %draw_timeout = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %4, i32 0, i32 3
  %5 = load i32, i32* %draw_timeout, align 4
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true.1
  %6 = load i64, i64* %now, align 8
  %7 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %last_draw_time = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %7, i32 0, i32 4
  %8 = load i64, i64* %last_draw_time, align 8
  %sub = sub i64 %6, %8
  %cmp3 = icmp ugt i64 %sub, 50000
  br i1 %cmp3, label %if.then, label %if.end.28

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true.1
  %9 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %display4 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %9, i32 0, i32 1
  %10 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display4, align 8
  %call5 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %10)
  store %struct._GimpDisplayShell* %call5, %struct._GimpDisplayShell** %shell, align 8
  %11 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %draw_timeout6 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %11, i32 0, i32 3
  %12 = load i32, i32* %draw_timeout6, align 4
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %13 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %draw_timeout9 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %13, i32 0, i32 3
  %14 = load i32, i32* %draw_timeout9, align 4
  %call10 = call i32 @g_source_remove(i32 %14)
  %15 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %draw_timeout11 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %15, i32 0, i32 3
  store i32 0, i32* %draw_timeout11, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %16 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  call void @gimp_draw_tool_undraw(%struct._GimpDrawTool* %16)
  %17 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %18 = bitcast %struct._GimpDrawTool* %17 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %20 = bitcast %struct._GTypeClass* %19 to %struct._GimpDrawToolClass*
  %draw = getelementptr inbounds %struct._GimpDrawToolClass, %struct._GimpDrawToolClass* %20, i32 0, i32 1
  %21 = load void (%struct._GimpDrawTool*)*, void (%struct._GimpDrawTool*)** %draw, align 8
  %22 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  call void %21(%struct._GimpDrawTool* %22)
  %23 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %group_stack = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %23, i32 0, i32 7
  %24 = load %struct._GList*, %struct._GList** %group_stack, align 8
  %tobool12 = icmp ne %struct._GList* %24, null
  br i1 %tobool12, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %if.end
  %25 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %26 = bitcast %struct._GimpDrawTool* %25 to %struct._GTypeInstance*
  %g_class14 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %26, i32 0, i32 0
  %27 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class14, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %27, i32 0, i32 0
  %28 = load i64, i64* %g_type, align 8
  %call15 = call i8* @g_type_name(i64 %28)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_draw_tool_draw, i32 0, i32 0), i8* %call15)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.13
  %29 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %group_stack16 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %29, i32 0, i32 7
  %30 = load %struct._GList*, %struct._GList** %group_stack16, align 8
  %tobool17 = icmp ne %struct._GList* %30, null
  br i1 %tobool17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %31 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  call void @gimp_draw_tool_pop_group(%struct._GimpDrawTool* %31)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.18

if.end.18:                                        ; preds = %while.end, %if.end
  %32 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %preview = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %32, i32 0, i32 5
  %33 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %preview, align 8
  %tobool19 = icmp ne %struct._GimpCanvasItem* %33, null
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.18
  %34 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %35 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %preview21 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %35, i32 0, i32 5
  %36 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %preview21, align 8
  call void @gimp_display_shell_add_preview_item(%struct._GimpDisplayShell* %34, %struct._GimpCanvasItem* %36)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.18
  %37 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %item = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %37, i32 0, i32 6
  %38 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %tobool23 = icmp ne %struct._GimpCanvasItem* %38, null
  br i1 %tobool23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.22
  %39 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %40 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %item25 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %40, i32 0, i32 6
  %41 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item25, align 8
  call void @gimp_display_shell_add_tool_item(%struct._GimpDisplayShell* %39, %struct._GimpCanvasItem* %41)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.end.22
  %42 = load i64, i64* %now, align 8
  %43 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %last_draw_time27 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %43, i32 0, i32 4
  store i64 %42, i64* %last_draw_time27, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.26, %lor.lhs.false, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_draw_tool_stop(%struct._GimpDrawTool* %draw_tool) #3 {
entry:
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_draw_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_draw_tool_stop, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %call12 = call i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool* %13)
  %cmp13 = icmp eq i32 %call12, 1
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_draw_tool_stop, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %14 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  call void @gimp_draw_tool_undraw(%struct._GimpDrawTool* %14)
  %15 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %draw_timeout = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %15, i32 0, i32 3
  %16 = load i32, i32* %draw_timeout, align 4
  %tobool18 = icmp ne i32 %16, 0
  br i1 %tobool18, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %do.end.17
  %17 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %draw_timeout20 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %17, i32 0, i32 3
  %18 = load i32, i32* %draw_timeout20, align 4
  %call21 = call i32 @g_source_remove(i32 %18)
  %19 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %draw_timeout22 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %19, i32 0, i32 3
  store i32 0, i32* %draw_timeout22, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.19, %do.end.17
  %20 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %last_draw_time = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %20, i32 0, i32 4
  store i64 0, i64* %last_draw_time, align 8
  %21 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %display = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %21, i32 0, i32 1
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %display, align 8
  br label %return

return:                                           ; preds = %if.end.23, %if.else.15, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_draw_tool_undraw(%struct._GimpDrawTool* %draw_tool) #3 {
entry:
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %display = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %0, i32 0, i32 1
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %1, null
  br i1 %tobool, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %display1 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %2, i32 0, i32 1
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display1, align 8
  %call = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %3)
  store %struct._GimpDisplayShell* %call, %struct._GimpDisplayShell** %shell, align 8
  %4 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %preview = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %4, i32 0, i32 5
  %5 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %preview, align 8
  %tobool2 = icmp ne %struct._GimpCanvasItem* %5, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %7 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %preview4 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %7, i32 0, i32 5
  %8 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %preview4, align 8
  call void @gimp_display_shell_remove_preview_item(%struct._GimpDisplayShell* %6, %struct._GimpCanvasItem* %8)
  %9 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %preview5 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %9, i32 0, i32 5
  %10 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %preview5, align 8
  %11 = bitcast %struct._GimpCanvasItem* %10 to i8*
  call void @g_object_unref(i8* %11)
  %12 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %preview6 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %12, i32 0, i32 5
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %preview6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %13 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %item = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %13, i32 0, i32 6
  %14 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %tobool7 = icmp ne %struct._GimpCanvasItem* %14, null
  br i1 %tobool7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %16 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %item9 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %16, i32 0, i32 6
  %17 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item9, align 8
  call void @gimp_display_shell_remove_tool_item(%struct._GimpDisplayShell* %15, %struct._GimpCanvasItem* %17)
  %18 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %item10 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %18, i32 0, i32 6
  %19 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item10, align 8
  %20 = bitcast %struct._GimpCanvasItem* %19 to i8*
  call void @g_object_unref(i8* %20)
  %21 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %item11 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %21, i32 0, i32 6
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %item11, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.end
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %entry
  ret void
}

declare i32 @g_source_remove(i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_draw_tool_pause(%struct._GimpDrawTool* %draw_tool) #3 {
entry:
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_draw_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_draw_tool_pause, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.16

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %paused_count = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %13, i32 0, i32 2
  %14 = load i32, i32* %paused_count, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %paused_count, align 4
  %15 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %draw_timeout = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %15, i32 0, i32 3
  %16 = load i32, i32* %draw_timeout, align 4
  %tobool11 = icmp ne i32 %16, 0
  br i1 %tobool11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %do.end
  %17 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %draw_timeout13 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %17, i32 0, i32 3
  %18 = load i32, i32* %draw_timeout13, align 4
  %call14 = call i32 @g_source_remove(i32 %18)
  %19 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %draw_timeout15 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %19, i32 0, i32 3
  store i32 0, i32* %draw_timeout15, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.9, %if.then.12, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_draw_tool_resume(%struct._GimpDrawTool* %draw_tool) #3 {
entry:
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_draw_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_draw_tool_resume, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.29

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %paused_count = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %13, i32 0, i32 2
  %14 = load i32, i32* %paused_count, align 4
  %cmp12 = icmp sgt i32 %14, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_draw_tool_resume, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.29

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %15 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %paused_count17 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %15, i32 0, i32 2
  %16 = load i32, i32* %paused_count17, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %paused_count17, align 4
  %17 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %paused_count18 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %17, i32 0, i32 2
  %18 = load i32, i32* %paused_count18, align 4
  %cmp19 = icmp eq i32 %18, 0
  br i1 %cmp19, label %if.then.20, label %if.end.29

if.then.20:                                       ; preds = %do.end.16
  %19 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %call21 = call i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool* %19)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %land.lhs.true.23, label %if.end.28

land.lhs.true.23:                                 ; preds = %if.then.20
  %20 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %draw_timeout = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %20, i32 0, i32 3
  %21 = load i32, i32* %draw_timeout, align 4
  %tobool24 = icmp ne i32 %21, 0
  br i1 %tobool24, label %if.end.28, label %if.then.25

if.then.25:                                       ; preds = %land.lhs.true.23
  %22 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %23 = bitcast %struct._GimpDrawTool* %22 to i8*
  %call26 = call i32 @gdk_threads_add_timeout_full(i32 100, i32 4, i32 (i8*)* bitcast (i32 (%struct._GimpDrawTool*)* @gimp_draw_tool_draw_timeout to i32 (i8*)*), i8* %23, void (i8*)* null)
  %24 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %draw_timeout27 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %24, i32 0, i32 3
  store i32 %call26, i32* %draw_timeout27, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %land.lhs.true.23, %if.then.20
  %25 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  call void @gimp_draw_tool_draw(%struct._GimpDrawTool* %25)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.9, %if.else.14, %if.end.28, %do.end.16
  ret void
}

declare i32 @gdk_threads_add_timeout_full(i32, i32, i32 (i8*)*, i8*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_draw_tool_draw_timeout(%struct._GimpDrawTool* %draw_tool) #3 {
entry:
  %retval = alloca i32, align 4
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %now = alloca i64, align 8
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %call = call i64 @g_get_monotonic_time()
  store i64 %call, i64* %now, align 8
  %0 = load i64, i64* %now, align 8
  %1 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %last_draw_time = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %1, i32 0, i32 4
  %2 = load i64, i64* %last_draw_time, align 8
  %sub = sub i64 %0, %2
  %cmp = icmp ule i64 %sub, 50000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %draw_timeout = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %3, i32 0, i32 3
  store i32 0, i32* %draw_timeout, align 4
  %4 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  call void @gimp_draw_tool_draw(%struct._GimpDrawTool* %4)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define double @gimp_draw_tool_calc_distance(%struct._GimpDrawTool* %draw_tool, %struct._GimpDisplay* %display, double %x1, double %y1, double %x2, double %y2) #3 {
entry:
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store double %x1, double* %x1.addr, align 8
  store double %y1, double* %y1.addr, align 8
  store double %x2, double* %x2.addr, align 8
  store double %y2, double* %y2.addr, align 8
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %2 = load double, double* %x1.addr, align 8
  %3 = load double, double* %y1.addr, align 8
  %4 = load double, double* %x2.addr, align 8
  %5 = load double, double* %y2.addr, align 8
  %call = call double @gimp_draw_tool_calc_distance_square(%struct._GimpDrawTool* %0, %struct._GimpDisplay* %1, double %2, double %3, double %4, double %5)
  %call1 = call double @sqrt(double %call) #6
  ret double %call1
}

; Function Attrs: nounwind
declare double @sqrt(double) #5

; Function Attrs: nounwind uwtable
define double @gimp_draw_tool_calc_distance_square(%struct._GimpDrawTool* %draw_tool, %struct._GimpDisplay* %display, double %x1, double %y1, double %x2, double %y2) #3 {
entry:
  %retval = alloca double, align 8
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %tx1 = alloca double, align 8
  %ty1 = alloca double, align 8
  %tx2 = alloca double, align 8
  %ty2 = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store double %x1, double* %x1.addr, align 8
  store double %y1, double* %y1.addr, align 8
  store double %x2, double* %x2.addr, align 8
  store double %y2, double* %y2.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_draw_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_draw_tool_calc_distance_square, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpDisplay* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_display_get_type() #7
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_draw_tool_calc_distance_square, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call39 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %26)
  store %struct._GimpDisplayShell* %call39, %struct._GimpDisplayShell** %shell, align 8
  %27 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %28 = load double, double* %x1.addr, align 8
  %29 = load double, double* %y1.addr, align 8
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %27, double %28, double %29, double* %tx1, double* %ty1)
  %30 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %31 = load double, double* %x2.addr, align 8
  %32 = load double, double* %y2.addr, align 8
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %30, double %31, double %32, double* %tx2, double* %ty2)
  %33 = load double, double* %tx2, align 8
  %34 = load double, double* %tx1, align 8
  %sub = fsub double %33, %34
  %35 = load double, double* %tx2, align 8
  %36 = load double, double* %tx1, align 8
  %sub40 = fsub double %35, %36
  %mul = fmul double %sub, %sub40
  %37 = load double, double* %ty2, align 8
  %38 = load double, double* %ty1, align 8
  %sub41 = fsub double %37, %38
  %39 = load double, double* %ty2, align 8
  %40 = load double, double* %ty1, align 8
  %sub42 = fsub double %39, %40
  %mul43 = fmul double %sub41, %sub42
  %add = fadd double %mul, %mul43
  store double %add, double* %retval
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  %41 = load double, double* %retval
  ret double %41
}

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

declare void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell*, double, double, double*, double*) #1

; Function Attrs: nounwind uwtable
define void @gimp_draw_tool_add_preview(%struct._GimpDrawTool* %draw_tool, %struct._GimpCanvasItem* %item) #3 {
entry:
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_draw_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_draw_tool_add_preview, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %14 = bitcast %struct._GimpCanvasItem* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_canvas_item_get_type() #7
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_draw_tool_add_preview, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %preview = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %26, i32 0, i32 5
  %27 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %preview, align 8
  %tobool39 = icmp ne %struct._GimpCanvasItem* %27, null
  br i1 %tobool39, label %if.end.44, label %if.then.40

if.then.40:                                       ; preds = %do.end.38
  %28 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %display = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %28, i32 0, i32 1
  %29 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call41 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %29)
  %call42 = call %struct._GimpCanvasItem* @gimp_canvas_group_new(%struct._GimpDisplayShell* %call41)
  %30 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %preview43 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %30, i32 0, i32 5
  store %struct._GimpCanvasItem* %call42, %struct._GimpCanvasItem** %preview43, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.40, %do.end.38
  %31 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %preview45 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %31, i32 0, i32 5
  %32 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %preview45, align 8
  %33 = bitcast %struct._GimpCanvasItem* %32 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_canvas_group_get_type() #7
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call46)
  %34 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpCanvasGroup*
  %35 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  call void @gimp_canvas_group_add_item(%struct._GimpCanvasGroup* %34, %struct._GimpCanvasItem* %35)
  br label %return

return:                                           ; preds = %if.end.44, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_canvas_item_get_type() #2

declare %struct._GimpCanvasItem* @gimp_canvas_group_new(%struct._GimpDisplayShell*) #1

declare void @gimp_canvas_group_add_item(%struct._GimpCanvasGroup*, %struct._GimpCanvasItem*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_canvas_group_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_draw_tool_remove_preview(%struct._GimpDrawTool* %draw_tool, %struct._GimpCanvasItem* %item) #3 {
entry:
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_draw_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_draw_tool_remove_preview, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %14 = bitcast %struct._GimpCanvasItem* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_canvas_item_get_type() #7
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_draw_tool_remove_preview, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %preview = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %26, i32 0, i32 5
  %27 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %preview, align 8
  %cmp40 = icmp ne %struct._GimpCanvasItem* %27, null
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.39
  br label %if.end.43

if.else.42:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_draw_tool_remove_preview, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %28 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %preview45 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %28, i32 0, i32 5
  %29 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %preview45, align 8
  %30 = bitcast %struct._GimpCanvasItem* %29 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_canvas_group_get_type() #7
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call46)
  %31 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpCanvasGroup*
  %32 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  call void @gimp_canvas_group_remove_item(%struct._GimpCanvasGroup* %31, %struct._GimpCanvasItem* %32)
  br label %return

return:                                           ; preds = %do.end.44, %if.else.42, %if.else.36, %if.else.9
  ret void
}

declare void @gimp_canvas_group_remove_item(%struct._GimpCanvasGroup*, %struct._GimpCanvasItem*) #1

; Function Attrs: nounwind uwtable
define void @gimp_draw_tool_add_item(%struct._GimpDrawTool* %draw_tool, %struct._GimpCanvasItem* %item) #3 {
entry:
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %group = alloca %struct._GimpCanvasGroup*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_draw_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_draw_tool_add_item, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %14 = bitcast %struct._GimpCanvasItem* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_canvas_item_get_type() #7
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_draw_tool_add_item, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %item39 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %26, i32 0, i32 6
  %27 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item39, align 8
  %tobool40 = icmp ne %struct._GimpCanvasItem* %27, null
  br i1 %tobool40, label %if.end.45, label %if.then.41

if.then.41:                                       ; preds = %do.end.38
  %28 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %display = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %28, i32 0, i32 1
  %29 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call42 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %29)
  %call43 = call %struct._GimpCanvasItem* @gimp_canvas_group_new(%struct._GimpDisplayShell* %call42)
  %30 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %item44 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %30, i32 0, i32 6
  store %struct._GimpCanvasItem* %call43, %struct._GimpCanvasItem** %item44, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.41, %do.end.38
  %31 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %item46 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %31, i32 0, i32 6
  %32 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item46, align 8
  %33 = bitcast %struct._GimpCanvasItem* %32 to %struct._GTypeInstance*
  %call47 = call i64 @gimp_canvas_group_get_type() #7
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call47)
  %34 = bitcast %struct._GTypeInstance* %call48 to %struct._GimpCanvasGroup*
  store %struct._GimpCanvasGroup* %34, %struct._GimpCanvasGroup** %group, align 8
  %35 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %group_stack = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %35, i32 0, i32 7
  %36 = load %struct._GList*, %struct._GList** %group_stack, align 8
  %tobool49 = icmp ne %struct._GList* %36, null
  br i1 %tobool49, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.end.45
  %37 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %group_stack51 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %37, i32 0, i32 7
  %38 = load %struct._GList*, %struct._GList** %group_stack51, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %38, i32 0, i32 0
  %39 = load i8*, i8** %data, align 8
  %40 = bitcast i8* %39 to %struct._GimpCanvasGroup*
  store %struct._GimpCanvasGroup* %40, %struct._GimpCanvasGroup** %group, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %if.end.45
  %41 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %group, align 8
  %42 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  call void @gimp_canvas_group_add_item(%struct._GimpCanvasGroup* %41, %struct._GimpCanvasItem* %42)
  br label %return

return:                                           ; preds = %if.end.52, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_draw_tool_remove_item(%struct._GimpDrawTool* %draw_tool, %struct._GimpCanvasItem* %item) #3 {
entry:
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_draw_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_draw_tool_remove_item, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %14 = bitcast %struct._GimpCanvasItem* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_canvas_item_get_type() #7
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_draw_tool_remove_item, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %item40 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %26, i32 0, i32 6
  %27 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item40, align 8
  %cmp41 = icmp ne %struct._GimpCanvasItem* %27, null
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.39
  br label %if.end.44

if.else.43:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_draw_tool_remove_item, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %28 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %item46 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %28, i32 0, i32 6
  %29 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item46, align 8
  %30 = bitcast %struct._GimpCanvasItem* %29 to %struct._GTypeInstance*
  %call47 = call i64 @gimp_canvas_group_get_type() #7
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call47)
  %31 = bitcast %struct._GTypeInstance* %call48 to %struct._GimpCanvasGroup*
  %32 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  call void @gimp_canvas_group_remove_item(%struct._GimpCanvasGroup* %31, %struct._GimpCanvasItem* %32)
  br label %return

return:                                           ; preds = %do.end.45, %if.else.43, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpCanvasGroup* @gimp_draw_tool_add_stroke_group(%struct._GimpDrawTool* %draw_tool) #3 {
entry:
  %retval = alloca %struct._GimpCanvasGroup*, align 8
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %item = alloca %struct._GimpCanvasItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_draw_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_draw_tool_add_stroke_group, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpCanvasGroup* null, %struct._GimpCanvasGroup** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %display = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %13, i32 0, i32 1
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call11 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %14)
  %call12 = call %struct._GimpCanvasItem* @gimp_canvas_group_new(%struct._GimpDisplayShell* %call11)
  store %struct._GimpCanvasItem* %call12, %struct._GimpCanvasItem** %item, align 8
  %15 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %16 = bitcast %struct._GimpCanvasItem* %15 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_canvas_group_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call13)
  %17 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpCanvasGroup*
  call void @gimp_canvas_group_set_group_stroking(%struct._GimpCanvasGroup* %17, i32 1)
  %18 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %19 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  call void @gimp_draw_tool_add_item(%struct._GimpDrawTool* %18, %struct._GimpCanvasItem* %19)
  %20 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %21 = bitcast %struct._GimpCanvasItem* %20 to i8*
  call void @g_object_unref(i8* %21)
  %22 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %23 = bitcast %struct._GimpCanvasItem* %22 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_canvas_group_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call15)
  %24 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpCanvasGroup*
  store %struct._GimpCanvasGroup* %24, %struct._GimpCanvasGroup** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %25 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %retval
  ret %struct._GimpCanvasGroup* %25
}

declare void @gimp_canvas_group_set_group_stroking(%struct._GimpCanvasGroup*, i32) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpCanvasGroup* @gimp_draw_tool_add_fill_group(%struct._GimpDrawTool* %draw_tool) #3 {
entry:
  %retval = alloca %struct._GimpCanvasGroup*, align 8
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %item = alloca %struct._GimpCanvasItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_draw_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_draw_tool_add_fill_group, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpCanvasGroup* null, %struct._GimpCanvasGroup** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %display = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %13, i32 0, i32 1
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call11 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %14)
  %call12 = call %struct._GimpCanvasItem* @gimp_canvas_group_new(%struct._GimpDisplayShell* %call11)
  store %struct._GimpCanvasItem* %call12, %struct._GimpCanvasItem** %item, align 8
  %15 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %16 = bitcast %struct._GimpCanvasItem* %15 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_canvas_group_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call13)
  %17 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpCanvasGroup*
  call void @gimp_canvas_group_set_group_filling(%struct._GimpCanvasGroup* %17, i32 1)
  %18 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %19 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  call void @gimp_draw_tool_add_item(%struct._GimpDrawTool* %18, %struct._GimpCanvasItem* %19)
  %20 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %21 = bitcast %struct._GimpCanvasItem* %20 to i8*
  call void @g_object_unref(i8* %21)
  %22 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %23 = bitcast %struct._GimpCanvasItem* %22 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_canvas_group_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call15)
  %24 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpCanvasGroup*
  store %struct._GimpCanvasGroup* %24, %struct._GimpCanvasGroup** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %25 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %retval
  ret %struct._GimpCanvasGroup* %25
}

declare void @gimp_canvas_group_set_group_filling(%struct._GimpCanvasGroup*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_draw_tool_push_group(%struct._GimpDrawTool* %draw_tool, %struct._GimpCanvasGroup* %group) #3 {
entry:
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %group.addr = alloca %struct._GimpCanvasGroup*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  store %struct._GimpCanvasGroup* %group, %struct._GimpCanvasGroup** %group.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_draw_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_draw_tool_push_group, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %group.addr, align 8
  %14 = bitcast %struct._GimpCanvasGroup* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_canvas_group_get_type() #7
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_draw_tool_push_group, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %group_stack = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %26, i32 0, i32 7
  %27 = load %struct._GList*, %struct._GList** %group_stack, align 8
  %28 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %group.addr, align 8
  %29 = bitcast %struct._GimpCanvasGroup* %28 to i8*
  %call39 = call %struct._GList* @g_list_prepend(%struct._GList* %27, i8* %29)
  %30 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %group_stack40 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %30, i32 0, i32 7
  store %struct._GList* %call39, %struct._GList** %group_stack40, align 8
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_draw_tool_pop_group(%struct._GimpDrawTool* %draw_tool) #3 {
entry:
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_draw_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_draw_tool_pop_group, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %group_stack = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %13, i32 0, i32 7
  %14 = load %struct._GList*, %struct._GList** %group_stack, align 8
  %cmp12 = icmp ne %struct._GList* %14, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_draw_tool_pop_group, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %15 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %group_stack17 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %15, i32 0, i32 7
  %16 = load %struct._GList*, %struct._GList** %group_stack17, align 8
  %17 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %group_stack18 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %17, i32 0, i32 7
  %18 = load %struct._GList*, %struct._GList** %group_stack18, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 0
  %19 = load i8*, i8** %data, align 8
  %call19 = call %struct._GList* @g_list_remove(%struct._GList* %16, i8* %19)
  %20 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %group_stack20 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %20, i32 0, i32 7
  store %struct._GList* %call19, %struct._GList** %group_stack20, align 8
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpCanvasItem* @gimp_draw_tool_add_line(%struct._GimpDrawTool* %draw_tool, double %x1, double %y1, double %x2, double %y2) #3 {
entry:
  %retval = alloca %struct._GimpCanvasItem*, align 8
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %item = alloca %struct._GimpCanvasItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  store double %x1, double* %x1.addr, align 8
  store double %y1, double* %y1.addr, align 8
  store double %x2, double* %x2.addr, align 8
  store double %y2, double* %y2.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_draw_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_draw_tool_add_line, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %display = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %13, i32 0, i32 1
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call11 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %14)
  %15 = load double, double* %x1.addr, align 8
  %16 = load double, double* %y1.addr, align 8
  %17 = load double, double* %x2.addr, align 8
  %18 = load double, double* %y2.addr, align 8
  %call12 = call %struct._GimpCanvasItem* @gimp_canvas_line_new(%struct._GimpDisplayShell* %call11, double %15, double %16, double %17, double %18)
  store %struct._GimpCanvasItem* %call12, %struct._GimpCanvasItem** %item, align 8
  %19 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %20 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  call void @gimp_draw_tool_add_item(%struct._GimpDrawTool* %19, %struct._GimpCanvasItem* %20)
  %21 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %22 = bitcast %struct._GimpCanvasItem* %21 to i8*
  call void @g_object_unref(i8* %22)
  %23 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  store %struct._GimpCanvasItem* %23, %struct._GimpCanvasItem** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %24 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %retval
  ret %struct._GimpCanvasItem* %24
}

declare %struct._GimpCanvasItem* @gimp_canvas_line_new(%struct._GimpDisplayShell*, double, double, double, double) #1

; Function Attrs: nounwind uwtable
define %struct._GimpCanvasItem* @gimp_draw_tool_add_guide(%struct._GimpDrawTool* %draw_tool, i32 %orientation, i32 %position, i32 %guide_style) #3 {
entry:
  %retval = alloca %struct._GimpCanvasItem*, align 8
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %orientation.addr = alloca i32, align 4
  %position.addr = alloca i32, align 4
  %guide_style.addr = alloca i32, align 4
  %item = alloca %struct._GimpCanvasItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  store i32 %orientation, i32* %orientation.addr, align 4
  store i32 %position, i32* %position.addr, align 4
  store i32 %guide_style, i32* %guide_style.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_draw_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_draw_tool_add_guide, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %display = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %13, i32 0, i32 1
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call11 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %14)
  %15 = load i32, i32* %orientation.addr, align 4
  %16 = load i32, i32* %position.addr, align 4
  %17 = load i32, i32* %guide_style.addr, align 4
  %call12 = call %struct._GimpCanvasItem* @gimp_canvas_guide_new(%struct._GimpDisplayShell* %call11, i32 %15, i32 %16, i32 %17)
  store %struct._GimpCanvasItem* %call12, %struct._GimpCanvasItem** %item, align 8
  %18 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %19 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  call void @gimp_draw_tool_add_item(%struct._GimpDrawTool* %18, %struct._GimpCanvasItem* %19)
  %20 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %21 = bitcast %struct._GimpCanvasItem* %20 to i8*
  call void @g_object_unref(i8* %21)
  %22 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  store %struct._GimpCanvasItem* %22, %struct._GimpCanvasItem** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %23 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %retval
  ret %struct._GimpCanvasItem* %23
}

declare %struct._GimpCanvasItem* @gimp_canvas_guide_new(%struct._GimpDisplayShell*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define %struct._GimpCanvasItem* @gimp_draw_tool_add_crosshair(%struct._GimpDrawTool* %draw_tool, i32 %position_x, i32 %position_y) #3 {
entry:
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %position_x.addr = alloca i32, align 4
  %position_y.addr = alloca i32, align 4
  %group = alloca %struct._GimpCanvasGroup*, align 8
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  store i32 %position_x, i32* %position_x.addr, align 4
  store i32 %position_y, i32* %position_y.addr, align 4
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %call = call %struct._GimpCanvasGroup* @gimp_draw_tool_add_stroke_group(%struct._GimpDrawTool* %0)
  store %struct._GimpCanvasGroup* %call, %struct._GimpCanvasGroup** %group, align 8
  %1 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %2 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %group, align 8
  call void @gimp_draw_tool_push_group(%struct._GimpDrawTool* %1, %struct._GimpCanvasGroup* %2)
  %3 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %4 = load i32, i32* %position_x.addr, align 4
  %call1 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_guide(%struct._GimpDrawTool* %3, i32 1, i32 %4, i32 0)
  %5 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %6 = load i32, i32* %position_y.addr, align 4
  %call2 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_guide(%struct._GimpDrawTool* %5, i32 0, i32 %6, i32 0)
  %7 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  call void @gimp_draw_tool_pop_group(%struct._GimpDrawTool* %7)
  %8 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %group, align 8
  %9 = bitcast %struct._GimpCanvasGroup* %8 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_canvas_item_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call3)
  %10 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpCanvasItem*
  ret %struct._GimpCanvasItem* %10
}

; Function Attrs: nounwind uwtable
define %struct._GimpCanvasItem* @gimp_draw_tool_add_sample_point(%struct._GimpDrawTool* %draw_tool, i32 %x, i32 %y, i32 %index) #3 {
entry:
  %retval = alloca %struct._GimpCanvasItem*, align 8
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %item = alloca %struct._GimpCanvasItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %index, i32* %index.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_draw_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_draw_tool_add_sample_point, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %display = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %13, i32 0, i32 1
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call11 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %14)
  %15 = load i32, i32* %x.addr, align 4
  %16 = load i32, i32* %y.addr, align 4
  %17 = load i32, i32* %index.addr, align 4
  %call12 = call %struct._GimpCanvasItem* @gimp_canvas_sample_point_new(%struct._GimpDisplayShell* %call11, i32 %15, i32 %16, i32 %17, i32 1)
  store %struct._GimpCanvasItem* %call12, %struct._GimpCanvasItem** %item, align 8
  %18 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %19 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  call void @gimp_draw_tool_add_item(%struct._GimpDrawTool* %18, %struct._GimpCanvasItem* %19)
  %20 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %21 = bitcast %struct._GimpCanvasItem* %20 to i8*
  call void @g_object_unref(i8* %21)
  %22 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  store %struct._GimpCanvasItem* %22, %struct._GimpCanvasItem** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %23 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %retval
  ret %struct._GimpCanvasItem* %23
}

declare %struct._GimpCanvasItem* @gimp_canvas_sample_point_new(%struct._GimpDisplayShell*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define %struct._GimpCanvasItem* @gimp_draw_tool_add_rectangle(%struct._GimpDrawTool* %draw_tool, i32 %filled, double %x, double %y, double %width, double %height) #3 {
entry:
  %retval = alloca %struct._GimpCanvasItem*, align 8
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %filled.addr = alloca i32, align 4
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %width.addr = alloca double, align 8
  %height.addr = alloca double, align 8
  %item = alloca %struct._GimpCanvasItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  store i32 %filled, i32* %filled.addr, align 4
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double %width, double* %width.addr, align 8
  store double %height, double* %height.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_draw_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_draw_tool_add_rectangle, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %display = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %13, i32 0, i32 1
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call11 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %14)
  %15 = load double, double* %x.addr, align 8
  %16 = load double, double* %y.addr, align 8
  %17 = load double, double* %width.addr, align 8
  %18 = load double, double* %height.addr, align 8
  %19 = load i32, i32* %filled.addr, align 4
  %call12 = call %struct._GimpCanvasItem* @gimp_canvas_rectangle_new(%struct._GimpDisplayShell* %call11, double %15, double %16, double %17, double %18, i32 %19)
  store %struct._GimpCanvasItem* %call12, %struct._GimpCanvasItem** %item, align 8
  %20 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %21 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  call void @gimp_draw_tool_add_item(%struct._GimpDrawTool* %20, %struct._GimpCanvasItem* %21)
  %22 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %23 = bitcast %struct._GimpCanvasItem* %22 to i8*
  call void @g_object_unref(i8* %23)
  %24 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  store %struct._GimpCanvasItem* %24, %struct._GimpCanvasItem** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %25 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %retval
  ret %struct._GimpCanvasItem* %25
}

declare %struct._GimpCanvasItem* @gimp_canvas_rectangle_new(%struct._GimpDisplayShell*, double, double, double, double, i32) #1

; Function Attrs: nounwind uwtable
define %struct._GimpCanvasItem* @gimp_draw_tool_add_rectangle_guides(%struct._GimpDrawTool* %draw_tool, i32 %type, double %x, double %y, double %width, double %height) #3 {
entry:
  %retval = alloca %struct._GimpCanvasItem*, align 8
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %type.addr = alloca i32, align 4
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %width.addr = alloca double, align 8
  %height.addr = alloca double, align 8
  %item = alloca %struct._GimpCanvasItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double %width, double* %width.addr, align 8
  store double %height, double* %height.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_draw_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_draw_tool_add_rectangle_guides, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %display = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %13, i32 0, i32 1
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call11 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %14)
  %15 = load double, double* %x.addr, align 8
  %16 = load double, double* %y.addr, align 8
  %17 = load double, double* %width.addr, align 8
  %18 = load double, double* %height.addr, align 8
  %19 = load i32, i32* %type.addr, align 4
  %call12 = call %struct._GimpCanvasItem* @gimp_canvas_rectangle_guides_new(%struct._GimpDisplayShell* %call11, double %15, double %16, double %17, double %18, i32 %19, i32 4)
  store %struct._GimpCanvasItem* %call12, %struct._GimpCanvasItem** %item, align 8
  %20 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %21 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  call void @gimp_draw_tool_add_item(%struct._GimpDrawTool* %20, %struct._GimpCanvasItem* %21)
  %22 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %23 = bitcast %struct._GimpCanvasItem* %22 to i8*
  call void @g_object_unref(i8* %23)
  %24 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  store %struct._GimpCanvasItem* %24, %struct._GimpCanvasItem** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %25 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %retval
  ret %struct._GimpCanvasItem* %25
}

declare %struct._GimpCanvasItem* @gimp_canvas_rectangle_guides_new(%struct._GimpDisplayShell*, double, double, double, double, i32, i32) #1

; Function Attrs: nounwind uwtable
define %struct._GimpCanvasItem* @gimp_draw_tool_add_arc(%struct._GimpDrawTool* %draw_tool, i32 %filled, double %x, double %y, double %width, double %height, double %start_angle, double %slice_angle) #3 {
entry:
  %retval = alloca %struct._GimpCanvasItem*, align 8
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %filled.addr = alloca i32, align 4
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %width.addr = alloca double, align 8
  %height.addr = alloca double, align 8
  %start_angle.addr = alloca double, align 8
  %slice_angle.addr = alloca double, align 8
  %item = alloca %struct._GimpCanvasItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  store i32 %filled, i32* %filled.addr, align 4
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double %width, double* %width.addr, align 8
  store double %height, double* %height.addr, align 8
  store double %start_angle, double* %start_angle.addr, align 8
  store double %slice_angle, double* %slice_angle.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_draw_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_draw_tool_add_arc, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %display = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %13, i32 0, i32 1
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call11 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %14)
  %15 = load double, double* %x.addr, align 8
  %16 = load double, double* %width.addr, align 8
  %div = fdiv double %16, 2.000000e+00
  %add = fadd double %15, %div
  %17 = load double, double* %y.addr, align 8
  %18 = load double, double* %height.addr, align 8
  %div12 = fdiv double %18, 2.000000e+00
  %add13 = fadd double %17, %div12
  %19 = load double, double* %width.addr, align 8
  %div14 = fdiv double %19, 2.000000e+00
  %20 = load double, double* %height.addr, align 8
  %div15 = fdiv double %20, 2.000000e+00
  %21 = load double, double* %start_angle.addr, align 8
  %22 = load double, double* %slice_angle.addr, align 8
  %23 = load i32, i32* %filled.addr, align 4
  %call16 = call %struct._GimpCanvasItem* @gimp_canvas_arc_new(%struct._GimpDisplayShell* %call11, double %add, double %add13, double %div14, double %div15, double %21, double %22, i32 %23)
  store %struct._GimpCanvasItem* %call16, %struct._GimpCanvasItem** %item, align 8
  %24 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %25 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  call void @gimp_draw_tool_add_item(%struct._GimpDrawTool* %24, %struct._GimpCanvasItem* %25)
  %26 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %27 = bitcast %struct._GimpCanvasItem* %26 to i8*
  call void @g_object_unref(i8* %27)
  %28 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  store %struct._GimpCanvasItem* %28, %struct._GimpCanvasItem** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %29 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %retval
  ret %struct._GimpCanvasItem* %29
}

declare %struct._GimpCanvasItem* @gimp_canvas_arc_new(%struct._GimpDisplayShell*, double, double, double, double, double, double, i32) #1

; Function Attrs: nounwind uwtable
define %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %draw_tool, i32 %type, double %x, double %y, i32 %width, i32 %height, i32 %anchor) #3 {
entry:
  %retval = alloca %struct._GimpCanvasItem*, align 8
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %type.addr = alloca i32, align 4
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %anchor.addr = alloca i32, align 4
  %item = alloca %struct._GimpCanvasItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %anchor, i32* %anchor.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_draw_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_draw_tool_add_handle, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %display = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %13, i32 0, i32 1
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call11 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %14)
  %15 = load i32, i32* %type.addr, align 4
  %16 = load i32, i32* %anchor.addr, align 4
  %17 = load double, double* %x.addr, align 8
  %18 = load double, double* %y.addr, align 8
  %19 = load i32, i32* %width.addr, align 4
  %20 = load i32, i32* %height.addr, align 4
  %call12 = call %struct._GimpCanvasItem* @gimp_canvas_handle_new(%struct._GimpDisplayShell* %call11, i32 %15, i32 %16, double %17, double %18, i32 %19, i32 %20)
  store %struct._GimpCanvasItem* %call12, %struct._GimpCanvasItem** %item, align 8
  %21 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %22 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  call void @gimp_draw_tool_add_item(%struct._GimpDrawTool* %21, %struct._GimpCanvasItem* %22)
  %23 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %24 = bitcast %struct._GimpCanvasItem* %23 to i8*
  call void @g_object_unref(i8* %24)
  %25 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  store %struct._GimpCanvasItem* %25, %struct._GimpCanvasItem** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %26 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %retval
  ret %struct._GimpCanvasItem* %26
}

declare %struct._GimpCanvasItem* @gimp_canvas_handle_new(%struct._GimpDisplayShell*, i32, i32, double, double, i32, i32) #1

; Function Attrs: nounwind uwtable
define %struct._GimpCanvasItem* @gimp_draw_tool_add_corner(%struct._GimpDrawTool* %draw_tool, i32 %highlight, i32 %put_outside, double %x1, double %y1, double %x2, double %y2, i32 %width, i32 %height, i32 %anchor) #3 {
entry:
  %retval = alloca %struct._GimpCanvasItem*, align 8
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %highlight.addr = alloca i32, align 4
  %put_outside.addr = alloca i32, align 4
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %anchor.addr = alloca i32, align 4
  %item = alloca %struct._GimpCanvasItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  store i32 %highlight, i32* %highlight.addr, align 4
  store i32 %put_outside, i32* %put_outside.addr, align 4
  store double %x1, double* %x1.addr, align 8
  store double %y1, double* %y1.addr, align 8
  store double %x2, double* %x2.addr, align 8
  store double %y2, double* %y2.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %anchor, i32* %anchor.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_draw_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_draw_tool_add_corner, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %display = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %13, i32 0, i32 1
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call11 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %14)
  %15 = load double, double* %x1.addr, align 8
  %16 = load double, double* %y1.addr, align 8
  %17 = load double, double* %x2.addr, align 8
  %18 = load double, double* %x1.addr, align 8
  %sub = fsub double %17, %18
  %19 = load double, double* %y2.addr, align 8
  %20 = load double, double* %y1.addr, align 8
  %sub12 = fsub double %19, %20
  %21 = load i32, i32* %anchor.addr, align 4
  %22 = load i32, i32* %width.addr, align 4
  %23 = load i32, i32* %height.addr, align 4
  %24 = load i32, i32* %put_outside.addr, align 4
  %call13 = call %struct._GimpCanvasItem* @gimp_canvas_corner_new(%struct._GimpDisplayShell* %call11, double %15, double %16, double %sub, double %sub12, i32 %21, i32 %22, i32 %23, i32 %24)
  store %struct._GimpCanvasItem* %call13, %struct._GimpCanvasItem** %item, align 8
  %25 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %26 = load i32, i32* %highlight.addr, align 4
  call void @gimp_canvas_item_set_highlight(%struct._GimpCanvasItem* %25, i32 %26)
  %27 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %28 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  call void @gimp_draw_tool_add_item(%struct._GimpDrawTool* %27, %struct._GimpCanvasItem* %28)
  %29 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %30 = bitcast %struct._GimpCanvasItem* %29 to i8*
  call void @g_object_unref(i8* %30)
  %31 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  store %struct._GimpCanvasItem* %31, %struct._GimpCanvasItem** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %32 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %retval
  ret %struct._GimpCanvasItem* %32
}

declare %struct._GimpCanvasItem* @gimp_canvas_corner_new(%struct._GimpDisplayShell*, double, double, double, double, i32, i32, i32, i32) #1

declare void @gimp_canvas_item_set_highlight(%struct._GimpCanvasItem*, i32) #1

; Function Attrs: nounwind uwtable
define %struct._GimpCanvasItem* @gimp_draw_tool_add_lines(%struct._GimpDrawTool* %draw_tool, %struct._GimpVector2* %points, i32 %n_points, i32 %filled) #3 {
entry:
  %retval = alloca %struct._GimpCanvasItem*, align 8
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %points.addr = alloca %struct._GimpVector2*, align 8
  %n_points.addr = alloca i32, align 4
  %filled.addr = alloca i32, align 4
  %item = alloca %struct._GimpCanvasItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  store %struct._GimpVector2* %points, %struct._GimpVector2** %points.addr, align 8
  store i32 %n_points, i32* %n_points.addr, align 4
  store i32 %filled, i32* %filled.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_draw_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_draw_tool_add_lines, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpVector2*, %struct._GimpVector2** %points.addr, align 8
  %cmp11 = icmp eq %struct._GimpVector2* %13, null
  br i1 %cmp11, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %14 = load i32, i32* %n_points.addr, align 4
  %cmp12 = icmp slt i32 %14, 2
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %lor.lhs.false, %do.end
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.14:                                        ; preds = %lor.lhs.false
  %15 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %display = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %15, i32 0, i32 1
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call15 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %16)
  %17 = load %struct._GimpVector2*, %struct._GimpVector2** %points.addr, align 8
  %18 = load i32, i32* %n_points.addr, align 4
  %19 = load i32, i32* %filled.addr, align 4
  %call16 = call %struct._GimpCanvasItem* @gimp_canvas_polygon_new(%struct._GimpDisplayShell* %call15, %struct._GimpVector2* %17, i32 %18, i32 %19)
  store %struct._GimpCanvasItem* %call16, %struct._GimpCanvasItem** %item, align 8
  %20 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %21 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  call void @gimp_draw_tool_add_item(%struct._GimpDrawTool* %20, %struct._GimpCanvasItem* %21)
  %22 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %23 = bitcast %struct._GimpCanvasItem* %22 to i8*
  call void @g_object_unref(i8* %23)
  %24 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  store %struct._GimpCanvasItem* %24, %struct._GimpCanvasItem** %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.13, %if.else.9
  %25 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %retval
  ret %struct._GimpCanvasItem* %25
}

declare %struct._GimpCanvasItem* @gimp_canvas_polygon_new(%struct._GimpDisplayShell*, %struct._GimpVector2*, i32, i32) #1

; Function Attrs: nounwind uwtable
define %struct._GimpCanvasItem* @gimp_draw_tool_add_strokes(%struct._GimpDrawTool* %draw_tool, %struct._GimpCoords* %points, i32 %n_points, i32 %filled) #3 {
entry:
  %retval = alloca %struct._GimpCanvasItem*, align 8
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %points.addr = alloca %struct._GimpCoords*, align 8
  %n_points.addr = alloca i32, align 4
  %filled.addr = alloca i32, align 4
  %item = alloca %struct._GimpCanvasItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  store %struct._GimpCoords* %points, %struct._GimpCoords** %points.addr, align 8
  store i32 %n_points, i32* %n_points.addr, align 4
  store i32 %filled, i32* %filled.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_draw_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_draw_tool_add_strokes, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpCoords*, %struct._GimpCoords** %points.addr, align 8
  %cmp11 = icmp eq %struct._GimpCoords* %13, null
  br i1 %cmp11, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %14 = load i32, i32* %n_points.addr, align 4
  %cmp12 = icmp slt i32 %14, 2
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %lor.lhs.false, %do.end
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.14:                                        ; preds = %lor.lhs.false
  %15 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %display = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %15, i32 0, i32 1
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call15 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %16)
  %17 = load %struct._GimpCoords*, %struct._GimpCoords** %points.addr, align 8
  %18 = load i32, i32* %n_points.addr, align 4
  %19 = load i32, i32* %filled.addr, align 4
  %call16 = call %struct._GimpCanvasItem* @gimp_canvas_polygon_new_from_coords(%struct._GimpDisplayShell* %call15, %struct._GimpCoords* %17, i32 %18, i32 %19)
  store %struct._GimpCanvasItem* %call16, %struct._GimpCanvasItem** %item, align 8
  %20 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %21 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  call void @gimp_draw_tool_add_item(%struct._GimpDrawTool* %20, %struct._GimpCanvasItem* %21)
  %22 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %23 = bitcast %struct._GimpCanvasItem* %22 to i8*
  call void @g_object_unref(i8* %23)
  %24 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  store %struct._GimpCanvasItem* %24, %struct._GimpCanvasItem** %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.13, %if.else.9
  %25 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %retval
  ret %struct._GimpCanvasItem* %25
}

declare %struct._GimpCanvasItem* @gimp_canvas_polygon_new_from_coords(%struct._GimpDisplayShell*, %struct._GimpCoords*, i32, i32) #1

; Function Attrs: nounwind uwtable
define %struct._GimpCanvasItem* @gimp_draw_tool_add_path(%struct._GimpDrawTool* %draw_tool, %struct.cairo_path* %desc, double %x, double %y) #3 {
entry:
  %retval = alloca %struct._GimpCanvasItem*, align 8
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %desc.addr = alloca %struct.cairo_path*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %item = alloca %struct._GimpCanvasItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  store %struct.cairo_path* %desc, %struct.cairo_path** %desc.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_draw_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_draw_tool_add_path, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct.cairo_path*, %struct.cairo_path** %desc.addr, align 8
  %cmp12 = icmp ne %struct.cairo_path* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_draw_tool_add_path, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %display = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %14, i32 0, i32 1
  %15 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call17 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %15)
  %16 = load %struct.cairo_path*, %struct.cairo_path** %desc.addr, align 8
  %17 = load double, double* %x.addr, align 8
  %18 = load double, double* %y.addr, align 8
  %call18 = call %struct._GimpCanvasItem* @gimp_canvas_path_new(%struct._GimpDisplayShell* %call17, %struct.cairo_path* %16, double %17, double %18, i32 0, i32 0)
  store %struct._GimpCanvasItem* %call18, %struct._GimpCanvasItem** %item, align 8
  %19 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %20 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  call void @gimp_draw_tool_add_item(%struct._GimpDrawTool* %19, %struct._GimpCanvasItem* %20)
  %21 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %22 = bitcast %struct._GimpCanvasItem* %21 to i8*
  call void @g_object_unref(i8* %22)
  %23 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  store %struct._GimpCanvasItem* %23, %struct._GimpCanvasItem** %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  %24 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %retval
  ret %struct._GimpCanvasItem* %24
}

declare %struct._GimpCanvasItem* @gimp_canvas_path_new(%struct._GimpDisplayShell*, %struct.cairo_path*, double, double, i32, i32) #1

; Function Attrs: nounwind uwtable
define %struct._GimpCanvasItem* @gimp_draw_tool_add_pen(%struct._GimpDrawTool* %draw_tool, %struct._GimpVector2* %points, i32 %n_points, %struct._GimpContext* %context, i32 %color, i32 %width) #3 {
entry:
  %retval = alloca %struct._GimpCanvasItem*, align 8
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %points.addr = alloca %struct._GimpVector2*, align 8
  %n_points.addr = alloca i32, align 4
  %context.addr = alloca %struct._GimpContext*, align 8
  %color.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %item = alloca %struct._GimpCanvasItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  store %struct._GimpVector2* %points, %struct._GimpVector2** %points.addr, align 8
  store i32 %n_points, i32* %n_points.addr, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %color, i32* %color.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_draw_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_draw_tool_add_pen, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpVector2*, %struct._GimpVector2** %points.addr, align 8
  %cmp11 = icmp eq %struct._GimpVector2* %13, null
  br i1 %cmp11, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %14 = load i32, i32* %n_points.addr, align 4
  %cmp12 = icmp slt i32 %14, 2
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %lor.lhs.false, %do.end
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.14:                                        ; preds = %lor.lhs.false
  %15 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %display = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %15, i32 0, i32 1
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call15 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %16)
  %17 = load %struct._GimpVector2*, %struct._GimpVector2** %points.addr, align 8
  %18 = load i32, i32* %n_points.addr, align 4
  %19 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %20 = load i32, i32* %color.addr, align 4
  %21 = load i32, i32* %width.addr, align 4
  %call16 = call %struct._GimpCanvasItem* @gimp_canvas_pen_new(%struct._GimpDisplayShell* %call15, %struct._GimpVector2* %17, i32 %18, %struct._GimpContext* %19, i32 %20, i32 %21)
  store %struct._GimpCanvasItem* %call16, %struct._GimpCanvasItem** %item, align 8
  %22 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %23 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  call void @gimp_draw_tool_add_item(%struct._GimpDrawTool* %22, %struct._GimpCanvasItem* %23)
  %24 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %25 = bitcast %struct._GimpCanvasItem* %24 to i8*
  call void @g_object_unref(i8* %25)
  %26 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  store %struct._GimpCanvasItem* %26, %struct._GimpCanvasItem** %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.13, %if.else.9
  %27 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %retval
  ret %struct._GimpCanvasItem* %27
}

declare %struct._GimpCanvasItem* @gimp_canvas_pen_new(%struct._GimpDisplayShell*, %struct._GimpVector2*, i32, %struct._GimpContext*, i32, i32) #1

; Function Attrs: nounwind uwtable
define %struct._GimpCanvasItem* @gimp_draw_tool_add_boundary(%struct._GimpDrawTool* %draw_tool, %struct._BoundSeg* %bound_segs, i32 %n_bound_segs, %struct._GimpMatrix3* %transform, double %offset_x, double %offset_y) #3 {
entry:
  %retval = alloca %struct._GimpCanvasItem*, align 8
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %bound_segs.addr = alloca %struct._BoundSeg*, align 8
  %n_bound_segs.addr = alloca i32, align 4
  %transform.addr = alloca %struct._GimpMatrix3*, align 8
  %offset_x.addr = alloca double, align 8
  %offset_y.addr = alloca double, align 8
  %item = alloca %struct._GimpCanvasItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  store %struct._BoundSeg* %bound_segs, %struct._BoundSeg** %bound_segs.addr, align 8
  store i32 %n_bound_segs, i32* %n_bound_segs.addr, align 4
  store %struct._GimpMatrix3* %transform, %struct._GimpMatrix3** %transform.addr, align 8
  store double %offset_x, double* %offset_x.addr, align 8
  store double %offset_y, double* %offset_y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_draw_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_draw_tool_add_boundary, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %n_bound_segs.addr, align 4
  %cmp12 = icmp sgt i32 %13, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_draw_tool_add_boundary, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._BoundSeg*, %struct._BoundSeg** %bound_segs.addr, align 8
  %cmp18 = icmp ne %struct._BoundSeg* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_draw_tool_add_boundary, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %display = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %15, i32 0, i32 1
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call23 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %16)
  %17 = load %struct._BoundSeg*, %struct._BoundSeg** %bound_segs.addr, align 8
  %18 = load i32, i32* %n_bound_segs.addr, align 4
  %19 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %transform.addr, align 8
  %20 = load double, double* %offset_x.addr, align 8
  %21 = load double, double* %offset_y.addr, align 8
  %call24 = call %struct._GimpCanvasItem* @gimp_canvas_boundary_new(%struct._GimpDisplayShell* %call23, %struct._BoundSeg* %17, i32 %18, %struct._GimpMatrix3* %19, double %20, double %21)
  store %struct._GimpCanvasItem* %call24, %struct._GimpCanvasItem** %item, align 8
  %22 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %23 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  call void @gimp_draw_tool_add_item(%struct._GimpDrawTool* %22, %struct._GimpCanvasItem* %23)
  %24 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %25 = bitcast %struct._GimpCanvasItem* %24 to i8*
  call void @g_object_unref(i8* %25)
  %26 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  store %struct._GimpCanvasItem* %26, %struct._GimpCanvasItem** %retval
  br label %return

return:                                           ; preds = %do.end.22, %if.else.20, %if.else.14, %if.else.9
  %27 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %retval
  ret %struct._GimpCanvasItem* %27
}

declare %struct._GimpCanvasItem* @gimp_canvas_boundary_new(%struct._GimpDisplayShell*, %struct._BoundSeg*, i32, %struct._GimpMatrix3*, double, double) #1

; Function Attrs: nounwind uwtable
define %struct._GimpCanvasItem* @gimp_draw_tool_add_text_cursor(%struct._GimpDrawTool* %draw_tool, %struct._PangoRectangle* %cursor, i32 %overwrite) #3 {
entry:
  %retval = alloca %struct._GimpCanvasItem*, align 8
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %cursor.addr = alloca %struct._PangoRectangle*, align 8
  %overwrite.addr = alloca i32, align 4
  %item = alloca %struct._GimpCanvasItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  store %struct._PangoRectangle* %cursor, %struct._PangoRectangle** %cursor.addr, align 8
  store i32 %overwrite, i32* %overwrite.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_draw_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_draw_tool_add_text_cursor, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %display = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %13, i32 0, i32 1
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call11 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %14)
  %15 = load %struct._PangoRectangle*, %struct._PangoRectangle** %cursor.addr, align 8
  %16 = load i32, i32* %overwrite.addr, align 4
  %call12 = call %struct._GimpCanvasItem* @gimp_canvas_text_cursor_new(%struct._GimpDisplayShell* %call11, %struct._PangoRectangle* %15, i32 %16)
  store %struct._GimpCanvasItem* %call12, %struct._GimpCanvasItem** %item, align 8
  %17 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %18 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  call void @gimp_draw_tool_add_item(%struct._GimpDrawTool* %17, %struct._GimpCanvasItem* %18)
  %19 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %20 = bitcast %struct._GimpCanvasItem* %19 to i8*
  call void @g_object_unref(i8* %20)
  %21 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  store %struct._GimpCanvasItem* %21, %struct._GimpCanvasItem** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %22 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %retval
  ret %struct._GimpCanvasItem* %22
}

declare %struct._GimpCanvasItem* @gimp_canvas_text_cursor_new(%struct._GimpDisplayShell*, %struct._PangoRectangle*, i32) #1

; Function Attrs: nounwind uwtable
define %struct._GimpCanvasItem* @gimp_draw_tool_add_transform_guides(%struct._GimpDrawTool* %draw_tool, %struct._GimpMatrix3* %transform, i32 %type, i32 %n_guides, double %x1, double %y1, double %x2, double %y2) #3 {
entry:
  %retval = alloca %struct._GimpCanvasItem*, align 8
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %transform.addr = alloca %struct._GimpMatrix3*, align 8
  %type.addr = alloca i32, align 4
  %n_guides.addr = alloca i32, align 4
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %item = alloca %struct._GimpCanvasItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  store %struct._GimpMatrix3* %transform, %struct._GimpMatrix3** %transform.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32 %n_guides, i32* %n_guides.addr, align 4
  store double %x1, double* %x1.addr, align 8
  store double %y1, double* %y1.addr, align 8
  store double %x2, double* %x2.addr, align 8
  store double %y2, double* %y2.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_draw_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_draw_tool_add_transform_guides, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %transform.addr, align 8
  %cmp12 = icmp ne %struct._GimpMatrix3* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_draw_tool_add_transform_guides, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %display = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %14, i32 0, i32 1
  %15 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call17 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %15)
  %16 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %transform.addr, align 8
  %17 = load double, double* %x1.addr, align 8
  %18 = load double, double* %y1.addr, align 8
  %19 = load double, double* %x2.addr, align 8
  %20 = load double, double* %y2.addr, align 8
  %21 = load i32, i32* %type.addr, align 4
  %22 = load i32, i32* %n_guides.addr, align 4
  %call18 = call %struct._GimpCanvasItem* @gimp_canvas_transform_guides_new(%struct._GimpDisplayShell* %call17, %struct._GimpMatrix3* %16, double %17, double %18, double %19, double %20, i32 %21, i32 %22)
  store %struct._GimpCanvasItem* %call18, %struct._GimpCanvasItem** %item, align 8
  %23 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %24 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  call void @gimp_draw_tool_add_item(%struct._GimpDrawTool* %23, %struct._GimpCanvasItem* %24)
  %25 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %26 = bitcast %struct._GimpCanvasItem* %25 to i8*
  call void @g_object_unref(i8* %26)
  %27 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  store %struct._GimpCanvasItem* %27, %struct._GimpCanvasItem** %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  %28 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %retval
  ret %struct._GimpCanvasItem* %28
}

declare %struct._GimpCanvasItem* @gimp_canvas_transform_guides_new(%struct._GimpDisplayShell*, %struct._GimpMatrix3*, double, double, double, double, i32, i32) #1

; Function Attrs: nounwind uwtable
define %struct._GimpCanvasItem* @gimp_draw_tool_add_transform_preview(%struct._GimpDrawTool* %draw_tool, %struct._GimpDrawable* %drawable, %struct._GimpMatrix3* %transform, double %x1, double %y1, double %x2, double %y2, i32 %perspective, double %opacity) #3 {
entry:
  %retval = alloca %struct._GimpCanvasItem*, align 8
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %transform.addr = alloca %struct._GimpMatrix3*, align 8
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %perspective.addr = alloca i32, align 4
  %opacity.addr = alloca double, align 8
  %item = alloca %struct._GimpCanvasItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpMatrix3* %transform, %struct._GimpMatrix3** %transform.addr, align 8
  store double %x1, double* %x1.addr, align 8
  store double %y1, double* %y1.addr, align 8
  store double %x2, double* %x2.addr, align 8
  store double %y2, double* %y2.addr, align 8
  store i32 %perspective, i32* %perspective.addr, align 4
  store double %opacity, double* %opacity.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_draw_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_draw_tool_add_transform_preview, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_drawable_get_type() #7
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_draw_tool_add_transform_preview, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %transform.addr, align 8
  %cmp40 = icmp ne %struct._GimpMatrix3* %26, null
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.39
  br label %if.end.43

if.else.42:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_draw_tool_add_transform_preview, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %27 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %display = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %27, i32 0, i32 1
  %28 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call45 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %28)
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %30 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %transform.addr, align 8
  %31 = load double, double* %x1.addr, align 8
  %32 = load double, double* %y1.addr, align 8
  %33 = load double, double* %x2.addr, align 8
  %34 = load double, double* %y2.addr, align 8
  %35 = load i32, i32* %perspective.addr, align 4
  %36 = load double, double* %opacity.addr, align 8
  %call46 = call %struct._GimpCanvasItem* @gimp_canvas_transform_preview_new(%struct._GimpDisplayShell* %call45, %struct._GimpDrawable* %29, %struct._GimpMatrix3* %30, double %31, double %32, double %33, double %34, i32 %35, double %36)
  store %struct._GimpCanvasItem* %call46, %struct._GimpCanvasItem** %item, align 8
  %37 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %38 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  call void @gimp_draw_tool_add_preview(%struct._GimpDrawTool* %37, %struct._GimpCanvasItem* %38)
  %39 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %40 = bitcast %struct._GimpCanvasItem* %39 to i8*
  call void @g_object_unref(i8* %40)
  %41 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  store %struct._GimpCanvasItem* %41, %struct._GimpCanvasItem** %retval
  br label %return

return:                                           ; preds = %do.end.44, %if.else.42, %if.else.36, %if.else.9
  %42 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %retval
  ret %struct._GimpCanvasItem* %42
}

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

declare %struct._GimpCanvasItem* @gimp_canvas_transform_preview_new(%struct._GimpDisplayShell*, %struct._GimpDrawable*, %struct._GimpMatrix3*, double, double, double, double, i32, double) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_draw_tool_on_handle(%struct._GimpDrawTool* %draw_tool, %struct._GimpDisplay* %display, double %x, double %y, i32 %type, double %handle_x, double %handle_y, i32 %width, i32 %height, i32 %anchor) #3 {
entry:
  %retval = alloca i32, align 4
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %type.addr = alloca i32, align 4
  %handle_x.addr = alloca double, align 8
  %handle_y.addr = alloca double, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %anchor.addr = alloca i32, align 4
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %tx = alloca double, align 8
  %ty = alloca double, align 8
  %handle_tx = alloca double, align 8
  %handle_ty = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store double %handle_x, double* %handle_x.addr, align 8
  store double %handle_y, double* %handle_y.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %anchor, i32* %anchor.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_draw_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_draw_tool_on_handle, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpDisplay* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_display_get_type() #7
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_draw_tool_on_handle, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call39 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %26)
  store %struct._GimpDisplayShell* %call39, %struct._GimpDisplayShell** %shell, align 8
  %27 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %28 = load double, double* %x.addr, align 8
  %29 = load double, double* %y.addr, align 8
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %27, double %28, double %29, double* %tx, double* %ty)
  %30 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %31 = load double, double* %handle_x.addr, align 8
  %32 = load double, double* %handle_y.addr, align 8
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %30, double %31, double %32, double* %handle_tx, double* %handle_ty)
  %33 = load i32, i32* %type.addr, align 4
  switch i32 %33, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 4, label %sw.bb
    i32 2, label %sw.bb.70
    i32 3, label %sw.bb.70
  ]

sw.bb:                                            ; preds = %do.end.38, %do.end.38, %do.end.38
  %34 = load i32, i32* %anchor.addr, align 4
  %35 = load double, double* %handle_tx, align 8
  %36 = load double, double* %handle_ty, align 8
  %37 = load i32, i32* %width.addr, align 4
  %38 = load i32, i32* %height.addr, align 4
  call void @gimp_canvas_item_shift_to_north_west(i32 %34, double %35, double %36, i32 %37, i32 %38, double* %handle_tx, double* %handle_ty)
  %39 = load double, double* %tx, align 8
  %40 = load double, double* %tx, align 8
  %41 = load double, double* %handle_tx, align 8
  %42 = load i32, i32* %width.addr, align 4
  %conv = sitofp i32 %42 to double
  %add = fadd double %41, %conv
  %cmp40 = fcmp ogt double %40, %add
  br i1 %cmp40, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %43 = load double, double* %handle_tx, align 8
  %44 = load i32, i32* %width.addr, align 4
  %conv42 = sitofp i32 %44 to double
  %add43 = fadd double %43, %conv42
  br label %cond.end.48

cond.false:                                       ; preds = %sw.bb
  %45 = load double, double* %tx, align 8
  %46 = load double, double* %handle_tx, align 8
  %cmp44 = fcmp olt double %45, %46
  br i1 %cmp44, label %cond.true.46, label %cond.false.47

cond.true.46:                                     ; preds = %cond.false
  %47 = load double, double* %handle_tx, align 8
  br label %cond.end

cond.false.47:                                    ; preds = %cond.false
  %48 = load double, double* %tx, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.47, %cond.true.46
  %cond = phi double [ %47, %cond.true.46 ], [ %48, %cond.false.47 ]
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.end, %cond.true
  %cond49 = phi double [ %add43, %cond.true ], [ %cond, %cond.end ]
  %cmp50 = fcmp oeq double %39, %cond49
  br i1 %cmp50, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end.48
  %49 = load double, double* %ty, align 8
  %50 = load double, double* %ty, align 8
  %51 = load double, double* %handle_ty, align 8
  %52 = load i32, i32* %height.addr, align 4
  %conv52 = sitofp i32 %52 to double
  %add53 = fadd double %51, %conv52
  %cmp54 = fcmp ogt double %50, %add53
  br i1 %cmp54, label %cond.true.56, label %cond.false.59

cond.true.56:                                     ; preds = %land.rhs
  %53 = load double, double* %handle_ty, align 8
  %54 = load i32, i32* %height.addr, align 4
  %conv57 = sitofp i32 %54 to double
  %add58 = fadd double %53, %conv57
  br label %cond.end.66

cond.false.59:                                    ; preds = %land.rhs
  %55 = load double, double* %ty, align 8
  %56 = load double, double* %handle_ty, align 8
  %cmp60 = fcmp olt double %55, %56
  br i1 %cmp60, label %cond.true.62, label %cond.false.63

cond.true.62:                                     ; preds = %cond.false.59
  %57 = load double, double* %handle_ty, align 8
  br label %cond.end.64

cond.false.63:                                    ; preds = %cond.false.59
  %58 = load double, double* %ty, align 8
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.63, %cond.true.62
  %cond65 = phi double [ %57, %cond.true.62 ], [ %58, %cond.false.63 ]
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.end.64, %cond.true.56
  %cond67 = phi double [ %add58, %cond.true.56 ], [ %cond65, %cond.end.64 ]
  %cmp68 = fcmp oeq double %49, %cond67
  br label %land.end

land.end:                                         ; preds = %cond.end.66, %cond.end.48
  %59 = phi i1 [ false, %cond.end.48 ], [ %cmp68, %cond.end.66 ]
  %land.ext = zext i1 %59 to i32
  store i32 %land.ext, i32* %retval
  br label %return

sw.bb.70:                                         ; preds = %do.end.38, %do.end.38
  %60 = load i32, i32* %anchor.addr, align 4
  %61 = load double, double* %handle_tx, align 8
  %62 = load double, double* %handle_ty, align 8
  %63 = load i32, i32* %width.addr, align 4
  %64 = load i32, i32* %height.addr, align 4
  call void @gimp_canvas_item_shift_to_center(i32 %60, double %61, double %62, i32 %63, i32 %64, double* %handle_tx, double* %handle_ty)
  %65 = load i32, i32* %width.addr, align 4
  %66 = load i32, i32* %height.addr, align 4
  %cmp71 = icmp ne i32 %65, %66
  br i1 %cmp71, label %if.then.73, label %if.end.75

if.then.73:                                       ; preds = %sw.bb.70
  %67 = load i32, i32* %width.addr, align 4
  %68 = load i32, i32* %height.addr, align 4
  %add74 = add nsw i32 %67, %68
  %div = sdiv i32 %add74, 2
  store i32 %div, i32* %width.addr, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.73, %sw.bb.70
  %69 = load i32, i32* %width.addr, align 4
  %div76 = sdiv i32 %69, 2
  store i32 %div76, i32* %width.addr, align 4
  %70 = load double, double* %handle_tx, align 8
  %71 = load double, double* %tx, align 8
  %sub = fsub double %70, %71
  %72 = load double, double* %handle_tx, align 8
  %73 = load double, double* %tx, align 8
  %sub77 = fsub double %72, %73
  %mul = fmul double %sub, %sub77
  %74 = load double, double* %handle_ty, align 8
  %75 = load double, double* %ty, align 8
  %sub78 = fsub double %74, %75
  %76 = load double, double* %handle_ty, align 8
  %77 = load double, double* %ty, align 8
  %sub79 = fsub double %76, %77
  %mul80 = fmul double %sub78, %sub79
  %add81 = fadd double %mul, %mul80
  %78 = load i32, i32* %width.addr, align 4
  %79 = load i32, i32* %width.addr, align 4
  %mul82 = mul nsw i32 %78, %79
  %conv83 = sitofp i32 %mul82 to double
  %cmp84 = fcmp olt double %add81, %conv83
  %conv85 = zext i1 %cmp84 to i32
  store i32 %conv85, i32* %retval
  br label %return

sw.default:                                       ; preds = %do.end.38
  %80 = load i32, i32* %type.addr, align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_draw_tool_on_handle, i32 0, i32 0), i32 %80)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.end.75, %land.end, %if.else.36, %if.else.9
  %81 = load i32, i32* %retval
  ret i32 %81
}

declare void @gimp_canvas_item_shift_to_north_west(i32, double, double, i32, i32, double*, double*) #1

declare void @gimp_canvas_item_shift_to_center(i32, double, double, i32, i32, double*, double*) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #3 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_draw_tool_on_vectors_handle(%struct._GimpDrawTool* %draw_tool, %struct._GimpDisplay* %display, %struct._GimpVectors* %vectors, %struct._GimpCoords* %coord, i32 %width, i32 %height, i32 %preferred, i32 %exclusive, %struct._GimpAnchor** %ret_anchor, %struct._GimpStroke** %ret_stroke) #3 {
entry:
  %retval = alloca i32, align 4
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %coord.addr = alloca %struct._GimpCoords*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %preferred.addr = alloca i32, align 4
  %exclusive.addr = alloca i32, align 4
  %ret_anchor.addr = alloca %struct._GimpAnchor**, align 8
  %ret_stroke.addr = alloca %struct._GimpStroke**, align 8
  %stroke = alloca %struct._GimpStroke*, align 8
  %pref_stroke = alloca %struct._GimpStroke*, align 8
  %anchor = alloca %struct._GimpAnchor*, align 8
  %pref_anchor = alloca %struct._GimpAnchor*, align 8
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %pref_mindist = alloca double, align 8
  %mindist = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst41 = alloca %struct._GTypeInstance*, align 8
  %__t43 = alloca i64, align 8
  %__r46 = alloca i32, align 4
  %tmp61 = alloca i32, align 4
  %anchor_list = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store %struct._GimpCoords* %coord, %struct._GimpCoords** %coord.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %preferred, i32* %preferred.addr, align 4
  store i32 %exclusive, i32* %exclusive.addr, align 4
  store %struct._GimpAnchor** %ret_anchor, %struct._GimpAnchor*** %ret_anchor.addr, align 8
  store %struct._GimpStroke** %ret_stroke, %struct._GimpStroke*** %ret_stroke.addr, align 8
  store %struct._GimpStroke* null, %struct._GimpStroke** %stroke, align 8
  store %struct._GimpStroke* null, %struct._GimpStroke** %pref_stroke, align 8
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %anchor, align 8
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %pref_anchor, align 8
  store double -1.000000e+00, double* %pref_mindist, align 8
  store double -1.000000e+00, double* %mindist, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_draw_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_draw_tool_on_vectors_handle, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpDisplay* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_display_get_type() #7
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_draw_tool_on_vectors_handle, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %27 = bitcast %struct._GimpVectors* %26 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %27, %struct._GTypeInstance** %__inst41, align 8
  %call44 = call i64 @gimp_vectors_get_type() #7
  store i64 %call44, i64* %__t43, align 8
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %tobool47 = icmp ne %struct._GTypeInstance* %28, null
  br i1 %tobool47, label %if.else.49, label %if.then.48

if.then.48:                                       ; preds = %do.body.39
  store i32 0, i32* %__r46, align 4
  br label %if.end.60

if.else.49:                                       ; preds = %do.body.39
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class50 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class50, align 8
  %tobool51 = icmp ne %struct._GTypeClass* %30, null
  br i1 %tobool51, label %land.lhs.true.52, label %if.else.57

land.lhs.true.52:                                 ; preds = %if.else.49
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class53 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class53, align 8
  %g_type54 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type54, align 8
  %34 = load i64, i64* %__t43, align 8
  %cmp55 = icmp eq i64 %33, %34
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %land.lhs.true.52
  store i32 1, i32* %__r46, align 4
  br label %if.end.59

if.else.57:                                       ; preds = %land.lhs.true.52, %if.else.49
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %36 = load i64, i64* %__t43, align 8
  %call58 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %35, i64 %36) #8
  store i32 %call58, i32* %__r46, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.57, %if.then.56
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.48
  %37 = load i32, i32* %__r46, align 4
  store i32 %37, i32* %tmp61
  %38 = load i32, i32* %tmp61
  %tobool62 = icmp ne i32 %38, 0
  br i1 %tobool62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %if.end.60
  br label %if.end.65

if.else.64:                                       ; preds = %if.end.60
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_draw_tool_on_vectors_handle, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.65:                                        ; preds = %if.then.63
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  br label %do.body.67

do.body.67:                                       ; preds = %do.end.66
  %39 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %cmp68 = icmp ne %struct._GimpCoords* %39, null
  br i1 %cmp68, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %do.body.67
  br label %if.end.71

if.else.70:                                       ; preds = %do.body.67
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_draw_tool_on_vectors_handle, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.71:                                        ; preds = %if.then.69
  br label %do.end.72

do.end.72:                                        ; preds = %if.end.71
  %40 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_anchor.addr, align 8
  %tobool73 = icmp ne %struct._GimpAnchor** %40, null
  br i1 %tobool73, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %do.end.72
  %41 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_anchor.addr, align 8
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %41, align 8
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.74, %do.end.72
  %42 = load %struct._GimpStroke**, %struct._GimpStroke*** %ret_stroke.addr, align 8
  %tobool76 = icmp ne %struct._GimpStroke** %42, null
  br i1 %tobool76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.end.75
  %43 = load %struct._GimpStroke**, %struct._GimpStroke*** %ret_stroke.addr, align 8
  store %struct._GimpStroke* null, %struct._GimpStroke** %43, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %if.end.75
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.end.78
  %44 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %45 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %call79 = call %struct._GimpStroke* @gimp_vectors_stroke_get_next(%struct._GimpVectors* %44, %struct._GimpStroke* %45)
  store %struct._GimpStroke* %call79, %struct._GimpStroke** %stroke, align 8
  %tobool80 = icmp ne %struct._GimpStroke* %call79, null
  br i1 %tobool80, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %46 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %call83 = call %struct._GList* @gimp_stroke_get_draw_anchors(%struct._GimpStroke* %46)
  %47 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %call84 = call %struct._GList* @gimp_stroke_get_draw_controls(%struct._GimpStroke* %47)
  %call85 = call %struct._GList* @g_list_concat(%struct._GList* %call83, %struct._GList* %call84)
  store %struct._GList* %call85, %struct._GList** %anchor_list, align 8
  %48 = load %struct._GList*, %struct._GList** %anchor_list, align 8
  store %struct._GList* %48, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %while.body
  %49 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool86 = icmp ne %struct._GList* %49, null
  br i1 %tobool86, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %50 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %50, i32 0, i32 0
  %51 = load double, double* %x, align 8
  %52 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %52, i32 0, i32 0
  %53 = load i8*, i8** %data, align 8
  %54 = bitcast i8* %53 to %struct._GimpAnchor*
  %position = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %54, i32 0, i32 0
  %x87 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position, i32 0, i32 0
  %55 = load double, double* %x87, align 8
  %sub = fsub double %51, %55
  store double %sub, double* %dx, align 8
  %56 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %56, i32 0, i32 1
  %57 = load double, double* %y, align 8
  %58 = load %struct._GList*, %struct._GList** %list, align 8
  %data88 = getelementptr inbounds %struct._GList, %struct._GList* %58, i32 0, i32 0
  %59 = load i8*, i8** %data88, align 8
  %60 = bitcast i8* %59 to %struct._GimpAnchor*
  %position89 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %60, i32 0, i32 0
  %y90 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position89, i32 0, i32 1
  %61 = load double, double* %y90, align 8
  %sub91 = fsub double %57, %61
  store double %sub91, double* %dy, align 8
  %62 = load double, double* %mindist, align 8
  %cmp92 = fcmp olt double %62, 0.000000e+00
  br i1 %cmp92, label %if.then.95, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %63 = load double, double* %mindist, align 8
  %64 = load double, double* %dx, align 8
  %65 = load double, double* %dx, align 8
  %mul = fmul double %64, %65
  %66 = load double, double* %dy, align 8
  %67 = load double, double* %dy, align 8
  %mul93 = fmul double %66, %67
  %add = fadd double %mul, %mul93
  %cmp94 = fcmp ogt double %63, %add
  br i1 %cmp94, label %if.then.95, label %if.end.103

if.then.95:                                       ; preds = %lor.lhs.false, %for.body
  %68 = load double, double* %dx, align 8
  %69 = load double, double* %dx, align 8
  %mul96 = fmul double %68, %69
  %70 = load double, double* %dy, align 8
  %71 = load double, double* %dy, align 8
  %mul97 = fmul double %70, %71
  %add98 = fadd double %mul96, %mul97
  store double %add98, double* %mindist, align 8
  %72 = load %struct._GList*, %struct._GList** %list, align 8
  %data99 = getelementptr inbounds %struct._GList, %struct._GList* %72, i32 0, i32 0
  %73 = load i8*, i8** %data99, align 8
  %74 = bitcast i8* %73 to %struct._GimpAnchor*
  store %struct._GimpAnchor* %74, %struct._GimpAnchor** %anchor, align 8
  %75 = load %struct._GimpStroke**, %struct._GimpStroke*** %ret_stroke.addr, align 8
  %tobool100 = icmp ne %struct._GimpStroke** %75, null
  br i1 %tobool100, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.then.95
  %76 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %77 = load %struct._GimpStroke**, %struct._GimpStroke*** %ret_stroke.addr, align 8
  store %struct._GimpStroke* %76, %struct._GimpStroke** %77, align 8
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.101, %if.then.95
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %lor.lhs.false
  %78 = load double, double* %pref_mindist, align 8
  %cmp104 = fcmp olt double %78, 0.000000e+00
  br i1 %cmp104, label %land.lhs.true.110, label %lor.lhs.false.105

lor.lhs.false.105:                                ; preds = %if.end.103
  %79 = load double, double* %pref_mindist, align 8
  %80 = load double, double* %dx, align 8
  %81 = load double, double* %dx, align 8
  %mul106 = fmul double %80, %81
  %82 = load double, double* %dy, align 8
  %83 = load double, double* %dy, align 8
  %mul107 = fmul double %82, %83
  %add108 = fadd double %mul106, %mul107
  %cmp109 = fcmp ogt double %79, %add108
  br i1 %cmp109, label %land.lhs.true.110, label %if.end.118

land.lhs.true.110:                                ; preds = %lor.lhs.false.105, %if.end.103
  %84 = load %struct._GList*, %struct._GList** %list, align 8
  %data111 = getelementptr inbounds %struct._GList, %struct._GList* %84, i32 0, i32 0
  %85 = load i8*, i8** %data111, align 8
  %86 = bitcast i8* %85 to %struct._GimpAnchor*
  %type = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %86, i32 0, i32 1
  %87 = load i32, i32* %type, align 4
  %88 = load i32, i32* %preferred.addr, align 4
  %cmp112 = icmp eq i32 %87, %88
  br i1 %cmp112, label %if.then.113, label %if.end.118

if.then.113:                                      ; preds = %land.lhs.true.110
  %89 = load double, double* %dx, align 8
  %90 = load double, double* %dx, align 8
  %mul114 = fmul double %89, %90
  %91 = load double, double* %dy, align 8
  %92 = load double, double* %dy, align 8
  %mul115 = fmul double %91, %92
  %add116 = fadd double %mul114, %mul115
  store double %add116, double* %pref_mindist, align 8
  %93 = load %struct._GList*, %struct._GList** %list, align 8
  %data117 = getelementptr inbounds %struct._GList, %struct._GList* %93, i32 0, i32 0
  %94 = load i8*, i8** %data117, align 8
  %95 = bitcast i8* %94 to %struct._GimpAnchor*
  store %struct._GimpAnchor* %95, %struct._GimpAnchor** %pref_anchor, align 8
  %96 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  store %struct._GimpStroke* %96, %struct._GimpStroke** %pref_stroke, align 8
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.113, %land.lhs.true.110, %lor.lhs.false.105
  br label %for.inc

for.inc:                                          ; preds = %if.end.118
  %97 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool119 = icmp ne %struct._GList* %97, null
  br i1 %tobool119, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %98 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %98, i32 0, i32 1
  %99 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %99, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %100 = load %struct._GList*, %struct._GList** %anchor_list, align 8
  call void @g_list_free(%struct._GList* %100)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %101 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_anchor.addr, align 8
  %tobool120 = icmp ne %struct._GimpAnchor** %101, null
  br i1 %tobool120, label %land.lhs.true.121, label %if.end.139

land.lhs.true.121:                                ; preds = %while.end
  %102 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_anchor.addr, align 8
  %103 = load %struct._GimpAnchor*, %struct._GimpAnchor** %102, align 8
  %tobool122 = icmp ne %struct._GimpAnchor* %103, null
  br i1 %tobool122, label %land.lhs.true.123, label %if.end.139

land.lhs.true.123:                                ; preds = %land.lhs.true.121
  %104 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %105 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %106 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %x124 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %106, i32 0, i32 0
  %107 = load double, double* %x124, align 8
  %108 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %y125 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %108, i32 0, i32 1
  %109 = load double, double* %y125, align 8
  %110 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_anchor.addr, align 8
  %111 = load %struct._GimpAnchor*, %struct._GimpAnchor** %110, align 8
  %position126 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %111, i32 0, i32 0
  %x127 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position126, i32 0, i32 0
  %112 = load double, double* %x127, align 8
  %113 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_anchor.addr, align 8
  %114 = load %struct._GimpAnchor*, %struct._GimpAnchor** %113, align 8
  %position128 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %114, i32 0, i32 0
  %y129 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position128, i32 0, i32 1
  %115 = load double, double* %y129, align 8
  %116 = load i32, i32* %width.addr, align 4
  %117 = load i32, i32* %height.addr, align 4
  %call130 = call i32 @gimp_draw_tool_on_handle(%struct._GimpDrawTool* %104, %struct._GimpDisplay* %105, double %107, double %109, i32 2, double %112, double %115, i32 %116, i32 %117, i32 0)
  %tobool131 = icmp ne i32 %call130, 0
  br i1 %tobool131, label %land.lhs.true.132, label %if.end.139

land.lhs.true.132:                                ; preds = %land.lhs.true.123
  %118 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_anchor.addr, align 8
  %119 = load %struct._GimpAnchor*, %struct._GimpAnchor** %118, align 8
  %type133 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %119, i32 0, i32 1
  %120 = load i32, i32* %type133, align 4
  %121 = load i32, i32* %preferred.addr, align 4
  %cmp134 = icmp eq i32 %120, %121
  br i1 %cmp134, label %if.then.135, label %if.end.139

if.then.135:                                      ; preds = %land.lhs.true.132
  %122 = load %struct._GimpStroke**, %struct._GimpStroke*** %ret_stroke.addr, align 8
  %tobool136 = icmp ne %struct._GimpStroke** %122, null
  br i1 %tobool136, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %if.then.135
  %123 = load %struct._GimpStroke*, %struct._GimpStroke** %pref_stroke, align 8
  %124 = load %struct._GimpStroke**, %struct._GimpStroke*** %ret_stroke.addr, align 8
  store %struct._GimpStroke* %123, %struct._GimpStroke** %124, align 8
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.137, %if.then.135
  store i32 1, i32* %retval
  br label %return

if.end.139:                                       ; preds = %land.lhs.true.132, %land.lhs.true.123, %land.lhs.true.121, %while.end
  %125 = load %struct._GimpAnchor*, %struct._GimpAnchor** %pref_anchor, align 8
  %tobool140 = icmp ne %struct._GimpAnchor* %125, null
  br i1 %tobool140, label %land.lhs.true.141, label %if.else.157

land.lhs.true.141:                                ; preds = %if.end.139
  %126 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %127 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %128 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %x142 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %128, i32 0, i32 0
  %129 = load double, double* %x142, align 8
  %130 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %y143 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %130, i32 0, i32 1
  %131 = load double, double* %y143, align 8
  %132 = load %struct._GimpAnchor*, %struct._GimpAnchor** %pref_anchor, align 8
  %position144 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %132, i32 0, i32 0
  %x145 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position144, i32 0, i32 0
  %133 = load double, double* %x145, align 8
  %134 = load %struct._GimpAnchor*, %struct._GimpAnchor** %pref_anchor, align 8
  %position146 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %134, i32 0, i32 0
  %y147 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position146, i32 0, i32 1
  %135 = load double, double* %y147, align 8
  %136 = load i32, i32* %width.addr, align 4
  %137 = load i32, i32* %height.addr, align 4
  %call148 = call i32 @gimp_draw_tool_on_handle(%struct._GimpDrawTool* %126, %struct._GimpDisplay* %127, double %129, double %131, i32 2, double %133, double %135, i32 %136, i32 %137, i32 0)
  %tobool149 = icmp ne i32 %call148, 0
  br i1 %tobool149, label %if.then.150, label %if.else.157

if.then.150:                                      ; preds = %land.lhs.true.141
  %138 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_anchor.addr, align 8
  %tobool151 = icmp ne %struct._GimpAnchor** %138, null
  br i1 %tobool151, label %if.then.152, label %if.end.153

if.then.152:                                      ; preds = %if.then.150
  %139 = load %struct._GimpAnchor*, %struct._GimpAnchor** %pref_anchor, align 8
  %140 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_anchor.addr, align 8
  store %struct._GimpAnchor* %139, %struct._GimpAnchor** %140, align 8
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.152, %if.then.150
  %141 = load %struct._GimpStroke**, %struct._GimpStroke*** %ret_stroke.addr, align 8
  %tobool154 = icmp ne %struct._GimpStroke** %141, null
  br i1 %tobool154, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %if.end.153
  %142 = load %struct._GimpStroke*, %struct._GimpStroke** %pref_stroke, align 8
  %143 = load %struct._GimpStroke**, %struct._GimpStroke*** %ret_stroke.addr, align 8
  store %struct._GimpStroke* %142, %struct._GimpStroke** %143, align 8
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.155, %if.end.153
  store i32 1, i32* %retval
  br label %return

if.else.157:                                      ; preds = %land.lhs.true.141, %if.end.139
  %144 = load i32, i32* %exclusive.addr, align 4
  %tobool158 = icmp ne i32 %144, 0
  br i1 %tobool158, label %if.end.174, label %land.lhs.true.159

land.lhs.true.159:                                ; preds = %if.else.157
  %145 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %tobool160 = icmp ne %struct._GimpAnchor* %145, null
  br i1 %tobool160, label %land.lhs.true.161, label %if.end.174

land.lhs.true.161:                                ; preds = %land.lhs.true.159
  %146 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %147 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %148 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %x162 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %148, i32 0, i32 0
  %149 = load double, double* %x162, align 8
  %150 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %y163 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %150, i32 0, i32 1
  %151 = load double, double* %y163, align 8
  %152 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %position164 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %152, i32 0, i32 0
  %x165 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position164, i32 0, i32 0
  %153 = load double, double* %x165, align 8
  %154 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %position166 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %154, i32 0, i32 0
  %y167 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position166, i32 0, i32 1
  %155 = load double, double* %y167, align 8
  %156 = load i32, i32* %width.addr, align 4
  %157 = load i32, i32* %height.addr, align 4
  %call168 = call i32 @gimp_draw_tool_on_handle(%struct._GimpDrawTool* %146, %struct._GimpDisplay* %147, double %149, double %151, i32 2, double %153, double %155, i32 %156, i32 %157, i32 0)
  %tobool169 = icmp ne i32 %call168, 0
  br i1 %tobool169, label %if.then.170, label %if.end.174

if.then.170:                                      ; preds = %land.lhs.true.161
  %158 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_anchor.addr, align 8
  %tobool171 = icmp ne %struct._GimpAnchor** %158, null
  br i1 %tobool171, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %if.then.170
  %159 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %160 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_anchor.addr, align 8
  store %struct._GimpAnchor* %159, %struct._GimpAnchor** %160, align 8
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.172, %if.then.170
  store i32 1, i32* %retval
  br label %return

if.end.174:                                       ; preds = %land.lhs.true.161, %land.lhs.true.159, %if.else.157
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174
  %161 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_anchor.addr, align 8
  %tobool176 = icmp ne %struct._GimpAnchor** %161, null
  br i1 %tobool176, label %if.then.177, label %if.end.178

if.then.177:                                      ; preds = %if.end.175
  %162 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_anchor.addr, align 8
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %162, align 8
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.177, %if.end.175
  %163 = load %struct._GimpStroke**, %struct._GimpStroke*** %ret_stroke.addr, align 8
  %tobool179 = icmp ne %struct._GimpStroke** %163, null
  br i1 %tobool179, label %if.then.180, label %if.end.181

if.then.180:                                      ; preds = %if.end.178
  %164 = load %struct._GimpStroke**, %struct._GimpStroke*** %ret_stroke.addr, align 8
  store %struct._GimpStroke* null, %struct._GimpStroke** %164, align 8
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.180, %if.end.178
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.181, %if.end.173, %if.end.156, %if.end.138, %if.else.70, %if.else.64, %if.else.36, %if.else.9
  %165 = load i32, i32* %retval
  ret i32 %165
}

; Function Attrs: nounwind readnone
declare i64 @gimp_vectors_get_type() #2

declare %struct._GimpStroke* @gimp_vectors_stroke_get_next(%struct._GimpVectors*, %struct._GimpStroke*) #1

declare %struct._GList* @g_list_concat(%struct._GList*, %struct._GList*) #1

declare %struct._GList* @gimp_stroke_get_draw_anchors(%struct._GimpStroke*) #1

declare %struct._GList* @gimp_stroke_get_draw_controls(%struct._GimpStroke*) #1

declare void @g_list_free(%struct._GList*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_draw_tool_on_vectors_curve(%struct._GimpDrawTool* %draw_tool, %struct._GimpDisplay* %display, %struct._GimpVectors* %vectors, %struct._GimpCoords* %coord, i32 %width, i32 %height, %struct._GimpCoords* %ret_coords, double* %ret_pos, %struct._GimpAnchor** %ret_segment_start, %struct._GimpAnchor** %ret_segment_end, %struct._GimpStroke** %ret_stroke) #3 {
entry:
  %retval = alloca i32, align 4
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %coord.addr = alloca %struct._GimpCoords*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %ret_coords.addr = alloca %struct._GimpCoords*, align 8
  %ret_pos.addr = alloca double*, align 8
  %ret_segment_start.addr = alloca %struct._GimpAnchor**, align 8
  %ret_segment_end.addr = alloca %struct._GimpAnchor**, align 8
  %ret_stroke.addr = alloca %struct._GimpStroke**, align 8
  %stroke = alloca %struct._GimpStroke*, align 8
  %segment_start = alloca %struct._GimpAnchor*, align 8
  %segment_end = alloca %struct._GimpAnchor*, align 8
  %min_coords = alloca %struct._GimpCoords, align 8
  %cur_coords = alloca %struct._GimpCoords, align 8
  %min_dist = alloca double, align 8
  %cur_dist = alloca double, align 8
  %cur_pos = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst41 = alloca %struct._GTypeInstance*, align 8
  %__t43 = alloca i64, align 8
  %__r46 = alloca i32, align 4
  %tmp61 = alloca i32, align 4
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store %struct._GimpCoords* %coord, %struct._GimpCoords** %coord.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store %struct._GimpCoords* %ret_coords, %struct._GimpCoords** %ret_coords.addr, align 8
  store double* %ret_pos, double** %ret_pos.addr, align 8
  store %struct._GimpAnchor** %ret_segment_start, %struct._GimpAnchor*** %ret_segment_start.addr, align 8
  store %struct._GimpAnchor** %ret_segment_end, %struct._GimpAnchor*** %ret_segment_end.addr, align 8
  store %struct._GimpStroke** %ret_stroke, %struct._GimpStroke*** %ret_stroke.addr, align 8
  store %struct._GimpStroke* null, %struct._GimpStroke** %stroke, align 8
  %0 = bitcast %struct._GimpCoords* %min_coords to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 64, i32 8, i1 false)
  %1 = bitcast i8* %0 to %struct._GimpCoords*
  %2 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %1, i32 0, i32 2
  store double 1.000000e+00, double* %2
  %3 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %1, i32 0, i32 5
  store double 5.000000e-01, double* %3
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %5 = bitcast %struct._GimpDrawTool* %4 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %5, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_draw_tool_get_type() #7
  store i64 %call, i64* %__t, align 8
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %6, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %8, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %9, i32 0, i32 0
  %10 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type, align 8
  %12 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %11, %12
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %14 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %13, i64 %14) #8
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %15 = load i32, i32* %__r, align 4
  store i32 %15, i32* %tmp
  %16 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %16, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_draw_tool_on_vectors_curve, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %17 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %18 = bitcast %struct._GimpDisplay* %17 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %18, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_display_get_type() #7
  store i64 %call16, i64* %__t15, align 8
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %19, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %21, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type26, align 8
  %25 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %24, %25
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %27 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %26, i64 %27) #8
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %28 = load i32, i32* %__r18, align 4
  store i32 %28, i32* %tmp33
  %29 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %29, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_draw_tool_on_vectors_curve, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %30 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %31 = bitcast %struct._GimpVectors* %30 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %31, %struct._GTypeInstance** %__inst41, align 8
  %call44 = call i64 @gimp_vectors_get_type() #7
  store i64 %call44, i64* %__t43, align 8
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %tobool47 = icmp ne %struct._GTypeInstance* %32, null
  br i1 %tobool47, label %if.else.49, label %if.then.48

if.then.48:                                       ; preds = %do.body.39
  store i32 0, i32* %__r46, align 4
  br label %if.end.60

if.else.49:                                       ; preds = %do.body.39
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class50 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class50, align 8
  %tobool51 = icmp ne %struct._GTypeClass* %34, null
  br i1 %tobool51, label %land.lhs.true.52, label %if.else.57

land.lhs.true.52:                                 ; preds = %if.else.49
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class53 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %35, i32 0, i32 0
  %36 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class53, align 8
  %g_type54 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %36, i32 0, i32 0
  %37 = load i64, i64* %g_type54, align 8
  %38 = load i64, i64* %__t43, align 8
  %cmp55 = icmp eq i64 %37, %38
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %land.lhs.true.52
  store i32 1, i32* %__r46, align 4
  br label %if.end.59

if.else.57:                                       ; preds = %land.lhs.true.52, %if.else.49
  %39 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %40 = load i64, i64* %__t43, align 8
  %call58 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %39, i64 %40) #8
  store i32 %call58, i32* %__r46, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.57, %if.then.56
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.48
  %41 = load i32, i32* %__r46, align 4
  store i32 %41, i32* %tmp61
  %42 = load i32, i32* %tmp61
  %tobool62 = icmp ne i32 %42, 0
  br i1 %tobool62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %if.end.60
  br label %if.end.65

if.else.64:                                       ; preds = %if.end.60
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_draw_tool_on_vectors_curve, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.65:                                        ; preds = %if.then.63
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  br label %do.body.67

do.body.67:                                       ; preds = %do.end.66
  %43 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %cmp68 = icmp ne %struct._GimpCoords* %43, null
  br i1 %cmp68, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %do.body.67
  br label %if.end.71

if.else.70:                                       ; preds = %do.body.67
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_draw_tool_on_vectors_curve, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.71:                                        ; preds = %if.then.69
  br label %do.end.72

do.end.72:                                        ; preds = %if.end.71
  %44 = load %struct._GimpCoords*, %struct._GimpCoords** %ret_coords.addr, align 8
  %tobool73 = icmp ne %struct._GimpCoords* %44, null
  br i1 %tobool73, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %do.end.72
  %45 = load %struct._GimpCoords*, %struct._GimpCoords** %ret_coords.addr, align 8
  %46 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %47 = bitcast %struct._GimpCoords* %45 to i8*
  %48 = bitcast %struct._GimpCoords* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 64, i32 8, i1 false)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.74, %do.end.72
  %49 = load double*, double** %ret_pos.addr, align 8
  %tobool76 = icmp ne double* %49, null
  br i1 %tobool76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.end.75
  %50 = load double*, double** %ret_pos.addr, align 8
  store double -1.000000e+00, double* %50, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %if.end.75
  %51 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_segment_start.addr, align 8
  %tobool79 = icmp ne %struct._GimpAnchor** %51, null
  br i1 %tobool79, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.end.78
  %52 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_segment_start.addr, align 8
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %52, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %if.end.78
  %53 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_segment_start.addr, align 8
  %tobool82 = icmp ne %struct._GimpAnchor** %53, null
  br i1 %tobool82, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.end.81
  %54 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_segment_end.addr, align 8
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %54, align 8
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %if.end.81
  %55 = load %struct._GimpStroke**, %struct._GimpStroke*** %ret_stroke.addr, align 8
  %tobool85 = icmp ne %struct._GimpStroke** %55, null
  br i1 %tobool85, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.end.84
  %56 = load %struct._GimpStroke**, %struct._GimpStroke*** %ret_stroke.addr, align 8
  store %struct._GimpStroke* null, %struct._GimpStroke** %56, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.86, %if.end.84
  store double -1.000000e+00, double* %min_dist, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.111, %if.end.87
  %57 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %58 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %call88 = call %struct._GimpStroke* @gimp_vectors_stroke_get_next(%struct._GimpVectors* %57, %struct._GimpStroke* %58)
  store %struct._GimpStroke* %call88, %struct._GimpStroke** %stroke, align 8
  %tobool89 = icmp ne %struct._GimpStroke* %call88, null
  br i1 %tobool89, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %59 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %60 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %call90 = call double @gimp_stroke_nearest_point_get(%struct._GimpStroke* %59, %struct._GimpCoords* %60, double 1.000000e+00, %struct._GimpCoords* %cur_coords, %struct._GimpAnchor** %segment_start, %struct._GimpAnchor** %segment_end, double* %cur_pos)
  store double %call90, double* %cur_dist, align 8
  %61 = load double, double* %cur_dist, align 8
  %cmp91 = fcmp oge double %61, 0.000000e+00
  br i1 %cmp91, label %land.lhs.true.92, label %if.end.111

land.lhs.true.92:                                 ; preds = %while.body
  %62 = load double, double* %min_dist, align 8
  %cmp93 = fcmp olt double %62, 0.000000e+00
  br i1 %cmp93, label %if.then.95, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.92
  %63 = load double, double* %cur_dist, align 8
  %64 = load double, double* %min_dist, align 8
  %cmp94 = fcmp olt double %63, %64
  br i1 %cmp94, label %if.then.95, label %if.end.111

if.then.95:                                       ; preds = %lor.lhs.false, %land.lhs.true.92
  %65 = load double, double* %cur_dist, align 8
  store double %65, double* %min_dist, align 8
  %66 = bitcast %struct._GimpCoords* %min_coords to i8*
  %67 = bitcast %struct._GimpCoords* %cur_coords to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 64, i32 8, i1 false)
  %68 = load %struct._GimpCoords*, %struct._GimpCoords** %ret_coords.addr, align 8
  %tobool96 = icmp ne %struct._GimpCoords* %68, null
  br i1 %tobool96, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %if.then.95
  %69 = load %struct._GimpCoords*, %struct._GimpCoords** %ret_coords.addr, align 8
  %70 = bitcast %struct._GimpCoords* %69 to i8*
  %71 = bitcast %struct._GimpCoords* %cur_coords to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* %71, i64 64, i32 8, i1 false)
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.97, %if.then.95
  %72 = load double*, double** %ret_pos.addr, align 8
  %tobool99 = icmp ne double* %72, null
  br i1 %tobool99, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.end.98
  %73 = load double, double* %cur_pos, align 8
  %74 = load double*, double** %ret_pos.addr, align 8
  store double %73, double* %74, align 8
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.100, %if.end.98
  %75 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_segment_start.addr, align 8
  %tobool102 = icmp ne %struct._GimpAnchor** %75, null
  br i1 %tobool102, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %if.end.101
  %76 = load %struct._GimpAnchor*, %struct._GimpAnchor** %segment_start, align 8
  %77 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_segment_start.addr, align 8
  store %struct._GimpAnchor* %76, %struct._GimpAnchor** %77, align 8
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.103, %if.end.101
  %78 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_segment_end.addr, align 8
  %tobool105 = icmp ne %struct._GimpAnchor** %78, null
  br i1 %tobool105, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.end.104
  %79 = load %struct._GimpAnchor*, %struct._GimpAnchor** %segment_end, align 8
  %80 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_segment_end.addr, align 8
  store %struct._GimpAnchor* %79, %struct._GimpAnchor** %80, align 8
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.106, %if.end.104
  %81 = load %struct._GimpStroke**, %struct._GimpStroke*** %ret_stroke.addr, align 8
  %tobool108 = icmp ne %struct._GimpStroke** %81, null
  br i1 %tobool108, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %if.end.107
  %82 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %83 = load %struct._GimpStroke**, %struct._GimpStroke*** %ret_stroke.addr, align 8
  store %struct._GimpStroke* %82, %struct._GimpStroke** %83, align 8
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.109, %if.end.107
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %lor.lhs.false, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %84 = load double, double* %min_dist, align 8
  %cmp112 = fcmp oge double %84, 0.000000e+00
  br i1 %cmp112, label %land.lhs.true.113, label %if.end.119

land.lhs.true.113:                                ; preds = %while.end
  %85 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %86 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %87 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %87, i32 0, i32 0
  %88 = load double, double* %x, align 8
  %89 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %89, i32 0, i32 1
  %90 = load double, double* %y, align 8
  %x114 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %min_coords, i32 0, i32 0
  %91 = load double, double* %x114, align 8
  %y115 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %min_coords, i32 0, i32 1
  %92 = load double, double* %y115, align 8
  %93 = load i32, i32* %width.addr, align 4
  %94 = load i32, i32* %height.addr, align 4
  %call116 = call i32 @gimp_draw_tool_on_handle(%struct._GimpDrawTool* %85, %struct._GimpDisplay* %86, double %88, double %90, i32 2, double %91, double %92, i32 %93, i32 %94, i32 0)
  %tobool117 = icmp ne i32 %call116, 0
  br i1 %tobool117, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %land.lhs.true.113
  store i32 1, i32* %retval
  br label %return

if.end.119:                                       ; preds = %land.lhs.true.113, %while.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.119, %if.then.118, %if.else.70, %if.else.64, %if.else.36, %if.else.9
  %95 = load i32, i32* %retval
  ret i32 %95
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

declare double @gimp_stroke_nearest_point_get(%struct._GimpStroke*, %struct._GimpCoords*, double, %struct._GimpCoords*, %struct._GimpAnchor**, %struct._GimpAnchor**, double*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_draw_tool_on_vectors(%struct._GimpDrawTool* %draw_tool, %struct._GimpDisplay* %display, %struct._GimpCoords* %coords, i32 %width, i32 %height, %struct._GimpCoords* %ret_coords, double* %ret_pos, %struct._GimpAnchor** %ret_segment_start, %struct._GimpAnchor** %ret_segment_end, %struct._GimpStroke** %ret_stroke, %struct._GimpVectors** %ret_vectors) #3 {
entry:
  %retval = alloca i32, align 4
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %ret_coords.addr = alloca %struct._GimpCoords*, align 8
  %ret_pos.addr = alloca double*, align 8
  %ret_segment_start.addr = alloca %struct._GimpAnchor**, align 8
  %ret_segment_end.addr = alloca %struct._GimpAnchor**, align 8
  %ret_stroke.addr = alloca %struct._GimpStroke**, align 8
  %ret_vectors.addr = alloca %struct._GimpVectors**, align 8
  %all_vectors = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store %struct._GimpCoords* %ret_coords, %struct._GimpCoords** %ret_coords.addr, align 8
  store double* %ret_pos, double** %ret_pos.addr, align 8
  store %struct._GimpAnchor** %ret_segment_start, %struct._GimpAnchor*** %ret_segment_start.addr, align 8
  store %struct._GimpAnchor** %ret_segment_end, %struct._GimpAnchor*** %ret_segment_end.addr, align 8
  store %struct._GimpStroke** %ret_stroke, %struct._GimpStroke*** %ret_stroke.addr, align 8
  store %struct._GimpVectors** %ret_vectors, %struct._GimpVectors*** %ret_vectors.addr, align 8
  %0 = load %struct._GimpCoords*, %struct._GimpCoords** %ret_coords.addr, align 8
  %tobool = icmp ne %struct._GimpCoords* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpCoords*, %struct._GimpCoords** %ret_coords.addr, align 8
  %2 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %3 = bitcast %struct._GimpCoords* %1 to i8*
  %4 = bitcast %struct._GimpCoords* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 64, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load double*, double** %ret_pos.addr, align 8
  %tobool1 = icmp ne double* %5, null
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %6 = load double*, double** %ret_pos.addr, align 8
  store double -1.000000e+00, double* %6, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %7 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_segment_start.addr, align 8
  %tobool4 = icmp ne %struct._GimpAnchor** %7, null
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %8 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_segment_start.addr, align 8
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %8, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  %9 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_segment_end.addr, align 8
  %tobool7 = icmp ne %struct._GimpAnchor** %9, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  %10 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_segment_end.addr, align 8
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %10, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  %11 = load %struct._GimpStroke**, %struct._GimpStroke*** %ret_stroke.addr, align 8
  %tobool10 = icmp ne %struct._GimpStroke** %11, null
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  %12 = load %struct._GimpStroke**, %struct._GimpStroke*** %ret_stroke.addr, align 8
  store %struct._GimpStroke* null, %struct._GimpStroke** %12, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.9
  %13 = load %struct._GimpVectors**, %struct._GimpVectors*** %ret_vectors.addr, align 8
  %tobool13 = icmp ne %struct._GimpVectors** %13, null
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.12
  %14 = load %struct._GimpVectors**, %struct._GimpVectors*** %ret_vectors.addr, align 8
  store %struct._GimpVectors* null, %struct._GimpVectors** %14, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.12
  %15 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %15)
  %call16 = call %struct._GList* @gimp_image_get_vectors_list(%struct._GimpImage* %call)
  store %struct._GList* %call16, %struct._GList** %all_vectors, align 8
  %16 = load %struct._GList*, %struct._GList** %all_vectors, align 8
  store %struct._GList* %16, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.15
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool17 = icmp ne %struct._GList* %17, null
  br i1 %tobool17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 0
  %19 = load i8*, i8** %data, align 8
  %20 = bitcast i8* %19 to %struct._GimpVectors*
  store %struct._GimpVectors* %20, %struct._GimpVectors** %vectors, align 8
  %21 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %22 = bitcast %struct._GimpVectors* %21 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_item_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call18)
  %23 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpItem*
  %call20 = call i32 @gimp_item_get_visible(%struct._GimpItem* %23)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %for.body
  br label %for.inc

if.end.23:                                        ; preds = %for.body
  %24 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %25 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %26 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %27 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %28 = load i32, i32* %width.addr, align 4
  %29 = load i32, i32* %height.addr, align 4
  %30 = load %struct._GimpCoords*, %struct._GimpCoords** %ret_coords.addr, align 8
  %31 = load double*, double** %ret_pos.addr, align 8
  %32 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_segment_start.addr, align 8
  %33 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_segment_end.addr, align 8
  %34 = load %struct._GimpStroke**, %struct._GimpStroke*** %ret_stroke.addr, align 8
  %call24 = call i32 @gimp_draw_tool_on_vectors_curve(%struct._GimpDrawTool* %24, %struct._GimpDisplay* %25, %struct._GimpVectors* %26, %struct._GimpCoords* %27, i32 %28, i32 %29, %struct._GimpCoords* %30, double* %31, %struct._GimpAnchor** %32, %struct._GimpAnchor** %33, %struct._GimpStroke** %34)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.30

if.then.26:                                       ; preds = %if.end.23
  %35 = load %struct._GimpVectors**, %struct._GimpVectors*** %ret_vectors.addr, align 8
  %tobool27 = icmp ne %struct._GimpVectors** %35, null
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.then.26
  %36 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %37 = load %struct._GimpVectors**, %struct._GimpVectors*** %ret_vectors.addr, align 8
  store %struct._GimpVectors* %36, %struct._GimpVectors** %37, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.then.26
  %38 = load %struct._GList*, %struct._GList** %all_vectors, align 8
  call void @g_list_free(%struct._GList* %38)
  store i32 1, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.end.23
  br label %for.inc

for.inc:                                          ; preds = %if.end.30, %if.then.22
  %39 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool31 = icmp ne %struct._GList* %39, null
  br i1 %tobool31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %40 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %40, i32 0, i32 1
  %41 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %41, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load %struct._GList*, %struct._GList** %all_vectors, align 8
  call void @g_list_free(%struct._GList* %42)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.end.29
  %43 = load i32, i32* %retval
  ret i32 %43
}

declare %struct._GList* @gimp_image_get_vectors_list(%struct._GimpImage*) #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare i32 @gimp_item_get_visible(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_draw_tool_class_init(%struct._GimpDrawToolClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpDrawToolClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %tool_class = alloca %struct._GimpToolClass*, align 8
  store %struct._GimpDrawToolClass* %klass, %struct._GimpDrawToolClass** %klass.addr, align 8
  %0 = load %struct._GimpDrawToolClass*, %struct._GimpDrawToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpDrawToolClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpDrawToolClass*, %struct._GimpDrawToolClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpDrawToolClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_tool_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpToolClass*
  store %struct._GimpToolClass* %5, %struct._GimpToolClass** %tool_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_draw_tool_dispose, void (%struct._GObject*)** %dispose, align 8
  %7 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %has_display = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %7, i32 0, i32 1
  store i32 (%struct._GimpTool*, %struct._GimpDisplay*)* @gimp_draw_tool_has_display, i32 (%struct._GimpTool*, %struct._GimpDisplay*)** %has_display, align 8
  %8 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %has_image = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %8, i32 0, i32 2
  store %struct._GimpDisplay* (%struct._GimpTool*, %struct._GimpImage*)* @gimp_draw_tool_has_image, %struct._GimpDisplay* (%struct._GimpTool*, %struct._GimpImage*)** %has_image, align 8
  %9 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %control = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %9, i32 0, i32 4
  store void (%struct._GimpTool*, i32, %struct._GimpDisplay*)* @gimp_draw_tool_control, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)** %control, align 8
  %10 = load %struct._GimpDrawToolClass*, %struct._GimpDrawToolClass** %klass.addr, align 8
  %draw = getelementptr inbounds %struct._GimpDrawToolClass, %struct._GimpDrawToolClass* %10, i32 0, i32 1
  store void (%struct._GimpDrawTool*)* @gimp_draw_tool_real_draw, void (%struct._GimpDrawTool*)** %draw, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_draw_tool_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %draw_tool = alloca %struct._GimpDrawTool*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_draw_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawTool*
  store %struct._GimpDrawTool* %2, %struct._GimpDrawTool** %draw_tool, align 8
  %3 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %draw_timeout = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %3, i32 0, i32 3
  %4 = load i32, i32* %draw_timeout, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %draw_timeout2 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %5, i32 0, i32 3
  %6 = load i32, i32* %draw_timeout2, align 4
  %call3 = call i32 @g_source_remove(i32 %6)
  %7 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %draw_timeout4 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %7, i32 0, i32 3
  store i32 0, i32* %draw_timeout4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_draw_tool_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 80)
  %10 = bitcast %struct._GTypeClass* %call5 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 5
  %11 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %11(%struct._GObject* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_draw_tool_has_display(%struct._GimpTool* %tool, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %draw_tool = alloca %struct._GimpDrawTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_draw_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawTool*
  store %struct._GimpDrawTool* %2, %struct._GimpDrawTool** %draw_tool, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %4 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %display2 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %4, i32 0, i32 1
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display2, align 8
  %cmp = icmp eq %struct._GimpDisplay* %3, %5
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %6 = load i8*, i8** @gimp_draw_tool_parent_class, align 8
  %7 = bitcast i8* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_tool_get_type() #7
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpToolClass*
  %has_display = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %8, i32 0, i32 1
  %9 = load i32 (%struct._GimpTool*, %struct._GimpDisplay*)*, i32 (%struct._GimpTool*, %struct._GimpDisplay*)** %has_display, align 8
  %10 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %11 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call5 = call i32 %9(%struct._GimpTool* %10, %struct._GimpDisplay* %11)
  %tobool = icmp ne i32 %call5, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %12 = phi i1 [ true, %entry ], [ %tobool, %lor.rhs ]
  %lor.ext = zext i1 %12 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpDisplay* @gimp_draw_tool_has_image(%struct._GimpTool* %tool, %struct._GimpImage* %image) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %draw_tool = alloca %struct._GimpDrawTool*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_draw_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawTool*
  store %struct._GimpDrawTool* %2, %struct._GimpDrawTool** %draw_tool, align 8
  %3 = load i8*, i8** @gimp_draw_tool_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_tool_get_type() #7
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpToolClass*
  %has_image = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %5, i32 0, i32 2
  %6 = load %struct._GimpDisplay* (%struct._GimpTool*, %struct._GimpImage*)*, %struct._GimpDisplay* (%struct._GimpTool*, %struct._GimpImage*)** %has_image, align 8
  %7 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call4 = call %struct._GimpDisplay* %6(%struct._GimpTool* %7, %struct._GimpImage* %8)
  store %struct._GimpDisplay* %call4, %struct._GimpDisplay** %display, align 8
  %9 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %9, null
  br i1 %tobool, label %if.end.17, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %10 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %display5 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %10, i32 0, i32 1
  %11 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display5, align 8
  %tobool6 = icmp ne %struct._GimpDisplay* %11, null
  br i1 %tobool6, label %if.then, label %if.end.17

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %tobool7 = icmp ne %struct._GimpImage* %12, null
  br i1 %tobool7, label %land.lhs.true.8, label %if.end

land.lhs.true.8:                                  ; preds = %if.then
  %13 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %display9 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %13, i32 0, i32 1
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display9, align 8
  %call10 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %14)
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp = icmp eq %struct._GimpImage* %call10, %15
  br i1 %cmp, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %land.lhs.true.8
  %16 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %display12 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %16, i32 0, i32 1
  %17 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display12, align 8
  store %struct._GimpDisplay* %17, %struct._GimpDisplay** %display, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.11, %land.lhs.true.8, %if.then
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %tobool13 = icmp ne %struct._GimpImage* %18, null
  br i1 %tobool13, label %if.end.16, label %if.then.14

if.then.14:                                       ; preds = %if.end
  %19 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %display15 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %19, i32 0, i32 1
  %20 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display15, align 8
  store %struct._GimpDisplay* %20, %struct._GimpDisplay** %display, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %land.lhs.true, %entry
  %21 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  ret %struct._GimpDisplay* %21
}

; Function Attrs: nounwind uwtable
define internal void @gimp_draw_tool_control(%struct._GimpTool* %tool, i32 %action, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %action.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %draw_tool = alloca %struct._GimpDrawTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %action, i32* %action.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_draw_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawTool*
  store %struct._GimpDrawTool* %2, %struct._GimpDrawTool** %draw_tool, align 8
  %3 = load i32, i32* %action.addr, align 4
  switch i32 %3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry, %entry
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %4 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %call3 = call i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool* %4)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.2
  %5 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_stop(%struct._GimpDrawTool* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.2
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end, %sw.bb
  %6 = load i8*, i8** @gimp_draw_tool_parent_class, align 8
  %7 = bitcast i8* %6 to %struct._GTypeClass*
  %call4 = call i64 @gimp_tool_get_type() #7
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call4)
  %8 = bitcast %struct._GTypeClass* %call5 to %struct._GimpToolClass*
  %control = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %8, i32 0, i32 4
  %9 = load void (%struct._GimpTool*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)** %control, align 8
  %10 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %11 = load i32, i32* %action.addr, align 4
  %12 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %9(%struct._GimpTool* %10, i32 %11, %struct._GimpDisplay* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_draw_tool_real_draw(%struct._GimpDrawTool* %draw_tool) #3 {
entry:
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  ret void
}

declare i64 @g_get_monotonic_time() #1

declare i8* @g_type_name(i64) #1

declare void @gimp_display_shell_add_preview_item(%struct._GimpDisplayShell*, %struct._GimpCanvasItem*) #1

declare void @gimp_display_shell_add_tool_item(%struct._GimpDisplayShell*, %struct._GimpCanvasItem*) #1

declare void @gimp_display_shell_remove_preview_item(%struct._GimpDisplayShell*, %struct._GimpCanvasItem*) #1

declare void @gimp_display_shell_remove_tool_item(%struct._GimpDisplayShell*, %struct._GimpCanvasItem*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

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
