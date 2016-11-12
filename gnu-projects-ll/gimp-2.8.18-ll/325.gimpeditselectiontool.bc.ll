; ModuleID = './app/tools/gimpeditselectiontool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpEditSelectionToolClass = type { %struct._GimpDrawToolClass }
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
%struct._GimpContext = type opaque
%struct._GimpDisplayConfig = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GdkEventKey = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32, i8*, i16, i8, i8 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpUIManager = type opaque
%struct._GimpToolOptions = type opaque
%struct._GimpDrawTool = type { %struct._GimpTool, %struct._GimpDisplay*, i32, i32, i64, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GList* }
%struct._GimpEditSelectionTool = type { %struct._GimpDrawTool, i32, i32, i32, i32, i32, i32, i32, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, double, double, i32, %struct._GList*, %struct._GList*, i32, i32, i32, double, double, double, double }
%struct._BoundSeg = type { i32, i32, i32, i32, i8 }
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
%struct._GimpZoomModel = type { %struct._GObject, i8* }
%struct._Selection = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpColorDisplayStack = type { %struct._GObject, %struct._GList* }
%struct._GimpTreeHandler = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GeglNode = type opaque
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpLayerMask = type { %struct._GimpChannel, %struct._GimpLayer*, i32, i32, i32 }
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._GimpVectors = type { %struct._GimpItem, %struct._GList*, i32, i32, double, %struct.cairo_path*, i32, i32, double, double, double, double }
%struct.cairo_path = type { i32, %union._cairo_path_data_t*, i32 }
%union._cairo_path_data_t = type { %struct.anon.1 }
%struct.anon.1 = type { double, double }
%struct._GimpItemClass = type { %struct._GimpViewableClass, void (%struct._GimpItem*)*, void (%struct._GimpItem*)*, void (%struct._GimpItem*)*, void (%struct._GimpItem*)*, void (%struct._GimpItem*)*, i32 (%struct._GimpItem*)*, i32 (%struct._GimpItem*)*, %struct._GimpItemTree* (%struct._GimpItem*)*, %struct._GimpItem* (%struct._GimpItem*, i64)*, void (%struct._GimpItem*, %struct._GimpImage*)*, i32 (%struct._GimpItem*, i8*, i8*, %struct._GError**)*, void (%struct._GimpItem*, i32, i32, i32)*, void (%struct._GimpItem*, i32, i32, i32, i32, i32, %struct._GimpProgress*)*, void (%struct._GimpItem*, %struct._GimpContext*, i32, i32, i32, i32)*, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, i32)*, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32)*, void (%struct._GimpItem*, %struct._GimpContext*, %struct._GimpMatrix3*, i32, i32, i32, i32, %struct._GimpProgress*)*, i32 (%struct._GimpItem*, %struct._GimpDrawable*, %struct._GimpStrokeOptions*, i32, %struct._GimpProgress*, %struct._GError**)*, void (%struct._GimpItem*, i32, i32, i32, double, double)*, %struct._GeglNode* (%struct._GimpItem*)*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._GimpViewableClass = type { %struct._GimpObjectClass, i8*, i8*, void (%struct._GimpViewable*)*, void (%struct._GimpViewable*)*, i32 (%struct._GimpViewable*, i32*, i32*)*, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, i8* (%struct._GimpViewable*, i8**)*, %struct._GimpContainer* (%struct._GimpViewable*)*, void (%struct._GimpViewable*, i32)*, i32 (%struct._GimpViewable*)* }
%struct._TempBuf = type opaque
%struct._GimpItemTree = type opaque
%struct._GimpMatrix3 = type { [3 x [3 x double]] }
%struct._GimpStrokeOptions = type opaque
%struct._GimpUndo = type { %struct._GimpViewable, %struct._GimpImage*, i32, i32, i32, %struct._TempBuf*, i32 }
%union._GdkEvent = type { %struct._GdkEventCrossing }
%struct._GdkEventCrossing = type { i32, %struct._GdkDrawable*, i8, %struct._GdkDrawable*, i32, double, double, double, double, i32, i32, i32, i32 }
%struct._GdkEventAny = type { i32, %struct._GdkDrawable*, i8 }
%struct._GimpSelection = type { %struct._GimpChannel, i32 }
%struct._GimpProjection = type { %struct._GimpObject, %struct._GimpProjectable*, %struct._TilePyramid*, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglProcessor*, %struct._GSList*, %struct._GimpProjectionIdleRender, i32, i32, i32 }
%struct._GimpProjectable = type opaque
%struct._TilePyramid = type opaque
%struct._GeglProcessor = type opaque
%struct._GimpProjectionIdleRender = type { i32, i32, i32, i32, i32, i32, i32, %struct._GSList* }

@gimp_edit_selection_tool_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"GimpEditSelectionTool\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"tool-info\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Move: \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Move Floating Selection\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"edit-selection-tool\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"edit-selection-item\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"edit-selection-type\00", align 1
@gimp_edit_selection_tool_parent_class = internal global i8* null, align 8
@GimpEditSelectionTool_private_offset = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"Gimp-Tools\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"file %s: line %d (%s): should not be reached\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"gimpeditselectiontool.c\00", align 1
@__func__.gimp_edit_selection_tool_start_undo_group = private unnamed_addr constant [42 x i8] c"gimp_edit_selection_tool_start_undo_group\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_edit_selection_tool_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_edit_selection_tool_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_edit_selection_tool_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 288, void (i8*, i8*)* bitcast (void (i8*)* @gimp_edit_selection_tool_class_intern_init to void (i8*, i8*)*), i32 400, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpEditSelectionTool*)* @gimp_edit_selection_tool_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_edit_selection_tool_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_edit_selection_tool_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_draw_tool_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_edit_selection_tool_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_edit_selection_tool_parent_class, align 8
  %1 = load i32, i32* @GimpEditSelectionTool_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpEditSelectionTool_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpEditSelectionToolClass*
  call void @gimp_edit_selection_tool_class_init(%struct._GimpEditSelectionToolClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_edit_selection_tool_init(%struct._GimpEditSelectionTool* %edit_select) #3 {
entry:
  %edit_select.addr = alloca %struct._GimpEditSelectionTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  store %struct._GimpEditSelectionTool* %edit_select, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %0 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %1 = bitcast %struct._GimpEditSelectionTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 3
  %4 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_set_motion_mode(%struct._GimpToolControl* %4, i32 1)
  %5 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %first_move = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %5, i32 0, i32 20
  store i32 1, i32* %first_move, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_edit_selection_tool_start(%struct._GimpTool* %parent_tool, %struct._GimpDisplay* %display, %struct._GimpCoords* %coords, i32 %edit_mode, i32 %propagate_release) #3 {
entry:
  %parent_tool.addr = alloca %struct._GimpTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %edit_mode.addr = alloca i32, align 4
  %propagate_release.addr = alloca i32, align 4
  %edit_select = alloca %struct._GimpEditSelectionTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %active_item = alloca %struct._GimpItem*, align 8
  %channel = alloca %struct._GimpChannel*, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %segs_in = alloca %struct._BoundSeg*, align 8
  %segs_out = alloca %struct._BoundSeg*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %x177 = alloca i32, align 4
  %y179 = alloca i32, align 4
  %x281 = alloca i32, align 4
  %y283 = alloca i32, align 4
  %linked = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %x3 = alloca i32, align 4
  %y3 = alloca i32, align 4
  %x4 = alloca i32, align 4
  %y4 = alloca i32, align 4
  %xd1 = alloca double, align 8
  %yd1 = alloca double, align 8
  %xd2 = alloca double, align 8
  %yd2 = alloca double, align 8
  %linked160 = alloca %struct._GList*, align 8
  %list162 = alloca %struct._GList*, align 8
  %item169 = alloca %struct._GimpItem*, align 8
  %x3172 = alloca double, align 8
  %y3174 = alloca double, align 8
  %x4176 = alloca double, align 8
  %y4178 = alloca double, align 8
  store %struct._GimpTool* %parent_tool, %struct._GimpTool** %parent_tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %edit_mode, i32* %edit_mode.addr, align 4
  store i32 %propagate_release, i32* %propagate_release.addr, align 4
  %call = call i64 @gimp_edit_selection_tool_get_type() #7
  %0 = load %struct._GimpTool*, %struct._GimpTool** %parent_tool.addr, align 8
  %tool_info = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %0, i32 0, i32 1
  %1 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), %struct._GimpToolInfo* %1, i8* null)
  %2 = bitcast i8* %call1 to %struct._GimpEditSelectionTool*
  store %struct._GimpEditSelectionTool* %2, %struct._GimpEditSelectionTool** %edit_select, align 8
  %3 = load i32, i32* %propagate_release.addr, align 4
  %4 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %propagate_release2 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %4, i32 0, i32 21
  store i32 %3, i32* %propagate_release2, align 4
  %5 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %6 = bitcast %struct._GimpEditSelectionTool* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_tool_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpTool*
  store %struct._GimpTool* %7, %struct._GimpTool** %tool, align 8
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call5 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %8)
  store %struct._GimpDisplayShell* %call5, %struct._GimpDisplayShell** %shell, align 8
  %9 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call6 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %9)
  store %struct._GimpImage* %call6, %struct._GimpImage** %image, align 8
  %10 = load i32, i32* %edit_mode.addr, align 4
  %cmp = icmp eq i32 %10, 4
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %11 = load i32, i32* %edit_mode.addr, align 4
  %cmp7 = icmp eq i32 %11, 5
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call8 = call %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage* %12)
  %tobool = icmp ne %struct._GimpLayer* %call8, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 7, i32* %edit_mode.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.lhs.false
  %13 = load i32, i32* %edit_mode.addr, align 4
  %cmp9 = icmp eq i32 %13, 6
  br i1 %cmp9, label %if.then.10, label %if.end.16

if.then.10:                                       ; preds = %if.end
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call11 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %14)
  store %struct._GimpLayer* %call11, %struct._GimpLayer** %layer, align 8
  %15 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call12 = call i32 @gimp_layer_is_floating_sel(%struct._GimpLayer* %15)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.10
  store i32 7, i32* %edit_mode.addr, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.then.10
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.end
  %16 = load i32, i32* %edit_mode.addr, align 4
  %17 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %edit_mode17 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %17, i32 0, i32 17
  store i32 %16, i32* %edit_mode17, align 4
  %18 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call18 = call %struct._GimpItem* @gimp_edit_selection_tool_get_active_item(%struct._GimpEditSelectionTool* %18, %struct._GimpImage* %19)
  store %struct._GimpItem* %call18, %struct._GimpItem** %active_item, align 8
  %20 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_edit_selection_tool_start_undo_group(%struct._GimpEditSelectionTool* %20, %struct._GimpImage* %21)
  %22 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %22, i32* %off_x, i32* %off_y)
  %23 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %23, i32 0, i32 0
  %24 = load double, double* %x, align 8
  %25 = load i32, i32* %off_x, align 4
  %conv = sitofp i32 %25 to double
  %sub = fsub double %24, %conv
  %conv19 = fptosi double %sub to i32
  %26 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %origx = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %26, i32 0, i32 1
  store i32 %conv19, i32* %origx, align 4
  %27 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %x20 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %27, i32 0, i32 5
  store i32 %conv19, i32* %x20, align 4
  %28 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %28, i32 0, i32 1
  %29 = load double, double* %y, align 8
  %30 = load i32, i32* %off_y, align 4
  %conv21 = sitofp i32 %30 to double
  %sub22 = fsub double %29, %conv21
  %conv23 = fptosi double %sub22 to i32
  %31 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %origy = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %31, i32 0, i32 2
  store i32 %conv23, i32* %origy, align 4
  %32 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %y24 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %32, i32 0, i32 6
  store i32 %conv23, i32* %y24, align 4
  %33 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x25 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %33, i32 0, i32 0
  %34 = load double, double* %x25, align 8
  %35 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %start_x = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %35, i32 0, i32 23
  store double %34, double* %start_x, align 8
  %36 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y26 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %36, i32 0, i32 1
  %37 = load double, double* %y26, align 8
  %38 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %start_y = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %38, i32 0, i32 24
  store double %37, double* %start_y, align 8
  %39 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %constrain = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %39, i32 0, i32 22
  store i32 0, i32* %constrain, align 4
  %40 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  %41 = bitcast %struct._GimpItem* %40 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %41, %struct._GTypeInstance** %__inst, align 8
  %call27 = call i64 @gimp_channel_get_type() #7
  store i64 %call27, i64* %__t, align 8
  %42 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool28 = icmp ne %struct._GTypeInstance* %42, null
  br i1 %tobool28, label %if.else, label %if.then.29

if.then.29:                                       ; preds = %if.end.16
  store i32 0, i32* %__r, align 4
  br label %if.end.39

if.else:                                          ; preds = %if.end.16
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %43, i32 0, i32 0
  %44 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool30 = icmp ne %struct._GTypeClass* %44, null
  br i1 %tobool30, label %land.lhs.true.31, label %if.else.36

land.lhs.true.31:                                 ; preds = %if.else
  %45 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class32 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %45, i32 0, i32 0
  %46 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class32, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %46, i32 0, i32 0
  %47 = load i64, i64* %g_type, align 8
  %48 = load i64, i64* %__t, align 8
  %cmp33 = icmp eq i64 %47, %48
  br i1 %cmp33, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %land.lhs.true.31
  store i32 1, i32* %__r, align 4
  br label %if.end.38

if.else.36:                                       ; preds = %land.lhs.true.31, %if.else
  %49 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %50 = load i64, i64* %__t, align 8
  %call37 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %49, i64 %50) #8
  store i32 %call37, i32* %__r, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.36, %if.then.35
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.29
  %51 = load i32, i32* %__r, align 4
  store i32 %51, i32* %tmp
  %52 = load i32, i32* %tmp
  %tobool40 = icmp ne i32 %52, 0
  br i1 %tobool40, label %if.then.41, label %if.else.44

if.then.41:                                       ; preds = %if.end.39
  %53 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  %54 = bitcast %struct._GimpItem* %53 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_channel_get_type() #7
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call42)
  %55 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpChannel*
  store %struct._GimpChannel* %55, %struct._GimpChannel** %channel, align 8
  br label %if.end.46

if.else.44:                                       ; preds = %if.end.39
  %56 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call45 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %56)
  store %struct._GimpChannel* %call45, %struct._GimpChannel** %channel, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.44, %if.then.41
  %57 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %58 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %num_segs_in = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %58, i32 0, i32 7
  %59 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %num_segs_out = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %59, i32 0, i32 8
  %call47 = call i32 @gimp_channel_boundary(%struct._GimpChannel* %57, %struct._BoundSeg** %segs_in, %struct._BoundSeg** %segs_out, i32* %num_segs_in, i32* %num_segs_out, i32 0, i32 0, i32 0, i32 0)
  %60 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_in, align 8
  %61 = bitcast %struct._BoundSeg* %60 to i8*
  %62 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %num_segs_in48 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %62, i32 0, i32 7
  %63 = load i32, i32* %num_segs_in48, align 4
  %conv49 = sext i32 %63 to i64
  %mul = mul i64 %conv49, 20
  %conv50 = trunc i64 %mul to i32
  %call51 = call noalias i8* @g_memdup(i8* %61, i32 %conv50)
  %64 = bitcast i8* %call51 to %struct._BoundSeg*
  %65 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %segs_in52 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %65, i32 0, i32 9
  store %struct._BoundSeg* %64, %struct._BoundSeg** %segs_in52, align 8
  %66 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_out, align 8
  %67 = bitcast %struct._BoundSeg* %66 to i8*
  %68 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %num_segs_out53 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %68, i32 0, i32 8
  %69 = load i32, i32* %num_segs_out53, align 4
  %conv54 = sext i32 %69 to i64
  %mul55 = mul i64 %conv54, 20
  %conv56 = trunc i64 %mul55 to i32
  %call57 = call noalias i8* @g_memdup(i8* %67, i32 %conv56)
  %70 = bitcast i8* %call57 to %struct._BoundSeg*
  %71 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %segs_out58 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %71, i32 0, i32 10
  store %struct._BoundSeg* %70, %struct._BoundSeg** %segs_out58, align 8
  %72 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %edit_mode59 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %72, i32 0, i32 17
  %73 = load i32, i32* %edit_mode59, align 4
  %cmp60 = icmp eq i32 %73, 0
  br i1 %cmp60, label %if.then.62, label %if.else.65

if.then.62:                                       ; preds = %if.end.46
  %74 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %x1 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %74, i32 0, i32 11
  store i32 0, i32* %x1, align 4
  %75 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %y1 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %75, i32 0, i32 12
  store i32 0, i32* %y1, align 4
  %76 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call63 = call i32 @gimp_image_get_width(%struct._GimpImage* %76)
  %77 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %x2 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %77, i32 0, i32 13
  store i32 %call63, i32* %x2, align 4
  %78 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call64 = call i32 @gimp_image_get_height(%struct._GimpImage* %78)
  %79 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %y2 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %79, i32 0, i32 14
  store i32 %call64, i32* %y2, align 4
  br label %if.end.71

