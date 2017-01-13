; ModuleID = './app/tools/gimpcagetool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpCageToolClass = type { %struct._GimpDrawToolClass }
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
%struct._GimpCanvasItem = type opaque
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
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
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpDisplayConfig = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GdkEventKey = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32, i8*, i16, i8, i8 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpUIManager = type opaque
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GimpDrawTool = type { %struct._GimpTool, %struct._GimpDisplay*, i32, i32, i64, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GList* }
%struct._GimpCageTool = type { %struct._GimpDrawTool, %struct._GimpCageConfig*, i32, i32, double, double, double, double, double, double, i32, i32, %struct._GeglBuffer*, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._GimpImageMap* }
%struct._GimpCageConfig = type { %struct._GimpImageMapConfig, %struct._GArray*, double, double, i32 }
%struct._GimpImageMapConfig = type { %struct._GimpViewable, i32 }
%struct._GArray = type { i8*, i32 }
%struct._GeglBuffer = type opaque
%struct._GeglNode = type opaque
%struct._GimpImageMap = type opaque
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
%struct._GimpCageOptions = type { %struct._GimpToolOptions, i32, i32 }
%struct._GeglRectangle = type { i32, i32, i32, i32 }
%struct._GimpCanvasGroup = type opaque
%struct._GimpVector2 = type { double, double }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%union._Babl = type opaque
%struct._GeglProcessor = type opaque
%struct._PixelRegion = type opaque
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
%struct._GimpProjection = type { %struct._GimpObject, %struct._GimpProjectable*, %struct._TilePyramid*, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglProcessor*, %struct._GSList*, %struct._GimpProjectionIdleRender, i32, i32, i32 }
%struct._GimpProjectable = type opaque
%struct._TilePyramid = type opaque
%struct._GimpProjectionIdleRender = type { i32, i32, i32, i32, i32, i32, i32, %struct._GSList* }

@gimp_cage_tool_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"GimpCageTool\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"gimp-cage-tool\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Cage Transform\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Cage Transform: Deform a selection with a cage\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"_Cage Transform\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"<shift>G\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"gimp-tool-cage\00", align 1
@gimp_cage_tool_parent_class = internal global i8* null, align 8
@GimpCageTool_private_offset = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"cage-mode\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Press ENTER to commit the transform\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"fill-plain-color\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Gimp-Tools\00", align 1
@__func__.gimp_cage_tool_create_render_node = private unnamed_addr constant [34 x i8] c"gimp_cage_tool_create_render_node\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"ct->render_node == NULL\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"gegl:buffer-source\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"gimp:cage-transform\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"fill_plain_color\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"gegl:map-absolute\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"aux\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"gegl-operation\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"notify::progress\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"progress\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"Computing Cage Coefficients\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"gimp:cage-coef-calc\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"gegl:buffer-sink\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"Cage transform\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@__func__.gimp_cage_tool_is_on_handle = private unnamed_addr constant [28 x i8] c"gimp_cage_tool_is_on_handle\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"GIMP_IS_CAGE_TOOL (ct)\00", align 1
@__func__.gimp_cage_tool_is_on_edge = private unnamed_addr constant [26 x i8] c"gimp_cage_tool_is_on_edge\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_cage_tool_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_cage_tool_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_cage_tool_get_type.g_define_type_id__volatile to i8*))
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
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 288, void (i8*, i8*)* bitcast (void (i8*)* @gimp_cage_tool_class_intern_init to void (i8*, i8*)*), i32 376, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpCageTool*)* @gimp_cage_tool_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_cage_tool_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_cage_tool_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_draw_tool_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_cage_tool_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_cage_tool_parent_class, align 8
  %1 = load i32, i32* @GimpCageTool_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpCageTool_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpCageToolClass*
  call void @gimp_cage_tool_class_init(%struct._GimpCageToolClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cage_tool_init(%struct._GimpCageTool* %self) #3 {
entry:
  %self.addr = alloca %struct._GimpCageTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  store %struct._GimpCageTool* %self, %struct._GimpCageTool** %self.addr, align 8
  %0 = load %struct._GimpCageTool*, %struct._GimpCageTool** %self.addr, align 8
  %1 = bitcast %struct._GimpCageTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 3
  %4 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_set_preserve(%struct._GimpToolControl* %4, i32 0)
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control2 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 3
  %6 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control2, align 8
  call void @gimp_tool_control_set_dirty_mask(%struct._GimpToolControl* %6, i32 841)
  %7 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control3 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %7, i32 0, i32 3
  %8 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control3, align 8
  call void @gimp_tool_control_set_wants_click(%struct._GimpToolControl* %8, i32 1)
  %9 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control4 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %9, i32 0, i32 3
  %10 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control4, align 8
  call void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl* %10, i32 17)
  %call5 = call i64 @gimp_cage_config_get_type() #7
  %call6 = call i8* (i64, i8*, ...) @g_object_new(i64 %call5, i8* null)
  %11 = bitcast i8* %call6 to %struct._GimpCageConfig*
  %12 = load %struct._GimpCageTool*, %struct._GimpCageTool** %self.addr, align 8
  %config = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %12, i32 0, i32 1
  store %struct._GimpCageConfig* %11, %struct._GimpCageConfig** %config, align 8
  %13 = load %struct._GimpCageTool*, %struct._GimpCageTool** %self.addr, align 8
  %hovering_handle = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %13, i32 0, i32 10
  store i32 -1, i32* %hovering_handle, align 4
  %14 = load %struct._GimpCageTool*, %struct._GimpCageTool** %self.addr, align 8
  %tool_state = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %14, i32 0, i32 17
  store i32 0, i32* %tool_state, align 4
  %15 = load %struct._GimpCageTool*, %struct._GimpCageTool** %self.addr, align 8
  %coef = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %15, i32 0, i32 12
  store %struct._GeglBuffer* null, %struct._GeglBuffer** %coef, align 8
  %16 = load %struct._GimpCageTool*, %struct._GimpCageTool** %self.addr, align 8
  %render_node = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %16, i32 0, i32 14
  store %struct._GeglNode* null, %struct._GeglNode** %render_node, align 8
  %17 = load %struct._GimpCageTool*, %struct._GimpCageTool** %self.addr, align 8
  %coef_node = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %17, i32 0, i32 16
  store %struct._GeglNode* null, %struct._GeglNode** %coef_node, align 8
  %18 = load %struct._GimpCageTool*, %struct._GimpCageTool** %self.addr, align 8
  %cage_node = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %18, i32 0, i32 15
  store %struct._GeglNode* null, %struct._GeglNode** %cage_node, align 8
  %19 = load %struct._GimpCageTool*, %struct._GimpCageTool** %self.addr, align 8
  %image_map = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %19, i32 0, i32 18
  store %struct._GimpImageMap* null, %struct._GimpImageMap** %image_map, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_cage_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, i8* %data) #3 {
entry:
  %callback.addr = alloca void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  %call = call i64 @gimp_cage_tool_get_type() #7
  %call1 = call i64 @gimp_cage_options_get_type() #7
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)) #6
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i32 0, i32 0)) #6
  %1 = load i8*, i8** %data.addr, align 8
  call void %0(i64 %call, i64 %call1, %struct._GtkWidget* (%struct._GimpToolOptions*)* @gimp_cage_options_gui, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* %call2, i8* %call3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* %1)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_cage_options_get_type() #2

declare %struct._GtkWidget* @gimp_cage_options_gui(%struct._GimpToolOptions*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_cage_tool_class_init(%struct._GimpCageToolClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpCageToolClass*, align 8
  %tool_class = alloca %struct._GimpToolClass*, align 8
  %draw_tool_class = alloca %struct._GimpDrawToolClass*, align 8
  store %struct._GimpCageToolClass* %klass, %struct._GimpCageToolClass** %klass.addr, align 8
  %0 = load %struct._GimpCageToolClass*, %struct._GimpCageToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpCageToolClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpToolClass*
  store %struct._GimpToolClass* %2, %struct._GimpToolClass** %tool_class, align 8
  %3 = load %struct._GimpCageToolClass*, %struct._GimpCageToolClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpCageToolClass* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_draw_tool_get_type() #7
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpDrawToolClass*
  store %struct._GimpDrawToolClass* %5, %struct._GimpDrawToolClass** %draw_tool_class, align 8
  %6 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %options_notify = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %6, i32 0, i32 15
  store void (%struct._GimpTool*, %struct._GimpToolOptions*, %struct._GParamSpec*)* @gimp_cage_tool_options_notify, void (%struct._GimpTool*, %struct._GimpToolOptions*, %struct._GParamSpec*)** %options_notify, align 8
  %7 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %7, i32 0, i32 5
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_cage_tool_button_press, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_press, align 8
  %8 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_release = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %8, i32 0, i32 6
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_cage_tool_button_release, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_release, align 8
  %9 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %key_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %9, i32 0, i32 8
  store i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)* @gimp_cage_tool_key_press, i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)** %key_press, align 8
  %10 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %motion = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %10, i32 0, i32 7
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_cage_tool_motion, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %motion, align 8
  %11 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %control = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %11, i32 0, i32 4
  store void (%struct._GimpTool*, i32, %struct._GimpDisplay*)* @gimp_cage_tool_control, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)** %control, align 8
  %12 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %12, i32 0, i32 13
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)* @gimp_cage_tool_cursor_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %13 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %oper_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %13, i32 0, i32 12
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_cage_tool_oper_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %oper_update, align 8
  %14 = load %struct._GimpDrawToolClass*, %struct._GimpDrawToolClass** %draw_tool_class, align 8
  %draw = getelementptr inbounds %struct._GimpDrawToolClass, %struct._GimpDrawToolClass* %14, i32 0, i32 1
  store void (%struct._GimpDrawTool*)* @gimp_cage_tool_draw, void (%struct._GimpDrawTool*)** %draw, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_cage_tool_options_notify(%struct._GimpTool* %tool, %struct._GimpToolOptions* %options, %struct._GParamSpec* %pspec) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %options.addr = alloca %struct._GimpToolOptions*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %ct = alloca %struct._GimpCageTool*, align 8
  %mode = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpToolOptions* %options, %struct._GimpToolOptions** %options.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_cage_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCageTool*
  store %struct._GimpCageTool* %2, %struct._GimpCageTool** %ct, align 8
  %3 = load i8*, i8** @gimp_cage_tool_parent_class, align 8
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
  %10 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %10, i32 0, i32 4
  %11 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %11, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %12 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %13 = bitcast %struct._GimpTool* %12 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_draw_tool_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call4)
  %14 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %14)
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %15, i32 0, i32 1
  %16 = load i8*, i8** %name, align 8
  %call6 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0)) #8
  %cmp = icmp eq i32 %call6, 0
  br i1 %cmp, label %if.then.7, label %if.else.30

if.then.7:                                        ; preds = %if.end
  %17 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %options.addr, align 8
  %18 = bitcast %struct._GimpToolOptions* %17 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32* %mode, i8* null)
  %19 = load i32, i32* %mode, align 4
  %cmp8 = icmp eq i32 %19, 1
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.7
  %20 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %20, i32 0, i32 1
  %21 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  call void @gimp_cage_config_reset_displacement(%struct._GimpCageConfig* %21)
  %22 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config10 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %22, i32 0, i32 1
  %23 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config10, align 8
  call void @gimp_cage_config_reverse_cage_if_needed(%struct._GimpCageConfig* %23)
  %24 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %25 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display11 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %25, i32 0, i32 4
  %26 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display11, align 8
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i32 0, i32 0)) #6
  call void (%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) @gimp_tool_push_status(%struct._GimpTool* %24, %struct._GimpDisplay* %26, i8* %call12)
  %27 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %tool_state = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %27, i32 0, i32 17
  store i32 5, i32* %tool_state, align 4
  %28 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %render_node = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %28, i32 0, i32 14
  %29 = load %struct._GeglNode*, %struct._GeglNode** %render_node, align 8
  %tobool13 = icmp ne %struct._GeglNode* %29, null
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.then.9
  %30 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  call void @gimp_cage_tool_create_render_node(%struct._GimpCageTool* %30)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.then.9
  %31 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %dirty_coef = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %31, i32 0, i32 13
  %32 = load i32, i32* %dirty_coef, align 4
  %tobool16 = icmp ne i32 %32, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.15
  %33 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  call void @gimp_cage_tool_compute_coef(%struct._GimpCageTool* %33)
  %34 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  call void @gimp_cage_tool_render_node_update(%struct._GimpCageTool* %34)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.15
  %35 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %image_map = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %35, i32 0, i32 18
  %36 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %tobool19 = icmp ne %struct._GimpImageMap* %36, null
  br i1 %tobool19, label %if.end.24, label %if.then.20

if.then.20:                                       ; preds = %if.end.18
  %37 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display21 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %37, i32 0, i32 4
  %38 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display21, align 8
  %call22 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %38)
  store %struct._GimpImage* %call22, %struct._GimpImage** %image, align 8
  %39 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call23 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %39)
  store %struct._GimpDrawable* %call23, %struct._GimpDrawable** %drawable, align 8
  %40 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %41 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_cage_tool_create_image_map(%struct._GimpCageTool* %40, %struct._GimpDrawable* %41)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.20, %if.end.18
  %42 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  call void @gimp_cage_tool_image_map_update(%struct._GimpCageTool* %42)
  br label %if.end.29

if.else:                                          ; preds = %if.then.7
  %43 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %image_map25 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %43, i32 0, i32 18
  %44 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map25, align 8
  call void @gimp_image_map_clear(%struct._GimpImageMap* %44)
  %45 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %image_map26 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %45, i32 0, i32 18
  %46 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map26, align 8
  %47 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  call void @gimp_cage_tool_image_map_flush(%struct._GimpImageMap* %46, %struct._GimpTool* %47)
  %48 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %49 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display27 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %49, i32 0, i32 4
  %50 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display27, align 8
  call void @gimp_tool_pop_status(%struct._GimpTool* %48, %struct._GimpDisplay* %50)
  %51 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %tool_state28 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %51, i32 0, i32 17
  store i32 1, i32* %tool_state28, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.end.24
  br label %if.end.36

if.else.30:                                       ; preds = %if.end
  %52 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name31 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %52, i32 0, i32 1
  %53 = load i8*, i8** %name31, align 8
  %call32 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0)) #8
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.else.30
  %54 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  call void @gimp_cage_tool_render_node_update(%struct._GimpCageTool* %54)
  %55 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  call void @gimp_cage_tool_image_map_update(%struct._GimpCageTool* %55)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.else.30
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.29
  %56 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %57 = bitcast %struct._GimpTool* %56 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_draw_tool_get_type() #7
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call37)
  %58 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %58)
  br label %return

