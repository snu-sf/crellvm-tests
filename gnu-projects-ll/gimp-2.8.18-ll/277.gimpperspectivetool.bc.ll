; ModuleID = './app/tools/gimpperspectivetool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpPerspectiveToolClass = type { %struct._GimpTransformToolClass }
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
%struct._GimpPerspectiveTool = type { %struct._GimpTransformTool, [3 x [3 x %struct._GtkWidget*]] }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkLabelSelectionInfo = type opaque

@gimp_perspective_tool_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"GimpPerspectiveTool\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"gimp-perspective-tool\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Perspective\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"Perspective Tool: Change perspective of the layer, selection or path\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"_Perspective\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"<shift>P\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"gimp-tool-perspective\00", align 1
@gimp_perspective_tool_parent_class = internal global i8* null, align 8
@GimpPerspectiveTool_private_offset = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"Transformation Matrix\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%10.5f\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"undo-type\04Perspective\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Perspective transformation\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_perspective_tool_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_perspective_tool_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_perspective_tool_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 344, void (i8*, i8*)* bitcast (void (i8*)* @gimp_perspective_tool_class_intern_init to void (i8*, i8*)*), i32 864, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpPerspectiveTool*)* @gimp_perspective_tool_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_perspective_tool_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_perspective_tool_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_transform_tool_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_perspective_tool_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_perspective_tool_parent_class, align 8
  %1 = load i32, i32* @GimpPerspectiveTool_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpPerspectiveTool_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpPerspectiveToolClass*
  call void @gimp_perspective_tool_class_init(%struct._GimpPerspectiveToolClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_perspective_tool_init(%struct._GimpPerspectiveTool* %perspective_tool) #3 {
entry:
  %perspective_tool.addr = alloca %struct._GimpPerspectiveTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %tr_tool = alloca %struct._GimpTransformTool*, align 8
  store %struct._GimpPerspectiveTool* %perspective_tool, %struct._GimpPerspectiveTool** %perspective_tool.addr, align 8
  %0 = load %struct._GimpPerspectiveTool*, %struct._GimpPerspectiveTool** %perspective_tool.addr, align 8
  %1 = bitcast %struct._GimpPerspectiveTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpPerspectiveTool*, %struct._GimpPerspectiveTool** %perspective_tool.addr, align 8
  %4 = bitcast %struct._GimpPerspectiveTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_transform_tool_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTransformTool*
  store %struct._GimpTransformTool* %5, %struct._GimpTransformTool** %tr_tool, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %6, i32 0, i32 3
  %7 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl* %7, i32 17)
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0)) #6
  %8 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %progress_text = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %8, i32 0, i32 32
  store i8* %call4, i8** %progress_text, align 8
  %9 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %use_grid = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %9, i32 0, i32 27
  store i32 1, i32* %use_grid, align 4
  %10 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %use_handles = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %10, i32 0, i32 28
  store i32 1, i32* %use_handles, align 4
  %11 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %use_center = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %11, i32 0, i32 29
  store i32 1, i32* %use_center, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_perspective_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, i8* %data) #3 {
