; ModuleID = './app/tools/gimpperspectiveclonetool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpPerspectiveCloneToolClass = type { %struct._GimpBrushToolClass }
%struct._GimpBrushToolClass = type { %struct._GimpPaintToolClass }
%struct._GimpPaintToolClass = type { %struct._GimpColorToolClass }
%struct._GimpColorToolClass = type { %struct._GimpDrawToolClass, i32 (%struct._GimpColorTool*, i32, i32, i32*, %struct._GimpRGB*, i32*)*, void (%struct._GimpColorTool*, i32, i32, %struct._GimpRGB*, i32)* }
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
%struct._GimpCanvasItem = type { %struct._GimpObject }
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
%struct._GimpColorTool = type { %struct._GimpDrawTool, i32, i32, i32, i32, %struct._GimpColorOptions*, %struct._GimpSamplePoint*, i32, i32, i32 }
%struct._GimpColorOptions = type opaque
%struct._GimpSamplePoint = type opaque
%struct._GimpPerspectiveCloneTool = type { %struct._GimpBrushTool, %struct._GimpDisplay*, i32, i32, double, double, double, double, %struct._GimpMatrix3, [8 x double], [8 x double], i32, i32, i32, i32, double, double, double, double, double, double, double, double, double, double, i32 }
%struct._GimpBrushTool = type { %struct._GimpPaintTool, i32, i32, double, double }
%struct._GimpPaintTool = type { %struct._GimpColorTool, i32, i32, i8*, i8*, i8*, %struct._GimpPaintCore* }
%struct._GimpPaintCore = type { %struct._GimpObject, i32, i8*, %struct._GimpCoords, %struct._GimpCoords, %struct._GimpCoords, %struct._GimpVector2, double, double, i32, i32, i32, i32, i32, %struct._TileManager*, %struct._TileManager*, %struct._TileManager*, %struct._TempBuf*, %struct._TempBuf*, %struct._TempBuf*, %struct._GArray* }
%struct._GimpVector2 = type { double, double }
%struct._TileManager = type opaque
%struct._TempBuf = type opaque
%struct._GArray = type { i8*, i32 }
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
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GimpContainer = type opaque
%struct._GimpPerspectiveCloneOptions = type { %struct._GimpCloneOptions, i32 }
%struct._GimpCloneOptions = type { %struct._GimpSourceOptions, i32 }
%struct._GimpSourceOptions = type { %struct._GimpPaintOptions, i32, i32, i32 }
%struct._GimpPaintOptions = type { %struct._GimpToolOptions, %struct._GimpPaintInfo*, double, double, double, i32, i32, i32, %struct._GimpJitterOptions*, i32, %struct._GimpFadeOptions*, %struct._GimpGradientOptions*, %struct._GimpSmoothingOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpJitterOptions = type { i32, double }
%struct._GimpFadeOptions = type { i32, double, i32, i32 }
%struct._GimpGradientOptions = type { i32, i32 }
%struct._GimpSmoothingOptions = type { i32, i32, double }
%struct._GimpPerspectiveClone = type { %struct._GimpClone, double, double, double, double, %struct._GimpMatrix3, %struct._GimpMatrix3, %struct._TempBuf* }
%struct._GimpClone = type { %struct._GimpSourceCore }
%struct._GimpSourceCore = type { %struct._GimpBrushCore, i32, %struct._GimpDrawable*, double, double, double, double, double, double, i32 }
%struct._GimpBrushCore = type { %struct._GimpPaintCore, %struct._GimpBrush*, %struct._GimpBrush*, %struct._GimpDynamics*, double, double, double, double, double, %struct._TempBuf*, [2 x [2 x %struct._TempBuf*]], %struct._TempBuf*, i32, %struct._TempBuf*, %struct._TempBuf*, [5 x [5 x %struct._TempBuf*]], %struct._TempBuf*, i32, double, [360 x double], [360 x double], %struct._GRand* }
%struct._GRand = type opaque
%struct._GimpCanvasGroup = type { %struct._GimpCanvasItem }

@gimp_perspective_clone_tool_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"GimpPerspectiveCloneTool\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"gimp-perspective-clone-tool\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Perspective Clone\00", align 1
@.str.3 = private unnamed_addr constant [95 x i8] c"Perspective Clone Tool: Clone from an image source after applying a perspective transformation\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"_Perspective Clone\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"gimp-tool-perspective-clone\00", align 1
@gimp_perspective_clone_tool_parent_class = internal global i8* null, align 8
@GimpPerspectiveCloneTool_private_offset = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"notify::clone-mode\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"hard\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"Gimp-Tools\00", align 1
@__func__.gimp_perspective_clone_tool_transform_bounding_box = private unnamed_addr constant [51 x i8] c"gimp_perspective_clone_tool_transform_bounding_box\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"GIMP_IS_PERSPECTIVE_CLONE_TOOL (clone_tool)\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"src-drawable\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Ctrl-Click to set a clone source\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"context/context-pattern-select-set\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"clone-mode\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"clone-type\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"Source\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"sample-merged\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"Sample merged\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"pattern-view-type\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"pattern-view-size\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"Alignment:\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"align-mode\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_perspective_clone_tool_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_perspective_clone_tool_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_perspective_clone_tool_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_brush_tool_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 304, void (i8*, i8*)* bitcast (void (i8*)* @gimp_perspective_clone_tool_class_intern_init to void (i8*, i8*)*), i32 712, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpPerspectiveCloneTool*)* @gimp_perspective_clone_tool_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_perspective_clone_tool_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_perspective_clone_tool_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_tool_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_perspective_clone_tool_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_perspective_clone_tool_parent_class, align 8
  %1 = load i32, i32* @GimpPerspectiveCloneTool_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpPerspectiveCloneTool_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpPerspectiveCloneToolClass*
  call void @gimp_perspective_clone_tool_class_init(%struct._GimpPerspectiveCloneToolClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_perspective_clone_tool_init(%struct._GimpPerspectiveCloneTool* %clone_tool) #3 {
entry:
  %clone_tool.addr = alloca %struct._GimpPerspectiveCloneTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  store %struct._GimpPerspectiveCloneTool* %clone_tool, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %0 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %1 = bitcast %struct._GimpPerspectiveCloneTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 3
  %4 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_set_action_object_2(%struct._GimpToolControl* %4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i32 0, i32 0))
  %5 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %transform = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %5, i32 0, i32 8
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %transform)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_perspective_clone_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, i8* %data) #3 {
entry:
  %callback.addr = alloca void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  %call = call i64 @gimp_perspective_clone_tool_get_type() #6
  %call1 = call i64 @gimp_perspective_clone_options_get_type() #6
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0)) #7
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.3, i32 0, i32 0)) #7
  %1 = load i8*, i8** %data.addr, align 8
  call void %0(i64 %call, i64 %call1, %struct._GtkWidget* (%struct._GimpToolOptions*)* @gimp_perspective_clone_options_gui, i32 24512, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i8* %call2, i8* %call3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0), i8* %1)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_perspective_clone_options_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_perspective_clone_options_gui(%struct._GimpToolOptions* %tool_options) #3 {