return:                                           ; preds = %if.end.36, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cage_tool_button_press(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %press_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %press_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %ct = alloca %struct._GimpCageTool*, align 8
  %draw_tool = alloca %struct._GimpDrawTool*, align 8
  %handle = alloca i32, align 4
  %edge = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %press_type, i32* %press_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_cage_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCageTool*
  store %struct._GimpCageTool* %2, %struct._GimpCageTool** %ct, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_draw_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDrawTool*
  store %struct._GimpDrawTool* %5, %struct._GimpDrawTool** %draw_tool, align 8
  store i32 -1, i32* %handle, align 4
  store i32 -1, i32* %edge, align 4
  %6 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %7 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display4 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %7, i32 0, i32 4
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display4, align 8
  %cmp = icmp ne %struct._GimpDisplay* %6, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %10 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_cage_tool_start(%struct._GimpCageTool* %9, %struct._GimpDisplay* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %11, i32 0, i32 3
  %12 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_activate(%struct._GimpToolControl* %12)
  %13 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %13, i32 0, i32 1
  %14 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  %tobool = icmp ne %struct._GimpCageConfig* %14, null
  br i1 %tobool, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %if.end
  %15 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %16 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %17 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %18 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %18, i32 0, i32 0
  %19 = load double, double* %x, align 8
  %20 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %20, i32 0, i32 1
  %21 = load double, double* %y, align 8
  %call6 = call i32 @gimp_cage_tool_is_on_handle(%struct._GimpCageTool* %15, %struct._GimpDrawTool* %16, %struct._GimpDisplay* %17, double %19, double %21, i32 13)
  store i32 %call6, i32* %handle, align 4
  %22 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %23 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x7 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %23, i32 0, i32 0
  %24 = load double, double* %x7, align 8
  %25 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y8 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %25, i32 0, i32 1
  %26 = load double, double* %y8, align 8
  %call9 = call i32 @gimp_cage_tool_is_on_edge(%struct._GimpCageTool* %22, double %24, double %26, i32 13)
  store i32 %call9, i32* %edge, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.5, %if.end
  %27 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x11 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %27, i32 0, i32 0
  %28 = load double, double* %x11, align 8
  %29 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %movement_start_x = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %29, i32 0, i32 6
  store double %28, double* %movement_start_x, align 8
  %30 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y12 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %30, i32 0, i32 1
  %31 = load double, double* %y12, align 8
  %32 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %movement_start_y = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %32, i32 0, i32 7
  store double %31, double* %movement_start_y, align 8
  %33 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %tool_state = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %33, i32 0, i32 17
  %34 = load i32, i32* %tool_state, align 4
  switch i32 %34, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.20
    i32 5, label %sw.bb.79
  ]

sw.bb:                                            ; preds = %if.end.10
  %35 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config13 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %35, i32 0, i32 1
  %36 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config13, align 8
  %37 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x14 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %37, i32 0, i32 0
  %38 = load double, double* %x14, align 8
  %39 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %offset_x = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %39, i32 0, i32 2
  %40 = load i32, i32* %offset_x, align 4
  %conv = sitofp i32 %40 to double
  %sub = fsub double %38, %conv
  %41 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y15 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %41, i32 0, i32 1
  %42 = load double, double* %y15, align 8
  %43 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %offset_y = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %43, i32 0, i32 3
  %44 = load i32, i32* %offset_y, align 4
  %conv16 = sitofp i32 %44 to double
  %sub17 = fsub double %42, %conv16
  call void @gimp_cage_config_add_cage_point(%struct._GimpCageConfig* %36, double %sub, double %sub17)
  %45 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config18 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %45, i32 0, i32 1
  %46 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config18, align 8
  call void @gimp_cage_config_select_point(%struct._GimpCageConfig* %46, i32 0)
  %47 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %tool_state19 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %47, i32 0, i32 17
  store i32 2, i32* %tool_state19, align 4
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.end.10
  %48 = load i32, i32* %handle, align 4
  %cmp21 = icmp eq i32 %48, -1
  br i1 %cmp21, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.bb.20
  %49 = load i32, i32* %edge, align 4
  %cmp23 = icmp sle i32 %49, 0
  br i1 %cmp23, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %land.lhs.true
  %50 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config26 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %50, i32 0, i32 1
  %51 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config26, align 8
  %52 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x27 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %52, i32 0, i32 0
  %53 = load double, double* %x27, align 8
  %54 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %offset_x28 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %54, i32 0, i32 2
  %55 = load i32, i32* %offset_x28, align 4
  %conv29 = sitofp i32 %55 to double
  %sub30 = fsub double %53, %conv29
  %56 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y31 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %56, i32 0, i32 1
  %57 = load double, double* %y31, align 8
  %58 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %offset_y32 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %58, i32 0, i32 3
  %59 = load i32, i32* %offset_y32, align 4
  %conv33 = sitofp i32 %59 to double
  %sub34 = fsub double %57, %conv33
  call void @gimp_cage_config_add_cage_point(%struct._GimpCageConfig* %51, double %sub30, double %sub34)
  %60 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config35 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %60, i32 0, i32 1
  %61 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config35, align 8
  %62 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config36 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %62, i32 0, i32 1
  %63 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config36, align 8
  %call37 = call i32 @gimp_cage_config_get_n_points(%struct._GimpCageConfig* %63)
  %sub38 = sub i32 %call37, 1
  call void @gimp_cage_config_select_point(%struct._GimpCageConfig* %61, i32 %sub38)
  %64 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %tool_state39 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %64, i32 0, i32 17
  store i32 2, i32* %tool_state39, align 4
  br label %if.end.78

if.else:                                          ; preds = %land.lhs.true, %sw.bb.20
  %65 = load i32, i32* %handle, align 4
  %cmp40 = icmp eq i32 %65, 0
  br i1 %cmp40, label %land.lhs.true.42, label %if.else.50

land.lhs.true.42:                                 ; preds = %if.else
  %66 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config43 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %66, i32 0, i32 1
  %67 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config43, align 8
  %call44 = call i32 @gimp_cage_config_get_n_points(%struct._GimpCageConfig* %67)
  %cmp45 = icmp ugt i32 %call44, 2
  br i1 %cmp45, label %if.then.47, label %if.else.50

if.then.47:                                       ; preds = %land.lhs.true.42
  %68 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config48 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %68, i32 0, i32 1
  %69 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config48, align 8
  call void @gimp_cage_config_select_point(%struct._GimpCageConfig* %69, i32 0)
  %70 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %tool_state49 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %70, i32 0, i32 17
  store i32 4, i32* %tool_state49, align 4
  br label %if.end.77

if.else.50:                                       ; preds = %land.lhs.true.42, %if.else
  %71 = load i32, i32* %handle, align 4
  %cmp51 = icmp sge i32 %71, 0
  br i1 %cmp51, label %if.then.53, label %if.else.66

if.then.53:                                       ; preds = %if.else.50
  %72 = load i32, i32* %state.addr, align 4
  %and = and i32 %72, 1
  %tobool54 = icmp ne i32 %and, 0
  br i1 %tobool54, label %if.then.55, label %if.else.57

if.then.55:                                       ; preds = %if.then.53
  %73 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config56 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %73, i32 0, i32 1
  %74 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config56, align 8
  %75 = load i32, i32* %handle, align 4
  call void @gimp_cage_config_toggle_point_selection(%struct._GimpCageConfig* %74, i32 %75)
  br label %if.end.64

if.else.57:                                       ; preds = %if.then.53
  %76 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config58 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %76, i32 0, i32 1
  %77 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config58, align 8
  %78 = load i32, i32* %handle, align 4
  %call59 = call i32 @gimp_cage_config_point_is_selected(%struct._GimpCageConfig* %77, i32 %78)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.end.63, label %if.then.61

if.then.61:                                       ; preds = %if.else.57
  %79 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config62 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %79, i32 0, i32 1
  %80 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config62, align 8
  %81 = load i32, i32* %handle, align 4
  call void @gimp_cage_config_select_point(%struct._GimpCageConfig* %80, i32 %81)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %if.else.57
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.55
  %82 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %tool_state65 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %82, i32 0, i32 17
  store i32 2, i32* %tool_state65, align 4
  br label %if.end.76

if.else.66:                                       ; preds = %if.else.50
  %83 = load i32, i32* %edge, align 4
  %cmp67 = icmp sgt i32 %83, 0
  br i1 %cmp67, label %if.then.69, label %if.end.75

if.then.69:                                       ; preds = %if.else.66
  %84 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config70 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %84, i32 0, i32 1
  %85 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config70, align 8
  %86 = load i32, i32* %edge, align 4
  %87 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x71 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %87, i32 0, i32 0
  %88 = load double, double* %x71, align 8
  %89 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y72 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %89, i32 0, i32 1
  %90 = load double, double* %y72, align 8
  call void @gimp_cage_config_insert_cage_point(%struct._GimpCageConfig* %85, i32 %86, double %88, double %90)
  %91 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config73 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %91, i32 0, i32 1
  %92 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config73, align 8
  %93 = load i32, i32* %edge, align 4
  call void @gimp_cage_config_select_point(%struct._GimpCageConfig* %92, i32 %93)
  %94 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %tool_state74 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %94, i32 0, i32 17
  store i32 2, i32* %tool_state74, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.69, %if.else.66
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.end.64
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then.47
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.25
  br label %sw.epilog

sw.bb.79:                                         ; preds = %if.end.10
  %95 = load i32, i32* %handle, align 4
  %cmp80 = icmp eq i32 %95, -1
  br i1 %cmp80, label %if.then.82, label %if.end.86

if.then.82:                                       ; preds = %sw.bb.79
  %96 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x83 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %96, i32 0, i32 0
  %97 = load double, double* %x83, align 8
  %98 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %selection_start_x = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %98, i32 0, i32 8
  store double %97, double* %selection_start_x, align 8
  %99 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y84 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %99, i32 0, i32 1
  %100 = load double, double* %y84, align 8
  %101 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %selection_start_y = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %101, i32 0, i32 9
  store double %100, double* %selection_start_y, align 8
  %102 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %tool_state85 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %102, i32 0, i32 17
  store i32 7, i32* %tool_state85, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.82, %sw.bb.79
  %103 = load i32, i32* %handle, align 4
  %cmp87 = icmp sge i32 %103, 0
  br i1 %cmp87, label %if.then.89, label %if.end.103

if.then.89:                                       ; preds = %if.end.86
  %104 = load i32, i32* %state.addr, align 4
  %and90 = and i32 %104, 1
  %tobool91 = icmp ne i32 %and90, 0
  br i1 %tobool91, label %if.then.92, label %if.else.94

if.then.92:                                       ; preds = %if.then.89
  %105 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config93 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %105, i32 0, i32 1
  %106 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config93, align 8
  %107 = load i32, i32* %handle, align 4
  call void @gimp_cage_config_toggle_point_selection(%struct._GimpCageConfig* %106, i32 %107)
  br label %if.end.101

if.else.94:                                       ; preds = %if.then.89
  %108 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config95 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %108, i32 0, i32 1
  %109 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config95, align 8
  %110 = load i32, i32* %handle, align 4
  %call96 = call i32 @gimp_cage_config_point_is_selected(%struct._GimpCageConfig* %109, i32 %110)
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %if.end.100, label %if.then.98

if.then.98:                                       ; preds = %if.else.94
  %111 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config99 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %111, i32 0, i32 1
  %112 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config99, align 8
  %113 = load i32, i32* %handle, align 4
  call void @gimp_cage_config_select_point(%struct._GimpCageConfig* %112, i32 %113)
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.98, %if.else.94
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.then.92
  %114 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %tool_state102 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %114, i32 0, i32 17
  store i32 6, i32* %tool_state102, align 4
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.101, %if.end.86
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.10, %if.end.103, %if.end.78, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cage_tool_button_release(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %release_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %release_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %ct = alloca %struct._GimpCageTool*, align 8
  %options = alloca %struct._GimpCageOptions*, align 8
  %area = alloca %struct._GeglRectangle, align 4
  %area66 = alloca %struct._GeglRectangle, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %release_type, i32* %release_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_cage_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCageTool*
  store %struct._GimpCageTool* %2, %struct._GimpCageTool** %ct, align 8
  %3 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %4 = bitcast %struct._GimpCageTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_cage_options_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpCageOptions*
  store %struct._GimpCageOptions* %7, %struct._GimpCageOptions** %options, align 8
  %8 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %9 = bitcast %struct._GimpCageTool* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_draw_tool_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %10)
  %11 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %11, i32 0, i32 3
  %12 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_halt(%struct._GimpToolControl* %12)
  %13 = load i32, i32* %release_type.addr, align 4
  %cmp = icmp eq i32 %13, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %14 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %tool_state = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %14, i32 0, i32 17
  %15 = load i32, i32* %tool_state, align 4
  switch i32 %15, label %sw.epilog [
    i32 4, label %sw.bb
    i32 2, label %sw.bb.10
    i32 3, label %sw.bb.12
    i32 6, label %sw.bb.14
    i32 7, label %sw.bb.16
  ]

sw.bb:                                            ; preds = %if.then
  %16 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %tool_state9 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %16, i32 0, i32 17
  store i32 1, i32* %tool_state9, align 4
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.then
  %17 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %17, i32 0, i32 1
  %18 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  call void @gimp_cage_config_remove_last_cage_point(%struct._GimpCageConfig* %18)
  %19 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %tool_state11 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %19, i32 0, i32 17
  store i32 1, i32* %tool_state11, align 4
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.then
  %20 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %tool_state13 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %20, i32 0, i32 17
  store i32 1, i32* %tool_state13, align 4
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.then
  %21 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  call void @gimp_cage_tool_image_map_update(%struct._GimpCageTool* %21)
  %22 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %tool_state15 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %22, i32 0, i32 17
  store i32 5, i32* %tool_state15, align 4
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.then
  %23 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %tool_state17 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %23, i32 0, i32 17
  store i32 5, i32* %tool_state17, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb.16, %sw.bb.14, %sw.bb.12, %sw.bb.10, %sw.bb
  %24 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config18 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %24, i32 0, i32 1
  %25 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config18, align 8
  call void @gimp_cage_config_reset_displacement(%struct._GimpCageConfig* %25)
  br label %if.end.118

if.else:                                          ; preds = %entry
  %26 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %tool_state19 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %26, i32 0, i32 17
  %27 = load i32, i32* %tool_state19, align 4
  switch i32 %27, label %sw.epilog.117 [
    i32 4, label %sw.bb.20
    i32 2, label %sw.bb.24
    i32 3, label %sw.bb.28
    i32 6, label %sw.bb.62
    i32 7, label %sw.bb.65
  ]

sw.bb.20:                                         ; preds = %if.else
  %28 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %dirty_coef = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %28, i32 0, i32 13
  store i32 1, i32* %dirty_coef, align 4
  %29 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config21 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %29, i32 0, i32 1
  %30 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config21, align 8
  call void @gimp_cage_config_commit_displacement(%struct._GimpCageConfig* %30)
  %31 = load i32, i32* %release_type.addr, align 4
  %cmp22 = icmp eq i32 %31, 2
  br i1 %cmp22, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %sw.bb.20
  %32 = load %struct._GimpCageOptions*, %struct._GimpCageOptions** %options, align 8
  %33 = bitcast %struct._GimpCageOptions* %32 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32 1, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then.23, %sw.bb.20
  br label %sw.epilog.117

sw.bb.24:                                         ; preds = %if.else
  %34 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %dirty_coef25 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %34, i32 0, i32 13
  store i32 1, i32* %dirty_coef25, align 4
  %35 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %tool_state26 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %35, i32 0, i32 17
  store i32 1, i32* %tool_state26, align 4
  %36 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config27 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %36, i32 0, i32 1
  %37 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config27, align 8
  call void @gimp_cage_config_commit_displacement(%struct._GimpCageConfig* %37)
  br label %sw.epilog.117

sw.bb.28:                                         ; preds = %if.else
  %x = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %area, i32 0, i32 0
  %38 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %selection_start_x = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %38, i32 0, i32 8
  %39 = load double, double* %selection_start_x, align 8
  %40 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x29 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %40, i32 0, i32 0
  %41 = load double, double* %x29, align 8
  %cmp30 = fcmp olt double %39, %41
  br i1 %cmp30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.28
  %42 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %selection_start_x31 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %42, i32 0, i32 8
  %43 = load double, double* %selection_start_x31, align 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.28
  %44 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x32 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %44, i32 0, i32 0
  %45 = load double, double* %x32, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %43, %cond.true ], [ %45, %cond.false ]
  %46 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %offset_x = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %46, i32 0, i32 2
  %47 = load i32, i32* %offset_x, align 4
  %conv = sitofp i32 %47 to double
  %sub = fsub double %cond, %conv
  %conv33 = fptosi double %sub to i32
  store i32 %conv33, i32* %x, align 4
  %y = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %area, i32 0, i32 1
  %48 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %selection_start_y = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %48, i32 0, i32 9
  %49 = load double, double* %selection_start_y, align 8
  %50 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y34 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %50, i32 0, i32 1
  %51 = load double, double* %y34, align 8
  %cmp35 = fcmp olt double %49, %51
  br i1 %cmp35, label %cond.true.37, label %cond.false.39

