; ModuleID = './app/tools/gimpfreeselecttool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpVector2 = type { double, double }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpFreeSelectToolClass = type { %struct._GimpSelectionToolClass, void (%struct._GimpFreeSelectTool*, %struct._GimpDisplay*)* }
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
%struct._GimpFreeSelectTool = type { %struct._GimpSelectionTool }
%struct._GimpSelectionTool = type { %struct._GimpDrawTool, i32, i32, i32 }
%struct.GimpFreeSelectToolPrivate = type { i32, %struct._GimpVector2*, %struct._GimpVector2*, i32, i32, i32, %struct._GimpVector2, i32, %struct._GimpVector2*, i32, i32, i32*, i32, i32, i32, i32, i32, %struct._GimpVector2, i32, %struct._GimpCoords }
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
%struct._GimpSelectionOptions = type { %struct._GimpToolOptions, i32, i32, i32, double, %struct._GtkWidget* }
%struct._GimpCanvasGroup = type { %struct._GimpCanvasItem }
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GeglNode = type opaque
%struct._BoundSeg = type opaque
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkSettings = type { %struct._GObject, %struct._GData*, %struct._GtkSettingsPropertyValue*, %struct._GtkRcContext*, %struct._GdkScreen* }
%struct._GtkSettingsPropertyValue = type opaque
%struct._GtkRcContext = type opaque
%struct._GimpLayer = type opaque

@gimp_free_select_tool_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"GimpFreeSelectTool\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"gimp-free-select-tool\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Free Select\00", align 1
@.str.3 = private unnamed_addr constant [78 x i8] c"Free Select Tool: Select a hand-drawn region with free and polygonal segments\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"_Free Select\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"gimp-tool-free-select\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Gimp-Tools\00", align 1
@__func__.gimp_free_select_tool_select = private unnamed_addr constant [29 x i8] c"gimp_free_select_tool_select\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"GIMP_IS_FREE_SELECT_TOOL (fst)\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"GIMP_IS_DISPLAY (display)\00", align 1
@__func__.gimp_free_select_tool_get_points = private unnamed_addr constant [33 x i8] c"gimp_free_select_tool_get_points\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"points != NULL && n_points != NULL\00", align 1
@gimp_free_select_tool_parent_class = internal global i8* null, align 8
@GimpFreeSelectTool_private_offset = internal global i32 0, align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"gtk-double-click-time\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"gtk-double-click-distance\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"Click to complete selection\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"Click-Drag to move segment vertex\00", align 1
@.str.15 = private unnamed_addr constant [63 x i8] c"Return commits, Escape cancels, Backspace removes last segment\00", align 1
@.str.16 = private unnamed_addr constant [63 x i8] c"Click-Drag adds a free segment, Click adds a polygonal segment\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@vector2_zero = internal constant %struct._GimpVector2 zeroinitializer, align 8
@.str.18 = private unnamed_addr constant [20 x i8] c"command\04Free Select\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_free_select_tool_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_free_select_tool_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_free_select_tool_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_selection_tool_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 296, void (i8*, i8*)* bitcast (void (i8*)* @gimp_free_select_tool_class_intern_init to void (i8*, i8*)*), i32 264, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpFreeSelectTool*)* @gimp_free_select_tool_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_free_select_tool_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_free_select_tool_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_selection_tool_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_free_select_tool_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_free_select_tool_parent_class, align 8
  %1 = load i32, i32* @GimpFreeSelectTool_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpFreeSelectTool_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpFreeSelectToolClass*
  call void @gimp_free_select_tool_class_init(%struct._GimpFreeSelectToolClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_free_select_tool_init(%struct._GimpFreeSelectTool* %fst) #3 {
entry:
  %fst.addr = alloca %struct._GimpFreeSelectTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %priv = alloca %struct.GimpFreeSelectToolPrivate*, align 8
  store %struct._GimpFreeSelectTool* %fst, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %0 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %1 = bitcast %struct._GimpFreeSelectTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %4 = bitcast %struct._GimpFreeSelectTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_free_select_tool_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct.GimpFreeSelectToolPrivate*
  store %struct.GimpFreeSelectToolPrivate* %5, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %6, i32 0, i32 3
  %7 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_set_wants_click(%struct._GimpToolControl* %7, i32 1)
  %8 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control4 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %8, i32 0, i32 3
  %9 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control4, align 8
  call void @gimp_tool_control_set_precision(%struct._GimpToolControl* %9, i32 2)
  %10 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control5 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %10, i32 0, i32 3
  %11 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control5, align 8
  call void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl* %11, i32 3)
  %12 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %grabbed_segment_index = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %12, i32 0, i32 0
  store i32 -1, i32* %grabbed_segment_index, align 4
  %13 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %saved_points_lower_segment = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %13, i32 0, i32 1
  store %struct._GimpVector2* null, %struct._GimpVector2** %saved_points_lower_segment, align 8
  %14 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %saved_points_higher_segment = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %14, i32 0, i32 2
  store %struct._GimpVector2* null, %struct._GimpVector2** %saved_points_higher_segment, align 8
  %15 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %max_n_saved_points_lower_segment = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %15, i32 0, i32 3
  store i32 0, i32* %max_n_saved_points_lower_segment, align 4
  %16 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %max_n_saved_points_higher_segment = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %16, i32 0, i32 4
  store i32 0, i32* %max_n_saved_points_higher_segment, align 4
  %17 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %polygon_modified = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %17, i32 0, i32 5
  store i32 0, i32* %polygon_modified, align 4
  %18 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %show_pending_point = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %18, i32 0, i32 7
  store i32 0, i32* %show_pending_point, align 4
  %19 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %points = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %19, i32 0, i32 8
  store %struct._GimpVector2* null, %struct._GimpVector2** %points, align 8
  %20 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %n_points = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %20, i32 0, i32 10
  store i32 0, i32* %n_points, align 4
  %21 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %max_n_points = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %21, i32 0, i32 9
  store i32 0, i32* %max_n_points, align 4
  %22 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %segment_indices = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %22, i32 0, i32 11
  store i32* null, i32** %segment_indices, align 8
  %23 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %n_segment_indices = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %23, i32 0, i32 13
  store i32 0, i32* %n_segment_indices, align 4
  %24 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %max_n_segment_indices = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %24, i32 0, i32 12
  store i32 0, i32* %max_n_segment_indices, align 4
  %25 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %constrain_angle = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %25, i32 0, i32 15
  store i32 0, i32* %constrain_angle, align 4
  %26 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %supress_handles = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %26, i32 0, i32 16
  store i32 0, i32* %supress_handles, align 4
  %27 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %last_click_time = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %27, i32 0, i32 18
  store i32 0, i32* %last_click_time, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_free_select_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, i8* %data) #3 {
entry:
  %callback.addr = alloca void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  %call = call i64 @gimp_free_select_tool_get_type() #7
  %call1 = call i64 @gimp_selection_options_get_type() #7
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0)) #6
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.3, i32 0, i32 0)) #6
  %1 = load i8*, i8** %data.addr, align 8
  call void %0(i64 %call, i64 %call1, %struct._GtkWidget* (%struct._GimpToolOptions*)* @gimp_selection_options_gui, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i8* %call2, i8* %call3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i8* %1)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_selection_options_get_type() #2

declare %struct._GtkWidget* @gimp_selection_options_gui(%struct._GimpToolOptions*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

; Function Attrs: nounwind uwtable
define void @gimp_free_select_tool_select(%struct._GimpFreeSelectTool* %fst, %struct._GimpDisplay* %display) #3 {
entry:
  %fst.addr = alloca %struct._GimpFreeSelectTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpFreeSelectTool* %fst, %struct._GimpFreeSelectTool** %fst.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %1 = bitcast %struct._GimpFreeSelectTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_free_select_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_free_select_tool_select, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_free_select_tool_select, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %27 = bitcast %struct._GimpFreeSelectTool* %26 to %struct._GTypeInstance*
  %g_class39 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %27, i32 0, i32 0
  %28 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class39, align 8
  %29 = bitcast %struct._GTypeClass* %28 to %struct._GimpFreeSelectToolClass*
  %select = getelementptr inbounds %struct._GimpFreeSelectToolClass, %struct._GimpFreeSelectToolClass* %29, i32 0, i32 1
  %30 = load void (%struct._GimpFreeSelectTool*, %struct._GimpDisplay*)*, void (%struct._GimpFreeSelectTool*, %struct._GimpDisplay*)** %select, align 8
  %31 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %32 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %30(%struct._GimpFreeSelectTool* %31, %struct._GimpDisplay* %32)
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #5

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_display_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_free_select_tool_get_points(%struct._GimpFreeSelectTool* %fst, %struct._GimpVector2** %points, i32* %n_points) #3 {
entry:
  %fst.addr = alloca %struct._GimpFreeSelectTool*, align 8
  %points.addr = alloca %struct._GimpVector2**, align 8
  %n_points.addr = alloca i32*, align 8
  %priv = alloca %struct.GimpFreeSelectToolPrivate*, align 8
  store %struct._GimpFreeSelectTool* %fst, %struct._GimpFreeSelectTool** %fst.addr, align 8
  store %struct._GimpVector2** %points, %struct._GimpVector2*** %points.addr, align 8
  store i32* %n_points, i32** %n_points.addr, align 8
  %0 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %1 = bitcast %struct._GimpFreeSelectTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_free_select_tool_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpFreeSelectToolPrivate*
  store %struct.GimpFreeSelectToolPrivate* %2, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct._GimpVector2**, %struct._GimpVector2*** %points.addr, align 8
  %cmp = icmp ne %struct._GimpVector2** %3, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %4 = load i32*, i32** %n_points.addr, align 8
  %cmp2 = icmp ne i32* %4, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_free_select_tool_get_points, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %points3 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %5, i32 0, i32 8
  %6 = load %struct._GimpVector2*, %struct._GimpVector2** %points3, align 8
  %7 = load %struct._GimpVector2**, %struct._GimpVector2*** %points.addr, align 8
  store %struct._GimpVector2* %6, %struct._GimpVector2** %7, align 8
  %8 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %n_points4 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %8, i32 0, i32 10
  %9 = load i32, i32* %n_points4, align 4
  %10 = load i32*, i32** %n_points.addr, align 8
  store i32 %9, i32* %10, align 4
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_free_select_tool_class_init(%struct._GimpFreeSelectToolClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpFreeSelectToolClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %tool_class = alloca %struct._GimpToolClass*, align 8
  %draw_tool_class = alloca %struct._GimpDrawToolClass*, align 8
  store %struct._GimpFreeSelectToolClass* %klass, %struct._GimpFreeSelectToolClass** %klass.addr, align 8
  %0 = load %struct._GimpFreeSelectToolClass*, %struct._GimpFreeSelectToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpFreeSelectToolClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpFreeSelectToolClass*, %struct._GimpFreeSelectToolClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpFreeSelectToolClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_tool_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpToolClass*
  store %struct._GimpToolClass* %5, %struct._GimpToolClass** %tool_class, align 8
  %6 = load %struct._GimpFreeSelectToolClass*, %struct._GimpFreeSelectToolClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpFreeSelectToolClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_draw_tool_get_type() #7
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpDrawToolClass*
  store %struct._GimpDrawToolClass* %8, %struct._GimpDrawToolClass** %draw_tool_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_free_select_tool_finalize, void (%struct._GObject*)** %finalize, align 8
  %10 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %control = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %10, i32 0, i32 4
  store void (%struct._GimpTool*, i32, %struct._GimpDisplay*)* @gimp_free_select_tool_control, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)** %control, align 8
  %11 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %oper_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %11, i32 0, i32 12
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_free_select_tool_oper_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %oper_update, align 8
  %12 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %12, i32 0, i32 13
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)* @gimp_free_select_tool_cursor_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %13 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %13, i32 0, i32 5
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_free_select_tool_button_press, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_press, align 8
  %14 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_release = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %14, i32 0, i32 6
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_free_select_tool_button_release, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_release, align 8
  %15 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %motion = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %15, i32 0, i32 7
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_free_select_tool_motion, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %motion, align 8
  %16 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %key_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %16, i32 0, i32 8
  store i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)* @gimp_free_select_tool_key_press, i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)** %key_press, align 8
  %17 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %modifier_key = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %17, i32 0, i32 10
  store void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_free_select_tool_modifier_key, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)** %modifier_key, align 8
  %18 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %active_modifier_key = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %18, i32 0, i32 11
  store void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_free_select_tool_active_modifier_key, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)** %active_modifier_key, align 8
  %19 = load %struct._GimpDrawToolClass*, %struct._GimpDrawToolClass** %draw_tool_class, align 8
  %draw = getelementptr inbounds %struct._GimpDrawToolClass, %struct._GimpDrawToolClass* %19, i32 0, i32 1
  store void (%struct._GimpDrawTool*)* @gimp_free_select_tool_draw, void (%struct._GimpDrawTool*)** %draw, align 8
  %20 = load %struct._GimpFreeSelectToolClass*, %struct._GimpFreeSelectToolClass** %klass.addr, align 8
  %select = getelementptr inbounds %struct._GimpFreeSelectToolClass, %struct._GimpFreeSelectToolClass* %20, i32 0, i32 1
  store void (%struct._GimpFreeSelectTool*, %struct._GimpDisplay*)* @gimp_free_select_tool_real_select, void (%struct._GimpFreeSelectTool*, %struct._GimpDisplay*)** %select, align 8
  %21 = load %struct._GimpFreeSelectToolClass*, %struct._GimpFreeSelectToolClass** %klass.addr, align 8
  %22 = bitcast %struct._GimpFreeSelectToolClass* %21 to i8*
  call void @g_type_class_add_private(i8* %22, i64 200)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_draw_tool_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_free_select_tool_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %fst = alloca %struct._GimpFreeSelectTool*, align 8
  %priv = alloca %struct.GimpFreeSelectToolPrivate*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_free_select_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFreeSelectTool*
  store %struct._GimpFreeSelectTool* %2, %struct._GimpFreeSelectTool** %fst, align 8
  %3 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst, align 8
  %4 = bitcast %struct._GimpFreeSelectTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_free_select_tool_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct.GimpFreeSelectToolPrivate*
  store %struct.GimpFreeSelectToolPrivate* %5, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %6 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %points = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %6, i32 0, i32 8
  %7 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %8 = bitcast %struct._GimpVector2* %7 to i8*
  call void @g_free(i8* %8)
  %9 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %segment_indices = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %9, i32 0, i32 11
  %10 = load i32*, i32** %segment_indices, align 8
  %11 = bitcast i32* %10 to i8*
  call void @g_free(i8* %11)
  %12 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %saved_points_lower_segment = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %12, i32 0, i32 1
  %13 = load %struct._GimpVector2*, %struct._GimpVector2** %saved_points_lower_segment, align 8
  %14 = bitcast %struct._GimpVector2* %13 to i8*
  call void @g_free(i8* %14)
  %15 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %saved_points_higher_segment = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %15, i32 0, i32 2
  %16 = load %struct._GimpVector2*, %struct._GimpVector2** %saved_points_higher_segment, align 8
  %17 = bitcast %struct._GimpVector2* %16 to i8*
  call void @g_free(i8* %17)
  %18 = load i8*, i8** @gimp_free_select_tool_parent_class, align 8
  %19 = bitcast i8* %18 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %19, i64 80)
  %20 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %20, i32 0, i32 6
  %21 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %22 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %21(%struct._GObject* %22)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_free_select_tool_control(%struct._GimpTool* %tool, i32 %action, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %action.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %fst = alloca %struct._GimpFreeSelectTool*, align 8
  %priv = alloca %struct.GimpFreeSelectToolPrivate*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %action, i32* %action.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_free_select_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFreeSelectTool*
  store %struct._GimpFreeSelectTool* %2, %struct._GimpFreeSelectTool** %fst, align 8
  %3 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst, align 8
  %4 = bitcast %struct._GimpFreeSelectTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_free_select_tool_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct.GimpFreeSelectToolPrivate*
  store %struct.GimpFreeSelectToolPrivate* %5, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %6 = load i32, i32* %action.addr, align 4
  switch i32 %6, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry, %entry
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %7 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %grabbed_segment_index = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %7, i32 0, i32 0
  store i32 -1, i32* %grabbed_segment_index, align 4
  %8 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %show_pending_point = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %8, i32 0, i32 7
  store i32 0, i32* %show_pending_point, align 4
  %9 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %n_points = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %9, i32 0, i32 10
  store i32 0, i32* %n_points, align 4
  %10 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %n_segment_indices = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %10, i32 0, i32 13
  store i32 0, i32* %n_segment_indices, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.4, %sw.bb
  %11 = load i8*, i8** @gimp_free_select_tool_parent_class, align 8
  %12 = bitcast i8* %11 to %struct._GTypeClass*
  %call5 = call i64 @gimp_tool_get_type() #7
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %12, i64 %call5)
  %13 = bitcast %struct._GTypeClass* %call6 to %struct._GimpToolClass*
  %control = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %13, i32 0, i32 4
  %14 = load void (%struct._GimpTool*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)** %control, align 8
  %15 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %16 = load i32, i32* %action.addr, align 4
  %17 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %14(%struct._GimpTool* %15, i32 %16, %struct._GimpDisplay* %17)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_free_select_tool_oper_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, i32 %proximity, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %proximity.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %fst = alloca %struct._GimpFreeSelectTool*, align 8
  %priv = alloca %struct.GimpFreeSelectToolPrivate*, align 8
  %hovering_first_point = alloca i32, align 4
  %start_point_x = alloca double, align 8
  %start_point_y = alloca double, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store i32 %proximity, i32* %proximity.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_free_select_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFreeSelectTool*
  store %struct._GimpFreeSelectTool* %2, %struct._GimpFreeSelectTool** %fst, align 8
  %3 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst, align 8
  %4 = bitcast %struct._GimpFreeSelectTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_free_select_tool_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct.GimpFreeSelectToolPrivate*
  store %struct.GimpFreeSelectToolPrivate* %5, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %6 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst, align 8
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %8 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  call void @gimp_free_select_tool_handle_segment_selection(%struct._GimpFreeSelectTool* %6, %struct._GimpDisplay* %7, %struct._GimpCoords* %8)
  %9 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst, align 8
  %10 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %11 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %call4 = call i32 @gimp_free_select_tool_should_close(%struct._GimpFreeSelectTool* %9, %struct._GimpDisplay* %10, i32 0, %struct._GimpCoords* %11)
  store i32 %call4, i32* %hovering_first_point, align 4
  %12 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %13 = bitcast %struct._GimpTool* %12 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_draw_tool_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call5)
  %14 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %14)
  %15 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %15, i32 0, i32 0
  %16 = load double, double* %x, align 8
  %17 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %last_coords = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %17, i32 0, i32 17
  %x7 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %last_coords, i32 0, i32 0
  store double %16, double* %x7, align 8
  %18 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %18, i32 0, i32 1
  %19 = load double, double* %y, align 8
  %20 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %last_coords8 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %20, i32 0, i32 17
  %y9 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %last_coords8, i32 0, i32 1
  store double %19, double* %y9, align 8
  %21 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %n_points = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %21, i32 0, i32 10
  %22 = load i32, i32* %n_points, align 4
  %cmp = icmp eq i32 %22, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %23 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst, align 8
  %call10 = call i32 @gimp_free_select_tool_is_point_grabbed(%struct._GimpFreeSelectTool* %23)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false.12