entry:
  %tool_options.addr = alloca %struct._GimpToolOptions*, align 8
  %config = alloca %struct._GObject*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %paint_options = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %mode = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  store %struct._GimpToolOptions* %tool_options, %struct._GimpToolOptions** %tool_options.addr, align 8
  %0 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %1 = bitcast %struct._GimpToolOptions* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  store %struct._GObject* %2, %struct._GObject** %config, align 8
  %call1 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %vbox, align 8
  %3 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %call2 = call %struct._GtkWidget* @gimp_paint_options_gui(%struct._GimpToolOptions* %3)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %paint_options, align 8
  %4 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call3 = call %struct._GtkWidget* @gimp_prop_enum_radio_box_new(%struct._GObject* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 0, i32 0)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %mode, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_box_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkBox*
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %mode, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %7, %struct._GtkWidget* %8, i32 0, i32 0, i32 0)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %mode, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %9)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_box_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call6)
  %12 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkBox*
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %paint_options, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %12, %struct._GtkWidget* %13, i32 0, i32 0, i32 0)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %paint_options, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %14)
  %15 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0)) #7
  %call9 = call %struct._GtkWidget* @gimp_prop_enum_radio_frame_new(%struct._GObject* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8* %call8, i32 0, i32 0)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %frame, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_box_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call10)
  %18 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkBox*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %18, %struct._GtkWidget* %19, i32 0, i32 0, i32 0)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  %21 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0)) #7
  %call13 = call %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8* %call12)
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %button, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_frame_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call14)
  %24 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkFrame*
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gimp_enum_radio_frame_add(%struct._GtkFrame* %24, %struct._GtkWidget* %25, i32 0, i32 1)
  %26 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %27 = bitcast %struct._GimpToolOptions* %26 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_context_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call16)
  %28 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpContext*
  %call18 = call %struct._GtkWidget* @gimp_prop_pattern_box_new(%struct._GimpContainer* null, %struct._GimpContext* %28, i8* null, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i32 0, i32 0))
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %hbox, align 8
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_frame_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call19)
  %31 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkFrame*
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gimp_enum_radio_frame_add(%struct._GtkFrame* %31, %struct._GtkWidget* %32, i32 1, i32 1)
  %call21 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 2)
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %hbox, align 8
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_box_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call22)
  %35 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkBox*
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %35, %struct._GtkWidget* %36, i32 0, i32 0, i32 0)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %37)
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0)) #7
  %call25 = call %struct._GtkWidget* @gtk_label_new(i8* %call24)
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %label, align 8
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_box_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call26)
  %40 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkBox*
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %40, %struct._GtkWidget* %41, i32 0, i32 0, i32 0)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %42)
  %43 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call28 = call %struct._GtkWidget* @gimp_prop_enum_combo_box_new(%struct._GObject* %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i32 0, i32 0)
  store %struct._GtkWidget* %call28, %struct._GtkWidget** %combo, align 8
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_box_get_type() #6
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call29)
  %46 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkBox*
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %46, %struct._GtkWidget* %47, i32 1, i32 1, i32 0)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %48)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  ret %struct._GtkWidget* %49
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_perspective_clone_tool_class_init(%struct._GimpPerspectiveCloneToolClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpPerspectiveCloneToolClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %tool_class = alloca %struct._GimpToolClass*, align 8
  %draw_tool_class = alloca %struct._GimpDrawToolClass*, align 8
  store %struct._GimpPerspectiveCloneToolClass* %klass, %struct._GimpPerspectiveCloneToolClass** %klass.addr, align 8
  %0 = load %struct._GimpPerspectiveCloneToolClass*, %struct._GimpPerspectiveCloneToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpPerspectiveCloneToolClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpPerspectiveCloneToolClass*, %struct._GimpPerspectiveCloneToolClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpPerspectiveCloneToolClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_tool_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpToolClass*
  store %struct._GimpToolClass* %5, %struct._GimpToolClass** %tool_class, align 8
  %6 = load %struct._GimpPerspectiveCloneToolClass*, %struct._GimpPerspectiveCloneToolClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpPerspectiveCloneToolClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_draw_tool_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpDrawToolClass*
  store %struct._GimpDrawToolClass* %8, %struct._GimpDrawToolClass** %draw_tool_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_perspective_clone_tool_constructed, void (%struct._GObject*)** %constructed, align 8
  %10 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %initialize = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %10, i32 0, i32 3
  store i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)* @gimp_perspective_clone_tool_initialize, i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)** %initialize, align 8
  %11 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %has_display = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %11, i32 0, i32 1
  store i32 (%struct._GimpTool*, %struct._GimpDisplay*)* @gimp_perspective_clone_tool_has_display, i32 (%struct._GimpTool*, %struct._GimpDisplay*)** %has_display, align 8
  %12 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %has_image = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %12, i32 0, i32 2
  store %struct._GimpDisplay* (%struct._GimpTool*, %struct._GimpImage*)* @gimp_perspective_clone_tool_has_image, %struct._GimpDisplay* (%struct._GimpTool*, %struct._GimpImage*)** %has_image, align 8
  %13 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %control = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %13, i32 0, i32 4
  store void (%struct._GimpTool*, i32, %struct._GimpDisplay*)* @gimp_perspective_clone_tool_control, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)** %control, align 8
  %14 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %14, i32 0, i32 5
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_perspective_clone_tool_button_press, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_press, align 8
  %15 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_release = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %15, i32 0, i32 6
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_perspective_clone_tool_button_release, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_release, align 8
  %16 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %motion = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %16, i32 0, i32 7
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_perspective_clone_tool_motion, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %motion, align 8
  %17 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %17, i32 0, i32 13
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)* @gimp_perspective_clone_tool_cursor_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %18 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %oper_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %18, i32 0, i32 12
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_perspective_clone_tool_oper_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %oper_update, align 8
  %19 = load %struct._GimpDrawToolClass*, %struct._GimpDrawToolClass** %draw_tool_class, align 8
  %draw = getelementptr inbounds %struct._GimpDrawToolClass, %struct._GimpDrawToolClass* %19, i32 0, i32 1
  store void (%struct._GimpDrawTool*)* @gimp_perspective_clone_tool_draw, void (%struct._GimpDrawTool*)** %draw, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_draw_tool_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_perspective_clone_tool_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %clone_tool = alloca %struct._GimpPerspectiveCloneTool*, align 8
  %options = alloca %struct._GimpPerspectiveCloneOptions*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %4 = bitcast %struct._GObject* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_perspective_clone_tool_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpPerspectiveCloneTool*
  store %struct._GimpPerspectiveCloneTool* %5, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %6 = load i8*, i8** @gimp_perspective_clone_tool_parent_class, align 8
  %7 = bitcast i8* %6 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 80)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 9
  %9 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i8*, i8** @gimp_perspective_clone_tool_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 80)
  %12 = bitcast %struct._GTypeClass* %call5 to %struct._GObjectClass*
  %constructed6 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 9
  %13 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed6, align 8
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %13(%struct._GObject* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %16 = bitcast %struct._GimpTool* %15 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_tool_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call7)
  %17 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpTool*
  %call9 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %17)
  %18 = bitcast %struct._GimpToolOptions* %call9 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_perspective_clone_options_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call10)
  %19 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpPerspectiveCloneOptions*
  store %struct._GimpPerspectiveCloneOptions* %19, %struct._GimpPerspectiveCloneOptions** %options, align 8
  %20 = load %struct._GimpPerspectiveCloneOptions*, %struct._GimpPerspectiveCloneOptions** %options, align 8
  %21 = bitcast %struct._GimpPerspectiveCloneOptions* %20 to i8*
  %22 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %23 = bitcast %struct._GimpPerspectiveCloneTool* %22 to i8*
  %call12 = call i64 @g_signal_connect_object(i8* %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPerspectiveCloneOptions*, %struct._GParamSpec*, %struct._GimpPerspectiveCloneTool*)* @gimp_perspective_clone_tool_mode_notify to void ()*), i8* %23, i32 0)
  %24 = load %struct._GimpPerspectiveCloneOptions*, %struct._GimpPerspectiveCloneOptions** %options, align 8
  %25 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  call void @gimp_perspective_clone_tool_mode_notify(%struct._GimpPerspectiveCloneOptions* %24, %struct._GParamSpec* null, %struct._GimpPerspectiveCloneTool* %25)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_perspective_clone_tool_initialize(%struct._GimpTool* %tool, %struct._GimpDisplay* %display, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %tool.addr = alloca %struct._GimpTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %clone_tool = alloca %struct._GimpPerspectiveCloneTool*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %i = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_perspective_clone_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPerspectiveCloneTool*
  store %struct._GimpPerspectiveCloneTool* %2, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %3 = load i8*, i8** @gimp_perspective_clone_tool_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_tool_get_type() #6
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpToolClass*
  %initialize = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %5, i32 0, i32 3
  %6 = load i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)*, i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)** %initialize, align 8
  %7 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call i32 %6(%struct._GimpTool* %7, %struct._GimpDisplay* %8, %struct._GError** %9)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %11 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display5 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %11, i32 0, i32 4
  %12 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display5, align 8
  %cmp = icmp ne %struct._GimpDisplay* %10, %12
  br i1 %cmp, label %if.then.6, label %if.end.15

if.then.6:                                        ; preds = %if.end
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call7 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %13)
  store %struct._GimpImage* %call7, %struct._GimpImage** %image, align 8
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %15 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display8 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %15, i32 0, i32 4
  store %struct._GimpDisplay* %14, %struct._GimpDisplay** %display8, align 8
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call9 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %16)
  %17 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %17, i32 0, i32 5
  store %struct._GimpDrawable* %call9, %struct._GimpDrawable** %drawable, align 8
  %18 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %19 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_perspective_clone_tool_bounds(%struct._GimpPerspectiveCloneTool* %18, %struct._GimpDisplay* %19)
  %20 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  call void @gimp_perspective_clone_tool_prepare(%struct._GimpPerspectiveCloneTool* %20)
  %21 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  call void @gimp_perspective_clone_tool_recalc_matrix(%struct._GimpPerspectiveCloneTool* %21)
  %22 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %23 = bitcast %struct._GimpTool* %22 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_draw_tool_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call10)
  %24 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpDrawTool*
  %25 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_draw_tool_start(%struct._GimpDrawTool* %24, %struct._GimpDisplay* %25)
  %26 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %function = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %26, i32 0, i32 25
  store i32 0, i32* %function, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.6
  %27 = load i32, i32* %i, align 4
  %cmp12 = icmp slt i32 %27, 8
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %i, align 4
  %idxprom = sext i32 %28 to i64
  %29 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %trans_info = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %29, i32 0, i32 9
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* %trans_info, i32 0, i64 %idxprom
  %30 = load double, double* %arrayidx, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %31 to i64
  %32 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %old_trans_info = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %32, i32 0, i32 10
  %arrayidx14 = getelementptr inbounds [8 x double], [8 x double]* %old_trans_info, i32 0, i64 %idxprom13
  store double %30, double* %arrayidx14, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.15

if.end.15:                                        ; preds = %for.end, %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_perspective_clone_tool_has_display(%struct._GimpTool* %tool, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %clone_tool = alloca %struct._GimpPerspectiveCloneTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_perspective_clone_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPerspectiveCloneTool*
  store %struct._GimpPerspectiveCloneTool* %2, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %4 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %src_display = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %4, i32 0, i32 1
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %src_display, align 8
  %cmp = icmp eq %struct._GimpDisplay* %3, %5
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %6 = load i8*, i8** @gimp_perspective_clone_tool_parent_class, align 8
  %7 = bitcast i8* %6 to %struct._GTypeClass*
  %call2 = call i64 @gimp_tool_get_type() #6
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call2)
  %8 = bitcast %struct._GTypeClass* %call3 to %struct._GimpToolClass*
  %has_display = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %8, i32 0, i32 1
  %9 = load i32 (%struct._GimpTool*, %struct._GimpDisplay*)*, i32 (%struct._GimpTool*, %struct._GimpDisplay*)** %has_display, align 8
  %10 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %11 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call4 = call i32 %9(%struct._GimpTool* %10, %struct._GimpDisplay* %11)
  %tobool = icmp ne i32 %call4, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %12 = phi i1 [ true, %entry ], [ %tobool, %lor.rhs ]
  %lor.ext = zext i1 %12 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpDisplay* @gimp_perspective_clone_tool_has_image(%struct._GimpTool* %tool, %struct._GimpImage* %image) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %clone_tool = alloca %struct._GimpPerspectiveCloneTool*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_perspective_clone_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPerspectiveCloneTool*
  store %struct._GimpPerspectiveCloneTool* %2, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %3 = load i8*, i8** @gimp_perspective_clone_tool_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_tool_get_type() #6
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
  br i1 %tobool, label %if.end.16, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %10 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %src_display = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %10, i32 0, i32 1
  %11 = load %struct._GimpDisplay*, %struct._GimpDisplay** %src_display, align 8
  %tobool5 = icmp ne %struct._GimpDisplay* %11, null
  br i1 %tobool5, label %if.then, label %if.end.16

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %tobool6 = icmp ne %struct._GimpImage* %12, null
  br i1 %tobool6, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %if.then
  %13 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %src_display8 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %13, i32 0, i32 1
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %src_display8, align 8
  %call9 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %14)
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp = icmp eq %struct._GimpImage* %call9, %15
  br i1 %cmp, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %land.lhs.true.7
  %16 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %src_display11 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %16, i32 0, i32 1
  %17 = load %struct._GimpDisplay*, %struct._GimpDisplay** %src_display11, align 8
  store %struct._GimpDisplay* %17, %struct._GimpDisplay** %display, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.10, %land.lhs.true.7, %if.then
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %tobool12 = icmp ne %struct._GimpImage* %18, null
  br i1 %tobool12, label %if.end.15, label %if.then.13

if.then.13:                                       ; preds = %if.end
  %19 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %src_display14 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %19, i32 0, i32 1
  %20 = load %struct._GimpDisplay*, %struct._GimpDisplay** %src_display14, align 8
  store %struct._GimpDisplay* %20, %struct._GimpDisplay** %display, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %land.lhs.true, %entry
  %21 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  ret %struct._GimpDisplay* %21
}