cond.true.37:                                     ; preds = %cond.end
  %52 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %selection_start_y38 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %52, i32 0, i32 9
  %53 = load double, double* %selection_start_y38, align 8
  br label %cond.end.41

cond.false.39:                                    ; preds = %cond.end
  %54 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y40 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %54, i32 0, i32 1
  %55 = load double, double* %y40, align 8
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.39, %cond.true.37
  %cond42 = phi double [ %53, %cond.true.37 ], [ %55, %cond.false.39 ]
  %56 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %offset_y = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %56, i32 0, i32 3
  %57 = load i32, i32* %offset_y, align 4
  %conv43 = sitofp i32 %57 to double
  %sub44 = fsub double %cond42, %conv43
  %conv45 = fptosi double %sub44 to i32
  store i32 %conv45, i32* %y, align 4
  %width = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %area, i32 0, i32 2
  %58 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %selection_start_x46 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %58, i32 0, i32 8
  %59 = load double, double* %selection_start_x46, align 8
  %60 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x47 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %60, i32 0, i32 0
  %61 = load double, double* %x47, align 8
  %sub48 = fsub double %59, %61
  %conv49 = fptosi double %sub48 to i32
  %call50 = call i32 @abs(i32 %conv49) #7
  store i32 %call50, i32* %width, align 4
  %height = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %area, i32 0, i32 3
  %62 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %selection_start_y51 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %62, i32 0, i32 9
  %63 = load double, double* %selection_start_y51, align 8
  %64 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y52 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %64, i32 0, i32 1
  %65 = load double, double* %y52, align 8
  %sub53 = fsub double %63, %65
  %conv54 = fptosi double %sub53 to i32
  %call55 = call i32 @abs(i32 %conv54) #7
  store i32 %call55, i32* %height, align 4
  %66 = load i32, i32* %state.addr, align 4
  %and = and i32 %66, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.56, label %if.else.58

if.then.56:                                       ; preds = %cond.end.41
  %67 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config57 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %67, i32 0, i32 1
  %68 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config57, align 8
  %69 = bitcast %struct._GeglRectangle* %area to { i64, i64 }*
  %70 = getelementptr { i64, i64 }, { i64, i64 }* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 1
  %72 = getelementptr { i64, i64 }, { i64, i64 }* %69, i32 0, i32 1
  %73 = load i64, i64* %72, align 1
  call void @gimp_cage_config_select_add_area(%struct._GimpCageConfig* %68, i32 0, i64 %71, i64 %73)
  br label %if.end.60

if.else.58:                                       ; preds = %cond.end.41
  %74 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config59 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %74, i32 0, i32 1
  %75 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config59, align 8
  %76 = bitcast %struct._GeglRectangle* %area to { i64, i64 }*
  %77 = getelementptr { i64, i64 }, { i64, i64 }* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 1
  %79 = getelementptr { i64, i64 }, { i64, i64 }* %76, i32 0, i32 1
  %80 = load i64, i64* %79, align 1
  call void @gimp_cage_config_select_area(%struct._GimpCageConfig* %75, i32 0, i64 %78, i64 %80)
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.58, %if.then.56
  %81 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %tool_state61 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %81, i32 0, i32 17
  store i32 1, i32* %tool_state61, align 4
  br label %sw.epilog.117

sw.bb.62:                                         ; preds = %if.else
  %82 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %tool_state63 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %82, i32 0, i32 17
  store i32 5, i32* %tool_state63, align 4
  %83 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config64 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %83, i32 0, i32 1
  %84 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config64, align 8
  call void @gimp_cage_config_commit_displacement(%struct._GimpCageConfig* %84)
  %85 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  call void @gimp_cage_tool_image_map_update(%struct._GimpCageTool* %85)
  br label %sw.epilog.117

sw.bb.65:                                         ; preds = %if.else
  %x67 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %area66, i32 0, i32 0
  %86 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %selection_start_x68 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %86, i32 0, i32 8
  %87 = load double, double* %selection_start_x68, align 8
  %88 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x69 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %88, i32 0, i32 0
  %89 = load double, double* %x69, align 8
  %cmp70 = fcmp olt double %87, %89
  br i1 %cmp70, label %cond.true.72, label %cond.false.74

cond.true.72:                                     ; preds = %sw.bb.65
  %90 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %selection_start_x73 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %90, i32 0, i32 8
  %91 = load double, double* %selection_start_x73, align 8
  br label %cond.end.76

cond.false.74:                                    ; preds = %sw.bb.65
  %92 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x75 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %92, i32 0, i32 0
  %93 = load double, double* %x75, align 8
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.false.74, %cond.true.72
  %cond77 = phi double [ %91, %cond.true.72 ], [ %93, %cond.false.74 ]
  %94 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %offset_x78 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %94, i32 0, i32 2
  %95 = load i32, i32* %offset_x78, align 4
  %conv79 = sitofp i32 %95 to double
  %sub80 = fsub double %cond77, %conv79
  %conv81 = fptosi double %sub80 to i32
  store i32 %conv81, i32* %x67, align 4
  %y82 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %area66, i32 0, i32 1
  %96 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %selection_start_y83 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %96, i32 0, i32 9
  %97 = load double, double* %selection_start_y83, align 8
  %98 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y84 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %98, i32 0, i32 1
  %99 = load double, double* %y84, align 8
  %cmp85 = fcmp olt double %97, %99
  br i1 %cmp85, label %cond.true.87, label %cond.false.89

cond.true.87:                                     ; preds = %cond.end.76
  %100 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %selection_start_y88 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %100, i32 0, i32 9
  %101 = load double, double* %selection_start_y88, align 8
  br label %cond.end.91

cond.false.89:                                    ; preds = %cond.end.76
  %102 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y90 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %102, i32 0, i32 1
  %103 = load double, double* %y90, align 8
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.89, %cond.true.87
  %cond92 = phi double [ %101, %cond.true.87 ], [ %103, %cond.false.89 ]
  %104 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %offset_y93 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %104, i32 0, i32 3
  %105 = load i32, i32* %offset_y93, align 4
  %conv94 = sitofp i32 %105 to double
  %sub95 = fsub double %cond92, %conv94
  %conv96 = fptosi double %sub95 to i32
  store i32 %conv96, i32* %y82, align 4
  %width97 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %area66, i32 0, i32 2
  %106 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %selection_start_x98 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %106, i32 0, i32 8
  %107 = load double, double* %selection_start_x98, align 8
  %108 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x99 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %108, i32 0, i32 0
  %109 = load double, double* %x99, align 8
  %sub100 = fsub double %107, %109
  %conv101 = fptosi double %sub100 to i32
  %call102 = call i32 @abs(i32 %conv101) #7
  store i32 %call102, i32* %width97, align 4
  %height103 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %area66, i32 0, i32 3
  %110 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %selection_start_y104 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %110, i32 0, i32 9
  %111 = load double, double* %selection_start_y104, align 8
  %112 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y105 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %112, i32 0, i32 1
  %113 = load double, double* %y105, align 8
  %sub106 = fsub double %111, %113
  %conv107 = fptosi double %sub106 to i32
  %call108 = call i32 @abs(i32 %conv107) #7
  store i32 %call108, i32* %height103, align 4
  %114 = load i32, i32* %state.addr, align 4
  %and109 = and i32 %114, 1
  %tobool110 = icmp ne i32 %and109, 0
  br i1 %tobool110, label %if.then.111, label %if.else.113

if.then.111:                                      ; preds = %cond.end.91
  %115 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config112 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %115, i32 0, i32 1
  %116 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config112, align 8
  %117 = bitcast %struct._GeglRectangle* %area66 to { i64, i64 }*
  %118 = getelementptr { i64, i64 }, { i64, i64 }* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 1
  %120 = getelementptr { i64, i64 }, { i64, i64 }* %117, i32 0, i32 1
  %121 = load i64, i64* %120, align 1
  call void @gimp_cage_config_select_add_area(%struct._GimpCageConfig* %116, i32 1, i64 %119, i64 %121)
  br label %if.end.115

if.else.113:                                      ; preds = %cond.end.91
  %122 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config114 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %122, i32 0, i32 1
  %123 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config114, align 8
  %124 = bitcast %struct._GeglRectangle* %area66 to { i64, i64 }*
  %125 = getelementptr { i64, i64 }, { i64, i64 }* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 1
  %127 = getelementptr { i64, i64 }, { i64, i64 }* %124, i32 0, i32 1
  %128 = load i64, i64* %127, align 1
  call void @gimp_cage_config_select_area(%struct._GimpCageConfig* %123, i32 1, i64 %126, i64 %128)
  br label %if.end.115

if.end.115:                                       ; preds = %if.else.113, %if.then.111
  %129 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %tool_state116 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %129, i32 0, i32 17
  store i32 5, i32* %tool_state116, align 4
  br label %sw.epilog.117

sw.epilog.117:                                    ; preds = %if.else, %if.end.115, %sw.bb.62, %if.end.60, %sw.bb.24, %if.end
  br label %if.end.118

if.end.118:                                       ; preds = %sw.epilog.117, %sw.epilog
  %130 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %131 = bitcast %struct._GimpTool* %130 to %struct._GTypeInstance*
  %call119 = call i64 @gimp_draw_tool_get_type() #7
  %call120 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %131, i64 %call119)
  %132 = bitcast %struct._GTypeInstance* %call120 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %132)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_cage_tool_key_press(%struct._GimpTool* %tool, %struct._GdkEventKey* %kevent, %struct._GimpDisplay* %display) #3 {
entry:
  %retval = alloca i32, align 4
  %tool.addr = alloca %struct._GimpTool*, align 8
  %kevent.addr = alloca %struct._GdkEventKey*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %ct = alloca %struct._GimpCageTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GdkEventKey* %kevent, %struct._GdkEventKey** %kevent.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_cage_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCageTool*
  store %struct._GimpCageTool* %2, %struct._GimpCageTool** %ct, align 8
  %3 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %3, i32 0, i32 1
  %4 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  %tobool = icmp ne %struct._GimpCageConfig* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %keyval = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %5, i32 0, i32 5
  %6 = load i32, i32* %keyval, align 4
  switch i32 %6, label %sw.default [
    i32 65288, label %sw.bb
    i32 65293, label %sw.bb.20
    i32 65421, label %sw.bb.20
    i32 65076, label %sw.bb.20
    i32 65307, label %sw.bb.38
  ]

sw.bb:                                            ; preds = %if.end
  %7 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %tool_state = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %7, i32 0, i32 17
  %8 = load i32, i32* %tool_state, align 4
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %sw.bb
  %9 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config3 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %9, i32 0, i32 1
  %10 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config3, align 8
  %call4 = call i32 @gimp_cage_config_get_n_points(%struct._GimpCageConfig* %10)
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.2
  %11 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  call void @gimp_cage_tool_remove_last_handle(%struct._GimpCageTool* %11)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.then.2
  br label %if.end.19

if.else:                                          ; preds = %sw.bb
  %12 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %tool_state8 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %12, i32 0, i32 17
  %13 = load i32, i32* %tool_state8, align 4
  %cmp9 = icmp eq i32 %13, 5
  br i1 %cmp9, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %if.else
  %14 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config11 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %14, i32 0, i32 1
  %15 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config11, align 8
  call void @gimp_cage_config_remove_selected_points(%struct._GimpCageConfig* %15)
  %16 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config12 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %16, i32 0, i32 1
  %17 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config12, align 8
  %call13 = call i32 @gimp_cage_config_get_n_points(%struct._GimpCageConfig* %17)
  %cmp14 = icmp ule i32 %call13, 2
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.then.10
  %18 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %tool_state16 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %18, i32 0, i32 17
  store i32 1, i32* %tool_state16, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.then.10
  %19 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  call void @gimp_cage_tool_compute_coef(%struct._GimpCageTool* %19)
  %20 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  call void @gimp_cage_tool_render_node_update(%struct._GimpCageTool* %20)
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end.7
  store i32 1, i32* %retval
  br label %return

sw.bb.20:                                         ; preds = %if.end, %if.end, %if.end
  %21 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %call21 = call i32 @gimp_cage_tool_is_complete(%struct._GimpCageTool* %21)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.else.28, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb.20
  %22 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config23 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %22, i32 0, i32 1
  %23 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config23, align 8
  %call24 = call i32 @gimp_cage_config_get_n_points(%struct._GimpCageConfig* %23)
  %cmp25 = icmp ugt i32 %call24, 2
  br i1 %cmp25, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %land.lhs.true
  %24 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %call27 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %24)
  %25 = bitcast %struct._GimpToolOptions* %call27 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32 1, i8* null)
  br label %if.end.37

if.else.28:                                       ; preds = %land.lhs.true, %sw.bb.20
  %26 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %tool_state29 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %26, i32 0, i32 17
  %27 = load i32, i32* %tool_state29, align 4
  %cmp30 = icmp eq i32 %27, 5
  br i1 %cmp30, label %if.then.31, label %if.end.36

if.then.31:                                       ; preds = %if.else.28
  %28 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %28, i32 0, i32 3
  %29 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_push_preserve(%struct._GimpToolControl* %29, i32 1)
  %30 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %image_map = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %30, i32 0, i32 18
  %31 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  call void @gimp_image_map_commit(%struct._GimpImageMap* %31)
  %32 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %image_map32 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %32, i32 0, i32 18
  %33 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map32, align 8
  %34 = bitcast %struct._GimpImageMap* %33 to i8*
  call void @g_object_unref(i8* %34)
  %35 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %image_map33 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %35, i32 0, i32 18
  store %struct._GimpImageMap* null, %struct._GimpImageMap** %image_map33, align 8
  %36 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control34 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %36, i32 0, i32 3
  %37 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control34, align 8
  call void @gimp_tool_control_pop_preserve(%struct._GimpToolControl* %37)
  %38 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call35 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %38)
  call void @gimp_image_flush(%struct._GimpImage* %call35)
  %39 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %40 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_control(%struct._GimpTool* %39, i32 2, %struct._GimpDisplay* %40)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.31, %if.else.28
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.26
  store i32 1, i32* %retval
  br label %return

