; ModuleID = './app/tools/gimpmovetool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpMoveToolClass = type { %struct._GimpDrawToolClass }
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
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
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
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayOptions = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GdkEventKey = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32, i8*, i16, i8, i8 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpUIManager = type opaque
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GimpDrawTool = type { %struct._GimpTool, %struct._GimpDisplay*, i32, i32, i64, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GList* }
%struct._GimpMoveTool = type { %struct._GimpDrawTool, %struct._GimpLayer*, %struct._GimpGuide*, i32, i32, i32, i32, %struct._GimpLayer*, %struct._GimpVectors* }
%struct._GimpGuide = type { %struct._GObject, i32, i32, i32 }
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpLayerMask = type { %struct._GimpChannel, %struct._GimpLayer*, i32, i32, i32 }
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._BoundSeg = type opaque
%struct._GeglNode = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._GimpVectors = type opaque
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
%struct._GimpDisplayShell = type { %struct._GtkBox, %struct._GimpDisplay*, %struct._GimpUIManager*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct._GimpZoomModel*, double, i32, i32, i32, double, i32, i32, i32, %struct._Selection*, %struct._GList*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._cairo_surface*, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, i32, i8*, i8*, i32, i32, %struct._GdkPixbuf*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpColorDisplayStack*, i32, %struct._GtkWidget*, i32, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, %struct._GimpDrawable*, %struct._GimpRGB, %struct._GimpMotionBuffer*, %struct._GQueue* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
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
%struct._GimpMoveOptions = type { %struct._GimpToolOptions, i32, i32 }
%struct._GimpAnchor = type opaque
%struct._GimpStroke = type opaque
%struct._GimpGuiConfig = type { %struct._GimpDisplayConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32 }

@gimp_move_tool_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"GimpMoveTool\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"gimp-move-tool\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"tool\04Move\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Move Tool: Move layers, selections, and other objects\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"_Move\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"gimp-tool-move\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Gimp-Tools\00", align 1
@__func__.gimp_move_tool_start_hguide = private unnamed_addr constant [28 x i8] c"gimp_move_tool_start_hguide\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"GIMP_IS_MOVE_TOOL (tool)\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"GIMP_IS_DISPLAY (display)\00", align 1
@__func__.gimp_move_tool_start_vguide = private unnamed_addr constant [28 x i8] c"gimp_move_tool_start_vguide\00", align 1
@gimp_move_tool_parent_class = internal global i8* null, align 8
@GimpMoveTool_private_offset = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"Move Guide: \00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"gimpmovetool.c\00", align 1
@__func__.gimp_move_tool_button_release = private unnamed_addr constant [30 x i8] c"gimp_move_tool_button_release\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"Remove Guide\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Cancel Guide\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"Add Guide: \00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"move-current\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"move-type\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_move_tool_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_move_tool_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_move_tool_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 288, void (i8*, i8*)* bitcast (void (i8*)* @gimp_move_tool_class_intern_init to void (i8*, i8*)*), i32 296, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpMoveTool*)* @gimp_move_tool_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_move_tool_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_move_tool_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_draw_tool_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_move_tool_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_move_tool_parent_class, align 8
  %1 = load i32, i32* @GimpMoveTool_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpMoveTool_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpMoveToolClass*
  call void @gimp_move_tool_class_init(%struct._GimpMoveToolClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_move_tool_init(%struct._GimpMoveTool* %move_tool) #3 {
entry:
  %move_tool.addr = alloca %struct._GimpMoveTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  store %struct._GimpMoveTool* %move_tool, %struct._GimpMoveTool** %move_tool.addr, align 8
  %0 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move_tool.addr, align 8
  %1 = bitcast %struct._GimpMoveTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 3
  %4 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_set_motion_mode(%struct._GimpToolControl* %4, i32 1)
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control2 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 3
  %6 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control2, align 8
  call void @gimp_tool_control_set_snap_to(%struct._GimpToolControl* %6, i32 0)
  %7 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control3 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %7, i32 0, i32 3
  %8 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control3, align 8
  call void @gimp_tool_control_set_handle_empty_image(%struct._GimpToolControl* %8, i32 1)
  %9 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control4 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %9, i32 0, i32 3
  %10 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control4, align 8
  call void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl* %10, i32 11)
  %11 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move_tool.addr, align 8
  %floating_layer = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %11, i32 0, i32 1
  store %struct._GimpLayer* null, %struct._GimpLayer** %floating_layer, align 8
  %12 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move_tool.addr, align 8
  %guide = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %12, i32 0, i32 2
  store %struct._GimpGuide* null, %struct._GimpGuide** %guide, align 8
  %13 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move_tool.addr, align 8
  %moving_guide = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %13, i32 0, i32 3
  store i32 0, i32* %moving_guide, align 4
  %14 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move_tool.addr, align 8
  %guide_position = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %14, i32 0, i32 4
  store i32 -2147483648, i32* %guide_position, align 4
  %15 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move_tool.addr, align 8
  %guide_orientation = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %15, i32 0, i32 5
  store i32 2, i32* %guide_orientation, align 4
  %16 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move_tool.addr, align 8
  %saved_type = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %16, i32 0, i32 6
  store i32 0, i32* %saved_type, align 4
  %17 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move_tool.addr, align 8
  %old_active_layer = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %17, i32 0, i32 7
  store %struct._GimpLayer* null, %struct._GimpLayer** %old_active_layer, align 8
  %18 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move_tool.addr, align 8
  %old_active_vectors = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %18, i32 0, i32 8
  store %struct._GimpVectors* null, %struct._GimpVectors** %old_active_vectors, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_move_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, i8* %data) #3 {
entry:
  %callback.addr = alloca void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  %call = call i64 @gimp_move_tool_get_type() #7
  %call1 = call i64 @gimp_move_options_get_type() #7
  %call2 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i64 5)
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i32 0, i32 0)) #8
  %1 = load i8*, i8** %data.addr, align 8
  call void %0(i64 %call, i64 %call1, %struct._GtkWidget* (%struct._GimpToolOptions*)* @gimp_move_options_gui, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* %call2, i8* %call3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* %1)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_move_options_get_type() #2

declare %struct._GtkWidget* @gimp_move_options_gui(%struct._GimpToolOptions*) #1

declare i8* @g_dpgettext(i8*, i8*, i64) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