if.else.65:                                       ; preds = %if.end.46
  %80 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  %81 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %x166 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %81, i32 0, i32 11
  %82 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %y167 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %82, i32 0, i32 12
  %83 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %x268 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %83, i32 0, i32 13
  %84 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %y269 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %84, i32 0, i32 14
  %call70 = call i32 @gimp_item_mask_bounds(%struct._GimpItem* %80, i32* %x166, i32* %y167, i32* %x268, i32* %y269)
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.65, %if.then.62
  %85 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %86 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %origx72 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %86, i32 0, i32 1
  %87 = load i32, i32* %origx72, align 4
  %conv73 = sitofp i32 %87 to double
  %88 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %origy74 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %88, i32 0, i32 2
  %89 = load i32, i32* %origy74, align 4
  %conv75 = sitofp i32 %89 to double
  call void @gimp_edit_selection_tool_calc_coords(%struct._GimpEditSelectionTool* %85, double %conv73, double %conv75)
  %90 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %edit_mode84 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %90, i32 0, i32 17
  %91 = load i32, i32* %edit_mode84, align 4
  switch i32 %91, label %sw.epilog [
    i32 1, label %sw.bb
    i32 3, label %sw.bb
    i32 2, label %sw.bb
    i32 4, label %sw.bb.91
    i32 5, label %sw.bb.91
    i32 6, label %sw.bb.100
    i32 7, label %sw.bb.100
    i32 0, label %sw.bb.148
  ]

sw.bb:                                            ; preds = %if.end.71, %if.end.71, %if.end.71
  %92 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  %93 = bitcast %struct._GimpItem* %92 to %struct._GTypeInstance*
  %call85 = call i64 @gimp_channel_get_type() #7
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 %call85)
  %94 = bitcast %struct._GTypeInstance* %call86 to %struct._GimpChannel*
  %call87 = call i32 @gimp_channel_bounds(%struct._GimpChannel* %94, i32* %x177, i32* %y179, i32* %x281, i32* %y283)
  %95 = load i32, i32* %off_x, align 4
  %96 = load i32, i32* %x177, align 4
  %add = add nsw i32 %96, %95
  store i32 %add, i32* %x177, align 4
  %97 = load i32, i32* %off_y, align 4
  %98 = load i32, i32* %y179, align 4
  %add88 = add nsw i32 %98, %97
  store i32 %add88, i32* %y179, align 4
  %99 = load i32, i32* %off_x, align 4
  %100 = load i32, i32* %x281, align 4
  %add89 = add nsw i32 %100, %99
  store i32 %add89, i32* %x281, align 4
  %101 = load i32, i32* %off_y, align 4
  %102 = load i32, i32* %y283, align 4
  %add90 = add nsw i32 %102, %101
  store i32 %add90, i32* %y283, align 4
  br label %sw.epilog

sw.bb.91:                                         ; preds = %if.end.71, %if.end.71
  %103 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %x192 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %103, i32 0, i32 11
  %104 = load i32, i32* %x192, align 4
  %105 = load i32, i32* %off_x, align 4
  %add93 = add nsw i32 %104, %105
  store i32 %add93, i32* %x177, align 4
  %106 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %y194 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %106, i32 0, i32 12
  %107 = load i32, i32* %y194, align 4
  %108 = load i32, i32* %off_y, align 4
  %add95 = add nsw i32 %107, %108
  store i32 %add95, i32* %y179, align 4
  %109 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %x296 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %109, i32 0, i32 13
  %110 = load i32, i32* %x296, align 4
  %111 = load i32, i32* %off_x, align 4
  %add97 = add nsw i32 %110, %111
  store i32 %add97, i32* %x281, align 4
  %112 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %y298 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %112, i32 0, i32 14
  %113 = load i32, i32* %y298, align 4
  %114 = load i32, i32* %off_y, align 4
  %add99 = add nsw i32 %113, %114
  store i32 %add99, i32* %y283, align 4
  br label %sw.epilog

sw.bb.100:                                        ; preds = %if.end.71, %if.end.71
  %115 = load i32, i32* %off_x, align 4
  store i32 %115, i32* %x177, align 4
  %116 = load i32, i32* %off_y, align 4
  store i32 %116, i32* %y179, align 4
  %117 = load i32, i32* %x177, align 4
  %118 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  %call101 = call i32 @gimp_item_get_width(%struct._GimpItem* %118)
  %add102 = add nsw i32 %117, %call101
  store i32 %add102, i32* %x281, align 4
  %119 = load i32, i32* %y179, align 4
  %120 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  %call103 = call i32 @gimp_item_get_height(%struct._GimpItem* %120)
  %add104 = add nsw i32 %119, %call103
  store i32 %add104, i32* %y283, align 4
  %121 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  %call105 = call i32 @gimp_item_get_linked(%struct._GimpItem* %121)
  %tobool106 = icmp ne i32 %call105, 0
  br i1 %tobool106, label %if.then.107, label %if.end.147

if.then.107:                                      ; preds = %sw.bb.100
  %122 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call110 = call %struct._GList* @gimp_image_item_list_get_list(%struct._GimpImage* %122, i32 1, i32 4)
  store %struct._GList* %call110, %struct._GList** %linked, align 8
  %123 = load %struct._GList*, %struct._GList** %linked, align 8
  %call111 = call %struct._GList* @gimp_image_item_list_filter(%struct._GList* %123)
  store %struct._GList* %call111, %struct._GList** %linked, align 8
  %124 = load %struct._GList*, %struct._GList** %linked, align 8
  store %struct._GList* %124, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.145, %if.then.107
  %125 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool112 = icmp ne %struct._GList* %125, null
  br i1 %tobool112, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %126 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %126, i32 0, i32 0
  %127 = load i8*, i8** %data, align 8
  %128 = bitcast i8* %127 to %struct._GimpItem*
  store %struct._GimpItem* %128, %struct._GimpItem** %item, align 8
  %129 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %129, i32* %x3, i32* %y3)
  %130 = load i32, i32* %x3, align 4
  %131 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call118 = call i32 @gimp_item_get_width(%struct._GimpItem* %131)
  %add119 = add nsw i32 %130, %call118
  store i32 %add119, i32* %x4, align 4
  %132 = load i32, i32* %y3, align 4
  %133 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call120 = call i32 @gimp_item_get_height(%struct._GimpItem* %133)
  %add121 = add nsw i32 %132, %call120
  store i32 %add121, i32* %y4, align 4
  %134 = load i32, i32* %x177, align 4
  %135 = load i32, i32* %x3, align 4
  %cmp122 = icmp slt i32 %134, %135
  br i1 %cmp122, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %136 = load i32, i32* %x177, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %137 = load i32, i32* %x3, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %136, %cond.true ], [ %137, %cond.false ]
  store i32 %cond, i32* %x177, align 4
  %138 = load i32, i32* %y179, align 4
  %139 = load i32, i32* %y3, align 4
  %cmp124 = icmp slt i32 %138, %139
  br i1 %cmp124, label %cond.true.126, label %cond.false.127

cond.true.126:                                    ; preds = %cond.end
  %140 = load i32, i32* %y179, align 4
  br label %cond.end.128

cond.false.127:                                   ; preds = %cond.end
  %141 = load i32, i32* %y3, align 4
  br label %cond.end.128

cond.end.128:                                     ; preds = %cond.false.127, %cond.true.126
  %cond129 = phi i32 [ %140, %cond.true.126 ], [ %141, %cond.false.127 ]
  store i32 %cond129, i32* %y179, align 4
  %142 = load i32, i32* %x281, align 4
  %143 = load i32, i32* %x4, align 4
  %cmp130 = icmp sgt i32 %142, %143
  br i1 %cmp130, label %cond.true.132, label %cond.false.133

cond.true.132:                                    ; preds = %cond.end.128
  %144 = load i32, i32* %x281, align 4
  br label %cond.end.134

cond.false.133:                                   ; preds = %cond.end.128
  %145 = load i32, i32* %x4, align 4
  br label %cond.end.134

cond.end.134:                                     ; preds = %cond.false.133, %cond.true.132
  %cond135 = phi i32 [ %144, %cond.true.132 ], [ %145, %cond.false.133 ]
  store i32 %cond135, i32* %x281, align 4
  %146 = load i32, i32* %y283, align 4
  %147 = load i32, i32* %y4, align 4
  %cmp136 = icmp sgt i32 %146, %147
  br i1 %cmp136, label %cond.true.138, label %cond.false.139

cond.true.138:                                    ; preds = %cond.end.134
  %148 = load i32, i32* %y283, align 4
  br label %cond.end.140

cond.false.139:                                   ; preds = %cond.end.134
  %149 = load i32, i32* %y4, align 4
  br label %cond.end.140

cond.end.140:                                     ; preds = %cond.false.139, %cond.true.138
  %cond141 = phi i32 [ %148, %cond.true.138 ], [ %149, %cond.false.139 ]
  store i32 %cond141, i32* %y283, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.140
  %150 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool142 = icmp ne %struct._GList* %150, null
  br i1 %tobool142, label %cond.true.143, label %cond.false.144

cond.true.143:                                    ; preds = %for.inc
  %151 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %151, i32 0, i32 1
  %152 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end.145

cond.false.144:                                   ; preds = %for.inc
  br label %cond.end.145

cond.end.145:                                     ; preds = %cond.false.144, %cond.true.143
  %cond146 = phi %struct._GList* [ %152, %cond.true.143 ], [ null, %cond.false.144 ]
  store %struct._GList* %cond146, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %153 = load %struct._GList*, %struct._GList** %linked, align 8
  call void @g_list_free(%struct._GList* %153)
  br label %if.end.147

if.end.147:                                       ; preds = %for.end, %sw.bb.100
  br label %sw.epilog

sw.bb.148:                                        ; preds = %if.end.71
  %154 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  %155 = bitcast %struct._GimpItem* %154 to %struct._GTypeInstance*
  %call153 = call i64 @gimp_vectors_get_type() #7
  %call154 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %155, i64 %call153)
  %156 = bitcast %struct._GTypeInstance* %call154 to %struct._GimpVectors*
  %call155 = call i32 @gimp_vectors_bounds(%struct._GimpVectors* %156, double* %xd1, double* %yd1, double* %xd2, double* %yd2)
  %157 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  %call156 = call i32 @gimp_item_get_linked(%struct._GimpItem* %157)
  %tobool157 = icmp ne i32 %call156, 0
  br i1 %tobool157, label %if.then.158, label %if.end.214

if.then.158:                                      ; preds = %sw.bb.148
  %158 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call163 = call %struct._GList* @gimp_image_item_list_get_list(%struct._GimpImage* %158, i32 4, i32 4)
  store %struct._GList* %call163, %struct._GList** %linked160, align 8
  %159 = load %struct._GList*, %struct._GList** %linked160, align 8
  %call164 = call %struct._GList* @gimp_image_item_list_filter(%struct._GList* %159)
  store %struct._GList* %call164, %struct._GList** %linked160, align 8
  %160 = load %struct._GList*, %struct._GList** %linked160, align 8
  store %struct._GList* %160, %struct._GList** %list162, align 8
  br label %for.cond.165

for.cond.165:                                     ; preds = %cond.end.211, %if.then.158
  %161 = load %struct._GList*, %struct._GList** %list162, align 8
  %tobool166 = icmp ne %struct._GList* %161, null
  br i1 %tobool166, label %for.body.167, label %for.end.213

for.body.167:                                     ; preds = %for.cond.165
  %162 = load %struct._GList*, %struct._GList** %list162, align 8
  %data170 = getelementptr inbounds %struct._GList, %struct._GList* %162, i32 0, i32 0
  %163 = load i8*, i8** %data170, align 8
  %164 = bitcast i8* %163 to %struct._GimpItem*
  store %struct._GimpItem* %164, %struct._GimpItem** %item169, align 8
  %165 = load %struct._GimpItem*, %struct._GimpItem** %item169, align 8
  %166 = bitcast %struct._GimpItem* %165 to %struct._GTypeInstance*
  %call179 = call i64 @gimp_vectors_get_type() #7
  %call180 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %166, i64 %call179)
  %167 = bitcast %struct._GTypeInstance* %call180 to %struct._GimpVectors*
  %call181 = call i32 @gimp_vectors_bounds(%struct._GimpVectors* %167, double* %x3172, double* %y3174, double* %x4176, double* %y4178)
  %168 = load double, double* %xd1, align 8
  %169 = load double, double* %x3172, align 8
  %cmp182 = fcmp olt double %168, %169
  br i1 %cmp182, label %cond.true.184, label %cond.false.185

cond.true.184:                                    ; preds = %for.body.167
  %170 = load double, double* %xd1, align 8
  br label %cond.end.186

cond.false.185:                                   ; preds = %for.body.167
  %171 = load double, double* %x3172, align 8
  br label %cond.end.186

cond.end.186:                                     ; preds = %cond.false.185, %cond.true.184
  %cond187 = phi double [ %170, %cond.true.184 ], [ %171, %cond.false.185 ]
  store double %cond187, double* %xd1, align 8
  %172 = load double, double* %yd1, align 8
  %173 = load double, double* %y3174, align 8
  %cmp188 = fcmp olt double %172, %173
  br i1 %cmp188, label %cond.true.190, label %cond.false.191

cond.true.190:                                    ; preds = %cond.end.186
  %174 = load double, double* %yd1, align 8
  br label %cond.end.192

cond.false.191:                                   ; preds = %cond.end.186
  %175 = load double, double* %y3174, align 8
  br label %cond.end.192

cond.end.192:                                     ; preds = %cond.false.191, %cond.true.190
  %cond193 = phi double [ %174, %cond.true.190 ], [ %175, %cond.false.191 ]
  store double %cond193, double* %yd1, align 8
  %176 = load double, double* %xd2, align 8
  %177 = load double, double* %x4176, align 8
  %cmp194 = fcmp ogt double %176, %177
  br i1 %cmp194, label %cond.true.196, label %cond.false.197

cond.true.196:                                    ; preds = %cond.end.192
  %178 = load double, double* %xd2, align 8
  br label %cond.end.198

cond.false.197:                                   ; preds = %cond.end.192
  %179 = load double, double* %x4176, align 8
  br label %cond.end.198

cond.end.198:                                     ; preds = %cond.false.197, %cond.true.196
  %cond199 = phi double [ %178, %cond.true.196 ], [ %179, %cond.false.197 ]
  store double %cond199, double* %xd2, align 8
  %180 = load double, double* %yd2, align 8
  %181 = load double, double* %y4178, align 8
  %cmp200 = fcmp ogt double %180, %181
  br i1 %cmp200, label %cond.true.202, label %cond.false.203

cond.true.202:                                    ; preds = %cond.end.198
  %182 = load double, double* %yd2, align 8
  br label %cond.end.204

cond.false.203:                                   ; preds = %cond.end.198
  %183 = load double, double* %y4178, align 8
  br label %cond.end.204

cond.end.204:                                     ; preds = %cond.false.203, %cond.true.202
  %cond205 = phi double [ %182, %cond.true.202 ], [ %183, %cond.false.203 ]
  store double %cond205, double* %yd2, align 8
  br label %for.inc.206

for.inc.206:                                      ; preds = %cond.end.204
  %184 = load %struct._GList*, %struct._GList** %list162, align 8
  %tobool207 = icmp ne %struct._GList* %184, null
  br i1 %tobool207, label %cond.true.208, label %cond.false.210

cond.true.208:                                    ; preds = %for.inc.206
  %185 = load %struct._GList*, %struct._GList** %list162, align 8
  %next209 = getelementptr inbounds %struct._GList, %struct._GList* %185, i32 0, i32 1
  %186 = load %struct._GList*, %struct._GList** %next209, align 8
  br label %cond.end.211

cond.false.210:                                   ; preds = %for.inc.206
  br label %cond.end.211

cond.end.211:                                     ; preds = %cond.false.210, %cond.true.208
  %cond212 = phi %struct._GList* [ %186, %cond.true.208 ], [ null, %cond.false.210 ]
  store %struct._GList* %cond212, %struct._GList** %list162, align 8
  br label %for.cond.165

for.end.213:                                      ; preds = %for.cond.165
  br label %if.end.214

if.end.214:                                       ; preds = %for.end.213, %sw.bb.148
  %187 = load double, double* %xd1, align 8
  %call215 = call double @floor(double %187) #7
  %add216 = fadd double %call215, 5.000000e-01
  %conv217 = fptosi double %add216 to i32
  store i32 %conv217, i32* %x177, align 4
  %188 = load double, double* %yd1, align 8
  %call218 = call double @floor(double %188) #7
  %add219 = fadd double %call218, 5.000000e-01
  %conv220 = fptosi double %add219 to i32
  store i32 %conv220, i32* %y179, align 4
  %189 = load double, double* %xd2, align 8
  %call221 = call double @ceil(double %189) #7
  %add222 = fadd double %call221, 5.000000e-01
  %conv223 = fptosi double %add222 to i32
  store i32 %conv223, i32* %x281, align 4
  %190 = load double, double* %yd2, align 8
  %call224 = call double @ceil(double %190) #7
  %add225 = fadd double %call224, 5.000000e-01
  %conv226 = fptosi double %add225 to i32
  store i32 %conv226, i32* %y283, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.71, %if.end.214, %if.end.147, %sw.bb.91, %sw.bb
  %191 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %191, i32 0, i32 3
  %192 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %193 = load i32, i32* %x177, align 4
  %conv227 = sitofp i32 %193 to double
  %194 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x228 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %194, i32 0, i32 0
  %195 = load double, double* %x228, align 8
  %sub229 = fsub double %conv227, %195
  %conv230 = fptosi double %sub229 to i32
  %196 = load i32, i32* %y179, align 4
  %conv231 = sitofp i32 %196 to double
  %197 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y232 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %197, i32 0, i32 1
  %198 = load double, double* %y232, align 8
  %sub233 = fsub double %conv231, %198
  %conv234 = fptosi double %sub233 to i32
  %199 = load i32, i32* %x281, align 4
  %200 = load i32, i32* %x177, align 4
  %sub235 = sub nsw i32 %199, %200
  %201 = load i32, i32* %y283, align 4
  %202 = load i32, i32* %y179, align 4
  %sub236 = sub nsw i32 %201, %202
  call void @gimp_tool_control_set_snap_offsets(%struct._GimpToolControl* %192, i32 %conv230, i32 %conv234, i32 %sub235, i32 %sub236)
  %203 = load i32, i32* %x177, align 4
  %204 = load i32, i32* %x281, align 4
  %add237 = add nsw i32 %203, %204
  %conv238 = sitofp i32 %add237 to double
  %div = fdiv double %conv238, 2.000000e+00
  %205 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %center_x = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %205, i32 0, i32 15
  store double %div, double* %center_x, align 8
  %206 = load i32, i32* %y179, align 4
  %207 = load i32, i32* %y283, align 4
  %add239 = add nsw i32 %206, %207
  %conv240 = sitofp i32 %add239 to double
  %div241 = fdiv double %conv240, 2.000000e+00
  %208 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %center_y = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %208, i32 0, i32 16
  store double %div241, double* %center_y, align 8
  %209 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  %call242 = call i32 @gimp_item_get_linked(%struct._GimpItem* %209)
  %tobool243 = icmp ne i32 %call242, 0
  br i1 %tobool243, label %if.then.244, label %if.else.256