sw.bb.38:                                         ; preds = %if.end
  %41 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %42 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_control(%struct._GimpTool* %41, i32 2, %struct._GimpDisplay* %42)
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.38, %if.end.37, %if.end.19, %if.then
  %43 = load i32, i32* %retval
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cage_tool_motion(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %ct = alloca %struct._GimpCageTool*, align 8
  %options = alloca %struct._GimpCageOptions*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_cage_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCageTool*
  store %struct._GimpCageTool* %2, %struct._GimpCageTool** %ct, align 8
  %3 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %4 = bitcast %struct._GimpCageTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_cage_options_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpCageOptions*
  store %struct._GimpCageOptions* %7, %struct._GimpCageOptions** %options, align 8
  %8 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %9 = bitcast %struct._GimpTool* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_draw_tool_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %10)
  %11 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %11, i32 0, i32 0
  %12 = load double, double* %x, align 8
  %13 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %cursor_x = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %13, i32 0, i32 4
  store double %12, double* %cursor_x, align 8
  %14 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %14, i32 0, i32 1
  %15 = load double, double* %y, align 8
  %16 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %cursor_y = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %16, i32 0, i32 5
  store double %15, double* %cursor_y, align 8
  %17 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %tool_state = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %17, i32 0, i32 17
  %18 = load i32, i32* %tool_state, align 4
  switch i32 %18, label %sw.epilog [
    i32 2, label %sw.bb
    i32 4, label %sw.bb
    i32 6, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  %19 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %19, i32 0, i32 1
  %20 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  %21 = load %struct._GimpCageOptions*, %struct._GimpCageOptions** %options, align 8
  %cage_mode = getelementptr inbounds %struct._GimpCageOptions, %struct._GimpCageOptions* %21, i32 0, i32 1
  %22 = load i32, i32* %cage_mode, align 4
  %23 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %cursor_x9 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %23, i32 0, i32 4
  %24 = load double, double* %cursor_x9, align 8
  %25 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %movement_start_x = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %25, i32 0, i32 6
  %26 = load double, double* %movement_start_x, align 8
  %sub = fsub double %24, %26
  %27 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %cursor_y10 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %27, i32 0, i32 5
  %28 = load double, double* %cursor_y10, align 8
  %29 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %movement_start_y = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %29, i32 0, i32 7
  %30 = load double, double* %movement_start_y, align 8
  %sub11 = fsub double %28, %30
  call void @gimp_cage_config_add_displacement(%struct._GimpCageConfig* %20, i32 %22, double %sub, double %sub11)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb
  %31 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %32 = bitcast %struct._GimpTool* %31 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_draw_tool_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call12)
  %33 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %33)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cage_tool_control(%struct._GimpTool* %tool, i32 %action, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %action.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %ct = alloca %struct._GimpCageTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %action, i32* %action.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_cage_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCageTool*
  store %struct._GimpCageTool* %2, %struct._GimpCageTool** %ct, align 8
  %3 = load i32, i32* %action.addr, align 4
  switch i32 %3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry, %entry
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %4 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %4, i32 0, i32 1
  %5 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  %tobool = icmp ne %struct._GimpCageConfig* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.2
  %6 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config3 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %6, i32 0, i32 1
  %7 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config3, align 8
  %8 = bitcast %struct._GimpCageConfig* %7 to i8*
  call void @g_object_unref(i8* %8)
  %9 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config4 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %9, i32 0, i32 1
  store %struct._GimpCageConfig* null, %struct._GimpCageConfig** %config4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.2
  %10 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %coef = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %10, i32 0, i32 12
  %11 = load %struct._GeglBuffer*, %struct._GeglBuffer** %coef, align 8
  %tobool5 = icmp ne %struct._GeglBuffer* %11, null
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end
  %12 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %coef7 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %12, i32 0, i32 12
  %13 = load %struct._GeglBuffer*, %struct._GeglBuffer** %coef7, align 8
  %14 = bitcast %struct._GeglBuffer* %13 to i8*
  call void @g_object_unref(i8* %14)
  %15 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %coef8 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %15, i32 0, i32 12
  store %struct._GeglBuffer* null, %struct._GeglBuffer** %coef8, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end
  %16 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %render_node = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %16, i32 0, i32 14
  %17 = load %struct._GeglNode*, %struct._GeglNode** %render_node, align 8
  %tobool10 = icmp ne %struct._GeglNode* %17, null
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.9
  %18 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %render_node12 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %18, i32 0, i32 14
  %19 = load %struct._GeglNode*, %struct._GeglNode** %render_node12, align 8
  %20 = bitcast %struct._GeglNode* %19 to i8*
  call void @g_object_unref(i8* %20)
  %21 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %render_node13 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %21, i32 0, i32 14
  store %struct._GeglNode* null, %struct._GeglNode** %render_node13, align 8
  %22 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %coef_node = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %22, i32 0, i32 16
  store %struct._GeglNode* null, %struct._GeglNode** %coef_node, align 8
  %23 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %cage_node = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %23, i32 0, i32 15
  store %struct._GeglNode* null, %struct._GeglNode** %cage_node, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.9
  %24 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %image_map = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %24, i32 0, i32 18
  %25 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %tobool15 = icmp ne %struct._GimpImageMap* %25, null
  br i1 %tobool15, label %if.then.16, label %if.end.23

if.then.16:                                       ; preds = %if.end.14
  %26 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %26, i32 0, i32 3
  %27 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_push_preserve(%struct._GimpToolControl* %27, i32 1)
  %28 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %image_map17 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %28, i32 0, i32 18
  %29 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map17, align 8
  call void @gimp_image_map_abort(%struct._GimpImageMap* %29)
  %30 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %image_map18 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %30, i32 0, i32 18
  %31 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map18, align 8
  %32 = bitcast %struct._GimpImageMap* %31 to i8*
  call void @g_object_unref(i8* %32)
  %33 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %image_map19 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %33, i32 0, i32 18
  store %struct._GimpImageMap* null, %struct._GimpImageMap** %image_map19, align 8
  %34 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control20 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %34, i32 0, i32 3
  %35 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control20, align 8
  call void @gimp_tool_control_pop_preserve(%struct._GimpToolControl* %35)
  %36 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display21 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %36, i32 0, i32 4
  %37 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display21, align 8
  %call22 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %37)
  call void @gimp_image_flush(%struct._GimpImage* %call22)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.16, %if.end.14
  %38 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display24 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %38, i32 0, i32 4
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %display24, align 8
  %39 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %tool_state = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %39, i32 0, i32 17
  store i32 0, i32* %tool_state, align 4
  %40 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %call25 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %40)
  %41 = bitcast %struct._GimpToolOptions* %call25 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32 0, i8* null)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end.23, %sw.bb
  %42 = load i8*, i8** @gimp_cage_tool_parent_class, align 8
  %43 = bitcast i8* %42 to %struct._GTypeClass*
  %call26 = call i64 @gimp_tool_get_type() #7
  %call27 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %43, i64 %call26)
  %44 = bitcast %struct._GTypeClass* %call27 to %struct._GimpToolClass*
  %control28 = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %44, i32 0, i32 4
  %45 = load void (%struct._GimpTool*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)** %control28, align 8
  %46 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %47 = load i32, i32* %action.addr, align 4
  %48 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %45(%struct._GimpTool* %46, i32 %47, %struct._GimpDisplay* %48)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cage_tool_cursor_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %ct = alloca %struct._GimpCageTool*, align 8
  %options = alloca %struct._GimpCageOptions*, align 8
  %modifier = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_cage_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCageTool*
  store %struct._GimpCageTool* %2, %struct._GimpCageTool** %ct, align 8
  %3 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %4 = bitcast %struct._GimpCageTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_cage_options_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpCageOptions*
  store %struct._GimpCageOptions* %7, %struct._GimpCageOptions** %options, align 8
  store i32 2, i32* %modifier, align 4
  %8 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display7 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %8, i32 0, i32 4
  %9 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display7, align 8
  %tobool = icmp ne %struct._GimpDisplay* %9, null
  br i1 %tobool, label %if.then, label %if.end.18

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %hovering_handle = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %10, i32 0, i32 10
  %11 = load i32, i32* %hovering_handle, align 4
  %cmp = icmp ne i32 %11, -1
  br i1 %cmp, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  store i32 5, i32* %modifier, align 4
  br label %if.end.17

if.else:                                          ; preds = %if.then
  %12 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %hovering_edge = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %12, i32 0, i32 11
  %13 = load i32, i32* %hovering_edge, align 4
  %cmp9 = icmp ne i32 %13, -1
  br i1 %cmp9, label %land.lhs.true, label %if.else.12

land.lhs.true:                                    ; preds = %if.else
  %14 = load %struct._GimpCageOptions*, %struct._GimpCageOptions** %options, align 8
  %cage_mode = getelementptr inbounds %struct._GimpCageOptions, %struct._GimpCageOptions* %14, i32 0, i32 1
  %15 = load i32, i32* %cage_mode, align 4
  %cmp10 = icmp eq i32 %15, 0
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %land.lhs.true
  store i32 2, i32* %modifier, align 4
  br label %if.end.16

if.else.12:                                       ; preds = %land.lhs.true, %if.else
  %16 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %call13 = call i32 @gimp_cage_tool_is_complete(%struct._GimpCageTool* %16)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.else.12
  store i32 1, i32* %modifier, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.15, %if.else.12
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %if.then.11
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.8
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %entry
  %17 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %17, i32 0, i32 3
  %18 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %19 = load i32, i32* %modifier, align 4
  call void @gimp_tool_control_set_cursor_modifier(%struct._GimpToolControl* %18, i32 %19)
  %20 = load i8*, i8** @gimp_cage_tool_parent_class, align 8
  %21 = bitcast i8* %20 to %struct._GTypeClass*
  %call19 = call i64 @gimp_tool_get_type() #7
  %call20 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %21, i64 %call19)
  %22 = bitcast %struct._GTypeClass* %call20 to %struct._GimpToolClass*
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %22, i32 0, i32 13
  %23 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %24 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %25 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %26 = load i32, i32* %state.addr, align 4
  %27 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %23(%struct._GimpTool* %24, %struct._GimpCoords* %25, i32 %26, %struct._GimpDisplay* %27)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cage_tool_oper_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, i32 %proximity, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %proximity.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %ct = alloca %struct._GimpCageTool*, align 8
  %draw_tool = alloca %struct._GimpDrawTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store i32 %proximity, i32* %proximity.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_cage_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCageTool*
  store %struct._GimpCageTool* %2, %struct._GimpCageTool** %ct, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_draw_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDrawTool*
  store %struct._GimpDrawTool* %5, %struct._GimpDrawTool** %draw_tool, align 8
  %6 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %6, i32 0, i32 1
  %7 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  %tobool = icmp ne %struct._GimpCageConfig* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %9 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %10 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %11 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %11, i32 0, i32 0
  %12 = load double, double* %x, align 8
  %13 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %13, i32 0, i32 1
  %14 = load double, double* %y, align 8
  %call4 = call i32 @gimp_cage_tool_is_on_handle(%struct._GimpCageTool* %8, %struct._GimpDrawTool* %9, %struct._GimpDisplay* %10, double %12, double %14, i32 13)
  %15 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %hovering_handle = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %15, i32 0, i32 10
  store i32 %call4, i32* %hovering_handle, align 4
  %16 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %17 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x5 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %17, i32 0, i32 0
  %18 = load double, double* %x5, align 8
  %19 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y6 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %19, i32 0, i32 1
  %20 = load double, double* %y6, align 8
  %call7 = call i32 @gimp_cage_tool_is_on_edge(%struct._GimpCageTool* %16, double %18, double %20, i32 13)
  %21 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %hovering_edge = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %21, i32 0, i32 11
  store i32 %call7, i32* %hovering_edge, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %22 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %22)
  %23 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x8 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %23, i32 0, i32 0
  %24 = load double, double* %x8, align 8
  %25 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %cursor_x = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %25, i32 0, i32 4
  store double %24, double* %cursor_x, align 8
  %26 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y9 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %26, i32 0, i32 1
  %27 = load double, double* %y9, align 8
  %28 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %cursor_y = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %28, i32 0, i32 5
  store double %27, double* %cursor_y, align 8
  %29 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %29)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cage_tool_draw(%struct._GimpDrawTool* %draw_tool) #3 {
entry:
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %ct = alloca %struct._GimpCageTool*, align 8
  %options = alloca %struct._GimpCageOptions*, align 8
  %config = alloca %struct._GimpCageConfig*, align 8
  %stroke_group = alloca %struct._GimpCanvasGroup*, align 8
  %n_vertices = alloca i32, align 4
  %i = alloca i32, align 4
  %handle = alloca i32, align 4
  %last_point = alloca %struct._GimpVector2, align 8
  %coerce = alloca %struct._GimpVector2, align 8
  %point1 = alloca %struct._GimpVector2, align 8
  %point2 = alloca %struct._GimpVector2, align 8
  %coerce26 = alloca %struct._GimpVector2, align 8
  %index_point2 = alloca i32, align 4
  %coerce49 = alloca %struct._GimpVector2, align 8
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_cage_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCageTool*
  store %struct._GimpCageTool* %2, %struct._GimpCageTool** %ct, align 8
  %3 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %4 = bitcast %struct._GimpCageTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_cage_options_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpCageOptions*
  store %struct._GimpCageOptions* %7, %struct._GimpCageOptions** %options, align 8
  %8 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config7 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %8, i32 0, i32 1
  %9 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config7, align 8
  store %struct._GimpCageConfig* %9, %struct._GimpCageConfig** %config, align 8
  %10 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  %call8 = call i32 @gimp_cage_config_get_n_points(%struct._GimpCageConfig* %10)
  store i32 %call8, i32* %n_vertices, align 4
  %11 = load i32, i32* %n_vertices, align 4
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.115

if.end:                                           ; preds = %entry
  %12 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %tool_state = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %12, i32 0, i32 17
  %13 = load i32, i32* %tool_state, align 4
  %cmp9 = icmp eq i32 %13, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  br label %if.end.115

if.end.11:                                        ; preds = %if.end
  %14 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %call12 = call %struct._GimpCanvasGroup* @gimp_draw_tool_add_stroke_group(%struct._GimpDrawTool* %14)
  store %struct._GimpCanvasGroup* %call12, %struct._GimpCanvasGroup** %stroke_group, align 8
  %15 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %16 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %stroke_group, align 8
  call void @gimp_draw_tool_push_group(%struct._GimpDrawTool* %15, %struct._GimpCanvasGroup* %16)
  %17 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %call13 = call i32 @gimp_cage_tool_is_complete(%struct._GimpCageTool* %17)
  %tobool = icmp ne i32 %call13, 0
  br i1 %tobool, label %if.end.20, label %if.then.14