; Function Attrs: nounwind uwtable
define internal void @gimp_perspective_clone_tool_control(%struct._GimpTool* %tool, i32 %action, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %action.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %clone_tool = alloca %struct._GimpPerspectiveCloneTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %action, i32* %action.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_perspective_clone_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPerspectiveCloneTool*
  store %struct._GimpPerspectiveCloneTool* %2, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %3 = load i32, i32* %action.addr, align 4
  switch i32 %3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %4 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_perspective_clone_tool_bounds(%struct._GimpPerspectiveCloneTool* %4, %struct._GimpDisplay* %5)
  %6 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  call void @gimp_perspective_clone_tool_recalc_matrix(%struct._GimpPerspectiveCloneTool* %6)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  call void @gimp_perspective_clone_tool_halt(%struct._GimpPerspectiveCloneTool* %7)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.3, %sw.bb.2, %sw.bb
  %8 = load i8*, i8** @gimp_perspective_clone_tool_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call4 = call i64 @gimp_tool_get_type() #6
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 %call4)
  %10 = bitcast %struct._GTypeClass* %call5 to %struct._GimpToolClass*
  %control = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %10, i32 0, i32 4
  %11 = load void (%struct._GimpTool*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)** %control, align 8
  %12 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %13 = load i32, i32* %action.addr, align 4
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %11(%struct._GimpTool* %12, i32 %13, %struct._GimpDisplay* %14)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_perspective_clone_tool_button_press(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %press_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %press_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %paint_tool = alloca %struct._GimpPaintTool*, align 8
  %clone_tool = alloca %struct._GimpPerspectiveCloneTool*, align 8
  %clone = alloca %struct._GimpPerspectiveClone*, align 8
  %source_core = alloca %struct._GimpSourceCore*, align 8
  %options = alloca %struct._GimpPerspectiveCloneOptions*, align 8
  %toggle_mask = alloca i32, align 4
  %nnx = alloca double, align 8
  %nny = alloca double, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %press_type, i32* %press_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_paint_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaintTool*
  store %struct._GimpPaintTool* %2, %struct._GimpPaintTool** %paint_tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_perspective_clone_tool_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpPerspectiveCloneTool*
  store %struct._GimpPerspectiveCloneTool* %5, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %6 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %core = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %6, i32 0, i32 6
  %7 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %8 = bitcast %struct._GimpPaintCore* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_perspective_clone_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpPerspectiveClone*
  store %struct._GimpPerspectiveClone* %9, %struct._GimpPerspectiveClone** %clone, align 8
  %10 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone, align 8
  %11 = bitcast %struct._GimpPerspectiveClone* %10 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_source_core_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call6)
  %12 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpSourceCore*
  store %struct._GimpSourceCore* %12, %struct._GimpSourceCore** %source_core, align 8
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %14 = bitcast %struct._GimpTool* %13 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_tool_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call8)
  %15 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpTool*
  %call10 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %15)
  %16 = bitcast %struct._GimpToolOptions* %call10 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_perspective_clone_options_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpPerspectiveCloneOptions*
  store %struct._GimpPerspectiveCloneOptions* %17, %struct._GimpPerspectiveCloneOptions** %options, align 8
  %18 = load %struct._GimpPerspectiveCloneOptions*, %struct._GimpPerspectiveCloneOptions** %options, align 8
  %clone_mode = getelementptr inbounds %struct._GimpPerspectiveCloneOptions, %struct._GimpPerspectiveCloneOptions* %18, i32 0, i32 1
  %19 = load i32, i32* %clone_mode, align 4
  switch i32 %19, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %entry
  %20 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %function = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %20, i32 0, i32 25
  %21 = load i32, i32* %function, align 4
  %cmp = icmp eq i32 %21, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %22 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %23 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %24 = load i32, i32* %state.addr, align 4
  %25 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_perspective_clone_tool_oper_update(%struct._GimpTool* %22, %struct._GimpCoords* %23, i32 %24, i32 1, %struct._GimpDisplay* %25)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %26 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %26, i32 0, i32 0
  %27 = load double, double* %x, align 8
  %28 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %lastx = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %28, i32 0, i32 6
  store double %27, double* %lastx, align 8
  %29 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %29, i32 0, i32 1
  %30 = load double, double* %y, align 8
  %31 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %lasty = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %31, i32 0, i32 7
  store double %30, double* %lasty, align 8
  %32 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %32, i32 0, i32 3
  %33 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_activate(%struct._GimpToolControl* %33)
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %call14 = call i32 @gimp_get_toggle_behavior_mask()
  store i32 %call14, i32* %toggle_mask, align 4
  %34 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %35 = bitcast %struct._GimpTool* %34 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_draw_tool_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call15)
  %36 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %36)
  %37 = load i32, i32* %state.addr, align 4
  %38 = load i32, i32* %toggle_mask, align 4
  %or = or i32 %38, 1
  %and = and i32 %37, %or
  %39 = load i32, i32* %toggle_mask, align 4
  %cmp17 = icmp eq i32 %and, %39
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %sw.bb.13
  %40 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %set_source = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %40, i32 0, i32 1
  store i32 1, i32* %set_source, align 4
  %41 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %42 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %src_display = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %42, i32 0, i32 1
  store %struct._GimpDisplay* %41, %struct._GimpDisplay** %src_display, align 8
  br label %if.end.20

if.else:                                          ; preds = %sw.bb.13
  %43 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %set_source19 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %43, i32 0, i32 1
  store i32 0, i32* %set_source19, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.18
  %44 = load i8*, i8** @gimp_perspective_clone_tool_parent_class, align 8
  %45 = bitcast i8* %44 to %struct._GTypeClass*
  %call21 = call i64 @gimp_tool_get_type() #6
  %call22 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %45, i64 %call21)
  %46 = bitcast %struct._GTypeClass* %call22 to %struct._GimpToolClass*
  %button_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %46, i32 0, i32 5
  %47 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_press, align 8
  %48 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %49 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %50 = load i32, i32* %time.addr, align 4
  %51 = load i32, i32* %state.addr, align 4
  %52 = load i32, i32* %press_type.addr, align 4
  %53 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %47(%struct._GimpTool* %48, %struct._GimpCoords* %49, i32 %50, i32 %51, i32 %52, %struct._GimpDisplay* %53)
  %54 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone, align 8
  %55 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x23 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %55, i32 0, i32 0
  %56 = load double, double* %x23, align 8
  %57 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y24 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %57, i32 0, i32 1
  %58 = load double, double* %y24, align 8
  call void @gimp_perspective_clone_get_source_point(%struct._GimpPerspectiveClone* %54, double %56, double %58, double* %nnx, double* %nny)
  %59 = load double, double* %nnx, align 8
  %conv = fptosi double %59 to i32
  %60 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %src_x = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %60, i32 0, i32 2
  store i32 %conv, i32* %src_x, align 4
  %61 = load double, double* %nny, align 8
  %conv25 = fptosi double %61 to i32
  %62 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %src_y = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %62, i32 0, i32 3
  store i32 %conv25, i32* %src_y, align 4
  %63 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %64 = bitcast %struct._GimpTool* %63 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_draw_tool_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call26)
  %65 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %65)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end.20, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_perspective_clone_tool_button_release(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %release_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %release_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %options = alloca %struct._GimpPerspectiveCloneOptions*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %release_type, i32* %release_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  %call2 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %2)
  %3 = bitcast %struct._GimpToolOptions* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_perspective_clone_options_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpPerspectiveCloneOptions*
  store %struct._GimpPerspectiveCloneOptions* %4, %struct._GimpPerspectiveCloneOptions** %options, align 8
  %5 = load %struct._GimpPerspectiveCloneOptions*, %struct._GimpPerspectiveCloneOptions** %options, align 8
  %clone_mode = getelementptr inbounds %struct._GimpPerspectiveCloneOptions, %struct._GimpPerspectiveCloneOptions* %5, i32 0, i32 1
  %6 = load i32, i32* %clone_mode, align 4
  switch i32 %6, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %7, i32 0, i32 3
  %8 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_halt(%struct._GimpToolControl* %8)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %9 = load i8*, i8** @gimp_perspective_clone_tool_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call6 = call i64 @gimp_tool_get_type() #6
  %call7 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 %call6)
  %11 = bitcast %struct._GTypeClass* %call7 to %struct._GimpToolClass*
  %button_release = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %11, i32 0, i32 6
  %12 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_release, align 8
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %14 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %15 = load i32, i32* %time.addr, align 4
  %16 = load i32, i32* %state.addr, align 4
  %17 = load i32, i32* %release_type.addr, align 4
  %18 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %12(%struct._GimpTool* %13, %struct._GimpCoords* %14, i32 %15, i32 %16, i32 %17, %struct._GimpDisplay* %18)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.5, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_perspective_clone_tool_motion(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %clone_tool = alloca %struct._GimpPerspectiveCloneTool*, align 8
  %paint_tool = alloca %struct._GimpPaintTool*, align 8
  %clone = alloca %struct._GimpPerspectiveClone*, align 8
  %options = alloca %struct._GimpPerspectiveCloneOptions*, align 8
  %diff_x = alloca double, align 8
  %diff_y = alloca double, align 8
  %nnx = alloca double, align 8
  %nny = alloca double, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_perspective_clone_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPerspectiveCloneTool*
  store %struct._GimpPerspectiveCloneTool* %2, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_paint_tool_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpPaintTool*
  store %struct._GimpPaintTool* %5, %struct._GimpPaintTool** %paint_tool, align 8
  %6 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %core = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %6, i32 0, i32 6
  %7 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %8 = bitcast %struct._GimpPaintCore* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_perspective_clone_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpPerspectiveClone*
  store %struct._GimpPerspectiveClone* %9, %struct._GimpPerspectiveClone** %clone, align 8
  %10 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %11 = bitcast %struct._GimpTool* %10 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_tool_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call6)
  %12 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpTool*
  %call8 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %12)
  %13 = bitcast %struct._GimpToolOptions* %call8 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_perspective_clone_options_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call9)
  %14 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpPerspectiveCloneOptions*
  store %struct._GimpPerspectiveCloneOptions* %14, %struct._GimpPerspectiveCloneOptions** %options, align 8
  %15 = load %struct._GimpPerspectiveCloneOptions*, %struct._GimpPerspectiveCloneOptions** %options, align 8
  %clone_mode = getelementptr inbounds %struct._GimpPerspectiveCloneOptions, %struct._GimpPerspectiveCloneOptions* %15, i32 0, i32 1
  %16 = load i32, i32* %clone_mode, align 4
  %cmp = icmp eq i32 %16, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %17 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %function = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %17, i32 0, i32 25
  %18 = load i32, i32* %function, align 4
  %cmp11 = icmp eq i32 %18, 0
  br i1 %cmp11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then
  br label %if.end.62

