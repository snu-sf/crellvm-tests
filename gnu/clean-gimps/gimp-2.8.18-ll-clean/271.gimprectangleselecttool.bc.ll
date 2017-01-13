; ModuleID = './app/tools/gimprectangleselecttool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpRectangleSelectToolClass = type { %struct._GimpSelectionToolClass, void (%struct._GimpRectangleSelectTool*, i32, i32, i32, i32, i32)* }
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
%struct._GimpToolInfo = type opaque
%struct._GimpToolControl = type { %struct._GimpObject, i32, i32, i32, %struct._GSList*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8* }
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
%struct._GimpRectangleSelectTool = type { %struct._GimpSelectionTool, i8* }
%struct._GimpSelectionTool = type { %struct._GimpDrawTool, i32, i32, i32 }
%struct.GimpRectangleSelectToolPrivate = type { i32, i32, i32, %struct._GimpUndo*, %struct._GimpUndo*, i32, double, double, double }
%struct._GimpUndo = type { %struct._GimpViewable, %struct._GimpImage*, i32, i32, i32, %struct._TempBuf*, i32 }
%struct._TempBuf = type opaque
%struct._GimpRectangleTool = type opaque
%struct._GimpRectangleToolInterface = type { %struct._GTypeInterface, i32 (%struct._GimpRectangleTool*, i32, i32, i32, i32)*, void (%struct._GimpRectangleTool*)*, i32 (%struct._GimpRectangleTool*)* }
%struct._GTypeInterface = type { i64, i64 }
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
%struct._GimpRectangleSelectOptions = type { %struct._GimpSelectionOptions, i32, double }
%struct._GimpSelectionOptions = type { %struct._GimpToolOptions, i32, i32, i32, double, %struct._GtkWidget* }
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
%struct._GimpUndoStack = type { %struct._GimpUndo, %struct._GimpContainer* }
%struct._GimpContainer = type opaque
%struct._GimpCanvasGroup = type { %struct._GimpCanvasItem }
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GeglNode = type opaque
%struct._BoundSeg = type { i32, i32, i32, i32, i8 }
%struct._GimpRectangleOptions = type opaque
%struct._GimpLayer = type opaque
%struct._GimpPickable = type opaque

@gimp_rectangle_select_tool_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"GimpRectangleSelectTool\00", align 1
@gimp_rectangle_select_tool_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpRectangleToolInterface*)* @gimp_rectangle_select_tool_rectangle_tool_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"gimp-rect-select-tool\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Rectangle Select\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Rectangle Select Tool: Select a rectangular region\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"_Rectangle Select\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"gimp-tool-rect-select\00", align 1
@gimp_rectangle_select_tool_parent_class = internal global i8* null, align 8
@GimpRectangleSelectTool_private_offset = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"notify::round-corners\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"notify::corner-radius\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"x1\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"y1\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"x2\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"y2\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"default-aspect-numerator\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"default-aspect-denominator\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"use-string-current\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_rectangle_select_tool_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_rectangle_select_tool_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_rectangle_select_tool_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 296, void (i8*, i8*)* bitcast (void (i8*)* @gimp_rectangle_select_tool_class_intern_init to void (i8*, i8*)*), i32 272, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpRectangleSelectTool*)* @gimp_rectangle_select_tool_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_rectangle_tool_interface_get_type() #5
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_rectangle_select_tool_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_rectangle_select_tool_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_rectangle_select_tool_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_selection_tool_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_select_tool_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_rectangle_select_tool_parent_class, align 8
  %1 = load i32, i32* @GimpRectangleSelectTool_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpRectangleSelectTool_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpRectangleSelectToolClass*
  call void @gimp_rectangle_select_tool_class_init(%struct._GimpRectangleSelectToolClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_select_tool_init(%struct._GimpRectangleSelectTool* %rect_sel_tool) #3 {
entry:
  %rect_sel_tool.addr = alloca %struct._GimpRectangleSelectTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %priv = alloca %struct.GimpRectangleSelectToolPrivate*, align 8
  store %struct._GimpRectangleSelectTool* %rect_sel_tool, %struct._GimpRectangleSelectTool** %rect_sel_tool.addr, align 8
  %0 = load %struct._GimpRectangleSelectTool*, %struct._GimpRectangleSelectTool** %rect_sel_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleSelectTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpRectangleSelectTool*, %struct._GimpRectangleSelectTool** %rect_sel_tool.addr, align 8
  %4 = bitcast %struct._GimpRectangleSelectTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_rectangle_tool_interface_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpRectangleTool*
  call void @gimp_rectangle_tool_init(%struct._GimpRectangleTool* %5)
  %6 = load %struct._GimpRectangleSelectTool*, %struct._GimpRectangleSelectTool** %rect_sel_tool.addr, align 8
  %7 = bitcast %struct._GimpRectangleSelectTool* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_rectangle_select_tool_get_type() #5
  %call5 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast i8* %call5 to %struct.GimpRectangleSelectToolPrivate*
  %9 = bitcast %struct.GimpRectangleSelectToolPrivate* %8 to i8*
  %10 = load %struct._GimpRectangleSelectTool*, %struct._GimpRectangleSelectTool** %rect_sel_tool.addr, align 8
  %priv6 = getelementptr inbounds %struct._GimpRectangleSelectTool, %struct._GimpRectangleSelectTool* %10, i32 0, i32 1
  store i8* %9, i8** %priv6, align 8
  %11 = load %struct._GimpRectangleSelectTool*, %struct._GimpRectangleSelectTool** %rect_sel_tool.addr, align 8
  %priv7 = getelementptr inbounds %struct._GimpRectangleSelectTool, %struct._GimpRectangleSelectTool* %11, i32 0, i32 1
  %12 = load i8*, i8** %priv7, align 8
  %13 = bitcast i8* %12 to %struct.GimpRectangleSelectToolPrivate*
  store %struct.GimpRectangleSelectToolPrivate* %13, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %14 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %14, i32 0, i32 3
  %15 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_set_wants_click(%struct._GimpToolControl* %15, i32 1)
  %16 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control8 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %16, i32 0, i32 3
  %17 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control8, align 8
  call void @gimp_tool_control_set_precision(%struct._GimpToolControl* %17, i32 1)
  %18 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control9 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %18, i32 0, i32 3
  %19 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control9, align 8
  call void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl* %19, i32 1)
  %20 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control10 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %20, i32 0, i32 3
  %21 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control10, align 8
  call void @gimp_tool_control_set_preserve(%struct._GimpToolControl* %21, i32 0)
  %22 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control11 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %22, i32 0, i32 3
  %23 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control11, align 8
  call void @gimp_tool_control_set_dirty_mask(%struct._GimpToolControl* %23, i32 258)
  %24 = load %struct.GimpRectangleSelectToolPrivate*, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %undo = getelementptr inbounds %struct.GimpRectangleSelectToolPrivate, %struct.GimpRectangleSelectToolPrivate* %24, i32 0, i32 3
  store %struct._GimpUndo* null, %struct._GimpUndo** %undo, align 8
  %25 = load %struct.GimpRectangleSelectToolPrivate*, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %redo = getelementptr inbounds %struct.GimpRectangleSelectToolPrivate, %struct.GimpRectangleSelectToolPrivate* %25, i32 0, i32 4
  store %struct._GimpUndo* null, %struct._GimpUndo** %redo, align 8
  %26 = load %struct.GimpRectangleSelectToolPrivate*, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %press_x = getelementptr inbounds %struct.GimpRectangleSelectToolPrivate, %struct.GimpRectangleSelectToolPrivate* %26, i32 0, i32 7
  store double 0.000000e+00, double* %press_x, align 8
  %27 = load %struct.GimpRectangleSelectToolPrivate*, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %press_y = getelementptr inbounds %struct.GimpRectangleSelectToolPrivate, %struct.GimpRectangleSelectToolPrivate* %27, i32 0, i32 8
  store double 0.000000e+00, double* %press_y, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_select_tool_rectangle_tool_iface_init(%struct._GimpRectangleToolInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpRectangleToolInterface*, align 8
  store %struct._GimpRectangleToolInterface* %iface, %struct._GimpRectangleToolInterface** %iface.addr, align 8
  %0 = load %struct._GimpRectangleToolInterface*, %struct._GimpRectangleToolInterface** %iface.addr, align 8
  %execute = getelementptr inbounds %struct._GimpRectangleToolInterface, %struct._GimpRectangleToolInterface* %0, i32 0, i32 1
  store i32 (%struct._GimpRectangleTool*, i32, i32, i32, i32)* @gimp_rectangle_select_tool_execute, i32 (%struct._GimpRectangleTool*, i32, i32, i32, i32)** %execute, align 8
  %1 = load %struct._GimpRectangleToolInterface*, %struct._GimpRectangleToolInterface** %iface.addr, align 8
  %cancel = getelementptr inbounds %struct._GimpRectangleToolInterface, %struct._GimpRectangleToolInterface* %1, i32 0, i32 2
  store void (%struct._GimpRectangleTool*)* @gimp_rectangle_select_tool_cancel, void (%struct._GimpRectangleTool*)** %cancel, align 8
  %2 = load %struct._GimpRectangleToolInterface*, %struct._GimpRectangleToolInterface** %iface.addr, align 8
  %rectangle_change_complete = getelementptr inbounds %struct._GimpRectangleToolInterface, %struct._GimpRectangleToolInterface* %2, i32 0, i32 3
  store i32 (%struct._GimpRectangleTool*)* @gimp_rectangle_select_tool_rectangle_change_complete, i32 (%struct._GimpRectangleTool*)** %rectangle_change_complete, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_rectangle_tool_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_rectangle_select_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, i8* %data) #3 {
entry:
  %callback.addr = alloca void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  %call = call i64 @gimp_rectangle_select_tool_get_type() #5
  %call1 = call i64 @gimp_rectangle_select_options_get_type() #5
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0)) #6
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i32 0, i32 0)) #6
  %1 = load i8*, i8** %data.addr, align 8
  call void %0(i64 %call, i64 %call1, %struct._GtkWidget* (%struct._GimpToolOptions*)* @gimp_rectangle_select_options_gui, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i8* %call2, i8* %call3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i8* %1)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_rectangle_select_options_get_type() #2