land.lhs.true:                                    ; preds = %lor.lhs.false
  %24 = load i32, i32* %hovering_first_point, align 4
  %tobool11 = icmp ne i32 %24, 0
  br i1 %tobool11, label %lor.lhs.false.12, label %if.then

lor.lhs.false.12:                                 ; preds = %land.lhs.true, %lor.lhs.false
  %25 = load i32, i32* %proximity.addr, align 4
  %tobool13 = icmp ne i32 %25, 0
  br i1 %tobool13, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false.12, %land.lhs.true, %entry
  %26 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %show_pending_point = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %26, i32 0, i32 7
  store i32 0, i32* %show_pending_point, align 4
  br label %if.end.34

if.else:                                          ; preds = %lor.lhs.false.12
  %27 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %show_pending_point14 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %27, i32 0, i32 7
  store i32 1, i32* %show_pending_point14, align 4
  %28 = load i32, i32* %hovering_first_point, align 4
  %tobool15 = icmp ne i32 %28, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.else
  %29 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %pending_point = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %29, i32 0, i32 6
  %30 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %points = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %30, i32 0, i32 8
  %31 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %arrayidx = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %31, i64 0
  %32 = bitcast %struct._GimpVector2* %pending_point to i8*
  %33 = bitcast %struct._GimpVector2* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 16, i32 8, i1 false)
  br label %if.end.33

if.else.17:                                       ; preds = %if.else
  %34 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x18 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %34, i32 0, i32 0
  %35 = load double, double* %x18, align 8
  %36 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %pending_point19 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %36, i32 0, i32 6
  %x20 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %pending_point19, i32 0, i32 0
  store double %35, double* %x20, align 8
  %37 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y21 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %37, i32 0, i32 1
  %38 = load double, double* %y21, align 8
  %39 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %pending_point22 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %39, i32 0, i32 6
  %y23 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %pending_point22, i32 0, i32 1
  store double %38, double* %y23, align 8
  %40 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %constrain_angle = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %40, i32 0, i32 15
  %41 = load i32, i32* %constrain_angle, align 4
  %tobool24 = icmp ne i32 %41, 0
  br i1 %tobool24, label %land.lhs.true.25, label %if.end

land.lhs.true.25:                                 ; preds = %if.else.17
  %42 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %n_points26 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %42, i32 0, i32 10
  %43 = load i32, i32* %n_points26, align 4
  %cmp27 = icmp sgt i32 %43, 0
  br i1 %cmp27, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %land.lhs.true.25
  %44 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst, align 8
  call void @gimp_free_select_tool_get_last_point(%struct._GimpFreeSelectTool* %44, double* %start_point_x, double* %start_point_y)
  %45 = load double, double* %start_point_x, align 8
  %46 = load double, double* %start_point_y, align 8
  %47 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %pending_point29 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %47, i32 0, i32 6
  %x30 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %pending_point29, i32 0, i32 0
  %48 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %pending_point31 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %48, i32 0, i32 6
  %y32 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %pending_point31, i32 0, i32 1
  call void @gimp_constrain_line(double %45, double %46, double* %x30, double* %y32, i32 12)
  br label %if.end

if.end:                                           ; preds = %if.then.28, %land.lhs.true.25, %if.else.17
  br label %if.end.33

if.end.33:                                        ; preds = %if.end, %if.then.16
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then
  %49 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %50 = bitcast %struct._GimpTool* %49 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_draw_tool_get_type() #7
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call35)
  %51 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %51)
  %52 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display37 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %52, i32 0, i32 4
  %53 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display37, align 8
  %cmp38 = icmp eq %struct._GimpDisplay* %53, null
  br i1 %cmp38, label %if.then.39, label %if.else.42

if.then.39:                                       ; preds = %if.end.34
  %54 = load i8*, i8** @gimp_free_select_tool_parent_class, align 8
  %55 = bitcast i8* %54 to %struct._GTypeClass*
  %call40 = call i64 @gimp_tool_get_type() #7
  %call41 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %55, i64 %call40)
  %56 = bitcast %struct._GTypeClass* %call41 to %struct._GimpToolClass*
  %oper_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %56, i32 0, i32 12
  %57 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %oper_update, align 8
  %58 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %59 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %60 = load i32, i32* %state.addr, align 4
  %61 = load i32, i32* %proximity.addr, align 4
  %62 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %57(%struct._GimpTool* %58, %struct._GimpCoords* %59, i32 %60, i32 %61, %struct._GimpDisplay* %62)
  br label %if.end.43

if.else.42:                                       ; preds = %if.end.34
  %63 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst, align 8
  %64 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %65 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %66 = load i32, i32* %proximity.addr, align 4
  call void @gimp_free_select_tool_status_update(%struct._GimpFreeSelectTool* %63, %struct._GimpDisplay* %64, %struct._GimpCoords* %65, i32 %66)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.42, %if.then.39
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_free_select_tool_cursor_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %fst = alloca %struct._GimpFreeSelectTool*, align 8
  %modifier = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_free_select_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFreeSelectTool*
  store %struct._GimpFreeSelectTool* %2, %struct._GimpFreeSelectTool** %fst, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display2 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 4
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display2, align 8
  %cmp = icmp eq %struct._GimpDisplay* %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** @gimp_free_select_tool_parent_class, align 8
  %6 = bitcast i8* %5 to %struct._GTypeClass*
  %call3 = call i64 @gimp_tool_get_type() #7
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %6, i64 %call3)
  %7 = bitcast %struct._GTypeClass* %call4 to %struct._GimpToolClass*
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %7, i32 0, i32 13
  %8 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %9 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %10 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %11 = load i32, i32* %state.addr, align 4
  %12 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %8(%struct._GimpTool* %9, %struct._GimpCoords* %10, i32 %11, %struct._GimpDisplay* %12)
  br label %if.end.13

if.else:                                          ; preds = %entry
  %13 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst, align 8
  %call5 = call i32 @gimp_free_select_tool_is_point_grabbed(%struct._GimpFreeSelectTool* %13)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %land.lhs.true, label %if.else.9

land.lhs.true:                                    ; preds = %if.else
  %14 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst, align 8
  %15 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %16 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %call6 = call i32 @gimp_free_select_tool_should_close(%struct._GimpFreeSelectTool* %14, %struct._GimpDisplay* %15, i32 0, %struct._GimpCoords* %16)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.else.9, label %if.then.8

if.then.8:                                        ; preds = %land.lhs.true
  store i32 5, i32* %modifier, align 4
  br label %if.end

if.else.9:                                        ; preds = %land.lhs.true, %if.else
  store i32 0, i32* %modifier, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.9, %if.then.8
  %17 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %18 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %19 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %19, i32 0, i32 3
  %20 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call10 = call i32 @gimp_tool_control_get_cursor(%struct._GimpToolControl* %20)
  %21 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control11 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %21, i32 0, i32 3
  %22 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control11, align 8
  %call12 = call i32 @gimp_tool_control_get_tool_cursor(%struct._GimpToolControl* %22)
  %23 = load i32, i32* %modifier, align 4
  call void @gimp_tool_set_cursor(%struct._GimpTool* %17, %struct._GimpDisplay* %18, i32 %call10, i32 %call12, i32 %23)
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_free_select_tool_button_press(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %press_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %press_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %draw_tool = alloca %struct._GimpDrawTool*, align 8
  %fst = alloca %struct._GimpFreeSelectTool*, align 8
  %priv = alloca %struct.GimpFreeSelectToolPrivate*, align 8
  %options = alloca %struct._GimpSelectionOptions*, align 8
  %point_to_add = alloca %struct._GimpVector2, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %press_type, i32* %press_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_draw_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawTool*
  store %struct._GimpDrawTool* %2, %struct._GimpDrawTool** %draw_tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_free_select_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpFreeSelectTool*
  store %struct._GimpFreeSelectTool* %5, %struct._GimpFreeSelectTool** %fst, align 8
  %6 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst, align 8
  %7 = bitcast %struct._GimpFreeSelectTool* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_free_select_tool_get_type() #7
  %call5 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast i8* %call5 to %struct.GimpFreeSelectToolPrivate*
  store %struct.GimpFreeSelectToolPrivate* %8, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %9 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %10 = bitcast %struct._GimpTool* %9 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_tool_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call6)
  %11 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpTool*
  %call8 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %11)
  %12 = bitcast %struct._GimpToolOptions* %call8 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_selection_options_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call9)
  %13 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpSelectionOptions*
  store %struct._GimpSelectionOptions* %13, %struct._GimpSelectionOptions** %options, align 8
  %14 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display11 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %14, i32 0, i32 4
  %15 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display11, align 8
  %tobool = icmp ne %struct._GimpDisplay* %15, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %16 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display12 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %16, i32 0, i32 4
  %17 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display12, align 8
  %18 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %cmp = icmp ne %struct._GimpDisplay* %17, %18
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %19 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %20 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_control(%struct._GimpTool* %19, i32 2, %struct._GimpDisplay* %20)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %21 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display13 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %21, i32 0, i32 4
  %22 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display13, align 8
  %cmp14 = icmp eq %struct._GimpDisplay* %22, null
  br i1 %cmp14, label %if.then.15, label %if.end.23

if.then.15:                                       ; preds = %if.end
  %23 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst, align 8
  %24 = bitcast %struct._GimpFreeSelectTool* %23 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_selection_tool_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call16)
  %25 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpSelectionTool*
  %26 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %27 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %call18 = call i32 @gimp_selection_tool_start_edit(%struct._GimpSelectionTool* %25, %struct._GimpDisplay* %26, %struct._GimpCoords* %27)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.15
  br label %return

if.end.21:                                        ; preds = %if.then.15
  %28 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %29 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display22 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %29, i32 0, i32 4
  store %struct._GimpDisplay* %28, %struct._GimpDisplay** %display22, align 8
  %30 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %31 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_draw_tool_start(%struct._GimpDrawTool* %30, %struct._GimpDisplay* %31)
  %32 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %options, align 8
  %operation = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %32, i32 0, i32 1
  %33 = load i32, i32* %operation, align 4
  %34 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %operation_at_start = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %34, i32 0, i32 14
  store i32 %33, i32* %operation_at_start, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.21, %if.end
  %35 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %35, i32 0, i32 3
  %36 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_activate(%struct._GimpToolControl* %36)
  %37 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %37)
  %38 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst, align 8
  %call24 = call i32 @gimp_free_select_tool_is_point_grabbed(%struct._GimpFreeSelectTool* %38)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.end.23
  %39 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst, align 8
  call void @gimp_free_select_tool_prepare_for_move(%struct._GimpFreeSelectTool* %39)
  br label %if.end.36

if.else:                                          ; preds = %if.end.23
  %40 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %n_points = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %40, i32 0, i32 10
  %41 = load i32, i32* %n_points, align 4
  %cmp27 = icmp sgt i32 %41, 0
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %if.else
  %42 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %pending_point = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %42, i32 0, i32 6
  %43 = bitcast %struct._GimpVector2* %point_to_add to i8*
  %44 = bitcast %struct._GimpVector2* %pending_point to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 16, i32 8, i1 false)
  br label %if.end.32

if.else.29:                                       ; preds = %if.else
  %45 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %45, i32 0, i32 0
  %46 = load double, double* %x, align 8
  %x30 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %point_to_add, i32 0, i32 0
  store double %46, double* %x30, align 8
  %47 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %47, i32 0, i32 1
  %48 = load double, double* %y, align 8
  %y31 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %point_to_add, i32 0, i32 1
  store double %48, double* %y31, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.29, %if.then.28
  %49 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst, align 8
  %x33 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %point_to_add, i32 0, i32 0
  %50 = load double, double* %x33, align 8
  %y34 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %point_to_add, i32 0, i32 1
  %51 = load double, double* %y34, align 8
  call void @gimp_free_select_tool_add_point(%struct._GimpFreeSelectTool* %49, double %50, double %51)
  %52 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst, align 8
  %53 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %n_points35 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %53, i32 0, i32 10
  %54 = load i32, i32* %n_points35, align 4
  %sub = sub nsw i32 %54, 1
  call void @gimp_free_select_tool_add_segment_index(%struct._GimpFreeSelectTool* %52, i32 %sub)
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.32, %if.then.26
  %55 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %55)
  br label %return