entry:
  %callback.addr = alloca void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  %call = call i64 @gimp_perspective_tool_get_type() #5
  %call1 = call i64 @gimp_transform_options_get_type() #5
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0)) #6
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i32 0, i32 0)) #6
  %1 = load i8*, i8** %data.addr, align 8
  call void %0(i64 %call, i64 %call1, %struct._GtkWidget* (%struct._GimpToolOptions*)* @gimp_transform_options_gui, i32 128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i8* %call2, i8* %call3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i8* %1)
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
define internal void @gimp_perspective_tool_class_init(%struct._GimpPerspectiveToolClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpPerspectiveToolClass*, align 8
  %trans_class = alloca %struct._GimpTransformToolClass*, align 8
  store %struct._GimpPerspectiveToolClass* %klass, %struct._GimpPerspectiveToolClass** %klass.addr, align 8
  %0 = load %struct._GimpPerspectiveToolClass*, %struct._GimpPerspectiveToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpPerspectiveToolClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_transform_tool_get_type() #5
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpTransformToolClass*
  store %struct._GimpTransformToolClass* %2, %struct._GimpTransformToolClass** %trans_class, align 8
  %3 = load %struct._GimpTransformToolClass*, %struct._GimpTransformToolClass** %trans_class, align 8
  %dialog = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %3, i32 0, i32 1
  store void (%struct._GimpTransformTool*)* @gimp_perspective_tool_dialog, void (%struct._GimpTransformTool*)** %dialog, align 8
  %4 = load %struct._GimpTransformToolClass*, %struct._GimpTransformToolClass** %trans_class, align 8
  %dialog_update = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %4, i32 0, i32 2
  store void (%struct._GimpTransformTool*)* @gimp_perspective_tool_dialog_update, void (%struct._GimpTransformTool*)** %dialog_update, align 8
  %5 = load %struct._GimpTransformToolClass*, %struct._GimpTransformToolClass** %trans_class, align 8
  %prepare = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %5, i32 0, i32 3
  store void (%struct._GimpTransformTool*)* @gimp_perspective_tool_prepare, void (%struct._GimpTransformTool*)** %prepare, align 8
  %6 = load %struct._GimpTransformToolClass*, %struct._GimpTransformToolClass** %trans_class, align 8
  %motion = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %6, i32 0, i32 4
  store void (%struct._GimpTransformTool*)* @gimp_perspective_tool_motion, void (%struct._GimpTransformTool*)** %motion, align 8
  %7 = load %struct._GimpTransformToolClass*, %struct._GimpTransformToolClass** %trans_class, align 8
  %recalc_matrix = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %7, i32 0, i32 5
  store void (%struct._GimpTransformTool*)* @gimp_perspective_tool_recalc_matrix, void (%struct._GimpTransformTool*)** %recalc_matrix, align 8
  %8 = load %struct._GimpTransformToolClass*, %struct._GimpTransformToolClass** %trans_class, align 8
  %get_undo_desc = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %8, i32 0, i32 6
  store i8* (%struct._GimpTransformTool*)* @gimp_perspective_tool_get_undo_desc, i8* (%struct._GimpTransformTool*)** %get_undo_desc, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_perspective_tool_dialog(%struct._GimpTransformTool* %tr_tool) #3 {
entry:
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  %perspective = alloca %struct._GimpPerspectiveTool*, align 8
  %content_area = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %label = alloca %struct._GtkWidget*, align 8
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %0 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %1 = bitcast %struct._GimpTransformTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_perspective_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPerspectiveTool*
  store %struct._GimpPerspectiveTool* %2, %struct._GimpPerspectiveTool** %perspective, align 8
  %3 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %dialog = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %3, i32 0, i32 33
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_dialog_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkDialog*
  %call4 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %6)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %content_area, align 8
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0)) #6
  %call6 = call %struct._GtkWidget* @gimp_frame_new(i8* %call5)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %frame, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_container_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call7)
  %9 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %9, i32 6)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %content_area, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_box_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call9)
  %12 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkBox*
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %12, %struct._GtkWidget* %13, i32 0, i32 0, i32 0)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %14)
  %call11 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %table, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_table_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call12)
  %17 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %17, i32 2)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_table_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call14)
  %20 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %20, i32 2)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_container_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call16)
  %23 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkContainer*
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %23, %struct._GtkWidget* %24)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %25)
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.32, %entry
  %26 = load i32, i32* %y, align 4
  %cmp = icmp slt i32 %26, 3
  br i1 %cmp, label %for.body, label %for.end.34

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc, %for.body
  %27 = load i32, i32* %x, align 4
  %cmp19 = icmp slt i32 %27, 3
  br i1 %cmp19, label %for.body.20, label %for.end