if.end:                                           ; preds = %if.then
  %19 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %20 = bitcast %struct._GimpTool* %19 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_draw_tool_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call13)
  %21 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %21)
  %22 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %22, i32 0, i32 0
  %23 = load double, double* %x, align 8
  %24 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %curx = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %24, i32 0, i32 4
  store double %23, double* %curx, align 8
  %25 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %25, i32 0, i32 1
  %26 = load double, double* %y, align 8
  %27 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %cury = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %27, i32 0, i32 5
  store double %26, double* %cury, align 8
  %28 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %curx15 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %28, i32 0, i32 4
  %29 = load double, double* %curx15, align 8
  %30 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %lastx = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %30, i32 0, i32 6
  %31 = load double, double* %lastx, align 8
  %sub = fsub double %29, %31
  store double %sub, double* %diff_x, align 8
  %32 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %cury16 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %32, i32 0, i32 5
  %33 = load double, double* %cury16, align 8
  %34 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %lasty = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %34, i32 0, i32 7
  %35 = load double, double* %lasty, align 8
  %sub17 = fsub double %33, %35
  store double %sub17, double* %diff_y, align 8
  %36 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %function18 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %36, i32 0, i32 25
  %37 = load i32, i32* %function18, align 4
  switch i32 %37, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.22
    i32 4, label %sw.bb.29
    i32 5, label %sw.bb.36
  ]

sw.bb:                                            ; preds = %if.end
  %38 = load double, double* %diff_x, align 8
  %39 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %trans_info = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %39, i32 0, i32 9
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* %trans_info, i32 0, i64 0
  %40 = load double, double* %arrayidx, align 8
  %add = fadd double %40, %38
  store double %add, double* %arrayidx, align 8
  %41 = load double, double* %diff_y, align 8
  %42 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %trans_info19 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %42, i32 0, i32 9
  %arrayidx20 = getelementptr inbounds [8 x double], [8 x double]* %trans_info19, i32 0, i64 1
  %43 = load double, double* %arrayidx20, align 8
  %add21 = fadd double %43, %41
  store double %add21, double* %arrayidx20, align 8
  br label %sw.epilog

sw.bb.22:                                         ; preds = %if.end
  %44 = load double, double* %diff_x, align 8
  %45 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %trans_info23 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %45, i32 0, i32 9
  %arrayidx24 = getelementptr inbounds [8 x double], [8 x double]* %trans_info23, i32 0, i64 2
  %46 = load double, double* %arrayidx24, align 8
  %add25 = fadd double %46, %44
  store double %add25, double* %arrayidx24, align 8
  %47 = load double, double* %diff_y, align 8
  %48 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %trans_info26 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %48, i32 0, i32 9
  %arrayidx27 = getelementptr inbounds [8 x double], [8 x double]* %trans_info26, i32 0, i64 3
  %49 = load double, double* %arrayidx27, align 8
  %add28 = fadd double %49, %47
  store double %add28, double* %arrayidx27, align 8
  br label %sw.epilog

sw.bb.29:                                         ; preds = %if.end
  %50 = load double, double* %diff_x, align 8
  %51 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %trans_info30 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %51, i32 0, i32 9
  %arrayidx31 = getelementptr inbounds [8 x double], [8 x double]* %trans_info30, i32 0, i64 4
  %52 = load double, double* %arrayidx31, align 8
  %add32 = fadd double %52, %50
  store double %add32, double* %arrayidx31, align 8
  %53 = load double, double* %diff_y, align 8
  %54 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %trans_info33 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %54, i32 0, i32 9
  %arrayidx34 = getelementptr inbounds [8 x double], [8 x double]* %trans_info33, i32 0, i64 5
  %55 = load double, double* %arrayidx34, align 8
  %add35 = fadd double %55, %53
  store double %add35, double* %arrayidx34, align 8
  br label %sw.epilog

sw.bb.36:                                         ; preds = %if.end
  %56 = load double, double* %diff_x, align 8
  %57 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %trans_info37 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %57, i32 0, i32 9
  %arrayidx38 = getelementptr inbounds [8 x double], [8 x double]* %trans_info37, i32 0, i64 6
  %58 = load double, double* %arrayidx38, align 8
  %add39 = fadd double %58, %56
  store double %add39, double* %arrayidx38, align 8
  %59 = load double, double* %diff_y, align 8
  %60 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %trans_info40 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %60, i32 0, i32 9
  %arrayidx41 = getelementptr inbounds [8 x double], [8 x double]* %trans_info40, i32 0, i64 7
  %61 = load double, double* %arrayidx41, align 8
  %add42 = fadd double %61, %59
  store double %add42, double* %arrayidx41, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.36, %sw.bb.29, %sw.bb.22, %sw.bb
  %62 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  call void @gimp_perspective_clone_tool_recalc_matrix(%struct._GimpPerspectiveCloneTool* %62)
  %63 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %curx43 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %63, i32 0, i32 4
  %64 = load double, double* %curx43, align 8
  %65 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %lastx44 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %65, i32 0, i32 6
  store double %64, double* %lastx44, align 8
  %66 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %cury45 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %66, i32 0, i32 5
  %67 = load double, double* %cury45, align 8
  %68 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %lasty46 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %68, i32 0, i32 7
  store double %67, double* %lasty46, align 8
  %69 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %70 = bitcast %struct._GimpTool* %69 to %struct._GTypeInstance*
  %call47 = call i64 @gimp_draw_tool_get_type() #6
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call47)
  %71 = bitcast %struct._GTypeInstance* %call48 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %71)
  br label %if.end.62

if.else:                                          ; preds = %entry
  %72 = load %struct._GimpPerspectiveCloneOptions*, %struct._GimpPerspectiveCloneOptions** %options, align 8
  %clone_mode49 = getelementptr inbounds %struct._GimpPerspectiveCloneOptions, %struct._GimpPerspectiveCloneOptions* %72, i32 0, i32 1
  %73 = load i32, i32* %clone_mode49, align 4
  %cmp50 = icmp eq i32 %73, 1
  br i1 %cmp50, label %if.then.51, label %if.end.61

if.then.51:                                       ; preds = %if.else
  %74 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %75 = bitcast %struct._GimpTool* %74 to %struct._GTypeInstance*
  %call52 = call i64 @gimp_draw_tool_get_type() #6
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call52)
  %76 = bitcast %struct._GTypeInstance* %call53 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %76)
  %77 = load i8*, i8** @gimp_perspective_clone_tool_parent_class, align 8
  %78 = bitcast i8* %77 to %struct._GTypeClass*
  %call54 = call i64 @gimp_tool_get_type() #6
  %call55 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %78, i64 %call54)
  %79 = bitcast %struct._GTypeClass* %call55 to %struct._GimpToolClass*
  %motion = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %79, i32 0, i32 7
  %80 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %motion, align 8
  %81 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %82 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %83 = load i32, i32* %time.addr, align 4
  %84 = load i32, i32* %state.addr, align 4
  %85 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %80(%struct._GimpTool* %81, %struct._GimpCoords* %82, i32 %83, i32 %84, %struct._GimpDisplay* %85)
  %86 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone, align 8
  %87 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x56 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %87, i32 0, i32 0
  %88 = load double, double* %x56, align 8
  %89 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y57 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %89, i32 0, i32 1
  %90 = load double, double* %y57, align 8
  call void @gimp_perspective_clone_get_source_point(%struct._GimpPerspectiveClone* %86, double %88, double %90, double* %nnx, double* %nny)
  %91 = load double, double* %nnx, align 8
  %conv = fptosi double %91 to i32
  %92 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %src_x = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %92, i32 0, i32 2
  store i32 %conv, i32* %src_x, align 4
  %93 = load double, double* %nny, align 8
  %conv58 = fptosi double %93 to i32
  %94 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %src_y = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %94, i32 0, i32 3
  store i32 %conv58, i32* %src_y, align 4
  %95 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %96 = bitcast %struct._GimpTool* %95 to %struct._GTypeInstance*
  %call59 = call i64 @gimp_draw_tool_get_type() #6
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 %call59)
  %97 = bitcast %struct._GTypeInstance* %call60 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %97)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.51, %if.else
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.12, %if.end.61, %sw.epilog
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_perspective_clone_tool_cursor_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %clone_tool = alloca %struct._GimpPerspectiveCloneTool*, align 8
  %options = alloca %struct._GimpPerspectiveCloneOptions*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %tool_class = alloca %struct._GimpToolClass*, align 8
  %cursor = alloca i32, align 4
  %modifier = alloca i32, align 4
  %toggle_mask = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_perspective_clone_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPerspectiveCloneTool*
  store %struct._GimpPerspectiveCloneTool* %2, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  store i32 1025, i32* %cursor, align 4
  store i32 0, i32* %modifier, align 4
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_perspective_clone_options_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpPerspectiveCloneOptions*
  store %struct._GimpPerspectiveCloneOptions* %7, %struct._GimpPerspectiveCloneOptions** %options, align 8
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call7 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %8)
  store %struct._GimpImage* %call7, %struct._GimpImage** %image, align 8
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %10 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %call8 = call i32 @gimp_image_coords_in_active_pickable(%struct._GimpImage* %9, %struct._GimpCoords* %10, i32 0, i32 1)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1025, i32* %cursor, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GimpPerspectiveCloneOptions*, %struct._GimpPerspectiveCloneOptions** %options, align 8
  %clone_mode = getelementptr inbounds %struct._GimpPerspectiveCloneOptions, %struct._GimpPerspectiveCloneOptions* %11, i32 0, i32 1
  %12 = load i32, i32* %clone_mode, align 4
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %13, i32 0, i32 3
  %14 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call10 = call i32 @gimp_tool_control_get_cursor(%struct._GimpToolControl* %14)
  store i32 %call10, i32* %cursor, align 4
  %15 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %function = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %15, i32 0, i32 25
  %16 = load i32, i32* %function, align 4
  switch i32 %16, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.11
    i32 4, label %sw.bb.12
    i32 5, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %if.then.9
  store i32 1032, i32* %cursor, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.then.9
  store i32 1033, i32* %cursor, align 4
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.then.9
  store i32 1034, i32* %cursor, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.then.9
  store i32 1035, i32* %cursor, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.9
  store i32 1027, i32* %cursor, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb
  br label %if.end.31

if.else:                                          ; preds = %if.end
  %17 = load %struct._GimpPerspectiveCloneOptions*, %struct._GimpPerspectiveCloneOptions** %options, align 8
  %18 = bitcast %struct._GimpPerspectiveCloneOptions* %17 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_clone_options_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call14)
  %19 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpCloneOptions*
  %clone_type = getelementptr inbounds %struct._GimpCloneOptions, %struct._GimpCloneOptions* %19, i32 0, i32 1
  %20 = load i32, i32* %clone_type, align 4
  %cmp16 = icmp eq i32 %20, 0
  br i1 %cmp16, label %if.then.17, label %if.end.30

if.then.17:                                       ; preds = %if.else
  %call18 = call i32 @gimp_get_toggle_behavior_mask()
  store i32 %call18, i32* %toggle_mask, align 4
  %21 = load i32, i32* %state.addr, align 4
  %22 = load i32, i32* %toggle_mask, align 4
  %or = or i32 %22, 1
  %and = and i32 %21, %or
  %23 = load i32, i32* %toggle_mask, align 4
  %cmp19 = icmp eq i32 %and, %23
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.then.17
  store i32 1027, i32* %cursor, align 4
  br label %if.end.29