return:                                           ; preds = %if.end.36, %if.then.20
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_free_select_tool_button_release(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %release_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %release_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %fst = alloca %struct._GimpFreeSelectTool*, align 8
  %priv = alloca %struct.GimpFreeSelectToolPrivate*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %release_type, i32* %release_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_free_select_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFreeSelectTool*
  store %struct._GimpFreeSelectTool* %2, %struct._GimpFreeSelectTool** %fst, align 8
  %3 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst, align 8
  %4 = bitcast %struct._GimpFreeSelectTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_free_select_tool_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct.GimpFreeSelectToolPrivate*
  store %struct.GimpFreeSelectToolPrivate* %5, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %6, i32 0, i32 3
  %7 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_halt(%struct._GimpToolControl* %7)
  %8 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst, align 8
  %9 = bitcast %struct._GimpFreeSelectTool* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_draw_tool_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %10)
  %11 = load i32, i32* %release_type.addr, align 4
  switch i32 %11, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 0, label %sw.bb.6
    i32 1, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry, %entry
  %12 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %polygon_modified = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %12, i32 0, i32 5
  store i32 0, i32* %polygon_modified, align 4
  %13 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst, align 8
  %14 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %15 = load i32, i32* %time.addr, align 4
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_free_select_tool_handle_click(%struct._GimpFreeSelectTool* %13, %struct._GimpCoords* %14, i32 %15, %struct._GimpDisplay* %16)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %17 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst, align 8
  %18 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %19 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_free_select_tool_handle_normal_release(%struct._GimpFreeSelectTool* %17, %struct._GimpCoords* %18, %struct._GimpDisplay* %19)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %20 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst, align 8
  call void @gimp_free_select_tool_handle_cancel(%struct._GimpFreeSelectTool* %20)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.7, %sw.bb.6, %sw.bb
  %21 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %polygon_modified8 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %21, i32 0, i32 5
  store i32 0, i32* %polygon_modified8, align 4
  %22 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst, align 8
  %23 = bitcast %struct._GimpFreeSelectTool* %22 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_draw_tool_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call9)
  %24 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %24)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_free_select_tool_motion(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %fst = alloca %struct._GimpFreeSelectTool*, align 8
  %priv = alloca %struct.GimpFreeSelectToolPrivate*, align 8
  %draw_tool = alloca %struct._GimpDrawTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_free_select_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFreeSelectTool*
  store %struct._GimpFreeSelectTool* %2, %struct._GimpFreeSelectTool** %fst, align 8
  %3 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst, align 8
  %4 = bitcast %struct._GimpFreeSelectTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_free_select_tool_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct.GimpFreeSelectToolPrivate*
  store %struct.GimpFreeSelectToolPrivate* %5, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %7 = bitcast %struct._GimpTool* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_draw_tool_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpDrawTool*
  store %struct._GimpDrawTool* %8, %struct._GimpDrawTool** %draw_tool, align 8
  %9 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %9)
  %10 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %10, i32 0, i32 0
  %11 = load double, double* %x, align 8
  %12 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %last_coords = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %12, i32 0, i32 17
  %x6 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %last_coords, i32 0, i32 0
  store double %11, double* %x6, align 8
  %13 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %13, i32 0, i32 1
  %14 = load double, double* %y, align 8
  %15 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %last_coords7 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %15, i32 0, i32 17
  %y8 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %last_coords7, i32 0, i32 1
  store double %14, double* %y8, align 8
  %16 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst, align 8
  %17 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x9 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %17, i32 0, i32 0
  %18 = load double, double* %x9, align 8
  %19 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y10 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %19, i32 0, i32 1
  %20 = load double, double* %y10, align 8
  call void @gimp_free_select_tool_update_motion(%struct._GimpFreeSelectTool* %16, double %18, double %20)
  %21 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %21)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_free_select_tool_key_press(%struct._GimpTool* %tool, %struct._GdkEventKey* %kevent, %struct._GimpDisplay* %display) #3 {
entry:
  %retval = alloca i32, align 4
  %tool.addr = alloca %struct._GimpTool*, align 8
  %kevent.addr = alloca %struct._GdkEventKey*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %fst = alloca %struct._GimpFreeSelectTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GdkEventKey* %kevent, %struct._GdkEventKey** %kevent.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_free_select_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFreeSelectTool*
  store %struct._GimpFreeSelectTool* %2, %struct._GimpFreeSelectTool** %fst, align 8
  %3 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %keyval = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %3, i32 0, i32 5
  %4 = load i32, i32* %keyval, align 4
  switch i32 %4, label %sw.default [
    i32 65288, label %sw.bb
    i32 65293, label %sw.bb.2
    i32 65421, label %sw.bb.2
    i32 65076, label %sw.bb.2
    i32 65307, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst, align 8
  call void @gimp_free_select_tool_remove_last_segment(%struct._GimpFreeSelectTool* %5)
  store i32 1, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry, %entry, %entry
  %6 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst, align 8
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_free_select_tool_commit(%struct._GimpFreeSelectTool* %6, %struct._GimpDisplay* %7)
  store i32 1, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  %8 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %9 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_control(%struct._GimpTool* %8, i32 2, %struct._GimpDisplay* %9)
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.3, %sw.bb.2, %sw.bb
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal void @gimp_free_select_tool_modifier_key(%struct._GimpTool* %tool, i32 %key, i32 %press, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %key.addr = alloca i32, align 4
  %press.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %draw_tool = alloca %struct._GimpDrawTool*, align 8
  %priv = alloca %struct.GimpFreeSelectToolPrivate*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %press, i32* %press.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_draw_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawTool*
  store %struct._GimpDrawTool* %2, %struct._GimpDrawTool** %draw_tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_free_select_tool_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct.GimpFreeSelectToolPrivate*
  store %struct.GimpFreeSelectToolPrivate* %5, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display4 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %6, i32 0, i32 4
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display4, align 8
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %cmp = icmp eq %struct._GimpDisplay* %7, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %9)
  %10 = load i32, i32* %state.addr, align 4
  %call5 = call i32 @gimp_get_constrain_behavior_mask()
  %and = and i32 %10, %call5
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %11 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %constrain_angle = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %11, i32 0, i32 15
  store i32 %cond, i32* %constrain_angle, align 4
  %12 = load i32, i32* %state.addr, align 4
  %and6 = and i32 %12, 1
  %tobool7 = icmp ne i32 %and6, 0
  %cond8 = select i1 %tobool7, i32 1, i32 0
  %13 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %supress_handles = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %13, i32 0, i32 16
  store i32 %cond8, i32* %supress_handles, align 4
  %14 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load i8*, i8** @gimp_free_select_tool_parent_class, align 8
  %16 = bitcast i8* %15 to %struct._GTypeClass*
  %call9 = call i64 @gimp_tool_get_type() #7
  %call10 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %16, i64 %call9)
  %17 = bitcast %struct._GTypeClass* %call10 to %struct._GimpToolClass*
  %modifier_key = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %17, i32 0, i32 10
  %18 = load void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)** %modifier_key, align 8
  %19 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %20 = load i32, i32* %key.addr, align 4
  %21 = load i32, i32* %press.addr, align 4
  %22 = load i32, i32* %state.addr, align 4
  %23 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %18(%struct._GimpTool* %19, i32 %20, i32 %21, i32 %22, %struct._GimpDisplay* %23)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_free_select_tool_active_modifier_key(%struct._GimpTool* %tool, i32 %key, i32 %press, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %key.addr = alloca i32, align 4
  %press.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %draw_tool = alloca %struct._GimpDrawTool*, align 8
  %priv = alloca %struct.GimpFreeSelectToolPrivate*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %press, i32* %press.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_draw_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawTool*
  store %struct._GimpDrawTool* %2, %struct._GimpDrawTool** %draw_tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_free_select_tool_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct.GimpFreeSelectToolPrivate*
  store %struct.GimpFreeSelectToolPrivate* %5, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display4 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %6, i32 0, i32 4
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display4, align 8
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %cmp = icmp ne %struct._GimpDisplay* %7, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %9)
  %10 = load i32, i32* %state.addr, align 4
  %call5 = call i32 @gimp_get_constrain_behavior_mask()
  %and = and i32 %10, %call5
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %11 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %constrain_angle = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %11, i32 0, i32 15
  store i32 %cond, i32* %constrain_angle, align 4
  %12 = load i32, i32* %state.addr, align 4
  %and6 = and i32 %12, 256
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %14 = bitcast %struct._GimpTool* %13 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_free_select_tool_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call9)
  %15 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpFreeSelectTool*
  %16 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %last_coords = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %16, i32 0, i32 17
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %last_coords, i32 0, i32 0
  %17 = load double, double* %x, align 8
  %18 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %last_coords11 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %18, i32 0, i32 17
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %last_coords11, i32 0, i32 1
  %19 = load double, double* %y, align 8
  call void @gimp_free_select_tool_update_motion(%struct._GimpFreeSelectTool* %15, double %17, double %19)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.end
  %20 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %20)
  %21 = load i8*, i8** @gimp_free_select_tool_parent_class, align 8
  %22 = bitcast i8* %21 to %struct._GTypeClass*
  %call13 = call i64 @gimp_tool_get_type() #7
  %call14 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %22, i64 %call13)
  %23 = bitcast %struct._GTypeClass* %call14 to %struct._GimpToolClass*
  %active_modifier_key = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %23, i32 0, i32 11
  %24 = load void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)** %active_modifier_key, align 8
  %25 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %26 = load i32, i32* %key.addr, align 4
  %27 = load i32, i32* %press.addr, align 4
  %28 = load i32, i32* %state.addr, align 4
  %29 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %24(%struct._GimpTool* %25, i32 %26, i32 %27, i32 %28, %struct._GimpDisplay* %29)
  br label %return

return:                                           ; preds = %if.end.12, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_free_select_tool_draw(%struct._GimpDrawTool* %draw_tool) #3 {
entry:
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %fst = alloca %struct._GimpFreeSelectTool*, align 8
  %priv = alloca %struct.GimpFreeSelectToolPrivate*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %stroke_group = alloca %struct._GimpCanvasGroup*, align 8
  %hovering_first_point = alloca i32, align 4
  %handles_wants_to_show = alloca i32, align 4
  %coords = alloca %struct._GimpCoords, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %point = alloca %struct._GimpVector2*, align 8
  %dist = alloca double, align 8
  %handle_type = alloca i32, align 4
  %item = alloca %struct._GimpCanvasItem*, align 8
  %last = alloca %struct._GimpVector2, align 8
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_free_select_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFreeSelectTool*
  store %struct._GimpFreeSelectTool* %2, %struct._GimpFreeSelectTool** %fst, align 8
  %3 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst, align 8
  %4 = bitcast %struct._GimpFreeSelectTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_free_select_tool_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct.GimpFreeSelectToolPrivate*
  store %struct.GimpFreeSelectToolPrivate* %5, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %6 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %7 = bitcast %struct._GimpDrawTool* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_tool_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpTool*
  store %struct._GimpTool* %8, %struct._GimpTool** %tool, align 8
  store i32 0, i32* %hovering_first_point, align 4
  store i32 0, i32* %handles_wants_to_show, align 4
  %9 = bitcast %struct._GimpCoords* %coords to i8*
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 64, i32 8, i1 false)
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords, i32 0, i32 0
  %10 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %last_coords = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %10, i32 0, i32 17
  %x6 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %last_coords, i32 0, i32 0
  %11 = load double, double* %x6, align 8
  store double %11, double* %x, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords, i32 0, i32 1
  %12 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %last_coords7 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %12, i32 0, i32 17
  %y8 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %last_coords7, i32 0, i32 1
  %13 = load double, double* %y8, align 8
  store double %13, double* %y, align 8
  %14 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %14, i32 0, i32 4
  %15 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %15, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.69

if.end:                                           ; preds = %entry
  %16 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst, align 8
  %17 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display9 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %17, i32 0, i32 4
  %18 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display9, align 8
  %call10 = call i32 @gimp_free_select_tool_should_close(%struct._GimpFreeSelectTool* %16, %struct._GimpDisplay* %18, i32 0, %struct._GimpCoords* %coords)
  store i32 %call10, i32* %hovering_first_point, align 4
  %19 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %call11 = call %struct._GimpCanvasGroup* @gimp_draw_tool_add_stroke_group(%struct._GimpDrawTool* %19)
  store %struct._GimpCanvasGroup* %call11, %struct._GimpCanvasGroup** %stroke_group, align 8
  %20 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %21 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %stroke_group, align 8
  call void @gimp_draw_tool_push_group(%struct._GimpDrawTool* %20, %struct._GimpCanvasGroup* %21)
  %22 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %23 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %points = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %23, i32 0, i32 8
  %24 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %25 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %n_points = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %25, i32 0, i32 10
  %26 = load i32, i32* %n_points, align 4
  %call12 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_lines(%struct._GimpDrawTool* %22, %struct._GimpVector2* %24, i32 %26, i32 0)
  %27 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  call void @gimp_draw_tool_pop_group(%struct._GimpDrawTool* %27)
  %28 = load i32, i32* %hovering_first_point, align 4
  %tobool13 = icmp ne i32 %28, 0
  br i1 %tobool13, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %29 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %29, i32 0, i32 3
  %30 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call14 = call i32 @gimp_tool_control_is_active(%struct._GimpToolControl* %30)
  %tobool15 = icmp ne i32 %call14, 0
  %lnot = xor i1 %tobool15, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end
  %31 = phi i1 [ true, %if.end ], [ %lnot, %lor.rhs ]
  %lor.ext = zext i1 %31 to i32
  store i32 %lor.ext, i32* %handles_wants_to_show, align 4
  %32 = load i32, i32* %handles_wants_to_show, align 4
  %tobool16 = icmp ne i32 %32, 0
  br i1 %tobool16, label %land.lhs.true, label %if.end.56

land.lhs.true:                                    ; preds = %lor.end
  %33 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %supress_handles = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %33, i32 0, i32 16
  %34 = load i32, i32* %supress_handles, align 4
  %tobool17 = icmp ne i32 %34, 0
  br i1 %tobool17, label %if.end.56, label %if.then.18

if.then.18:                                       ; preds = %land.lhs.true
  store i32 0, i32* %i, align 4
  store i32 0, i32* %n, align 4
  %35 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control19 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %35, i32 0, i32 3
  %36 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control19, align 8
  %call20 = call i32 @gimp_tool_control_is_active(%struct._GimpToolControl* %36)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %land.lhs.true.22, label %if.else

land.lhs.true.22:                                 ; preds = %if.then.18
  %37 = load i32, i32* %hovering_first_point, align 4
  %tobool23 = icmp ne i32 %37, 0
  br i1 %tobool23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %land.lhs.true.22
  %38 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %n_segment_indices = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %38, i32 0, i32 13
  %39 = load i32, i32* %n_segment_indices, align 4
  %cmp = icmp slt i32 %39, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.24
  %40 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %n_segment_indices25 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %40, i32 0, i32 13
  %41 = load i32, i32* %n_segment_indices25, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.24
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %41, %cond.true ], [ 1, %cond.false ]
  store i32 %cond, i32* %n, align 4
  br label %if.end.27

if.else:                                          ; preds = %land.lhs.true.22, %if.then.18
  %42 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %n_segment_indices26 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %42, i32 0, i32 13
  %43 = load i32, i32* %n_segment_indices26, align 4
  store i32 %43, i32* %n, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %cond.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.27
  %44 = load i32, i32* %i, align 4
  %45 = load i32, i32* %n, align 4
  %cmp28 = icmp slt i32 %44, %45
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store %struct._GimpVector2* null, %struct._GimpVector2** %point, align 8
  store double 0.000000e+00, double* %dist, align 8
  store i32 -1, i32* %handle_type, align 4
  %46 = load i32, i32* %i, align 4
  %idxprom = sext i32 %46 to i64
  %47 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %segment_indices = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %47, i32 0, i32 11
  %48 = load i32*, i32** %segment_indices, align 8
  %arrayidx = getelementptr inbounds i32, i32* %48, i64 %idxprom
  %49 = load i32, i32* %arrayidx, align 4
  %idxprom29 = sext i32 %49 to i64
  %50 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %points30 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %50, i32 0, i32 8
  %51 = load %struct._GimpVector2*, %struct._GimpVector2** %points30, align 8
  %arrayidx31 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %51, i64 %idxprom29
  store %struct._GimpVector2* %arrayidx31, %struct._GimpVector2** %point, align 8
  %52 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %53 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display32 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %53, i32 0, i32 4
  %54 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display32, align 8
  %55 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %last_coords33 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %55, i32 0, i32 17
  %x34 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %last_coords33, i32 0, i32 0
  %56 = load double, double* %x34, align 8
  %57 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %last_coords35 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %57, i32 0, i32 17
  %y36 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %last_coords35, i32 0, i32 1
  %58 = load double, double* %y36, align 8
  %59 = load %struct._GimpVector2*, %struct._GimpVector2** %point, align 8
  %x37 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %59, i32 0, i32 0
  %60 = load double, double* %x37, align 8
  %61 = load %struct._GimpVector2*, %struct._GimpVector2** %point, align 8
  %y38 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %61, i32 0, i32 1
  %62 = load double, double* %y38, align 8
  %call39 = call double @gimp_draw_tool_calc_distance_square(%struct._GimpDrawTool* %52, %struct._GimpDisplay* %54, double %56, double %58, double %60, double %62)
  store double %call39, double* %dist, align 8
  %63 = load double, double* %dist, align 8
  %cmp40 = fcmp olt double %63, 3.600000e+01
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %for.body
  store i32 3, i32* %handle_type, align 4
  br label %if.end.46