; Function Attrs: nounwind uwtable
define void @gimp_move_tool_start_hguide(%struct._GimpTool* %tool, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_move_tool_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_move_tool_start_hguide, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0))
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_move_tool_start_hguide, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %27 = bitcast %struct._GimpTool* %26 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_move_tool_get_type() #7
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call39)
  %28 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpMoveTool*
  %29 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_move_tool_start_guide(%struct._GimpMoveTool* %28, %struct._GimpDisplay* %29, i32 0)
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
define internal void @gimp_move_tool_start_guide(%struct._GimpMoveTool* %move, %struct._GimpDisplay* %display, i32 %orientation) #3 {
entry:
  %move.addr = alloca %struct._GimpMoveTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %orientation.addr = alloca i32, align 4
  %tool = alloca %struct._GimpTool*, align 8
  store %struct._GimpMoveTool* %move, %struct._GimpMoveTool** %move.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store i32 %orientation, i32* %orientation.addr, align 4
  %0 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move.addr, align 8
  %1 = bitcast %struct._GimpMoveTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call2 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %3)
  call void @gimp_display_shell_selection_pause(%struct._GimpDisplayShell* %call2)
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display3 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 4
  store %struct._GimpDisplay* %4, %struct._GimpDisplay** %display3, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %6, i32 0, i32 3
  %7 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_activate(%struct._GimpToolControl* %7)
  %8 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control4 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %8, i32 0, i32 3
  %9 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control4, align 8
  call void @gimp_tool_control_set_scroll_lock(%struct._GimpToolControl* %9, i32 1)
  %10 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %11 = bitcast %struct._GimpTool* %10 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_draw_tool_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call5)
  %12 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpDrawTool*
  %call7 = call i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool* %12)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %14 = bitcast %struct._GimpTool* %13 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_draw_tool_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call8)
  %15 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_stop(%struct._GimpDrawTool* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move.addr, align 8
  %guide = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %16, i32 0, i32 2
  store %struct._GimpGuide* null, %struct._GimpGuide** %guide, align 8
  %17 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move.addr, align 8
  %moving_guide = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %17, i32 0, i32 3
  store i32 1, i32* %moving_guide, align 4
  %18 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move.addr, align 8
  %guide_position = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %18, i32 0, i32 4
  store i32 -2147483648, i32* %guide_position, align 4
  %19 = load i32, i32* %orientation.addr, align 4
  %20 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move.addr, align 8
  %guide_orientation = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %20, i32 0, i32 5
  store i32 %19, i32* %guide_orientation, align 4
  %21 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %22 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_set_cursor(%struct._GimpTool* %21, %struct._GimpDisplay* %22, i32 1025, i32 36, i32 5)
  %23 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move.addr, align 8
  %24 = bitcast %struct._GimpMoveTool* %23 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_draw_tool_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call10)
  %25 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpDrawTool*
  %26 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_draw_tool_start(%struct._GimpDrawTool* %25, %struct._GimpDisplay* %26)
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_move_tool_start_vguide(%struct._GimpTool* %tool, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_move_tool_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_move_tool_start_vguide, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0))
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_move_tool_start_vguide, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %27 = bitcast %struct._GimpTool* %26 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_move_tool_get_type() #7
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call39)
  %28 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpMoveTool*
  %29 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_move_tool_start_guide(%struct._GimpMoveTool* %28, %struct._GimpDisplay* %29, i32 1)
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_move_tool_class_init(%struct._GimpMoveToolClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpMoveToolClass*, align 8
  %tool_class = alloca %struct._GimpToolClass*, align 8
  %draw_tool_class = alloca %struct._GimpDrawToolClass*, align 8
  store %struct._GimpMoveToolClass* %klass, %struct._GimpMoveToolClass** %klass.addr, align 8
  %0 = load %struct._GimpMoveToolClass*, %struct._GimpMoveToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpMoveToolClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpToolClass*
  store %struct._GimpToolClass* %2, %struct._GimpToolClass** %tool_class, align 8
  %3 = load %struct._GimpMoveToolClass*, %struct._GimpMoveToolClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpMoveToolClass* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_draw_tool_get_type() #7
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpDrawToolClass*
  store %struct._GimpDrawToolClass* %5, %struct._GimpDrawToolClass** %draw_tool_class, align 8
  %6 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %6, i32 0, i32 5
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_move_tool_button_press, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_press, align 8
  %7 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_release = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %7, i32 0, i32 6
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_move_tool_button_release, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_release, align 8
  %8 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %motion = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %8, i32 0, i32 7
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_move_tool_motion, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %motion, align 8
  %9 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %key_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %9, i32 0, i32 8
  store i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)* @gimp_move_tool_key_press, i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)** %key_press, align 8
  %10 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %modifier_key = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %10, i32 0, i32 10
  store void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_move_tool_modifier_key, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)** %modifier_key, align 8
  %11 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %oper_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %11, i32 0, i32 12
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_move_tool_oper_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %oper_update, align 8
  %12 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %12, i32 0, i32 13
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)* @gimp_move_tool_cursor_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %13 = load %struct._GimpDrawToolClass*, %struct._GimpDrawToolClass** %draw_tool_class, align 8
  %draw = getelementptr inbounds %struct._GimpDrawToolClass, %struct._GimpDrawToolClass* %13, i32 0, i32 1
  store void (%struct._GimpDrawTool*)* @gimp_move_tool_draw, void (%struct._GimpDrawTool*)** %draw, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_move_tool_button_press(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %press_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %press_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %move = alloca %struct._GimpMoveTool*, align 8
  %options = alloca %struct._GimpMoveOptions*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %guide23 = alloca %struct._GimpGuide*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %snap_distance = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst114 = alloca %struct._GTypeInstance*, align 8
  %__t116 = alloca i64, align 8
  %__r119 = alloca i32, align 4
  %tmp135 = alloca i32, align 4
  %__inst141 = alloca %struct._GTypeInstance*, align 8
  %__t143 = alloca i64, align 8
  %__r146 = alloca i32, align 4
  %tmp162 = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %press_type, i32* %press_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_move_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpMoveTool*
  store %struct._GimpMoveTool* %2, %struct._GimpMoveTool** %move, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_move_options_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpMoveOptions*
  store %struct._GimpMoveOptions* %7, %struct._GimpMoveOptions** %options, align 8
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call7 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %8)
  store %struct._GimpDisplayShell* %call7, %struct._GimpDisplayShell** %shell, align 8
  %9 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call8 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %9)
  store %struct._GimpImage* %call8, %struct._GimpImage** %image, align 8
  %10 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %11 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display9 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %11, i32 0, i32 4
  store %struct._GimpDisplay* %10, %struct._GimpDisplay** %display9, align 8
  %12 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %floating_layer = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %12, i32 0, i32 1
  store %struct._GimpLayer* null, %struct._GimpLayer** %floating_layer, align 8
  %13 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %13, i32 0, i32 2
  store %struct._GimpGuide* null, %struct._GimpGuide** %guide, align 8
  %14 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %moving_guide = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %14, i32 0, i32 3
  store i32 0, i32* %moving_guide, align 4
  %15 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %old_active_layer = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %15, i32 0, i32 7
  store %struct._GimpLayer* null, %struct._GimpLayer** %old_active_layer, align 8
  %16 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %old_active_vectors = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %16, i32 0, i32 8
  store %struct._GimpVectors* null, %struct._GimpVectors** %old_active_vectors, align 8
  %17 = load %struct._GimpMoveOptions*, %struct._GimpMoveOptions** %options, align 8
  %move_current = getelementptr inbounds %struct._GimpMoveOptions, %struct._GimpMoveOptions* %17, i32 0, i32 2
  %18 = load i32, i32* %move_current, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.end.79, label %if.then

if.then:                                          ; preds = %entry
  %19 = load %struct._GimpMoveOptions*, %struct._GimpMoveOptions** %options, align 8
  %move_type = getelementptr inbounds %struct._GimpMoveOptions, %struct._GimpMoveOptions* %19, i32 0, i32 1
  %20 = load i32, i32* %move_type, align 4
  %cmp = icmp eq i32 %20, 2
  br i1 %cmp, label %if.then.10, label %if.else.19

if.then.10:                                       ; preds = %if.then
  %21 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %22 = bitcast %struct._GimpTool* %21 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_draw_tool_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call11)
  %23 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpDrawTool*
  %24 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %25 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %call13 = call i32 @gimp_draw_tool_on_vectors(%struct._GimpDrawTool* %23, %struct._GimpDisplay* %24, %struct._GimpCoords* %25, i32 7, i32 7, %struct._GimpCoords* null, double* null, %struct._GimpAnchor** null, %struct._GimpAnchor** null, %struct._GimpStroke** null, %struct._GimpVectors** %vectors)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then.10
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call16 = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %26)
  %27 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %old_active_vectors17 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %27, i32 0, i32 8
  store %struct._GimpVectors* %call16, %struct._GimpVectors** %old_active_vectors17, align 8
  %28 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %29 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %call18 = call %struct._GimpVectors* @gimp_image_set_active_vectors(%struct._GimpImage* %28, %struct._GimpVectors* %29)
  br label %if.end

if.else:                                          ; preds = %if.then.10
  br label %sw.epilog

if.end:                                           ; preds = %if.then.15
  br label %if.end.78

if.else.19:                                       ; preds = %if.then
  %30 = load %struct._GimpMoveOptions*, %struct._GimpMoveOptions** %options, align 8
  %move_type20 = getelementptr inbounds %struct._GimpMoveOptions, %struct._GimpMoveOptions* %30, i32 0, i32 1
  %31 = load i32, i32* %move_type20, align 4
  %cmp21 = icmp eq i32 %31, 0
  br i1 %cmp21, label %if.then.22, label %if.end.77

if.then.22:                                       ; preds = %if.else.19
  %32 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %config = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %32, i32 0, i32 2
  %33 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config, align 8
  %snap_distance24 = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %33, i32 0, i32 3
  %34 = load i32, i32* %snap_distance24, align 4
  store i32 %34, i32* %snap_distance, align 4
  %35 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call25 = call i32 @gimp_display_shell_get_show_guides(%struct._GimpDisplayShell* %35)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %land.lhs.true, label %if.else.52

land.lhs.true:                                    ; preds = %if.then.22
  %36 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %37 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %37, i32 0, i32 0
  %38 = load double, double* %x, align 8
  %39 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %39, i32 0, i32 1
  %40 = load double, double* %y, align 8
  %41 = load i32, i32* %snap_distance, align 4
  %conv = sitofp i32 %41 to double
  %42 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %42, i32 0, i32 13
  %43 = load double, double* %scale_x, align 8
  %div = fdiv double %conv, %43
  %44 = load i32, i32* %snap_distance, align 4
  %conv27 = sitofp i32 %44 to double
  %45 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %45, i32 0, i32 14
  %46 = load double, double* %scale_y, align 8
  %div28 = fdiv double %conv27, %46
  %call29 = call %struct._GimpGuide* @gimp_image_find_guide(%struct._GimpImage* %36, double %38, double %40, double %div, double %div28)
  store %struct._GimpGuide* %call29, %struct._GimpGuide** %guide23, align 8
  %tobool30 = icmp ne %struct._GimpGuide* %call29, null
  br i1 %tobool30, label %if.then.31, label %if.else.52

if.then.31:                                       ; preds = %land.lhs.true
  %47 = load %struct._GimpGuide*, %struct._GimpGuide** %guide23, align 8
  %48 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide32 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %48, i32 0, i32 2
  store %struct._GimpGuide* %47, %struct._GimpGuide** %guide32, align 8
  %49 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %moving_guide33 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %49, i32 0, i32 3
  store i32 1, i32* %moving_guide33, align 4
  %50 = load %struct._GimpGuide*, %struct._GimpGuide** %guide23, align 8
  %call34 = call i32 @gimp_guide_get_position(%struct._GimpGuide* %50)
  %51 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide_position = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %51, i32 0, i32 4
  store i32 %call34, i32* %guide_position, align 4
  %52 = load %struct._GimpGuide*, %struct._GimpGuide** %guide23, align 8
  %call35 = call i32 @gimp_guide_get_orientation(%struct._GimpGuide* %52)
  %53 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide_orientation = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %53, i32 0, i32 5
  store i32 %call35, i32* %guide_orientation, align 4
  %54 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %54, i32 0, i32 3
  %55 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_set_scroll_lock(%struct._GimpToolControl* %55, i32 1)
  %56 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control36 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %56, i32 0, i32 3
  %57 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control36, align 8
  call void @gimp_tool_control_set_precision(%struct._GimpToolControl* %57, i32 1)
  %58 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control37 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %58, i32 0, i32 3
  %59 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control37, align 8
  call void @gimp_tool_control_activate(%struct._GimpToolControl* %59)
  %60 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_selection_pause(%struct._GimpDisplayShell* %60)
  %61 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %62 = bitcast %struct._GimpTool* %61 to %struct._GTypeInstance*
  %call38 = call i64 @gimp_draw_tool_get_type() #7
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call38)
  %63 = bitcast %struct._GTypeInstance* %call39 to %struct._GimpDrawTool*
  %call40 = call i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool* %63)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.end.45, label %if.then.42