if.else.21:                                       ; preds = %if.then.17
  %24 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %25 = bitcast %struct._GimpTool* %24 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_paint_tool_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call22)
  %26 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpPaintTool*
  %core = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %26, i32 0, i32 6
  %27 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %28 = bitcast %struct._GimpPaintCore* %27 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_source_core_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call24)
  %29 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpSourceCore*
  %src_drawable = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %29, i32 0, i32 2
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable, align 8
  %tobool26 = icmp ne %struct._GimpDrawable* %30, null
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %if.else.21
  store i32 1, i32* %modifier, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.else.21
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.20
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.else
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %sw.epilog
  %31 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control32 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %31, i32 0, i32 3
  %32 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control32, align 8
  %33 = load i32, i32* %cursor, align 4
  call void @gimp_tool_control_set_cursor(%struct._GimpToolControl* %32, i32 %33)
  %34 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control33 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %34, i32 0, i32 3
  %35 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control33, align 8
  %36 = load i32, i32* %modifier, align 4
  call void @gimp_tool_control_set_cursor_modifier(%struct._GimpToolControl* %35, i32 %36)
  %37 = load %struct._GimpPerspectiveCloneOptions*, %struct._GimpPerspectiveCloneOptions** %options, align 8
  %clone_mode34 = getelementptr inbounds %struct._GimpPerspectiveCloneOptions, %struct._GimpPerspectiveCloneOptions* %37, i32 0, i32 1
  %38 = load i32, i32* %clone_mode34, align 4
  %cmp35 = icmp eq i32 %38, 0
  br i1 %cmp35, label %if.then.36, label %if.else.40

if.then.36:                                       ; preds = %if.end.31
  %39 = load i8*, i8** @gimp_perspective_clone_tool_parent_class, align 8
  %call37 = call i8* @g_type_class_peek_parent(i8* %39)
  %40 = bitcast i8* %call37 to %struct._GTypeClass*
  %call38 = call i64 @gimp_tool_get_type() #6
  %call39 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %40, i64 %call38)
  %41 = bitcast %struct._GTypeClass* %call39 to %struct._GimpToolClass*
  store %struct._GimpToolClass* %41, %struct._GimpToolClass** %tool_class, align 8
  br label %if.end.43

if.else.40:                                       ; preds = %if.end.31
  %42 = load i8*, i8** @gimp_perspective_clone_tool_parent_class, align 8
  %43 = bitcast i8* %42 to %struct._GTypeClass*
  %call41 = call i64 @gimp_tool_get_type() #6
  %call42 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %43, i64 %call41)
  %44 = bitcast %struct._GTypeClass* %call42 to %struct._GimpToolClass*
  store %struct._GimpToolClass* %44, %struct._GimpToolClass** %tool_class, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.36
  %45 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %45, i32 0, i32 13
  %46 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %47 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %48 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %49 = load i32, i32* %state.addr, align 4
  %50 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %46(%struct._GimpTool* %47, %struct._GimpCoords* %48, i32 %49, %struct._GimpDisplay* %50)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_perspective_clone_tool_oper_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, i32 %proximity, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %proximity.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %clone_tool = alloca %struct._GimpPerspectiveCloneTool*, align 8
  %options = alloca %struct._GimpPerspectiveCloneOptions*, align 8
  %draw_tool = alloca %struct._GimpDrawTool*, align 8
  %closest_dist = alloca double, align 8
  %dist = alloca double, align 8
  %core = alloca %struct._GimpPaintCore*, align 8
  %clone = alloca %struct._GimpPerspectiveClone*, align 8
  %source_core = alloca %struct._GimpSourceCore*, align 8
  %nnx = alloca double, align 8
  %nny = alloca double, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store i32 %proximity, i32* %proximity.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_perspective_clone_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPerspectiveCloneTool*
  store %struct._GimpPerspectiveCloneTool* %2, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_perspective_clone_options_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpPerspectiveCloneOptions*
  store %struct._GimpPerspectiveCloneOptions* %7, %struct._GimpPerspectiveCloneOptions** %options, align 8
  %8 = load %struct._GimpPerspectiveCloneOptions*, %struct._GimpPerspectiveCloneOptions** %options, align 8
  %clone_mode = getelementptr inbounds %struct._GimpPerspectiveCloneOptions, %struct._GimpPerspectiveCloneOptions* %8, i32 0, i32 1
  %9 = load i32, i32* %clone_mode, align 4
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %11 = bitcast %struct._GimpTool* %10 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_draw_tool_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call7)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpDrawTool*
  store %struct._GimpDrawTool* %12, %struct._GimpDrawTool** %draw_tool, align 8
  %13 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %function = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %13, i32 0, i32 25
  store i32 1, i32* %function, align 4
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %15 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display9 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %15, i32 0, i32 4
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display9, align 8
  %cmp10 = icmp ne %struct._GimpDisplay* %14, %16
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  br label %if.end.76

if.end:                                           ; preds = %if.then
  %17 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %18 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %19 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %19, i32 0, i32 0
  %20 = load double, double* %x, align 8
  %21 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %21, i32 0, i32 1
  %22 = load double, double* %y, align 8
  %23 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %tx1 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %23, i32 0, i32 15
  %24 = load double, double* %tx1, align 8
  %25 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %ty1 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %25, i32 0, i32 16
  %26 = load double, double* %ty1, align 8
  %call12 = call double @gimp_draw_tool_calc_distance_square(%struct._GimpDrawTool* %17, %struct._GimpDisplay* %18, double %20, double %22, double %24, double %26)
  store double %call12, double* %dist, align 8
  %27 = load double, double* %dist, align 8
  store double %27, double* %closest_dist, align 8
  %28 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %function13 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %28, i32 0, i32 25
  store i32 2, i32* %function13, align 4
  %29 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %30 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %31 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x14 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %31, i32 0, i32 0
  %32 = load double, double* %x14, align 8
  %33 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y15 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %33, i32 0, i32 1
  %34 = load double, double* %y15, align 8
  %35 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %tx2 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %35, i32 0, i32 17
  %36 = load double, double* %tx2, align 8
  %37 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %ty2 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %37, i32 0, i32 18
  %38 = load double, double* %ty2, align 8
  %call16 = call double @gimp_draw_tool_calc_distance_square(%struct._GimpDrawTool* %29, %struct._GimpDisplay* %30, double %32, double %34, double %36, double %38)
  store double %call16, double* %dist, align 8
  %39 = load double, double* %dist, align 8
  %40 = load double, double* %closest_dist, align 8
  %cmp17 = fcmp olt double %39, %40
  br i1 %cmp17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end
  %41 = load double, double* %dist, align 8
  store double %41, double* %closest_dist, align 8
  %42 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %function19 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %42, i32 0, i32 25
  store i32 3, i32* %function19, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end
  %43 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %44 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %45 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x21 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %45, i32 0, i32 0
  %46 = load double, double* %x21, align 8
  %47 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y22 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %47, i32 0, i32 1
  %48 = load double, double* %y22, align 8
  %49 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %tx3 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %49, i32 0, i32 19
  %50 = load double, double* %tx3, align 8
  %51 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %ty3 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %51, i32 0, i32 20
  %52 = load double, double* %ty3, align 8
  %call23 = call double @gimp_draw_tool_calc_distance_square(%struct._GimpDrawTool* %43, %struct._GimpDisplay* %44, double %46, double %48, double %50, double %52)
  store double %call23, double* %dist, align 8
  %53 = load double, double* %dist, align 8
  %54 = load double, double* %closest_dist, align 8
  %cmp24 = fcmp olt double %53, %54
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.20
  %55 = load double, double* %dist, align 8
  store double %55, double* %closest_dist, align 8
  %56 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %function26 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %56, i32 0, i32 25
  store i32 4, i32* %function26, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.end.20
  %57 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %58 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %59 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x28 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %59, i32 0, i32 0
  %60 = load double, double* %x28, align 8
  %61 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y29 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %61, i32 0, i32 1
  %62 = load double, double* %y29, align 8
  %63 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %tx4 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %63, i32 0, i32 21
  %64 = load double, double* %tx4, align 8
  %65 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %ty4 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %65, i32 0, i32 22
  %66 = load double, double* %ty4, align 8
  %call30 = call double @gimp_draw_tool_calc_distance_square(%struct._GimpDrawTool* %57, %struct._GimpDisplay* %58, double %60, double %62, double %64, double %66)
  store double %call30, double* %dist, align 8
  %67 = load double, double* %dist, align 8
  %68 = load double, double* %closest_dist, align 8
  %cmp31 = fcmp olt double %67, %68
  br i1 %cmp31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.end.27
  %69 = load double, double* %dist, align 8
  store double %69, double* %closest_dist, align 8
  %70 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %function33 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %70, i32 0, i32 25
  store i32 5, i32* %function33, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.end.27
  br label %if.end.76

if.else:                                          ; preds = %entry
  %71 = load i8*, i8** @gimp_perspective_clone_tool_parent_class, align 8
  %72 = bitcast i8* %71 to %struct._GTypeClass*
  %call35 = call i64 @gimp_tool_get_type() #6
  %call36 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %72, i64 %call35)
  %73 = bitcast %struct._GTypeClass* %call36 to %struct._GimpToolClass*
  %oper_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %73, i32 0, i32 12
  %74 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %oper_update, align 8
  %75 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %76 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %77 = load i32, i32* %state.addr, align 4
  %78 = load i32, i32* %proximity.addr, align 4
  %79 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %74(%struct._GimpTool* %75, %struct._GimpCoords* %76, i32 %77, i32 %78, %struct._GimpDisplay* %79)
  %80 = load %struct._GimpPerspectiveCloneOptions*, %struct._GimpPerspectiveCloneOptions** %options, align 8
  %81 = bitcast %struct._GimpPerspectiveCloneOptions* %80 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_clone_options_get_type() #6
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call37)
  %82 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpCloneOptions*
  %clone_type = getelementptr inbounds %struct._GimpCloneOptions, %struct._GimpCloneOptions* %82, i32 0, i32 1
  %83 = load i32, i32* %clone_type, align 4
  %cmp39 = icmp eq i32 %83, 0
  br i1 %cmp39, label %land.lhs.true, label %if.end.75

land.lhs.true:                                    ; preds = %if.else
  %84 = load i32, i32* %proximity.addr, align 4
  %tobool = icmp ne i32 %84, 0
  br i1 %tobool, label %if.then.40, label %if.end.75