for.body.20:                                      ; preds = %for.cond.18
  %call21 = call %struct._GtkWidget* @gtk_label_new(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %label, align 8
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_misc_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call22)
  %30 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %30, float 1.000000e+00, float 0.000000e+00)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_label_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call24)
  %33 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkLabel*
  call void @gtk_label_set_width_chars(%struct._GtkLabel* %33, i32 12)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_table_get_type() #5
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call26)
  %36 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkTable*
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %38 = load i32, i32* %x, align 4
  %39 = load i32, i32* %x, align 4
  %add = add nsw i32 %39, 1
  %40 = load i32, i32* %y, align 4
  %41 = load i32, i32* %y, align 4
  %add28 = add nsw i32 %41, 1
  call void @gtk_table_attach(%struct._GtkTable* %36, %struct._GtkWidget* %37, i32 %38, i32 %add, i32 %40, i32 %add28, i32 1, i32 4, i32 0, i32 0)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %42)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %44 = load i32, i32* %x, align 4
  %idxprom = sext i32 %44 to i64
  %45 = load i32, i32* %y, align 4
  %idxprom29 = sext i32 %45 to i64
  %46 = load %struct._GimpPerspectiveTool*, %struct._GimpPerspectiveTool** %perspective, align 8
  %label30 = getelementptr inbounds %struct._GimpPerspectiveTool, %struct._GimpPerspectiveTool* %46, i32 0, i32 1
  %arrayidx = getelementptr inbounds [3 x [3 x %struct._GtkWidget*]], [3 x [3 x %struct._GtkWidget*]]* %label30, i32 0, i64 %idxprom29
  %arrayidx31 = getelementptr inbounds [3 x %struct._GtkWidget*], [3 x %struct._GtkWidget*]* %arrayidx, i32 0, i64 %idxprom
  store %struct._GtkWidget* %43, %struct._GtkWidget** %arrayidx31, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.20
  %47 = load i32, i32* %x, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.18

for.end:                                          ; preds = %for.cond.18
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.end
  %48 = load i32, i32* %y, align 4
  %inc33 = add nsw i32 %48, 1
  store i32 %inc33, i32* %y, align 4
  br label %for.cond

for.end.34:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_perspective_tool_dialog_update(%struct._GimpTransformTool* %tr_tool) #3 {
entry:
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  %perspective = alloca %struct._GimpPerspectiveTool*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %buf = alloca [32 x i8], align 16
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %0 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %1 = bitcast %struct._GimpTransformTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_perspective_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPerspectiveTool*
  store %struct._GimpPerspectiveTool* %2, %struct._GimpPerspectiveTool** %perspective, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.15, %entry
  %3 = load i32, i32* %y, align 4
  %cmp = icmp slt i32 %3, 3
  br i1 %cmp, label %for.body, label %for.end.17

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %x, align 4
  %cmp3 = icmp slt i32 %4, 3
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %5 = load i32, i32* %x, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32, i32* %y, align 4
  %idxprom5 = sext i32 %6 to i64
  %7 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %transform = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %7, i32 0, i32 22
  %coeff = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %transform, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff, i32 0, i64 %idxprom5
  %arrayidx6 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx, i32 0, i64 %idxprom
  %8 = load double, double* %arrayidx6, align 8
  %call7 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), double %8)
  %9 = load i32, i32* %x, align 4
  %idxprom8 = sext i32 %9 to i64
  %10 = load i32, i32* %y, align 4
  %idxprom9 = sext i32 %10 to i64
  %11 = load %struct._GimpPerspectiveTool*, %struct._GimpPerspectiveTool** %perspective, align 8
  %label = getelementptr inbounds %struct._GimpPerspectiveTool, %struct._GimpPerspectiveTool* %11, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [3 x [3 x %struct._GtkWidget*]], [3 x [3 x %struct._GtkWidget*]]* %label, i32 0, i64 %idxprom9
  %arrayidx11 = getelementptr inbounds [3 x %struct._GtkWidget*], [3 x %struct._GtkWidget*]* %arrayidx10, i32 0, i64 %idxprom8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx11, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_label_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call12)
  %14 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkLabel*
  %arraydecay14 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  call void @gtk_label_set_text(%struct._GtkLabel* %14, i8* %arraydecay14)
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %15 = load i32, i32* %x, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.end
  %16 = load i32, i32* %y, align 4
  %inc16 = add nsw i32 %16, 1
  store i32 %inc16, i32* %y, align 4
  br label %for.cond