declare %struct._GtkWidget* @gimp_rectangle_select_options_gui(%struct._GimpToolOptions*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_select_tool_class_init(%struct._GimpRectangleSelectToolClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpRectangleSelectToolClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %tool_class = alloca %struct._GimpToolClass*, align 8
  %draw_tool_class = alloca %struct._GimpDrawToolClass*, align 8
  store %struct._GimpRectangleSelectToolClass* %klass, %struct._GimpRectangleSelectToolClass** %klass.addr, align 8
  %0 = load %struct._GimpRectangleSelectToolClass*, %struct._GimpRectangleSelectToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpRectangleSelectToolClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpRectangleSelectToolClass*, %struct._GimpRectangleSelectToolClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpRectangleSelectToolClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_tool_get_type() #5
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpToolClass*
  store %struct._GimpToolClass* %5, %struct._GimpToolClass** %tool_class, align 8
  %6 = load %struct._GimpRectangleSelectToolClass*, %struct._GimpRectangleSelectToolClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpRectangleSelectToolClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_draw_tool_get_type() #5
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpDrawToolClass*
  store %struct._GimpDrawToolClass* %8, %struct._GimpDrawToolClass** %draw_tool_class, align 8
  %9 = load %struct._GimpRectangleSelectToolClass*, %struct._GimpRectangleSelectToolClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpRectangleSelectToolClass* %9 to i8*
  call void @g_type_class_add_private(i8* %10, i64 64)
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_rectangle_select_tool_constructed, void (%struct._GObject*)** %constructed, align 8
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_rectangle_tool_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %13, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_rectangle_tool_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %14 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %control = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %14, i32 0, i32 4
  store void (%struct._GimpTool*, i32, %struct._GimpDisplay*)* @gimp_rectangle_select_tool_control, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)** %control, align 8
  %15 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %15, i32 0, i32 5
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_rectangle_select_tool_button_press, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_press, align 8
  %16 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_release = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %16, i32 0, i32 6
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_rectangle_select_tool_button_release, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_release, align 8
  %17 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %motion = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %17, i32 0, i32 7
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_rectangle_tool_motion, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %motion, align 8
  %18 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %key_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %18, i32 0, i32 8
  store i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)* @gimp_rectangle_select_tool_key_press, i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)** %key_press, align 8
  %19 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %active_modifier_key = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %19, i32 0, i32 11
  store void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_rectangle_select_tool_active_modifier_key, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)** %active_modifier_key, align 8
  %20 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %oper_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %20, i32 0, i32 12
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_rectangle_select_tool_oper_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %oper_update, align 8
  %21 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %21, i32 0, i32 13
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)* @gimp_rectangle_select_tool_cursor_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %22 = load %struct._GimpDrawToolClass*, %struct._GimpDrawToolClass** %draw_tool_class, align 8
  %draw = getelementptr inbounds %struct._GimpDrawToolClass, %struct._GimpDrawToolClass* %22, i32 0, i32 1
  store void (%struct._GimpDrawTool*)* @gimp_rectangle_select_tool_draw, void (%struct._GimpDrawTool*)** %draw, align 8
  %23 = load %struct._GimpRectangleSelectToolClass*, %struct._GimpRectangleSelectToolClass** %klass.addr, align 8
  %select = getelementptr inbounds %struct._GimpRectangleSelectToolClass, %struct._GimpRectangleSelectToolClass* %23, i32 0, i32 1
  store void (%struct._GimpRectangleSelectTool*, i32, i32, i32, i32, i32)* @gimp_rectangle_select_tool_real_select, void (%struct._GimpRectangleSelectTool*, i32, i32, i32, i32, i32)** %select, align 8
  %24 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  call void @gimp_rectangle_tool_install_properties(%struct._GObjectClass* %24)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_draw_tool_get_type() #2

declare void @g_type_class_add_private(i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_select_tool_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %rect_sel_tool = alloca %struct._GimpRectangleSelectTool*, align 8
  %options = alloca %struct._GimpRectangleSelectOptions*, align 8
  %priv = alloca %struct.GimpRectangleSelectToolPrivate*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load i8*, i8** @gimp_rectangle_select_tool_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %2, i32 0, i32 9
  %3 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** @gimp_rectangle_select_tool_parent_class, align 8
  %5 = bitcast i8* %4 to %struct._GTypeClass*
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %5, i64 80)
  %6 = bitcast %struct._GTypeClass* %call1 to %struct._GObjectClass*
  %constructed2 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  %7 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed2, align 8
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %7(%struct._GObject* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void @gimp_rectangle_tool_constructor(%struct._GObject* %9)
  %10 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %11 = bitcast %struct._GObject* %10 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_rectangle_select_tool_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call3)
  %12 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpRectangleSelectTool*
  store %struct._GimpRectangleSelectTool* %12, %struct._GimpRectangleSelectTool** %rect_sel_tool, align 8
  %13 = load %struct._GimpRectangleSelectTool*, %struct._GimpRectangleSelectTool** %rect_sel_tool, align 8
  %14 = bitcast %struct._GimpRectangleSelectTool* %13 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_tool_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call5)
  %15 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpTool*
  %call7 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %15)
  %16 = bitcast %struct._GimpToolOptions* %call7 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_rectangle_select_options_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call8)
  %17 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpRectangleSelectOptions*
  store %struct._GimpRectangleSelectOptions* %17, %struct._GimpRectangleSelectOptions** %options, align 8
  %18 = load %struct._GimpRectangleSelectTool*, %struct._GimpRectangleSelectTool** %rect_sel_tool, align 8
  %priv10 = getelementptr inbounds %struct._GimpRectangleSelectTool, %struct._GimpRectangleSelectTool* %18, i32 0, i32 1
  %19 = load i8*, i8** %priv10, align 8
  %20 = bitcast i8* %19 to %struct.GimpRectangleSelectToolPrivate*
  store %struct.GimpRectangleSelectToolPrivate* %20, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %21 = load %struct._GimpRectangleSelectOptions*, %struct._GimpRectangleSelectOptions** %options, align 8
  %round_corners = getelementptr inbounds %struct._GimpRectangleSelectOptions, %struct._GimpRectangleSelectOptions* %21, i32 0, i32 1
  %22 = load i32, i32* %round_corners, align 4
  %23 = load %struct.GimpRectangleSelectToolPrivate*, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %round_corners11 = getelementptr inbounds %struct.GimpRectangleSelectToolPrivate, %struct.GimpRectangleSelectToolPrivate* %23, i32 0, i32 5
  store i32 %22, i32* %round_corners11, align 4
  %24 = load %struct._GimpRectangleSelectOptions*, %struct._GimpRectangleSelectOptions** %options, align 8
  %corner_radius = getelementptr inbounds %struct._GimpRectangleSelectOptions, %struct._GimpRectangleSelectOptions* %24, i32 0, i32 2
  %25 = load double, double* %corner_radius, align 8
  %26 = load %struct.GimpRectangleSelectToolPrivate*, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %corner_radius12 = getelementptr inbounds %struct.GimpRectangleSelectToolPrivate, %struct.GimpRectangleSelectToolPrivate* %26, i32 0, i32 6
  store double %25, double* %corner_radius12, align 8
  %27 = load %struct._GimpRectangleSelectOptions*, %struct._GimpRectangleSelectOptions** %options, align 8
  %28 = bitcast %struct._GimpRectangleSelectOptions* %27 to i8*
  %29 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %30 = bitcast %struct._GObject* %29 to i8*
  %call13 = call i64 @g_signal_connect_object(i8* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GimpRectangleSelectOptions*, %struct._GParamSpec*, %struct._GimpRectangleSelectTool*)* @gimp_rectangle_select_tool_round_corners_notify to void ()*), i8* %30, i32 0)
  %31 = load %struct._GimpRectangleSelectOptions*, %struct._GimpRectangleSelectOptions** %options, align 8
  %32 = bitcast %struct._GimpRectangleSelectOptions* %31 to i8*
  %33 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %34 = bitcast %struct._GObject* %33 to i8*
  %call14 = call i64 @g_signal_connect_object(i8* %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GimpRectangleSelectOptions*, %struct._GParamSpec*, %struct._GimpRectangleSelectTool*)* @gimp_rectangle_select_tool_round_corners_notify to void ()*), i8* %34, i32 0)
  %35 = load %struct._GimpRectangleSelectTool*, %struct._GimpRectangleSelectTool** %rect_sel_tool, align 8
  call void @gimp_rectangle_select_tool_update_option_defaults(%struct._GimpRectangleSelectTool* %35, i32 0)
  ret void
}

declare void @gimp_rectangle_tool_set_property(%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*) #1

declare void @gimp_rectangle_tool_get_property(%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_select_tool_control(%struct._GimpTool* %tool, i32 %action, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %action.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %action, i32* %action.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = load i32, i32* %action.addr, align 4
  %2 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_rectangle_tool_control(%struct._GimpTool* %0, i32 %1, %struct._GimpDisplay* %2)
  %3 = load i8*, i8** @gimp_rectangle_select_tool_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call)
  %5 = bitcast %struct._GTypeClass* %call1 to %struct._GimpToolClass*
  %control = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %5, i32 0, i32 4
  %6 = load void (%struct._GimpTool*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)** %control, align 8
  %7 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %8 = load i32, i32* %action.addr, align 4
  %9 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %6(%struct._GimpTool* %7, i32 %8, %struct._GimpDisplay* %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_select_tool_button_press(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %press_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %press_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %rectangle = alloca %struct._GimpRectangleTool*, align 8
  %rect_sel_tool = alloca %struct._GimpRectangleSelectTool*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %priv = alloca %struct.GimpRectangleSelectToolPrivate*, align 8
  %function = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %undo_stack = alloca %struct._GimpUndoStack*, align 8
  %redo_stack = alloca %struct._GimpUndoStack*, align 8
  %undo = alloca %struct._GimpUndo*, align 8
  %operation = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %press_type, i32* %press_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRectangleTool*
  store %struct._GimpRectangleTool* %2, %struct._GimpRectangleTool** %rectangle, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_rectangle_select_tool_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpRectangleSelectTool*
  store %struct._GimpRectangleSelectTool* %5, %struct._GimpRectangleSelectTool** %rect_sel_tool, align 8
  %6 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call4 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %6)
  store %struct._GimpDisplayShell* %call4, %struct._GimpDisplayShell** %shell, align 8
  %7 = load %struct._GimpRectangleSelectTool*, %struct._GimpRectangleSelectTool** %rect_sel_tool, align 8
  %priv5 = getelementptr inbounds %struct._GimpRectangleSelectTool, %struct._GimpRectangleSelectTool* %7, i32 0, i32 1
  %8 = load i8*, i8** %priv5, align 8
  %9 = bitcast i8* %8 to %struct.GimpRectangleSelectToolPrivate*
  store %struct.GimpRectangleSelectToolPrivate* %9, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %10 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display6 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %10, i32 0, i32 4
  %11 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display6, align 8
  %tobool = icmp ne %struct._GimpDisplay* %11, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %12 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display7 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %13, i32 0, i32 4
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display7, align 8
  %cmp = icmp ne %struct._GimpDisplay* %12, %14
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %15 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %16 = bitcast %struct._GimpTool* %15 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_rectangle_tool_interface_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call8)
  %17 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpRectangleTool*
  call void @gimp_rectangle_tool_cancel(%struct._GimpRectangleTool* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %18 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %19 = bitcast %struct._GimpTool* %18 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_selection_tool_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call10)
  %20 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpSelectionTool*
  %21 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %22 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %call12 = call i32 @gimp_selection_tool_start_edit(%struct._GimpSelectionTool* %20, %struct._GimpDisplay* %21, %struct._GimpCoords* %22)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end
  %23 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rectangle, align 8
  %call15 = call i32 @gimp_rectangle_tool_execute(%struct._GimpRectangleTool* %23)
  %24 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %25 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_rectangle_tool_control(%struct._GimpTool* %24, i32 2, %struct._GimpDisplay* %25)
  %26 = load %struct._GimpRectangleSelectTool*, %struct._GimpRectangleSelectTool** %rect_sel_tool, align 8
  call void @gimp_rectangle_select_tool_update_option_defaults(%struct._GimpRectangleSelectTool* %26, i32 1)
  br label %return

if.end.16:                                        ; preds = %if.end
  %27 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %27, i32 0, i32 3
  %28 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_activate(%struct._GimpToolControl* %28)
  %29 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call17 = call i32 @gimp_display_shell_get_show_selection(%struct._GimpDisplayShell* %29)
  %30 = load %struct.GimpRectangleSelectToolPrivate*, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %saved_show_selection = getelementptr inbounds %struct.GimpRectangleSelectToolPrivate, %struct.GimpRectangleSelectToolPrivate* %30, i32 0, i32 2
  store i32 %call17, i32* %saved_show_selection, align 4
  %31 = load i32, i32* %state.addr, align 4
  %call18 = call i32 @gimp_get_extend_selection_mask()
  %call19 = call i32 @gimp_get_modify_selection_mask()
  %or = or i32 %call18, %call19
  %and = and i32 %31, %or
  %tobool20 = icmp ne i32 %and, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.16
  %32 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rectangle, align 8
  call void @gimp_rectangle_tool_set_function(%struct._GimpRectangleTool* %32, i32 2)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.16
  %33 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %34 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %35 = load i32, i32* %time.addr, align 4
  %36 = load i32, i32* %state.addr, align 4
  %37 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_rectangle_tool_button_press(%struct._GimpTool* %33, %struct._GimpCoords* %34, i32 %35, i32 %36, %struct._GimpDisplay* %37)
  %38 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %38, i32 0, i32 0
  %39 = load double, double* %x, align 8
  %40 = load %struct.GimpRectangleSelectToolPrivate*, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %press_x = getelementptr inbounds %struct.GimpRectangleSelectToolPrivate, %struct.GimpRectangleSelectToolPrivate* %40, i32 0, i32 7
  store double %39, double* %press_x, align 8
  %41 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %41, i32 0, i32 1
  %42 = load double, double* %y, align 8
  %43 = load %struct.GimpRectangleSelectToolPrivate*, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %press_y = getelementptr inbounds %struct.GimpRectangleSelectToolPrivate, %struct.GimpRectangleSelectToolPrivate* %43, i32 0, i32 8
  store double %42, double* %press_y, align 8
  %44 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rectangle, align 8
  %call23 = call i32 @gimp_rectangle_tool_get_function(%struct._GimpRectangleTool* %44)
  store i32 %call23, i32* %function, align 4
  %45 = load i32, i32* %function, align 4
  %cmp24 = icmp eq i32 %45, 2
  br i1 %cmp24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %if.end.22
  %46 = load %struct.GimpRectangleSelectToolPrivate*, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %use_saved_op = getelementptr inbounds %struct.GimpRectangleSelectToolPrivate, %struct.GimpRectangleSelectToolPrivate* %46, i32 0, i32 1
  store i32 0, i32* %use_saved_op, align 4
  br label %if.end.45

if.else:                                          ; preds = %if.end.22
  %47 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display26 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %47, i32 0, i32 4
  %48 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display26, align 8
  %call27 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %48)
  store %struct._GimpImage* %call27, %struct._GimpImage** %image, align 8
  %49 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call28 = call %struct._GimpUndoStack* @gimp_image_get_undo_stack(%struct._GimpImage* %49)
  store %struct._GimpUndoStack* %call28, %struct._GimpUndoStack** %undo_stack, align 8
  %50 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call29 = call %struct._GimpUndoStack* @gimp_image_get_redo_stack(%struct._GimpImage* %50)
  store %struct._GimpUndoStack* %call29, %struct._GimpUndoStack** %redo_stack, align 8
  %51 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %undo_stack, align 8
  %call30 = call %struct._GimpUndo* @gimp_undo_stack_peek(%struct._GimpUndoStack* %51)
  store %struct._GimpUndo* %call30, %struct._GimpUndo** %undo, align 8
  %52 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %tobool31 = icmp ne %struct._GimpUndo* %52, null
  br i1 %tobool31, label %land.lhs.true.32, label %if.end.40