if.then.244:                                      ; preds = %sw.epilog
  %210 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %edit_mode245 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %210, i32 0, i32 17
  %211 = load i32, i32* %edit_mode245, align 4
  switch i32 %211, label %sw.default [
    i32 1, label %sw.bb.246
    i32 6, label %sw.bb.246
    i32 0, label %sw.bb.246
  ]

sw.bb.246:                                        ; preds = %if.then.244, %if.then.244, %if.then.244
  %212 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call247 = call %struct._GList* @gimp_image_item_list_get_list(%struct._GimpImage* %212, i32 5, i32 4)
  %213 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %live_items = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %213, i32 0, i32 18
  store %struct._GList* %call247, %struct._GList** %live_items, align 8
  %214 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %live_items248 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %214, i32 0, i32 18
  %215 = load %struct._GList*, %struct._GList** %live_items248, align 8
  %call249 = call %struct._GList* @gimp_image_item_list_filter(%struct._GList* %215)
  %216 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %live_items250 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %216, i32 0, i32 18
  store %struct._GList* %call249, %struct._GList** %live_items250, align 8
  %217 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call251 = call %struct._GList* @gimp_image_item_list_get_list(%struct._GimpImage* %217, i32 2, i32 4)
  %218 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %delayed_items = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %218, i32 0, i32 19
  store %struct._GList* %call251, %struct._GList** %delayed_items, align 8
  %219 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %delayed_items252 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %219, i32 0, i32 19
  %220 = load %struct._GList*, %struct._GList** %delayed_items252, align 8
  %call253 = call %struct._GList* @gimp_image_item_list_filter(%struct._GList* %220)
  %221 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %delayed_items254 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %221, i32 0, i32 19
  store %struct._GList* %call253, %struct._GList** %delayed_items254, align 8
  br label %sw.epilog.255

sw.default:                                       ; preds = %if.then.244
  br label %sw.epilog.255

sw.epilog.255:                                    ; preds = %sw.default, %sw.bb.246
  br label %if.end.266

if.else.256:                                      ; preds = %sw.epilog
  %222 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %edit_mode257 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %222, i32 0, i32 17
  %223 = load i32, i32* %edit_mode257, align 4
  switch i32 %223, label %sw.default.264 [
    i32 0, label %sw.bb.258
    i32 6, label %sw.bb.258
    i32 7, label %sw.bb.258
    i32 1, label %sw.bb.261
    i32 2, label %sw.bb.261
    i32 3, label %sw.bb.261
  ]

sw.bb.258:                                        ; preds = %if.else.256, %if.else.256, %if.else.256
  %224 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  %225 = bitcast %struct._GimpItem* %224 to i8*
  %call259 = call %struct._GList* @g_list_append(%struct._GList* null, i8* %225)
  %226 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %live_items260 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %226, i32 0, i32 18
  store %struct._GList* %call259, %struct._GList** %live_items260, align 8
  br label %sw.epilog.265

sw.bb.261:                                        ; preds = %if.else.256, %if.else.256, %if.else.256
  %227 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  %228 = bitcast %struct._GimpItem* %227 to i8*
  %call262 = call %struct._GList* @g_list_append(%struct._GList* null, i8* %228)
  %229 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %delayed_items263 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %229, i32 0, i32 19
  store %struct._GList* %call262, %struct._GList** %delayed_items263, align 8
  br label %sw.epilog.265

sw.default.264:                                   ; preds = %if.else.256
  br label %sw.epilog.265

sw.epilog.265:                                    ; preds = %sw.default.264, %sw.bb.261, %sw.bb.258
  br label %if.end.266

if.end.266:                                       ; preds = %sw.epilog.265, %sw.epilog.255
  %230 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %230, i32 0, i32 1
  %231 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %232 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  call void @tool_manager_push_tool(%struct._Gimp* %231, %struct._GimpTool* %232)
  %233 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control267 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %233, i32 0, i32 3
  %234 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control267, align 8
  call void @gimp_tool_control_activate(%struct._GimpToolControl* %234)
  %235 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %236 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display268 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %236, i32 0, i32 4
  store %struct._GimpDisplay* %235, %struct._GimpDisplay** %display268, align 8
  %237 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_selection_pause(%struct._GimpDisplayShell* %237)
  %238 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %239 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %240 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control269 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %240, i32 0, i32 3
  %241 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control269, align 8
  %call270 = call i32 @gimp_tool_control_get_precision(%struct._GimpToolControl* %241)
  %call271 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)) #6
  call void @gimp_tool_push_status_coords(%struct._GimpTool* %238, %struct._GimpDisplay* %239, i32 %call270, i8* %call271, double 0.000000e+00, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), double 0.000000e+00, i8* null)
  %242 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %243 = bitcast %struct._GimpEditSelectionTool* %242 to %struct._GTypeInstance*
  %call272 = call i64 @gimp_draw_tool_get_type() #7
  %call273 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %243, i64 %call272)
  %244 = bitcast %struct._GTypeInstance* %call273 to %struct._GimpDrawTool*
  %245 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_draw_tool_start(%struct._GimpDrawTool* %244, %struct._GimpDisplay* %245)
  ret void
}

declare i8* @g_object_new(i64, i8*, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage*) #1

declare %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage*) #1

declare i32 @gimp_layer_is_floating_sel(%struct._GimpLayer*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpItem* @gimp_edit_selection_tool_get_active_item(%struct._GimpEditSelectionTool* %edit_select, %struct._GimpImage* %image) #3 {
entry:
  %edit_select.addr = alloca %struct._GimpEditSelectionTool*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %active_item = alloca %struct._GimpItem*, align 8
  store %struct._GimpEditSelectionTool* %edit_select, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  %0 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %edit_mode = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %0, i32 0, i32 17
  %1 = load i32, i32* %edit_mode, align 4
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 6, label %sw.bb.3
    i32 3, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %2)
  %3 = bitcast %struct._GimpVectors* %call to %struct._GTypeInstance*
  %call1 = call i64 @gimp_item_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpItem*
  store %struct._GimpItem* %4, %struct._GimpItem** %active_item, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call4 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %5)
  %6 = bitcast %struct._GimpLayer* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  store %struct._GimpItem* %7, %struct._GimpItem** %active_item, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call8 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %8)
  %9 = bitcast %struct._GimpChannel* %call8 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_item_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call9)
  %10 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpItem*
  store %struct._GimpItem* %10, %struct._GimpItem** %active_item, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call11 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %11)
  %12 = bitcast %struct._GimpDrawable* %call11 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call12)
  %13 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  store %struct._GimpItem* %13, %struct._GimpItem** %active_item, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.7, %sw.bb.3, %sw.bb
  %14 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  ret %struct._GimpItem* %14
}

; Function Attrs: nounwind uwtable
define internal void @gimp_edit_selection_tool_start_undo_group(%struct._GimpEditSelectionTool* %edit_select, %struct._GimpImage* %image) #3 {
entry:
  %edit_select.addr = alloca %struct._GimpEditSelectionTool*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %active_item = alloca %struct._GimpItem*, align 8
  %undo_desc = alloca i8*, align 8
  store %struct._GimpEditSelectionTool* %edit_select, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i8* null, i8** %undo_desc, align 8
  %0 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call %struct._GimpItem* @gimp_edit_selection_tool_get_active_item(%struct._GimpEditSelectionTool* %0, %struct._GimpImage* %1)
  store %struct._GimpItem* %call, %struct._GimpItem** %active_item, align 8
  %2 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %edit_mode = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %2, i32 0, i32 17
  %3 = load i32, i32* %edit_mode, align 4
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 6, label %sw.bb
    i32 4, label %sw.bb.1
    i32 5, label %sw.bb.1
    i32 7, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry
  %4 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  %5 = bitcast %struct._GimpItem* %4 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %7 = bitcast %struct._GTypeClass* %6 to %struct._GimpItemClass*
  %translate_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %7, i32 0, i32 23
  %8 = load i8*, i8** %translate_desc, align 8
  store i8* %8, i8** %undo_desc, align 8
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry, %entry, %entry
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0)) #6
  store i8* %call2, i8** %undo_desc, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0), i32 986, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__func__.gimp_edit_selection_tool_start_undo_group, i32 0, i32 0))
  br label %return

do.end:                                           ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.1, %sw.bb
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %10 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %edit_mode3 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %10, i32 0, i32 17
  %11 = load i32, i32* %edit_mode3, align 4
  %cmp = icmp eq i32 %11, 3
  %cond = select i1 %cmp, i32 16, i32 20
  %12 = load i8*, i8** %undo_desc, align 8
  %call4 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %9, i32 %cond, i8* %12)
  br label %return

return:                                           ; preds = %sw.epilog, %do.body
  ret void
}

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #1

declare i32 @gimp_channel_boundary(%struct._GimpChannel*, %struct._BoundSeg**, %struct._BoundSeg**, i32*, i32*, i32, i32, i32, i32) #1

declare noalias i8* @g_memdup(i8*, i32) #1

declare i32 @gimp_image_get_width(%struct._GimpImage*) #1

declare i32 @gimp_image_get_height(%struct._GimpImage*) #1

declare i32 @gimp_item_mask_bounds(%struct._GimpItem*, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_edit_selection_tool_calc_coords(%struct._GimpEditSelectionTool* %edit_select, double %x, double %y) #3 {
entry:
  %edit_select.addr = alloca %struct._GimpEditSelectionTool*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %x1 = alloca double, align 8
  %y1 = alloca double, align 8
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  store %struct._GimpEditSelectionTool* %edit_select, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %1 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %origx = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %1, i32 0, i32 1
  %2 = load i32, i32* %origx, align 4
  %conv = sitofp i32 %2 to double
  %sub = fsub double %0, %conv
  store double %sub, double* %dx, align 8
  %3 = load double, double* %y.addr, align 8
  %4 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %origy = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %4, i32 0, i32 2
  %5 = load i32, i32* %origy, align 4
  %conv1 = sitofp i32 %5 to double
  %sub2 = fsub double %3, %conv1
  store double %sub2, double* %dy, align 8
  %6 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %x13 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %6, i32 0, i32 11
  %7 = load i32, i32* %x13, align 4
  %conv4 = sitofp i32 %7 to double
  %8 = load double, double* %dx, align 8
  %add = fadd double %conv4, %8
  store double %add, double* %x1, align 8
  %9 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %y15 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %9, i32 0, i32 12
  %10 = load i32, i32* %y15, align 4
  %conv6 = sitofp i32 %10 to double
  %11 = load double, double* %dy, align 8
  %add7 = fadd double %conv6, %11
  store double %add7, double* %y1, align 8
  %12 = load double, double* %x1, align 8
  %call = call double @floor(double %12) #7
  %conv8 = fptosi double %call to i32
  %13 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %x19 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %13, i32 0, i32 11
  %14 = load i32, i32* %x19, align 4
  %15 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %origx10 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %15, i32 0, i32 1
  %16 = load i32, i32* %origx10, align 4
  %sub11 = sub nsw i32 %14, %16
  %sub12 = sub nsw i32 %conv8, %sub11
  %17 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %x14 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %17, i32 0, i32 5
  store i32 %sub12, i32* %x14, align 4
  %18 = load double, double* %y1, align 8
  %call15 = call double @floor(double %18) #7
  %conv16 = fptosi double %call15 to i32
  %19 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %y117 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %19, i32 0, i32 12
  %20 = load i32, i32* %y117, align 4
  %21 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %origy18 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %21, i32 0, i32 2
  %22 = load i32, i32* %origy18, align 4
  %sub19 = sub nsw i32 %20, %22
  %sub20 = sub nsw i32 %conv16, %sub19
  %23 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %y21 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %23, i32 0, i32 6
  store i32 %sub20, i32* %y21, align 4
  ret void
}