if.else.42:                                       ; preds = %for.body
  %64 = load double, double* %dist, align 8
  %cmp43 = fcmp olt double %64, 8.281000e+03
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.else.42
  store i32 2, i32* %handle_type, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.else.42
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.41
  %65 = load i32, i32* %handle_type, align 4
  %cmp47 = icmp ne i32 %65, -1
  br i1 %cmp47, label %if.then.48, label %if.end.55

if.then.48:                                       ; preds = %if.end.46
  %66 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %67 = load i32, i32* %handle_type, align 4
  %68 = load %struct._GimpVector2*, %struct._GimpVector2** %point, align 8
  %x49 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %68, i32 0, i32 0
  %69 = load double, double* %x49, align 8
  %70 = load %struct._GimpVector2*, %struct._GimpVector2** %point, align 8
  %y50 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %70, i32 0, i32 1
  %71 = load double, double* %y50, align 8
  %call51 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %66, i32 %67, double %69, double %71, i32 13, i32 13, i32 0)
  store %struct._GimpCanvasItem* %call51, %struct._GimpCanvasItem** %item, align 8
  %72 = load double, double* %dist, align 8
  %cmp52 = fcmp olt double %72, 3.600000e+01
  br i1 %cmp52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.then.48
  %73 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  call void @gimp_canvas_item_set_highlight(%struct._GimpCanvasItem* %73, i32 1)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.then.48
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.end.46
  br label %for.inc

for.inc:                                          ; preds = %if.end.55
  %74 = load i32, i32* %i, align 4
  %inc = add nsw i32 %74, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.56

if.end.56:                                        ; preds = %for.end, %land.lhs.true, %lor.end
  %75 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %show_pending_point = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %75, i32 0, i32 7
  %76 = load i32, i32* %show_pending_point, align 4
  %tobool57 = icmp ne i32 %76, 0
  br i1 %tobool57, label %if.then.58, label %if.end.69

if.then.58:                                       ; preds = %if.end.56
  %77 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %n_points59 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %77, i32 0, i32 10
  %78 = load i32, i32* %n_points59, align 4
  %sub = sub nsw i32 %78, 1
  %idxprom60 = sext i32 %sub to i64
  %79 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %points61 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %79, i32 0, i32 8
  %80 = load %struct._GimpVector2*, %struct._GimpVector2** %points61, align 8
  %arrayidx62 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %80, i64 %idxprom60
  %81 = bitcast %struct._GimpVector2* %last to i8*
  %82 = bitcast %struct._GimpVector2* %arrayidx62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* %82, i64 16, i32 8, i1 false)
  %83 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %84 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %stroke_group, align 8
  call void @gimp_draw_tool_push_group(%struct._GimpDrawTool* %83, %struct._GimpCanvasGroup* %84)
  %85 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %x63 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %last, i32 0, i32 0
  %86 = load double, double* %x63, align 8
  %y64 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %last, i32 0, i32 1
  %87 = load double, double* %y64, align 8
  %88 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %pending_point = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %88, i32 0, i32 6
  %x65 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %pending_point, i32 0, i32 0
  %89 = load double, double* %x65, align 8
  %90 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %pending_point66 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %90, i32 0, i32 6
  %y67 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %pending_point66, i32 0, i32 1
  %91 = load double, double* %y67, align 8
  %call68 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_line(%struct._GimpDrawTool* %85, double %86, double %87, double %89, double %91)
  %92 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  call void @gimp_draw_tool_pop_group(%struct._GimpDrawTool* %92)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then, %if.then.58, %if.end.56
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_free_select_tool_real_select(%struct._GimpFreeSelectTool* %fst, %struct._GimpDisplay* %display) #3 {
entry:
  %fst.addr = alloca %struct._GimpFreeSelectTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %options = alloca %struct._GimpSelectionOptions*, align 8
  %priv = alloca %struct.GimpFreeSelectToolPrivate*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GimpFreeSelectTool* %fst, %struct._GimpFreeSelectTool** %fst.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %1 = bitcast %struct._GimpFreeSelectTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  %call2 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %2)
  %3 = bitcast %struct._GimpToolOptions* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_selection_options_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpSelectionOptions*
  store %struct._GimpSelectionOptions* %4, %struct._GimpSelectionOptions** %options, align 8
  %5 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %6 = bitcast %struct._GimpFreeSelectTool* %5 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_free_select_tool_get_type() #7
  %call6 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast i8* %call6 to %struct.GimpFreeSelectToolPrivate*
  store %struct.GimpFreeSelectToolPrivate* %7, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call7 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %8)
  store %struct._GimpImage* %call7, %struct._GimpImage** %image, align 8
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call8 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %9)
  %call9 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i64 8)
  %10 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %n_points = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %10, i32 0, i32 10
  %11 = load i32, i32* %n_points, align 4
  %12 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %points = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %12, i32 0, i32 8
  %13 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %14 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %operation_at_start = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %14, i32 0, i32 14
  %15 = load i32, i32* %operation_at_start, align 4
  %16 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %options, align 8
  %antialias = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %16, i32 0, i32 2
  %17 = load i32, i32* %antialias, align 4
  %18 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %options, align 8
  %feather = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %18, i32 0, i32 3
  %19 = load i32, i32* %feather, align 4
  %20 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %options, align 8
  %feather_radius = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %20, i32 0, i32 4
  %21 = load double, double* %feather_radius, align 8
  %22 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %options, align 8
  %feather_radius10 = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %22, i32 0, i32 4
  %23 = load double, double* %feather_radius10, align 8
  call void @gimp_channel_select_polygon(%struct._GimpChannel* %call8, i8* %call9, i32 %11, %struct._GimpVector2* %13, i32 %15, i32 %17, i32 %19, double %21, double %23, i32 1)
  %24 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %25 = bitcast %struct._GimpFreeSelectTool* %24 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_tool_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call11)
  %26 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpTool*
  %27 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_control(%struct._GimpTool* %26, i32 2, %struct._GimpDisplay* %27)
  ret void
}

declare void @g_type_class_add_private(i8*, i64) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_free_select_tool_handle_segment_selection(%struct._GimpFreeSelectTool* %fst, %struct._GimpDisplay* %display, %struct._GimpCoords* %coords) #3 {
entry:
  %fst.addr = alloca %struct._GimpFreeSelectTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %priv = alloca %struct.GimpFreeSelectToolPrivate*, align 8
  %draw_tool = alloca %struct._GimpDrawTool*, align 8
  %shortest_dist = alloca double, align 8
  %grabbed_segment_index = alloca i32, align 4
  %i = alloca i32, align 4
  %dist = alloca double, align 8
  %point = alloca %struct._GimpVector2*, align 8
  store %struct._GimpFreeSelectTool* %fst, %struct._GimpFreeSelectTool** %fst.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  %0 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %1 = bitcast %struct._GimpFreeSelectTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_free_select_tool_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpFreeSelectToolPrivate*
  store %struct.GimpFreeSelectToolPrivate* %2, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %3 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %4 = bitcast %struct._GimpFreeSelectTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_draw_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDrawTool*
  store %struct._GimpDrawTool* %5, %struct._GimpDrawTool** %draw_tool, align 8
  store double 3.600000e+01, double* %shortest_dist, align 8
  store i32 -1, i32* %grabbed_segment_index, align 4
  %6 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %7 = bitcast %struct._GimpFreeSelectTool* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_tool_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpTool*
  %display6 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %8, i32 0, i32 4
  %9 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display6, align 8
  %cmp = icmp ne %struct._GimpDisplay* %9, null
  br i1 %cmp, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %entry
  %10 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %supress_handles = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %10, i32 0, i32 16
  %11 = load i32, i32* %supress_handles, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.end.15, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %12 = load i32, i32* %i, align 4
  %13 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %n_segment_indices = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %13, i32 0, i32 13
  %14 = load i32, i32* %n_segment_indices, align 4
  %cmp7 = icmp slt i32 %12, %14
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %segment_indices = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %16, i32 0, i32 11
  %17 = load i32*, i32** %segment_indices, align 8
  %arrayidx = getelementptr inbounds i32, i32* %17, i64 %idxprom
  %18 = load i32, i32* %arrayidx, align 4
  %idxprom8 = sext i32 %18 to i64
  %19 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %points = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %19, i32 0, i32 8
  %20 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %arrayidx9 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %20, i64 %idxprom8
  store %struct._GimpVector2* %arrayidx9, %struct._GimpVector2** %point, align 8
  %21 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %22 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %23 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %23, i32 0, i32 0
  %24 = load double, double* %x, align 8
  %25 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %25, i32 0, i32 1
  %26 = load double, double* %y, align 8
  %27 = load %struct._GimpVector2*, %struct._GimpVector2** %point, align 8
  %x10 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %27, i32 0, i32 0
  %28 = load double, double* %x10, align 8
  %29 = load %struct._GimpVector2*, %struct._GimpVector2** %point, align 8
  %y11 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %29, i32 0, i32 1
  %30 = load double, double* %y11, align 8
  %call12 = call double @gimp_draw_tool_calc_distance_square(%struct._GimpDrawTool* %21, %struct._GimpDisplay* %22, double %24, double %26, double %28, double %30)
  store double %call12, double* %dist, align 8
  %31 = load double, double* %dist, align 8
  %32 = load double, double* %shortest_dist, align 8
  %cmp13 = fcmp olt double %31, %32
  br i1 %cmp13, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %for.body
  %33 = load i32, i32* %i, align 4
  store i32 %33, i32* %grabbed_segment_index, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.14, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %34 = load i32, i32* %i, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.15

if.end.15:                                        ; preds = %for.end, %land.lhs.true, %entry
  %35 = load i32, i32* %grabbed_segment_index, align 4
  %36 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %grabbed_segment_index16 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %36, i32 0, i32 0
  %37 = load i32, i32* %grabbed_segment_index16, align 4
  %cmp17 = icmp ne i32 %35, %37
  br i1 %cmp17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.15
  %38 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %38)
  %39 = load i32, i32* %grabbed_segment_index, align 4
  %40 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %grabbed_segment_index19 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %40, i32 0, i32 0
  store i32 %39, i32* %grabbed_segment_index19, align 4
  %41 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %41)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end.15
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_free_select_tool_should_close(%struct._GimpFreeSelectTool* %fst, %struct._GimpDisplay* %display, i32 %time, %struct._GimpCoords* %coords) #3 {
entry:
  %retval = alloca i32, align 4
  %fst.addr = alloca %struct._GimpFreeSelectTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %time.addr = alloca i32, align 4
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %priv = alloca %struct.GimpFreeSelectToolPrivate*, align 8
  %double_click = alloca i32, align 4
  %dist = alloca double, align 8
  %double_click_time = alloca i32, align 4
  %double_click_distance = alloca i32, align 4
  %click_time_passed = alloca i32, align 4
  %dist_from_last_point = alloca double, align 8
  store %struct._GimpFreeSelectTool* %fst, %struct._GimpFreeSelectTool** %fst.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  %0 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %1 = bitcast %struct._GimpFreeSelectTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_free_select_tool_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpFreeSelectToolPrivate*
  store %struct.GimpFreeSelectToolPrivate* %2, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  store i32 0, i32* %double_click, align 4
  store double 0x7FEFFFFFFFFFFFFF, double* %dist, align 8
  %3 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %polygon_modified = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %3, i32 0, i32 5
  %4 = load i32, i32* %polygon_modified, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %n_segment_indices = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %5, i32 0, i32 13
  %6 = load i32, i32* %n_segment_indices, align 4
  %cmp = icmp sle i32 %6, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %7 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %8 = bitcast %struct._GimpFreeSelectTool* %7 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_tool_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call3)
  %9 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpTool*
  %display5 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %9, i32 0, i32 4
  %10 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display5, align 8
  %cmp6 = icmp eq %struct._GimpDisplay* %10, null
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.2
  %11 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %12 = bitcast %struct._GimpFreeSelectTool* %11 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_draw_tool_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call7)
  %13 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpDrawTool*
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %15 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %15, i32 0, i32 0
  %16 = load double, double* %x, align 8
  %17 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %17, i32 0, i32 1
  %18 = load double, double* %y, align 8
  %19 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %points = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %19, i32 0, i32 8
  %20 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %arrayidx = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %20, i64 0
  %x9 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx, i32 0, i32 0
  %21 = load double, double* %x9, align 8
  %22 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %points10 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %22, i32 0, i32 8
  %23 = load %struct._GimpVector2*, %struct._GimpVector2** %points10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %23, i64 0
  %y12 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx11, i32 0, i32 1
  %24 = load double, double* %y12, align 8
  %call13 = call double @gimp_draw_tool_calc_distance_square(%struct._GimpDrawTool* %13, %struct._GimpDisplay* %14, double %16, double %18, double %21, double %24)
  store double %call13, double* %dist, align 8
  %25 = load i32, i32* %time.addr, align 4
  %cmp14 = icmp ne i32 %25, 0
  br i1 %cmp14, label %if.then.15, label %if.end.27

if.then.15:                                       ; preds = %if.end
  %26 = load i32, i32* %time.addr, align 4
  %27 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %last_click_time = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %27, i32 0, i32 18
  %28 = load i32, i32* %last_click_time, align 4
  %sub = sub i32 %26, %28
  store i32 %sub, i32* %click_time_passed, align 4
  %29 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %30 = bitcast %struct._GimpFreeSelectTool* %29 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_draw_tool_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call16)
  %31 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpDrawTool*
  %32 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %33 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x18 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %33, i32 0, i32 0
  %34 = load double, double* %x18, align 8
  %35 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y19 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %35, i32 0, i32 1
  %36 = load double, double* %y19, align 8
  %37 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %last_click_coord = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %37, i32 0, i32 19
  %x20 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_click_coord, i32 0, i32 0
  %38 = load double, double* %x20, align 8
  %39 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %last_click_coord21 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %39, i32 0, i32 19
  %y22 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_click_coord21, i32 0, i32 1
  %40 = load double, double* %y22, align 8
  %call23 = call double @gimp_draw_tool_calc_distance_square(%struct._GimpDrawTool* %31, %struct._GimpDisplay* %32, double %34, double %36, double %38, double %40)
  store double %call23, double* %dist_from_last_point, align 8
  call void @gimp_free_select_tool_get_double_click_settings(i32* %double_click_time, i32* %double_click_distance)
  %41 = load i32, i32* %click_time_passed, align 4
  %42 = load i32, i32* %double_click_time, align 4
  %cmp24 = icmp slt i32 %41, %42
  br i1 %cmp24, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.15
  %43 = load double, double* %dist_from_last_point, align 8
  %44 = load i32, i32* %double_click_distance, align 4
  %conv = sitofp i32 %44 to double
  %cmp25 = fcmp olt double %43, %conv
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.15
  %45 = phi i1 [ false, %if.then.15 ], [ %cmp25, %land.rhs ]
  %land.ext = zext i1 %45 to i32
  store i32 %land.ext, i32* %double_click, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %land.end, %if.end
  %46 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %supress_handles = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %46, i32 0, i32 16
  %47 = load i32, i32* %supress_handles, align 4
  %tobool28 = icmp ne i32 %47, 0
  br i1 %tobool28, label %lor.rhs, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.27
  %48 = load double, double* %dist, align 8
  %cmp29 = fcmp olt double %48, 3.600000e+01
  br i1 %cmp29, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %if.end.27
  %49 = load i32, i32* %double_click, align 4
  %tobool31 = icmp ne i32 %49, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true
  %50 = phi i1 [ true, %land.lhs.true ], [ %tobool31, %lor.rhs ]
  %lor.ext = zext i1 %50 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