land.lhs.true.32:                                 ; preds = %if.else
  %53 = load %struct.GimpRectangleSelectToolPrivate*, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %undo33 = getelementptr inbounds %struct.GimpRectangleSelectToolPrivate, %struct.GimpRectangleSelectToolPrivate* %53, i32 0, i32 3
  %54 = load %struct._GimpUndo*, %struct._GimpUndo** %undo33, align 8
  %55 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %cmp34 = icmp eq %struct._GimpUndo* %54, %55
  br i1 %cmp34, label %if.then.35, label %if.end.40

if.then.35:                                       ; preds = %land.lhs.true.32
  %56 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control36 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %56, i32 0, i32 3
  %57 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control36, align 8
  call void @gimp_tool_control_push_preserve(%struct._GimpToolControl* %57, i32 1)
  %58 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call37 = call i32 @gimp_image_undo(%struct._GimpImage* %58)
  %59 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control38 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %59, i32 0, i32 3
  %60 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control38, align 8
  call void @gimp_tool_control_pop_preserve(%struct._GimpToolControl* %60)
  %61 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %redo_stack, align 8
  %call39 = call %struct._GimpUndo* @gimp_undo_stack_peek(%struct._GimpUndoStack* %61)
  %62 = load %struct.GimpRectangleSelectToolPrivate*, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %redo = getelementptr inbounds %struct.GimpRectangleSelectToolPrivate, %struct.GimpRectangleSelectToolPrivate* %62, i32 0, i32 4
  store %struct._GimpUndo* %call39, %struct._GimpUndo** %redo, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.35, %land.lhs.true.32, %if.else
  %63 = load %struct._GimpRectangleSelectTool*, %struct._GimpRectangleSelectTool** %rect_sel_tool, align 8
  %call41 = call i32 @gimp_rectangle_select_tool_get_operation(%struct._GimpRectangleSelectTool* %63)
  store i32 %call41, i32* %operation, align 4
  %64 = load i32, i32* %operation, align 4
  %cmp42 = icmp eq i32 %64, 2
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.40
  %65 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_set_show_selection(%struct._GimpDisplayShell* %65, i32 0)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %if.end.40
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.25
  %66 = load %struct.GimpRectangleSelectToolPrivate*, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %undo46 = getelementptr inbounds %struct.GimpRectangleSelectToolPrivate, %struct.GimpRectangleSelectToolPrivate* %66, i32 0, i32 3
  store %struct._GimpUndo* null, %struct._GimpUndo** %undo46, align 8
  br label %return

return:                                           ; preds = %if.end.45, %if.then.14
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_select_tool_button_release(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %release_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %release_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %rect_sel_tool = alloca %struct._GimpRectangleSelectTool*, align 8
  %priv = alloca %struct.GimpRectangleSelectToolPrivate*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %redo_stack = alloca %struct._GimpUndoStack*, align 8
  %redo = alloca %struct._GimpUndo*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %release_type, i32* %release_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_rectangle_select_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRectangleSelectTool*
  store %struct._GimpRectangleSelectTool* %2, %struct._GimpRectangleSelectTool** %rect_sel_tool, align 8
  %3 = load %struct._GimpRectangleSelectTool*, %struct._GimpRectangleSelectTool** %rect_sel_tool, align 8
  %priv2 = getelementptr inbounds %struct._GimpRectangleSelectTool, %struct._GimpRectangleSelectTool* %3, i32 0, i32 1
  %4 = load i8*, i8** %priv2, align 8
  %5 = bitcast i8* %4 to %struct.GimpRectangleSelectToolPrivate*
  store %struct.GimpRectangleSelectToolPrivate* %5, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display3 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %6, i32 0, i32 4
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display3, align 8
  %call4 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %7)
  store %struct._GimpImage* %call4, %struct._GimpImage** %image, align 8
  %8 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %8, i32 0, i32 3
  %9 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_halt(%struct._GimpToolControl* %9)
  %10 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %11 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_pop_status(%struct._GimpTool* %10, %struct._GimpDisplay* %11)
  %12 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call5 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %12)
  %13 = load %struct.GimpRectangleSelectToolPrivate*, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %saved_show_selection = getelementptr inbounds %struct.GimpRectangleSelectToolPrivate, %struct.GimpRectangleSelectToolPrivate* %13, i32 0, i32 2
  %14 = load i32, i32* %saved_show_selection, align 4
  call void @gimp_display_shell_set_show_selection(%struct._GimpDisplayShell* %call5, i32 %14)
  %15 = load i32, i32* %release_type.addr, align 4
  %cmp = icmp eq i32 %15, 2
  br i1 %cmp, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call6 = call %struct._GimpUndoStack* @gimp_image_get_redo_stack(%struct._GimpImage* %16)
  store %struct._GimpUndoStack* %call6, %struct._GimpUndoStack** %redo_stack, align 8
  %17 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %redo_stack, align 8
  %call7 = call %struct._GimpUndo* @gimp_undo_stack_peek(%struct._GimpUndoStack* %17)
  store %struct._GimpUndo* %call7, %struct._GimpUndo** %redo, align 8
  %18 = load %struct._GimpUndo*, %struct._GimpUndo** %redo, align 8
  %tobool = icmp ne %struct._GimpUndo* %18, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %19 = load %struct.GimpRectangleSelectToolPrivate*, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %redo8 = getelementptr inbounds %struct.GimpRectangleSelectToolPrivate, %struct.GimpRectangleSelectToolPrivate* %19, i32 0, i32 4
  %20 = load %struct._GimpUndo*, %struct._GimpUndo** %redo8, align 8
  %21 = load %struct._GimpUndo*, %struct._GimpUndo** %redo, align 8
  %cmp9 = icmp eq %struct._GimpUndo* %20, %21
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %land.lhs.true
  %22 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control11 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %22, i32 0, i32 3
  %23 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control11, align 8
  call void @gimp_tool_control_push_preserve(%struct._GimpToolControl* %23, i32 1)
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call12 = call i32 @gimp_image_redo(%struct._GimpImage* %24)
  %25 = load %struct.GimpRectangleSelectToolPrivate*, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %redo13 = getelementptr inbounds %struct.GimpRectangleSelectToolPrivate, %struct.GimpRectangleSelectToolPrivate* %25, i32 0, i32 4
  store %struct._GimpUndo* null, %struct._GimpUndo** %redo13, align 8
  %26 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control14 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %26, i32 0, i32 3
  %27 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control14, align 8
  call void @gimp_tool_control_pop_preserve(%struct._GimpToolControl* %27)
  br label %if.end

if.end:                                           ; preds = %if.then.10, %land.lhs.true, %if.then
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %entry
  %28 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %29 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %30 = load i32, i32* %time.addr, align 4
  %31 = load i32, i32* %state.addr, align 4
  %32 = load i32, i32* %release_type.addr, align 4
  %33 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_rectangle_tool_button_release(%struct._GimpTool* %28, %struct._GimpCoords* %29, i32 %30, i32 %31, i32 %32, %struct._GimpDisplay* %33)
  %34 = load i32, i32* %release_type.addr, align 4
  %cmp16 = icmp eq i32 %34, 1
  br i1 %cmp16, label %if.then.17, label %if.end.25

if.then.17:                                       ; preds = %if.end.15
  %35 = load %struct.GimpRectangleSelectToolPrivate*, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %redo18 = getelementptr inbounds %struct.GimpRectangleSelectToolPrivate, %struct.GimpRectangleSelectToolPrivate* %35, i32 0, i32 4
  %36 = load %struct._GimpUndo*, %struct._GimpUndo** %redo18, align 8
  %tobool19 = icmp ne %struct._GimpUndo* %36, null
  br i1 %tobool19, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %if.then.17
  %37 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control21 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %37, i32 0, i32 3
  %38 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control21, align 8
  call void @gimp_tool_control_push_preserve(%struct._GimpToolControl* %38, i32 1)
  %39 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call22 = call i32 @gimp_image_redo(%struct._GimpImage* %39)
  %40 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control23 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %40, i32 0, i32 3
  %41 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control23, align 8
  call void @gimp_tool_control_pop_preserve(%struct._GimpToolControl* %41)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.20, %if.then.17
  %42 = load %struct.GimpRectangleSelectToolPrivate*, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %use_saved_op = getelementptr inbounds %struct.GimpRectangleSelectToolPrivate, %struct.GimpRectangleSelectToolPrivate* %42, i32 0, i32 1
  store i32 1, i32* %use_saved_op, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end.15
  %43 = load %struct.GimpRectangleSelectToolPrivate*, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %redo26 = getelementptr inbounds %struct.GimpRectangleSelectToolPrivate, %struct.GimpRectangleSelectToolPrivate* %43, i32 0, i32 4
  store %struct._GimpUndo* null, %struct._GimpUndo** %redo26, align 8
  ret void
}