declare i32 @gimp_channel_bounds(%struct._GimpChannel*, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_item_get_width(%struct._GimpItem*) #1

declare i32 @gimp_item_get_height(%struct._GimpItem*) #1

declare i32 @gimp_item_get_linked(%struct._GimpItem*) #1

declare %struct._GList* @gimp_image_item_list_get_list(%struct._GimpImage*, i32, i32) #1

declare %struct._GList* @gimp_image_item_list_filter(%struct._GList*) #1

declare void @g_list_free(%struct._GList*) #1

declare i32 @gimp_vectors_bounds(%struct._GimpVectors*, double*, double*, double*, double*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_vectors_get_type() #2

; Function Attrs: nounwind readnone
declare double @floor(double) #2

; Function Attrs: nounwind readnone
declare double @ceil(double) #2

declare void @gimp_tool_control_set_snap_offsets(%struct._GimpToolControl*, i32, i32, i32, i32) #1

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare void @tool_manager_push_tool(%struct._Gimp*, %struct._GimpTool*) #1

declare void @gimp_tool_control_activate(%struct._GimpToolControl*) #1

declare void @gimp_display_shell_selection_pause(%struct._GimpDisplayShell*) #1

declare void @gimp_tool_push_status_coords(%struct._GimpTool*, %struct._GimpDisplay*, i32, i8*, double, i8*, double, i8*) #1

declare i32 @gimp_tool_control_get_precision(%struct._GimpToolControl*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare void @gimp_draw_tool_start(%struct._GimpDrawTool*, %struct._GimpDisplay*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_edit_selection_tool_key_press(%struct._GimpTool* %tool, %struct._GdkEventKey* %kevent, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %kevent.addr = alloca %struct._GdkEventKey*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %translate_type = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GdkEventKey* %kevent, %struct._GdkEventKey** %kevent.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %state = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %0, i32 0, i32 4
  %1 = load i32, i32* %state, align 4
  %and = and i32 %1, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %translate_type, align 4
  br label %if.end.6

if.else:                                          ; preds = %entry
  %2 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %state1 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %2, i32 0, i32 4
  %3 = load i32, i32* %state1, align 4
  %call = call i32 @gimp_get_toggle_behavior_mask()
  %and2 = and i32 %3, %call
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %if.else
  store i32 2, i32* %translate_type, align 4
  br label %if.end

if.else.5:                                        ; preds = %if.else
  store i32 0, i32* %translate_type, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %4 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %5 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %6 = load i32, i32* %translate_type, align 4
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call7 = call i32 @gimp_edit_selection_tool_translate(%struct._GimpTool* %4, %struct._GdkEventKey* %5, i32 %6, %struct._GimpDisplay* %7)
  ret i32 %call7
}

declare i32 @gimp_get_toggle_behavior_mask() #1

; Function Attrs: nounwind uwtable
define i32 @gimp_edit_selection_tool_translate(%struct._GimpTool* %tool, %struct._GdkEventKey* %kevent, i32 %translate_type, %struct._GimpDisplay* %display) #3 {
entry:
  %retval = alloca i32, align 4
  %tool.addr = alloca %struct._GimpTool*, align 8
  %kevent.addr = alloca %struct._GdkEventKey*, align 8
  %translate_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %inc_x = alloca i32, align 4
  %inc_y = alloca i32, align 4
  %undo = alloca %struct._GimpUndo*, align 8
  %push_undo = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %edit_mode = alloca i32, align 4
  %undo_type = alloca i32, align 4
  %undo_desc = alloca i8*, align 8
  %velocity = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst68 = alloca %struct._GTypeInstance*, align 8
  %__t70 = alloca i64, align 8
  %__r73 = alloca i32, align 4
  %tmp89 = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GdkEventKey* %kevent, %struct._GdkEventKey** %kevent.addr, align 8
  store i32 %translate_type, i32* %translate_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store i32 0, i32* %inc_x, align 4
  store i32 0, i32* %inc_y, align 4
  store i32 1, i32* %push_undo, align 4
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  store %struct._GimpItem* null, %struct._GimpItem** %item, align 8
  store i32 3, i32* %edit_mode, align 4
  store i32 16, i32* %undo_type, align 4
  store i8* null, i8** %undo_desc, align 8
  %1 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %keyval = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %1, i32 0, i32 5
  %2 = load i32, i32* %keyval, align 4
  %cmp = icmp ne i32 %2, 65361
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %keyval1 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %3, i32 0, i32 5
  %4 = load i32, i32* %keyval1, align 4
  %cmp2 = icmp ne i32 %4, 65363
  br i1 %cmp2, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %5 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %keyval4 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %5, i32 0, i32 5
  %6 = load i32, i32* %keyval4, align 4
  %cmp5 = icmp ne i32 %6, 65362
  br i1 %cmp5, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %land.lhs.true.3
  %7 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %keyval7 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %7, i32 0, i32 5
  %8 = load i32, i32* %keyval7, align 4
  %cmp8 = icmp ne i32 %8, 65364
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.6
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.6, %land.lhs.true.3, %land.lhs.true, %entry
  %9 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call9 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %9)
  %zoom = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %call9, i32 0, i32 22
  %10 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %zoom, align 8
  %call10 = call double @gimp_zoom_model_get_factor(%struct._GimpZoomModel* %10)
  %div = fdiv double 2.500000e+01, %call10
  %conv = fptosi double %div to i32
  store i32 %conv, i32* %velocity, align 4
  %11 = load i32, i32* %velocity, align 4
  %conv11 = sitofp i32 %11 to double
  %cmp12 = fcmp ogt double 1.000000e+00, %conv11
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %12 = load i32, i32* %velocity, align 4
  %conv14 = sitofp i32 %12 to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 1.000000e+00, %cond.true ], [ %conv14, %cond.false ]
  %conv15 = fptosi double %cond to i32
  store i32 %conv15, i32* %velocity, align 4
  %13 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %14 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %state = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %14, i32 0, i32 4
  %15 = load i32, i32* %state, align 4
  %or = or i32 %15, 1
  %16 = load i32, i32* %velocity, align 4
  %mul = mul nsw i32 -1, %16
  %17 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %state16 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %17, i32 0, i32 4
  %18 = load i32, i32* %state16, align 4
  %and = and i32 %18, -2
  %19 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %state17 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %19, i32 0, i32 4
  %20 = load i32, i32* %state17, align 4
  %or18 = or i32 %20, 1
  %21 = load i32, i32* %velocity, align 4
  %mul19 = mul nsw i32 1, %21
  %22 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %state20 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %22, i32 0, i32 4
  %23 = load i32, i32* %state20, align 4
  %and21 = and i32 %23, -2
  %call22 = call i32 (%struct._GdkEventKey*, ...) @process_event_queue_keys(%struct._GdkEventKey* %13, i32 65361, i32 %or, i32 %mul, i32 65361, i32 %and, i32 -1, i32 65363, i32 %or18, i32 %mul19, i32 65363, i32 %and21, i32 1, i32 0)
  store i32 %call22, i32* %inc_x, align 4
  %24 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %25 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %state23 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %25, i32 0, i32 4
  %26 = load i32, i32* %state23, align 4
  %or24 = or i32 %26, 1
  %27 = load i32, i32* %velocity, align 4
  %mul25 = mul nsw i32 -1, %27
  %28 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %state26 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %28, i32 0, i32 4
  %29 = load i32, i32* %state26, align 4
  %and27 = and i32 %29, -2
  %30 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %state28 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %30, i32 0, i32 4
  %31 = load i32, i32* %state28, align 4
  %or29 = or i32 %31, 1
  %32 = load i32, i32* %velocity, align 4
  %mul30 = mul nsw i32 1, %32
  %33 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %state31 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %33, i32 0, i32 4
  %34 = load i32, i32* %state31, align 4
  %and32 = and i32 %34, -2
  %call33 = call i32 (%struct._GdkEventKey*, ...) @process_event_queue_keys(%struct._GdkEventKey* %24, i32 65362, i32 %or24, i32 %mul25, i32 65362, i32 %and27, i32 -1, i32 65364, i32 %or29, i32 %mul30, i32 65364, i32 %and32, i32 1, i32 0)
  store i32 %call33, i32* %inc_y, align 4
  %35 = load i32, i32* %inc_x, align 4
  %cmp34 = icmp ne i32 %35, 0
  br i1 %cmp34, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %36 = load i32, i32* %inc_y, align 4
  %cmp36 = icmp ne i32 %36, 0
  br i1 %cmp36, label %if.then.38, label %if.end.103

if.then.38:                                       ; preds = %lor.lhs.false, %cond.end
  %37 = load i32, i32* %translate_type.addr, align 4
  switch i32 %37, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.42
    i32 0, label %sw.bb.46
  ]

sw.bb:                                            ; preds = %if.then.38
  %38 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call39 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %38)
  %39 = bitcast %struct._GimpChannel* %call39 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_item_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call40)
  %40 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpItem*
  store %struct._GimpItem* %40, %struct._GimpItem** %item, align 8
  store i32 3, i32* %edit_mode, align 4
  store i32 16, i32* %undo_type, align 4
  br label %sw.epilog

sw.bb.42:                                         ; preds = %if.then.38
  %41 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call43 = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %41)
  %42 = bitcast %struct._GimpVectors* %call43 to %struct._GTypeInstance*
  %call44 = call i64 @gimp_item_get_type() #7
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call44)
  %43 = bitcast %struct._GTypeInstance* %call45 to %struct._GimpItem*
  store %struct._GimpItem* %43, %struct._GimpItem** %item, align 8
  store i32 0, i32* %edit_mode, align 4
  store i32 20, i32* %undo_type, align 4
  br label %sw.epilog

sw.bb.46:                                         ; preds = %if.then.38
  %44 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call47 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %44)
  %45 = bitcast %struct._GimpDrawable* %call47 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_item_get_type() #7
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call48)
  %46 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpItem*
  store %struct._GimpItem* %46, %struct._GimpItem** %item, align 8
  %47 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %tobool = icmp ne %struct._GimpItem* %47, null
  br i1 %tobool, label %if.then.50, label %if.end.102

if.then.50:                                       ; preds = %sw.bb.46
  %48 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %49 = bitcast %struct._GimpItem* %48 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %49, %struct._GTypeInstance** %__inst, align 8
  %call51 = call i64 @gimp_layer_mask_get_type() #7
  store i64 %call51, i64* %__t, align 8
  %50 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool52 = icmp ne %struct._GTypeInstance* %50, null
  br i1 %tobool52, label %if.else, label %if.then.53

if.then.53:                                       ; preds = %if.then.50
  store i32 0, i32* %__r, align 4
  br label %if.end.63

if.else:                                          ; preds = %if.then.50
  %51 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %51, i32 0, i32 0
  %52 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool54 = icmp ne %struct._GTypeClass* %52, null
  br i1 %tobool54, label %land.lhs.true.55, label %if.else.60

land.lhs.true.55:                                 ; preds = %if.else
  %53 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class56 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %53, i32 0, i32 0
  %54 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class56, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %54, i32 0, i32 0
  %55 = load i64, i64* %g_type, align 8
  %56 = load i64, i64* %__t, align 8
  %cmp57 = icmp eq i64 %55, %56
  br i1 %cmp57, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %land.lhs.true.55
  store i32 1, i32* %__r, align 4
  br label %if.end.62

if.else.60:                                       ; preds = %land.lhs.true.55, %if.else
  %57 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %58 = load i64, i64* %__t, align 8
  %call61 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %57, i64 %58) #8
  store i32 %call61, i32* %__r, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.60, %if.then.59
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.53
  %59 = load i32, i32* %__r, align 4
  store i32 %59, i32* %tmp
  %60 = load i32, i32* %tmp
  %tobool64 = icmp ne i32 %60, 0
  br i1 %tobool64, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %if.end.63
  store i32 2, i32* %edit_mode, align 4
  br label %if.end.101

if.else.66:                                       ; preds = %if.end.63
  %61 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %62 = bitcast %struct._GimpItem* %61 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %62, %struct._GTypeInstance** %__inst68, align 8
  %call71 = call i64 @gimp_channel_get_type() #7
  store i64 %call71, i64* %__t70, align 8
  %63 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst68, align 8
  %tobool74 = icmp ne %struct._GTypeInstance* %63, null
  br i1 %tobool74, label %if.else.76, label %if.then.75

if.then.75:                                       ; preds = %if.else.66
  store i32 0, i32* %__r73, align 4
  br label %if.end.88

if.else.76:                                       ; preds = %if.else.66
  %64 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst68, align 8
  %g_class77 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %64, i32 0, i32 0
  %65 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class77, align 8
  %tobool78 = icmp ne %struct._GTypeClass* %65, null
  br i1 %tobool78, label %land.lhs.true.79, label %if.else.85

land.lhs.true.79:                                 ; preds = %if.else.76
  %66 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst68, align 8
  %g_class80 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %66, i32 0, i32 0
  %67 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class80, align 8
  %g_type81 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %67, i32 0, i32 0
  %68 = load i64, i64* %g_type81, align 8
  %69 = load i64, i64* %__t70, align 8
  %cmp82 = icmp eq i64 %68, %69
  br i1 %cmp82, label %if.then.84, label %if.else.85

if.then.84:                                       ; preds = %land.lhs.true.79
  store i32 1, i32* %__r73, align 4
  br label %if.end.87

if.else.85:                                       ; preds = %land.lhs.true.79, %if.else.76
  %70 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst68, align 8
  %71 = load i64, i64* %__t70, align 8
  %call86 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %70, i64 %71) #8
  store i32 %call86, i32* %__r73, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.85, %if.then.84
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %if.then.75
  %72 = load i32, i32* %__r73, align 4
  store i32 %72, i32* %tmp89
  %73 = load i32, i32* %tmp89
  %tobool90 = icmp ne i32 %73, 0
  br i1 %tobool90, label %if.then.91, label %if.else.92

if.then.91:                                       ; preds = %if.end.88
  store i32 1, i32* %edit_mode, align 4
  br label %if.end.100

if.else.92:                                       ; preds = %if.end.88
  %74 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %75 = bitcast %struct._GimpItem* %74 to %struct._GTypeInstance*
  %call93 = call i64 @gimp_layer_get_type() #7
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call93)
  %76 = bitcast %struct._GTypeInstance* %call94 to %struct._GimpLayer*
  %call95 = call i32 @gimp_layer_is_floating_sel(%struct._GimpLayer* %76)
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.then.97, label %if.else.98

if.then.97:                                       ; preds = %if.else.92
  store i32 7, i32* %edit_mode, align 4
  br label %if.end.99

if.else.98:                                       ; preds = %if.else.92
  store i32 6, i32* %edit_mode, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.98, %if.then.97
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.then.91
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.then.65
  store i32 20, i32* %undo_type, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %sw.bb.46
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.38, %if.end.102, %sw.bb.42, %sw.bb
  br label %if.end.103

if.end.103:                                       ; preds = %sw.epilog, %lor.lhs.false
  %77 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %tobool104 = icmp ne %struct._GimpItem* %77, null
  br i1 %tobool104, label %if.end.106, label %if.then.105

if.then.105:                                      ; preds = %if.end.103
  store i32 1, i32* %retval
  br label %return

if.end.106:                                       ; preds = %if.end.103
  %78 = load i32, i32* %edit_mode, align 4
  switch i32 %78, label %sw.default [
    i32 7, label %sw.bb.107
  ]

sw.bb.107:                                        ; preds = %if.end.106
  %call108 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0)) #6
  store i8* %call108, i8** %undo_desc, align 8
  br label %sw.epilog.110

sw.default:                                       ; preds = %if.end.106
  %79 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %80 = bitcast %struct._GimpItem* %79 to %struct._GTypeInstance*
  %g_class109 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %80, i32 0, i32 0
  %81 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class109, align 8
  %82 = bitcast %struct._GTypeClass* %81 to %struct._GimpItemClass*
  %translate_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %82, i32 0, i32 23
  %83 = load i8*, i8** %translate_desc, align 8
  store i8* %83, i8** %undo_desc, align 8
  br label %sw.epilog.110

sw.epilog.110:                                    ; preds = %sw.default, %sw.bb.107
  %84 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call111 = call i64 @gimp_undo_stack_get_type() #7
  %85 = load i32, i32* %undo_type, align 4
  %call112 = call %struct._GimpUndo* @gimp_image_undo_can_compress(%struct._GimpImage* %84, i64 %call111, i32 %85)
  store %struct._GimpUndo* %call112, %struct._GimpUndo** %undo, align 8
  %86 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %tobool113 = icmp ne %struct._GimpUndo* %86, null
  br i1 %tobool113, label %land.lhs.true.114, label %if.end.131

land.lhs.true.114:                                ; preds = %sw.epilog.110
  %87 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %88 = bitcast %struct._GimpUndo* %87 to %struct._GTypeInstance*
  %call115 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 80)
  %89 = bitcast %struct._GTypeInstance* %call115 to %struct._GObject*
  %call116 = call i8* @g_object_get_data(%struct._GObject* %89, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0))
  %90 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %91 = bitcast %struct._GimpTool* %90 to i8*
  %cmp117 = icmp eq i8* %call116, %91
  br i1 %cmp117, label %land.lhs.true.119, label %if.end.131

land.lhs.true.119:                                ; preds = %land.lhs.true.114
  %92 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %93 = bitcast %struct._GimpUndo* %92 to %struct._GTypeInstance*
  %call120 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 80)
  %94 = bitcast %struct._GTypeInstance* %call120 to %struct._GObject*
  %call121 = call i8* @g_object_get_data(%struct._GObject* %94, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  %95 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %96 = bitcast %struct._GimpItem* %95 to i8*
  %cmp122 = icmp eq i8* %call121, %96
  br i1 %cmp122, label %land.lhs.true.124, label %if.end.131

land.lhs.true.124:                                ; preds = %land.lhs.true.119
  %97 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %98 = bitcast %struct._GimpUndo* %97 to %struct._GTypeInstance*
  %call125 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 80)
  %99 = bitcast %struct._GTypeInstance* %call125 to %struct._GObject*
  %call126 = call i8* @g_object_get_data(%struct._GObject* %99, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0))
  %100 = load i32, i32* %edit_mode, align 4
  %conv127 = zext i32 %100 to i64
  %101 = inttoptr i64 %conv127 to i8*
  %cmp128 = icmp eq i8* %call126, %101
  br i1 %cmp128, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %land.lhs.true.124
  store i32 0, i32* %push_undo, align 4
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.130, %land.lhs.true.124, %land.lhs.true.119, %land.lhs.true.114, %sw.epilog.110
  %102 = load i32, i32* %push_undo, align 4
  %tobool132 = icmp ne i32 %102, 0
  br i1 %tobool132, label %if.then.133, label %if.end.147

if.then.133:                                      ; preds = %if.end.131
  %103 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %104 = load i32, i32* %undo_type, align 4
  %105 = load i8*, i8** %undo_desc, align 8
  %call134 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %103, i32 %104, i8* %105)
  %tobool135 = icmp ne i32 %call134, 0
  br i1 %tobool135, label %if.then.136, label %if.end.146

if.then.136:                                      ; preds = %if.then.133
  %106 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call137 = call i64 @gimp_undo_stack_get_type() #7
  %107 = load i32, i32* %undo_type, align 4
  %call138 = call %struct._GimpUndo* @gimp_image_undo_can_compress(%struct._GimpImage* %106, i64 %call137, i32 %107)
  store %struct._GimpUndo* %call138, %struct._GimpUndo** %undo, align 8
  %108 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %tobool139 = icmp ne %struct._GimpUndo* %108, null
  br i1 %tobool139, label %if.then.140, label %if.end.145

if.then.140:                                      ; preds = %if.then.136
  %109 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %110 = bitcast %struct._GimpUndo* %109 to %struct._GTypeInstance*
  %call141 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %110, i64 80)
  %111 = bitcast %struct._GTypeInstance* %call141 to %struct._GObject*
  %112 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %113 = bitcast %struct._GimpTool* %112 to i8*
  call void @g_object_set_data(%struct._GObject* %111, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i8* %113)
  %114 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %115 = bitcast %struct._GimpUndo* %114 to %struct._GTypeInstance*
  %call142 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %115, i64 80)
  %116 = bitcast %struct._GTypeInstance* %call142 to %struct._GObject*
  %117 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %118 = bitcast %struct._GimpItem* %117 to i8*
  call void @g_object_set_data(%struct._GObject* %116, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8* %118)
  %119 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %120 = bitcast %struct._GimpUndo* %119 to %struct._GTypeInstance*
  %call143 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %120, i64 80)
  %121 = bitcast %struct._GTypeInstance* %call143 to %struct._GObject*
  %122 = load i32, i32* %edit_mode, align 4
  %conv144 = zext i32 %122 to i64
  %123 = inttoptr i64 %conv144 to i8*
  call void @g_object_set_data(%struct._GObject* %121, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i8* %123)
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.140, %if.then.136
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %if.then.133
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %if.end.131
  %124 = load i32, i32* %edit_mode, align 4
  switch i32 %124, label %sw.epilog.157 [
    i32 2, label %sw.bb.148
    i32 3, label %sw.bb.148
    i32 4, label %sw.bb.149
    i32 5, label %sw.bb.149
    i32 0, label %sw.bb.150
    i32 1, label %sw.bb.150
    i32 6, label %sw.bb.150
    i32 7, label %sw.bb.156
  ]

sw.bb.148:                                        ; preds = %if.end.147, %if.end.147
  %125 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %126 = load i32, i32* %inc_x, align 4
  %127 = load i32, i32* %inc_y, align 4
  %128 = load i32, i32* %push_undo, align 4
  call void @gimp_item_translate(%struct._GimpItem* %125, i32 %126, i32 %127, i32 %128)
  br label %sw.epilog.157

sw.bb.149:                                        ; preds = %if.end.147, %if.end.147
  br label %sw.epilog.157