if.then.42:                                       ; preds = %if.then.31
  %64 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %65 = bitcast %struct._GimpTool* %64 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_draw_tool_get_type() #7
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call43)
  %66 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpDrawTool*
  %67 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_draw_tool_start(%struct._GimpDrawTool* %66, %struct._GimpDisplay* %67)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.42, %if.then.31
  %68 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %69 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call46 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0)) #8
  %70 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide_orientation47 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %70, i32 0, i32 5
  %71 = load i32, i32* %guide_orientation47, align 4
  %cmp48 = icmp eq i32 %71, 0
  %cond = select i1 %cmp48, i32 1, i32 0
  %72 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide_position50 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %72, i32 0, i32 4
  %73 = load i32, i32* %guide_position50, align 4
  %conv51 = sitofp i32 %73 to double
  call void @gimp_tool_push_status_length(%struct._GimpTool* %68, %struct._GimpDisplay* %69, i8* %call46, i32 %cond, double %conv51, i8* null)
  br label %sw.epilog

if.else.52:                                       ; preds = %land.lhs.true, %if.then.22
  %74 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %75 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x53 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %75, i32 0, i32 0
  %76 = load double, double* %x53, align 8
  %conv54 = fptosi double %76 to i32
  %77 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y55 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %77, i32 0, i32 1
  %78 = load double, double* %y55, align 8
  %conv56 = fptosi double %78 to i32
  %call57 = call %struct._GimpLayer* @gimp_image_pick_layer(%struct._GimpImage* %74, i32 %conv54, i32 %conv56)
  store %struct._GimpLayer* %call57, %struct._GimpLayer** %layer, align 8
  %tobool58 = icmp ne %struct._GimpLayer* %call57, null
  br i1 %tobool58, label %if.then.59, label %if.else.74

if.then.59:                                       ; preds = %if.else.52
  %79 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call60 = call %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage* %79)
  %tobool61 = icmp ne %struct._GimpLayer* %call60, null
  br i1 %tobool61, label %land.lhs.true.62, label %if.else.69

land.lhs.true.62:                                 ; preds = %if.then.59
  %80 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call63 = call i32 @gimp_layer_is_floating_sel(%struct._GimpLayer* %80)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.else.69, label %if.then.65

if.then.65:                                       ; preds = %land.lhs.true.62
  %81 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call66 = call %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage* %81)
  %82 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %floating_layer67 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %82, i32 0, i32 1
  store %struct._GimpLayer* %call66, %struct._GimpLayer** %floating_layer67, align 8
  %83 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control68 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %83, i32 0, i32 3
  %84 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control68, align 8
  call void @gimp_tool_control_activate(%struct._GimpToolControl* %84)
  br label %sw.epilog

if.else.69:                                       ; preds = %land.lhs.true.62, %if.then.59
  %85 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call70 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %85)
  %86 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %old_active_layer71 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %86, i32 0, i32 7
  store %struct._GimpLayer* %call70, %struct._GimpLayer** %old_active_layer71, align 8
  %87 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %88 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call72 = call %struct._GimpLayer* @gimp_image_set_active_layer(%struct._GimpImage* %87, %struct._GimpLayer* %88)
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.69
  br label %if.end.75

if.else.74:                                       ; preds = %if.else.52
  br label %sw.epilog

if.end.75:                                        ; preds = %if.end.73
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.else.19
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.end
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %entry
  %89 = load %struct._GimpMoveOptions*, %struct._GimpMoveOptions** %options, align 8
  %move_type80 = getelementptr inbounds %struct._GimpMoveOptions, %struct._GimpMoveOptions* %89, i32 0, i32 1
  %90 = load i32, i32* %move_type80, align 4
  switch i32 %90, label %sw.epilog [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.86
    i32 0, label %sw.bb.93
  ]

sw.bb:                                            ; preds = %if.end.79
  %91 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call81 = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %91)
  %tobool82 = icmp ne %struct._GimpVectors* %call81, null
  br i1 %tobool82, label %if.then.83, label %if.end.85

if.then.83:                                       ; preds = %sw.bb
  %92 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control84 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %92, i32 0, i32 3
  %93 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control84, align 8
  call void @gimp_tool_control_activate(%struct._GimpToolControl* %93)
  %94 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %95 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %96 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  call void @gimp_edit_selection_tool_start(%struct._GimpTool* %94, %struct._GimpDisplay* %95, %struct._GimpCoords* %96, i32 0, i32 1)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.83, %sw.bb
  br label %sw.epilog

sw.bb.86:                                         ; preds = %if.end.79
  %97 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call87 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %97)
  %call88 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call87)
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %if.end.92, label %if.then.90

if.then.90:                                       ; preds = %sw.bb.86
  %98 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control91 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %98, i32 0, i32 3
  %99 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control91, align 8
  call void @gimp_tool_control_activate(%struct._GimpToolControl* %99)
  %100 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %101 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %102 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  call void @gimp_edit_selection_tool_start(%struct._GimpTool* %100, %struct._GimpDisplay* %101, %struct._GimpCoords* %102, i32 3, i32 1)
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.90, %sw.bb.86
  br label %sw.epilog

sw.bb.93:                                         ; preds = %if.end.79
  %103 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call94 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %103)
  store %struct._GimpDrawable* %call94, %struct._GimpDrawable** %drawable, align 8
  %104 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %105 = bitcast %struct._GimpDrawable* %104 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %105, %struct._GTypeInstance** %__inst, align 8
  %call95 = call i64 @gimp_layer_mask_get_type() #7
  store i64 %call95, i64* %__t, align 8
  %106 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool96 = icmp ne %struct._GTypeInstance* %106, null
  br i1 %tobool96, label %if.else.98, label %if.then.97

if.then.97:                                       ; preds = %sw.bb.93
  store i32 0, i32* %__r, align 4
  br label %if.end.108

if.else.98:                                       ; preds = %sw.bb.93
  %107 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %107, i32 0, i32 0
  %108 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool99 = icmp ne %struct._GTypeClass* %108, null
  br i1 %tobool99, label %land.lhs.true.100, label %if.else.105

land.lhs.true.100:                                ; preds = %if.else.98
  %109 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class101 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %109, i32 0, i32 0
  %110 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class101, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %110, i32 0, i32 0
  %111 = load i64, i64* %g_type, align 8
  %112 = load i64, i64* %__t, align 8
  %cmp102 = icmp eq i64 %111, %112
  br i1 %cmp102, label %if.then.104, label %if.else.105

if.then.104:                                      ; preds = %land.lhs.true.100
  store i32 1, i32* %__r, align 4
  br label %if.end.107

if.else.105:                                      ; preds = %land.lhs.true.100, %if.else.98
  %113 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %114 = load i64, i64* %__t, align 8
  %call106 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %113, i64 %114) #9
  store i32 %call106, i32* %__r, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.105, %if.then.104
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.then.97
  %115 = load i32, i32* %__r, align 4
  store i32 %115, i32* %tmp
  %116 = load i32, i32* %tmp
  %tobool109 = icmp ne i32 %116, 0
  br i1 %tobool109, label %if.then.110, label %if.else.112

if.then.110:                                      ; preds = %if.end.108
  %117 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control111 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %117, i32 0, i32 3
  %118 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control111, align 8
  call void @gimp_tool_control_activate(%struct._GimpToolControl* %118)
  %119 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %120 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %121 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  call void @gimp_edit_selection_tool_start(%struct._GimpTool* %119, %struct._GimpDisplay* %120, %struct._GimpCoords* %121, i32 2, i32 1)
  br label %if.end.168

if.else.112:                                      ; preds = %if.end.108
  %122 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %123 = bitcast %struct._GimpDrawable* %122 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %123, %struct._GTypeInstance** %__inst114, align 8
  %call117 = call i64 @gimp_channel_get_type() #7
  store i64 %call117, i64* %__t116, align 8
  %124 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst114, align 8
  %tobool120 = icmp ne %struct._GTypeInstance* %124, null
  br i1 %tobool120, label %if.else.122, label %if.then.121

if.then.121:                                      ; preds = %if.else.112
  store i32 0, i32* %__r119, align 4
  br label %if.end.134

if.else.122:                                      ; preds = %if.else.112
  %125 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst114, align 8
  %g_class123 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %125, i32 0, i32 0
  %126 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class123, align 8
  %tobool124 = icmp ne %struct._GTypeClass* %126, null
  br i1 %tobool124, label %land.lhs.true.125, label %if.else.131

land.lhs.true.125:                                ; preds = %if.else.122
  %127 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst114, align 8
  %g_class126 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %127, i32 0, i32 0
  %128 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class126, align 8
  %g_type127 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %128, i32 0, i32 0
  %129 = load i64, i64* %g_type127, align 8
  %130 = load i64, i64* %__t116, align 8
  %cmp128 = icmp eq i64 %129, %130
  br i1 %cmp128, label %if.then.130, label %if.else.131

if.then.130:                                      ; preds = %land.lhs.true.125
  store i32 1, i32* %__r119, align 4
  br label %if.end.133

if.else.131:                                      ; preds = %land.lhs.true.125, %if.else.122
  %131 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst114, align 8
  %132 = load i64, i64* %__t116, align 8
  %call132 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %131, i64 %132) #9
  store i32 %call132, i32* %__r119, align 4
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.131, %if.then.130
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.then.121
  %133 = load i32, i32* %__r119, align 4
  store i32 %133, i32* %tmp135
  %134 = load i32, i32* %tmp135
  %tobool136 = icmp ne i32 %134, 0
  br i1 %tobool136, label %if.then.137, label %if.else.139

if.then.137:                                      ; preds = %if.end.134
  %135 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control138 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %135, i32 0, i32 3
  %136 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control138, align 8
  call void @gimp_tool_control_activate(%struct._GimpToolControl* %136)
  %137 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %138 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %139 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  call void @gimp_edit_selection_tool_start(%struct._GimpTool* %137, %struct._GimpDisplay* %138, %struct._GimpCoords* %139, i32 1, i32 1)
  br label %if.end.167