for.end.17:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_perspective_tool_prepare(%struct._GimpTransformTool* %tr_tool) #3 {
entry:
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %0 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %0, i32 0, i32 5
  %1 = load i32, i32* %x1, align 4
  %conv = sitofp i32 %1 to double
  %2 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %2, i32 0, i32 23
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* %trans_info, i32 0, i64 0
  store double %conv, double* %arrayidx, align 8
  %3 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %y1 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %3, i32 0, i32 6
  %4 = load i32, i32* %y1, align 4
  %conv1 = sitofp i32 %4 to double
  %5 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info2 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %5, i32 0, i32 23
  %arrayidx3 = getelementptr inbounds [8 x double], [8 x double]* %trans_info2, i32 0, i64 1
  store double %conv1, double* %arrayidx3, align 8
  %6 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %6, i32 0, i32 7
  %7 = load i32, i32* %x2, align 4
  %conv4 = sitofp i32 %7 to double
  %8 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info5 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %8, i32 0, i32 23
  %arrayidx6 = getelementptr inbounds [8 x double], [8 x double]* %trans_info5, i32 0, i64 2
  store double %conv4, double* %arrayidx6, align 8
  %9 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %y17 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %9, i32 0, i32 6
  %10 = load i32, i32* %y17, align 4
  %conv8 = sitofp i32 %10 to double
  %11 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info9 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %11, i32 0, i32 23
  %arrayidx10 = getelementptr inbounds [8 x double], [8 x double]* %trans_info9, i32 0, i64 3
  store double %conv8, double* %arrayidx10, align 8
  %12 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %x111 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %12, i32 0, i32 5
  %13 = load i32, i32* %x111, align 4
  %conv12 = sitofp i32 %13 to double
  %14 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info13 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %14, i32 0, i32 23
  %arrayidx14 = getelementptr inbounds [8 x double], [8 x double]* %trans_info13, i32 0, i64 4
  store double %conv12, double* %arrayidx14, align 8
  %15 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %15, i32 0, i32 8
  %16 = load i32, i32* %y2, align 4
  %conv15 = sitofp i32 %16 to double
  %17 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info16 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %17, i32 0, i32 23
  %arrayidx17 = getelementptr inbounds [8 x double], [8 x double]* %trans_info16, i32 0, i64 5
  store double %conv15, double* %arrayidx17, align 8
  %18 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %x218 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %18, i32 0, i32 7
  %19 = load i32, i32* %x218, align 4
  %conv19 = sitofp i32 %19 to double
  %20 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info20 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %20, i32 0, i32 23
  %arrayidx21 = getelementptr inbounds [8 x double], [8 x double]* %trans_info20, i32 0, i64 6
  store double %conv19, double* %arrayidx21, align 8
  %21 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %y222 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %21, i32 0, i32 8
  %22 = load i32, i32* %y222, align 4
  %conv23 = sitofp i32 %22 to double
  %23 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info24 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %23, i32 0, i32 23
  %arrayidx25 = getelementptr inbounds [8 x double], [8 x double]* %trans_info24, i32 0, i64 7
  store double %conv23, double* %arrayidx25, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_perspective_tool_motion(%struct._GimpTransformTool* %transform_tool) #3 {