sw.bb.150:                                        ; preds = %if.end.147, %if.end.147, %if.end.147
  %129 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call151 = call i32 @gimp_item_get_linked(%struct._GimpItem* %129)
  %tobool152 = icmp ne i32 %call151, 0
  br i1 %tobool152, label %if.then.153, label %if.else.154

if.then.153:                                      ; preds = %sw.bb.150
  %130 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %131 = load i32, i32* %inc_x, align 4
  %132 = load i32, i32* %inc_y, align 4
  %133 = load i32, i32* %push_undo, align 4
  call void @gimp_item_linked_translate(%struct._GimpItem* %130, i32 %131, i32 %132, i32 %133)
  br label %if.end.155

if.else.154:                                      ; preds = %sw.bb.150
  %134 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %135 = load i32, i32* %inc_x, align 4
  %136 = load i32, i32* %inc_y, align 4
  %137 = load i32, i32* %push_undo, align 4
  call void @gimp_item_translate(%struct._GimpItem* %134, i32 %135, i32 %136, i32 %137)
  br label %if.end.155

if.end.155:                                       ; preds = %if.else.154, %if.then.153
  br label %sw.epilog.157

sw.bb.156:                                        ; preds = %if.end.147
  %138 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %139 = load i32, i32* %inc_x, align 4
  %140 = load i32, i32* %inc_y, align 4
  %141 = load i32, i32* %push_undo, align 4
  call void @gimp_item_translate(%struct._GimpItem* %138, i32 %139, i32 %140, i32 %141)
  br label %sw.epilog.157

sw.epilog.157:                                    ; preds = %if.end.147, %sw.bb.156, %if.end.155, %sw.bb.149, %sw.bb.148
  %142 = load i32, i32* %push_undo, align 4
  %tobool158 = icmp ne i32 %142, 0
  br i1 %tobool158, label %if.then.159, label %if.else.161

if.then.159:                                      ; preds = %sw.epilog.157
  %143 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call160 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %143)
  br label %if.end.163

if.else.161:                                      ; preds = %sw.epilog.157
  %144 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %145 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %145, i32 0, i32 1
  %146 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call162 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %146)
  call void @gimp_undo_refresh_preview(%struct._GimpUndo* %144, %struct._GimpContext* %call162)
  br label %if.end.163

if.end.163:                                       ; preds = %if.else.161, %if.then.159
  %147 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %147)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.163, %if.then.105, %if.then
  %148 = load i32, i32* %retval
  ret i32 %148
}

declare double @gimp_zoom_model_get_factor(%struct._GimpZoomModel*) #1

; Function Attrs: nounwind uwtable
define internal i32 @process_event_queue_keys(%struct._GdkEventKey* %kevent, ...) #3 {
entry:
  %kevent.addr = alloca %struct._GdkEventKey*, align 8
  %argp = alloca [1 x %struct.__va_list_tag], align 16
  %event = alloca %union._GdkEvent*, align 8
  %event_list = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %keys = alloca [50 x i32], align 16
  %modifiers = alloca [50 x i32], align 16
  %values = alloca [50 x i32], align 16
  %i = alloca i32, align 4
  %n_keys = alloca i32, align 4
  %value = alloca i32, align 4
  %done = alloca i32, align 4
  %orig_widget = alloca %struct._GtkWidget*, align 8
  %discard_event = alloca i32, align 4
  store %struct._GdkEventKey* %kevent, %struct._GdkEventKey** %kevent.addr, align 8
  store %struct._GList* null, %struct._GList** %event_list, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %n_keys, align 4
  store i32 0, i32* %value, align 4
  store i32 0, i32* %done, align 4
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %argp, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  br label %while.cond

while.cond:                                       ; preds = %vaarg.end.28, %entry
  %0 = load i32, i32* %n_keys, align 4
  %cmp = icmp slt i32 %0, 50
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %argp, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %land.rhs
  %1 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 3
  %reg_save_area = load i8*, i8** %1
  %2 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %3 = bitcast i8* %2 to i32*
  %4 = add i32 %gp_offset, 8
  store i32 %4, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %land.rhs
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %5 = bitcast i8* %overflow_arg_area to i32*
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i32* [ %3, %vaarg.in_reg ], [ %5, %vaarg.in_mem ]
  %6 = load i32, i32* %vaarg.addr
  %7 = load i32, i32* %n_keys, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [50 x i32], [50 x i32]* %keys, i32 0, i64 %idxprom
  store i32 %6, i32* %arrayidx, align 4
  %cmp3 = icmp ne i32 %6, 0
  br label %land.end

land.end:                                         ; preds = %vaarg.end, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp3, %vaarg.end ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %argp, i32 0, i32 0
  %gp_offset_p5 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay4, i32 0, i32 0
  %gp_offset6 = load i32, i32* %gp_offset_p5
  %fits_in_gp7 = icmp ule i32 %gp_offset6, 40
  br i1 %fits_in_gp7, label %vaarg.in_reg.8, label %vaarg.in_mem.10

vaarg.in_reg.8:                                   ; preds = %while.body
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay4, i32 0, i32 3
  %reg_save_area9 = load i8*, i8** %9
  %10 = getelementptr i8, i8* %reg_save_area9, i32 %gp_offset6
  %11 = bitcast i8* %10 to i32*
  %12 = add i32 %gp_offset6, 8
  store i32 %12, i32* %gp_offset_p5
  br label %vaarg.end.14

vaarg.in_mem.10:                                  ; preds = %while.body
  %overflow_arg_area_p11 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay4, i32 0, i32 2
  %overflow_arg_area12 = load i8*, i8** %overflow_arg_area_p11
  %13 = bitcast i8* %overflow_arg_area12 to i32*
  %overflow_arg_area.next13 = getelementptr i8, i8* %overflow_arg_area12, i32 8
  store i8* %overflow_arg_area.next13, i8** %overflow_arg_area_p11
  br label %vaarg.end.14

vaarg.end.14:                                     ; preds = %vaarg.in_mem.10, %vaarg.in_reg.8
  %vaarg.addr15 = phi i32* [ %11, %vaarg.in_reg.8 ], [ %13, %vaarg.in_mem.10 ]
  %14 = load i32, i32* %vaarg.addr15
  %15 = load i32, i32* %n_keys, align 4
  %idxprom16 = sext i32 %15 to i64
  %arrayidx17 = getelementptr inbounds [50 x i32], [50 x i32]* %modifiers, i32 0, i64 %idxprom16
  store i32 %14, i32* %arrayidx17, align 4
  %arraydecay18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %argp, i32 0, i32 0
  %gp_offset_p19 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay18, i32 0, i32 0
  %gp_offset20 = load i32, i32* %gp_offset_p19
  %fits_in_gp21 = icmp ule i32 %gp_offset20, 40
  br i1 %fits_in_gp21, label %vaarg.in_reg.22, label %vaarg.in_mem.24

vaarg.in_reg.22:                                  ; preds = %vaarg.end.14
  %16 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay18, i32 0, i32 3
  %reg_save_area23 = load i8*, i8** %16
  %17 = getelementptr i8, i8* %reg_save_area23, i32 %gp_offset20
  %18 = bitcast i8* %17 to i32*
  %19 = add i32 %gp_offset20, 8
  store i32 %19, i32* %gp_offset_p19
  br label %vaarg.end.28

vaarg.in_mem.24:                                  ; preds = %vaarg.end.14
  %overflow_arg_area_p25 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay18, i32 0, i32 2
  %overflow_arg_area26 = load i8*, i8** %overflow_arg_area_p25
  %20 = bitcast i8* %overflow_arg_area26 to i32*
  %overflow_arg_area.next27 = getelementptr i8, i8* %overflow_arg_area26, i32 8
  store i8* %overflow_arg_area.next27, i8** %overflow_arg_area_p25
  br label %vaarg.end.28

vaarg.end.28:                                     ; preds = %vaarg.in_mem.24, %vaarg.in_reg.22
  %vaarg.addr29 = phi i32* [ %18, %vaarg.in_reg.22 ], [ %20, %vaarg.in_mem.24 ]
  %21 = load i32, i32* %vaarg.addr29
  %22 = load i32, i32* %n_keys, align 4
  %idxprom30 = sext i32 %22 to i64
  %arrayidx31 = getelementptr inbounds [50 x i32], [50 x i32]* %values, i32 0, i64 %idxprom30
  store i32 %21, i32* %arrayidx31, align 4
  %23 = load i32, i32* %n_keys, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %n_keys, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %arraydecay32 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %argp, i32 0, i32 0
  %arraydecay3233 = bitcast %struct.__va_list_tag* %arraydecay32 to i8*
  call void @llvm.va_end(i8* %arraydecay3233)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %n_keys, align 4
  %cmp34 = icmp slt i32 %24, %25
  br i1 %cmp34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %keyval = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %26, i32 0, i32 5
  %27 = load i32, i32* %keyval, align 4
  %28 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %28 to i64
  %arrayidx36 = getelementptr inbounds [50 x i32], [50 x i32]* %keys, i32 0, i64 %idxprom35
  %29 = load i32, i32* %arrayidx36, align 4
  %cmp37 = icmp eq i32 %27, %29
  br i1 %cmp37, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %30 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %state = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %30, i32 0, i32 4
  %31 = load i32, i32* %state, align 4
  %32 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %32 to i64
  %arrayidx39 = getelementptr inbounds [50 x i32], [50 x i32]* %modifiers, i32 0, i64 %idxprom38
  %33 = load i32, i32* %arrayidx39, align 4
  %and = and i32 %31, %33
  %34 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %34 to i64
  %arrayidx41 = getelementptr inbounds [50 x i32], [50 x i32]* %modifiers, i32 0, i64 %idxprom40
  %35 = load i32, i32* %arrayidx41, align 4
  %cmp42 = icmp eq i32 %and, %35
  br i1 %cmp42, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %36 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %36 to i64
  %arrayidx44 = getelementptr inbounds [50 x i32], [50 x i32]* %values, i32 0, i64 %idxprom43
  %37 = load i32, i32* %arrayidx44, align 4
  %38 = load i32, i32* %value, align 4
  %add = add nsw i32 %38, %37
  store i32 %add, i32* %value, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %39 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %39, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %41 = bitcast %struct._GdkEventKey* %40 to %union._GdkEvent*
  %call = call %struct._GtkWidget* @gtk_get_event_widget(%union._GdkEvent* %41)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %orig_widget, align 8
  br label %while.cond.46

while.cond.46:                                    ; preds = %if.end.110, %for.end
  %call47 = call i32 @gdk_events_pending()
  %cmp48 = icmp sgt i32 %call47, 0
  br i1 %cmp48, label %land.rhs.49, label %land.end.50

land.rhs.49:                                      ; preds = %while.cond.46
  %42 = load i32, i32* %done, align 4
  %tobool = icmp ne i32 %42, 0
  %lnot = xor i1 %tobool, true
  br label %land.end.50

land.end.50:                                      ; preds = %land.rhs.49, %while.cond.46
  %43 = phi i1 [ false, %while.cond.46 ], [ %lnot, %land.rhs.49 ]
  br i1 %43, label %while.body.51, label %while.end.111

while.body.51:                                    ; preds = %land.end.50
  store i32 0, i32* %discard_event, align 4
  %call52 = call %union._GdkEvent* @gdk_event_get()
  store %union._GdkEvent* %call52, %union._GdkEvent** %event, align 8
  %44 = load %union._GdkEvent*, %union._GdkEvent** %event, align 8
  %tobool53 = icmp ne %union._GdkEvent* %44, null
  br i1 %tobool53, label %lor.lhs.false, label %if.then.56

lor.lhs.false:                                    ; preds = %while.body.51
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %orig_widget, align 8
  %46 = load %union._GdkEvent*, %union._GdkEvent** %event, align 8
  %call54 = call %struct._GtkWidget* @gtk_get_event_widget(%union._GdkEvent* %46)
  %cmp55 = icmp ne %struct._GtkWidget* %45, %call54
  br i1 %cmp55, label %if.then.56, label %if.else

if.then.56:                                       ; preds = %lor.lhs.false, %while.body.51
  store i32 1, i32* %done, align 4
  br label %if.end.101

if.else:                                          ; preds = %lor.lhs.false
  %47 = load %union._GdkEvent*, %union._GdkEvent** %event, align 8
  %any = bitcast %union._GdkEvent* %47 to %struct._GdkEventAny*
  %type = getelementptr inbounds %struct._GdkEventAny, %struct._GdkEventAny* %any, i32 0, i32 0
  %48 = load i32, i32* %type, align 4
  %cmp57 = icmp eq i32 %48, 8
  br i1 %cmp57, label %if.then.58, label %if.else.86

if.then.58:                                       ; preds = %if.else
  store i32 0, i32* %i, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.80, %if.then.58
  %49 = load i32, i32* %i, align 4
  %50 = load i32, i32* %n_keys, align 4
  %cmp60 = icmp slt i32 %49, %50
  br i1 %cmp60, label %for.body.61, label %for.end.82

for.body.61:                                      ; preds = %for.cond.59
  %51 = load %union._GdkEvent*, %union._GdkEvent** %event, align 8
  %key = bitcast %union._GdkEvent* %51 to %struct._GdkEventKey*
  %keyval62 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %key, i32 0, i32 5
  %52 = load i32, i32* %keyval62, align 4
  %53 = load i32, i32* %i, align 4
  %idxprom63 = sext i32 %53 to i64
  %arrayidx64 = getelementptr inbounds [50 x i32], [50 x i32]* %keys, i32 0, i64 %idxprom63
  %54 = load i32, i32* %arrayidx64, align 4
  %cmp65 = icmp eq i32 %52, %54
  br i1 %cmp65, label %land.lhs.true.66, label %if.end.79

land.lhs.true.66:                                 ; preds = %for.body.61
  %55 = load %union._GdkEvent*, %union._GdkEvent** %event, align 8
  %key67 = bitcast %union._GdkEvent* %55 to %struct._GdkEventKey*
  %state68 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %key67, i32 0, i32 4
  %56 = load i32, i32* %state68, align 4
  %57 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %57 to i64
  %arrayidx70 = getelementptr inbounds [50 x i32], [50 x i32]* %modifiers, i32 0, i64 %idxprom69
  %58 = load i32, i32* %arrayidx70, align 4
  %and71 = and i32 %56, %58
  %59 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %59 to i64
  %arrayidx73 = getelementptr inbounds [50 x i32], [50 x i32]* %modifiers, i32 0, i64 %idxprom72
  %60 = load i32, i32* %arrayidx73, align 4
  %cmp74 = icmp eq i32 %and71, %60
  br i1 %cmp74, label %if.then.75, label %if.end.79

if.then.75:                                       ; preds = %land.lhs.true.66
  store i32 1, i32* %discard_event, align 4
  %61 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %61 to i64
  %arrayidx77 = getelementptr inbounds [50 x i32], [50 x i32]* %values, i32 0, i64 %idxprom76
  %62 = load i32, i32* %arrayidx77, align 4
  %63 = load i32, i32* %value, align 4
  %add78 = add nsw i32 %63, %62
  store i32 %add78, i32* %value, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.75, %land.lhs.true.66, %for.body.61
  br label %for.inc.80

for.inc.80:                                       ; preds = %if.end.79
  %64 = load i32, i32* %i, align 4
  %inc81 = add nsw i32 %64, 1
  store i32 %inc81, i32* %i, align 4
  br label %for.cond.59

for.end.82:                                       ; preds = %for.cond.59
  %65 = load i32, i32* %discard_event, align 4
  %tobool83 = icmp ne i32 %65, 0
  br i1 %tobool83, label %if.end.85, label %if.then.84

if.then.84:                                       ; preds = %for.end.82
  store i32 1, i32* %done, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %for.end.82
  br label %if.end.100

if.else.86:                                       ; preds = %if.else
  %66 = load %union._GdkEvent*, %union._GdkEvent** %event, align 8
  %any87 = bitcast %union._GdkEvent* %66 to %struct._GdkEventAny*
  %type88 = getelementptr inbounds %struct._GdkEventAny, %struct._GdkEventAny* %any87, i32 0, i32 0
  %67 = load i32, i32* %type88, align 4
  %cmp89 = icmp ne i32 %67, 9
  br i1 %cmp89, label %land.lhs.true.90, label %if.end.99

land.lhs.true.90:                                 ; preds = %if.else.86
  %68 = load %union._GdkEvent*, %union._GdkEvent** %event, align 8
  %any91 = bitcast %union._GdkEvent* %68 to %struct._GdkEventAny*
  %type92 = getelementptr inbounds %struct._GdkEventAny, %struct._GdkEventAny* %any91, i32 0, i32 0
  %69 = load i32, i32* %type92, align 4
  %cmp93 = icmp ne i32 %69, 3
  br i1 %cmp93, label %land.lhs.true.94, label %if.end.99

land.lhs.true.94:                                 ; preds = %land.lhs.true.90
  %70 = load %union._GdkEvent*, %union._GdkEvent** %event, align 8
  %any95 = bitcast %union._GdkEvent* %70 to %struct._GdkEventAny*
  %type96 = getelementptr inbounds %struct._GdkEventAny, %struct._GdkEventAny* %any95, i32 0, i32 0
  %71 = load i32, i32* %type96, align 4
  %cmp97 = icmp ne i32 %71, 2
  br i1 %cmp97, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %land.lhs.true.94
  store i32 0, i32* %done, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.98, %land.lhs.true.94, %land.lhs.true.90, %if.else.86
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.end.85
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.then.56
  %72 = load %union._GdkEvent*, %union._GdkEvent** %event, align 8
  %tobool102 = icmp ne %union._GdkEvent* %72, null
  br i1 %tobool102, label %if.else.104, label %if.then.103