if.then.14:                                       ; preds = %if.end.11
  %18 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config15 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %18, i32 0, i32 1
  %19 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config15, align 8
  %20 = load %struct._GimpCageOptions*, %struct._GimpCageOptions** %options, align 8
  %cage_mode = getelementptr inbounds %struct._GimpCageOptions, %struct._GimpCageOptions* %20, i32 0, i32 1
  %21 = load i32, i32* %cage_mode, align 4
  %22 = load i32, i32* %n_vertices, align 4
  %sub = sub nsw i32 %22, 1
  %call16 = call { double, double } @gimp_cage_config_get_point_coordinate(%struct._GimpCageConfig* %19, i32 %21, i32 %sub)
  %23 = bitcast %struct._GimpVector2* %coerce to { double, double }*
  %24 = getelementptr { double, double }, { double, double }* %23, i32 0, i32 0
  %25 = extractvalue { double, double } %call16, 0
  store double %25, double* %24, align 8
  %26 = getelementptr { double, double }, { double, double }* %23, i32 0, i32 1
  %27 = extractvalue { double, double } %call16, 1
  store double %27, double* %26, align 8
  %28 = bitcast %struct._GimpVector2* %last_point to i8*
  %29 = bitcast %struct._GimpVector2* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 16, i32 8, i1 false)
  %30 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %last_point, i32 0, i32 0
  %31 = load double, double* %x, align 8
  %32 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %offset_x = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %32, i32 0, i32 2
  %33 = load i32, i32* %offset_x, align 4
  %conv = sitofp i32 %33 to double
  %add = fadd double %31, %conv
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %last_point, i32 0, i32 1
  %34 = load double, double* %y, align 8
  %35 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %offset_y = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %35, i32 0, i32 3
  %36 = load i32, i32* %offset_y, align 4
  %conv17 = sitofp i32 %36 to double
  %add18 = fadd double %34, %conv17
  %37 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %cursor_x = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %37, i32 0, i32 4
  %38 = load double, double* %cursor_x, align 8
  %39 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %cursor_y = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %39, i32 0, i32 5
  %40 = load double, double* %cursor_y, align 8
  %call19 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_line(%struct._GimpDrawTool* %30, double %add, double %add18, double %38, double %40)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.14, %if.end.11
  %41 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  call void @gimp_draw_tool_pop_group(%struct._GimpDrawTool* %41)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.20
  %42 = load i32, i32* %i, align 4
  %43 = load i32, i32* %n_vertices, align 4
  %cmp21 = icmp slt i32 %42, %43
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %44 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config23 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %44, i32 0, i32 1
  %45 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config23, align 8
  %46 = load %struct._GimpCageOptions*, %struct._GimpCageOptions** %options, align 8
  %cage_mode24 = getelementptr inbounds %struct._GimpCageOptions, %struct._GimpCageOptions* %46, i32 0, i32 1
  %47 = load i32, i32* %cage_mode24, align 4
  %48 = load i32, i32* %i, align 4
  %call25 = call { double, double } @gimp_cage_config_get_point_coordinate(%struct._GimpCageConfig* %45, i32 %47, i32 %48)
  %49 = bitcast %struct._GimpVector2* %coerce26 to { double, double }*
  %50 = getelementptr { double, double }, { double, double }* %49, i32 0, i32 0
  %51 = extractvalue { double, double } %call25, 0
  store double %51, double* %50, align 8
  %52 = getelementptr { double, double }, { double, double }* %49, i32 0, i32 1
  %53 = extractvalue { double, double } %call25, 1
  store double %53, double* %52, align 8
  %54 = bitcast %struct._GimpVector2* %point1 to i8*
  %55 = bitcast %struct._GimpVector2* %coerce26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 16, i32 8, i1 false)
  %56 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %offset_x27 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %56, i32 0, i32 2
  %57 = load i32, i32* %offset_x27, align 4
  %conv28 = sitofp i32 %57 to double
  %x29 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %point1, i32 0, i32 0
  %58 = load double, double* %x29, align 8
  %add30 = fadd double %58, %conv28
  store double %add30, double* %x29, align 8
  %59 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %offset_y31 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %59, i32 0, i32 3
  %60 = load i32, i32* %offset_y31, align 4
  %conv32 = sitofp i32 %60 to double
  %y33 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %point1, i32 0, i32 1
  %61 = load double, double* %y33, align 8
  %add34 = fadd double %61, %conv32
  store double %add34, double* %y33, align 8
  %62 = load i32, i32* %i, align 4
  %cmp35 = icmp sgt i32 %62, 0
  br i1 %cmp35, label %if.then.39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %63 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %call37 = call i32 @gimp_cage_tool_is_complete(%struct._GimpCageTool* %63)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.63

if.then.39:                                       ; preds = %lor.lhs.false, %for.body
  %64 = load i32, i32* %i, align 4
  %cmp40 = icmp eq i32 %64, 0
  br i1 %cmp40, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %if.then.39
  %65 = load i32, i32* %n_vertices, align 4
  %sub43 = sub nsw i32 %65, 1
  store i32 %sub43, i32* %index_point2, align 4
  br label %if.end.45

if.else:                                          ; preds = %if.then.39
  %66 = load i32, i32* %i, align 4
  %sub44 = sub nsw i32 %66, 1
  store i32 %sub44, i32* %index_point2, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.else, %if.then.42
  %67 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config46 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %67, i32 0, i32 1
  %68 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config46, align 8
  %69 = load %struct._GimpCageOptions*, %struct._GimpCageOptions** %options, align 8
  %cage_mode47 = getelementptr inbounds %struct._GimpCageOptions, %struct._GimpCageOptions* %69, i32 0, i32 1
  %70 = load i32, i32* %cage_mode47, align 4
  %71 = load i32, i32* %index_point2, align 4
  %call48 = call { double, double } @gimp_cage_config_get_point_coordinate(%struct._GimpCageConfig* %68, i32 %70, i32 %71)
  %72 = bitcast %struct._GimpVector2* %coerce49 to { double, double }*
  %73 = getelementptr { double, double }, { double, double }* %72, i32 0, i32 0
  %74 = extractvalue { double, double } %call48, 0
  store double %74, double* %73, align 8
  %75 = getelementptr { double, double }, { double, double }* %72, i32 0, i32 1
  %76 = extractvalue { double, double } %call48, 1
  store double %76, double* %75, align 8
  %77 = bitcast %struct._GimpVector2* %point2 to i8*
  %78 = bitcast %struct._GimpVector2* %coerce49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %77, i8* %78, i64 16, i32 8, i1 false)
  %79 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %offset_x50 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %79, i32 0, i32 2
  %80 = load i32, i32* %offset_x50, align 4
  %conv51 = sitofp i32 %80 to double
  %x52 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %point2, i32 0, i32 0
  %81 = load double, double* %x52, align 8
  %add53 = fadd double %81, %conv51
  store double %add53, double* %x52, align 8
  %82 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %offset_y54 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %82, i32 0, i32 3
  %83 = load i32, i32* %offset_y54, align 4
  %conv55 = sitofp i32 %83 to double
  %y56 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %point2, i32 0, i32 1
  %84 = load double, double* %y56, align 8
  %add57 = fadd double %84, %conv55
  store double %add57, double* %y56, align 8
  %85 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %86 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %stroke_group, align 8
  call void @gimp_draw_tool_push_group(%struct._GimpDrawTool* %85, %struct._GimpCanvasGroup* %86)
  %87 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %x58 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %point1, i32 0, i32 0
  %88 = load double, double* %x58, align 8
  %y59 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %point1, i32 0, i32 1
  %89 = load double, double* %y59, align 8
  %x60 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %point2, i32 0, i32 0
  %90 = load double, double* %x60, align 8
  %y61 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %point2, i32 0, i32 1
  %91 = load double, double* %y61, align 8
  %call62 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_line(%struct._GimpDrawTool* %87, double %88, double %89, double %90, double %91)
  %92 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  call void @gimp_draw_tool_pop_group(%struct._GimpDrawTool* %92)
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.45, %lor.lhs.false
  %93 = load i32, i32* %i, align 4
  %94 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %hovering_handle = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %94, i32 0, i32 10
  %95 = load i32, i32* %hovering_handle, align 4
  %cmp64 = icmp eq i32 %93, %95
  br i1 %cmp64, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %if.end.63
  store i32 3, i32* %handle, align 4
  br label %if.end.68

if.else.67:                                       ; preds = %if.end.63
  store i32 2, i32* %handle, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.67, %if.then.66
  %96 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %97 = load i32, i32* %handle, align 4
  %x69 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %point1, i32 0, i32 0
  %98 = load double, double* %x69, align 8
  %y70 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %point1, i32 0, i32 1
  %99 = load double, double* %y70, align 8
  %call71 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %96, i32 %97, double %98, double %99, i32 13, i32 13, i32 0)
  %100 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %config72 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %100, i32 0, i32 1
  %101 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config72, align 8
  %102 = load i32, i32* %i, align 4
  %call73 = call i32 @gimp_cage_config_point_is_selected(%struct._GimpCageConfig* %101, i32 %102)
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.then.75, label %if.end.79

if.then.75:                                       ; preds = %if.end.68
  %103 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %x76 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %point1, i32 0, i32 0
  %104 = load double, double* %x76, align 8
  %y77 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %point1, i32 0, i32 1
  %105 = load double, double* %y77, align 8
  %call78 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %103, i32 0, double %104, double %105, i32 13, i32 13, i32 0)
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.75, %if.end.68
  br label %for.inc

for.inc:                                          ; preds = %if.end.79
  %106 = load i32, i32* %i, align 4
  %inc = add nsw i32 %106, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %107 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %tool_state80 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %107, i32 0, i32 17
  %108 = load i32, i32* %tool_state80, align 4
  %cmp81 = icmp eq i32 %108, 7
  br i1 %cmp81, label %if.then.87, label %lor.lhs.false.83

lor.lhs.false.83:                                 ; preds = %for.end
  %109 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %tool_state84 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %109, i32 0, i32 17
  %110 = load i32, i32* %tool_state84, align 4
  %cmp85 = icmp eq i32 %110, 3
  br i1 %cmp85, label %if.then.87, label %if.end.115

if.then.87:                                       ; preds = %lor.lhs.false.83, %for.end
  %111 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %112 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %selection_start_x = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %112, i32 0, i32 8
  %113 = load double, double* %selection_start_x, align 8
  %114 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %cursor_x88 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %114, i32 0, i32 4
  %115 = load double, double* %cursor_x88, align 8
  %cmp89 = fcmp olt double %113, %115
  br i1 %cmp89, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.87
  %116 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %selection_start_x91 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %116, i32 0, i32 8
  %117 = load double, double* %selection_start_x91, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.87
  %118 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %cursor_x92 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %118, i32 0, i32 4
  %119 = load double, double* %cursor_x92, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %117, %cond.true ], [ %119, %cond.false ]
  %120 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %selection_start_y = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %120, i32 0, i32 9
  %121 = load double, double* %selection_start_y, align 8
  %122 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %cursor_y93 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %122, i32 0, i32 5
  %123 = load double, double* %cursor_y93, align 8
  %cmp94 = fcmp olt double %121, %123
  br i1 %cmp94, label %cond.true.96, label %cond.false.98

cond.true.96:                                     ; preds = %cond.end
  %124 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %selection_start_y97 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %124, i32 0, i32 9
  %125 = load double, double* %selection_start_y97, align 8
  br label %cond.end.100

cond.false.98:                                    ; preds = %cond.end
  %126 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %cursor_y99 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %126, i32 0, i32 5
  %127 = load double, double* %cursor_y99, align 8
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.98, %cond.true.96
  %cond101 = phi double [ %125, %cond.true.96 ], [ %127, %cond.false.98 ]
  %128 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %selection_start_x102 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %128, i32 0, i32 8
  %129 = load double, double* %selection_start_x102, align 8
  %130 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %cursor_x103 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %130, i32 0, i32 4
  %131 = load double, double* %cursor_x103, align 8
  %sub104 = fsub double %129, %131
  %conv105 = fptosi double %sub104 to i32
  %call106 = call i32 @abs(i32 %conv105) #7
  %conv107 = sitofp i32 %call106 to double
  %132 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %selection_start_y108 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %132, i32 0, i32 9
  %133 = load double, double* %selection_start_y108, align 8
  %134 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct, align 8
  %cursor_y109 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %134, i32 0, i32 5
  %135 = load double, double* %cursor_y109, align 8
  %sub110 = fsub double %133, %135
  %conv111 = fptosi double %sub110 to i32
  %call112 = call i32 @abs(i32 %conv111) #7
  %conv113 = sitofp i32 %call112 to double
  %call114 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_rectangle(%struct._GimpDrawTool* %111, i32 0, double %cond, double %cond101, double %conv107, double %conv113)
  br label %if.end.115