return:                                           ; preds = %lor.end, %if.then
  %51 = load i32, i32* %retval
  ret i32 %51
}

declare void @gimp_draw_tool_pause(%struct._GimpDrawTool*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_free_select_tool_is_point_grabbed(%struct._GimpFreeSelectTool* %fst) #3 {
entry:
  %fst.addr = alloca %struct._GimpFreeSelectTool*, align 8
  %priv = alloca %struct.GimpFreeSelectToolPrivate*, align 8
  store %struct._GimpFreeSelectTool* %fst, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %0 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %1 = bitcast %struct._GimpFreeSelectTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_free_select_tool_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpFreeSelectToolPrivate*
  store %struct.GimpFreeSelectToolPrivate* %2, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %3 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %grabbed_segment_index = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %3, i32 0, i32 0
  %4 = load i32, i32* %grabbed_segment_index, align 4
  %cmp = icmp ne i32 %4, -1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: nounwind uwtable
define internal void @gimp_free_select_tool_get_last_point(%struct._GimpFreeSelectTool* %fst, double* %start_point_x, double* %start_point_y) #3 {
entry:
  %fst.addr = alloca %struct._GimpFreeSelectTool*, align 8
  %start_point_x.addr = alloca double*, align 8
  %start_point_y.addr = alloca double*, align 8
  %priv = alloca %struct.GimpFreeSelectToolPrivate*, align 8
  store %struct._GimpFreeSelectTool* %fst, %struct._GimpFreeSelectTool** %fst.addr, align 8
  store double* %start_point_x, double** %start_point_x.addr, align 8
  store double* %start_point_y, double** %start_point_y.addr, align 8
  %0 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %1 = bitcast %struct._GimpFreeSelectTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_free_select_tool_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpFreeSelectToolPrivate*
  store %struct.GimpFreeSelectToolPrivate* %2, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %3 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %4 = load double*, double** %start_point_x.addr, align 8
  %5 = load double*, double** %start_point_y.addr, align 8
  %6 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %n_segment_indices = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %6, i32 0, i32 13
  %7 = load i32, i32* %n_segment_indices, align 4
  %sub = sub nsw i32 %7, 1
  call void @gimp_free_select_tool_get_segment_point(%struct._GimpFreeSelectTool* %3, double* %4, double* %5, i32 %sub)
  ret void
}

declare void @gimp_constrain_line(double, double, double*, double*, i32) #1

declare void @gimp_draw_tool_resume(%struct._GimpDrawTool*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_free_select_tool_status_update(%struct._GimpFreeSelectTool* %fst, %struct._GimpDisplay* %display, %struct._GimpCoords* %coords, i32 %proximity) #3 {
entry:
  %fst.addr = alloca %struct._GimpFreeSelectTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %proximity.addr = alloca i32, align 4
  %tool = alloca %struct._GimpTool*, align 8
  %priv = alloca %struct.GimpFreeSelectToolPrivate*, align 8
  %status_text = alloca i8*, align 8
  store %struct._GimpFreeSelectTool* %fst, %struct._GimpFreeSelectTool** %fst.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %proximity, i32* %proximity.addr, align 4
  %0 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %1 = bitcast %struct._GimpFreeSelectTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %4 = bitcast %struct._GimpFreeSelectTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_free_select_tool_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct.GimpFreeSelectToolPrivate*
  store %struct.GimpFreeSelectToolPrivate* %5, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_pop_status(%struct._GimpTool* %6, %struct._GimpDisplay* %7)
  %8 = load i32, i32* %proximity.addr, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end.22

if.then:                                          ; preds = %entry
  store i8* null, i8** %status_text, align 8
  %9 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %call4 = call i32 @gimp_free_select_tool_is_point_grabbed(%struct._GimpFreeSelectTool* %9)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else.12

if.then.6:                                        ; preds = %if.then
  %10 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %11 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %12 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %call7 = call i32 @gimp_free_select_tool_should_close(%struct._GimpFreeSelectTool* %10, %struct._GimpDisplay* %11, i32 0, %struct._GimpCoords* %12)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.6
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0)) #6
  store i8* %call10, i8** %status_text, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.6
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i32 0, i32 0)) #6
  store i8* %call11, i8** %status_text, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  br label %if.end.18

if.else.12:                                       ; preds = %if.then
  %13 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %n_segment_indices = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %13, i32 0, i32 13
  %14 = load i32, i32* %n_segment_indices, align 4
  %cmp = icmp sge i32 %14, 3
  br i1 %cmp, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %if.else.12
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.15, i32 0, i32 0)) #6
  store i8* %call14, i8** %status_text, align 8
  br label %if.end.17

if.else.15:                                       ; preds = %if.else.12
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.16, i32 0, i32 0)) #6
  store i8* %call16, i8** %status_text, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.13
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end
  %15 = load i8*, i8** %status_text, align 8
  %tobool19 = icmp ne i8* %15, null
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.18
  %16 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %17 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %18 = load i8*, i8** %status_text, align 8
  call void (%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) @gimp_tool_push_status(%struct._GimpTool* %16, %struct._GimpDisplay* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* %18)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end.18
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %entry
  ret void
}

declare double @gimp_draw_tool_calc_distance_square(%struct._GimpDrawTool*, %struct._GimpDisplay*, double, double, double, double) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_free_select_tool_get_double_click_settings(i32* %double_click_time, i32* %double_click_distance) #3 {
entry:
  %double_click_time.addr = alloca i32*, align 8
  %double_click_distance.addr = alloca i32*, align 8
  %screen = alloca %struct._GdkScreen*, align 8
  %settings = alloca %struct._GtkSettings*, align 8
  store i32* %double_click_time, i32** %double_click_time.addr, align 8
  store i32* %double_click_distance, i32** %double_click_distance.addr, align 8
  %call = call %struct._GdkScreen* @gdk_screen_get_default()
  store %struct._GdkScreen* %call, %struct._GdkScreen** %screen, align 8
  %0 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %cmp = icmp ne %struct._GdkScreen* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %call1 = call %struct._GtkSettings* @gtk_settings_get_for_screen(%struct._GdkScreen* %1)
  store %struct._GtkSettings* %call1, %struct._GtkSettings** %settings, align 8
  %2 = load %struct._GtkSettings*, %struct._GtkSettings** %settings, align 8
  %3 = bitcast %struct._GtkSettings* %2 to i8*
  %4 = load i32*, i32** %double_click_time.addr, align 8
  %5 = load i32*, i32** %double_click_distance.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i32* %4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0), i32* %5, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GdkScreen* @gdk_screen_get_default() #1

declare %struct._GtkSettings* @gtk_settings_get_for_screen(%struct._GdkScreen*) #1

declare void @g_object_get(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_free_select_tool_get_segment_point(%struct._GimpFreeSelectTool* %fst, double* %start_point_x, double* %start_point_y, i32 %segment_index) #3 {
entry:
  %fst.addr = alloca %struct._GimpFreeSelectTool*, align 8
  %start_point_x.addr = alloca double*, align 8
  %start_point_y.addr = alloca double*, align 8
  %segment_index.addr = alloca i32, align 4
  %priv = alloca %struct.GimpFreeSelectToolPrivate*, align 8
  store %struct._GimpFreeSelectTool* %fst, %struct._GimpFreeSelectTool** %fst.addr, align 8
  store double* %start_point_x, double** %start_point_x.addr, align 8
  store double* %start_point_y, double** %start_point_y.addr, align 8
  store i32 %segment_index, i32* %segment_index.addr, align 4
  %0 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %1 = bitcast %struct._GimpFreeSelectTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_free_select_tool_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpFreeSelectToolPrivate*
  store %struct.GimpFreeSelectToolPrivate* %2, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %3 = load i32, i32* %segment_index.addr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %segment_indices = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %4, i32 0, i32 11
  %5 = load i32*, i32** %segment_indices, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %points = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %7, i32 0, i32 8
  %8 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %arrayidx3 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %8, i64 %idxprom2
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx3, i32 0, i32 0
  %9 = load double, double* %x, align 8
  %10 = load double*, double** %start_point_x.addr, align 8
  store double %9, double* %10, align 8
  %11 = load i32, i32* %segment_index.addr, align 4
  %idxprom4 = sext i32 %11 to i64
  %12 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %segment_indices5 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %12, i32 0, i32 11
  %13 = load i32*, i32** %segment_indices5, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %13, i64 %idxprom4
  %14 = load i32, i32* %arrayidx6, align 4
  %idxprom7 = sext i32 %14 to i64
  %15 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %points8 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %15, i32 0, i32 8
  %16 = load %struct._GimpVector2*, %struct._GimpVector2** %points8, align 8
  %arrayidx9 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %16, i64 %idxprom7
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx9, i32 0, i32 1
  %17 = load double, double* %y, align 8
  %18 = load double*, double** %start_point_y.addr, align 8
  store double %17, double* %18, align 8
  ret void
}

declare void @gimp_tool_pop_status(%struct._GimpTool*, %struct._GimpDisplay*) #1

declare void @gimp_tool_push_status(%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) #1

declare void @gimp_tool_set_cursor(%struct._GimpTool*, %struct._GimpDisplay*, i32, i32, i32) #1

declare i32 @gimp_tool_control_get_cursor(%struct._GimpToolControl*) #1

declare i32 @gimp_tool_control_get_tool_cursor(%struct._GimpToolControl*) #1

declare %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool*) #1

declare void @gimp_tool_control(%struct._GimpTool*, i32, %struct._GimpDisplay*) #1

declare i32 @gimp_selection_tool_start_edit(%struct._GimpSelectionTool*, %struct._GimpDisplay*, %struct._GimpCoords*) #1

declare void @gimp_draw_tool_start(%struct._GimpDrawTool*, %struct._GimpDisplay*) #1

declare void @gimp_tool_control_activate(%struct._GimpToolControl*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_free_select_tool_prepare_for_move(%struct._GimpFreeSelectTool* %fst) #3 {
entry:
  %fst.addr = alloca %struct._GimpFreeSelectTool*, align 8
  %priv = alloca %struct.GimpFreeSelectToolPrivate*, align 8
  %source = alloca %struct._GimpVector2*, align 8
  %n_points = alloca i32, align 4
  store %struct._GimpFreeSelectTool* %fst, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %0 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %1 = bitcast %struct._GimpFreeSelectTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_free_select_tool_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpFreeSelectToolPrivate*
  store %struct.GimpFreeSelectToolPrivate* %2, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %3 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %grabbed_segment_index = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %3, i32 0, i32 0
  %4 = load i32, i32* %grabbed_segment_index, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %6 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %grabbed_segment_index2 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %6, i32 0, i32 0
  %7 = load i32, i32* %grabbed_segment_index2, align 4
  %sub = sub nsw i32 %7, 1
  %8 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %grabbed_segment_index3 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %8, i32 0, i32 0
  %9 = load i32, i32* %grabbed_segment_index3, align 4
  call void @gimp_free_select_tool_get_segment(%struct._GimpFreeSelectTool* %5, %struct._GimpVector2** %source, i32* %n_points, i32 %sub, i32 %9)
  %10 = load i32, i32* %n_points, align 4
  %11 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %max_n_saved_points_lower_segment = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %11, i32 0, i32 3
  %12 = load i32, i32* %max_n_saved_points_lower_segment, align 4
  %cmp4 = icmp sgt i32 %10, %12
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %13 = load i32, i32* %n_points, align 4
  %14 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %max_n_saved_points_lower_segment6 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %14, i32 0, i32 3
  store i32 %13, i32* %max_n_saved_points_lower_segment6, align 4
  %15 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %saved_points_lower_segment = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %15, i32 0, i32 1
  %16 = load %struct._GimpVector2*, %struct._GimpVector2** %saved_points_lower_segment, align 8
  %17 = bitcast %struct._GimpVector2* %16 to i8*
  %18 = load i32, i32* %n_points, align 4
  %conv = sext i32 %18 to i64
  %mul = mul i64 16, %conv
  %call7 = call i8* @g_realloc(i8* %17, i64 %mul)
  %19 = bitcast i8* %call7 to %struct._GimpVector2*
  %20 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %saved_points_lower_segment8 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %20, i32 0, i32 1
  store %struct._GimpVector2* %19, %struct._GimpVector2** %saved_points_lower_segment8, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %21 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %saved_points_lower_segment9 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %21, i32 0, i32 1
  %22 = load %struct._GimpVector2*, %struct._GimpVector2** %saved_points_lower_segment9, align 8
  %23 = bitcast %struct._GimpVector2* %22 to i8*
  %24 = load %struct._GimpVector2*, %struct._GimpVector2** %source, align 8
  %25 = bitcast %struct._GimpVector2* %24 to i8*
  %26 = load i32, i32* %n_points, align 4
  %conv10 = sext i32 %26 to i64
  %mul11 = mul i64 16, %conv10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %25, i64 %mul11, i32 8, i1 false)
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %entry
  %27 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %grabbed_segment_index13 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %27, i32 0, i32 0
  %28 = load i32, i32* %grabbed_segment_index13, align 4
  %29 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %n_segment_indices = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %29, i32 0, i32 13
  %30 = load i32, i32* %n_segment_indices, align 4
  %sub14 = sub nsw i32 %30, 1
  %cmp15 = icmp slt i32 %28, %sub14
  br i1 %cmp15, label %if.then.17, label %if.end.32

if.then.17:                                       ; preds = %if.end.12
  %31 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %32 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %grabbed_segment_index18 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %32, i32 0, i32 0
  %33 = load i32, i32* %grabbed_segment_index18, align 4
  %34 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %grabbed_segment_index19 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %34, i32 0, i32 0
  %35 = load i32, i32* %grabbed_segment_index19, align 4
  %add = add nsw i32 %35, 1
  call void @gimp_free_select_tool_get_segment(%struct._GimpFreeSelectTool* %31, %struct._GimpVector2** %source, i32* %n_points, i32 %33, i32 %add)
  %36 = load i32, i32* %n_points, align 4
  %37 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %max_n_saved_points_higher_segment = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %37, i32 0, i32 4
  %38 = load i32, i32* %max_n_saved_points_higher_segment, align 4
  %cmp20 = icmp sgt i32 %36, %38
  br i1 %cmp20, label %if.then.22, label %if.end.28

if.then.22:                                       ; preds = %if.then.17
  %39 = load i32, i32* %n_points, align 4
  %40 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %max_n_saved_points_higher_segment23 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %40, i32 0, i32 4
  store i32 %39, i32* %max_n_saved_points_higher_segment23, align 4
  %41 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %saved_points_higher_segment = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %41, i32 0, i32 2
  %42 = load %struct._GimpVector2*, %struct._GimpVector2** %saved_points_higher_segment, align 8
  %43 = bitcast %struct._GimpVector2* %42 to i8*
  %44 = load i32, i32* %n_points, align 4
  %conv24 = sext i32 %44 to i64
  %mul25 = mul i64 16, %conv24
  %call26 = call i8* @g_realloc(i8* %43, i64 %mul25)
  %45 = bitcast i8* %call26 to %struct._GimpVector2*
  %46 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %saved_points_higher_segment27 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %46, i32 0, i32 2
  store %struct._GimpVector2* %45, %struct._GimpVector2** %saved_points_higher_segment27, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.22, %if.then.17
  %47 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %saved_points_higher_segment29 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %47, i32 0, i32 2
  %48 = load %struct._GimpVector2*, %struct._GimpVector2** %saved_points_higher_segment29, align 8
  %49 = bitcast %struct._GimpVector2* %48 to i8*
  %50 = load %struct._GimpVector2*, %struct._GimpVector2** %source, align 8
  %51 = bitcast %struct._GimpVector2* %50 to i8*
  %52 = load i32, i32* %n_points, align 4
  %conv30 = sext i32 %52 to i64
  %mul31 = mul i64 16, %conv30
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %51, i64 %mul31, i32 8, i1 false)
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.28, %if.end.12
  %53 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %grabbed_segment_index33 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %53, i32 0, i32 0
  %54 = load i32, i32* %grabbed_segment_index33, align 4
  %cmp34 = icmp eq i32 %54, 0
  br i1 %cmp34, label %land.lhs.true, label %if.end.49