if.then.103:                                      ; preds = %if.end.101
  br label %if.end.110

if.else.104:                                      ; preds = %if.end.101
  %73 = load i32, i32* %discard_event, align 4
  %tobool105 = icmp ne i32 %73, 0
  br i1 %tobool105, label %if.else.108, label %if.then.106

if.then.106:                                      ; preds = %if.else.104
  %74 = load %struct._GList*, %struct._GList** %event_list, align 8
  %75 = load %union._GdkEvent*, %union._GdkEvent** %event, align 8
  %76 = bitcast %union._GdkEvent* %75 to i8*
  %call107 = call %struct._GList* @g_list_prepend(%struct._GList* %74, i8* %76)
  store %struct._GList* %call107, %struct._GList** %event_list, align 8
  br label %if.end.109

if.else.108:                                      ; preds = %if.else.104
  %77 = load %union._GdkEvent*, %union._GdkEvent** %event, align 8
  call void @gdk_event_free(%union._GdkEvent* %77)
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.108, %if.then.106
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.then.103
  br label %while.cond.46

while.end.111:                                    ; preds = %land.end.50
  %78 = load %struct._GList*, %struct._GList** %event_list, align 8
  %call112 = call %struct._GList* @g_list_reverse(%struct._GList* %78)
  store %struct._GList* %call112, %struct._GList** %event_list, align 8
  %79 = load %struct._GList*, %struct._GList** %event_list, align 8
  store %struct._GList* %79, %struct._GList** %list, align 8
  br label %for.cond.113

for.cond.113:                                     ; preds = %cond.end, %while.end.111
  %80 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool114 = icmp ne %struct._GList* %80, null
  br i1 %tobool114, label %for.body.115, label %for.end.119

for.body.115:                                     ; preds = %for.cond.113
  %81 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %81, i32 0, i32 0
  %82 = load i8*, i8** %data, align 8
  %83 = bitcast i8* %82 to %union._GdkEvent*
  call void @gdk_event_put(%union._GdkEvent* %83)
  %84 = load %struct._GList*, %struct._GList** %list, align 8
  %data116 = getelementptr inbounds %struct._GList, %struct._GList* %84, i32 0, i32 0
  %85 = load i8*, i8** %data116, align 8
  %86 = bitcast i8* %85 to %union._GdkEvent*
  call void @gdk_event_free(%union._GdkEvent* %86)
  br label %for.inc.117

for.inc.117:                                      ; preds = %for.body.115
  %87 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool118 = icmp ne %struct._GList* %87, null
  br i1 %tobool118, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc.117
  %88 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %88, i32 0, i32 1
  %89 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc.117
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %89, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond.113

for.end.119:                                      ; preds = %for.cond.113
  %90 = load %struct._GList*, %struct._GList** %event_list, align 8
  call void @g_list_free(%struct._GList* %90)
  %91 = load i32, i32* %value, align 4
  ret i32 %91
}

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage*) #1

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_mask_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_get_type() #2

declare %struct._GimpUndo* @gimp_image_undo_can_compress(%struct._GimpImage*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_undo_stack_get_type() #2

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare i32 @gimp_image_undo_group_start(%struct._GimpImage*, i32, i8*) #1

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare void @gimp_item_translate(%struct._GimpItem*, i32, i32, i32) #1

declare void @gimp_item_linked_translate(%struct._GimpItem*, i32, i32, i32) #1

declare i32 @gimp_image_undo_group_end(%struct._GimpImage*) #1

declare void @gimp_undo_refresh_preview(%struct._GimpUndo*, %struct._GimpContext*) #1

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #1

declare void @gimp_image_flush(%struct._GimpImage*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_edit_selection_tool_class_init(%struct._GimpEditSelectionToolClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpEditSelectionToolClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %tool_class = alloca %struct._GimpToolClass*, align 8
  %draw_class = alloca %struct._GimpDrawToolClass*, align 8
  store %struct._GimpEditSelectionToolClass* %klass, %struct._GimpEditSelectionToolClass** %klass.addr, align 8
  %0 = load %struct._GimpEditSelectionToolClass*, %struct._GimpEditSelectionToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpEditSelectionToolClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpEditSelectionToolClass*, %struct._GimpEditSelectionToolClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpEditSelectionToolClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_tool_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpToolClass*
  store %struct._GimpToolClass* %5, %struct._GimpToolClass** %tool_class, align 8
  %6 = load %struct._GimpEditSelectionToolClass*, %struct._GimpEditSelectionToolClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpEditSelectionToolClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_draw_tool_get_type() #7
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpDrawToolClass*
  store %struct._GimpDrawToolClass* %8, %struct._GimpDrawToolClass** %draw_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_edit_selection_tool_finalize, void (%struct._GObject*)** %finalize, align 8
  %10 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_release = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %10, i32 0, i32 6
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_edit_selection_tool_button_release, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_release, align 8
  %11 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %motion = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %11, i32 0, i32 7
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_edit_selection_tool_motion, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %motion, align 8
  %12 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %active_modifier_key = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %12, i32 0, i32 11
  store void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_edit_selection_tool_active_modifier_key, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)** %active_modifier_key, align 8
  %13 = load %struct._GimpDrawToolClass*, %struct._GimpDrawToolClass** %draw_class, align 8
  %draw = getelementptr inbounds %struct._GimpDrawToolClass, %struct._GimpDrawToolClass* %13, i32 0, i32 1
  store void (%struct._GimpDrawTool*)* @gimp_edit_selection_tool_draw, void (%struct._GimpDrawTool*)** %draw, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_edit_selection_tool_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %edit_select = alloca %struct._GimpEditSelectionTool*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_edit_selection_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpEditSelectionTool*
  store %struct._GimpEditSelectionTool* %2, %struct._GimpEditSelectionTool** %edit_select, align 8
  %3 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %segs_in = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %3, i32 0, i32 9
  %4 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_in, align 8
  %tobool = icmp ne %struct._BoundSeg* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %segs_in2 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %5, i32 0, i32 9
  %6 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_in2, align 8
  %7 = bitcast %struct._BoundSeg* %6 to i8*
  call void @g_free(i8* %7)
  %8 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %segs_in3 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %8, i32 0, i32 9
  store %struct._BoundSeg* null, %struct._BoundSeg** %segs_in3, align 8
  %9 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %num_segs_in = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %9, i32 0, i32 7
  store i32 0, i32* %num_segs_in, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %segs_out = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %10, i32 0, i32 10
  %11 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_out, align 8
  %tobool4 = icmp ne %struct._BoundSeg* %11, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %12 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %segs_out6 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %12, i32 0, i32 10
  %13 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_out6, align 8
  %14 = bitcast %struct._BoundSeg* %13 to i8*
  call void @g_free(i8* %14)
  %15 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %segs_out7 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %15, i32 0, i32 10
  store %struct._BoundSeg* null, %struct._BoundSeg** %segs_out7, align 8
  %16 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %num_segs_out = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %16, i32 0, i32 8
  store i32 0, i32* %num_segs_out, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %17 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %live_items = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %17, i32 0, i32 18
  %18 = load %struct._GList*, %struct._GList** %live_items, align 8
  %tobool9 = icmp ne %struct._GList* %18, null
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.8
  %19 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %live_items11 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %19, i32 0, i32 18
  %20 = load %struct._GList*, %struct._GList** %live_items11, align 8
  call void @g_list_free(%struct._GList* %20)
  %21 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %live_items12 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %21, i32 0, i32 18
  store %struct._GList* null, %struct._GList** %live_items12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end.8
  %22 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %delayed_items = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %22, i32 0, i32 19
  %23 = load %struct._GList*, %struct._GList** %delayed_items, align 8
  %tobool14 = icmp ne %struct._GList* %23, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.13
  %24 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %delayed_items16 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %24, i32 0, i32 19
  %25 = load %struct._GList*, %struct._GList** %delayed_items16, align 8
  call void @g_list_free(%struct._GList* %25)
  %26 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %delayed_items17 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %26, i32 0, i32 19
  store %struct._GList* null, %struct._GList** %delayed_items17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end.13
  %27 = load i8*, i8** @gimp_edit_selection_tool_parent_class, align 8
  %28 = bitcast i8* %27 to %struct._GTypeClass*
  %call19 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %28, i64 80)
  %29 = bitcast %struct._GTypeClass* %call19 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %29, i32 0, i32 6
  %30 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %31 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %30(%struct._GObject* %31)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_edit_selection_tool_button_release(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %release_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %release_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %edit_select = alloca %struct._GimpEditSelectionTool*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %release_type, i32* %release_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_edit_selection_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpEditSelectionTool*
  store %struct._GimpEditSelectionTool* %2, %struct._GimpEditSelectionTool** %edit_select, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call2 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %3)
  store %struct._GimpDisplayShell* %call2, %struct._GimpDisplayShell** %shell, align 8
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call3 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %4)
  store %struct._GimpImage* %call3, %struct._GimpImage** %image, align 8
  %5 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_selection_resume(%struct._GimpDisplayShell* %5)
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_pop_status(%struct._GimpTool* %6, %struct._GimpDisplay* %7)
  %8 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %8, i32 0, i32 3
  %9 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_halt(%struct._GimpToolControl* %9)
  %10 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %11 = bitcast %struct._GimpEditSelectionTool* %10 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_draw_tool_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call4)
  %12 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_stop(%struct._GimpDrawTool* %12)
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %13, i32 0, i32 1
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @tool_manager_pop_tool(%struct._Gimp* %14)
  %15 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %16 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %16, i32 0, i32 0
  %17 = load double, double* %x, align 8
  %18 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %18, i32 0, i32 1
  %19 = load double, double* %y, align 8
  call void @gimp_edit_selection_tool_calc_coords(%struct._GimpEditSelectionTool* %15, double %17, double %19)
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %21 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %delayed_items = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %21, i32 0, i32 19
  %22 = load %struct._GList*, %struct._GList** %delayed_items, align 8
  %23 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %cumlx = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %23, i32 0, i32 3
  %24 = load i32, i32* %cumlx, align 4
  %25 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %cumly = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %25, i32 0, i32 4
  %26 = load i32, i32* %cumly, align 4
  call void @gimp_image_item_list_translate(%struct._GimpImage* %20, %struct._GList* %22, i32 %24, i32 %26, i32 1)
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call6 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %27)
  %28 = load i32, i32* %release_type.addr, align 4
  %cmp = icmp eq i32 %28, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call7 = call i32 @gimp_image_undo(%struct._GimpImage* %29)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %30 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %30)
  %31 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %propagate_release = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %31, i32 0, i32 21
  %32 = load i32, i32* %propagate_release, align 4
  %tobool = icmp ne i32 %32, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.end
  %33 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %gimp8 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %33, i32 0, i32 1
  %34 = load %struct._Gimp*, %struct._Gimp** %gimp8, align 8
  %call9 = call %struct._GimpTool* @tool_manager_get_active(%struct._Gimp* %34)
  %tobool10 = icmp ne %struct._GimpTool* %call9, null
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %land.lhs.true
  %35 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %gimp12 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %35, i32 0, i32 1
  %36 = load %struct._Gimp*, %struct._Gimp** %gimp12, align 8
  %37 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %38 = load i32, i32* %time.addr, align 4
  %39 = load i32, i32* %state.addr, align 4
  %40 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @tool_manager_button_release_active(%struct._Gimp* %36, %struct._GimpCoords* %37, i32 %38, i32 %39, %struct._GimpDisplay* %40)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %land.lhs.true, %if.end
  %41 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %42 = bitcast %struct._GimpEditSelectionTool* %41 to i8*
  call void @g_object_unref(i8* %42)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_edit_selection_tool_motion(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %edit_select = alloca %struct._GimpEditSelectionTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_edit_selection_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpEditSelectionTool*
  store %struct._GimpEditSelectionTool* %2, %struct._GimpEditSelectionTool** %edit_select, align 8
  %3 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %3, i32 0, i32 0
  %4 = load double, double* %x, align 8
  %5 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %last_x = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %5, i32 0, i32 25
  store double %4, double* %last_x, align 8
  %6 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %6, i32 0, i32 1
  %7 = load double, double* %y, align 8
  %8 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %last_y = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %8, i32 0, i32 26
  store double %7, double* %last_y, align 8
  %9 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %10 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %10, i32 0, i32 0
  %11 = load double, double* %x2, align 8
  %12 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y3 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %12, i32 0, i32 1
  %13 = load double, double* %y3, align 8
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_edit_selection_tool_update_motion(%struct._GimpEditSelectionTool* %9, double %11, double %13, %struct._GimpDisplay* %14)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_edit_selection_tool_active_modifier_key(%struct._GimpTool* %tool, i32 %key, i32 %press, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %key.addr = alloca i32, align 4
  %press.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %edit_select = alloca %struct._GimpEditSelectionTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %press, i32* %press.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_edit_selection_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpEditSelectionTool*
  store %struct._GimpEditSelectionTool* %2, %struct._GimpEditSelectionTool** %edit_select, align 8
  %3 = load i32, i32* %state.addr, align 4
  %call2 = call i32 @gimp_get_constrain_behavior_mask()
  %and = and i32 %3, %call2
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %4 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %constrain = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %4, i32 0, i32 22
  store i32 %cond, i32* %constrain, align 4
  %5 = load i32, i32* %state.addr, align 4
  %and3 = and i32 %5, 256
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %7 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %last_x = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %7, i32 0, i32 25
  %8 = load double, double* %last_x, align 8
  %9 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %last_y = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %9, i32 0, i32 26
  %10 = load double, double* %last_y, align 8
  %11 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_edit_selection_tool_update_motion(%struct._GimpEditSelectionTool* %6, double %8, double %10, %struct._GimpDisplay* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_edit_selection_tool_draw(%struct._GimpDrawTool* %draw_tool) #3 {
entry:
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %edit_select = alloca %struct._GimpEditSelectionTool*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %active_item = alloca %struct._GimpItem*, align 8
  %floating_sel = alloca i32, align 4
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %off_x48 = alloca i32, align 4
  %off_y49 = alloca i32, align 4
  %x161 = alloca i32, align 4
  %y162 = alloca i32, align 4
  %x263 = alloca i32, align 4
  %y264 = alloca i32, align 4
  %linked = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %x3 = alloca i32, align 4
  %y3 = alloca i32, align 4
  %x4 = alloca i32, align 4
  %y4 = alloca i32, align 4
  %x1113 = alloca double, align 8
  %y1114 = alloca double, align 8
  %x2115 = alloca double, align 8
  %y2116 = alloca double, align 8
  %linked123 = alloca %struct._GList*, align 8
  %list124 = alloca %struct._GList*, align 8
  %item130 = alloca %struct._GimpItem*, align 8
  %x3132 = alloca double, align 8
  %y3133 = alloca double, align 8
  %x4134 = alloca double, align 8
  %y4135 = alloca double, align 8
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_edit_selection_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpEditSelectionTool*
  store %struct._GimpEditSelectionTool* %2, %struct._GimpEditSelectionTool** %edit_select, align 8
  %3 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %4 = bitcast %struct._GimpDrawTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %display4 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 4
  %6 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display4, align 8
  store %struct._GimpDisplay* %6, %struct._GimpDisplay** %display, align 8
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call5 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %7)
  store %struct._GimpImage* %call5, %struct._GimpImage** %image, align 8
  %8 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call6 = call %struct._GimpItem* @gimp_edit_selection_tool_get_active_item(%struct._GimpEditSelectionTool* %8, %struct._GimpImage* %9)
  store %struct._GimpItem* %call6, %struct._GimpItem** %active_item, align 8
  %10 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %edit_mode = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %10, i32 0, i32 17
  %11 = load i32, i32* %edit_mode, align 4
  switch i32 %11, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb.47
    i32 5, label %sw.bb.47
    i32 6, label %sw.bb.60
    i32 0, label %sw.bb.112
    i32 7, label %sw.bb.179
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  store i32 0, i32* %floating_sel, align 4
  %12 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %12, i32* %off_x, i32* %off_y)
  %13 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %edit_mode7 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %13, i32 0, i32 17
  %14 = load i32, i32* %edit_mode7, align 4
  %cmp = icmp eq i32 %14, 3
  br i1 %cmp, label %if.then, label %if.end.11

if.then:                                          ; preds = %sw.bb
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call8 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %15)
  store %struct._GimpLayer* %call8, %struct._GimpLayer** %layer, align 8
  %16 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool = icmp ne %struct._GimpLayer* %16, null
  br i1 %tobool, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %17 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call10 = call i32 @gimp_layer_is_floating_sel(%struct._GimpLayer* %17)
  store i32 %call10, i32* %floating_sel, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %sw.bb
  %18 = load i32, i32* %floating_sel, align 4
  %tobool12 = icmp ne i32 %18, 0
  br i1 %tobool12, label %if.end.19, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.11
  %19 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %segs_in = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %19, i32 0, i32 9
  %20 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_in, align 8
  %tobool13 = icmp ne %struct._BoundSeg* %20, null
  br i1 %tobool13, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %land.lhs.true
  %21 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %22 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %segs_in15 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %22, i32 0, i32 9
  %23 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_in15, align 8
  %24 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %num_segs_in = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %24, i32 0, i32 7
  %25 = load i32, i32* %num_segs_in, align 4
  %26 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %cumlx = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %26, i32 0, i32 3
  %27 = load i32, i32* %cumlx, align 4
  %28 = load i32, i32* %off_x, align 4
  %add = add nsw i32 %27, %28
  %conv = sitofp i32 %add to double
  %29 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %cumly = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %29, i32 0, i32 4
  %30 = load i32, i32* %cumly, align 4
  %31 = load i32, i32* %off_y, align 4
  %add16 = add nsw i32 %30, %31
  %conv17 = sitofp i32 %add16 to double
  %call18 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_boundary(%struct._GimpDrawTool* %21, %struct._BoundSeg* %23, i32 %25, %struct._GimpMatrix3* null, double %conv, double %conv17)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.14, %land.lhs.true, %if.end.11
  %32 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %segs_out = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %32, i32 0, i32 10
  %33 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_out, align 8
  %tobool20 = icmp ne %struct._BoundSeg* %33, null
  br i1 %tobool20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.end.19
  %34 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %35 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %segs_out22 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %35, i32 0, i32 10
  %36 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_out22, align 8
  %37 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %num_segs_out = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %37, i32 0, i32 8
  %38 = load i32, i32* %num_segs_out, align 4
  %39 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %cumlx23 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %39, i32 0, i32 3
  %40 = load i32, i32* %cumlx23, align 4
  %41 = load i32, i32* %off_x, align 4
  %add24 = add nsw i32 %40, %41
  %conv25 = sitofp i32 %add24 to double
  %42 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %cumly26 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %42, i32 0, i32 4
  %43 = load i32, i32* %cumly26, align 4
  %44 = load i32, i32* %off_y, align 4
  %add27 = add nsw i32 %43, %44
  %conv28 = sitofp i32 %add27 to double
  %call29 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_boundary(%struct._GimpDrawTool* %34, %struct._BoundSeg* %36, i32 %38, %struct._GimpMatrix3* null, double %conv25, double %conv28)
  br label %if.end.46