if.end.115:                                       ; preds = %if.then, %if.then.10, %cond.end.100, %lor.lhs.false.83
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @gimp_draw_tool_pause(%struct._GimpDrawTool*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare void @g_object_get(i8*, i8*, ...) #1

declare void @gimp_cage_config_reset_displacement(%struct._GimpCageConfig*) #1

declare void @gimp_cage_config_reverse_cage_if_needed(%struct._GimpCageConfig*) #1

declare void @gimp_tool_push_status(%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_cage_tool_create_render_node(%struct._GimpCageTool* %ct) #3 {
entry:
  %ct.addr = alloca %struct._GimpCageTool*, align 8
  %options = alloca %struct._GimpCageOptions*, align 8
  %coef = alloca %struct._GeglNode*, align 8
  %cage = alloca %struct._GeglNode*, align 8
  %render = alloca %struct._GeglNode*, align 8
  %input = alloca %struct._GeglNode*, align 8
  %output = alloca %struct._GeglNode*, align 8
  %node = alloca %struct._GeglNode*, align 8
  %transform = alloca %struct._GObject*, align 8
  store %struct._GimpCageTool* %ct, %struct._GimpCageTool** %ct.addr, align 8
  %0 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %1 = bitcast %struct._GimpCageTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  %call2 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %2)
  %3 = bitcast %struct._GimpToolOptions* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_cage_options_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpCageOptions*
  store %struct._GimpCageOptions* %4, %struct._GimpCageOptions** %options, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %5 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %render_node = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %5, i32 0, i32 14
  %6 = load %struct._GeglNode*, %struct._GeglNode** %render_node, align 8
  %cmp = icmp eq %struct._GeglNode* %6, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_cage_tool_create_render_node, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call5 = call %struct._GeglNode* @gegl_node_new()
  store %struct._GeglNode* %call5, %struct._GeglNode** %node, align 8
  %7 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  %call6 = call %struct._GeglNode* @gegl_node_get_input_proxy(%struct._GeglNode* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0))
  store %struct._GeglNode* %call6, %struct._GeglNode** %input, align 8
  %8 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  %call7 = call %struct._GeglNode* @gegl_node_get_output_proxy(%struct._GeglNode* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0))
  store %struct._GeglNode* %call7, %struct._GeglNode** %output, align 8
  %9 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  %10 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %coef8 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %10, i32 0, i32 12
  %11 = load %struct._GeglBuffer*, %struct._GeglBuffer** %coef8, align 8
  %call9 = call %struct._GeglNode* (%struct._GeglNode*, i8*, ...) @gegl_node_new_child(%struct._GeglNode* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), %struct._GeglBuffer* %11, i8* null)
  store %struct._GeglNode* %call9, %struct._GeglNode** %coef, align 8
  %12 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  %13 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %config = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %13, i32 0, i32 1
  %14 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  %15 = load %struct._GimpCageOptions*, %struct._GimpCageOptions** %options, align 8
  %fill_plain_color = getelementptr inbounds %struct._GimpCageOptions, %struct._GimpCageOptions* %15, i32 0, i32 2
  %16 = load i32, i32* %fill_plain_color, align 4
  %call10 = call %struct._GeglNode* (%struct._GeglNode*, i8*, ...) @gegl_node_new_child(%struct._GeglNode* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), %struct._GimpCageConfig* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), i32 %16, i8* null)
  store %struct._GeglNode* %call10, %struct._GeglNode** %cage, align 8
  %17 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  %call11 = call %struct._GeglNode* (%struct._GeglNode*, i8*, ...) @gegl_node_new_child(%struct._GeglNode* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0), i8* null)
  store %struct._GeglNode* %call11, %struct._GeglNode** %render, align 8
  %18 = load %struct._GeglNode*, %struct._GeglNode** %input, align 8
  %19 = load %struct._GeglNode*, %struct._GeglNode** %cage, align 8
  %call12 = call i32 @gegl_node_connect_to(%struct._GeglNode* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), %struct._GeglNode* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0))
  %20 = load %struct._GeglNode*, %struct._GeglNode** %coef, align 8
  %21 = load %struct._GeglNode*, %struct._GeglNode** %cage, align 8
  %call13 = call i32 @gegl_node_connect_to(%struct._GeglNode* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), %struct._GeglNode* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0))
  %22 = load %struct._GeglNode*, %struct._GeglNode** %input, align 8
  %23 = load %struct._GeglNode*, %struct._GeglNode** %render, align 8
  %call14 = call i32 @gegl_node_connect_to(%struct._GeglNode* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), %struct._GeglNode* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0))
  %24 = load %struct._GeglNode*, %struct._GeglNode** %cage, align 8
  %25 = load %struct._GeglNode*, %struct._GeglNode** %render, align 8
  %call15 = call i32 @gegl_node_connect_to(%struct._GeglNode* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), %struct._GeglNode* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0))
  %26 = load %struct._GeglNode*, %struct._GeglNode** %render, align 8
  %27 = load %struct._GeglNode*, %struct._GeglNode** %output, align 8
  %call16 = call i32 @gegl_node_connect_to(%struct._GeglNode* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), %struct._GeglNode* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0))
  %28 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  %29 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %render_node17 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %29, i32 0, i32 14
  store %struct._GeglNode* %28, %struct._GeglNode** %render_node17, align 8
  %30 = load %struct._GeglNode*, %struct._GeglNode** %cage, align 8
  %31 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %cage_node = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %31, i32 0, i32 15
  store %struct._GeglNode* %30, %struct._GeglNode** %cage_node, align 8
  %32 = load %struct._GeglNode*, %struct._GeglNode** %coef, align 8
  %33 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %coef_node = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %33, i32 0, i32 16
  store %struct._GeglNode* %32, %struct._GeglNode** %coef_node, align 8
  %34 = load %struct._GeglNode*, %struct._GeglNode** %cage, align 8
  %35 = bitcast %struct._GeglNode* %34 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), %struct._GObject** %transform, i8* null)
  %36 = load %struct._GObject*, %struct._GObject** %transform, align 8
  %37 = bitcast %struct._GObject* %36 to i8*
  %38 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %39 = bitcast %struct._GimpCageTool* %38 to i8*
  %call18 = call i64 @g_signal_connect_data(i8* %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpCageTool*)* @gimp_cage_tool_transform_progress to void ()*), i8* %39, void (i8*, %struct._GClosure*)* null, i32 0)
  %40 = load %struct._GObject*, %struct._GObject** %transform, align 8
  %41 = bitcast %struct._GObject* %40 to i8*
  call void @g_object_unref(i8* %41)
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cage_tool_compute_coef(%struct._GimpCageTool* %ct) #3 {
entry:
  %ct.addr = alloca %struct._GimpCageTool*, align 8
  %config = alloca %struct._GimpCageConfig*, align 8
  %progress = alloca %struct._GimpProgress*, align 8
  %format = alloca %union._Babl*, align 8
  %gegl = alloca %struct._GeglNode*, align 8
  %input = alloca %struct._GeglNode*, align 8
  %output = alloca %struct._GeglNode*, align 8
  %processor = alloca %struct._GeglProcessor*, align 8
  %buffer = alloca %struct._GeglBuffer*, align 8
  %value = alloca double, align 8
  store %struct._GimpCageTool* %ct, %struct._GimpCageTool** %ct.addr, align 8
  %0 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %config1 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %0, i32 0, i32 1
  %1 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config1, align 8
  store %struct._GimpCageConfig* %1, %struct._GimpCageConfig** %config, align 8
  %2 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %3 = bitcast %struct._GimpCageTool* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_progress_interface_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpProgress*
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i32 0, i32 0)) #6
  %call4 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %4, i8* %call3, i32 0)
  store %struct._GimpProgress* %call4, %struct._GimpProgress** %progress, align 8
  %5 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %coef = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %5, i32 0, i32 12
  %6 = load %struct._GeglBuffer*, %struct._GeglBuffer** %coef, align 8
  %tobool = icmp ne %struct._GeglBuffer* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %coef5 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %7, i32 0, i32 12
  %8 = load %struct._GeglBuffer*, %struct._GeglBuffer** %coef5, align 8
  %9 = bitcast %struct._GeglBuffer* %8 to i8*
  call void @g_object_unref(i8* %9)
  %10 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %coef6 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %10, i32 0, i32 12
  store %struct._GeglBuffer* null, %struct._GeglBuffer** %coef6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call7 = call %union._Babl* @babl_type(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0))
  %11 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  %call8 = call i32 @gimp_cage_config_get_n_points(%struct._GimpCageConfig* %11)
  %mul = mul i32 %call8, 2
  %call9 = call %union._Babl* @babl_format_n(%union._Babl* %call7, i32 %mul)
  store %union._Babl* %call9, %union._Babl** %format, align 8
  %call10 = call %struct._GeglNode* @gegl_node_new()
  store %struct._GeglNode* %call10, %struct._GeglNode** %gegl, align 8
  %12 = load %struct._GeglNode*, %struct._GeglNode** %gegl, align 8
  %13 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %config11 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %13, i32 0, i32 1
  %14 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config11, align 8
  %call12 = call %struct._GeglNode* (%struct._GeglNode*, i8*, ...) @gegl_node_new_child(%struct._GeglNode* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), %struct._GimpCageConfig* %14, i8* null)
  store %struct._GeglNode* %call12, %struct._GeglNode** %input, align 8
  %15 = load %struct._GeglNode*, %struct._GeglNode** %gegl, align 8
  %16 = load %union._Babl*, %union._Babl** %format, align 8
  %call13 = call %struct._GeglNode* (%struct._GeglNode*, i8*, ...) @gegl_node_new_child(%struct._GeglNode* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), %struct._GeglBuffer** %buffer, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), %union._Babl* %16, i8* null)
  store %struct._GeglNode* %call13, %struct._GeglNode** %output, align 8
  %17 = load %struct._GeglNode*, %struct._GeglNode** %input, align 8
  %18 = load %struct._GeglNode*, %struct._GeglNode** %output, align 8
  %call14 = call i32 @gegl_node_connect_to(%struct._GeglNode* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), %struct._GeglNode* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0))
  %19 = load %struct._GeglNode*, %struct._GeglNode** %output, align 8
  %call15 = call %struct._GeglProcessor* @gegl_node_new_processor(%struct._GeglNode* %19, %struct._GeglRectangle* null)
  store %struct._GeglProcessor* %call15, %struct._GeglProcessor** %processor, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.20, %if.end
  %20 = load %struct._GeglProcessor*, %struct._GeglProcessor** %processor, align 8
  %call16 = call i32 @gegl_processor_work(%struct._GeglProcessor* %20, double* %value)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %tobool18 = icmp ne %struct._GimpProgress* %21, null
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %while.body
  %22 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %23 = load double, double* %value, align 8
  call void @gimp_progress_set_value(%struct._GimpProgress* %22, double %23)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %24 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %tobool21 = icmp ne %struct._GimpProgress* %24, null
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %while.end
  %25 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %25)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %while.end
  %26 = load %struct._GeglProcessor*, %struct._GeglProcessor** %processor, align 8
  %27 = bitcast %struct._GeglProcessor* %26 to i8*
  call void @g_object_unref(i8* %27)
  %28 = load %struct._GeglBuffer*, %struct._GeglBuffer** %buffer, align 8
  %29 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %coef24 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %29, i32 0, i32 12
  store %struct._GeglBuffer* %28, %struct._GeglBuffer** %coef24, align 8
  %30 = load %struct._GeglNode*, %struct._GeglNode** %gegl, align 8
  %31 = bitcast %struct._GeglNode* %30 to i8*
  call void @g_object_unref(i8* %31)
  %32 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %dirty_coef = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %32, i32 0, i32 13
  store i32 0, i32* %dirty_coef, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cage_tool_render_node_update(%struct._GimpCageTool* %ct) #3 {
entry:
  %ct.addr = alloca %struct._GimpCageTool*, align 8
  %options = alloca %struct._GimpCageOptions*, align 8
  %option_fill = alloca i32, align 4
  %node_fill = alloca i32, align 4
  %buffer = alloca %struct._GeglBuffer*, align 8
  store %struct._GimpCageTool* %ct, %struct._GimpCageTool** %ct.addr, align 8
  %0 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %1 = bitcast %struct._GimpCageTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  %call2 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %2)
  %3 = bitcast %struct._GimpToolOptions* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_cage_options_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpCageOptions*
  store %struct._GimpCageOptions* %4, %struct._GimpCageOptions** %options, align 8
  %5 = load %struct._GimpCageOptions*, %struct._GimpCageOptions** %options, align 8
  %6 = bitcast %struct._GimpCageOptions* %5 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32* %option_fill, i8* null)
  %7 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %cage_node = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %7, i32 0, i32 15
  %8 = load %struct._GeglNode*, %struct._GeglNode** %cage_node, align 8
  call void (%struct._GeglNode*, i8*, ...) @gegl_node_get(%struct._GeglNode* %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32* %node_fill, i8* null)
  %9 = load i32, i32* %option_fill, align 4
  %10 = load i32, i32* %node_fill, align 4
  %cmp = icmp ne i32 %9, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %cage_node5 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %11, i32 0, i32 15
  %12 = load %struct._GeglNode*, %struct._GeglNode** %cage_node5, align 8
  %13 = load i32, i32* %option_fill, align 4
  call void (%struct._GeglNode*, i8*, ...) @gegl_node_set(%struct._GeglNode* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), i32 %13, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %coef_node = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %14, i32 0, i32 16
  %15 = load %struct._GeglNode*, %struct._GeglNode** %coef_node, align 8
  call void (%struct._GeglNode*, i8*, ...) @gegl_node_get(%struct._GeglNode* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), %struct._GeglBuffer** %buffer, i8* null)
  %16 = load %struct._GeglBuffer*, %struct._GeglBuffer** %buffer, align 8
  %17 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %coef = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %17, i32 0, i32 12
  %18 = load %struct._GeglBuffer*, %struct._GeglBuffer** %coef, align 8
  %cmp6 = icmp ne %struct._GeglBuffer* %16, %18
  br i1 %cmp6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %19 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %coef_node8 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %19, i32 0, i32 16
  %20 = load %struct._GeglNode*, %struct._GeglNode** %coef_node8, align 8
  %21 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %coef9 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %21, i32 0, i32 12
  %22 = load %struct._GeglBuffer*, %struct._GeglBuffer** %coef9, align 8
  call void (%struct._GeglNode*, i8*, ...) @gegl_node_set(%struct._GeglNode* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), %struct._GeglBuffer* %22, i8* null)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.end
  %23 = load %struct._GeglBuffer*, %struct._GeglBuffer** %buffer, align 8
  %tobool = icmp ne %struct._GeglBuffer* %23, null
  br i1 %tobool, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.10
  %24 = load %struct._GeglBuffer*, %struct._GeglBuffer** %buffer, align 8
  %25 = bitcast %struct._GeglBuffer* %24 to i8*
  call void @g_object_unref(i8* %25)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.10
  ret void
}

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_cage_tool_create_image_map(%struct._GimpCageTool* %ct, %struct._GimpDrawable* %drawable) #3 {
entry:
  %ct.addr = alloca %struct._GimpCageTool*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpCageTool* %ct, %struct._GimpCageTool** %ct.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %render_node = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %0, i32 0, i32 14
  %1 = load %struct._GeglNode*, %struct._GeglNode** %render_node, align 8
  %tobool = icmp ne %struct._GeglNode* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  call void @gimp_cage_tool_create_render_node(%struct._GimpCageTool* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0)) #6
  %4 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %render_node1 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %4, i32 0, i32 14
  %5 = load %struct._GeglNode*, %struct._GeglNode** %render_node1, align 8
  %call2 = call %struct._GimpImageMap* @gimp_image_map_new(%struct._GimpDrawable* %3, i8* %call, %struct._GeglNode* %5, void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)* null, i8* null)
  %6 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %image_map = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %6, i32 0, i32 18
  store %struct._GimpImageMap* %call2, %struct._GimpImageMap** %image_map, align 8
  %7 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %image_map3 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %7, i32 0, i32 18
  %8 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map3, align 8
  %9 = bitcast %struct._GimpImageMap* %8 to i8*
  %10 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %11 = bitcast %struct._GimpCageTool* %10 to i8*
  %call4 = call i64 @g_signal_connect_data(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImageMap*, %struct._GimpTool*)* @gimp_cage_tool_image_map_flush to void ()*), i8* %11, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cage_tool_image_map_update(%struct._GimpCageTool* %ct) #3 {
entry:
  %ct.addr = alloca %struct._GimpCageTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %visible = alloca %struct._GeglRectangle, align 4
  store %struct._GimpCageTool* %ct, %struct._GimpCageTool** %ct.addr, align 8
  %0 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %1 = bitcast %struct._GimpCageTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 4
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call2 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %4)
  store %struct._GimpDisplayShell* %call2, %struct._GimpDisplayShell** %shell, align 8
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %drawable = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 5
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %7 = bitcast %struct._GimpDrawable* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_item_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpItem*
  store %struct._GimpItem* %8, %struct._GimpItem** %item, align 8
  %9 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_untransform_viewport(%struct._GimpDisplayShell* %9, i32* %x, i32* %y, i32* %w, i32* %h)
  %10 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %10, i32* %off_x, i32* %off_y)
  %11 = load i32, i32* %x, align 4
  %12 = load i32, i32* %y, align 4
  %13 = load i32, i32* %w, align 4
  %14 = load i32, i32* %h, align 4
  %15 = load i32, i32* %off_x, align 4
  %16 = load i32, i32* %off_y, align 4
  %17 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call5 = call i32 @gimp_item_get_width(%struct._GimpItem* %17)
  %18 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call6 = call i32 @gimp_item_get_height(%struct._GimpItem* %18)
  %x7 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %visible, i32 0, i32 0
  %y8 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %visible, i32 0, i32 1
  %width = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %visible, i32 0, i32 2
  %height = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %visible, i32 0, i32 3
  %call9 = call i32 @gimp_rectangle_intersect(i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %call5, i32 %call6, i32* %x7, i32* %y8, i32* %width, i32* %height)
  %19 = load i32, i32* %off_x, align 4
  %x10 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %visible, i32 0, i32 0
  %20 = load i32, i32* %x10, align 4
  %sub = sub nsw i32 %20, %19
  store i32 %sub, i32* %x10, align 4
  %21 = load i32, i32* %off_y, align 4
  %y11 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %visible, i32 0, i32 1
  %22 = load i32, i32* %y11, align 4
  %sub12 = sub nsw i32 %22, %21
  store i32 %sub12, i32* %y11, align 4
  %23 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %image_map = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %23, i32 0, i32 18
  %24 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  call void @gimp_image_map_apply(%struct._GimpImageMap* %24, %struct._GeglRectangle* %visible)
  ret void
}