if.else.139:                                      ; preds = %if.end.134
  %140 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %141 = bitcast %struct._GimpDrawable* %140 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %141, %struct._GTypeInstance** %__inst141, align 8
  %call144 = call i64 @gimp_layer_get_type() #7
  store i64 %call144, i64* %__t143, align 8
  %142 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst141, align 8
  %tobool147 = icmp ne %struct._GTypeInstance* %142, null
  br i1 %tobool147, label %if.else.149, label %if.then.148

if.then.148:                                      ; preds = %if.else.139
  store i32 0, i32* %__r146, align 4
  br label %if.end.161

if.else.149:                                      ; preds = %if.else.139
  %143 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst141, align 8
  %g_class150 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %143, i32 0, i32 0
  %144 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class150, align 8
  %tobool151 = icmp ne %struct._GTypeClass* %144, null
  br i1 %tobool151, label %land.lhs.true.152, label %if.else.158

land.lhs.true.152:                                ; preds = %if.else.149
  %145 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst141, align 8
  %g_class153 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %145, i32 0, i32 0
  %146 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class153, align 8
  %g_type154 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %146, i32 0, i32 0
  %147 = load i64, i64* %g_type154, align 8
  %148 = load i64, i64* %__t143, align 8
  %cmp155 = icmp eq i64 %147, %148
  br i1 %cmp155, label %if.then.157, label %if.else.158

if.then.157:                                      ; preds = %land.lhs.true.152
  store i32 1, i32* %__r146, align 4
  br label %if.end.160

if.else.158:                                      ; preds = %land.lhs.true.152, %if.else.149
  %149 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst141, align 8
  %150 = load i64, i64* %__t143, align 8
  %call159 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %149, i64 %150) #9
  store i32 %call159, i32* %__r146, align 4
  br label %if.end.160

if.end.160:                                       ; preds = %if.else.158, %if.then.157
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160, %if.then.148
  %151 = load i32, i32* %__r146, align 4
  store i32 %151, i32* %tmp162
  %152 = load i32, i32* %tmp162
  %tobool163 = icmp ne i32 %152, 0
  br i1 %tobool163, label %if.then.164, label %if.end.166

if.then.164:                                      ; preds = %if.end.161
  %153 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control165 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %153, i32 0, i32 3
  %154 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control165, align 8
  call void @gimp_tool_control_activate(%struct._GimpToolControl* %154)
  %155 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %156 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %157 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  call void @gimp_edit_selection_tool_start(%struct._GimpTool* %155, %struct._GimpDisplay* %156, %struct._GimpCoords* %157, i32 6, i32 1)
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.164, %if.end.161
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %if.then.137
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %if.then.110
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.end.45, %if.then.65, %if.else.74, %if.end.79, %if.end.168, %if.end.92, %if.end.85
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_move_tool_button_release(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %release_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %release_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %move = alloca %struct._GimpMoveTool*, align 8
  %config = alloca %struct._GimpGuiConfig*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %delete_guide = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %flush = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %release_type, i32* %release_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_move_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpMoveTool*
  store %struct._GimpMoveTool* %2, %struct._GimpMoveTool** %move, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %3, i32 0, i32 1
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config2 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %4, i32 0, i32 1
  %5 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config2, align 8
  %6 = bitcast %struct._GimpCoreConfig* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_gui_config_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpGuiConfig*
  store %struct._GimpGuiConfig* %7, %struct._GimpGuiConfig** %config, align 8
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call5 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %8)
  store %struct._GimpDisplayShell* %call5, %struct._GimpDisplayShell** %shell, align 8
  %9 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call6 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %9)
  store %struct._GimpImage* %call6, %struct._GimpImage** %image, align 8
  %10 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %10, i32 0, i32 3
  %11 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_halt(%struct._GimpToolControl* %11)
  %12 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %moving_guide = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %12, i32 0, i32 3
  %13 = load i32, i32* %moving_guide, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.else.64

if.then:                                          ; preds = %entry
  store i32 0, i32* %delete_guide, align 4
  %14 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %15 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_pop_status(%struct._GimpTool* %14, %struct._GimpDisplay* %15)
  %16 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control7 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %16, i32 0, i32 3
  %17 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control7, align 8
  call void @gimp_tool_control_set_scroll_lock(%struct._GimpToolControl* %17, i32 0)
  %18 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control8 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %18, i32 0, i32 3
  %19 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control8, align 8
  call void @gimp_tool_control_set_precision(%struct._GimpToolControl* %19, i32 0)
  %20 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %21 = bitcast %struct._GimpTool* %20 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_draw_tool_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call9)
  %22 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_stop(%struct._GimpDrawTool* %22)
  %23 = load i32, i32* %release_type.addr, align 4
  %cmp = icmp eq i32 %23, 1
  br i1 %cmp, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  %24 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %moving_guide12 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %24, i32 0, i32 3
  store i32 0, i32* %moving_guide12, align 4
  %25 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide_position = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %25, i32 0, i32 4
  store i32 -2147483648, i32* %guide_position, align 4
  %26 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide_orientation = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %26, i32 0, i32 5
  store i32 2, i32* %guide_orientation, align 4
  %27 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_selection_resume(%struct._GimpDisplayShell* %27)
  br label %if.end.92

if.end:                                           ; preds = %if.then
  %28 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_untransform_viewport(%struct._GimpDisplayShell* %28, i32* %x, i32* %y, i32* %width, i32* %height)
  %29 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide_orientation13 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %29, i32 0, i32 5
  %30 = load i32, i32* %guide_orientation13, align 4
  switch i32 %30, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %if.end
  %31 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide_position14 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %31, i32 0, i32 4
  %32 = load i32, i32* %guide_position14, align 4
  %33 = load i32, i32* %y, align 4
  %cmp15 = icmp slt i32 %32, %33
  br i1 %cmp15, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %34 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide_position16 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %34, i32 0, i32 4
  %35 = load i32, i32* %guide_position16, align 4
  %36 = load i32, i32* %y, align 4
  %37 = load i32, i32* %height, align 4
  %add = add nsw i32 %36, %37
  %cmp17 = icmp sgt i32 %35, %add
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %lor.lhs.false, %sw.bb
  store i32 1, i32* %delete_guide, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %lor.lhs.false
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.end
  %38 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide_position21 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %38, i32 0, i32 4
  %39 = load i32, i32* %guide_position21, align 4
  %40 = load i32, i32* %x, align 4
  %cmp22 = icmp slt i32 %39, %40
  br i1 %cmp22, label %if.then.27, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %sw.bb.20
  %41 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide_position24 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %41, i32 0, i32 4
  %42 = load i32, i32* %guide_position24, align 4
  %43 = load i32, i32* %x, align 4
  %44 = load i32, i32* %width, align 4
  %add25 = add nsw i32 %43, %44
  %cmp26 = icmp sgt i32 %42, %add25
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %lor.lhs.false.23, %sw.bb.20
  store i32 1, i32* %delete_guide, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %lor.lhs.false.23
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.28, %if.end.19
  %45 = load i32, i32* %delete_guide, align 4
  %tobool29 = icmp ne i32 %45, 0
  br i1 %tobool29, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %sw.epilog
  %46 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %46, i32 0, i32 2
  %47 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %tobool31 = icmp ne %struct._GimpGuide* %47, null
  br i1 %tobool31, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %if.then.30
  %48 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %49 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide33 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %49, i32 0, i32 2
  %50 = load %struct._GimpGuide*, %struct._GimpGuide** %guide33, align 8
  call void @gimp_image_remove_guide(%struct._GimpImage* %48, %struct._GimpGuide* %50, i32 1)
  %51 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide34 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %51, i32 0, i32 2
  store %struct._GimpGuide* null, %struct._GimpGuide** %guide34, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %if.then.30
  br label %if.end.54

if.else:                                          ; preds = %sw.epilog
  %52 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide36 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %52, i32 0, i32 2
  %53 = load %struct._GimpGuide*, %struct._GimpGuide** %guide36, align 8
  %tobool37 = icmp ne %struct._GimpGuide* %53, null
  br i1 %tobool37, label %if.then.38, label %if.else.41

if.then.38:                                       ; preds = %if.else
  %54 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %55 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide39 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %55, i32 0, i32 2
  %56 = load %struct._GimpGuide*, %struct._GimpGuide** %guide39, align 8
  %57 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide_position40 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %57, i32 0, i32 4
  %58 = load i32, i32* %guide_position40, align 4
  call void @gimp_image_move_guide(%struct._GimpImage* %54, %struct._GimpGuide* %56, i32 %58, i32 1)
  br label %if.end.53

if.else.41:                                       ; preds = %if.else
  %59 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide_orientation42 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %59, i32 0, i32 5
  %60 = load i32, i32* %guide_orientation42, align 4
  switch i32 %60, label %sw.default.51 [
    i32 0, label %sw.bb.43
    i32 1, label %sw.bb.47
  ]

sw.bb.43:                                         ; preds = %if.else.41
  %61 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %62 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide_position44 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %62, i32 0, i32 4
  %63 = load i32, i32* %guide_position44, align 4
  %call45 = call %struct._GimpGuide* @gimp_image_add_hguide(%struct._GimpImage* %61, i32 %63, i32 1)
  %64 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide46 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %64, i32 0, i32 2
  store %struct._GimpGuide* %call45, %struct._GimpGuide** %guide46, align 8
  br label %sw.epilog.52

sw.bb.47:                                         ; preds = %if.else.41
  %65 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %66 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide_position48 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %66, i32 0, i32 4
  %67 = load i32, i32* %guide_position48, align 4
  %call49 = call %struct._GimpGuide* @gimp_image_add_vguide(%struct._GimpImage* %65, i32 %67, i32 1)
  %68 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide50 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %68, i32 0, i32 2
  store %struct._GimpGuide* %call49, %struct._GimpGuide** %guide50, align 8
  br label %sw.epilog.52