if.else:                                          ; preds = %if.end.19
  %45 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %edit_mode30 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %45, i32 0, i32 17
  %46 = load i32, i32* %edit_mode30, align 4
  %cmp31 = icmp ne i32 %46, 3
  br i1 %cmp31, label %if.then.33, label %if.end.45

if.then.33:                                       ; preds = %if.else
  %47 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %48 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %cumlx34 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %48, i32 0, i32 3
  %49 = load i32, i32* %cumlx34, align 4
  %50 = load i32, i32* %off_x, align 4
  %add35 = add nsw i32 %49, %50
  %conv36 = sitofp i32 %add35 to double
  %51 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %cumly37 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %51, i32 0, i32 4
  %52 = load i32, i32* %cumly37, align 4
  %53 = load i32, i32* %off_y, align 4
  %add38 = add nsw i32 %52, %53
  %conv39 = sitofp i32 %add38 to double
  %54 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  %call40 = call i32 @gimp_item_get_width(%struct._GimpItem* %54)
  %conv41 = sitofp i32 %call40 to double
  %55 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  %call42 = call i32 @gimp_item_get_height(%struct._GimpItem* %55)
  %conv43 = sitofp i32 %call42 to double
  %call44 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_rectangle(%struct._GimpDrawTool* %47, i32 0, double %conv36, double %conv39, double %conv41, double %conv43)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.33, %if.else
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.21
  br label %sw.epilog

sw.bb.47:                                         ; preds = %entry, %entry
  %56 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %56, i32* %off_x48, i32* %off_y49)
  %57 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %58 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %x1 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %58, i32 0, i32 11
  %59 = load i32, i32* %x1, align 4
  %60 = load i32, i32* %off_x48, align 4
  %add50 = add nsw i32 %59, %60
  %conv51 = sitofp i32 %add50 to double
  %61 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %y1 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %61, i32 0, i32 12
  %62 = load i32, i32* %y1, align 4
  %63 = load i32, i32* %off_y49, align 4
  %add52 = add nsw i32 %62, %63
  %conv53 = sitofp i32 %add52 to double
  %64 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %x2 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %64, i32 0, i32 13
  %65 = load i32, i32* %x2, align 4
  %66 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %x154 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %66, i32 0, i32 11
  %67 = load i32, i32* %x154, align 4
  %sub = sub nsw i32 %65, %67
  %conv55 = sitofp i32 %sub to double
  %68 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %y2 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %68, i32 0, i32 14
  %69 = load i32, i32* %y2, align 4
  %70 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %y156 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %70, i32 0, i32 12
  %71 = load i32, i32* %y156, align 4
  %sub57 = sub nsw i32 %69, %71
  %conv58 = sitofp i32 %sub57 to double
  %call59 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_rectangle(%struct._GimpDrawTool* %57, i32 0, double %conv51, double %conv53, double %conv55, double %conv58)
  br label %sw.epilog

sw.bb.60:                                         ; preds = %entry
  %72 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %72, i32* %x161, i32* %y162)
  %73 = load i32, i32* %x161, align 4
  %74 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  %call65 = call i32 @gimp_item_get_width(%struct._GimpItem* %74)
  %add66 = add nsw i32 %73, %call65
  store i32 %add66, i32* %x263, align 4
  %75 = load i32, i32* %y162, align 4
  %76 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  %call67 = call i32 @gimp_item_get_height(%struct._GimpItem* %76)
  %add68 = add nsw i32 %75, %call67
  store i32 %add68, i32* %y264, align 4
  %77 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  %call69 = call i32 @gimp_item_get_linked(%struct._GimpItem* %77)
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.then.71, label %if.end.104

if.then.71:                                       ; preds = %sw.bb.60
  %78 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call72 = call %struct._GList* @gimp_image_item_list_get_list(%struct._GimpImage* %78, i32 1, i32 4)
  store %struct._GList* %call72, %struct._GList** %linked, align 8
  %79 = load %struct._GList*, %struct._GList** %linked, align 8
  %call73 = call %struct._GList* @gimp_image_item_list_filter(%struct._GList* %79)
  store %struct._GList* %call73, %struct._GList** %linked, align 8
  %80 = load %struct._GList*, %struct._GList** %linked, align 8
  store %struct._GList* %80, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.102, %if.then.71
  %81 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool74 = icmp ne %struct._GList* %81, null
  br i1 %tobool74, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %82 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %82, i32 0, i32 0
  %83 = load i8*, i8** %data, align 8
  %84 = bitcast i8* %83 to %struct._GimpItem*
  store %struct._GimpItem* %84, %struct._GimpItem** %item, align 8
  %85 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %85, i32* %x3, i32* %y3)
  %86 = load i32, i32* %x3, align 4
  %87 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call75 = call i32 @gimp_item_get_width(%struct._GimpItem* %87)
  %add76 = add nsw i32 %86, %call75
  store i32 %add76, i32* %x4, align 4
  %88 = load i32, i32* %y3, align 4
  %89 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call77 = call i32 @gimp_item_get_height(%struct._GimpItem* %89)
  %add78 = add nsw i32 %88, %call77
  store i32 %add78, i32* %y4, align 4
  %90 = load i32, i32* %x161, align 4
  %91 = load i32, i32* %x3, align 4
  %cmp79 = icmp slt i32 %90, %91
  br i1 %cmp79, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %92 = load i32, i32* %x161, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %93 = load i32, i32* %x3, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %92, %cond.true ], [ %93, %cond.false ]
  store i32 %cond, i32* %x161, align 4
  %94 = load i32, i32* %y162, align 4
  %95 = load i32, i32* %y3, align 4
  %cmp81 = icmp slt i32 %94, %95
  br i1 %cmp81, label %cond.true.83, label %cond.false.84

cond.true.83:                                     ; preds = %cond.end
  %96 = load i32, i32* %y162, align 4
  br label %cond.end.85

cond.false.84:                                    ; preds = %cond.end
  %97 = load i32, i32* %y3, align 4
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.84, %cond.true.83
  %cond86 = phi i32 [ %96, %cond.true.83 ], [ %97, %cond.false.84 ]
  store i32 %cond86, i32* %y162, align 4
  %98 = load i32, i32* %x263, align 4
  %99 = load i32, i32* %x4, align 4
  %cmp87 = icmp sgt i32 %98, %99
  br i1 %cmp87, label %cond.true.89, label %cond.false.90

cond.true.89:                                     ; preds = %cond.end.85
  %100 = load i32, i32* %x263, align 4
  br label %cond.end.91

cond.false.90:                                    ; preds = %cond.end.85
  %101 = load i32, i32* %x4, align 4
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.90, %cond.true.89
  %cond92 = phi i32 [ %100, %cond.true.89 ], [ %101, %cond.false.90 ]
  store i32 %cond92, i32* %x263, align 4
  %102 = load i32, i32* %y264, align 4
  %103 = load i32, i32* %y4, align 4
  %cmp93 = icmp sgt i32 %102, %103
  br i1 %cmp93, label %cond.true.95, label %cond.false.96

cond.true.95:                                     ; preds = %cond.end.91
  %104 = load i32, i32* %y264, align 4
  br label %cond.end.97

cond.false.96:                                    ; preds = %cond.end.91
  %105 = load i32, i32* %y4, align 4
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.96, %cond.true.95
  %cond98 = phi i32 [ %104, %cond.true.95 ], [ %105, %cond.false.96 ]
  store i32 %cond98, i32* %y264, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.97
  %106 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool99 = icmp ne %struct._GList* %106, null
  br i1 %tobool99, label %cond.true.100, label %cond.false.101

cond.true.100:                                    ; preds = %for.inc
  %107 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %107, i32 0, i32 1
  %108 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end.102

cond.false.101:                                   ; preds = %for.inc
  br label %cond.end.102

cond.end.102:                                     ; preds = %cond.false.101, %cond.true.100
  %cond103 = phi %struct._GList* [ %108, %cond.true.100 ], [ null, %cond.false.101 ]
  store %struct._GList* %cond103, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %109 = load %struct._GList*, %struct._GList** %linked, align 8
  call void @g_list_free(%struct._GList* %109)
  br label %if.end.104

if.end.104:                                       ; preds = %for.end, %sw.bb.60
  %110 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %111 = load i32, i32* %x161, align 4
  %conv105 = sitofp i32 %111 to double
  %112 = load i32, i32* %y162, align 4
  %conv106 = sitofp i32 %112 to double
  %113 = load i32, i32* %x263, align 4
  %114 = load i32, i32* %x161, align 4
  %sub107 = sub nsw i32 %113, %114
  %conv108 = sitofp i32 %sub107 to double
  %115 = load i32, i32* %y264, align 4
  %116 = load i32, i32* %y162, align 4
  %sub109 = sub nsw i32 %115, %116
  %conv110 = sitofp i32 %sub109 to double
  %call111 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_rectangle(%struct._GimpDrawTool* %110, i32 0, double %conv105, double %conv106, double %conv108, double %conv110)
  br label %sw.epilog

sw.bb.112:                                        ; preds = %entry
  %117 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  %118 = bitcast %struct._GimpItem* %117 to %struct._GTypeInstance*
  %call117 = call i64 @gimp_vectors_get_type() #7
  %call118 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %118, i64 %call117)
  %119 = bitcast %struct._GTypeInstance* %call118 to %struct._GimpVectors*
  %call119 = call i32 @gimp_vectors_bounds(%struct._GimpVectors* %119, double* %x1113, double* %y1114, double* %x2115, double* %y2116)
  %120 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  %call120 = call i32 @gimp_item_get_linked(%struct._GimpItem* %120)
  %tobool121 = icmp ne i32 %call120, 0
  br i1 %tobool121, label %if.then.122, label %if.end.171

if.then.122:                                      ; preds = %sw.bb.112
  %121 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call125 = call %struct._GList* @gimp_image_item_list_get_list(%struct._GimpImage* %121, i32 4, i32 4)
  store %struct._GList* %call125, %struct._GList** %linked123, align 8
  %122 = load %struct._GList*, %struct._GList** %linked123, align 8
  %call126 = call %struct._GList* @gimp_image_item_list_filter(%struct._GList* %122)
  store %struct._GList* %call126, %struct._GList** %linked123, align 8
  %123 = load %struct._GList*, %struct._GList** %linked123, align 8
  store %struct._GList* %123, %struct._GList** %list124, align 8
  br label %for.cond.127

for.cond.127:                                     ; preds = %cond.end.168, %if.then.122
  %124 = load %struct._GList*, %struct._GList** %list124, align 8
  %tobool128 = icmp ne %struct._GList* %124, null
  br i1 %tobool128, label %for.body.129, label %for.end.170

for.body.129:                                     ; preds = %for.cond.127
  %125 = load %struct._GList*, %struct._GList** %list124, align 8
  %data131 = getelementptr inbounds %struct._GList, %struct._GList* %125, i32 0, i32 0
  %126 = load i8*, i8** %data131, align 8
  %127 = bitcast i8* %126 to %struct._GimpItem*
  store %struct._GimpItem* %127, %struct._GimpItem** %item130, align 8
  %128 = load %struct._GimpItem*, %struct._GimpItem** %item130, align 8
  %129 = bitcast %struct._GimpItem* %128 to %struct._GTypeInstance*
  %call136 = call i64 @gimp_vectors_get_type() #7
  %call137 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %129, i64 %call136)
  %130 = bitcast %struct._GTypeInstance* %call137 to %struct._GimpVectors*
  %call138 = call i32 @gimp_vectors_bounds(%struct._GimpVectors* %130, double* %x3132, double* %y3133, double* %x4134, double* %y4135)
  %131 = load double, double* %x1113, align 8
  %132 = load double, double* %x3132, align 8
  %cmp139 = fcmp olt double %131, %132
  br i1 %cmp139, label %cond.true.141, label %cond.false.142

cond.true.141:                                    ; preds = %for.body.129
  %133 = load double, double* %x1113, align 8
  br label %cond.end.143

cond.false.142:                                   ; preds = %for.body.129
  %134 = load double, double* %x3132, align 8
  br label %cond.end.143

cond.end.143:                                     ; preds = %cond.false.142, %cond.true.141
  %cond144 = phi double [ %133, %cond.true.141 ], [ %134, %cond.false.142 ]
  store double %cond144, double* %x1113, align 8
  %135 = load double, double* %y1114, align 8
  %136 = load double, double* %y3133, align 8
  %cmp145 = fcmp olt double %135, %136
  br i1 %cmp145, label %cond.true.147, label %cond.false.148

cond.true.147:                                    ; preds = %cond.end.143
  %137 = load double, double* %y1114, align 8
  br label %cond.end.149

cond.false.148:                                   ; preds = %cond.end.143
  %138 = load double, double* %y3133, align 8
  br label %cond.end.149

cond.end.149:                                     ; preds = %cond.false.148, %cond.true.147
  %cond150 = phi double [ %137, %cond.true.147 ], [ %138, %cond.false.148 ]
  store double %cond150, double* %y1114, align 8
  %139 = load double, double* %x2115, align 8
  %140 = load double, double* %x4134, align 8
  %cmp151 = fcmp ogt double %139, %140
  br i1 %cmp151, label %cond.true.153, label %cond.false.154

cond.true.153:                                    ; preds = %cond.end.149
  %141 = load double, double* %x2115, align 8
  br label %cond.end.155

cond.false.154:                                   ; preds = %cond.end.149
  %142 = load double, double* %x4134, align 8
  br label %cond.end.155

cond.end.155:                                     ; preds = %cond.false.154, %cond.true.153
  %cond156 = phi double [ %141, %cond.true.153 ], [ %142, %cond.false.154 ]
  store double %cond156, double* %x2115, align 8
  %143 = load double, double* %y2116, align 8
  %144 = load double, double* %y4135, align 8
  %cmp157 = fcmp ogt double %143, %144
  br i1 %cmp157, label %cond.true.159, label %cond.false.160

cond.true.159:                                    ; preds = %cond.end.155
  %145 = load double, double* %y2116, align 8
  br label %cond.end.161

cond.false.160:                                   ; preds = %cond.end.155
  %146 = load double, double* %y4135, align 8
  br label %cond.end.161

cond.end.161:                                     ; preds = %cond.false.160, %cond.true.159
  %cond162 = phi double [ %145, %cond.true.159 ], [ %146, %cond.false.160 ]
  store double %cond162, double* %y2116, align 8
  br label %for.inc.163

for.inc.163:                                      ; preds = %cond.end.161
  %147 = load %struct._GList*, %struct._GList** %list124, align 8
  %tobool164 = icmp ne %struct._GList* %147, null
  br i1 %tobool164, label %cond.true.165, label %cond.false.167

cond.true.165:                                    ; preds = %for.inc.163
  %148 = load %struct._GList*, %struct._GList** %list124, align 8
  %next166 = getelementptr inbounds %struct._GList, %struct._GList* %148, i32 0, i32 1
  %149 = load %struct._GList*, %struct._GList** %next166, align 8
  br label %cond.end.168

cond.false.167:                                   ; preds = %for.inc.163
  br label %cond.end.168

cond.end.168:                                     ; preds = %cond.false.167, %cond.true.165
  %cond169 = phi %struct._GList* [ %149, %cond.true.165 ], [ null, %cond.false.167 ]
  store %struct._GList* %cond169, %struct._GList** %list124, align 8
  br label %for.cond.127

for.end.170:                                      ; preds = %for.cond.127
  %150 = load %struct._GList*, %struct._GList** %linked123, align 8
  call void @g_list_free(%struct._GList* %150)
  br label %if.end.171