if.then.40:                                       ; preds = %land.lhs.true
  %85 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %86 = bitcast %struct._GimpTool* %85 to %struct._GTypeInstance*
  %call41 = call i64 @gimp_paint_tool_get_type() #6
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call41)
  %87 = bitcast %struct._GTypeInstance* %call42 to %struct._GimpPaintTool*
  %core43 = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %87, i32 0, i32 6
  %88 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core43, align 8
  store %struct._GimpPaintCore* %88, %struct._GimpPaintCore** %core, align 8
  %89 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %90 = bitcast %struct._GimpPaintCore* %89 to %struct._GTypeInstance*
  %call44 = call i64 @gimp_perspective_clone_get_type() #6
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call44)
  %91 = bitcast %struct._GTypeInstance* %call45 to %struct._GimpPerspectiveClone*
  store %struct._GimpPerspectiveClone* %91, %struct._GimpPerspectiveClone** %clone, align 8
  %92 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %93 = bitcast %struct._GimpPaintCore* %92 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_source_core_get_type() #6
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 %call46)
  %94 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpSourceCore*
  store %struct._GimpSourceCore* %94, %struct._GimpSourceCore** %source_core, align 8
  %95 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %src_drawable = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %95, i32 0, i32 2
  %96 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable, align 8
  %cmp48 = icmp eq %struct._GimpDrawable* %96, null
  br i1 %cmp48, label %if.then.49, label %if.else.51

if.then.49:                                       ; preds = %if.then.40
  %97 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %98 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call50 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0)) #7
  call void (%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) @gimp_tool_replace_status(%struct._GimpTool* %97, %struct._GimpDisplay* %98, i8* %call50)
  br label %if.end.74

if.else.51:                                       ; preds = %if.then.40
  %99 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %100 = bitcast %struct._GimpTool* %99 to %struct._GTypeInstance*
  %call52 = call i64 @gimp_draw_tool_get_type() #6
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %100, i64 %call52)
  %101 = bitcast %struct._GTypeInstance* %call53 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %101)
  %102 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %src_x = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %102, i32 0, i32 3
  %103 = load double, double* %src_x, align 8
  %conv = fptosi double %103 to i32
  %104 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %src_x54 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %104, i32 0, i32 2
  store i32 %conv, i32* %src_x54, align 4
  %105 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %src_y = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %105, i32 0, i32 4
  %106 = load double, double* %src_y, align 8
  %conv55 = fptosi double %106 to i32
  %107 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %src_y56 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %107, i32 0, i32 3
  store i32 %conv55, i32* %src_y56, align 4
  %108 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %first_stroke = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %108, i32 0, i32 9
  %109 = load i32, i32* %first_stroke, align 4
  %tobool57 = icmp ne i32 %109, 0
  br i1 %tobool57, label %if.end.71, label %if.then.58

if.then.58:                                       ; preds = %if.else.51
  %110 = load %struct._GimpPerspectiveCloneOptions*, %struct._GimpPerspectiveCloneOptions** %options, align 8
  %111 = bitcast %struct._GimpPerspectiveCloneOptions* %110 to %struct._GTypeInstance*
  %call59 = call i64 @gimp_source_options_get_type() #6
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %111, i64 %call59)
  %112 = bitcast %struct._GTypeInstance* %call60 to %struct._GimpSourceOptions*
  %align_mode = getelementptr inbounds %struct._GimpSourceOptions, %struct._GimpSourceOptions* %112, i32 0, i32 1
  %113 = load i32, i32* %align_mode, align 4
  %cmp61 = icmp eq i32 %113, 1
  br i1 %cmp61, label %if.then.63, label %if.end.70

if.then.63:                                       ; preds = %if.then.58
  %114 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone, align 8
  %115 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x64 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %115, i32 0, i32 0
  %116 = load double, double* %x64, align 8
  %117 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y65 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %117, i32 0, i32 1
  %118 = load double, double* %y65, align 8
  call void @gimp_perspective_clone_get_source_point(%struct._GimpPerspectiveClone* %114, double %116, double %118, double* %nnx, double* %nny)
  %119 = load double, double* %nnx, align 8
  %conv66 = fptosi double %119 to i32
  %120 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %src_x67 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %120, i32 0, i32 2
  store i32 %conv66, i32* %src_x67, align 4
  %121 = load double, double* %nny, align 8
  %conv68 = fptosi double %121 to i32
  %122 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %src_y69 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %122, i32 0, i32 3
  store i32 %conv68, i32* %src_y69, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.63, %if.then.58
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.else.51
  %123 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %124 = bitcast %struct._GimpTool* %123 to %struct._GTypeInstance*
  %call72 = call i64 @gimp_draw_tool_get_type() #6
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %124, i64 %call72)
  %125 = bitcast %struct._GTypeInstance* %call73 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %125)
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.71, %if.then.49
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %land.lhs.true, %if.else
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.11, %if.end.75, %if.end.34
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_perspective_clone_tool_draw(%struct._GimpDrawTool* %draw_tool) #3 {
entry:
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %clone_tool = alloca %struct._GimpPerspectiveCloneTool*, align 8
  %clone = alloca %struct._GimpPerspectiveClone*, align 8
  %source_core = alloca %struct._GimpSourceCore*, align 8
  %options = alloca %struct._GimpPerspectiveCloneOptions*, align 8
  %stroke_group = alloca %struct._GimpCanvasGroup*, align 8
  %tmp_display = alloca %struct._GimpDisplay*, align 8
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %4 = bitcast %struct._GimpDrawTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_perspective_clone_tool_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpPerspectiveCloneTool*
  store %struct._GimpPerspectiveCloneTool* %5, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %7 = bitcast %struct._GimpTool* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_paint_tool_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpPaintTool*
  %core = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %8, i32 0, i32 6
  %9 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %10 = bitcast %struct._GimpPaintCore* %9 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_perspective_clone_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call6)
  %11 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpPerspectiveClone*
  store %struct._GimpPerspectiveClone* %11, %struct._GimpPerspectiveClone** %clone, align 8
  %12 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone, align 8
  %13 = bitcast %struct._GimpPerspectiveClone* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_source_core_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpSourceCore*
  store %struct._GimpSourceCore* %14, %struct._GimpSourceCore** %source_core, align 8
  %15 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %16 = bitcast %struct._GimpTool* %15 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_tool_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call10)
  %17 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpTool*
  %call12 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %17)
  %18 = bitcast %struct._GimpToolOptions* %call12 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_perspective_clone_options_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call13)
  %19 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpPerspectiveCloneOptions*
  store %struct._GimpPerspectiveCloneOptions* %19, %struct._GimpPerspectiveCloneOptions** %options, align 8
  %20 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %call15 = call %struct._GimpCanvasGroup* @gimp_draw_tool_add_stroke_group(%struct._GimpDrawTool* %20)
  store %struct._GimpCanvasGroup* %call15, %struct._GimpCanvasGroup** %stroke_group, align 8
  %21 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %22 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %stroke_group, align 8
  call void @gimp_draw_tool_push_group(%struct._GimpDrawTool* %21, %struct._GimpCanvasGroup* %22)
  %23 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %24 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %tx1 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %24, i32 0, i32 15
  %25 = load double, double* %tx1, align 8
  %26 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %ty1 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %26, i32 0, i32 16
  %27 = load double, double* %ty1, align 8
  %28 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %tx2 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %28, i32 0, i32 17
  %29 = load double, double* %tx2, align 8
  %30 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %ty2 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %30, i32 0, i32 18
  %31 = load double, double* %ty2, align 8
  %call16 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_line(%struct._GimpDrawTool* %23, double %25, double %27, double %29, double %31)
  %32 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %33 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %tx217 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %33, i32 0, i32 17
  %34 = load double, double* %tx217, align 8
  %35 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %ty218 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %35, i32 0, i32 18
  %36 = load double, double* %ty218, align 8
  %37 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %tx4 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %37, i32 0, i32 21
  %38 = load double, double* %tx4, align 8
  %39 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %ty4 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %39, i32 0, i32 22
  %40 = load double, double* %ty4, align 8
  %call19 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_line(%struct._GimpDrawTool* %32, double %34, double %36, double %38, double %40)
  %41 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %42 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %tx3 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %42, i32 0, i32 19
  %43 = load double, double* %tx3, align 8
  %44 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %ty3 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %44, i32 0, i32 20
  %45 = load double, double* %ty3, align 8
  %46 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %tx420 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %46, i32 0, i32 21
  %47 = load double, double* %tx420, align 8
  %48 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %ty421 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %48, i32 0, i32 22
  %49 = load double, double* %ty421, align 8
  %call22 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_line(%struct._GimpDrawTool* %41, double %43, double %45, double %47, double %49)
  %50 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %51 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %tx323 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %51, i32 0, i32 19
  %52 = load double, double* %tx323, align 8
  %53 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %ty324 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %53, i32 0, i32 20
  %54 = load double, double* %ty324, align 8
  %55 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %tx125 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %55, i32 0, i32 15
  %56 = load double, double* %tx125, align 8
  %57 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %ty126 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %57, i32 0, i32 16
  %58 = load double, double* %ty126, align 8
  %call27 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_line(%struct._GimpDrawTool* %50, double %52, double %54, double %56, double %58)
  %59 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  call void @gimp_draw_tool_pop_group(%struct._GimpDrawTool* %59)
  %60 = load %struct._GimpPerspectiveCloneOptions*, %struct._GimpPerspectiveCloneOptions** %options, align 8
  %clone_mode = getelementptr inbounds %struct._GimpPerspectiveCloneOptions, %struct._GimpPerspectiveCloneOptions* %60, i32 0, i32 1
  %61 = load i32, i32* %clone_mode, align 4
  %cmp = icmp eq i32 %61, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %62 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %63 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %tx128 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %63, i32 0, i32 15
  %64 = load double, double* %tx128, align 8
  %65 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %ty129 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %65, i32 0, i32 16
  %66 = load double, double* %ty129, align 8
  %call30 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %62, i32 0, double %64, double %66, i32 25, i32 25, i32 0)
  %67 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %68 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %tx231 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %68, i32 0, i32 17
  %69 = load double, double* %tx231, align 8
  %70 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %ty232 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %70, i32 0, i32 18
  %71 = load double, double* %ty232, align 8
  %call33 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %67, i32 0, double %69, double %71, i32 25, i32 25, i32 0)
  %72 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %73 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %tx334 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %73, i32 0, i32 19
  %74 = load double, double* %tx334, align 8
  %75 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %ty335 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %75, i32 0, i32 20
  %76 = load double, double* %ty335, align 8
  %call36 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %72, i32 0, double %74, double %76, i32 25, i32 25, i32 0)
  %77 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %78 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %tx437 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %78, i32 0, i32 21
  %79 = load double, double* %tx437, align 8
  %80 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %ty438 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %80, i32 0, i32 22
  %81 = load double, double* %ty438, align 8
  %call39 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %77, i32 0, double %79, double %81, i32 25, i32 25, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %82 = load %struct._GimpPerspectiveCloneOptions*, %struct._GimpPerspectiveCloneOptions** %options, align 8
  %83 = bitcast %struct._GimpPerspectiveCloneOptions* %82 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_clone_options_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call40)
  %84 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpCloneOptions*
  %clone_type = getelementptr inbounds %struct._GimpCloneOptions, %struct._GimpCloneOptions* %84, i32 0, i32 1
  %85 = load i32, i32* %clone_type, align 4
  %cmp42 = icmp eq i32 %85, 0
  br i1 %cmp42, label %land.lhs.true, label %if.end.51