land.lhs.true:                                    ; preds = %if.end.32
  %55 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %n_segment_indices36 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %55, i32 0, i32 13
  %56 = load i32, i32* %n_segment_indices36, align 4
  %cmp37 = icmp eq i32 %56, 1
  br i1 %cmp37, label %if.then.39, label %if.end.49

if.then.39:                                       ; preds = %land.lhs.true
  %57 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %max_n_saved_points_lower_segment40 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %57, i32 0, i32 3
  %58 = load i32, i32* %max_n_saved_points_lower_segment40, align 4
  %cmp41 = icmp eq i32 %58, 0
  br i1 %cmp41, label %if.then.43, label %if.end.47

if.then.43:                                       ; preds = %if.then.39
  %59 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %max_n_saved_points_lower_segment44 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %59, i32 0, i32 3
  store i32 1, i32* %max_n_saved_points_lower_segment44, align 4
  %call45 = call noalias i8* @g_malloc0_n(i64 1, i64 16)
  %60 = bitcast i8* %call45 to %struct._GimpVector2*
  %61 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %saved_points_lower_segment46 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %61, i32 0, i32 1
  store %struct._GimpVector2* %60, %struct._GimpVector2** %saved_points_lower_segment46, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.43, %if.then.39
  %62 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %saved_points_lower_segment48 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %62, i32 0, i32 1
  %63 = load %struct._GimpVector2*, %struct._GimpVector2** %saved_points_lower_segment48, align 8
  %64 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %points = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %64, i32 0, i32 8
  %65 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %arrayidx = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %65, i64 0
  %66 = bitcast %struct._GimpVector2* %63 to i8*
  %67 = bitcast %struct._GimpVector2* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 16, i32 8, i1 false)
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.47, %land.lhs.true, %if.end.32
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_free_select_tool_add_point(%struct._GimpFreeSelectTool* %fst, double %x, double %y) #3 {
entry:
  %fst.addr = alloca %struct._GimpFreeSelectTool*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %priv = alloca %struct.GimpFreeSelectToolPrivate*, align 8
  store %struct._GimpFreeSelectTool* %fst, %struct._GimpFreeSelectTool** %fst.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %1 = bitcast %struct._GimpFreeSelectTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_free_select_tool_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpFreeSelectToolPrivate*
  store %struct.GimpFreeSelectToolPrivate* %2, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %3 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %n_points = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %3, i32 0, i32 10
  %4 = load i32, i32* %n_points, align 4
  %5 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %max_n_points = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %5, i32 0, i32 9
  %6 = load i32, i32* %max_n_points, align 4
  %cmp = icmp sge i32 %4, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %max_n_points2 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %7, i32 0, i32 9
  %8 = load i32, i32* %max_n_points2, align 4
  %add = add nsw i32 %8, 1024
  store i32 %add, i32* %max_n_points2, align 4
  %9 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %points = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %9, i32 0, i32 8
  %10 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %11 = bitcast %struct._GimpVector2* %10 to i8*
  %12 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %max_n_points3 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %12, i32 0, i32 9
  %13 = load i32, i32* %max_n_points3, align 4
  %conv = sext i32 %13 to i64
  %mul = mul i64 16, %conv
  %call4 = call i8* @g_realloc(i8* %11, i64 %mul)
  %14 = bitcast i8* %call4 to %struct._GimpVector2*
  %15 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %points5 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %15, i32 0, i32 8
  store %struct._GimpVector2* %14, %struct._GimpVector2** %points5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load double, double* %x.addr, align 8
  %17 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %n_points6 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %17, i32 0, i32 10
  %18 = load i32, i32* %n_points6, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %points7 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %19, i32 0, i32 8
  %20 = load %struct._GimpVector2*, %struct._GimpVector2** %points7, align 8
  %arrayidx = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %20, i64 %idxprom
  %x8 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx, i32 0, i32 0
  store double %16, double* %x8, align 8
  %21 = load double, double* %y.addr, align 8
  %22 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %n_points9 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %22, i32 0, i32 10
  %23 = load i32, i32* %n_points9, align 4
  %idxprom10 = sext i32 %23 to i64
  %24 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %points11 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %24, i32 0, i32 8
  %25 = load %struct._GimpVector2*, %struct._GimpVector2** %points11, align 8
  %arrayidx12 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %25, i64 %idxprom10
  %y13 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx12, i32 0, i32 1
  store double %21, double* %y13, align 8
  %26 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %n_points14 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %26, i32 0, i32 10
  %27 = load i32, i32* %n_points14, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %n_points14, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_free_select_tool_add_segment_index(%struct._GimpFreeSelectTool* %fst, i32 %index) #3 {
entry:
  %fst.addr = alloca %struct._GimpFreeSelectTool*, align 8
  %index.addr = alloca i32, align 4
  %priv = alloca %struct.GimpFreeSelectToolPrivate*, align 8
  store %struct._GimpFreeSelectTool* %fst, %struct._GimpFreeSelectTool** %fst.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %1 = bitcast %struct._GimpFreeSelectTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_free_select_tool_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpFreeSelectToolPrivate*
  store %struct.GimpFreeSelectToolPrivate* %2, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %3 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %n_segment_indices = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %3, i32 0, i32 13
  %4 = load i32, i32* %n_segment_indices, align 4
  %5 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %max_n_segment_indices = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %5, i32 0, i32 12
  %6 = load i32, i32* %max_n_segment_indices, align 4
  %cmp = icmp sge i32 %4, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %max_n_segment_indices2 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %7, i32 0, i32 12
  %8 = load i32, i32* %max_n_segment_indices2, align 4
  %add = add nsw i32 %8, 1024
  store i32 %add, i32* %max_n_segment_indices2, align 4
  %9 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %segment_indices = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %9, i32 0, i32 11
  %10 = load i32*, i32** %segment_indices, align 8
  %11 = bitcast i32* %10 to i8*
  %12 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %max_n_segment_indices3 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %12, i32 0, i32 12
  %13 = load i32, i32* %max_n_segment_indices3, align 4
  %conv = sext i32 %13 to i64
  %mul = mul i64 16, %conv
  %call4 = call i8* @g_realloc(i8* %11, i64 %mul)
  %14 = bitcast i8* %call4 to i32*
  %15 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %segment_indices5 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %15, i32 0, i32 11
  store i32* %14, i32** %segment_indices5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load i32, i32* %index.addr, align 4
  %17 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %n_segment_indices6 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %17, i32 0, i32 13
  %18 = load i32, i32* %n_segment_indices6, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %segment_indices7 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %19, i32 0, i32 11
  %20 = load i32*, i32** %segment_indices7, align 8
  %arrayidx = getelementptr inbounds i32, i32* %20, i64 %idxprom
  store i32 %16, i32* %arrayidx, align 4
  %21 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %n_segment_indices8 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %21, i32 0, i32 13
  %22 = load i32, i32* %n_segment_indices8, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %n_segment_indices8, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_free_select_tool_get_segment(%struct._GimpFreeSelectTool* %fst, %struct._GimpVector2** %points, i32* %n_points, i32 %segment_start, i32 %segment_end) #3 {
entry:
  %fst.addr = alloca %struct._GimpFreeSelectTool*, align 8
  %points.addr = alloca %struct._GimpVector2**, align 8
  %n_points.addr = alloca i32*, align 8
  %segment_start.addr = alloca i32, align 4
  %segment_end.addr = alloca i32, align 4
  %priv = alloca %struct.GimpFreeSelectToolPrivate*, align 8
  store %struct._GimpFreeSelectTool* %fst, %struct._GimpFreeSelectTool** %fst.addr, align 8
  store %struct._GimpVector2** %points, %struct._GimpVector2*** %points.addr, align 8
  store i32* %n_points, i32** %n_points.addr, align 8
  store i32 %segment_start, i32* %segment_start.addr, align 4
  store i32 %segment_end, i32* %segment_end.addr, align 4
  %0 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %1 = bitcast %struct._GimpFreeSelectTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_free_select_tool_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpFreeSelectToolPrivate*
  store %struct.GimpFreeSelectToolPrivate* %2, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %3 = load i32, i32* %segment_start.addr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %segment_indices = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %4, i32 0, i32 11
  %5 = load i32*, i32** %segment_indices, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %points3 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %7, i32 0, i32 8
  %8 = load %struct._GimpVector2*, %struct._GimpVector2** %points3, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %8, i64 %idxprom2
  %9 = load %struct._GimpVector2**, %struct._GimpVector2*** %points.addr, align 8
  store %struct._GimpVector2* %arrayidx4, %struct._GimpVector2** %9, align 8
  %10 = load i32, i32* %segment_end.addr, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %segment_indices6 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %11, i32 0, i32 11
  %12 = load i32*, i32** %segment_indices6, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %12, i64 %idxprom5
  %13 = load i32, i32* %arrayidx7, align 4
  %14 = load i32, i32* %segment_start.addr, align 4
  %idxprom8 = sext i32 %14 to i64
  %15 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %segment_indices9 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %15, i32 0, i32 11
  %16 = load i32*, i32** %segment_indices9, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %16, i64 %idxprom8
  %17 = load i32, i32* %arrayidx10, align 4
  %sub = sub nsw i32 %13, %17
  %add = add nsw i32 %sub, 1
  %18 = load i32*, i32** %n_points.addr, align 8
  store i32 %add, i32* %18, align 4
  ret void
}

declare i8* @g_realloc(i8*, i64) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare void @gimp_tool_control_halt(%struct._GimpToolControl*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_free_select_tool_handle_click(%struct._GimpFreeSelectTool* %fst, %struct._GimpCoords* %coords, i32 %time, %struct._GimpDisplay* %display) #3 {
entry:
  %fst.addr = alloca %struct._GimpFreeSelectTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %priv = alloca %struct.GimpFreeSelectToolPrivate*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GimpFreeSelectTool* %fst, %struct._GimpFreeSelectTool** %fst.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %1 = bitcast %struct._GimpFreeSelectTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_free_select_tool_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpFreeSelectToolPrivate*
  store %struct.GimpFreeSelectToolPrivate* %2, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call2 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %3)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call3 = call %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage* %4)
  %tobool = icmp ne %struct._GimpLayer* %call3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call4 = call %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage* %5)
  call void @floating_sel_anchor(%struct._GimpLayer* %call4)
  %6 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %7 = bitcast %struct._GimpFreeSelectTool* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_tool_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpTool*
  %9 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_control(%struct._GimpTool* %8, i32 2, %struct._GimpDisplay* %9)
  br label %if.end.14