declare void @gimp_image_map_clear(%struct._GimpImageMap*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_cage_tool_image_map_flush(%struct._GimpImageMap* %image_map, %struct._GimpTool* %tool) #3 {
entry:
  %image_map.addr = alloca %struct._GimpImageMap*, align 8
  %tool.addr = alloca %struct._GimpTool*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GimpImageMap* %image_map, %struct._GimpImageMap** %image_map.addr, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %0, i32 0, i32 4
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %1)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage* %2)
  call void @gimp_projection_flush_now(%struct._GimpProjection* %call1)
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display2 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 4
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display2, align 8
  call void @gimp_display_flush_now(%struct._GimpDisplay* %4)
  ret void
}

declare void @gimp_tool_pop_status(%struct._GimpTool*, %struct._GimpDisplay*) #1

declare void @gimp_draw_tool_resume(%struct._GimpDrawTool*) #1

declare %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool*) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GeglNode* @gegl_node_new() #1

declare %struct._GeglNode* @gegl_node_get_input_proxy(%struct._GeglNode*, i8*) #1

declare %struct._GeglNode* @gegl_node_get_output_proxy(%struct._GeglNode*, i8*) #1

declare %struct._GeglNode* @gegl_node_new_child(%struct._GeglNode*, i8*, ...) #1

declare i32 @gegl_node_connect_to(%struct._GeglNode*, i8*, %struct._GeglNode*, i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_cage_tool_transform_progress(%struct._GObject* %object, %struct._GParamSpec* %pspec, %struct._GimpCageTool* %ct) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %ct.addr = alloca %struct._GimpCageTool*, align 8
  %progress = alloca %struct._GimpProgress*, align 8
  %value = alloca double, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpCageTool* %ct, %struct._GimpCageTool** %ct.addr, align 8
  %0 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %1 = bitcast %struct._GimpCageTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_progress_interface_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpProgress*
  store %struct._GimpProgress* %2, %struct._GimpProgress** %progress, align 8
  %3 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %4 = bitcast %struct._GObject* %3 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), double* %value, i8* null)
  %5 = load double, double* %value, align 8
  %cmp = fcmp oeq double %5, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)) #6
  %call3 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %6, i8* %call2, i32 0)
  br label %if.end.7

if.else:                                          ; preds = %entry
  %7 = load double, double* %value, align 8
  %cmp4 = fcmp oeq double %7, 1.000000e+00
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else
  %8 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %8)
  br label %if.end

if.else.6:                                        ; preds = %if.else
  %9 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %10 = load double, double* %value, align 8
  call void @gimp_progress_set_value(%struct._GimpProgress* %9, double %10)
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.5
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  ret void
}

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #2

declare %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress*, i8*, i32) #1

declare void @gimp_progress_end(%struct._GimpProgress*) #1

declare void @gimp_progress_set_value(%struct._GimpProgress*, double) #1

declare %union._Babl* @babl_format_n(%union._Babl*, i32) #1

declare %union._Babl* @babl_type(i8*) #1

declare i32 @gimp_cage_config_get_n_points(%struct._GimpCageConfig*) #1

declare %struct._GeglProcessor* @gegl_node_new_processor(%struct._GeglNode*, %struct._GeglRectangle*) #1

declare i32 @gegl_processor_work(%struct._GeglProcessor*, double*) #1

declare void @gegl_node_get(%struct._GeglNode*, i8*, ...) #1

declare void @gegl_node_set(%struct._GeglNode*, i8*, ...) #1

declare %struct._GimpImageMap* @gimp_image_map_new(%struct._GimpDrawable*, i8*, %struct._GeglNode*, void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)*, i8*) #1

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare void @gimp_display_shell_untransform_viewport(%struct._GimpDisplayShell*, i32*, i32*, i32*, i32*) #1

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #1

declare i32 @gimp_rectangle_intersect(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_item_get_width(%struct._GimpItem*) #1

declare i32 @gimp_item_get_height(%struct._GimpItem*) #1

declare void @gimp_image_map_apply(%struct._GimpImageMap*, %struct._GeglRectangle*) #1

declare void @gimp_projection_flush_now(%struct._GimpProjection*) #1

declare %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage*) #1

declare void @gimp_display_flush_now(%struct._GimpDisplay*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_cage_tool_start(%struct._GimpCageTool* %ct, %struct._GimpDisplay* %display) #3 {
entry:
  %ct.addr = alloca %struct._GimpCageTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  store %struct._GimpCageTool* %ct, %struct._GimpCageTool** %ct.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %1 = bitcast %struct._GimpCageTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call2 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %3)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call3 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %4)
  store %struct._GimpDrawable* %call3, %struct._GimpDrawable** %drawable, align 8
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %6 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_control(%struct._GimpTool* %5, i32 2, %struct._GimpDisplay* %6)
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %8 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display4 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %8, i32 0, i32 4
  store %struct._GimpDisplay* %7, %struct._GimpDisplay** %display4, align 8
  %9 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %config = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %9, i32 0, i32 1
  %10 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  %tobool = icmp ne %struct._GimpCageConfig* %10, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %config5 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %11, i32 0, i32 1
  %12 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config5, align 8
  %13 = bitcast %struct._GimpCageConfig* %12 to i8*
  call void @g_object_unref(i8* %13)
  %14 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %config6 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %14, i32 0, i32 1
  store %struct._GimpCageConfig* null, %struct._GimpCageConfig** %config6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %coef = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %15, i32 0, i32 12
  %16 = load %struct._GeglBuffer*, %struct._GeglBuffer** %coef, align 8
  %tobool7 = icmp ne %struct._GeglBuffer* %16, null
  br i1 %tobool7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end
  %17 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %coef9 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %17, i32 0, i32 12
  %18 = load %struct._GeglBuffer*, %struct._GeglBuffer** %coef9, align 8
  %19 = bitcast %struct._GeglBuffer* %18 to i8*
  call void @g_object_unref(i8* %19)
  %20 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %dirty_coef = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %20, i32 0, i32 13
  store i32 1, i32* %dirty_coef, align 4
  %21 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %coef10 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %21, i32 0, i32 12
  store %struct._GeglBuffer* null, %struct._GeglBuffer** %coef10, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end
  %22 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %image_map = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %22, i32 0, i32 18
  %23 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %tobool12 = icmp ne %struct._GimpImageMap* %23, null
  br i1 %tobool12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %if.end.11
  %24 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %image_map14 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %24, i32 0, i32 18
  %25 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map14, align 8
  call void @gimp_image_map_abort(%struct._GimpImageMap* %25)
  %26 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %image_map15 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %26, i32 0, i32 18
  %27 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map15, align 8
  %28 = bitcast %struct._GimpImageMap* %27 to i8*
  call void @g_object_unref(i8* %28)
  %29 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %image_map16 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %29, i32 0, i32 18
  store %struct._GimpImageMap* null, %struct._GimpImageMap** %image_map16, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %if.end.11
  %30 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %render_node = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %30, i32 0, i32 14
  %31 = load %struct._GeglNode*, %struct._GeglNode** %render_node, align 8
  %tobool18 = icmp ne %struct._GeglNode* %31, null
  br i1 %tobool18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %if.end.17
  %32 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %render_node20 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %32, i32 0, i32 14
  %33 = load %struct._GeglNode*, %struct._GeglNode** %render_node20, align 8
  %34 = bitcast %struct._GeglNode* %33 to i8*
  call void @g_object_unref(i8* %34)
  %35 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %render_node21 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %35, i32 0, i32 14
  store %struct._GeglNode* null, %struct._GeglNode** %render_node21, align 8
  %36 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %coef_node = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %36, i32 0, i32 16
  store %struct._GeglNode* null, %struct._GeglNode** %coef_node, align 8
  %37 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %cage_node = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %37, i32 0, i32 15
  store %struct._GeglNode* null, %struct._GeglNode** %cage_node, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %if.end.17
  %call23 = call i64 @gimp_cage_config_get_type() #7
  %call24 = call i8* (i64, i8*, ...) @g_object_new(i64 %call23, i8* null)
  %38 = bitcast i8* %call24 to %struct._GimpCageConfig*
  %39 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %config25 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %39, i32 0, i32 1
  store %struct._GimpCageConfig* %38, %struct._GimpCageConfig** %config25, align 8
  %40 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %hovering_handle = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %40, i32 0, i32 10
  store i32 -1, i32* %hovering_handle, align 4
  %41 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %hovering_edge = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %41, i32 0, i32 11
  store i32 -1, i32* %hovering_edge, align 4
  %42 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %tool_state = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %42, i32 0, i32 17
  store i32 0, i32* %tool_state, align 4
  %43 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %44 = bitcast %struct._GimpDrawable* %43 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_item_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call26)
  %45 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %45, i32* %off_x, i32* %off_y)
  %46 = load i32, i32* %off_x, align 4
  %47 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %offset_x = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %47, i32 0, i32 2
  store i32 %46, i32* %offset_x, align 4
  %48 = load i32, i32* %off_y, align 4
  %49 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %offset_y = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %49, i32 0, i32 3
  store i32 %48, i32* %offset_y, align 4
  %50 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %51 = bitcast %struct._GimpCageTool* %50 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_draw_tool_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call28)
  %52 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpDrawTool*
  %53 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_draw_tool_start(%struct._GimpDrawTool* %52, %struct._GimpDisplay* %53)
  ret void
}

declare void @gimp_tool_control_activate(%struct._GimpToolControl*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_cage_tool_is_on_handle(%struct._GimpCageTool* %ct, %struct._GimpDrawTool* %draw_tool, %struct._GimpDisplay* %display, double %x, double %y, i32 %handle_size) #3 {
entry:
  %retval = alloca i32, align 4
  %ct.addr = alloca %struct._GimpCageTool*, align 8
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %handle_size.addr = alloca i32, align 4
  %options = alloca %struct._GimpCageOptions*, align 8
  %config = alloca %struct._GimpCageConfig*, align 8
  %dist = alloca double, align 8
  %i = alloca i32, align 4
  %cage_point = alloca %struct._GimpVector2, align 8
  %n_cage_vertices = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %coerce = alloca %struct._GimpVector2, align 8
  store %struct._GimpCageTool* %ct, %struct._GimpCageTool** %ct.addr, align 8
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store i32 %handle_size, i32* %handle_size.addr, align 4
  %0 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %1 = bitcast %struct._GimpCageTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  %call2 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %2)
  %3 = bitcast %struct._GimpToolOptions* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_cage_options_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpCageOptions*
  store %struct._GimpCageOptions* %4, %struct._GimpCageOptions** %options, align 8
  %5 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %config5 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %5, i32 0, i32 1
  %6 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config5, align 8
  store %struct._GimpCageConfig* %6, %struct._GimpCageConfig** %config, align 8
  store double 0x7FEFFFFFFFFFFFFF, double* %dist, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %7 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %8 = bitcast %struct._GimpCageTool* %7 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %8, %struct._GTypeInstance** %__inst, align 8
  %call6 = call i64 @gimp_cage_tool_get_type() #7
  store i64 %call6, i64* %__t, align 8
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %9, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.12

if.else:                                          ; preds = %do.body
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool7 = icmp ne %struct._GTypeClass* %11, null
  br i1 %tobool7, label %land.lhs.true, label %if.else.10

land.lhs.true:                                    ; preds = %if.else
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type, align 8
  %15 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %14, %15
  br i1 %cmp, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.10:                                       ; preds = %land.lhs.true, %if.else
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %17 = load i64, i64* %__t, align 8
  %call11 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %16, i64 %17) #8
  store i32 %call11, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.10, %if.then.9
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then
  %18 = load i32, i32* %__r, align 4
  store i32 %18, i32* %tmp
  %19 = load i32, i32* %tmp
  %tobool13 = icmp ne i32 %19, 0
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.end.12
  br label %if.end.16

if.else.15:                                       ; preds = %if.end.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_cage_tool_is_on_handle, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.16
  %20 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  %call17 = call i32 @gimp_cage_config_get_n_points(%struct._GimpCageConfig* %20)
  store i32 %call17, i32* %n_cage_vertices, align 4
  %21 = load i32, i32* %n_cage_vertices, align 4
  %cmp18 = icmp eq i32 %21, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %do.end
  store i32 -1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %do.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.20
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %n_cage_vertices, align 4
  %cmp21 = icmp ult i32 %22, %23
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  %25 = load %struct._GimpCageOptions*, %struct._GimpCageOptions** %options, align 8
  %cage_mode = getelementptr inbounds %struct._GimpCageOptions, %struct._GimpCageOptions* %25, i32 0, i32 1
  %26 = load i32, i32* %cage_mode, align 4
  %27 = load i32, i32* %i, align 4
  %call22 = call { double, double } @gimp_cage_config_get_point_coordinate(%struct._GimpCageConfig* %24, i32 %26, i32 %27)
  %28 = bitcast %struct._GimpVector2* %coerce to { double, double }*
  %29 = getelementptr { double, double }, { double, double }* %28, i32 0, i32 0
  %30 = extractvalue { double, double } %call22, 0
  store double %30, double* %29, align 8
  %31 = getelementptr { double, double }, { double, double }* %28, i32 0, i32 1
  %32 = extractvalue { double, double } %call22, 1
  store double %32, double* %31, align 8
  %33 = bitcast %struct._GimpVector2* %cage_point to i8*
  %34 = bitcast %struct._GimpVector2* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 16, i32 8, i1 false)
  %35 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %offset_x = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %35, i32 0, i32 2
  %36 = load i32, i32* %offset_x, align 4
  %conv = sitofp i32 %36 to double
  %x23 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %cage_point, i32 0, i32 0
  %37 = load double, double* %x23, align 8
  %add = fadd double %37, %conv
  store double %add, double* %x23, align 8
  %38 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %offset_y = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %38, i32 0, i32 3
  %39 = load i32, i32* %offset_y, align 4
  %conv24 = sitofp i32 %39 to double
  %y25 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %cage_point, i32 0, i32 1
  %40 = load double, double* %y25, align 8
  %add26 = fadd double %40, %conv24
  store double %add26, double* %y25, align 8
  %41 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %42 = bitcast %struct._GimpDrawTool* %41 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_draw_tool_get_type() #7
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call27)
  %43 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpDrawTool*
  %44 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %45 = load double, double* %x.addr, align 8
  %46 = load double, double* %y.addr, align 8
  %x29 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %cage_point, i32 0, i32 0
  %47 = load double, double* %x29, align 8
  %y30 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %cage_point, i32 0, i32 1
  %48 = load double, double* %y30, align 8
  %call31 = call double @gimp_draw_tool_calc_distance_square(%struct._GimpDrawTool* %43, %struct._GimpDisplay* %44, double %45, double %46, double %47, double %48)
  store double %call31, double* %dist, align 8
  %49 = load double, double* %dist, align 8
  %50 = load i32, i32* %handle_size.addr, align 4
  %div = sdiv i32 %50, 2
  %51 = load i32, i32* %handle_size.addr, align 4
  %div32 = sdiv i32 %51, 2
  %mul = mul nsw i32 %div, %div32
  %conv33 = sitofp i32 %mul to double
  %cmp34 = fcmp ole double %49, %conv33
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %for.body
  %52 = load i32, i32* %i, align 4
  store i32 %52, i32* %retval
  br label %return