declare void @gimp_rectangle_tool_motion(%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_rectangle_select_tool_key_press(%struct._GimpTool* %tool, %struct._GdkEventKey* %kevent, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %kevent.addr = alloca %struct._GdkEventKey*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GdkEventKey* %kevent, %struct._GdkEventKey** %kevent.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %2 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call = call i32 @gimp_rectangle_tool_key_press(%struct._GimpTool* %0, %struct._GdkEventKey* %1, %struct._GimpDisplay* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call1 = call i32 @gimp_edit_selection_tool_key_press(%struct._GimpTool* %3, %struct._GdkEventKey* %4, %struct._GimpDisplay* %5)
  %tobool2 = icmp ne i32 %call1, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %6 = phi i1 [ true, %entry ], [ %tobool2, %lor.rhs ]
  %lor.ext = zext i1 %6 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_select_tool_active_modifier_key(%struct._GimpTool* %tool, i32 %key, i32 %press, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %key.addr = alloca i32, align 4
  %press.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %press, i32* %press.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load i8*, i8** @gimp_rectangle_select_tool_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpToolClass*
  %active_modifier_key = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %2, i32 0, i32 11
  %3 = load void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)** %active_modifier_key, align 8
  %4 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %5 = load i32, i32* %key.addr, align 4
  %6 = load i32, i32* %press.addr, align 4
  %7 = load i32, i32* %state.addr, align 4
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %3(%struct._GimpTool* %4, i32 %5, i32 %6, i32 %7, %struct._GimpDisplay* %8)
  %9 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %10 = load i32, i32* %key.addr, align 4
  %11 = load i32, i32* %press.addr, align 4
  %12 = load i32, i32* %state.addr, align 4
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_rectangle_tool_active_modifier_key(%struct._GimpTool* %9, i32 %10, i32 %11, i32 %12, %struct._GimpDisplay* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_select_tool_oper_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, i32 %proximity, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %proximity.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store i32 %proximity, i32* %proximity.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %2 = load i32, i32* %state.addr, align 4
  %3 = load i32, i32* %proximity.addr, align 4
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_rectangle_tool_oper_update(%struct._GimpTool* %0, %struct._GimpCoords* %1, i32 %2, i32 %3, %struct._GimpDisplay* %4)
  %5 = load i8*, i8** @gimp_rectangle_select_tool_parent_class, align 8
  %6 = bitcast i8* %5 to %struct._GTypeClass*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %6, i64 %call)
  %7 = bitcast %struct._GTypeClass* %call1 to %struct._GimpToolClass*
  %oper_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %7, i32 0, i32 12
  %8 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %oper_update, align 8
  %9 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %10 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %11 = load i32, i32* %state.addr, align 4
  %12 = load i32, i32* %proximity.addr, align 4
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %8(%struct._GimpTool* %9, %struct._GimpCoords* %10, i32 %11, i32 %12, %struct._GimpDisplay* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_select_tool_cursor_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %2 = load i32, i32* %state.addr, align 4
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_rectangle_tool_cursor_update(%struct._GimpTool* %0, %struct._GimpCoords* %1, i32 %2, %struct._GimpDisplay* %3)
  %4 = load i32, i32* %state.addr, align 4
  %call = call i32 @gimp_get_extend_selection_mask()
  %call1 = call i32 @gimp_get_modify_selection_mask()
  %or = or i32 %call, %call1
  %and = and i32 %4, %or
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 3
  %6 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_set_cursor(%struct._GimpToolControl* %6, i32 1027)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** @gimp_rectangle_select_tool_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call2 = call i64 @gimp_tool_get_type() #5
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 %call2)
  %9 = bitcast %struct._GTypeClass* %call3 to %struct._GimpToolClass*
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %9, i32 0, i32 13
  %10 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %11 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %12 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %13 = load i32, i32* %state.addr, align 4
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %10(%struct._GimpTool* %11, %struct._GimpCoords* %12, i32 %13, %struct._GimpDisplay* %14)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_select_tool_draw(%struct._GimpDrawTool* %draw_tool) #3 {
entry:
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %rect_sel_tool = alloca %struct._GimpRectangleSelectTool*, align 8
  %priv = alloca %struct.GimpRectangleSelectToolPrivate*, align 8
  %stroke_group = alloca %struct._GimpCanvasGroup*, align 8
  %item = alloca %struct._GimpCanvasItem*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %radius = alloca double, align 8
  %square_size = alloca i32, align 4
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  store %struct._GimpCanvasGroup* null, %struct._GimpCanvasGroup** %stroke_group, align 8
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_rectangle_select_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRectangleSelectTool*
  store %struct._GimpRectangleSelectTool* %2, %struct._GimpRectangleSelectTool** %rect_sel_tool, align 8
  %3 = load %struct._GimpRectangleSelectTool*, %struct._GimpRectangleSelectTool** %rect_sel_tool, align 8
  %priv2 = getelementptr inbounds %struct._GimpRectangleSelectTool, %struct._GimpRectangleSelectTool* %3, i32 0, i32 1
  %4 = load i8*, i8** %priv2, align 8
  %5 = bitcast i8* %4 to %struct.GimpRectangleSelectToolPrivate*
  store %struct.GimpRectangleSelectToolPrivate* %5, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %6 = load %struct.GimpRectangleSelectToolPrivate*, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %round_corners = getelementptr inbounds %struct.GimpRectangleSelectToolPrivate, %struct.GimpRectangleSelectToolPrivate* %6, i32 0, i32 5
  %7 = load i32, i32* %round_corners, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpRectangleSelectTool*, %struct._GimpRectangleSelectTool** %rect_sel_tool, align 8
  %9 = bitcast %struct._GimpRectangleSelectTool* %8 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32* %x1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32* %y1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i32* %x2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i32* %y2, i8* null)
  %10 = load %struct.GimpRectangleSelectToolPrivate*, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %corner_radius = getelementptr inbounds %struct.GimpRectangleSelectToolPrivate, %struct.GimpRectangleSelectToolPrivate* %10, i32 0, i32 6
  %11 = load double, double* %corner_radius, align 8
  %12 = load i32, i32* %x2, align 4
  %13 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %12, %13
  %conv = sitofp i32 %sub to double
  %div = fdiv double %conv, 2.000000e+00
  %14 = load i32, i32* %y2, align 4
  %15 = load i32, i32* %y1, align 4
  %sub3 = sub nsw i32 %14, %15
  %conv4 = sitofp i32 %sub3 to double
  %div5 = fdiv double %conv4, 2.000000e+00
  %cmp = fcmp olt double %div, %div5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %16 = load i32, i32* %x2, align 4
  %17 = load i32, i32* %x1, align 4
  %sub7 = sub nsw i32 %16, %17
  %conv8 = sitofp i32 %sub7 to double
  %div9 = fdiv double %conv8, 2.000000e+00
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %18 = load i32, i32* %y2, align 4
  %19 = load i32, i32* %y1, align 4
  %sub10 = sub nsw i32 %18, %19
  %conv11 = sitofp i32 %sub10 to double
  %div12 = fdiv double %conv11, 2.000000e+00
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %div9, %cond.true ], [ %div12, %cond.false ]
  %cmp13 = fcmp olt double %11, %cond
  br i1 %cmp13, label %cond.true.15, label %cond.false.17

cond.true.15:                                     ; preds = %cond.end
  %20 = load %struct.GimpRectangleSelectToolPrivate*, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %corner_radius16 = getelementptr inbounds %struct.GimpRectangleSelectToolPrivate, %struct.GimpRectangleSelectToolPrivate* %20, i32 0, i32 6
  %21 = load double, double* %corner_radius16, align 8
  br label %cond.end.36

cond.false.17:                                    ; preds = %cond.end
  %22 = load i32, i32* %x2, align 4
  %23 = load i32, i32* %x1, align 4
  %sub18 = sub nsw i32 %22, %23
  %conv19 = sitofp i32 %sub18 to double
  %div20 = fdiv double %conv19, 2.000000e+00
  %24 = load i32, i32* %y2, align 4
  %25 = load i32, i32* %y1, align 4
  %sub21 = sub nsw i32 %24, %25
  %conv22 = sitofp i32 %sub21 to double
  %div23 = fdiv double %conv22, 2.000000e+00
  %cmp24 = fcmp olt double %div20, %div23
  br i1 %cmp24, label %cond.true.26, label %cond.false.30

cond.true.26:                                     ; preds = %cond.false.17
  %26 = load i32, i32* %x2, align 4
  %27 = load i32, i32* %x1, align 4
  %sub27 = sub nsw i32 %26, %27
  %conv28 = sitofp i32 %sub27 to double
  %div29 = fdiv double %conv28, 2.000000e+00
  br label %cond.end.34

cond.false.30:                                    ; preds = %cond.false.17
  %28 = load i32, i32* %y2, align 4
  %29 = load i32, i32* %y1, align 4
  %sub31 = sub nsw i32 %28, %29
  %conv32 = sitofp i32 %sub31 to double
  %div33 = fdiv double %conv32, 2.000000e+00
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.30, %cond.true.26
  %cond35 = phi double [ %div29, %cond.true.26 ], [ %div33, %cond.false.30 ]
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.end.34, %cond.true.15
  %cond37 = phi double [ %21, %cond.true.15 ], [ %cond35, %cond.end.34 ]
  store double %cond37, double* %radius, align 8
  %30 = load double, double* %radius, align 8
  %mul = fmul double %30, 2.000000e+00
  %conv38 = fptosi double %mul to i32
  store i32 %conv38, i32* %square_size, align 4
  %31 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %call39 = call %struct._GimpCanvasGroup* @gimp_draw_tool_add_stroke_group(%struct._GimpDrawTool* %31)
  %32 = bitcast %struct._GimpCanvasGroup* %call39 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_canvas_group_get_type() #5
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call40)
  %33 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpCanvasGroup*
  store %struct._GimpCanvasGroup* %33, %struct._GimpCanvasGroup** %stroke_group, align 8
  %34 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %35 = load i32, i32* %x1, align 4
  %conv42 = sitofp i32 %35 to double
  %36 = load i32, i32* %y1, align 4
  %conv43 = sitofp i32 %36 to double
  %37 = load i32, i32* %square_size, align 4
  %conv44 = sitofp i32 %37 to double
  %38 = load i32, i32* %square_size, align 4
  %conv45 = sitofp i32 %38 to double
  %call46 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_arc(%struct._GimpDrawTool* %34, i32 0, double %conv42, double %conv43, double %conv44, double %conv45, double 0x3FF921FB54442D18, double 0x3FF921FB54442D18)
  store %struct._GimpCanvasItem* %call46, %struct._GimpCanvasItem** %item, align 8
  %39 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %stroke_group, align 8
  %40 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  call void @gimp_canvas_group_add_item(%struct._GimpCanvasGroup* %39, %struct._GimpCanvasItem* %40)
  %41 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %42 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  call void @gimp_draw_tool_remove_item(%struct._GimpDrawTool* %41, %struct._GimpCanvasItem* %42)
  %43 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %44 = load i32, i32* %x2, align 4
  %45 = load i32, i32* %square_size, align 4
  %sub47 = sub nsw i32 %44, %45
  %conv48 = sitofp i32 %sub47 to double
  %46 = load i32, i32* %y1, align 4
  %conv49 = sitofp i32 %46 to double
  %47 = load i32, i32* %square_size, align 4
  %conv50 = sitofp i32 %47 to double
  %48 = load i32, i32* %square_size, align 4
  %conv51 = sitofp i32 %48 to double
  %call52 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_arc(%struct._GimpDrawTool* %43, i32 0, double %conv48, double %conv49, double %conv50, double %conv51, double 0.000000e+00, double 0x3FF921FB54442D18)
  store %struct._GimpCanvasItem* %call52, %struct._GimpCanvasItem** %item, align 8
  %49 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %stroke_group, align 8
  %50 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  call void @gimp_canvas_group_add_item(%struct._GimpCanvasGroup* %49, %struct._GimpCanvasItem* %50)
  %51 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %52 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  call void @gimp_draw_tool_remove_item(%struct._GimpDrawTool* %51, %struct._GimpCanvasItem* %52)
  %53 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %54 = load i32, i32* %x2, align 4
  %55 = load i32, i32* %square_size, align 4
  %sub53 = sub nsw i32 %54, %55
  %conv54 = sitofp i32 %sub53 to double
  %56 = load i32, i32* %y2, align 4
  %57 = load i32, i32* %square_size, align 4
  %sub55 = sub nsw i32 %56, %57
  %conv56 = sitofp i32 %sub55 to double
  %58 = load i32, i32* %square_size, align 4
  %conv57 = sitofp i32 %58 to double
  %59 = load i32, i32* %square_size, align 4
  %conv58 = sitofp i32 %59 to double
  %call59 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_arc(%struct._GimpDrawTool* %53, i32 0, double %conv54, double %conv56, double %conv57, double %conv58, double 0x4012D97C7F3321D2, double 0x3FF921FB54442D18)
  store %struct._GimpCanvasItem* %call59, %struct._GimpCanvasItem** %item, align 8
  %60 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %stroke_group, align 8
  %61 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  call void @gimp_canvas_group_add_item(%struct._GimpCanvasGroup* %60, %struct._GimpCanvasItem* %61)
  %62 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %63 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  call void @gimp_draw_tool_remove_item(%struct._GimpDrawTool* %62, %struct._GimpCanvasItem* %63)
  %64 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %65 = load i32, i32* %x1, align 4
  %conv60 = sitofp i32 %65 to double
  %66 = load i32, i32* %y2, align 4
  %67 = load i32, i32* %square_size, align 4
  %sub61 = sub nsw i32 %66, %67
  %conv62 = sitofp i32 %sub61 to double
  %68 = load i32, i32* %square_size, align 4
  %conv63 = sitofp i32 %68 to double
  %69 = load i32, i32* %square_size, align 4
  %conv64 = sitofp i32 %69 to double
  %call65 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_arc(%struct._GimpDrawTool* %64, i32 0, double %conv60, double %conv62, double %conv63, double %conv64, double 0x400921FB54442D18, double 0x3FF921FB54442D18)
  store %struct._GimpCanvasItem* %call65, %struct._GimpCanvasItem** %item, align 8
  %70 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %stroke_group, align 8
  %71 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  call void @gimp_canvas_group_add_item(%struct._GimpCanvasGroup* %70, %struct._GimpCanvasItem* %71)
  %72 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %73 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  call void @gimp_draw_tool_remove_item(%struct._GimpDrawTool* %72, %struct._GimpCanvasItem* %73)
  br label %if.end