if.else:                                          ; preds = %entry
  %10 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %call7 = call i32 @gimp_free_select_tool_is_point_grabbed(%struct._GimpFreeSelectTool* %10)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %if.else
  %11 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  call void @gimp_free_select_tool_finish_line_segment(%struct._GimpFreeSelectTool* %11)
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.else
  %12 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %14 = load i32, i32* %time.addr, align 4
  %15 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %call10 = call i32 @gimp_free_select_tool_should_close(%struct._GimpFreeSelectTool* %12, %struct._GimpDisplay* %13, i32 %14, %struct._GimpCoords* %15)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end
  %16 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  call void @gimp_free_select_tool_revert_to_saved_state(%struct._GimpFreeSelectTool* %16)
  %17 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %18 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_free_select_tool_commit(%struct._GimpFreeSelectTool* %17, %struct._GimpDisplay* %18)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end
  %19 = load i32, i32* %time.addr, align 4
  %20 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %last_click_time = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %20, i32 0, i32 18
  store i32 %19, i32* %last_click_time, align 4
  %21 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %last_click_coord = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %21, i32 0, i32 19
  %22 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %23 = bitcast %struct._GimpCoords* %last_click_coord to i8*
  %24 = bitcast %struct._GimpCoords* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 64, i32 8, i1 false)
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_free_select_tool_handle_normal_release(%struct._GimpFreeSelectTool* %fst, %struct._GimpCoords* %coords, %struct._GimpDisplay* %display) #3 {
entry:
  %fst.addr = alloca %struct._GimpFreeSelectTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  store %struct._GimpFreeSelectTool* %fst, %struct._GimpFreeSelectTool** %fst.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %call = call i32 @gimp_free_select_tool_is_point_grabbed(%struct._GimpFreeSelectTool* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  call void @gimp_free_select_tool_finish_free_segment(%struct._GimpFreeSelectTool* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %4 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %call1 = call i32 @gimp_free_select_tool_should_close(%struct._GimpFreeSelectTool* %2, %struct._GimpDisplay* %3, i32 0, %struct._GimpCoords* %4)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %5 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %6 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_free_select_tool_commit(%struct._GimpFreeSelectTool* %5, %struct._GimpDisplay* %6)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_free_select_tool_handle_cancel(%struct._GimpFreeSelectTool* %fst) #3 {
entry:
  %fst.addr = alloca %struct._GimpFreeSelectTool*, align 8
  store %struct._GimpFreeSelectTool* %fst, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %0 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %call = call i32 @gimp_free_select_tool_is_point_grabbed(%struct._GimpFreeSelectTool* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  call void @gimp_free_select_tool_revert_to_saved_state(%struct._GimpFreeSelectTool* %1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  call void @gimp_free_select_tool_remove_last_segment(%struct._GimpFreeSelectTool* %2)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage*) #1

declare void @floating_sel_anchor(%struct._GimpLayer*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_free_select_tool_finish_line_segment(%struct._GimpFreeSelectTool* %fst) #3 {
entry:
  %fst.addr = alloca %struct._GimpFreeSelectTool*, align 8
  store %struct._GimpFreeSelectTool* %fst, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %0 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  call void @gimp_free_select_tool_revert_to_last_segment(%struct._GimpFreeSelectTool* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_free_select_tool_revert_to_saved_state(%struct._GimpFreeSelectTool* %fst) #3 {
entry:
  %fst.addr = alloca %struct._GimpFreeSelectTool*, align 8
  %priv = alloca %struct.GimpFreeSelectToolPrivate*, align 8
  %dest = alloca %struct._GimpVector2*, align 8
  %n_points = alloca i32, align 4
  store %struct._GimpFreeSelectTool* %fst, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %0 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %1 = bitcast %struct._GimpFreeSelectTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_free_select_tool_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpFreeSelectToolPrivate*
  store %struct.GimpFreeSelectToolPrivate* %2, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %3 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %call2 = call i32 @gimp_free_select_tool_is_point_grabbed(%struct._GimpFreeSelectTool* %3)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.25

if.end:                                           ; preds = %entry
  %4 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %grabbed_segment_index = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %4, i32 0, i32 0
  %5 = load i32, i32* %grabbed_segment_index, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  %6 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %7 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %grabbed_segment_index4 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %7, i32 0, i32 0
  %8 = load i32, i32* %grabbed_segment_index4, align 4
  %sub = sub nsw i32 %8, 1
  %9 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %grabbed_segment_index5 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %9, i32 0, i32 0
  %10 = load i32, i32* %grabbed_segment_index5, align 4
  call void @gimp_free_select_tool_get_segment(%struct._GimpFreeSelectTool* %6, %struct._GimpVector2** %dest, i32* %n_points, i32 %sub, i32 %10)
  %11 = load %struct._GimpVector2*, %struct._GimpVector2** %dest, align 8
  %12 = bitcast %struct._GimpVector2* %11 to i8*
  %13 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %saved_points_lower_segment = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %13, i32 0, i32 1
  %14 = load %struct._GimpVector2*, %struct._GimpVector2** %saved_points_lower_segment, align 8
  %15 = bitcast %struct._GimpVector2* %14 to i8*
  %16 = load i32, i32* %n_points, align 4
  %conv = sext i32 %16 to i64
  %mul = mul i64 16, %conv
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %15, i64 %mul, i32 8, i1 false)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %if.end
  %17 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %grabbed_segment_index7 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %17, i32 0, i32 0
  %18 = load i32, i32* %grabbed_segment_index7, align 4
  %19 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %n_segment_indices = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %19, i32 0, i32 13
  %20 = load i32, i32* %n_segment_indices, align 4
  %sub8 = sub nsw i32 %20, 1
  %cmp9 = icmp slt i32 %18, %sub8
  br i1 %cmp9, label %if.then.11, label %if.end.16

if.then.11:                                       ; preds = %if.end.6
  %21 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %22 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %grabbed_segment_index12 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %22, i32 0, i32 0
  %23 = load i32, i32* %grabbed_segment_index12, align 4
  %24 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %grabbed_segment_index13 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %24, i32 0, i32 0
  %25 = load i32, i32* %grabbed_segment_index13, align 4
  %add = add nsw i32 %25, 1
  call void @gimp_free_select_tool_get_segment(%struct._GimpFreeSelectTool* %21, %struct._GimpVector2** %dest, i32* %n_points, i32 %23, i32 %add)
  %26 = load %struct._GimpVector2*, %struct._GimpVector2** %dest, align 8
  %27 = bitcast %struct._GimpVector2* %26 to i8*
  %28 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %saved_points_higher_segment = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %28, i32 0, i32 2
  %29 = load %struct._GimpVector2*, %struct._GimpVector2** %saved_points_higher_segment, align 8
  %30 = bitcast %struct._GimpVector2* %29 to i8*
  %31 = load i32, i32* %n_points, align 4
  %conv14 = sext i32 %31 to i64
  %mul15 = mul i64 16, %conv14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %30, i64 %mul15, i32 8, i1 false)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.11, %if.end.6
  %32 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %grabbed_segment_index17 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %32, i32 0, i32 0
  %33 = load i32, i32* %grabbed_segment_index17, align 4
  %cmp18 = icmp eq i32 %33, 0
  br i1 %cmp18, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %if.end.16
  %34 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %n_segment_indices20 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %34, i32 0, i32 13
  %35 = load i32, i32* %n_segment_indices20, align 4
  %cmp21 = icmp eq i32 %35, 1
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %land.lhs.true
  %36 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %points = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %36, i32 0, i32 8
  %37 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %arrayidx = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %37, i64 0
  %38 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %saved_points_lower_segment24 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %38, i32 0, i32 1
  %39 = load %struct._GimpVector2*, %struct._GimpVector2** %saved_points_lower_segment24, align 8
  %40 = bitcast %struct._GimpVector2* %arrayidx to i8*
  %41 = bitcast %struct._GimpVector2* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 16, i32 8, i1 false)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then, %if.then.23, %land.lhs.true, %if.end.16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_free_select_tool_commit(%struct._GimpFreeSelectTool* %fst, %struct._GimpDisplay* %display) #3 {
entry:
  %fst.addr = alloca %struct._GimpFreeSelectTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %priv = alloca %struct.GimpFreeSelectToolPrivate*, align 8
  store %struct._GimpFreeSelectTool* %fst, %struct._GimpFreeSelectTool** %fst.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %1 = bitcast %struct._GimpFreeSelectTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_free_select_tool_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpFreeSelectToolPrivate*
  store %struct.GimpFreeSelectToolPrivate* %2, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %3 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %n_points = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %3, i32 0, i32 10
  %4 = load i32, i32* %n_points, align 4
  %cmp = icmp sge i32 %4, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %6 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_free_select_tool_select(%struct._GimpFreeSelectTool* %5, %struct._GimpDisplay* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call2 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %7)
  call void @gimp_image_flush(%struct._GimpImage* %call2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_free_select_tool_revert_to_last_segment(%struct._GimpFreeSelectTool* %fst) #3 {
entry:
  %fst.addr = alloca %struct._GimpFreeSelectTool*, align 8
  %priv = alloca %struct.GimpFreeSelectToolPrivate*, align 8
  store %struct._GimpFreeSelectTool* %fst, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %0 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %1 = bitcast %struct._GimpFreeSelectTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_free_select_tool_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpFreeSelectToolPrivate*
  store %struct.GimpFreeSelectToolPrivate* %2, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %3 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %n_segment_indices = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %3, i32 0, i32 13
  %4 = load i32, i32* %n_segment_indices, align 4
  %sub = sub nsw i32 %4, 1
  %idxprom = sext i32 %sub to i64
  %5 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %segment_indices = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %5, i32 0, i32 11
  %6 = load i32*, i32** %segment_indices, align 8
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %7, 1
  %8 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %n_points = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %8, i32 0, i32 10
  store i32 %add, i32* %n_points, align 4
  ret void
}

declare void @gimp_image_flush(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_free_select_tool_finish_free_segment(%struct._GimpFreeSelectTool* %fst) #3 {
entry:
  %fst.addr = alloca %struct._GimpFreeSelectTool*, align 8
  %priv = alloca %struct.GimpFreeSelectToolPrivate*, align 8
  store %struct._GimpFreeSelectTool* %fst, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %0 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %1 = bitcast %struct._GimpFreeSelectTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_free_select_tool_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpFreeSelectToolPrivate*
  store %struct.GimpFreeSelectToolPrivate* %2, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %3 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %4 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %n_points = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %4, i32 0, i32 10
  %5 = load i32, i32* %n_points, align 4
  %sub = sub nsw i32 %5, 1
  call void @gimp_free_select_tool_add_segment_index(%struct._GimpFreeSelectTool* %3, i32 %sub)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_free_select_tool_remove_last_segment(%struct._GimpFreeSelectTool* %fst) #3 {
entry:
  %fst.addr = alloca %struct._GimpFreeSelectTool*, align 8
  %priv = alloca %struct.GimpFreeSelectToolPrivate*, align 8
  %draw_tool = alloca %struct._GimpDrawTool*, align 8
  store %struct._GimpFreeSelectTool* %fst, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %0 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %1 = bitcast %struct._GimpFreeSelectTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_free_select_tool_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpFreeSelectToolPrivate*
  store %struct.GimpFreeSelectToolPrivate* %2, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %3 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %4 = bitcast %struct._GimpFreeSelectTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_draw_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDrawTool*
  store %struct._GimpDrawTool* %5, %struct._GimpDrawTool** %draw_tool, align 8
  %6 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %6)
  %7 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %n_segment_indices = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %7, i32 0, i32 13
  %8 = load i32, i32* %n_segment_indices, align 4
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %n_segment_indices4 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %9, i32 0, i32 13
  %10 = load i32, i32* %n_segment_indices4, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %n_segment_indices4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %n_segment_indices5 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %11, i32 0, i32 13
  %12 = load i32, i32* %n_segment_indices5, align 4
  %cmp6 = icmp sle i32 %12, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %13 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %14 = bitcast %struct._GimpFreeSelectTool* %13 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_tool_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call8)
  %15 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpTool*
  %16 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %17 = bitcast %struct._GimpFreeSelectTool* %16 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_tool_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call10)
  %18 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpTool*
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %18, i32 0, i32 4
  %19 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  call void @gimp_tool_control(%struct._GimpTool* %15, i32 2, %struct._GimpDisplay* %19)
  br label %if.end.12

if.else:                                          ; preds = %if.end
  %20 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  call void @gimp_free_select_tool_revert_to_last_segment(%struct._GimpFreeSelectTool* %20)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.7
  %21 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %21)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_free_select_tool_update_motion(%struct._GimpFreeSelectTool* %fst, double %new_x, double %new_y) #3 {
entry:
  %fst.addr = alloca %struct._GimpFreeSelectTool*, align 8
  %new_x.addr = alloca double, align 8
  %new_y.addr = alloca double, align 8
  %priv = alloca %struct.GimpFreeSelectToolPrivate*, align 8
  %start_point_x = alloca double, align 8
  %start_point_y = alloca double, align 8
  %segment_index = alloca i32, align 4
  store %struct._GimpFreeSelectTool* %fst, %struct._GimpFreeSelectTool** %fst.addr, align 8
  store double %new_x, double* %new_x.addr, align 8
  store double %new_y, double* %new_y.addr, align 8
  %0 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %1 = bitcast %struct._GimpFreeSelectTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_free_select_tool_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpFreeSelectToolPrivate*
  store %struct.GimpFreeSelectToolPrivate* %2, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %3 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %call2 = call i32 @gimp_free_select_tool_is_point_grabbed(%struct._GimpFreeSelectTool* %3)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else.17

if.then:                                          ; preds = %entry
  %4 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %polygon_modified = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %4, i32 0, i32 5
  store i32 1, i32* %polygon_modified, align 4
  %5 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %constrain_angle = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %5, i32 0, i32 15
  %6 = load i32, i32* %constrain_angle, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %if.then
  %7 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %n_segment_indices = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %7, i32 0, i32 13
  %8 = load i32, i32* %n_segment_indices, align 4
  %cmp = icmp sgt i32 %8, 1
  br i1 %cmp, label %if.then.4, label %if.end.10

if.then.4:                                        ; preds = %land.lhs.true
  %9 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %grabbed_segment_index = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %9, i32 0, i32 0
  %10 = load i32, i32* %grabbed_segment_index, align 4
  %cmp5 = icmp eq i32 %10, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then.4
  %11 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %n_segment_indices7 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %11, i32 0, i32 13
  %12 = load i32, i32* %n_segment_indices7, align 4
  %sub = sub nsw i32 %12, 1
  store i32 %sub, i32* %segment_index, align 4
  br label %if.end

if.else:                                          ; preds = %if.then.4
  %13 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %grabbed_segment_index8 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %13, i32 0, i32 0
  %14 = load i32, i32* %grabbed_segment_index8, align 4
  %sub9 = sub nsw i32 %14, 1
  store i32 %sub9, i32* %segment_index, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  %15 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %16 = load i32, i32* %segment_index, align 4
  call void @gimp_free_select_tool_get_segment_point(%struct._GimpFreeSelectTool* %15, double* %start_point_x, double* %start_point_y, i32 %16)
  %17 = load double, double* %start_point_x, align 8
  %18 = load double, double* %start_point_y, align 8
  call void @gimp_constrain_line(double %17, double %18, double* %new_x.addr, double* %new_y.addr, i32 12)
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %land.lhs.true, %if.then
  %19 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %20 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %grabbed_segment_index11 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %20, i32 0, i32 0
  %21 = load i32, i32* %grabbed_segment_index11, align 4
  %22 = load double, double* %new_x.addr, align 8
  %23 = load double, double* %new_y.addr, align 8
  call void @gimp_free_select_tool_move_segment_vertex_to(%struct._GimpFreeSelectTool* %19, i32 %21, double %22, double %23)
  %24 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %grabbed_segment_index12 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %24, i32 0, i32 0
  %25 = load i32, i32* %grabbed_segment_index12, align 4
  %cmp13 = icmp eq i32 %25, 0
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.10
  %26 = load double, double* %new_x.addr, align 8
  %27 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %pending_point = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %27, i32 0, i32 6
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %pending_point, i32 0, i32 0
  store double %26, double* %x, align 8
  %28 = load double, double* %new_y.addr, align 8
  %29 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %pending_point15 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %29, i32 0, i32 6
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %pending_point15, i32 0, i32 1
  store double %28, double* %y, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.10
  br label %if.end.18

if.else.17:                                       ; preds = %entry
  %30 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %show_pending_point = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %30, i32 0, i32 7
  store i32 0, i32* %show_pending_point, align 4
  %31 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %32 = load double, double* %new_x.addr, align 8
  %33 = load double, double* %new_y.addr, align 8
  call void @gimp_free_select_tool_add_point(%struct._GimpFreeSelectTool* %31, double %32, double %33)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.17, %if.end.16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_free_select_tool_move_segment_vertex_to(%struct._GimpFreeSelectTool* %fst, i32 %segment_index, double %new_x, double %new_y) #3 {