entry:
  %transform_tool.addr = alloca %struct._GimpTransformTool*, align 8
  %diff_x = alloca double, align 8
  %diff_y = alloca double, align 8
  store %struct._GimpTransformTool* %transform_tool, %struct._GimpTransformTool** %transform_tool.addr, align 8
  %0 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %transform_tool.addr, align 8
  %curx = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %0, i32 0, i32 1
  %1 = load double, double* %curx, align 8
  %2 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %transform_tool.addr, align 8
  %lastx = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %2, i32 0, i32 3
  %3 = load double, double* %lastx, align 8
  %sub = fsub double %1, %3
  store double %sub, double* %diff_x, align 8
  %4 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %transform_tool.addr, align 8
  %cury = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %4, i32 0, i32 2
  %5 = load double, double* %cury, align 8
  %6 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %transform_tool.addr, align 8
  %lasty = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %6, i32 0, i32 4
  %7 = load double, double* %lasty, align 8
  %sub1 = fsub double %5, %7
  store double %sub1, double* %diff_y, align 8
  %8 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %transform_tool.addr, align 8
  %function = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %8, i32 0, i32 26
  %9 = load i32, i32* %function, align 4
  switch i32 %9, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.12
    i32 5, label %sw.bb.19
    i32 10, label %sw.bb.26
  ]

sw.bb:                                            ; preds = %entry
  %10 = load double, double* %diff_x, align 8
  %11 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %transform_tool.addr, align 8
  %trans_info = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %11, i32 0, i32 23
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* %trans_info, i32 0, i64 0
  %12 = load double, double* %arrayidx, align 8
  %add = fadd double %12, %10
  store double %add, double* %arrayidx, align 8
  %13 = load double, double* %diff_y, align 8
  %14 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %transform_tool.addr, align 8
  %trans_info2 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %14, i32 0, i32 23
  %arrayidx3 = getelementptr inbounds [8 x double], [8 x double]* %trans_info2, i32 0, i64 1
  %15 = load double, double* %arrayidx3, align 8
  %add4 = fadd double %15, %13
  store double %add4, double* %arrayidx3, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %16 = load double, double* %diff_x, align 8
  %17 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %transform_tool.addr, align 8
  %trans_info6 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %17, i32 0, i32 23
  %arrayidx7 = getelementptr inbounds [8 x double], [8 x double]* %trans_info6, i32 0, i64 2
  %18 = load double, double* %arrayidx7, align 8
  %add8 = fadd double %18, %16
  store double %add8, double* %arrayidx7, align 8
  %19 = load double, double* %diff_y, align 8
  %20 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %transform_tool.addr, align 8
  %trans_info9 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %20, i32 0, i32 23
  %arrayidx10 = getelementptr inbounds [8 x double], [8 x double]* %trans_info9, i32 0, i64 3
  %21 = load double, double* %arrayidx10, align 8
  %add11 = fadd double %21, %19
  store double %add11, double* %arrayidx10, align 8
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %22 = load double, double* %diff_x, align 8
  %23 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %transform_tool.addr, align 8
  %trans_info13 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %23, i32 0, i32 23
  %arrayidx14 = getelementptr inbounds [8 x double], [8 x double]* %trans_info13, i32 0, i64 4
  %24 = load double, double* %arrayidx14, align 8
  %add15 = fadd double %24, %22
  store double %add15, double* %arrayidx14, align 8
  %25 = load double, double* %diff_y, align 8
  %26 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %transform_tool.addr, align 8
  %trans_info16 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %26, i32 0, i32 23
  %arrayidx17 = getelementptr inbounds [8 x double], [8 x double]* %trans_info16, i32 0, i64 5
  %27 = load double, double* %arrayidx17, align 8
  %add18 = fadd double %27, %25
  store double %add18, double* %arrayidx17, align 8
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  %28 = load double, double* %diff_x, align 8
  %29 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %transform_tool.addr, align 8
  %trans_info20 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %29, i32 0, i32 23
  %arrayidx21 = getelementptr inbounds [8 x double], [8 x double]* %trans_info20, i32 0, i64 6
  %30 = load double, double* %arrayidx21, align 8
  %add22 = fadd double %30, %28
  store double %add22, double* %arrayidx21, align 8
  %31 = load double, double* %diff_y, align 8
  %32 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %transform_tool.addr, align 8
  %trans_info23 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %32, i32 0, i32 23
  %arrayidx24 = getelementptr inbounds [8 x double], [8 x double]* %trans_info23, i32 0, i64 7
  %33 = load double, double* %arrayidx24, align 8
  %add25 = fadd double %33, %31
  store double %add25, double* %arrayidx24, align 8
  br label %sw.epilog