land.lhs.true:                                    ; preds = %if.end
  %86 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %src_drawable = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %86, i32 0, i32 2
  %87 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable, align 8
  %tobool = icmp ne %struct._GimpDrawable* %87, null
  br i1 %tobool, label %land.lhs.true.43, label %if.end.51

land.lhs.true.43:                                 ; preds = %land.lhs.true
  %88 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %src_display = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %88, i32 0, i32 1
  %89 = load %struct._GimpDisplay*, %struct._GimpDisplay** %src_display, align 8
  %tobool44 = icmp ne %struct._GimpDisplay* %89, null
  br i1 %tobool44, label %if.then.45, label %if.end.51

if.then.45:                                       ; preds = %land.lhs.true.43
  %90 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %display = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %90, i32 0, i32 1
  %91 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  store %struct._GimpDisplay* %91, %struct._GimpDisplay** %tmp_display, align 8
  %92 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %src_display46 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %92, i32 0, i32 1
  %93 = load %struct._GimpDisplay*, %struct._GimpDisplay** %src_display46, align 8
  %94 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %display47 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %94, i32 0, i32 1
  store %struct._GimpDisplay* %93, %struct._GimpDisplay** %display47, align 8
  %95 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %96 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %src_x = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %96, i32 0, i32 2
  %97 = load i32, i32* %src_x, align 4
  %conv = sitofp i32 %97 to double
  %98 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool, align 8
  %src_y = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %98, i32 0, i32 3
  %99 = load i32, i32* %src_y, align 4
  %conv48 = sitofp i32 %99 to double
  %call49 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %95, i32 4, double %conv, double %conv48, i32 15, i32 15, i32 0)
  %100 = load %struct._GimpDisplay*, %struct._GimpDisplay** %tmp_display, align 8
  %101 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %display50 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %101, i32 0, i32 1
  store %struct._GimpDisplay* %100, %struct._GimpDisplay** %display50, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.45, %land.lhs.true.43, %land.lhs.true, %if.end
  %102 = load i8*, i8** @gimp_perspective_clone_tool_parent_class, align 8
  %103 = bitcast i8* %102 to %struct._GTypeClass*
  %call52 = call i64 @gimp_draw_tool_get_type() #6
  %call53 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %103, i64 %call52)
  %104 = bitcast %struct._GTypeClass* %call53 to %struct._GimpDrawToolClass*
  %draw = getelementptr inbounds %struct._GimpDrawToolClass, %struct._GimpDrawToolClass* %104, i32 0, i32 1
  %105 = load void (%struct._GimpDrawTool*)*, void (%struct._GimpDrawTool*)** %draw, align 8
  %106 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  call void %105(%struct._GimpDrawTool* %106)
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool*) #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_perspective_clone_tool_mode_notify(%struct._GimpPerspectiveCloneOptions* %options, %struct._GParamSpec* %pspec, %struct._GimpPerspectiveCloneTool* %clone_tool) #3 {
entry:
  %options.addr = alloca %struct._GimpPerspectiveCloneOptions*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %clone_tool.addr = alloca %struct._GimpPerspectiveCloneTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %clone = alloca %struct._GimpPerspectiveClone*, align 8
  store %struct._GimpPerspectiveCloneOptions* %options, %struct._GimpPerspectiveCloneOptions** %options.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpPerspectiveCloneTool* %clone_tool, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %0 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %1 = bitcast %struct._GimpPerspectiveCloneTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %4 = bitcast %struct._GimpPerspectiveCloneTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_paint_tool_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpPaintTool*
  %core = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %5, i32 0, i32 6
  %6 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %7 = bitcast %struct._GimpPaintCore* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_perspective_clone_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpPerspectiveClone*
  store %struct._GimpPerspectiveClone* %8, %struct._GimpPerspectiveClone** %clone, align 8
  %9 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %10 = bitcast %struct._GimpPerspectiveCloneTool* %9 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_draw_tool_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call6)
  %11 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %11)
  %12 = load %struct._GimpPerspectiveCloneOptions*, %struct._GimpPerspectiveCloneOptions** %options.addr, align 8
  %clone_mode = getelementptr inbounds %struct._GimpPerspectiveCloneOptions, %struct._GimpPerspectiveCloneOptions* %12, i32 0, i32 1
  %13 = load i32, i32* %clone_mode, align 4
  %cmp = icmp eq i32 %13, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %14 = load %struct._GimpPerspectiveCloneOptions*, %struct._GimpPerspectiveCloneOptions** %options.addr, align 8
  %15 = bitcast %struct._GimpPerspectiveCloneOptions* %14 to %struct._GTypeInstance*
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 80)
  %16 = bitcast %struct._GTypeInstance* %call8 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0))
  %17 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %17, i32 0, i32 3
  %18 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl* %18, i32 28)
  %19 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone, align 8
  %20 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %transform = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %20, i32 0, i32 8
  call void @gimp_perspective_clone_set_transform(%struct._GimpPerspectiveClone* %19, %struct._GimpMatrix3* %transform)
  br label %if.end.19

if.else:                                          ; preds = %entry
  %21 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control9 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %21, i32 0, i32 3
  %22 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control9, align 8
  call void @gimp_tool_control_set_precision(%struct._GimpToolControl* %22, i32 2)
  %23 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control10 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %23, i32 0, i32 3
  %24 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control10, align 8
  call void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl* %24, i32 17)
  %25 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %25, i32 0, i32 4
  %26 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %26, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %27 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %28 = bitcast %struct._GimpPerspectiveCloneTool* %27 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_draw_tool_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call11)
  %29 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpDrawTool*
  %call13 = call i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool* %29)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end, label %if.then.15

if.then.15:                                       ; preds = %land.lhs.true
  %30 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %31 = bitcast %struct._GimpPerspectiveCloneTool* %30 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_draw_tool_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call16)
  %32 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpDrawTool*
  %33 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display18 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %33, i32 0, i32 4
  %34 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display18, align 8
  call void @gimp_draw_tool_start(%struct._GimpDrawTool* %32, %struct._GimpDisplay* %34)
  br label %if.end

if.end:                                           ; preds = %if.then.15, %land.lhs.true, %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %if.then
  %35 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %36 = bitcast %struct._GimpPerspectiveCloneTool* %35 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_draw_tool_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call20)
  %37 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %37)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_tool_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_perspective_clone_get_type() #2

declare void @gimp_draw_tool_pause(%struct._GimpDrawTool*) #1

declare void @g_object_notify(%struct._GObject*, i8*) #1

declare void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl*, i32) #1

declare void @gimp_perspective_clone_set_transform(%struct._GimpPerspectiveClone*, %struct._GimpMatrix3*) #1

declare void @gimp_tool_control_set_precision(%struct._GimpToolControl*, i32) #1

declare i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool*) #1

declare void @gimp_draw_tool_start(%struct._GimpDrawTool*, %struct._GimpDisplay*) #1

declare void @gimp_draw_tool_resume(%struct._GimpDrawTool*) #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_perspective_clone_tool_bounds(%struct._GimpPerspectiveCloneTool* %tool, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpPerspectiveCloneTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GimpPerspectiveCloneTool* %tool, %struct._GimpPerspectiveCloneTool** %tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %tool.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %1, i32 0, i32 11
  store i32 0, i32* %x1, align 4
  %2 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %tool.addr, align 8
  %y1 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %2, i32 0, i32 12
  store i32 0, i32* %y1, align 4
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call i32 @gimp_image_get_width(%struct._GimpImage* %3)
  %4 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %tool.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %4, i32 0, i32 13
  store i32 %call1, i32* %x2, align 4
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call2 = call i32 @gimp_image_get_height(%struct._GimpImage* %5)
  %6 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %tool.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %6, i32 0, i32 14
  store i32 %call2, i32* %y2, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_perspective_clone_tool_prepare(%struct._GimpPerspectiveCloneTool* %clone_tool) #3 {
entry:
  %clone_tool.addr = alloca %struct._GimpPerspectiveCloneTool*, align 8
  store %struct._GimpPerspectiveCloneTool* %clone_tool, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %0 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %0, i32 0, i32 11
  %1 = load i32, i32* %x1, align 4
  %conv = sitofp i32 %1 to double
  %2 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %trans_info = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %2, i32 0, i32 9
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* %trans_info, i32 0, i64 0
  store double %conv, double* %arrayidx, align 8
  %3 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %y1 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %3, i32 0, i32 12
  %4 = load i32, i32* %y1, align 4
  %conv1 = sitofp i32 %4 to double
  %5 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %trans_info2 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %5, i32 0, i32 9
  %arrayidx3 = getelementptr inbounds [8 x double], [8 x double]* %trans_info2, i32 0, i64 1
  store double %conv1, double* %arrayidx3, align 8
  %6 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %6, i32 0, i32 13
  %7 = load i32, i32* %x2, align 4
  %conv4 = sitofp i32 %7 to double
  %8 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %trans_info5 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %8, i32 0, i32 9
  %arrayidx6 = getelementptr inbounds [8 x double], [8 x double]* %trans_info5, i32 0, i64 2
  store double %conv4, double* %arrayidx6, align 8
  %9 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %y17 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %9, i32 0, i32 12
  %10 = load i32, i32* %y17, align 4
  %conv8 = sitofp i32 %10 to double
  %11 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %trans_info9 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %11, i32 0, i32 9
  %arrayidx10 = getelementptr inbounds [8 x double], [8 x double]* %trans_info9, i32 0, i64 3
  store double %conv8, double* %arrayidx10, align 8
  %12 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %x111 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %12, i32 0, i32 11
  %13 = load i32, i32* %x111, align 4
  %conv12 = sitofp i32 %13 to double
  %14 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %trans_info13 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %14, i32 0, i32 9
  %arrayidx14 = getelementptr inbounds [8 x double], [8 x double]* %trans_info13, i32 0, i64 4
  store double %conv12, double* %arrayidx14, align 8
  %15 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %15, i32 0, i32 14
  %16 = load i32, i32* %y2, align 4
  %conv15 = sitofp i32 %16 to double
  %17 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %trans_info16 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %17, i32 0, i32 9
  %arrayidx17 = getelementptr inbounds [8 x double], [8 x double]* %trans_info16, i32 0, i64 5
  store double %conv15, double* %arrayidx17, align 8
  %18 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %x218 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %18, i32 0, i32 13
  %19 = load i32, i32* %x218, align 4
  %conv19 = sitofp i32 %19 to double
  %20 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %trans_info20 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %20, i32 0, i32 9
  %arrayidx21 = getelementptr inbounds [8 x double], [8 x double]* %trans_info20, i32 0, i64 6
  store double %conv19, double* %arrayidx21, align 8
  %21 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %y222 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %21, i32 0, i32 14
  %22 = load i32, i32* %y222, align 4
  %conv23 = sitofp i32 %22 to double
  %23 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %trans_info24 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %23, i32 0, i32 9
  %arrayidx25 = getelementptr inbounds [8 x double], [8 x double]* %trans_info24, i32 0, i64 7
  store double %conv23, double* %arrayidx25, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_perspective_clone_tool_recalc_matrix(%struct._GimpPerspectiveCloneTool* %clone_tool) #3 {