sw.default.51:                                    ; preds = %if.else.41
  br label %do.body

do.body:                                          ; preds = %sw.default.51
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i32 426, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_move_tool_button_release, i32 0, i32 0), i8* null) #10
  unreachable

do.end:                                           ; No predecessors!
  br label %sw.epilog.52

sw.epilog.52:                                     ; preds = %do.end, %sw.bb.47, %sw.bb.43
  br label %if.end.53

if.end.53:                                        ; preds = %sw.epilog.52, %if.then.38
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.end.35
  %69 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_selection_resume(%struct._GimpDisplayShell* %69)
  %70 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %70)
  %71 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %moving_guide55 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %71, i32 0, i32 3
  store i32 0, i32* %moving_guide55, align 4
  %72 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide_position56 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %72, i32 0, i32 4
  store i32 -2147483648, i32* %guide_position56, align 4
  %73 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide_orientation57 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %73, i32 0, i32 5
  store i32 2, i32* %guide_orientation57, align 4
  %74 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide58 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %74, i32 0, i32 2
  %75 = load %struct._GimpGuide*, %struct._GimpGuide** %guide58, align 8
  %tobool59 = icmp ne %struct._GimpGuide* %75, null
  br i1 %tobool59, label %if.then.60, label %if.end.63

if.then.60:                                       ; preds = %if.end.54
  %76 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %77 = bitcast %struct._GimpTool* %76 to %struct._GTypeInstance*
  %call61 = call i64 @gimp_draw_tool_get_type() #7
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call61)
  %78 = bitcast %struct._GTypeInstance* %call62 to %struct._GimpDrawTool*
  %79 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_draw_tool_start(%struct._GimpDrawTool* %78, %struct._GimpDisplay* %79)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.60, %if.end.54
  br label %if.end.92

if.else.64:                                       ; preds = %entry
  store i32 0, i32* %flush, align 4
  %80 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %move_tool_changes_active = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %80, i32 0, i32 1
  %81 = load i32, i32* %move_tool_changes_active, align 4
  %tobool65 = icmp ne i32 %81, 0
  br i1 %tobool65, label %lor.lhs.false.66, label %if.then.68

lor.lhs.false.66:                                 ; preds = %if.else.64
  %82 = load i32, i32* %release_type.addr, align 4
  %cmp67 = icmp eq i32 %82, 1
  br i1 %cmp67, label %if.then.68, label %if.end.81

if.then.68:                                       ; preds = %lor.lhs.false.66, %if.else.64
  %83 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %old_active_layer = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %83, i32 0, i32 7
  %84 = load %struct._GimpLayer*, %struct._GimpLayer** %old_active_layer, align 8
  %tobool69 = icmp ne %struct._GimpLayer* %84, null
  br i1 %tobool69, label %if.then.70, label %if.end.74

if.then.70:                                       ; preds = %if.then.68
  %85 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %86 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %old_active_layer71 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %86, i32 0, i32 7
  %87 = load %struct._GimpLayer*, %struct._GimpLayer** %old_active_layer71, align 8
  %call72 = call %struct._GimpLayer* @gimp_image_set_active_layer(%struct._GimpImage* %85, %struct._GimpLayer* %87)
  %88 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %old_active_layer73 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %88, i32 0, i32 7
  store %struct._GimpLayer* null, %struct._GimpLayer** %old_active_layer73, align 8
  store i32 1, i32* %flush, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.70, %if.then.68
  %89 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %old_active_vectors = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %89, i32 0, i32 8
  %90 = load %struct._GimpVectors*, %struct._GimpVectors** %old_active_vectors, align 8
  %tobool75 = icmp ne %struct._GimpVectors* %90, null
  br i1 %tobool75, label %if.then.76, label %if.end.80

if.then.76:                                       ; preds = %if.end.74
  %91 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %92 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %old_active_vectors77 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %92, i32 0, i32 8
  %93 = load %struct._GimpVectors*, %struct._GimpVectors** %old_active_vectors77, align 8
  %call78 = call %struct._GimpVectors* @gimp_image_set_active_vectors(%struct._GimpImage* %91, %struct._GimpVectors* %93)
  %94 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %old_active_vectors79 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %94, i32 0, i32 8
  store %struct._GimpVectors* null, %struct._GimpVectors** %old_active_vectors79, align 8
  store i32 1, i32* %flush, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.76, %if.end.74
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %lor.lhs.false.66
  %95 = load i32, i32* %release_type.addr, align 4
  %cmp82 = icmp ne i32 %95, 1
  br i1 %cmp82, label %if.then.83, label %if.end.88

if.then.83:                                       ; preds = %if.end.81
  %96 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %floating_layer = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %96, i32 0, i32 1
  %97 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_layer, align 8
  %tobool84 = icmp ne %struct._GimpLayer* %97, null
  br i1 %tobool84, label %if.then.85, label %if.end.87

if.then.85:                                       ; preds = %if.then.83
  %98 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %floating_layer86 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %98, i32 0, i32 1
  %99 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_layer86, align 8
  call void @floating_sel_anchor(%struct._GimpLayer* %99)
  store i32 1, i32* %flush, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.85, %if.then.83
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %if.end.81
  %100 = load i32, i32* %flush, align 4
  %tobool89 = icmp ne i32 %100, 0
  br i1 %tobool89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.end.88
  %101 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %101)
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.90, %if.end.88
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.11, %if.end.91, %if.end.63
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_move_tool_motion(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %move = alloca %struct._GimpMoveTool*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %tx = alloca i32, align 4
  %ty = alloca i32, align 4
  %delete_guide = alloca i32, align 4
  %x11 = alloca i32, align 4
  %y12 = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_move_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpMoveTool*
  store %struct._GimpMoveTool* %2, %struct._GimpMoveTool** %move, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call2 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %3)
  store %struct._GimpDisplayShell* %call2, %struct._GimpDisplayShell** %shell, align 8
  %4 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %moving_guide = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %4, i32 0, i32 3
  %5 = load i32, i32* %moving_guide, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.68

if.then:                                          ; preds = %entry
  store i32 0, i32* %delete_guide, align 4
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %7 = bitcast %struct._GimpTool* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_draw_tool_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %8)
  %9 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %10 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %10, i32 0, i32 0
  %11 = load double, double* %x, align 8
  %12 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %12, i32 0, i32 1
  %13 = load double, double* %y, align 8
  call void @gimp_display_shell_transform_xy(%struct._GimpDisplayShell* %9, double %11, double %13, i32* %tx, i32* %ty)
  %14 = load i32, i32* %tx, align 4
  %cmp = icmp slt i32 %14, 0
  br i1 %cmp, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %15 = load i32, i32* %tx, align 4
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %disp_width = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %16, i32 0, i32 28
  %17 = load i32, i32* %disp_width, align 4
  %cmp5 = icmp sge i32 %15, %17
  br i1 %cmp5, label %if.then.10, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %18 = load i32, i32* %ty, align 4
  %cmp7 = icmp slt i32 %18, 0
  br i1 %cmp7, label %if.then.10, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.6
  %19 = load i32, i32* %ty, align 4
  %20 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %disp_height = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %20, i32 0, i32 29
  %21 = load i32, i32* %disp_height, align 4
  %cmp9 = icmp sge i32 %19, %21
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %lor.lhs.false.8, %lor.lhs.false.6, %lor.lhs.false, %if.then
  %22 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide_position = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %22, i32 0, i32 4
  store i32 -2147483648, i32* %guide_position, align 4
  store i32 1, i32* %delete_guide, align 4
  br label %if.end.44

if.else:                                          ; preds = %lor.lhs.false.8
  %23 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide_orientation = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %23, i32 0, i32 5
  %24 = load i32, i32* %guide_orientation, align 4
  %cmp13 = icmp eq i32 %24, 0
  br i1 %cmp13, label %if.then.14, label %if.else.18

if.then.14:                                       ; preds = %if.else
  %25 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y15 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %25, i32 0, i32 1
  %26 = load double, double* %y15, align 8
  %call16 = call double @rint(double %26) #7
  %conv = fptosi double %call16 to i32
  %27 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide_position17 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %27, i32 0, i32 4
  store i32 %conv, i32* %guide_position17, align 4
  br label %if.end

if.else.18:                                       ; preds = %if.else
  %28 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x19 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %28, i32 0, i32 0
  %29 = load double, double* %x19, align 8
  %call20 = call double @rint(double %29) #7
  %conv21 = fptosi double %call20 to i32
  %30 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide_position22 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %30, i32 0, i32 4
  store i32 %conv21, i32* %guide_position22, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.18, %if.then.14
  %31 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_untransform_viewport(%struct._GimpDisplayShell* %31, i32* %x11, i32* %y12, i32* %width, i32* %height)
  %32 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide_orientation23 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %32, i32 0, i32 5
  %33 = load i32, i32* %guide_orientation23, align 4
  switch i32 %33, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.33
  ]

sw.bb:                                            ; preds = %if.end
  %34 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide_position24 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %34, i32 0, i32 4
  %35 = load i32, i32* %guide_position24, align 4
  %36 = load i32, i32* %y12, align 4
  %cmp25 = icmp slt i32 %35, %36
  br i1 %cmp25, label %if.then.31, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %sw.bb
  %37 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide_position28 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %37, i32 0, i32 4
  %38 = load i32, i32* %guide_position28, align 4
  %39 = load i32, i32* %y12, align 4
  %40 = load i32, i32* %height, align 4
  %add = add nsw i32 %39, %40
  %cmp29 = icmp sgt i32 %38, %add
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %lor.lhs.false.27, %sw.bb
  store i32 1, i32* %delete_guide, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %lor.lhs.false.27
  br label %sw.epilog