sw.bb.26:                                         ; preds = %entry
  %34 = load double, double* %diff_x, align 8
  %35 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %transform_tool.addr, align 8
  %trans_info27 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %35, i32 0, i32 23
  %arrayidx28 = getelementptr inbounds [8 x double], [8 x double]* %trans_info27, i32 0, i64 0
  %36 = load double, double* %arrayidx28, align 8
  %add29 = fadd double %36, %34
  store double %add29, double* %arrayidx28, align 8
  %37 = load double, double* %diff_y, align 8
  %38 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %transform_tool.addr, align 8
  %trans_info30 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %38, i32 0, i32 23
  %arrayidx31 = getelementptr inbounds [8 x double], [8 x double]* %trans_info30, i32 0, i64 1
  %39 = load double, double* %arrayidx31, align 8
  %add32 = fadd double %39, %37
  store double %add32, double* %arrayidx31, align 8
  %40 = load double, double* %diff_x, align 8
  %41 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %transform_tool.addr, align 8
  %trans_info33 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %41, i32 0, i32 23
  %arrayidx34 = getelementptr inbounds [8 x double], [8 x double]* %trans_info33, i32 0, i64 2
  %42 = load double, double* %arrayidx34, align 8
  %add35 = fadd double %42, %40
  store double %add35, double* %arrayidx34, align 8
  %43 = load double, double* %diff_y, align 8
  %44 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %transform_tool.addr, align 8
  %trans_info36 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %44, i32 0, i32 23
  %arrayidx37 = getelementptr inbounds [8 x double], [8 x double]* %trans_info36, i32 0, i64 3
  %45 = load double, double* %arrayidx37, align 8
  %add38 = fadd double %45, %43
  store double %add38, double* %arrayidx37, align 8
  %46 = load double, double* %diff_x, align 8
  %47 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %transform_tool.addr, align 8
  %trans_info39 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %47, i32 0, i32 23
  %arrayidx40 = getelementptr inbounds [8 x double], [8 x double]* %trans_info39, i32 0, i64 4
  %48 = load double, double* %arrayidx40, align 8
  %add41 = fadd double %48, %46
  store double %add41, double* %arrayidx40, align 8
  %49 = load double, double* %diff_y, align 8
  %50 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %transform_tool.addr, align 8
  %trans_info42 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %50, i32 0, i32 23
  %arrayidx43 = getelementptr inbounds [8 x double], [8 x double]* %trans_info42, i32 0, i64 5
  %51 = load double, double* %arrayidx43, align 8
  %add44 = fadd double %51, %49
  store double %add44, double* %arrayidx43, align 8
  %52 = load double, double* %diff_x, align 8
  %53 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %transform_tool.addr, align 8
  %trans_info45 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %53, i32 0, i32 23
  %arrayidx46 = getelementptr inbounds [8 x double], [8 x double]* %trans_info45, i32 0, i64 6
  %54 = load double, double* %arrayidx46, align 8
  %add47 = fadd double %54, %52
  store double %add47, double* %arrayidx46, align 8
  %55 = load double, double* %diff_y, align 8
  %56 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %transform_tool.addr, align 8
  %trans_info48 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %56, i32 0, i32 23
  %arrayidx49 = getelementptr inbounds [8 x double], [8 x double]* %trans_info48, i32 0, i64 7
  %57 = load double, double* %arrayidx49, align 8
  %add50 = fadd double %57, %55
  store double %add50, double* %arrayidx49, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.26, %sw.bb.19, %sw.bb.12, %sw.bb.5, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_perspective_tool_recalc_matrix(%struct._GimpTransformTool* %tr_tool) #3 {