if.end:                                           ; preds = %cond.end.36, %entry
  %74 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %75 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %stroke_group, align 8
  call void @gimp_rectangle_tool_draw(%struct._GimpDrawTool* %74, %struct._GimpCanvasGroup* %75)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_select_tool_real_select(%struct._GimpRectangleSelectTool* %rect_sel_tool, i32 %operation, i32 %x, i32 %y, i32 %w, i32 %h) #3 {
entry:
  %rect_sel_tool.addr = alloca %struct._GimpRectangleSelectTool*, align 8
  %operation.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %tool = alloca %struct._GimpTool*, align 8
  %options = alloca %struct._GimpSelectionOptions*, align 8
  %rect_select_options = alloca %struct._GimpRectangleSelectOptions*, align 8
  %channel = alloca %struct._GimpChannel*, align 8
  %max = alloca double, align 8
  %radius = alloca double, align 8
  store %struct._GimpRectangleSelectTool* %rect_sel_tool, %struct._GimpRectangleSelectTool** %rect_sel_tool.addr, align 8
  store i32 %operation, i32* %operation.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  %0 = load %struct._GimpRectangleSelectTool*, %struct._GimpRectangleSelectTool** %rect_sel_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleSelectTool* %0 to %struct._GTypeInstance*
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
  %8 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %9 = bitcast %struct._GimpTool* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_tool_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpTool*
  %call9 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %10)
  %11 = bitcast %struct._GimpToolOptions* %call9 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_rectangle_select_options_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call10)
  %12 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpRectangleSelectOptions*
  store %struct._GimpRectangleSelectOptions* %12, %struct._GimpRectangleSelectOptions** %rect_select_options, align 8
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %13, i32 0, i32 4
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call12 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %14)
  %call13 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %call12)
  store %struct._GimpChannel* %call13, %struct._GimpChannel** %channel, align 8
  %15 = load %struct._GimpRectangleSelectOptions*, %struct._GimpRectangleSelectOptions** %rect_select_options, align 8
  %round_corners = getelementptr inbounds %struct._GimpRectangleSelectOptions, %struct._GimpRectangleSelectOptions* %15, i32 0, i32 1
  %16 = load i32, i32* %round_corners, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %w.addr, align 4
  %conv = sitofp i32 %17 to double
  %div = fdiv double %conv, 2.000000e+00
  %18 = load i32, i32* %h.addr, align 4
  %conv14 = sitofp i32 %18 to double
  %div15 = fdiv double %conv14, 2.000000e+00
  %cmp = fcmp olt double %div, %div15
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %19 = load i32, i32* %w.addr, align 4
  %conv17 = sitofp i32 %19 to double
  %div18 = fdiv double %conv17, 2.000000e+00
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %20 = load i32, i32* %h.addr, align 4
  %conv19 = sitofp i32 %20 to double
  %div20 = fdiv double %conv19, 2.000000e+00
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %div18, %cond.true ], [ %div20, %cond.false ]
  store double %cond, double* %max, align 8
  %21 = load %struct._GimpRectangleSelectOptions*, %struct._GimpRectangleSelectOptions** %rect_select_options, align 8
  %corner_radius = getelementptr inbounds %struct._GimpRectangleSelectOptions, %struct._GimpRectangleSelectOptions* %21, i32 0, i32 2
  %22 = load double, double* %corner_radius, align 8
  %23 = load double, double* %max, align 8
  %cmp21 = fcmp olt double %22, %23
  br i1 %cmp21, label %cond.true.23, label %cond.false.25

cond.true.23:                                     ; preds = %cond.end
  %24 = load %struct._GimpRectangleSelectOptions*, %struct._GimpRectangleSelectOptions** %rect_select_options, align 8
  %corner_radius24 = getelementptr inbounds %struct._GimpRectangleSelectOptions, %struct._GimpRectangleSelectOptions* %24, i32 0, i32 2
  %25 = load double, double* %corner_radius24, align 8
  br label %cond.end.26

cond.false.25:                                    ; preds = %cond.end
  %26 = load double, double* %max, align 8
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.25, %cond.true.23
  %cond27 = phi double [ %25, %cond.true.23 ], [ %26, %cond.false.25 ]
  store double %cond27, double* %radius, align 8
  %27 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %28 = load i32, i32* %x.addr, align 4
  %29 = load i32, i32* %y.addr, align 4
  %30 = load i32, i32* %w.addr, align 4
  %31 = load i32, i32* %h.addr, align 4
  %32 = load double, double* %radius, align 8
  %33 = load double, double* %radius, align 8
  %34 = load i32, i32* %operation.addr, align 4
  %35 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %options, align 8
  %antialias = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %35, i32 0, i32 2
  %36 = load i32, i32* %antialias, align 4
  %37 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %options, align 8
  %feather = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %37, i32 0, i32 3
  %38 = load i32, i32* %feather, align 4
  %39 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %options, align 8
  %feather_radius = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %39, i32 0, i32 4
  %40 = load double, double* %feather_radius, align 8
  %41 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %options, align 8
  %feather_radius28 = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %41, i32 0, i32 4
  %42 = load double, double* %feather_radius28, align 8
  call void @gimp_channel_select_round_rect(%struct._GimpChannel* %27, i32 %28, i32 %29, i32 %30, i32 %31, double %32, double %33, i32 %34, i32 %36, i32 %38, double %40, double %42, i32 1)
  br label %if.end

if.else:                                          ; preds = %entry
  %43 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %44 = load i32, i32* %x.addr, align 4
  %45 = load i32, i32* %y.addr, align 4
  %46 = load i32, i32* %w.addr, align 4
  %47 = load i32, i32* %h.addr, align 4
  %48 = load i32, i32* %operation.addr, align 4
  %49 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %options, align 8
  %feather29 = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %49, i32 0, i32 3
  %50 = load i32, i32* %feather29, align 4
  %51 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %options, align 8
  %feather_radius30 = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %51, i32 0, i32 4
  %52 = load double, double* %feather_radius30, align 8
  %53 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %options, align 8
  %feather_radius31 = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %53, i32 0, i32 4
  %54 = load double, double* %feather_radius31, align 8
  call void @gimp_channel_select_rectangle(%struct._GimpChannel* %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %50, double %52, double %54, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end.26
  ret void
}

declare void @gimp_rectangle_tool_install_properties(%struct._GObjectClass*) #1

declare void @gimp_rectangle_tool_constructor(%struct._GObject*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool*) #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_select_tool_round_corners_notify(%struct._GimpRectangleSelectOptions* %options, %struct._GParamSpec* %pspec, %struct._GimpRectangleSelectTool* %rect_sel_tool) #3 {
entry:
  %options.addr = alloca %struct._GimpRectangleSelectOptions*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %rect_sel_tool.addr = alloca %struct._GimpRectangleSelectTool*, align 8
  %draw_tool = alloca %struct._GimpDrawTool*, align 8
  %rect_tool = alloca %struct._GimpRectangleTool*, align 8
  %priv = alloca %struct.GimpRectangleSelectToolPrivate*, align 8
  store %struct._GimpRectangleSelectOptions* %options, %struct._GimpRectangleSelectOptions** %options.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpRectangleSelectTool* %rect_sel_tool, %struct._GimpRectangleSelectTool** %rect_sel_tool.addr, align 8
  %0 = load %struct._GimpRectangleSelectTool*, %struct._GimpRectangleSelectTool** %rect_sel_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleSelectTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_draw_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawTool*
  store %struct._GimpDrawTool* %2, %struct._GimpDrawTool** %draw_tool, align 8
  %3 = load %struct._GimpRectangleSelectTool*, %struct._GimpRectangleSelectTool** %rect_sel_tool.addr, align 8
  %4 = bitcast %struct._GimpRectangleSelectTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_rectangle_tool_interface_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpRectangleTool*
  store %struct._GimpRectangleTool* %5, %struct._GimpRectangleTool** %rect_tool, align 8
  %6 = load %struct._GimpRectangleSelectTool*, %struct._GimpRectangleSelectTool** %rect_sel_tool.addr, align 8
  %priv4 = getelementptr inbounds %struct._GimpRectangleSelectTool, %struct._GimpRectangleSelectTool* %6, i32 0, i32 1
  %7 = load i8*, i8** %priv4, align 8
  %8 = bitcast i8* %7 to %struct.GimpRectangleSelectToolPrivate*
  store %struct.GimpRectangleSelectToolPrivate* %8, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %9 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %9)
  %10 = load %struct._GimpRectangleSelectOptions*, %struct._GimpRectangleSelectOptions** %options.addr, align 8
  %round_corners = getelementptr inbounds %struct._GimpRectangleSelectOptions, %struct._GimpRectangleSelectOptions* %10, i32 0, i32 1
  %11 = load i32, i32* %round_corners, align 4
  %12 = load %struct.GimpRectangleSelectToolPrivate*, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %round_corners5 = getelementptr inbounds %struct.GimpRectangleSelectToolPrivate, %struct.GimpRectangleSelectToolPrivate* %12, i32 0, i32 5
  store i32 %11, i32* %round_corners5, align 4
  %13 = load %struct._GimpRectangleSelectOptions*, %struct._GimpRectangleSelectOptions** %options.addr, align 8
  %corner_radius = getelementptr inbounds %struct._GimpRectangleSelectOptions, %struct._GimpRectangleSelectOptions* %13, i32 0, i32 2
  %14 = load double, double* %corner_radius, align 8
  %15 = load %struct.GimpRectangleSelectToolPrivate*, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %corner_radius6 = getelementptr inbounds %struct.GimpRectangleSelectToolPrivate, %struct.GimpRectangleSelectToolPrivate* %15, i32 0, i32 6
  store double %14, double* %corner_radius6, align 8
  %16 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %call7 = call i32 @gimp_rectangle_select_tool_rectangle_change_complete(%struct._GimpRectangleTool* %16)
  %17 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %17)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_select_tool_update_option_defaults(%struct._GimpRectangleSelectTool* %rect_sel_tool, i32 %ignore_pending) #3 {