if.end.171:                                       ; preds = %for.end.170, %sw.bb.112
  %151 = load double, double* %x1113, align 8
  %call172 = call double @floor(double %151) #7
  store double %call172, double* %x1113, align 8
  %152 = load double, double* %y1114, align 8
  %call173 = call double @floor(double %152) #7
  store double %call173, double* %y1114, align 8
  %153 = load double, double* %x2115, align 8
  %call174 = call double @ceil(double %153) #7
  store double %call174, double* %x2115, align 8
  %154 = load double, double* %y2116, align 8
  %call175 = call double @ceil(double %154) #7
  store double %call175, double* %y2116, align 8
  %155 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %156 = load double, double* %x1113, align 8
  %157 = load double, double* %y1114, align 8
  %158 = load double, double* %x2115, align 8
  %159 = load double, double* %x1113, align 8
  %sub176 = fsub double %158, %159
  %160 = load double, double* %y2116, align 8
  %161 = load double, double* %y1114, align 8
  %sub177 = fsub double %160, %161
  %call178 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_rectangle(%struct._GimpDrawTool* %155, i32 0, double %156, double %157, double %sub176, double %sub177)
  br label %sw.epilog

sw.bb.179:                                        ; preds = %entry
  %162 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %163 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %segs_in180 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %163, i32 0, i32 9
  %164 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_in180, align 8
  %165 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %num_segs_in181 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %165, i32 0, i32 7
  %166 = load i32, i32* %num_segs_in181, align 4
  %167 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %cumlx182 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %167, i32 0, i32 3
  %168 = load i32, i32* %cumlx182, align 4
  %conv183 = sitofp i32 %168 to double
  %169 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %cumly184 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %169, i32 0, i32 4
  %170 = load i32, i32* %cumly184, align 4
  %conv185 = sitofp i32 %170 to double
  %call186 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_boundary(%struct._GimpDrawTool* %162, %struct._BoundSeg* %164, i32 %166, %struct._GimpMatrix3* null, double %conv183, double %conv185)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.179, %if.end.171, %if.end.104, %sw.bb.47, %if.end.46
  %171 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %172 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %center_x = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %172, i32 0, i32 15
  %173 = load double, double* %center_x, align 8
  %174 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %cumlx187 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %174, i32 0, i32 3
  %175 = load i32, i32* %cumlx187, align 4
  %conv188 = sitofp i32 %175 to double
  %add189 = fadd double %173, %conv188
  %176 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %center_y = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %176, i32 0, i32 16
  %177 = load double, double* %center_y, align 8
  %178 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select, align 8
  %cumly190 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %178, i32 0, i32 4
  %179 = load i32, i32* %cumly190, align 4
  %conv191 = sitofp i32 %179 to double
  %add192 = fadd double %177, %conv191
  %call193 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %171, i32 4, double %add189, double %add192, i32 7, i32 7, i32 0)
  %180 = load i8*, i8** @gimp_edit_selection_tool_parent_class, align 8
  %181 = bitcast i8* %180 to %struct._GTypeClass*
  %call194 = call i64 @gimp_draw_tool_get_type() #7
  %call195 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %181, i64 %call194)
  %182 = bitcast %struct._GTypeClass* %call195 to %struct._GimpDrawToolClass*
  %draw = getelementptr inbounds %struct._GimpDrawToolClass, %struct._GimpDrawToolClass* %182, i32 0, i32 1
  %183 = load void (%struct._GimpDrawTool*)*, void (%struct._GimpDrawTool*)** %draw, align 8
  %184 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  call void %183(%struct._GimpDrawTool* %184)
  ret void
}

declare void @g_free(i8*) #1

declare void @gimp_display_shell_selection_resume(%struct._GimpDisplayShell*) #1

declare void @gimp_tool_pop_status(%struct._GimpTool*, %struct._GimpDisplay*) #1

declare void @gimp_tool_control_halt(%struct._GimpToolControl*) #1

declare void @gimp_draw_tool_stop(%struct._GimpDrawTool*) #1

declare void @tool_manager_pop_tool(%struct._Gimp*) #1

declare void @gimp_image_item_list_translate(%struct._GimpImage*, %struct._GList*, i32, i32, i32) #1

declare i32 @gimp_image_undo(%struct._GimpImage*) #1

declare %struct._GimpTool* @tool_manager_get_active(%struct._Gimp*) #1

declare void @tool_manager_button_release_active(%struct._Gimp*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_edit_selection_tool_update_motion(%struct._GimpEditSelectionTool* %edit_select, double %new_x, double %new_y, %struct._GimpDisplay* %display) #3 {
entry:
  %edit_select.addr = alloca %struct._GimpEditSelectionTool*, align 8
  %new_x.addr = alloca double, align 8
  %new_y.addr = alloca double, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %draw_tool = alloca %struct._GimpDrawTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %active_item = alloca %struct._GimpItem*, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %motion_x = alloca double, align 8
  %motion_y = alloca double, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %xoffset = alloca i32, align 4
  %yoffset = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  store %struct._GimpEditSelectionTool* %edit_select, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  store double %new_x, double* %new_x.addr, align 8
  store double %new_y, double* %new_y.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %1 = bitcast %struct._GimpEditSelectionTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_draw_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawTool*
  store %struct._GimpDrawTool* %2, %struct._GimpDrawTool** %draw_tool, align 8
  %3 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %4 = bitcast %struct._GimpEditSelectionTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  store %struct._GimpTool* %5, %struct._GimpTool** %tool, align 8
  %6 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call4 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %6)
  store %struct._GimpImage* %call4, %struct._GimpImage** %image, align 8
  call void @gdk_flush()
  %7 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %7)
  %8 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call5 = call %struct._GimpItem* @gimp_edit_selection_tool_get_active_item(%struct._GimpEditSelectionTool* %8, %struct._GimpImage* %9)
  store %struct._GimpItem* %call5, %struct._GimpItem** %active_item, align 8
  %10 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %10, i32* %off_x, i32* %off_y)
  %11 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %constrain = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %11, i32 0, i32 22
  %12 = load i32, i32* %constrain, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %start_x = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %13, i32 0, i32 23
  %14 = load double, double* %start_x, align 8
  %15 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %start_y = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %15, i32 0, i32 24
  %16 = load double, double* %start_y, align 8
  call void @gimp_constrain_line(double %14, double %16, double* %new_x.addr, double* %new_y.addr, i32 4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load double, double* %new_x.addr, align 8
  %18 = load i32, i32* %off_x, align 4
  %conv = sitofp i32 %18 to double
  %sub = fsub double %17, %conv
  store double %sub, double* %motion_x, align 8
  %19 = load double, double* %new_y.addr, align 8
  %20 = load i32, i32* %off_y, align 4
  %conv6 = sitofp i32 %20 to double
  %sub7 = fsub double %19, %conv6
  store double %sub7, double* %motion_y, align 8
  %21 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %22 = load double, double* %motion_x, align 8
  %23 = load double, double* %motion_y, align 8
  call void @gimp_edit_selection_tool_calc_coords(%struct._GimpEditSelectionTool* %21, double %22, double %23)
  %24 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %x8 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %24, i32 0, i32 5
  %25 = load i32, i32* %x8, align 4
  store i32 %25, i32* %x, align 4
  %26 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %y9 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %26, i32 0, i32 6
  %27 = load i32, i32* %y9, align 4
  store i32 %27, i32* %y, align 4
  %28 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %origx = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %28, i32 0, i32 1
  %29 = load i32, i32* %origx, align 4
  %30 = load i32, i32* %x, align 4
  %cmp = icmp ne i32 %29, %30
  br i1 %cmp, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %31 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %origy = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %31, i32 0, i32 2
  %32 = load i32, i32* %origy, align 4
  %33 = load i32, i32* %y, align 4
  %cmp11 = icmp ne i32 %32, %33
  br i1 %cmp11, label %if.then.13, label %if.end.56

if.then.13:                                       ; preds = %lor.lhs.false, %if.end
  store %struct._GError* null, %struct._GError** %error, align 8
  %34 = load i32, i32* %x, align 4
  %35 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %origx14 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %35, i32 0, i32 1
  %36 = load i32, i32* %origx14, align 4
  %sub15 = sub nsw i32 %34, %36
  store i32 %sub15, i32* %xoffset, align 4
  %37 = load i32, i32* %y, align 4
  %38 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %origy16 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %38, i32 0, i32 2
  %39 = load i32, i32* %origy16, align 4
  %sub17 = sub nsw i32 %37, %39
  store i32 %sub17, i32* %yoffset, align 4
  %40 = load i32, i32* %xoffset, align 4
  %41 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %cumlx = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %41, i32 0, i32 3
  %42 = load i32, i32* %cumlx, align 4
  %add = add nsw i32 %42, %40
  store i32 %add, i32* %cumlx, align 4
  %43 = load i32, i32* %yoffset, align 4
  %44 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %cumly = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %44, i32 0, i32 4
  %45 = load i32, i32* %cumly, align 4
  %add18 = add nsw i32 %45, %43
  store i32 %add18, i32* %cumly, align 4
  %46 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %edit_mode = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %46, i32 0, i32 17
  %47 = load i32, i32* %edit_mode, align 4
  switch i32 %47, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 6, label %sw.bb.21
    i32 4, label %sw.bb.22
    i32 5, label %sw.bb.22
    i32 7, label %sw.bb.52
  ]

sw.bb:                                            ; preds = %if.then.13, %if.then.13, %if.then.13, %if.then.13
  %48 = load i32, i32* %x, align 4
  %49 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %origx19 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %49, i32 0, i32 1
  store i32 %48, i32* %origx19, align 4
  %50 = load i32, i32* %y, align 4
  %51 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %origy20 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %51, i32 0, i32 2
  store i32 %50, i32* %origy20, align 4
  br label %sw.bb.21

sw.bb.21:                                         ; preds = %if.then.13, %sw.bb
  %52 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %53 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %live_items = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %53, i32 0, i32 18
  %54 = load %struct._GList*, %struct._GList** %live_items, align 8
  %55 = load i32, i32* %xoffset, align 4
  %56 = load i32, i32* %yoffset, align 4
  %57 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %first_move = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %57, i32 0, i32 20
  %58 = load i32, i32* %first_move, align 4
  call void @gimp_image_item_list_translate(%struct._GimpImage* %52, %struct._GList* %54, i32 %55, i32 %56, i32 %58)
  br label %sw.epilog

sw.bb.22:                                         ; preds = %if.then.13, %if.then.13
  %59 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call23 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %59)
  %60 = bitcast %struct._GimpChannel* %call23 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_selection_get_type() #7
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call24)
  %61 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpSelection*
  %62 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  %63 = bitcast %struct._GimpItem* %62 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_drawable_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call26)
  %64 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpDrawable*
  %65 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %65, i32 0, i32 1
  %66 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call28 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %66)
  %67 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %edit_mode29 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %67, i32 0, i32 17
  %68 = load i32, i32* %edit_mode29, align 4
  %cmp30 = icmp eq i32 %68, 4
  %conv31 = zext i1 %cmp30 to i32
  %call32 = call %struct._GimpLayer* @gimp_selection_float(%struct._GimpSelection* %61, %struct._GimpDrawable* %64, %struct._GimpContext* %call28, i32 %conv31, i32 0, i32 0, %struct._GError** %error)
  %tobool33 = icmp ne %struct._GimpLayer* %call32, null
  br i1 %tobool33, label %if.end.37, label %if.then.34

if.then.34:                                       ; preds = %sw.bb.22
  %69 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %gimp35 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %69, i32 0, i32 1
  %70 = load %struct._Gimp*, %struct._Gimp** %gimp35, align 8
  %71 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %72 = bitcast %struct._GimpDisplay* %71 to %struct._GTypeInstance*
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 80)
  %73 = bitcast %struct._GTypeInstance* %call36 to %struct._GObject*
  %74 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %74, i32 0, i32 2
  %75 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %70, %struct._GObject* %73, i32 1, i8* %75)
  call void @g_clear_error(%struct._GError** %error)
  %76 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %76)
  br label %return

if.end.37:                                        ; preds = %sw.bb.22
  %77 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %77, i32 0, i32 11
  %78 = load i32, i32* %x1, align 4
  %79 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %origx38 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %79, i32 0, i32 1
  %80 = load i32, i32* %origx38, align 4
  %sub39 = sub nsw i32 %80, %78
  store i32 %sub39, i32* %origx38, align 4
  %81 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %y1 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %81, i32 0, i32 12
  %82 = load i32, i32* %y1, align 4
  %83 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %origy40 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %83, i32 0, i32 2
  %84 = load i32, i32* %origy40, align 4
  %sub41 = sub nsw i32 %84, %82
  store i32 %sub41, i32* %origy40, align 4
  %85 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %x142 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %85, i32 0, i32 11
  %86 = load i32, i32* %x142, align 4
  %87 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %87, i32 0, i32 13
  %88 = load i32, i32* %x2, align 4
  %sub43 = sub nsw i32 %88, %86
  store i32 %sub43, i32* %x2, align 4
  %89 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %y144 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %89, i32 0, i32 12
  %90 = load i32, i32* %y144, align 4
  %91 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %91, i32 0, i32 14
  %92 = load i32, i32* %y2, align 4
  %sub45 = sub nsw i32 %92, %90
  store i32 %sub45, i32* %y2, align 4
  %93 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %x146 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %93, i32 0, i32 11
  store i32 0, i32* %x146, align 4
  %94 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %y147 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %94, i32 0, i32 12
  store i32 0, i32* %y147, align 4
  %95 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %edit_mode48 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %95, i32 0, i32 17
  store i32 7, i32* %edit_mode48, align 4
  %96 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %97 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call49 = call %struct._GimpItem* @gimp_edit_selection_tool_get_active_item(%struct._GimpEditSelectionTool* %96, %struct._GimpImage* %97)
  store %struct._GimpItem* %call49, %struct._GimpItem** %active_item, align 8
  %98 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  %99 = bitcast %struct._GimpItem* %98 to i8*
  %call50 = call %struct._GList* @g_list_prepend(%struct._GList* null, i8* %99)
  %100 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %live_items51 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %100, i32 0, i32 18
  store %struct._GList* %call50, %struct._GList** %live_items51, align 8
  br label %sw.bb.52

sw.bb.52:                                         ; preds = %if.then.13, %if.end.37
  %101 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %102 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %live_items53 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %102, i32 0, i32 18
  %103 = load %struct._GList*, %struct._GList** %live_items53, align 8
  %104 = load i32, i32* %xoffset, align 4
  %105 = load i32, i32* %yoffset, align 4
  %106 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %first_move54 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %106, i32 0, i32 20
  %107 = load i32, i32* %first_move54, align 4
  call void @gimp_image_item_list_translate(%struct._GimpImage* %101, %struct._GList* %103, i32 %104, i32 %105, i32 %107)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.13, %sw.bb.52, %sw.bb.21
  %108 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %first_move55 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %108, i32 0, i32 20
  store i32 0, i32* %first_move55, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %sw.epilog, %lor.lhs.false
  %109 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call57 = call %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage* %109)
  call void @gimp_projection_flush(%struct._GimpProjection* %call57)
  %110 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %111 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_pop_status(%struct._GimpTool* %110, %struct._GimpDisplay* %111)
  %112 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %113 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %114 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %114, i32 0, i32 3
  %115 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call58 = call i32 @gimp_tool_control_get_precision(%struct._GimpToolControl* %115)
  %call59 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)) #6
  %116 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %cumlx60 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %116, i32 0, i32 3
  %117 = load i32, i32* %cumlx60, align 4
  %conv61 = sitofp i32 %117 to double
  %118 = load %struct._GimpEditSelectionTool*, %struct._GimpEditSelectionTool** %edit_select.addr, align 8
  %cumly62 = getelementptr inbounds %struct._GimpEditSelectionTool, %struct._GimpEditSelectionTool* %118, i32 0, i32 4
  %119 = load i32, i32* %cumly62, align 4
  %conv63 = sitofp i32 %119 to double
  call void @gimp_tool_push_status_coords(%struct._GimpTool* %112, %struct._GimpDisplay* %113, i32 %call58, i8* %call59, double %conv61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), double %conv63, i8* null)
  %120 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %120)
  br label %return

return:                                           ; preds = %if.end.56, %if.then.34
  ret void
}

declare void @gdk_flush() #1

declare void @gimp_draw_tool_pause(%struct._GimpDrawTool*) #1

declare void @gimp_constrain_line(double, double, double*, double*, i32) #1

declare %struct._GimpLayer* @gimp_selection_float(%struct._GimpSelection*, %struct._GimpDrawable*, %struct._GimpContext*, i32, i32, i32, %struct._GError**) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_selection_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #1

declare void @g_clear_error(%struct._GError**) #1

declare void @gimp_draw_tool_resume(%struct._GimpDrawTool*) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare void @gimp_projection_flush(%struct._GimpProjection*) #1

declare %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage*) #1

declare i32 @gimp_get_constrain_behavior_mask() #1

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_boundary(%struct._GimpDrawTool*, %struct._BoundSeg*, i32, %struct._GimpMatrix3*, double, double) #1

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_rectangle(%struct._GimpDrawTool*, i32, double, double, double, double) #1

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool*, i32, double, double, i32, i32, i32) #1

declare void @gimp_tool_control_set_motion_mode(%struct._GimpToolControl*, i32) #1

declare void @g_log(i8*, i32, i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare %struct._GtkWidget* @gtk_get_event_widget(%union._GdkEvent*) #1

declare i32 @gdk_events_pending() #1

declare %union._GdkEvent* @gdk_event_get() #1

declare void @gdk_event_free(%union._GdkEvent*) #1

declare %struct._GList* @g_list_reverse(%struct._GList*) #1

declare void @gdk_event_put(%union._GdkEvent*) #1

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