entry:
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %0 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %transform = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %0, i32 0, i32 22
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %transform)
  %1 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %transform1 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %1, i32 0, i32 22
  %2 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %2, i32 0, i32 5
  %3 = load i32, i32* %x1, align 4
  %4 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %y1 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %4, i32 0, i32 6
  %5 = load i32, i32* %y1, align 4
  %6 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %6, i32 0, i32 7
  %7 = load i32, i32* %x2, align 4
  %8 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %x12 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %8, i32 0, i32 5
  %9 = load i32, i32* %x12, align 4
  %sub = sub nsw i32 %7, %9
  %10 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %10, i32 0, i32 8
  %11 = load i32, i32* %y2, align 4
  %12 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %y13 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %12, i32 0, i32 6
  %13 = load i32, i32* %y13, align 4
  %sub4 = sub nsw i32 %11, %13
  %14 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %14, i32 0, i32 23
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* %trans_info, i32 0, i64 0
  %15 = load double, double* %arrayidx, align 8
  %16 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info5 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %16, i32 0, i32 23
  %arrayidx6 = getelementptr inbounds [8 x double], [8 x double]* %trans_info5, i32 0, i64 1
  %17 = load double, double* %arrayidx6, align 8
  %18 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info7 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %18, i32 0, i32 23
  %arrayidx8 = getelementptr inbounds [8 x double], [8 x double]* %trans_info7, i32 0, i64 2
  %19 = load double, double* %arrayidx8, align 8
  %20 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info9 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %20, i32 0, i32 23
  %arrayidx10 = getelementptr inbounds [8 x double], [8 x double]* %trans_info9, i32 0, i64 3
  %21 = load double, double* %arrayidx10, align 8
  %22 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info11 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %22, i32 0, i32 23
  %arrayidx12 = getelementptr inbounds [8 x double], [8 x double]* %trans_info11, i32 0, i64 4
  %23 = load double, double* %arrayidx12, align 8
  %24 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info13 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %24, i32 0, i32 23
  %arrayidx14 = getelementptr inbounds [8 x double], [8 x double]* %trans_info13, i32 0, i64 5
  %25 = load double, double* %arrayidx14, align 8
  %26 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info15 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %26, i32 0, i32 23
  %arrayidx16 = getelementptr inbounds [8 x double], [8 x double]* %trans_info15, i32 0, i64 6
  %27 = load double, double* %arrayidx16, align 8
  %28 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info17 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %28, i32 0, i32 23
  %arrayidx18 = getelementptr inbounds [8 x double], [8 x double]* %trans_info17, i32 0, i64 7
  %29 = load double, double* %arrayidx18, align 8
  call void @gimp_transform_matrix_perspective(%struct._GimpMatrix3* %transform1, i32 %3, i32 %5, i32 %sub, i32 %sub4, double %15, double %17, double %19, double %21, double %23, double %25, double %27, double %29)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_perspective_tool_get_undo_desc(%struct._GimpTransformTool* %tr_tool) #3 {
entry:
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %call = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0), i64 10)
  %call1 = call noalias i8* @g_strdup(i8* %call)
  ret i8* %call1
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #2

declare void @gtk_label_set_width_chars(%struct._GtkLabel*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

declare void @gtk_label_set_text(%struct._GtkLabel*, i8*) #1

declare void @gimp_matrix3_identity(%struct._GimpMatrix3*) #1

declare void @gimp_transform_matrix_perspective(%struct._GimpMatrix3*, i32, i32, i32, i32, double, double, double, double, double, double, double, double) #1

declare noalias i8* @g_strdup(i8*) #1

declare i8* @g_dpgettext(i8*, i8*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

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