entry:
  %rect_sel_tool.addr = alloca %struct._GimpRectangleSelectTool*, align 8
  %ignore_pending.addr = alloca i32, align 4
  %tool = alloca %struct._GimpTool*, align 8
  %rectangle_tool = alloca %struct._GimpRectangleTool*, align 8
  %rectangle_options = alloca %struct._GimpRectangleOptions*, align 8
  store %struct._GimpRectangleSelectTool* %rect_sel_tool, %struct._GimpRectangleSelectTool** %rect_sel_tool.addr, align 8
  store i32 %ignore_pending, i32* %ignore_pending.addr, align 4
  %0 = load %struct._GimpRectangleSelectTool*, %struct._GimpRectangleSelectTool** %rect_sel_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleSelectTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_rectangle_tool_interface_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpRectangleTool*
  store %struct._GimpRectangleTool* %5, %struct._GimpRectangleTool** %rectangle_tool, align 8
  %6 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rectangle_tool, align 8
  %7 = bitcast %struct._GimpRectangleTool* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_tool_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpTool*
  %call6 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %8)
  %9 = bitcast %struct._GimpToolOptions* %call6 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_rectangle_options_interface_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpRectangleOptions*
  store %struct._GimpRectangleOptions* %10, %struct._GimpRectangleOptions** %rectangle_options, align 8
  %11 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %11, i32 0, i32 4
  %12 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %cmp = icmp ne %struct._GimpDisplay* %12, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %13 = load i32, i32* %ignore_pending.addr, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %14 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rectangle_tool, align 8
  %15 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %rectangle_options, align 8
  %16 = bitcast %struct._GimpRectangleOptions* %15 to %struct._GTypeInstance*
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 80)
  %17 = bitcast %struct._GTypeInstance* %call9 to %struct._GObject*
  call void @gimp_rectangle_tool_pending_size_set(%struct._GimpRectangleTool* %14, %struct._GObject* %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0))
  %18 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %rectangle_options, align 8
  %19 = bitcast %struct._GimpRectangleOptions* %18 to %struct._GTypeInstance*
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 80)
  %20 = bitcast %struct._GTypeInstance* %call10 to %struct._GObject*
  %21 = bitcast %struct._GObject* %20 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0), i32 1, i8* null)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %22 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %rectangle_options, align 8
  %23 = bitcast %struct._GimpRectangleOptions* %22 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 80)
  %24 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  %25 = bitcast %struct._GObject* %24 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), double 1.000000e+00, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0), double 1.000000e+00, i8* null)
  %26 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %rectangle_options, align 8
  %27 = bitcast %struct._GimpRectangleOptions* %26 to %struct._GTypeInstance*
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 80)
  %28 = bitcast %struct._GTypeInstance* %call12 to %struct._GObject*
  %29 = bitcast %struct._GObject* %28 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0), i32 0, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @gimp_draw_tool_pause(%struct._GimpDrawTool*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_rectangle_select_tool_rectangle_change_complete(%struct._GimpRectangleTool* %rectangle) #3 {
entry:
  %rectangle.addr = alloca %struct._GimpRectangleTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %rect_sel_tool = alloca %struct._GimpRectangleSelectTool*, align 8
  %priv = alloca %struct.GimpRectangleSelectToolPrivate*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %undo_stack = alloca %struct._GimpUndoStack*, align 8
  %undo = alloca %struct._GimpUndo*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %options = alloca %struct._GimpSelectionOptions*, align 8
  store %struct._GimpRectangleTool* %rectangle, %struct._GimpRectangleTool** %rectangle.addr, align 8
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rectangle.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_rectangle_select_tool_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpRectangleSelectTool*
  store %struct._GimpRectangleSelectTool* %5, %struct._GimpRectangleSelectTool** %rect_sel_tool, align 8
  %6 = load %struct._GimpRectangleSelectTool*, %struct._GimpRectangleSelectTool** %rect_sel_tool, align 8
  %priv4 = getelementptr inbounds %struct._GimpRectangleSelectTool, %struct._GimpRectangleSelectTool* %6, i32 0, i32 1
  %7 = load i8*, i8** %priv4, align 8
  %8 = bitcast i8* %7 to %struct.GimpRectangleSelectToolPrivate*
  store %struct.GimpRectangleSelectToolPrivate* %8, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %9 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %9, i32 0, i32 3
  %10 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_push_preserve(%struct._GimpToolControl* %10, i32 1)
  %11 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %11, i32 0, i32 4
  %12 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %12, null
  br i1 %tobool, label %land.lhs.true, label %if.end.35

land.lhs.true:                                    ; preds = %entry
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control5 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %13, i32 0, i32 3
  %14 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control5, align 8
  %call6 = call i32 @gimp_tool_control_is_active(%struct._GimpToolControl* %14)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.35, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %15 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display8 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %15, i32 0, i32 4
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display8, align 8
  %call9 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %16)
  store %struct._GimpImage* %call9, %struct._GimpImage** %image, align 8
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call10 = call %struct._GimpUndoStack* @gimp_image_get_undo_stack(%struct._GimpImage* %17)
  store %struct._GimpUndoStack* %call10, %struct._GimpUndoStack** %undo_stack, align 8
  %18 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %undo_stack, align 8
  %call11 = call %struct._GimpUndo* @gimp_undo_stack_peek(%struct._GimpUndoStack* %18)
  store %struct._GimpUndo* %call11, %struct._GimpUndo** %undo, align 8
  %19 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %tobool12 = icmp ne %struct._GimpUndo* %19, null
  br i1 %tobool12, label %land.lhs.true.13, label %if.end

land.lhs.true.13:                                 ; preds = %if.then
  %20 = load %struct.GimpRectangleSelectToolPrivate*, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %undo14 = getelementptr inbounds %struct.GimpRectangleSelectToolPrivate, %struct.GimpRectangleSelectToolPrivate* %20, i32 0, i32 3
  %21 = load %struct._GimpUndo*, %struct._GimpUndo** %undo14, align 8
  %22 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %cmp = icmp eq %struct._GimpUndo* %21, %22
  br i1 %cmp, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %land.lhs.true.13
  %23 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call16 = call i32 @gimp_image_undo(%struct._GimpImage* %23)
  %24 = load %struct.GimpRectangleSelectToolPrivate*, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %undo17 = getelementptr inbounds %struct.GimpRectangleSelectToolPrivate, %struct.GimpRectangleSelectToolPrivate* %24, i32 0, i32 3
  store %struct._GimpUndo* null, %struct._GimpUndo** %undo17, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.15, %land.lhs.true.13, %if.then
  %25 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rectangle.addr, align 8
  %26 = bitcast %struct._GimpRectangleTool* %25 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32* %x1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32* %y1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i32* %x2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i32* %y2, i8* null)
  %27 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rectangle.addr, align 8
  %28 = load i32, i32* %x1, align 4
  %29 = load i32, i32* %y1, align 4
  %30 = load i32, i32* %x2, align 4
  %31 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %30, %31
  %32 = load i32, i32* %y2, align 4
  %33 = load i32, i32* %y1, align 4
  %sub18 = sub nsw i32 %32, %33
  %call19 = call i32 @gimp_rectangle_select_tool_select(%struct._GimpRectangleTool* %27, i32 %28, i32 %29, i32 %sub, i32 %sub18)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %if.end
  %34 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %undo_stack, align 8
  %call22 = call %struct._GimpUndo* @gimp_undo_stack_peek(%struct._GimpUndoStack* %34)
  %35 = load %struct.GimpRectangleSelectToolPrivate*, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %undo23 = getelementptr inbounds %struct.GimpRectangleSelectToolPrivate, %struct.GimpRectangleSelectToolPrivate* %35, i32 0, i32 3
  store %struct._GimpUndo* %call22, %struct._GimpUndo** %undo23, align 8
  %36 = load %struct.GimpRectangleSelectToolPrivate*, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %redo = getelementptr inbounds %struct.GimpRectangleSelectToolPrivate, %struct.GimpRectangleSelectToolPrivate* %36, i32 0, i32 4
  store %struct._GimpUndo* null, %struct._GimpUndo** %redo, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %if.end
  %37 = load %struct.GimpRectangleSelectToolPrivate*, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %use_saved_op = getelementptr inbounds %struct.GimpRectangleSelectToolPrivate, %struct.GimpRectangleSelectToolPrivate* %37, i32 0, i32 1
  %38 = load i32, i32* %use_saved_op, align 4
  %tobool25 = icmp ne i32 %38, 0
  br i1 %tobool25, label %if.end.34, label %if.then.26

if.then.26:                                       ; preds = %if.end.24
  %39 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %40 = bitcast %struct._GimpTool* %39 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_tool_get_type() #5
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call27)
  %41 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpTool*
  %call29 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %41)
  %42 = bitcast %struct._GimpToolOptions* %call29 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_selection_options_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call30)
  %43 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpSelectionOptions*
  store %struct._GimpSelectionOptions* %43, %struct._GimpSelectionOptions** %options, align 8
  %44 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %options, align 8
  %operation = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %44, i32 0, i32 1
  %45 = load i32, i32* %operation, align 4
  %46 = load %struct.GimpRectangleSelectToolPrivate*, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %operation32 = getelementptr inbounds %struct.GimpRectangleSelectToolPrivate, %struct.GimpRectangleSelectToolPrivate* %46, i32 0, i32 0
  store i32 %45, i32* %operation32, align 4
  %47 = load %struct.GimpRectangleSelectToolPrivate*, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %use_saved_op33 = getelementptr inbounds %struct.GimpRectangleSelectToolPrivate, %struct.GimpRectangleSelectToolPrivate* %47, i32 0, i32 1
  store i32 1, i32* %use_saved_op33, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.26, %if.end.24
  %48 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %48)
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %land.lhs.true, %entry
  %49 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control36 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %49, i32 0, i32 3
  %50 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control36, align 8
  call void @gimp_tool_control_pop_preserve(%struct._GimpToolControl* %50)
  %51 = load %struct._GimpRectangleSelectTool*, %struct._GimpRectangleSelectTool** %rect_sel_tool, align 8
  call void @gimp_rectangle_select_tool_update_option_defaults(%struct._GimpRectangleSelectTool* %51, i32 0)
  ret i32 1
}

declare void @gimp_draw_tool_resume(%struct._GimpDrawTool*) #1

declare void @gimp_tool_control_push_preserve(%struct._GimpToolControl*, i32) #1