sw.bb.33:                                         ; preds = %if.end
  %41 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide_position34 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %41, i32 0, i32 4
  %42 = load i32, i32* %guide_position34, align 4
  %43 = load i32, i32* %x11, align 4
  %cmp35 = icmp slt i32 %42, %43
  br i1 %cmp35, label %if.then.42, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %sw.bb.33
  %44 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide_position38 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %44, i32 0, i32 4
  %45 = load i32, i32* %guide_position38, align 4
  %46 = load i32, i32* %x11, align 4
  %47 = load i32, i32* %width, align 4
  %add39 = add nsw i32 %46, %47
  %cmp40 = icmp sgt i32 %45, %add39
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %lor.lhs.false.37, %sw.bb.33
  store i32 1, i32* %delete_guide, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %lor.lhs.false.37
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.43, %if.end.32
  br label %if.end.44

if.end.44:                                        ; preds = %sw.epilog, %if.then.10
  %48 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %49 = bitcast %struct._GimpTool* %48 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_draw_tool_get_type() #7
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call45)
  %50 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %50)
  %51 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %52 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_pop_status(%struct._GimpTool* %51, %struct._GimpDisplay* %52)
  %53 = load i32, i32* %delete_guide, align 4
  %tobool47 = icmp ne i32 %53, 0
  br i1 %tobool47, label %if.then.48, label %if.else.52

if.then.48:                                       ; preds = %if.end.44
  %54 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %55 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %56 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %56, i32 0, i32 2
  %57 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %tobool49 = icmp ne %struct._GimpGuide* %57, null
  br i1 %tobool49, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.48
  %call50 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0)) #8
  br label %cond.end

cond.false:                                       ; preds = %if.then.48
  %call51 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0)) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call50, %cond.true ], [ %call51, %cond.false ]
  call void (%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) @gimp_tool_push_status(%struct._GimpTool* %54, %struct._GimpDisplay* %55, i8* %cond)
  br label %if.end.67

if.else.52:                                       ; preds = %if.end.44
  %58 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %59 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %60 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide53 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %60, i32 0, i32 2
  %61 = load %struct._GimpGuide*, %struct._GimpGuide** %guide53, align 8
  %tobool54 = icmp ne %struct._GimpGuide* %61, null
  br i1 %tobool54, label %cond.true.55, label %cond.false.57

cond.true.55:                                     ; preds = %if.else.52
  %call56 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0)) #8
  br label %cond.end.59

cond.false.57:                                    ; preds = %if.else.52
  %call58 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0)) #8
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.57, %cond.true.55
  %cond60 = phi i8* [ %call56, %cond.true.55 ], [ %call58, %cond.false.57 ]
  %62 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide_orientation61 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %62, i32 0, i32 5
  %63 = load i32, i32* %guide_orientation61, align 4
  %cmp62 = icmp eq i32 %63, 0
  %cond64 = select i1 %cmp62, i32 1, i32 0
  %64 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide_position65 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %64, i32 0, i32 4
  %65 = load i32, i32* %guide_position65, align 4
  %conv66 = sitofp i32 %65 to double
  call void @gimp_tool_push_status_length(%struct._GimpTool* %58, %struct._GimpDisplay* %59, i8* %cond60, i32 %cond64, double %conv66, i8* null)
  br label %if.end.67

if.end.67:                                        ; preds = %cond.end.59, %cond.end
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_move_tool_key_press(%struct._GimpTool* %tool, %struct._GdkEventKey* %kevent, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %kevent.addr = alloca %struct._GdkEventKey*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %options = alloca %struct._GimpMoveOptions*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GdkEventKey* %kevent, %struct._GdkEventKey** %kevent.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  %call2 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %2)
  %3 = bitcast %struct._GimpToolOptions* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_move_options_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpMoveOptions*
  store %struct._GimpMoveOptions* %4, %struct._GimpMoveOptions** %options, align 8
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %6 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %7 = load %struct._GimpMoveOptions*, %struct._GimpMoveOptions** %options, align 8
  %move_type = getelementptr inbounds %struct._GimpMoveOptions, %struct._GimpMoveOptions* %7, i32 0, i32 1
  %8 = load i32, i32* %move_type, align 4
  %9 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call5 = call i32 @gimp_edit_selection_tool_translate(%struct._GimpTool* %5, %struct._GdkEventKey* %6, i32 %8, %struct._GimpDisplay* %9)
  ret i32 %call5
}

; Function Attrs: nounwind uwtable
define internal void @gimp_move_tool_modifier_key(%struct._GimpTool* %tool, i32 %key, i32 %press, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %key.addr = alloca i32, align 4
  %press.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %move = alloca %struct._GimpMoveTool*, align 8
  %options = alloca %struct._GimpMoveOptions*, align 8
  %button_type = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %press, i32* %press.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_move_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpMoveTool*
  store %struct._GimpMoveTool* %2, %struct._GimpMoveTool** %move, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_move_options_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpMoveOptions*
  store %struct._GimpMoveOptions* %7, %struct._GimpMoveOptions** %options, align 8
  %8 = load i32, i32* %key.addr, align 4
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpMoveOptions*, %struct._GimpMoveOptions** %options, align 8
  %10 = bitcast %struct._GimpMoveOptions* %9 to i8*
  %11 = load %struct._GimpMoveOptions*, %struct._GimpMoveOptions** %options, align 8
  %move_current = getelementptr inbounds %struct._GimpMoveOptions, %struct._GimpMoveOptions* %11, i32 0, i32 2
  %12 = load i32, i32* %move_current, align 4
  %tobool = icmp ne i32 %12, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  call void (i8*, i8*, ...) @g_object_set(i8* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i32 %lnot.ext, i8* null)
  br label %if.end.41

if.else:                                          ; preds = %entry
  %13 = load i32, i32* %key.addr, align 4
  %cmp7 = icmp eq i32 %13, 8
  br i1 %cmp7, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %14 = load i32, i32* %key.addr, align 4
  %call8 = call i32 @gimp_get_toggle_behavior_mask()
  %cmp9 = icmp eq i32 %14, %call8
  br i1 %cmp9, label %if.then.10, label %if.end.40

if.then.10:                                       ; preds = %lor.lhs.false, %if.else
  %15 = load %struct._GimpMoveOptions*, %struct._GimpMoveOptions** %options, align 8
  %move_type = getelementptr inbounds %struct._GimpMoveOptions, %struct._GimpMoveOptions* %15, i32 0, i32 1
  %16 = load i32, i32* %move_type, align 4
  store i32 %16, i32* %button_type, align 4
  %17 = load i32, i32* %press.addr, align 4
  %tobool11 = icmp ne i32 %17, 0
  br i1 %tobool11, label %if.then.12, label %if.else.17

if.then.12:                                       ; preds = %if.then.10
  %18 = load i32, i32* %key.addr, align 4
  %19 = load i32, i32* %state.addr, align 4
  %call13 = call i32 @gimp_get_toggle_behavior_mask()
  %or = or i32 8, %call13
  %and = and i32 %19, %or
  %cmp14 = icmp eq i32 %18, %and
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.then.12
  %20 = load %struct._GimpMoveOptions*, %struct._GimpMoveOptions** %options, align 8
  %move_type16 = getelementptr inbounds %struct._GimpMoveOptions, %struct._GimpMoveOptions* %20, i32 0, i32 1
  %21 = load i32, i32* %move_type16, align 4
  %22 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %saved_type = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %22, i32 0, i32 6
  store i32 %21, i32* %saved_type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.15, %if.then.12
  br label %if.end.25

if.else.17:                                       ; preds = %if.then.10
  %23 = load i32, i32* %state.addr, align 4
  %call18 = call i32 @gimp_get_toggle_behavior_mask()
  %or19 = or i32 8, %call18
  %and20 = and i32 %23, %or19
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.end.24, label %if.then.22

if.then.22:                                       ; preds = %if.else.17
  %24 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %saved_type23 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %24, i32 0, i32 6
  %25 = load i32, i32* %saved_type23, align 4
  store i32 %25, i32* %button_type, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.else.17
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end
  %26 = load i32, i32* %state.addr, align 4
  %and26 = and i32 %26, 8
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %if.end.25
  store i32 1, i32* %button_type, align 4
  br label %if.end.35

if.else.29:                                       ; preds = %if.end.25
  %27 = load i32, i32* %state.addr, align 4
  %call30 = call i32 @gimp_get_toggle_behavior_mask()
  %and31 = and i32 %27, %call30
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.else.29
  store i32 2, i32* %button_type, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.else.29
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.28
  %28 = load i32, i32* %button_type, align 4
  %29 = load %struct._GimpMoveOptions*, %struct._GimpMoveOptions** %options, align 8
  %move_type36 = getelementptr inbounds %struct._GimpMoveOptions, %struct._GimpMoveOptions* %29, i32 0, i32 1
  %30 = load i32, i32* %move_type36, align 4
  %cmp37 = icmp ne i32 %28, %30
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.35
  %31 = load %struct._GimpMoveOptions*, %struct._GimpMoveOptions** %options, align 8
  %32 = bitcast %struct._GimpMoveOptions* %31 to i8*
  %33 = load i32, i32* %button_type, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i32 %33, i8* null)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.end.35
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %lor.lhs.false
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_move_tool_oper_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, i32 %proximity, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %proximity.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %move = alloca %struct._GimpMoveTool*, align 8
  %options = alloca %struct._GimpMoveOptions*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %guide = alloca %struct._GimpGuide*, align 8
  %snap_distance = alloca i32, align 4
  %draw_tool = alloca %struct._GimpDrawTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store i32 %proximity, i32* %proximity.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_move_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpMoveTool*
  store %struct._GimpMoveTool* %2, %struct._GimpMoveTool** %move, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_move_options_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpMoveOptions*
  store %struct._GimpMoveOptions* %7, %struct._GimpMoveOptions** %options, align 8
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call7 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %8)
  store %struct._GimpDisplayShell* %call7, %struct._GimpDisplayShell** %shell, align 8
  %9 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call8 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %9)
  store %struct._GimpImage* %call8, %struct._GimpImage** %image, align 8
  store %struct._GimpGuide* null, %struct._GimpGuide** %guide, align 8
  %10 = load %struct._GimpMoveOptions*, %struct._GimpMoveOptions** %options, align 8
  %move_type = getelementptr inbounds %struct._GimpMoveOptions, %struct._GimpMoveOptions* %10, i32 0, i32 1
  %11 = load i32, i32* %move_type, align 4
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %12 = load %struct._GimpMoveOptions*, %struct._GimpMoveOptions** %options, align 8
  %move_current = getelementptr inbounds %struct._GimpMoveOptions, %struct._GimpMoveOptions* %12, i32 0, i32 2
  %13 = load i32, i32* %move_current, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.end, label %land.lhs.true.9

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call10 = call i32 @gimp_display_shell_get_show_guides(%struct._GimpDisplayShell* %14)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %land.lhs.true.12, label %if.end