if.end.37:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %53 = load i32, i32* %i, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.36, %if.then.19, %if.else.15
  %54 = load i32, i32* %retval
  ret i32 %54
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_cage_tool_is_on_edge(%struct._GimpCageTool* %ct, double %x, double %y, i32 %handle_size) #3 {
entry:
  %retval = alloca i32, align 4
  %ct.addr = alloca %struct._GimpCageTool*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %handle_size.addr = alloca i32, align 4
  %options = alloca %struct._GimpCageOptions*, align 8
  %config = alloca %struct._GimpCageConfig*, align 8
  %i = alloca i32, align 4
  %n_cage_vertices = alloca i32, align 4
  %A = alloca %struct._GimpVector2, align 8
  %B = alloca %struct._GimpVector2, align 8
  %C = alloca %struct._GimpVector2, align 8
  %AB = alloca %struct._GimpVector2, align 8
  %BC = alloca %struct._GimpVector2, align 8
  %AC = alloca %struct._GimpVector2, align 8
  %lAB = alloca double, align 8
  %lBC = alloca double, align 8
  %lAC = alloca double, align 8
  %lEB = alloca double, align 8
  %lEC = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %coerce = alloca %struct._GimpVector2, align 8
  %coerce24 = alloca %struct._GimpVector2, align 8
  %coerce57 = alloca %struct._GimpVector2, align 8
  store %struct._GimpCageTool* %ct, %struct._GimpCageTool** %ct.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store i32 %handle_size, i32* %handle_size.addr, align 4
  %0 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %1 = bitcast %struct._GimpCageTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  %call2 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %2)
  %3 = bitcast %struct._GimpToolOptions* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_cage_options_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpCageOptions*
  store %struct._GimpCageOptions* %4, %struct._GimpCageOptions** %options, align 8
  %5 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %config5 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %5, i32 0, i32 1
  %6 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config5, align 8
  store %struct._GimpCageConfig* %6, %struct._GimpCageConfig** %config, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %7 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %8 = bitcast %struct._GimpCageTool* %7 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %8, %struct._GTypeInstance** %__inst, align 8
  %call6 = call i64 @gimp_cage_tool_get_type() #7
  store i64 %call6, i64* %__t, align 8
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %9, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.12

if.else:                                          ; preds = %do.body
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool7 = icmp ne %struct._GTypeClass* %11, null
  br i1 %tobool7, label %land.lhs.true, label %if.else.10

land.lhs.true:                                    ; preds = %if.else
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type, align 8
  %15 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %14, %15
  br i1 %cmp, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.10:                                       ; preds = %land.lhs.true, %if.else
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %17 = load i64, i64* %__t, align 8
  %call11 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %16, i64 %17) #8
  store i32 %call11, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.10, %if.then.9
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then
  %18 = load i32, i32* %__r, align 4
  store i32 %18, i32* %tmp
  %19 = load i32, i32* %tmp
  %tobool13 = icmp ne i32 %19, 0
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.end.12
  br label %if.end.16

if.else.15:                                       ; preds = %if.end.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_cage_tool_is_on_edge, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.16
  %20 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  %call17 = call i32 @gimp_cage_config_get_n_points(%struct._GimpCageConfig* %20)
  store i32 %call17, i32* %n_cage_vertices, align 4
  %21 = load i32, i32* %n_cage_vertices, align 4
  %cmp18 = icmp ult i32 %21, 2
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %do.end
  store i32 -1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %do.end
  %22 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  %23 = load %struct._GimpCageOptions*, %struct._GimpCageOptions** %options, align 8
  %cage_mode = getelementptr inbounds %struct._GimpCageOptions, %struct._GimpCageOptions* %23, i32 0, i32 1
  %24 = load i32, i32* %cage_mode, align 4
  %25 = load i32, i32* %n_cage_vertices, align 4
  %sub = sub i32 %25, 1
  %call21 = call { double, double } @gimp_cage_config_get_point_coordinate(%struct._GimpCageConfig* %22, i32 %24, i32 %sub)
  %26 = bitcast %struct._GimpVector2* %coerce to { double, double }*
  %27 = getelementptr { double, double }, { double, double }* %26, i32 0, i32 0
  %28 = extractvalue { double, double } %call21, 0
  store double %28, double* %27, align 8
  %29 = getelementptr { double, double }, { double, double }* %26, i32 0, i32 1
  %30 = extractvalue { double, double } %call21, 1
  store double %30, double* %29, align 8
  %31 = bitcast %struct._GimpVector2* %A to i8*
  %32 = bitcast %struct._GimpVector2* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 16, i32 8, i1 false)
  %33 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  %34 = load %struct._GimpCageOptions*, %struct._GimpCageOptions** %options, align 8
  %cage_mode22 = getelementptr inbounds %struct._GimpCageOptions, %struct._GimpCageOptions* %34, i32 0, i32 1
  %35 = load i32, i32* %cage_mode22, align 4
  %call23 = call { double, double } @gimp_cage_config_get_point_coordinate(%struct._GimpCageConfig* %33, i32 %35, i32 0)
  %36 = bitcast %struct._GimpVector2* %coerce24 to { double, double }*
  %37 = getelementptr { double, double }, { double, double }* %36, i32 0, i32 0
  %38 = extractvalue { double, double } %call23, 0
  store double %38, double* %37, align 8
  %39 = getelementptr { double, double }, { double, double }* %36, i32 0, i32 1
  %40 = extractvalue { double, double } %call23, 1
  store double %40, double* %39, align 8
  %41 = bitcast %struct._GimpVector2* %B to i8*
  %42 = bitcast %struct._GimpVector2* %coerce24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 16, i32 8, i1 false)
  %43 = load double, double* %x.addr, align 8
  %x25 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %C, i32 0, i32 0
  store double %43, double* %x25, align 8
  %44 = load double, double* %y.addr, align 8
  %y26 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %C, i32 0, i32 1
  store double %44, double* %y26, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.20
  %45 = load i32, i32* %i, align 4
  %46 = load i32, i32* %n_cage_vertices, align 4
  %cmp27 = icmp ult i32 %45, %46
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @gimp_vector2_sub(%struct._GimpVector2* %AB, %struct._GimpVector2* %A, %struct._GimpVector2* %B)
  call void @gimp_vector2_sub(%struct._GimpVector2* %BC, %struct._GimpVector2* %B, %struct._GimpVector2* %C)
  call void @gimp_vector2_sub(%struct._GimpVector2* %AC, %struct._GimpVector2* %A, %struct._GimpVector2* %C)
  %call28 = call double @gimp_vector2_length(%struct._GimpVector2* %AB)
  store double %call28, double* %lAB, align 8
  %call29 = call double @gimp_vector2_length(%struct._GimpVector2* %BC)
  store double %call29, double* %lBC, align 8
  %call30 = call double @gimp_vector2_length(%struct._GimpVector2* %AC)
  store double %call30, double* %lAC, align 8
  %47 = load double, double* %lAB, align 8
  %div = fdiv double %47, 2.000000e+00
  %48 = load double, double* %lBC, align 8
  %49 = load double, double* %lBC, align 8
  %mul = fmul double %48, %49
  %50 = load double, double* %lAC, align 8
  %51 = load double, double* %lAC, align 8
  %mul31 = fmul double %50, %51
  %sub32 = fsub double %mul, %mul31
  %52 = load double, double* %lAB, align 8
  %mul33 = fmul double 2.000000e+00, %52
  %div34 = fdiv double %sub32, %mul33
  %add = fadd double %div, %div34
  store double %add, double* %lEB, align 8
  %53 = load double, double* %lBC, align 8
  %54 = load double, double* %lBC, align 8
  %mul35 = fmul double %53, %54
  %55 = load double, double* %lEB, align 8
  %56 = load double, double* %lEB, align 8
  %mul36 = fmul double %55, %56
  %sub37 = fsub double %mul35, %mul36
  %call38 = call double @sqrt(double %sub37) #6
  store double %call38, double* %lEC, align 8
  %57 = load double, double* %lEC, align 8
  %58 = load i32, i32* %handle_size.addr, align 4
  %div39 = sdiv i32 %58, 2
  %conv = sitofp i32 %div39 to double
  %cmp40 = fcmp olt double %57, %conv
  br i1 %cmp40, label %land.lhs.true.42, label %if.end.53

land.lhs.true.42:                                 ; preds = %for.body
  %59 = load double, double* %lBC, align 8
  %60 = load double, double* %lBC, align 8
  %mul43 = fmul double %59, %60
  %61 = load double, double* %lAC, align 8
  %62 = load double, double* %lAC, align 8
  %mul44 = fmul double %61, %62
  %sub45 = fsub double %mul43, %mul44
  %conv46 = fptosi double %sub45 to i32
  %call47 = call i32 @abs(i32 %conv46) #7
  %conv48 = sitofp i32 %call47 to double
  %63 = load double, double* %lAB, align 8
  %64 = load double, double* %lAB, align 8
  %mul49 = fmul double %63, %64
  %cmp50 = fcmp ole double %conv48, %mul49
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %land.lhs.true.42
  %65 = load i32, i32* %i, align 4
  store i32 %65, i32* %retval
  br label %return

if.end.53:                                        ; preds = %land.lhs.true.42, %for.body
  %66 = bitcast %struct._GimpVector2* %A to i8*
  %67 = bitcast %struct._GimpVector2* %B to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 16, i32 8, i1 false)
  %68 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  %69 = load %struct._GimpCageOptions*, %struct._GimpCageOptions** %options, align 8
  %cage_mode54 = getelementptr inbounds %struct._GimpCageOptions, %struct._GimpCageOptions* %69, i32 0, i32 1
  %70 = load i32, i32* %cage_mode54, align 4
  %71 = load i32, i32* %i, align 4
  %add55 = add nsw i32 %71, 1
  %72 = load i32, i32* %n_cage_vertices, align 4
  %rem = urem i32 %add55, %72
  %call56 = call { double, double } @gimp_cage_config_get_point_coordinate(%struct._GimpCageConfig* %68, i32 %70, i32 %rem)
  %73 = bitcast %struct._GimpVector2* %coerce57 to { double, double }*
  %74 = getelementptr { double, double }, { double, double }* %73, i32 0, i32 0
  %75 = extractvalue { double, double } %call56, 0
  store double %75, double* %74, align 8
  %76 = getelementptr { double, double }, { double, double }* %73, i32 0, i32 1
  %77 = extractvalue { double, double } %call56, 1
  store double %77, double* %76, align 8
  %78 = bitcast %struct._GimpVector2* %B to i8*
  %79 = bitcast %struct._GimpVector2* %coerce57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* %79, i64 16, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %if.end.53
  %80 = load i32, i32* %i, align 4
  %inc = add nsw i32 %80, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.52, %if.then.19, %if.else.15
  %81 = load i32, i32* %retval
  ret i32 %81
}

declare void @gimp_cage_config_add_cage_point(%struct._GimpCageConfig*, double, double) #1

declare void @gimp_cage_config_select_point(%struct._GimpCageConfig*, i32) #1

declare void @gimp_cage_config_toggle_point_selection(%struct._GimpCageConfig*, i32) #1

declare i32 @gimp_cage_config_point_is_selected(%struct._GimpCageConfig*, i32) #1

declare void @gimp_cage_config_insert_cage_point(%struct._GimpCageConfig*, i32, double, double) #1

declare void @gimp_tool_control(%struct._GimpTool*, i32, %struct._GimpDisplay*) #1

declare void @gimp_image_map_abort(%struct._GimpImageMap*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_cage_config_get_type() #2

declare void @gimp_draw_tool_start(%struct._GimpDrawTool*, %struct._GimpDisplay*) #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #5

declare { double, double } @gimp_cage_config_get_point_coordinate(%struct._GimpCageConfig*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

declare double @gimp_draw_tool_calc_distance_square(%struct._GimpDrawTool*, %struct._GimpDisplay*, double, double, double, double) #1

declare void @gimp_vector2_sub(%struct._GimpVector2*, %struct._GimpVector2*, %struct._GimpVector2*) #1

declare double @gimp_vector2_length(%struct._GimpVector2*) #1

; Function Attrs: nounwind
declare double @sqrt(double) #4

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #2

declare void @gimp_tool_control_halt(%struct._GimpToolControl*) #1

declare void @gimp_cage_config_remove_last_cage_point(%struct._GimpCageConfig*) #1

declare void @gimp_cage_config_commit_displacement(%struct._GimpCageConfig*) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare void @gimp_cage_config_select_add_area(%struct._GimpCageConfig*, i32, i64, i64) #1

declare void @gimp_cage_config_select_area(%struct._GimpCageConfig*, i32, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_cage_tool_remove_last_handle(%struct._GimpCageTool* %ct) #3 {
entry:
  %ct.addr = alloca %struct._GimpCageTool*, align 8
  %config = alloca %struct._GimpCageConfig*, align 8
  store %struct._GimpCageTool* %ct, %struct._GimpCageTool** %ct.addr, align 8
  %0 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %config1 = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %0, i32 0, i32 1
  %1 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config1, align 8
  store %struct._GimpCageConfig* %1, %struct._GimpCageConfig** %config, align 8
  %2 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %3 = bitcast %struct._GimpCageTool* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_draw_tool_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %4)
  %5 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  call void @gimp_cage_config_remove_last_cage_point(%struct._GimpCageConfig* %5)
  %6 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %7 = bitcast %struct._GimpCageTool* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_draw_tool_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %8)
  ret void
}

declare void @gimp_cage_config_remove_selected_points(%struct._GimpCageConfig*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_cage_tool_is_complete(%struct._GimpCageTool* %ct) #3 {
entry:
  %ct.addr = alloca %struct._GimpCageTool*, align 8
  store %struct._GimpCageTool* %ct, %struct._GimpCageTool** %ct.addr, align 8
  %0 = load %struct._GimpCageTool*, %struct._GimpCageTool** %ct.addr, align 8
  %tool_state = getelementptr inbounds %struct._GimpCageTool, %struct._GimpCageTool* %0, i32 0, i32 17
  %1 = load i32, i32* %tool_state, align 4
  %cmp = icmp sgt i32 %1, 4
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare void @gimp_tool_control_push_preserve(%struct._GimpToolControl*, i32) #1

declare void @gimp_image_map_commit(%struct._GimpImageMap*) #1

declare void @gimp_tool_control_pop_preserve(%struct._GimpToolControl*) #1

declare void @gimp_image_flush(%struct._GimpImage*) #1

declare void @gimp_cage_config_add_displacement(%struct._GimpCageConfig*, i32, double, double) #1

declare void @gimp_tool_control_set_cursor_modifier(%struct._GimpToolControl*, i32) #1

declare %struct._GimpCanvasGroup* @gimp_draw_tool_add_stroke_group(%struct._GimpDrawTool*) #1

declare void @gimp_draw_tool_push_group(%struct._GimpDrawTool*, %struct._GimpCanvasGroup*) #1

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_line(%struct._GimpDrawTool*, double, double, double, double) #1

declare void @gimp_draw_tool_pop_group(%struct._GimpDrawTool*) #1

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool*, i32, double, double, i32, i32, i32) #1

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_rectangle(%struct._GimpDrawTool*, i32, double, double, double, double) #1

declare void @gimp_tool_control_set_preserve(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_dirty_mask(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_wants_click(%struct._GimpToolControl*, i32) #1

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