declare i32 @gimp_tool_control_is_active(%struct._GimpToolControl*) #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare %struct._GimpUndoStack* @gimp_image_get_undo_stack(%struct._GimpImage*) #1

declare %struct._GimpUndo* @gimp_undo_stack_peek(%struct._GimpUndoStack*) #1

declare i32 @gimp_image_undo(%struct._GimpImage*) #1

declare void @g_object_get(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_rectangle_select_tool_select(%struct._GimpRectangleTool* %rectangle, i32 %x, i32 %y, i32 %w, i32 %h) #3 {
entry:
  %rectangle.addr = alloca %struct._GimpRectangleTool*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %tool = alloca %struct._GimpTool*, align 8
  %rect_sel_tool = alloca %struct._GimpRectangleSelectTool*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %rectangle_exists = alloca i32, align 4
  %operation = alloca i32, align 4
  store %struct._GimpRectangleTool* %rectangle, %struct._GimpRectangleTool** %rectangle.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rectangle.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rectangle.addr, align 8
  %4 = bitcast %struct._GimpRectangleTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_rectangle_select_tool_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpRectangleSelectTool*
  store %struct._GimpRectangleSelectTool* %5, %struct._GimpRectangleSelectTool** %rect_sel_tool, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %6, i32 0, i32 4
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call4 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %7)
  store %struct._GimpImage* %call4, %struct._GimpImage** %image, align 8
  %8 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %9 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display5 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %9, i32 0, i32 4
  %10 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display5, align 8
  call void @gimp_tool_pop_status(%struct._GimpTool* %8, %struct._GimpDisplay* %10)
  %11 = load i32, i32* %x.addr, align 4
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call6 = call i32 @gimp_image_get_width(%struct._GimpImage* %12)
  %cmp = icmp sle i32 %11, %call6
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %13 = load i32, i32* %y.addr, align 4
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call7 = call i32 @gimp_image_get_height(%struct._GimpImage* %14)
  %cmp8 = icmp sle i32 %13, %call7
  br i1 %cmp8, label %land.lhs.true.9, label %land.end

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %15 = load i32, i32* %x.addr, align 4
  %16 = load i32, i32* %w.addr, align 4
  %add = add nsw i32 %15, %16
  %cmp10 = icmp sge i32 %add, 0
  br i1 %cmp10, label %land.lhs.true.11, label %land.end

land.lhs.true.11:                                 ; preds = %land.lhs.true.9
  %17 = load i32, i32* %y.addr, align 4
  %18 = load i32, i32* %h.addr, align 4
  %add12 = add nsw i32 %17, %18
  %cmp13 = icmp sge i32 %add12, 0
  br i1 %cmp13, label %land.lhs.true.14, label %land.end

land.lhs.true.14:                                 ; preds = %land.lhs.true.11
  %19 = load i32, i32* %w.addr, align 4
  %cmp15 = icmp sgt i32 %19, 0
  br i1 %cmp15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.14
  %20 = load i32, i32* %h.addr, align 4
  %cmp16 = icmp sgt i32 %20, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.14, %land.lhs.true.11, %land.lhs.true.9, %land.lhs.true, %entry
  %21 = phi i1 [ false, %land.lhs.true.14 ], [ false, %land.lhs.true.11 ], [ false, %land.lhs.true.9 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp16, %land.rhs ]
  %land.ext = zext i1 %21 to i32
  store i32 %land.ext, i32* %rectangle_exists, align 4
  %22 = load %struct._GimpRectangleSelectTool*, %struct._GimpRectangleSelectTool** %rect_sel_tool, align 8
  %call17 = call i32 @gimp_rectangle_select_tool_get_operation(%struct._GimpRectangleSelectTool* %22)
  store i32 %call17, i32* %operation, align 4
  %23 = load i32, i32* %rectangle_exists, align 4
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %24 = load %struct._GimpRectangleSelectTool*, %struct._GimpRectangleSelectTool** %rect_sel_tool, align 8
  %25 = bitcast %struct._GimpRectangleSelectTool* %24 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %25, i32 0, i32 0
  %26 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %27 = bitcast %struct._GTypeClass* %26 to %struct._GimpRectangleSelectToolClass*
  %select = getelementptr inbounds %struct._GimpRectangleSelectToolClass, %struct._GimpRectangleSelectToolClass* %27, i32 0, i32 1
  %28 = load void (%struct._GimpRectangleSelectTool*, i32, i32, i32, i32, i32)*, void (%struct._GimpRectangleSelectTool*, i32, i32, i32, i32, i32)** %select, align 8
  %29 = load %struct._GimpRectangleSelectTool*, %struct._GimpRectangleSelectTool** %rect_sel_tool, align 8
  %30 = load i32, i32* %operation, align 4
  %31 = load i32, i32* %x.addr, align 4
  %32 = load i32, i32* %y.addr, align 4
  %33 = load i32, i32* %w.addr, align 4
  %34 = load i32, i32* %h.addr, align 4
  call void %28(%struct._GimpRectangleSelectTool* %29, i32 %30, i32 %31, i32 %32, i32 %33, i32 %34)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %35 = load i32, i32* %rectangle_exists, align 4
  ret i32 %35
}

; Function Attrs: nounwind readnone
declare i64 @gimp_selection_options_get_type() #2

declare void @gimp_image_flush(%struct._GimpImage*) #1

declare void @gimp_tool_control_pop_preserve(%struct._GimpToolControl*) #1

declare void @gimp_tool_pop_status(%struct._GimpTool*, %struct._GimpDisplay*) #1

declare i32 @gimp_image_get_width(%struct._GimpImage*) #1

declare i32 @gimp_image_get_height(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_rectangle_select_tool_get_operation(%struct._GimpRectangleSelectTool* %rect_sel_tool) #3 {
entry:
  %retval = alloca i32, align 4
  %rect_sel_tool.addr = alloca %struct._GimpRectangleSelectTool*, align 8
  %priv = alloca %struct.GimpRectangleSelectToolPrivate*, align 8
  %options = alloca %struct._GimpSelectionOptions*, align 8
  store %struct._GimpRectangleSelectTool* %rect_sel_tool, %struct._GimpRectangleSelectTool** %rect_sel_tool.addr, align 8
  %0 = load %struct._GimpRectangleSelectTool*, %struct._GimpRectangleSelectTool** %rect_sel_tool.addr, align 8
  %priv1 = getelementptr inbounds %struct._GimpRectangleSelectTool, %struct._GimpRectangleSelectTool* %0, i32 0, i32 1
  %1 = load i8*, i8** %priv1, align 8
  %2 = bitcast i8* %1 to %struct.GimpRectangleSelectToolPrivate*
  store %struct.GimpRectangleSelectToolPrivate* %2, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %3 = load %struct._GimpRectangleSelectTool*, %struct._GimpRectangleSelectTool** %rect_sel_tool.addr, align 8
  %4 = bitcast %struct._GimpRectangleSelectTool* %3 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpTool*
  %call3 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call3 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_selection_options_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpSelectionOptions*
  store %struct._GimpSelectionOptions* %7, %struct._GimpSelectionOptions** %options, align 8
  %8 = load %struct.GimpRectangleSelectToolPrivate*, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %use_saved_op = getelementptr inbounds %struct.GimpRectangleSelectToolPrivate, %struct.GimpRectangleSelectToolPrivate* %8, i32 0, i32 1
  %9 = load i32, i32* %use_saved_op, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load %struct.GimpRectangleSelectToolPrivate*, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %operation = getelementptr inbounds %struct.GimpRectangleSelectToolPrivate, %struct.GimpRectangleSelectToolPrivate* %10, i32 0, i32 0
  %11 = load i32, i32* %operation, align 4
  store i32 %11, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %12 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %options, align 8
  %operation6 = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %12, i32 0, i32 1
  %13 = load i32, i32* %operation6, align 4
  store i32 %13, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind readnone
declare i64 @gimp_rectangle_options_interface_get_type() #2

declare void @gimp_rectangle_tool_pending_size_set(%struct._GimpRectangleTool*, %struct._GObject*, i8*, i8*) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare void @gimp_rectangle_tool_control(%struct._GimpTool*, i32, %struct._GimpDisplay*) #1

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

declare void @gimp_rectangle_tool_cancel(%struct._GimpRectangleTool*) #1

declare i32 @gimp_selection_tool_start_edit(%struct._GimpSelectionTool*, %struct._GimpDisplay*, %struct._GimpCoords*) #1

declare i32 @gimp_rectangle_tool_execute(%struct._GimpRectangleTool*) #1

declare void @gimp_tool_control_activate(%struct._GimpToolControl*) #1

declare i32 @gimp_display_shell_get_show_selection(%struct._GimpDisplayShell*) #1

declare i32 @gimp_get_extend_selection_mask() #1

declare i32 @gimp_get_modify_selection_mask() #1

declare void @gimp_rectangle_tool_set_function(%struct._GimpRectangleTool*, i32) #1

declare void @gimp_rectangle_tool_button_press(%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*) #1

declare i32 @gimp_rectangle_tool_get_function(%struct._GimpRectangleTool*) #1

declare %struct._GimpUndoStack* @gimp_image_get_redo_stack(%struct._GimpImage*) #1

declare void @gimp_display_shell_set_show_selection(%struct._GimpDisplayShell*, i32) #1

declare void @gimp_tool_control_halt(%struct._GimpToolControl*) #1

declare i32 @gimp_image_redo(%struct._GimpImage*) #1

declare void @gimp_rectangle_tool_button_release(%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*) #1

declare i32 @gimp_rectangle_tool_key_press(%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*) #1

declare i32 @gimp_edit_selection_tool_key_press(%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*) #1

declare void @gimp_rectangle_tool_active_modifier_key(%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*) #1

declare void @gimp_rectangle_tool_oper_update(%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*) #1

declare void @gimp_rectangle_tool_cursor_update(%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*) #1

declare void @gimp_tool_control_set_cursor(%struct._GimpToolControl*, i32) #1

declare %struct._GimpCanvasGroup* @gimp_draw_tool_add_stroke_group(%struct._GimpDrawTool*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_canvas_group_get_type() #2

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_arc(%struct._GimpDrawTool*, i32, double, double, double, double, double, double) #1

declare void @gimp_canvas_group_add_item(%struct._GimpCanvasGroup*, %struct._GimpCanvasItem*) #1

declare void @gimp_draw_tool_remove_item(%struct._GimpDrawTool*, %struct._GimpCanvasItem*) #1

declare void @gimp_rectangle_tool_draw(%struct._GimpDrawTool*, %struct._GimpCanvasGroup*) #1

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #1

declare void @gimp_channel_select_round_rect(%struct._GimpChannel*, i32, i32, i32, i32, double, double, i32, i32, i32, double, double, i32) #1

declare void @gimp_channel_select_rectangle(%struct._GimpChannel*, i32, i32, i32, i32, i32, i32, double, double, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_rectangle_select_tool_execute(%struct._GimpRectangleTool* %rectangle, i32 %x, i32 %y, i32 %w, i32 %h) #3 {
entry:
  %retval = alloca i32, align 4
  %rectangle.addr = alloca %struct._GimpRectangleTool*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %tool = alloca %struct._GimpTool*, align 8
  %rect_sel_tool = alloca %struct._GimpRectangleSelectTool*, align 8
  %priv = alloca %struct.GimpRectangleSelectToolPrivate*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %selection = alloca %struct._GimpChannel*, align 8
  %pressx = alloca i32, align 4
  %pressy = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %tool26 = alloca %struct._GimpTool*, align 8
  %operation = alloca i32, align 4
  store %struct._GimpRectangleTool* %rectangle, %struct._GimpRectangleTool** %rectangle.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rectangle.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rectangle.addr, align 8
  %4 = bitcast %struct._GimpRectangleTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_rectangle_select_tool_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpRectangleSelectTool*
  store %struct._GimpRectangleSelectTool* %5, %struct._GimpRectangleSelectTool** %rect_sel_tool, align 8
  %6 = load %struct._GimpRectangleSelectTool*, %struct._GimpRectangleSelectTool** %rect_sel_tool, align 8
  %priv4 = getelementptr inbounds %struct._GimpRectangleSelectTool, %struct._GimpRectangleSelectTool* %6, i32 0, i32 1
  %7 = load i8*, i8** %priv4, align 8
  %8 = bitcast i8* %7 to %struct.GimpRectangleSelectToolPrivate*
  store %struct.GimpRectangleSelectToolPrivate* %8, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %9 = load i32, i32* %w.addr, align 4
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.33

land.lhs.true:                                    ; preds = %entry
  %10 = load i32, i32* %h.addr, align 4
  %cmp5 = icmp eq i32 %10, 0
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.33

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %11 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %11, i32 0, i32 4
  %12 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %cmp7 = icmp ne %struct._GimpDisplay* %12, null
  br i1 %cmp7, label %if.then, label %if.end.33

if.then:                                          ; preds = %land.lhs.true.6
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display8 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %13, i32 0, i32 4
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display8, align 8
  %call9 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %14)
  store %struct._GimpImage* %call9, %struct._GimpImage** %image, align 8
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call10 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %15)
  store %struct._GimpChannel* %call10, %struct._GimpChannel** %selection, align 8
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call11 = call %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage* %16)
  %tobool = icmp ne %struct._GimpLayer* %call11, null
  br i1 %tobool, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call13 = call %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage* %17)
  call void @floating_sel_anchor(%struct._GimpLayer* %call13)
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %18)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %19 = load %struct.GimpRectangleSelectToolPrivate*, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %press_x = getelementptr inbounds %struct.GimpRectangleSelectToolPrivate, %struct.GimpRectangleSelectToolPrivate* %19, i32 0, i32 7
  %20 = load double, double* %press_x, align 8
  %add = fadd double %20, 5.000000e-01
  %conv = fptosi double %add to i32
  store i32 %conv, i32* %pressx, align 4
  %21 = load %struct.GimpRectangleSelectToolPrivate*, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %press_y = getelementptr inbounds %struct.GimpRectangleSelectToolPrivate, %struct.GimpRectangleSelectToolPrivate* %21, i32 0, i32 8
  %22 = load double, double* %press_y, align 8
  %add14 = fadd double %22, 5.000000e-01
  %conv15 = fptosi double %add14 to i32
  store i32 %conv15, i32* %pressy, align 4
  %23 = load %struct._GimpChannel*, %struct._GimpChannel** %selection, align 8
  %24 = bitcast %struct._GimpChannel* %23 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_pickable_interface_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call16)
  %25 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpPickable*
  %26 = load i32, i32* %pressx, align 4
  %27 = load i32, i32* %pressy, align 4
  %call18 = call i32 @gimp_pickable_get_opacity_at(%struct._GimpPickable* %25, i32 %26, i32 %27)
  %cmp19 = icmp sgt i32 %call18, 127
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.end
  %28 = load %struct._GimpChannel*, %struct._GimpChannel** %selection, align 8
  %call22 = call i32 @gimp_channel_bounds(%struct._GimpChannel* %28, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.then.21
  %29 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rectangle.addr, align 8
  %30 = bitcast %struct._GimpRectangleTool* %29 to i8*
  %31 = load i32, i32* %x1, align 4
  %32 = load i32, i32* %y1, align 4
  %33 = load i32, i32* %x2, align 4
  %34 = load i32, i32* %y2, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32 %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i32 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i32 %34, i8* null)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.then.21
  %35 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rectangle.addr, align 8
  call void @gimp_rectangle_tool_set_function(%struct._GimpRectangleTool* %35, i32 3)
  %36 = load %struct._GimpRectangleSelectTool*, %struct._GimpRectangleSelectTool** %rect_sel_tool, align 8
  call void @gimp_rectangle_select_tool_update_option_defaults(%struct._GimpRectangleSelectTool* %36, i32 0)
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  %37 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rectangle.addr, align 8
  %38 = bitcast %struct._GimpRectangleTool* %37 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_tool_get_type() #5
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call27)
  %39 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpTool*
  store %struct._GimpTool* %39, %struct._GimpTool** %tool26, align 8
  %40 = load %struct._GimpTool*, %struct._GimpTool** %tool26, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %40, i32 0, i32 3
  %41 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_push_preserve(%struct._GimpToolControl* %41, i32 1)
  %42 = load %struct._GimpRectangleSelectTool*, %struct._GimpRectangleSelectTool** %rect_sel_tool, align 8
  %call29 = call i32 @gimp_rectangle_select_tool_get_operation(%struct._GimpRectangleSelectTool* %42)
  store i32 %call29, i32* %operation, align 4
  %43 = load i32, i32* %operation, align 4
  switch i32 %43, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 0, label %sw.bb.30
    i32 1, label %sw.bb.30
  ]