land.lhs.true.12:                                 ; preds = %land.lhs.true.9
  %15 = load i32, i32* %proximity.addr, align 4
  %tobool13 = icmp ne i32 %15, 0
  br i1 %tobool13, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.12
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %config = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %16, i32 0, i32 2
  %17 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config, align 8
  %snap_distance14 = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %17, i32 0, i32 3
  %18 = load i32, i32* %snap_distance14, align 4
  store i32 %18, i32* %snap_distance, align 4
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %20 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %20, i32 0, i32 0
  %21 = load double, double* %x, align 8
  %22 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %22, i32 0, i32 1
  %23 = load double, double* %y, align 8
  %24 = load i32, i32* %snap_distance, align 4
  %conv = sitofp i32 %24 to double
  %25 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %25, i32 0, i32 13
  %26 = load double, double* %scale_x, align 8
  %div = fdiv double %conv, %26
  %27 = load i32, i32* %snap_distance, align 4
  %conv15 = sitofp i32 %27 to double
  %28 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %28, i32 0, i32 14
  %29 = load double, double* %scale_y, align 8
  %div16 = fdiv double %conv15, %29
  %call17 = call %struct._GimpGuide* @gimp_image_find_guide(%struct._GimpImage* %19, double %21, double %23, double %div, double %div16)
  store %struct._GimpGuide* %call17, %struct._GimpGuide** %guide, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.12, %land.lhs.true.9, %land.lhs.true, %entry
  %30 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide18 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %30, i32 0, i32 2
  %31 = load %struct._GimpGuide*, %struct._GimpGuide** %guide18, align 8
  %32 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %cmp19 = icmp ne %struct._GimpGuide* %31, %32
  br i1 %cmp19, label %if.then.21, label %if.end.37

if.then.21:                                       ; preds = %if.end
  %33 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %34 = bitcast %struct._GimpTool* %33 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_draw_tool_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call22)
  %35 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpDrawTool*
  store %struct._GimpDrawTool* %35, %struct._GimpDrawTool** %draw_tool, align 8
  %36 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %36)
  %37 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %call24 = call i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool* %37)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %land.lhs.true.26, label %if.end.31

land.lhs.true.26:                                 ; preds = %if.then.21
  %38 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %display27 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %38, i32 0, i32 1
  %39 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display27, align 8
  %40 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %cmp28 = icmp ne %struct._GimpDisplay* %39, %40
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %land.lhs.true.26
  %41 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_stop(%struct._GimpDrawTool* %41)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %land.lhs.true.26, %if.then.21
  %42 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %43 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide32 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %43, i32 0, i32 2
  store %struct._GimpGuide* %42, %struct._GimpGuide** %guide32, align 8
  %44 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %call33 = call i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool* %44)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %if.end.31
  %45 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %46 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_draw_tool_start(%struct._GimpDrawTool* %45, %struct._GimpDisplay* %46)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.end.31
  %47 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %47)
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_move_tool_cursor_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %options = alloca %struct._GimpMoveOptions*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %cursor = alloca i32, align 4
  %tool_cursor = alloca i32, align 4
  %modifier = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %snap_distance = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  %call2 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %2)
  %3 = bitcast %struct._GimpToolOptions* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_move_options_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpMoveOptions*
  store %struct._GimpMoveOptions* %4, %struct._GimpMoveOptions** %options, align 8
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call5 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %5)
  store %struct._GimpDisplayShell* %call5, %struct._GimpDisplayShell** %shell, align 8
  %6 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call6 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %6)
  store %struct._GimpImage* %call6, %struct._GimpImage** %image, align 8
  store i32 1025, i32* %cursor, align 4
  store i32 11, i32* %tool_cursor, align 4
  store i32 0, i32* %modifier, align 4
  %7 = load %struct._GimpMoveOptions*, %struct._GimpMoveOptions** %options, align 8
  %move_type = getelementptr inbounds %struct._GimpMoveOptions, %struct._GimpMoveOptions* %7, i32 0, i32 1
  %8 = load i32, i32* %move_type, align 4
  %cmp = icmp eq i32 %8, 2
  br i1 %cmp, label %if.then, label %if.else.19

if.then:                                          ; preds = %entry
  store i32 6, i32* %tool_cursor, align 4
  store i32 5, i32* %modifier, align 4
  %9 = load %struct._GimpMoveOptions*, %struct._GimpMoveOptions** %options, align 8
  %move_current = getelementptr inbounds %struct._GimpMoveOptions, %struct._GimpMoveOptions* %9, i32 0, i32 2
  %10 = load i32, i32* %move_current, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call8 = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %11)
  %tobool9 = icmp ne %struct._GimpVectors* %call8, null
  br i1 %tobool9, label %if.end, label %if.then.10

if.then.10:                                       ; preds = %if.then.7
  store i32 1, i32* %modifier, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then.7
  br label %if.end.18

if.else:                                          ; preds = %if.then
  %12 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %13 = bitcast %struct._GimpTool* %12 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_draw_tool_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call11)
  %14 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpDrawTool*
  %15 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %16 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %call13 = call i32 @gimp_draw_tool_on_vectors(%struct._GimpDrawTool* %14, %struct._GimpDisplay* %15, %struct._GimpCoords* %16, i32 7, i32 7, %struct._GimpCoords* null, double* null, %struct._GimpAnchor** null, %struct._GimpAnchor** null, %struct._GimpStroke** null, %struct._GimpVectors** null)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.else
  store i32 36, i32* %tool_cursor, align 4
  br label %if.end.17

if.else.16:                                       ; preds = %if.else
  store i32 1, i32* %modifier, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.16, %if.then.15
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end
  br label %if.end.71

if.else.19:                                       ; preds = %entry
  %17 = load %struct._GimpMoveOptions*, %struct._GimpMoveOptions** %options, align 8
  %move_type20 = getelementptr inbounds %struct._GimpMoveOptions, %struct._GimpMoveOptions* %17, i32 0, i32 1
  %18 = load i32, i32* %move_type20, align 4
  %cmp21 = icmp eq i32 %18, 1
  br i1 %cmp21, label %if.then.22, label %if.else.28

if.then.22:                                       ; preds = %if.else.19
  store i32 1, i32* %tool_cursor, align 4
  store i32 5, i32* %modifier, align 4
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call23 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %19)
  %call24 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call23)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.22
  store i32 1, i32* %modifier, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.then.22
  br label %if.end.70

if.else.28:                                       ; preds = %if.else.19
  %20 = load %struct._GimpMoveOptions*, %struct._GimpMoveOptions** %options, align 8
  %move_current29 = getelementptr inbounds %struct._GimpMoveOptions, %struct._GimpMoveOptions* %20, i32 0, i32 2
  %21 = load i32, i32* %move_current29, align 4
  %tobool30 = icmp ne i32 %21, 0
  br i1 %tobool30, label %if.then.31, label %if.else.36

if.then.31:                                       ; preds = %if.else.28
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call32 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %22)
  %tobool33 = icmp ne %struct._GimpDrawable* %call32, null
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %if.then.31
  store i32 1, i32* %modifier, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.then.31
  br label %if.end.69

if.else.36:                                       ; preds = %if.else.28
  %23 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %config = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %23, i32 0, i32 2
  %24 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config, align 8
  %snap_distance37 = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %24, i32 0, i32 3
  %25 = load i32, i32* %snap_distance37, align 4
  store i32 %25, i32* %snap_distance, align 4
  %26 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call38 = call i32 @gimp_display_shell_get_show_guides(%struct._GimpDisplayShell* %26)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %land.lhs.true, label %if.else.45

land.lhs.true:                                    ; preds = %if.else.36
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %28 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %28, i32 0, i32 0
  %29 = load double, double* %x, align 8
  %30 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %30, i32 0, i32 1
  %31 = load double, double* %y, align 8
  %32 = load i32, i32* %snap_distance, align 4
  %conv = sitofp i32 %32 to double
  %33 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %33, i32 0, i32 13
  %34 = load double, double* %scale_x, align 8
  %div = fdiv double %conv, %34
  %35 = load i32, i32* %snap_distance, align 4
  %conv40 = sitofp i32 %35 to double
  %36 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %36, i32 0, i32 14
  %37 = load double, double* %scale_y, align 8
  %div41 = fdiv double %conv40, %37
  %call42 = call %struct._GimpGuide* @gimp_image_find_guide(%struct._GimpImage* %27, double %29, double %31, double %div, double %div41)
  %tobool43 = icmp ne %struct._GimpGuide* %call42, null
  br i1 %tobool43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %land.lhs.true
  store i32 36, i32* %tool_cursor, align 4
  store i32 5, i32* %modifier, align 4
  br label %if.end.68