entry:
  %fst.addr = alloca %struct._GimpFreeSelectTool*, align 8
  %segment_index.addr = alloca i32, align 4
  %new_x.addr = alloca double, align 8
  %new_y.addr = alloca double, align 8
  %priv = alloca %struct.GimpFreeSelectToolPrivate*, align 8
  %cursor_point = alloca %struct._GimpVector2, align 8
  %dest = alloca %struct._GimpVector2*, align 8
  %dest_start_target = alloca %struct._GimpVector2*, align 8
  %dest_end_target = alloca %struct._GimpVector2*, align 8
  %n_points = alloca i32, align 4
  store %struct._GimpFreeSelectTool* %fst, %struct._GimpFreeSelectTool** %fst.addr, align 8
  store i32 %segment_index, i32* %segment_index.addr, align 4
  store double %new_x, double* %new_x.addr, align 8
  store double %new_y, double* %new_y.addr, align 8
  %0 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %1 = bitcast %struct._GimpFreeSelectTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_free_select_tool_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpFreeSelectToolPrivate*
  store %struct.GimpFreeSelectToolPrivate* %2, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %cursor_point, i32 0, i32 0
  %3 = load double, double* %new_x.addr, align 8
  store double %3, double* %x, align 8
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %cursor_point, i32 0, i32 1
  %4 = load double, double* %new_y.addr, align 8
  store double %4, double* %y, align 8
  %5 = load i32, i32* %segment_index.addr, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %7 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %grabbed_segment_index = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %7, i32 0, i32 0
  %8 = load i32, i32* %grabbed_segment_index, align 4
  %sub = sub nsw i32 %8, 1
  %9 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %grabbed_segment_index2 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %9, i32 0, i32 0
  %10 = load i32, i32* %grabbed_segment_index2, align 4
  call void @gimp_free_select_tool_get_segment(%struct._GimpFreeSelectTool* %6, %struct._GimpVector2** %dest, i32* %n_points, i32 %sub, i32 %10)
  %11 = load %struct._GimpVector2*, %struct._GimpVector2** %dest, align 8
  %arrayidx = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %11, i64 0
  store %struct._GimpVector2* %arrayidx, %struct._GimpVector2** %dest_start_target, align 8
  store %struct._GimpVector2* %cursor_point, %struct._GimpVector2** %dest_end_target, align 8
  %12 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %13 = load %struct._GimpVector2*, %struct._GimpVector2** %dest, align 8
  %14 = load %struct._GimpVector2*, %struct._GimpVector2** %dest_start_target, align 8
  %15 = load %struct._GimpVector2*, %struct._GimpVector2** %dest_end_target, align 8
  %16 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %saved_points_lower_segment = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %16, i32 0, i32 1
  %17 = load %struct._GimpVector2*, %struct._GimpVector2** %saved_points_lower_segment, align 8
  %18 = load i32, i32* %n_points, align 4
  %19 = bitcast %struct._GimpVector2* %14 to { double, double }*
  %20 = getelementptr { double, double }, { double, double }* %19, i32 0, i32 0
  %21 = load double, double* %20, align 1
  %22 = getelementptr { double, double }, { double, double }* %19, i32 0, i32 1
  %23 = load double, double* %22, align 1
  %24 = bitcast %struct._GimpVector2* %15 to { double, double }*
  %25 = getelementptr { double, double }, { double, double }* %24, i32 0, i32 0
  %26 = load double, double* %25, align 1
  %27 = getelementptr { double, double }, { double, double }* %24, i32 0, i32 1
  %28 = load double, double* %27, align 1
  call void @gimp_free_select_tool_fit_segment(%struct._GimpFreeSelectTool* %12, %struct._GimpVector2* %13, double %21, double %23, double %26, double %28, %struct._GimpVector2* %17, i32 %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %29 = load i32, i32* %segment_index.addr, align 4
  %30 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %n_segment_indices = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %30, i32 0, i32 13
  %31 = load i32, i32* %n_segment_indices, align 4
  %sub3 = sub nsw i32 %31, 1
  %cmp4 = icmp slt i32 %29, %sub3
  br i1 %cmp4, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %if.end
  %32 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %33 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %grabbed_segment_index6 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %33, i32 0, i32 0
  %34 = load i32, i32* %grabbed_segment_index6, align 4
  %35 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %grabbed_segment_index7 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %35, i32 0, i32 0
  %36 = load i32, i32* %grabbed_segment_index7, align 4
  %add = add nsw i32 %36, 1
  call void @gimp_free_select_tool_get_segment(%struct._GimpFreeSelectTool* %32, %struct._GimpVector2** %dest, i32* %n_points, i32 %34, i32 %add)
  store %struct._GimpVector2* %cursor_point, %struct._GimpVector2** %dest_start_target, align 8
  %37 = load i32, i32* %n_points, align 4
  %sub8 = sub nsw i32 %37, 1
  %idxprom = sext i32 %sub8 to i64
  %38 = load %struct._GimpVector2*, %struct._GimpVector2** %dest, align 8
  %arrayidx9 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %38, i64 %idxprom
  store %struct._GimpVector2* %arrayidx9, %struct._GimpVector2** %dest_end_target, align 8
  %39 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %fst.addr, align 8
  %40 = load %struct._GimpVector2*, %struct._GimpVector2** %dest, align 8
  %41 = load %struct._GimpVector2*, %struct._GimpVector2** %dest_start_target, align 8
  %42 = load %struct._GimpVector2*, %struct._GimpVector2** %dest_end_target, align 8
  %43 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %saved_points_higher_segment = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %43, i32 0, i32 2
  %44 = load %struct._GimpVector2*, %struct._GimpVector2** %saved_points_higher_segment, align 8
  %45 = load i32, i32* %n_points, align 4
  %46 = bitcast %struct._GimpVector2* %41 to { double, double }*
  %47 = getelementptr { double, double }, { double, double }* %46, i32 0, i32 0
  %48 = load double, double* %47, align 1
  %49 = getelementptr { double, double }, { double, double }* %46, i32 0, i32 1
  %50 = load double, double* %49, align 1
  %51 = bitcast %struct._GimpVector2* %42 to { double, double }*
  %52 = getelementptr { double, double }, { double, double }* %51, i32 0, i32 0
  %53 = load double, double* %52, align 1
  %54 = getelementptr { double, double }, { double, double }* %51, i32 0, i32 1
  %55 = load double, double* %54, align 1
  call void @gimp_free_select_tool_fit_segment(%struct._GimpFreeSelectTool* %39, %struct._GimpVector2* %40, double %48, double %50, double %53, double %55, %struct._GimpVector2* %44, i32 %45)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.5, %if.end
  %56 = load i32, i32* %segment_index.addr, align 4
  %cmp11 = icmp eq i32 %56, 0
  br i1 %cmp11, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %if.end.10
  %57 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %n_segment_indices12 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %57, i32 0, i32 13
  %58 = load i32, i32* %n_segment_indices12, align 4
  %cmp13 = icmp eq i32 %58, 1
  br i1 %cmp13, label %if.then.14, label %if.end.20

if.then.14:                                       ; preds = %land.lhs.true
  %59 = load double, double* %new_x.addr, align 8
  %60 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %points = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %60, i32 0, i32 8
  %61 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %arrayidx15 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %61, i64 0
  %x16 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx15, i32 0, i32 0
  store double %59, double* %x16, align 8
  %62 = load double, double* %new_y.addr, align 8
  %63 = load %struct.GimpFreeSelectToolPrivate*, %struct.GimpFreeSelectToolPrivate** %priv, align 8
  %points17 = getelementptr inbounds %struct.GimpFreeSelectToolPrivate, %struct.GimpFreeSelectToolPrivate* %63, i32 0, i32 8
  %64 = load %struct._GimpVector2*, %struct._GimpVector2** %points17, align 8
  %arrayidx18 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %64, i64 0
  %y19 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx18, i32 0, i32 1
  store double %62, double* %y19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.14, %land.lhs.true, %if.end.10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_free_select_tool_fit_segment(%struct._GimpFreeSelectTool* %fst, %struct._GimpVector2* %dest_points, double %dest_start_target.coerce0, double %dest_start_target.coerce1, double %dest_end_target.coerce0, double %dest_end_target.coerce1, %struct._GimpVector2* %source_points, i32 %n_points) #3 {
entry:
  %dest_start_target = alloca %struct._GimpVector2, align 8
  %dest_end_target = alloca %struct._GimpVector2, align 8
  %fst.addr = alloca %struct._GimpFreeSelectTool*, align 8
  %dest_points.addr = alloca %struct._GimpVector2*, align 8
  %source_points.addr = alloca %struct._GimpVector2*, align 8
  %n_points.addr = alloca i32, align 4
  %origo_translation_offset = alloca %struct._GimpVector2, align 8
  %untranslation_offset = alloca %struct._GimpVector2, align 8
  %rotation = alloca double, align 8
  %scale = alloca double, align 8
  %dest_end = alloca %struct._GimpVector2*, align 8
  %origo_translated_end_target = alloca %struct._GimpVector2, align 8
  %target_rotation = alloca double, align 8
  %current_rotation = alloca double, align 8
  %target_length = alloca double, align 8
  %current_length = alloca double, align 8
  %i = alloca i32, align 4
  %0 = bitcast %struct._GimpVector2* %dest_start_target to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %dest_start_target.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %dest_start_target.coerce1, double* %2
  %3 = bitcast %struct._GimpVector2* %dest_end_target to { double, double }*
  %4 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 0
  store double %dest_end_target.coerce0, double* %4
  %5 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 1
  store double %dest_end_target.coerce1, double* %5
  store %struct._GimpFreeSelectTool* %fst, %struct._GimpFreeSelectTool** %fst.addr, align 8
  store %struct._GimpVector2* %dest_points, %struct._GimpVector2** %dest_points.addr, align 8
  store %struct._GimpVector2* %source_points, %struct._GimpVector2** %source_points.addr, align 8
  store i32 %n_points, i32* %n_points.addr, align 4
  %6 = load i32, i32* %n_points.addr, align 4
  %cmp = icmp sle i32 %6, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %for.end

if.else:                                          ; preds = %entry
  %7 = load i32, i32* %n_points.addr, align 4
  %cmp1 = icmp eq i32 %7, 1
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  %8 = load %struct._GimpVector2*, %struct._GimpVector2** %dest_points.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %8, i64 0
  %9 = bitcast %struct._GimpVector2* %arrayidx to i8*
  %10 = bitcast %struct._GimpVector2* %dest_end_target to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 16, i32 8, i1 false)
  br label %for.end

if.else.3:                                        ; preds = %if.else
  %11 = load i32, i32* %n_points.addr, align 4
  %cmp4 = icmp eq i32 %11, 2
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else.3
  %12 = load %struct._GimpVector2*, %struct._GimpVector2** %dest_points.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %12, i64 0
  %13 = bitcast %struct._GimpVector2* %arrayidx6 to i8*
  %14 = bitcast %struct._GimpVector2* %dest_start_target to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 16, i32 8, i1 false)
  %15 = load %struct._GimpVector2*, %struct._GimpVector2** %dest_points.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %15, i64 1
  %16 = bitcast %struct._GimpVector2* %arrayidx7 to i8*
  %17 = bitcast %struct._GimpVector2* %dest_end_target to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 16, i32 8, i1 false)
  br label %for.end

if.end:                                           ; preds = %if.else.3
  br label %if.end.8

if.end.8:                                         ; preds = %if.end
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8
  %18 = load %struct._GimpVector2*, %struct._GimpVector2** %dest_points.addr, align 8
  %19 = bitcast %struct._GimpVector2* %18 to i8*
  %20 = load %struct._GimpVector2*, %struct._GimpVector2** %source_points.addr, align 8
  %21 = bitcast %struct._GimpVector2* %20 to i8*
  %22 = load i32, i32* %n_points.addr, align 4
  %conv = sext i32 %22 to i64
  %mul = mul i64 16, %conv
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %21, i64 %mul, i32 8, i1 false)
  %23 = load i32, i32* %n_points.addr, align 4
  %sub = sub nsw i32 %23, 1
  %idxprom = sext i32 %sub to i64
  %24 = load %struct._GimpVector2*, %struct._GimpVector2** %dest_points.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %24, i64 %idxprom
  store %struct._GimpVector2* %arrayidx10, %struct._GimpVector2** %dest_end, align 8
  %25 = load %struct._GimpVector2*, %struct._GimpVector2** %dest_points.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %25, i64 0
  call void @gimp_vector2_sub(%struct._GimpVector2* %origo_translation_offset, %struct._GimpVector2* @vector2_zero, %struct._GimpVector2* %arrayidx11)
  %26 = load %struct._GimpVector2*, %struct._GimpVector2** %dest_end, align 8
  %27 = load %struct._GimpVector2*, %struct._GimpVector2** %dest_end, align 8
  call void @gimp_vector2_add(%struct._GimpVector2* %26, %struct._GimpVector2* %27, %struct._GimpVector2* %origo_translation_offset)
  call void @gimp_vector2_sub(%struct._GimpVector2* %origo_translated_end_target, %struct._GimpVector2* %dest_end_target, %struct._GimpVector2* %dest_start_target)
  %28 = load double, double* getelementptr inbounds (%struct._GimpVector2, %struct._GimpVector2* @vector2_zero, i32 0, i32 1), align 8
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %origo_translated_end_target, i32 0, i32 1
  %29 = load double, double* %y, align 8
  %sub12 = fsub double %28, %29
  %30 = load double, double* getelementptr inbounds (%struct._GimpVector2, %struct._GimpVector2* @vector2_zero, i32 0, i32 0), align 8
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %origo_translated_end_target, i32 0, i32 0
  %31 = load double, double* %x, align 8
  %sub13 = fsub double %30, %31
  %call = call double @atan2(double %sub12, double %sub13) #6
  store double %call, double* %target_rotation, align 8
  %32 = load double, double* getelementptr inbounds (%struct._GimpVector2, %struct._GimpVector2* @vector2_zero, i32 0, i32 1), align 8
  %33 = load %struct._GimpVector2*, %struct._GimpVector2** %dest_end, align 8
  %y14 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %33, i32 0, i32 1
  %34 = load double, double* %y14, align 8
  %sub15 = fsub double %32, %34
  %35 = load double, double* getelementptr inbounds (%struct._GimpVector2, %struct._GimpVector2* @vector2_zero, i32 0, i32 0), align 8
  %36 = load %struct._GimpVector2*, %struct._GimpVector2** %dest_end, align 8
  %x16 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %36, i32 0, i32 0
  %37 = load double, double* %x16, align 8
  %sub17 = fsub double %35, %37
  %call18 = call double @atan2(double %sub15, double %sub17) #6
  store double %call18, double* %current_rotation, align 8
  %38 = load double, double* %current_rotation, align 8
  %39 = load double, double* %target_rotation, align 8
  %sub19 = fsub double %38, %39
  store double %sub19, double* %rotation, align 8
  %40 = load %struct._GimpVector2*, %struct._GimpVector2** %dest_end, align 8
  %41 = load double, double* %rotation, align 8
  call void @gimp_vector2_rotate(%struct._GimpVector2* %40, double %41)
  %call20 = call double @gimp_vector2_length(%struct._GimpVector2* %origo_translated_end_target)
  store double %call20, double* %target_length, align 8
  %42 = load %struct._GimpVector2*, %struct._GimpVector2** %dest_end, align 8
  %call21 = call double @gimp_vector2_length(%struct._GimpVector2* %42)
  store double %call21, double* %current_length, align 8
  %43 = load double, double* %target_length, align 8
  %44 = load double, double* %current_length, align 8
  %div = fdiv double %43, %44
  store double %div, double* %scale, align 8
  %45 = load %struct._GimpVector2*, %struct._GimpVector2** %dest_end, align 8
  %46 = load double, double* %scale, align 8
  call void @gimp_vector2_mul(%struct._GimpVector2* %45, double %46)
  %47 = load %struct._GimpVector2*, %struct._GimpVector2** %dest_end, align 8
  call void @gimp_vector2_sub(%struct._GimpVector2* %untranslation_offset, %struct._GimpVector2* %dest_end_target, %struct._GimpVector2* %47)
  %48 = load %struct._GimpVector2*, %struct._GimpVector2** %dest_end, align 8
  %49 = load %struct._GimpVector2*, %struct._GimpVector2** %dest_end, align 8
  call void @gimp_vector2_add(%struct._GimpVector2* %48, %struct._GimpVector2* %49, %struct._GimpVector2* %untranslation_offset)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %50 = load i32, i32* %i, align 4
  %51 = load i32, i32* %n_points.addr, align 4
  %sub22 = sub nsw i32 %51, 1
  %cmp23 = icmp slt i32 %50, %sub22
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %52 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %52 to i64
  %53 = load %struct._GimpVector2*, %struct._GimpVector2** %dest_points.addr, align 8
  %arrayidx26 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %53, i64 %idxprom25
  %54 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %54 to i64
  %55 = load %struct._GimpVector2*, %struct._GimpVector2** %dest_points.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %55, i64 %idxprom27
  call void @gimp_vector2_add(%struct._GimpVector2* %arrayidx26, %struct._GimpVector2* %origo_translation_offset, %struct._GimpVector2* %arrayidx28)
  %56 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %56 to i64
  %57 = load %struct._GimpVector2*, %struct._GimpVector2** %dest_points.addr, align 8
  %arrayidx30 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %57, i64 %idxprom29
  %58 = load double, double* %rotation, align 8
  call void @gimp_vector2_rotate(%struct._GimpVector2* %arrayidx30, double %58)
  %59 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %59 to i64
  %60 = load %struct._GimpVector2*, %struct._GimpVector2** %dest_points.addr, align 8
  %arrayidx32 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %60, i64 %idxprom31
  %61 = load double, double* %scale, align 8
  call void @gimp_vector2_mul(%struct._GimpVector2* %arrayidx32, double %61)
  %62 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %62 to i64
  %63 = load %struct._GimpVector2*, %struct._GimpVector2** %dest_points.addr, align 8
  %arrayidx34 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %63, i64 %idxprom33
  %64 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %64 to i64
  %65 = load %struct._GimpVector2*, %struct._GimpVector2** %dest_points.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %65, i64 %idxprom35
  call void @gimp_vector2_add(%struct._GimpVector2* %arrayidx34, %struct._GimpVector2* %arrayidx36, %struct._GimpVector2* %untranslation_offset)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %66 = load i32, i32* %i, align 4
  %inc = add nsw i32 %66, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %if.then.2, %if.then.5, %for.cond
  ret void
}

declare void @gimp_vector2_sub(%struct._GimpVector2*, %struct._GimpVector2*, %struct._GimpVector2*) #1

declare void @gimp_vector2_add(%struct._GimpVector2*, %struct._GimpVector2*, %struct._GimpVector2*) #1

; Function Attrs: nounwind
declare double @atan2(double, double) #4

declare void @gimp_vector2_rotate(%struct._GimpVector2*, double) #1

declare double @gimp_vector2_length(%struct._GimpVector2*) #1

declare void @gimp_vector2_mul(%struct._GimpVector2*, double) #1

declare i32 @gimp_get_constrain_behavior_mask() #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

declare %struct._GimpCanvasGroup* @gimp_draw_tool_add_stroke_group(%struct._GimpDrawTool*) #1

declare void @gimp_draw_tool_push_group(%struct._GimpDrawTool*, %struct._GimpCanvasGroup*) #1

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_lines(%struct._GimpDrawTool*, %struct._GimpVector2*, i32, i32) #1

declare void @gimp_draw_tool_pop_group(%struct._GimpDrawTool*) #1

declare i32 @gimp_tool_control_is_active(%struct._GimpToolControl*) #1

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool*, i32, double, double, i32, i32, i32) #1

declare void @gimp_canvas_item_set_highlight(%struct._GimpCanvasItem*, i32) #1

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_line(%struct._GimpDrawTool*, double, double, double, double) #1

declare void @gimp_channel_select_polygon(%struct._GimpChannel*, i8*, i32, %struct._GimpVector2*, i32, i32, i32, double, double, i32) #1

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #1

declare i8* @g_dpgettext(i8*, i8*, i64) #1

declare void @gimp_tool_control_set_wants_click(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_precision(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl*, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