sw.bb:                                            ; preds = %if.else, %if.else
  %44 = load %struct._GimpChannel*, %struct._GimpChannel** %selection, align 8
  call void @gimp_channel_clear(%struct._GimpChannel* %44, i8* null, i32 1)
  %45 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %45)
  br label %sw.epilog

sw.bb.30:                                         ; preds = %if.else, %if.else
  br label %sw.default

sw.default:                                       ; preds = %if.else, %sw.bb.30
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %46 = load %struct._GimpTool*, %struct._GimpTool** %tool26, align 8
  %control31 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %46, i32 0, i32 3
  %47 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control31, align 8
  call void @gimp_tool_control_pop_preserve(%struct._GimpToolControl* %47)
  br label %if.end.32

if.end.32:                                        ; preds = %sw.epilog
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %land.lhs.true.6, %land.lhs.true, %entry
  %48 = load %struct._GimpRectangleSelectTool*, %struct._GimpRectangleSelectTool** %rect_sel_tool, align 8
  call void @gimp_rectangle_select_tool_update_option_defaults(%struct._GimpRectangleSelectTool* %48, i32 0)
  %49 = load %struct.GimpRectangleSelectToolPrivate*, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %undo = getelementptr inbounds %struct.GimpRectangleSelectToolPrivate, %struct.GimpRectangleSelectToolPrivate* %49, i32 0, i32 3
  store %struct._GimpUndo* null, %struct._GimpUndo** %undo, align 8
  %50 = load %struct.GimpRectangleSelectToolPrivate*, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %redo = getelementptr inbounds %struct.GimpRectangleSelectToolPrivate, %struct.GimpRectangleSelectToolPrivate* %50, i32 0, i32 4
  store %struct._GimpUndo* null, %struct._GimpUndo** %redo, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.33, %if.end.25, %if.then.12
  %51 = load i32, i32* %retval
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_select_tool_cancel(%struct._GimpRectangleTool* %rectangle) #3 {
entry:
  %rectangle.addr = alloca %struct._GimpRectangleTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %rect_sel_tool = alloca %struct._GimpRectangleSelectTool*, align 8
  %priv = alloca %struct.GimpRectangleSelectToolPrivate*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %undo_stack = alloca %struct._GimpUndoStack*, align 8
  %undo = alloca %struct._GimpUndo*, align 8
  store %struct._GimpRectangleTool* %rectangle, %struct._GimpRectangleTool** %rectangle.addr, align 8
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rectangle.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rectangle.addr, align 8
  %4 = bitcast %struct._GimpRectangleTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_rectangle_select_tool_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpRectangleSelectTool*
  store %struct._GimpRectangleSelectTool* %5, %struct._GimpRectangleSelectTool** %rect_sel_tool, align 8
  %6 = load %struct._GimpRectangleSelectTool*, %struct._GimpRectangleSelectTool** %rect_sel_tool, align 8
  %priv4 = getelementptr inbounds %struct._GimpRectangleSelectTool, %struct._GimpRectangleSelectTool* %6, i32 0, i32 1
  %7 = load i8*, i8** %priv4, align 8
  %8 = bitcast i8* %7 to %struct.GimpRectangleSelectToolPrivate*
  store %struct.GimpRectangleSelectToolPrivate* %8, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %9 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %9, i32 0, i32 4
  %10 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %10, null
  br i1 %tobool, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %11 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display5 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %11, i32 0, i32 4
  %12 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display5, align 8
  %call6 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %12)
  store %struct._GimpImage* %call6, %struct._GimpImage** %image, align 8
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call7 = call %struct._GimpUndoStack* @gimp_image_get_undo_stack(%struct._GimpImage* %13)
  store %struct._GimpUndoStack* %call7, %struct._GimpUndoStack** %undo_stack, align 8
  %14 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %undo_stack, align 8
  %call8 = call %struct._GimpUndo* @gimp_undo_stack_peek(%struct._GimpUndoStack* %14)
  store %struct._GimpUndo* %call8, %struct._GimpUndo** %undo, align 8
  %15 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %tobool9 = icmp ne %struct._GimpUndo* %15, null
  br i1 %tobool9, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %16 = load %struct.GimpRectangleSelectToolPrivate*, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %undo10 = getelementptr inbounds %struct.GimpRectangleSelectToolPrivate, %struct.GimpRectangleSelectToolPrivate* %16, i32 0, i32 3
  %17 = load %struct._GimpUndo*, %struct._GimpUndo** %undo10, align 8
  %18 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %cmp = icmp eq %struct._GimpUndo* %17, %18
  br i1 %cmp, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %land.lhs.true
  %19 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %19, i32 0, i32 3
  %20 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_push_preserve(%struct._GimpToolControl* %20, i32 1)
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call12 = call i32 @gimp_image_undo(%struct._GimpImage* %21)
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %22)
  %23 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control13 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %23, i32 0, i32 3
  %24 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control13, align 8
  call void @gimp_tool_control_pop_preserve(%struct._GimpToolControl* %24)
  br label %if.end

if.end:                                           ; preds = %if.then.11, %land.lhs.true, %if.then
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %entry
  %25 = load %struct._GimpRectangleSelectTool*, %struct._GimpRectangleSelectTool** %rect_sel_tool, align 8
  call void @gimp_rectangle_select_tool_update_option_defaults(%struct._GimpRectangleSelectTool* %25, i32 1)
  %26 = load %struct.GimpRectangleSelectToolPrivate*, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %undo15 = getelementptr inbounds %struct.GimpRectangleSelectToolPrivate, %struct.GimpRectangleSelectToolPrivate* %26, i32 0, i32 3
  store %struct._GimpUndo* null, %struct._GimpUndo** %undo15, align 8
  %27 = load %struct.GimpRectangleSelectToolPrivate*, %struct.GimpRectangleSelectToolPrivate** %priv, align 8
  %redo = getelementptr inbounds %struct.GimpRectangleSelectToolPrivate, %struct.GimpRectangleSelectToolPrivate* %27, i32 0, i32 4
  store %struct._GimpUndo* null, %struct._GimpUndo** %redo, align 8
  ret void
}

declare %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage*) #1

declare void @floating_sel_anchor(%struct._GimpLayer*) #1

declare i32 @gimp_pickable_get_opacity_at(%struct._GimpPickable*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_pickable_interface_get_type() #2

declare i32 @gimp_channel_bounds(%struct._GimpChannel*, i32*, i32*, i32*, i32*) #1

declare void @gimp_channel_clear(%struct._GimpChannel*, i8*, i32) #1

declare void @gimp_rectangle_tool_init(%struct._GimpRectangleTool*) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare void @gimp_tool_control_set_wants_click(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_precision(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_preserve(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_dirty_mask(%struct._GimpToolControl*, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