entry:
  %clone_tool.addr = alloca %struct._GimpPerspectiveCloneTool*, align 8
  store %struct._GimpPerspectiveCloneTool* %clone_tool, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %0 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %transform = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %0, i32 0, i32 8
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %transform)
  %1 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %transform1 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %1, i32 0, i32 8
  %2 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %2, i32 0, i32 11
  %3 = load i32, i32* %x1, align 4
  %4 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %y1 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %4, i32 0, i32 12
  %5 = load i32, i32* %y1, align 4
  %6 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %6, i32 0, i32 13
  %7 = load i32, i32* %x2, align 4
  %8 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %x12 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %8, i32 0, i32 11
  %9 = load i32, i32* %x12, align 4
  %sub = sub nsw i32 %7, %9
  %10 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %10, i32 0, i32 14
  %11 = load i32, i32* %y2, align 4
  %12 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %y13 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %12, i32 0, i32 12
  %13 = load i32, i32* %y13, align 4
  %sub4 = sub nsw i32 %11, %13
  %14 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %trans_info = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %14, i32 0, i32 9
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* %trans_info, i32 0, i64 0
  %15 = load double, double* %arrayidx, align 8
  %16 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %trans_info5 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %16, i32 0, i32 9
  %arrayidx6 = getelementptr inbounds [8 x double], [8 x double]* %trans_info5, i32 0, i64 1
  %17 = load double, double* %arrayidx6, align 8
  %18 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %trans_info7 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %18, i32 0, i32 9
  %arrayidx8 = getelementptr inbounds [8 x double], [8 x double]* %trans_info7, i32 0, i64 2
  %19 = load double, double* %arrayidx8, align 8
  %20 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %trans_info9 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %20, i32 0, i32 9
  %arrayidx10 = getelementptr inbounds [8 x double], [8 x double]* %trans_info9, i32 0, i64 3
  %21 = load double, double* %arrayidx10, align 8
  %22 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %trans_info11 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %22, i32 0, i32 9
  %arrayidx12 = getelementptr inbounds [8 x double], [8 x double]* %trans_info11, i32 0, i64 4
  %23 = load double, double* %arrayidx12, align 8
  %24 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %trans_info13 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %24, i32 0, i32 9
  %arrayidx14 = getelementptr inbounds [8 x double], [8 x double]* %trans_info13, i32 0, i64 5
  %25 = load double, double* %arrayidx14, align 8
  %26 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %trans_info15 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %26, i32 0, i32 9
  %arrayidx16 = getelementptr inbounds [8 x double], [8 x double]* %trans_info15, i32 0, i64 6
  %27 = load double, double* %arrayidx16, align 8
  %28 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %trans_info17 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %28, i32 0, i32 9
  %arrayidx18 = getelementptr inbounds [8 x double], [8 x double]* %trans_info17, i32 0, i64 7
  %29 = load double, double* %arrayidx18, align 8
  call void @gimp_transform_matrix_perspective(%struct._GimpMatrix3* %transform1, i32 %3, i32 %5, i32 %sub, i32 %sub4, double %15, double %17, double %19, double %21, double %23, double %25, double %27, double %29)
  %30 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  call void @gimp_perspective_clone_tool_transform_bounding_box(%struct._GimpPerspectiveCloneTool* %30)
  ret void
}

declare i32 @gimp_image_get_width(%struct._GimpImage*) #1

declare i32 @gimp_image_get_height(%struct._GimpImage*) #1

declare void @gimp_matrix3_identity(%struct._GimpMatrix3*) #1

declare void @gimp_transform_matrix_perspective(%struct._GimpMatrix3*, i32, i32, i32, i32, double, double, double, double, double, double, double, double) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_perspective_clone_tool_transform_bounding_box(%struct._GimpPerspectiveCloneTool* %clone_tool) #3 {
entry:
  %clone_tool.addr = alloca %struct._GimpPerspectiveCloneTool*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPerspectiveCloneTool* %clone_tool, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %1 = bitcast %struct._GimpPerspectiveCloneTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_perspective_clone_tool_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__func__.gimp_perspective_clone_tool_transform_bounding_box, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %transform = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %13, i32 0, i32 8
  %14 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %14, i32 0, i32 11
  %15 = load i32, i32* %x1, align 4
  %conv = sitofp i32 %15 to double
  %16 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %y1 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %16, i32 0, i32 12
  %17 = load i32, i32* %y1, align 4
  %conv11 = sitofp i32 %17 to double
  %18 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %tx1 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %18, i32 0, i32 15
  %19 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %ty1 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %19, i32 0, i32 16
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %transform, double %conv, double %conv11, double* %tx1, double* %ty1)
  %20 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %transform12 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %20, i32 0, i32 8
  %21 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %21, i32 0, i32 13
  %22 = load i32, i32* %x2, align 4
  %conv13 = sitofp i32 %22 to double
  %23 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %y114 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %23, i32 0, i32 12
  %24 = load i32, i32* %y114, align 4
  %conv15 = sitofp i32 %24 to double
  %25 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %tx2 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %25, i32 0, i32 17
  %26 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %ty2 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %26, i32 0, i32 18
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %transform12, double %conv13, double %conv15, double* %tx2, double* %ty2)
  %27 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %transform16 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %27, i32 0, i32 8
  %28 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %x117 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %28, i32 0, i32 11
  %29 = load i32, i32* %x117, align 4
  %conv18 = sitofp i32 %29 to double
  %30 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %30, i32 0, i32 14
  %31 = load i32, i32* %y2, align 4
  %conv19 = sitofp i32 %31 to double
  %32 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %tx3 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %32, i32 0, i32 19
  %33 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %ty3 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %33, i32 0, i32 20
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %transform16, double %conv18, double %conv19, double* %tx3, double* %ty3)
  %34 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %transform20 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %34, i32 0, i32 8
  %35 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %x221 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %35, i32 0, i32 13
  %36 = load i32, i32* %x221, align 4
  %conv22 = sitofp i32 %36 to double
  %37 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %y223 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %37, i32 0, i32 14
  %38 = load i32, i32* %y223, align 4
  %conv24 = sitofp i32 %38 to double
  %39 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %tx4 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %39, i32 0, i32 21
  %40 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %ty4 = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %40, i32 0, i32 22
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %transform20, double %conv22, double %conv24, double* %tx4, double* %ty4)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #5

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @gimp_matrix3_transform_point(%struct._GimpMatrix3*, double, double, double*, double*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_perspective_clone_tool_halt(%struct._GimpPerspectiveCloneTool* %clone_tool) #3 {
entry:
  %clone_tool.addr = alloca %struct._GimpPerspectiveCloneTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  store %struct._GimpPerspectiveCloneTool* %clone_tool, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %0 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %1 = bitcast %struct._GimpPerspectiveCloneTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpPerspectiveCloneTool*, %struct._GimpPerspectiveCloneTool** %clone_tool.addr, align 8
  %src_display = getelementptr inbounds %struct._GimpPerspectiveCloneTool, %struct._GimpPerspectiveCloneTool* %3, i32 0, i32 1
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %src_display, align 8
  %4 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %5 = bitcast %struct._GimpTool* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_paint_tool_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpPaintTool*
  %core = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %6, i32 0, i32 6
  %7 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %8 = bitcast %struct._GimpPaintCore* %7 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null)
  %9 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %10 = bitcast %struct._GimpTool* %9 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_draw_tool_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call4)
  %11 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpDrawTool*
  %call6 = call i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool* %11)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %13 = bitcast %struct._GimpTool* %12 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_draw_tool_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call7)
  %14 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_stop(%struct._GimpDrawTool* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %15, i32 0, i32 4
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %display, align 8
  %16 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %drawable = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %16, i32 0, i32 5
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %drawable, align 8
  ret void
}

declare void @g_object_set(i8*, i8*, ...) #1

declare void @gimp_draw_tool_stop(%struct._GimpDrawTool*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_source_core_get_type() #2

declare void @gimp_tool_control_activate(%struct._GimpToolControl*) #1

declare i32 @gimp_get_toggle_behavior_mask() #1

declare void @gimp_perspective_clone_get_source_point(%struct._GimpPerspectiveClone*, double, double, double*, double*) #1

declare void @gimp_tool_control_halt(%struct._GimpToolControl*) #1

declare i32 @gimp_image_coords_in_active_pickable(%struct._GimpImage*, %struct._GimpCoords*, i32, i32) #1

declare i32 @gimp_tool_control_get_cursor(%struct._GimpToolControl*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_clone_options_get_type() #2

declare void @gimp_tool_control_set_cursor(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_cursor_modifier(%struct._GimpToolControl*, i32) #1

declare double @gimp_draw_tool_calc_distance_square(%struct._GimpDrawTool*, %struct._GimpDisplay*, double, double, double, double) #1

declare void @gimp_tool_replace_status(%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_source_options_get_type() #2

declare %struct._GimpCanvasGroup* @gimp_draw_tool_add_stroke_group(%struct._GimpDrawTool*) #1

declare void @gimp_draw_tool_push_group(%struct._GimpDrawTool*, %struct._GimpCanvasGroup*) #1

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_line(%struct._GimpDrawTool*, double, double, double, double) #1

declare void @gimp_draw_tool_pop_group(%struct._GimpDrawTool*) #1

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool*, i32, double, double, i32, i32, i32) #1

declare void @gimp_tool_control_set_action_object_2(%struct._GimpToolControl*, i8*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare %struct._GtkWidget* @gimp_paint_options_gui(%struct._GimpToolOptions*) #1

declare %struct._GtkWidget* @gimp_prop_enum_radio_box_new(%struct._GObject*, i8*, i32, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_prop_enum_radio_frame_new(%struct._GObject*, i8*, i8*, i32, i32) #1

declare %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject*, i8*, i8*) #1

declare void @gimp_enum_radio_frame_add(%struct._GtkFrame*, %struct._GtkWidget*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #2

declare %struct._GtkWidget* @gimp_prop_pattern_box_new(%struct._GimpContainer*, %struct._GimpContext*, i8*, i32, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare %struct._GtkWidget* @gimp_prop_enum_combo_box_new(%struct._GObject*, i8*, i32, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