if.else.45:                                       ; preds = %land.lhs.true, %if.else.36
  %38 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %39 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x46 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %39, i32 0, i32 0
  %40 = load double, double* %x46, align 8
  %conv47 = fptosi double %40 to i32
  %41 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y48 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %41, i32 0, i32 1
  %42 = load double, double* %y48, align 8
  %conv49 = fptosi double %42 to i32
  %call50 = call %struct._GimpLayer* @gimp_image_pick_layer(%struct._GimpImage* %38, i32 %conv47, i32 %conv49)
  store %struct._GimpLayer* %call50, %struct._GimpLayer** %layer, align 8
  %tobool51 = icmp ne %struct._GimpLayer* %call50, null
  br i1 %tobool51, label %if.then.52, label %if.else.66

if.then.52:                                       ; preds = %if.else.45
  %43 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call53 = call %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage* %43)
  %tobool54 = icmp ne %struct._GimpLayer* %call53, null
  br i1 %tobool54, label %land.lhs.true.55, label %if.else.59

land.lhs.true.55:                                 ; preds = %if.then.52
  %44 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call56 = call i32 @gimp_layer_is_floating_sel(%struct._GimpLayer* %44)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.else.59, label %if.then.58

if.then.58:                                       ; preds = %land.lhs.true.55
  store i32 11, i32* %tool_cursor, align 4
  store i32 8, i32* %modifier, align 4
  br label %if.end.65

if.else.59:                                       ; preds = %land.lhs.true.55, %if.then.52
  %45 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %46 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call60 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %46)
  %cmp61 = icmp ne %struct._GimpLayer* %45, %call60
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.else.59
  store i32 36, i32* %tool_cursor, align 4
  store i32 5, i32* %modifier, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %if.else.59
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.58
  br label %if.end.67

if.else.66:                                       ; preds = %if.else.45
  store i32 1, i32* %modifier, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.66, %if.end.65
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.then.44
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.end.35
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.end.27
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.end.18
  %47 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %47, i32 0, i32 3
  %48 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %49 = load i32, i32* %cursor, align 4
  call void @gimp_tool_control_set_cursor(%struct._GimpToolControl* %48, i32 %49)
  %50 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control72 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %50, i32 0, i32 3
  %51 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control72, align 8
  %52 = load i32, i32* %tool_cursor, align 4
  call void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl* %51, i32 %52)
  %53 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control73 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %53, i32 0, i32 3
  %54 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control73, align 8
  %55 = load i32, i32* %modifier, align 4
  call void @gimp_tool_control_set_cursor_modifier(%struct._GimpToolControl* %54, i32 %55)
  %56 = load i8*, i8** @gimp_move_tool_parent_class, align 8
  %57 = bitcast i8* %56 to %struct._GTypeClass*
  %call74 = call i64 @gimp_tool_get_type() #7
  %call75 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %57, i64 %call74)
  %58 = bitcast %struct._GTypeClass* %call75 to %struct._GimpToolClass*
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %58, i32 0, i32 13
  %59 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %60 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %61 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %62 = load i32, i32* %state.addr, align 4
  %63 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %59(%struct._GimpTool* %60, %struct._GimpCoords* %61, i32 %62, %struct._GimpDisplay* %63)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_move_tool_draw(%struct._GimpDrawTool* %draw_tool) #3 {
entry:
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %move = alloca %struct._GimpMoveTool*, align 8
  %item = alloca %struct._GimpCanvasItem*, align 8
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_move_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpMoveTool*
  store %struct._GimpMoveTool* %2, %struct._GimpMoveTool** %move, align 8
  %3 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %3, i32 0, i32 2
  %4 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %tobool = icmp ne %struct._GimpGuide* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %6 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide2 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %6, i32 0, i32 2
  %7 = load %struct._GimpGuide*, %struct._GimpGuide** %guide2, align 8
  %call3 = call i32 @gimp_guide_get_orientation(%struct._GimpGuide* %7)
  %8 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide4 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %8, i32 0, i32 2
  %9 = load %struct._GimpGuide*, %struct._GimpGuide** %guide4, align 8
  %call5 = call i32 @gimp_guide_get_position(%struct._GimpGuide* %9)
  %call6 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_guide(%struct._GimpDrawTool* %5, i32 %call3, i32 %call5, i32 1)
  store %struct._GimpCanvasItem* %call6, %struct._GimpCanvasItem** %item, align 8
  %10 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  call void @gimp_canvas_item_set_highlight(%struct._GimpCanvasItem* %10, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %moving_guide = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %11, i32 0, i32 3
  %12 = load i32, i32* %moving_guide, align 4
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %if.end
  %13 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide_position = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %13, i32 0, i32 4
  %14 = load i32, i32* %guide_position, align 4
  %cmp = icmp ne i32 %14, -2147483648
  br i1 %cmp, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %land.lhs.true
  %15 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %16 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide_orientation = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %16, i32 0, i32 5
  %17 = load i32, i32* %guide_orientation, align 4
  %18 = load %struct._GimpMoveTool*, %struct._GimpMoveTool** %move, align 8
  %guide_position9 = getelementptr inbounds %struct._GimpMoveTool, %struct._GimpMoveTool* %18, i32 0, i32 4
  %19 = load i32, i32* %guide_position9, align 4
  %call10 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_guide(%struct._GimpDrawTool* %15, i32 %17, i32 %19, i32 0)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %land.lhs.true, %if.end
  ret void
}

declare %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool*) #1

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare i32 @gimp_draw_tool_on_vectors(%struct._GimpDrawTool*, %struct._GimpDisplay*, %struct._GimpCoords*, i32, i32, %struct._GimpCoords*, double*, %struct._GimpAnchor**, %struct._GimpAnchor**, %struct._GimpStroke**, %struct._GimpVectors**) #1

declare %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage*) #1

declare %struct._GimpVectors* @gimp_image_set_active_vectors(%struct._GimpImage*, %struct._GimpVectors*) #1

declare i32 @gimp_display_shell_get_show_guides(%struct._GimpDisplayShell*) #1

declare %struct._GimpGuide* @gimp_image_find_guide(%struct._GimpImage*, double, double, double, double) #1

declare i32 @gimp_guide_get_position(%struct._GimpGuide*) #1

declare i32 @gimp_guide_get_orientation(%struct._GimpGuide*) #1

declare void @gimp_tool_control_set_scroll_lock(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_precision(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_activate(%struct._GimpToolControl*) #1

declare void @gimp_display_shell_selection_pause(%struct._GimpDisplayShell*) #1

declare i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool*) #1

declare void @gimp_draw_tool_start(%struct._GimpDrawTool*, %struct._GimpDisplay*) #1

declare void @gimp_tool_push_status_length(%struct._GimpTool*, %struct._GimpDisplay*, i8*, i32, double, i8*) #1

declare %struct._GimpLayer* @gimp_image_pick_layer(%struct._GimpImage*, i32, i32) #1

declare %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage*) #1

declare i32 @gimp_layer_is_floating_sel(%struct._GimpLayer*) #1

declare %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage*) #1

declare %struct._GimpLayer* @gimp_image_set_active_layer(%struct._GimpImage*, %struct._GimpLayer*) #1

declare void @gimp_edit_selection_tool_start(%struct._GimpTool*, %struct._GimpDisplay*, %struct._GimpCoords*, i32, i32) #1

declare i32 @gimp_channel_is_empty(%struct._GimpChannel*) #1

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #1

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_mask_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_gui_config_get_type() #2

declare void @gimp_tool_control_halt(%struct._GimpToolControl*) #1

declare void @gimp_tool_pop_status(%struct._GimpTool*, %struct._GimpDisplay*) #1

declare void @gimp_draw_tool_stop(%struct._GimpDrawTool*) #1

declare void @gimp_display_shell_selection_resume(%struct._GimpDisplayShell*) #1

declare void @gimp_display_shell_untransform_viewport(%struct._GimpDisplayShell*, i32*, i32*, i32*, i32*) #1

declare void @gimp_image_remove_guide(%struct._GimpImage*, %struct._GimpGuide*, i32) #1

declare void @gimp_image_move_guide(%struct._GimpImage*, %struct._GimpGuide*, i32, i32) #1

declare %struct._GimpGuide* @gimp_image_add_hguide(%struct._GimpImage*, i32, i32) #1

declare %struct._GimpGuide* @gimp_image_add_vguide(%struct._GimpImage*, i32, i32) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #6

declare void @gimp_image_flush(%struct._GimpImage*) #1

declare void @floating_sel_anchor(%struct._GimpLayer*) #1

declare void @gimp_draw_tool_pause(%struct._GimpDrawTool*) #1

declare void @gimp_display_shell_transform_xy(%struct._GimpDisplayShell*, double, double, i32*, i32*) #1

; Function Attrs: nounwind readnone
declare double @rint(double) #2

declare void @gimp_draw_tool_resume(%struct._GimpDrawTool*) #1

declare void @gimp_tool_push_status(%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) #1

declare i32 @gimp_edit_selection_tool_translate(%struct._GimpTool*, %struct._GdkEventKey*, i32, %struct._GimpDisplay*) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare i32 @gimp_get_toggle_behavior_mask() #1

declare void @gimp_tool_control_set_cursor(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_cursor_modifier(%struct._GimpToolControl*, i32) #1

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_guide(%struct._GimpDrawTool*, i32, i32, i32) #1

declare void @gimp_canvas_item_set_highlight(%struct._GimpCanvasItem*, i32) #1

declare void @gimp_tool_control_set_motion_mode(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_snap_to(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_handle_empty_image(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_set_cursor(%struct._GimpTool*, %struct._GimpDisplay*, i32, i32, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
