; ModuleID = './app/tools/gimpvectortool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpVectorToolClass = type { %struct._GimpDrawToolClass }
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
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
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
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GimpPaintInfo = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpToolControl = type { %struct._GimpObject, i32, i32, i32, %struct._GSList*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._GimpDrawable = type opaque
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpCanvasItem = type { %struct._GimpObject }
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpDisplayConfig = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GdkEventKey = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32, i8*, i16, i8, i8 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpUIManager = type opaque
%struct._GimpDrawTool = type { %struct._GimpTool, %struct._GimpDisplay*, i32, i32, i64, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GList* }
%struct._GimpVectorTool = type { %struct._GimpDrawTool, i32, i32, i32, i32, double, double, i32, i32, %struct._GimpAnchor*, %struct._GimpAnchor*, %struct._GimpStroke*, double, %struct._GimpVectors*, %struct._GimpVectors*, i32, %struct._GimpAnchor*, %struct._GimpStroke*, i32 }
%struct._GimpVectors = type { %struct._GimpItem, %struct._GList*, i32, i32, double, %struct.cairo_path*, i32, i32, double, double, double, double }
%struct._GimpItem = type { %struct._GimpViewable }
%struct.cairo_path = type { i32, %union._cairo_path_data_t*, i32 }
%union._cairo_path_data_t = type { %struct.anon.0 }
%struct.anon.0 = type { double, double }
%struct._GimpAnchor = type { %struct._GimpCoords, i32, i32 }
%struct._GimpStroke = type { %struct._GimpObject, i32, %struct._GList*, i32 }
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
%struct._GimpVectorOptions = type { %struct._GimpToolOptions, i32, i32, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GimpUndo = type { %struct._GimpViewable, %struct._GimpImage*, i32, i32, i32, %struct._TempBuf*, i32 }
%struct._TempBuf = type opaque
%struct._GimpUndoAccumulator = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpUndoStack = type { %struct._GimpUndo, %struct._GimpContainer* }
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

@gimp_vector_tool_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpVectorTool\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"gimp-vector-tool\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Paths\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Paths Tool: Create and edit paths\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Pat_hs\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"gimp-tool-path\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Gimp-Tools\00", align 1
@__func__.gimp_vector_tool_set_vectors = private unnamed_addr constant [29 x i8] c"gimp_vector_tool_set_vectors\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"GIMP_IS_VECTOR_TOOL (vector_tool)\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"vectors == NULL || GIMP_IS_VECTORS (vectors)\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"active-vectors-changed\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"removed\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"visibility-changed\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"freeze\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"thaw\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"extended-clicked\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"vectors-edit-mode\00", align 1
@gimp_vector_tool_parent_class = internal global i8* null, align 8
@GimpVectorTool_private_offset = internal global i32 0, align 4
@__func__.gimp_vector_tool_button_press = private unnamed_addr constant [30 x i8] c"gimp_vector_tool_button_press\00", align 1
@.str.18 = private unnamed_addr constant [129 x i8] c"vector_tool->vectors != NULL || vector_tool->function == VECTORS_SELECT_VECTOR || vector_tool->function == VECTORS_CREATE_VECTOR\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"Unnamed\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"Add Stroke\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"Add Anchor\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"Insert Anchor\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"Drag Handle\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"Drag Anchor\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"Drag Anchors\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"Drag Curve\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"Connect Strokes\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"Drag Path\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"Convert Edge\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"Delete Anchor\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"Delete Segment\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"The active path is locked.\00", align 1
@__func__.gimp_vector_tool_undo_push = private unnamed_addr constant [27 x i8] c"gimp_vector_tool_undo_push\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"vector_tool->vectors != NULL\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"Move Anchors\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"Delete Anchors\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"Click to pick path to edit\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"Click to create a new path\00", align 1
@.str.38 = private unnamed_addr constant [44 x i8] c"Click to create a new component of the path\00", align 1
@.str.39 = private unnamed_addr constant [43 x i8] c"Click or Click-Drag to create a new anchor\00", align 1
@.str.40 = private unnamed_addr constant [37 x i8] c"Click-Drag to move the anchor around\00", align 1
@.str.41 = private unnamed_addr constant [38 x i8] c"Click-Drag to move the anchors around\00", align 1
@.str.42 = private unnamed_addr constant [37 x i8] c"Click-Drag to move the handle around\00", align 1
@.str.43 = private unnamed_addr constant [52 x i8] c"Click-Drag to move the handles around symmetrically\00", align 1
@.str.44 = private unnamed_addr constant [44 x i8] c"Click-Drag to change the shape of the curve\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"%s: symmetrical\00", align 1
@.str.46 = private unnamed_addr constant [40 x i8] c"Click-Drag to move the component around\00", align 1
@.str.47 = private unnamed_addr constant [35 x i8] c"Click-Drag to move the path around\00", align 1
@.str.48 = private unnamed_addr constant [43 x i8] c"Click-Drag to insert an anchor on the path\00", align 1
@.str.49 = private unnamed_addr constant [28 x i8] c"Click to delete this anchor\00", align 1
@.str.50 = private unnamed_addr constant [56 x i8] c"Click to connect this anchor with the selected endpoint\00", align 1
@.str.51 = private unnamed_addr constant [26 x i8] c"Click to open up the path\00", align 1
@.str.52 = private unnamed_addr constant [32 x i8] c"Click to make this node angular\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.54 = private unnamed_addr constant [49 x i8] c"There is no active layer or channel to stroke to\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"Stroke Path\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"gimp-path-stroke\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_vector_tool_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_vector_tool_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_vector_tool_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 288, void (i8*, i8*)* bitcast (void (i8*)* @gimp_vector_tool_class_intern_init to void (i8*, i8*)*), i32 368, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpVectorTool*)* @gimp_vector_tool_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_vector_tool_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_vector_tool_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_draw_tool_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_vector_tool_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_vector_tool_parent_class, align 8
  %1 = load i32, i32* @GimpVectorTool_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpVectorTool_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpVectorToolClass*
  call void @gimp_vector_tool_class_init(%struct._GimpVectorToolClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_vector_tool_init(%struct._GimpVectorTool* %vector_tool) #3 {
entry:
  %vector_tool.addr = alloca %struct._GimpVectorTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  store %struct._GimpVectorTool* %vector_tool, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %0 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %1 = bitcast %struct._GimpVectorTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 3
  %4 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_set_handle_empty_image(%struct._GimpToolControl* %4, i32 1)
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control2 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 3
  %6 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control2, align 8
  call void @gimp_tool_control_set_motion_mode(%struct._GimpToolControl* %6, i32 1)
  %7 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control3 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %7, i32 0, i32 3
  %8 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control3, align 8
  call void @gimp_tool_control_set_precision(%struct._GimpToolControl* %8, i32 2)
  %9 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control4 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %9, i32 0, i32 3
  %10 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control4, align 8
  call void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl* %10, i32 6)
  %11 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %function = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %11, i32 0, i32 1
  store i32 1, i32* %function, align 4
  %12 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %restriction = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %12, i32 0, i32 2
  store i32 0, i32* %restriction, align 4
  %13 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %modifier_lock = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %13, i32 0, i32 3
  store i32 0, i32* %modifier_lock, align 4
  %14 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %last_x = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %14, i32 0, i32 5
  store double 0.000000e+00, double* %last_x, align 8
  %15 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %last_y = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %15, i32 0, i32 6
  store double 0.000000e+00, double* %last_y, align 8
  %16 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %undo_motion = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %16, i32 0, i32 7
  store i32 0, i32* %undo_motion, align 4
  %17 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %have_undo = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %17, i32 0, i32 8
  store i32 0, i32* %have_undo, align 4
  %18 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %cur_anchor = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %18, i32 0, i32 9
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %cur_anchor, align 8
  %19 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %cur_anchor2 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %19, i32 0, i32 10
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %cur_anchor2, align 8
  %20 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %cur_stroke = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %20, i32 0, i32 11
  store %struct._GimpStroke* null, %struct._GimpStroke** %cur_stroke, align 8
  %21 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %cur_position = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %21, i32 0, i32 12
  store double 0.000000e+00, double* %cur_position, align 8
  %22 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %cur_vectors = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %22, i32 0, i32 13
  store %struct._GimpVectors* null, %struct._GimpVectors** %cur_vectors, align 8
  %23 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %vectors = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %23, i32 0, i32 14
  store %struct._GimpVectors* null, %struct._GimpVectors** %vectors, align 8
  %24 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %sel_count = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %24, i32 0, i32 15
  store i32 0, i32* %sel_count, align 4
  %25 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %sel_anchor = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %25, i32 0, i32 16
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %sel_anchor, align 8
  %26 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %sel_stroke = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %26, i32 0, i32 17
  store %struct._GimpStroke* null, %struct._GimpStroke** %sel_stroke, align 8
  %27 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %saved_mode = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %27, i32 0, i32 18
  store i32 0, i32* %saved_mode, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_vector_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, i8* %data) #3 {
entry:
  %callback.addr = alloca void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  %call = call i64 @gimp_vector_tool_get_type() #7
  %call1 = call i64 @gimp_vector_options_get_type() #7
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)) #6
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0)) #6
  %1 = load i8*, i8** %data.addr, align 8
  call void %0(i64 %call, i64 %call1, %struct._GtkWidget* (%struct._GimpToolOptions*)* @gimp_vector_options_gui, i32 32704, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i8* %call2, i8* %call3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* %1)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_vector_options_get_type() #2

declare %struct._GtkWidget* @gimp_vector_options_gui(%struct._GimpToolOptions*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

; Function Attrs: nounwind uwtable
define void @gimp_vector_tool_set_vectors(%struct._GimpVectorTool* %vector_tool, %struct._GimpVectors* %vectors) #3 {
entry:
  %vector_tool.addr = alloca %struct._GimpVectorTool*, align 8
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %draw_tool = alloca %struct._GimpDrawTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %options = alloca %struct._GimpVectorOptions*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %old_image = alloca %struct._GimpImage*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %display146 = alloca %struct._GimpDisplay*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GimpVectorTool* %vector_tool, %struct._GimpVectorTool** %vector_tool.addr, align 8
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store %struct._GimpItem* null, %struct._GimpItem** %item, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %1 = bitcast %struct._GimpVectorTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_vector_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_vector_tool_set_vectors, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.177

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %cmp12 = icmp eq %struct._GimpVectors* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %15 = bitcast %struct._GimpVectors* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_vectors_get_type() #7
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %lor.lhs.false
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type27, align 8
  %22 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %21, %22
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %24 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #8
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %25 = load i32, i32* %__r19, align 4
  store i32 %25, i32* %tmp34
  %26 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %26, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33, %do.body.11
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_vector_tool_set_vectors, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.177

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %28 = bitcast %struct._GimpVectorTool* %27 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_draw_tool_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call40)
  %29 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpDrawTool*
  store %struct._GimpDrawTool* %29, %struct._GimpDrawTool** %draw_tool, align 8
  %30 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %31 = bitcast %struct._GimpVectorTool* %30 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_tool_get_type() #7
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call42)
  %32 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpTool*
  store %struct._GimpTool* %32, %struct._GimpTool** %tool, align 8
  %33 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %34 = bitcast %struct._GimpVectorTool* %33 to %struct._GTypeInstance*
  %call44 = call i64 @gimp_tool_get_type() #7
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call44)
  %35 = bitcast %struct._GTypeInstance* %call45 to %struct._GimpTool*
  %call46 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %35)
  %36 = bitcast %struct._GimpToolOptions* %call46 to %struct._GTypeInstance*
  %call47 = call i64 @gimp_vector_options_get_type() #7
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call47)
  %37 = bitcast %struct._GTypeInstance* %call48 to %struct._GimpVectorOptions*
  store %struct._GimpVectorOptions* %37, %struct._GimpVectorOptions** %options, align 8
  %38 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %tobool49 = icmp ne %struct._GimpVectors* %38, null
  br i1 %tobool49, label %if.then.50, label %if.end.53

if.then.50:                                       ; preds = %do.end.39
  %39 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %40 = bitcast %struct._GimpVectors* %39 to %struct._GTypeInstance*
  %call51 = call i64 @gimp_item_get_type() #7
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call51)
  %41 = bitcast %struct._GTypeInstance* %call52 to %struct._GimpItem*
  store %struct._GimpItem* %41, %struct._GimpItem** %item, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.50, %do.end.39
  %42 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %43 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %vectors54 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %43, i32 0, i32 14
  %44 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors54, align 8
  %cmp55 = icmp eq %struct._GimpVectors* %42, %44
  br i1 %cmp55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.53
  br label %if.end.177

if.end.57:                                        ; preds = %if.end.53
  %45 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %45)
  %46 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %call58 = call i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool* %46)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %land.lhs.true.60, label %if.end.67

land.lhs.true.60:                                 ; preds = %if.end.57
  %47 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %tobool61 = icmp ne %struct._GimpVectors* %47, null
  br i1 %tobool61, label %lor.lhs.false.62, label %if.then.66

lor.lhs.false.62:                                 ; preds = %land.lhs.true.60
  %48 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %display = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %48, i32 0, i32 1
  %49 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call63 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %49)
  %50 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call64 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %50)
  %cmp65 = icmp ne %struct._GimpImage* %call63, %call64
  br i1 %cmp65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %lor.lhs.false.62, %land.lhs.true.60
  %51 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_stop(%struct._GimpDrawTool* %51)
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %lor.lhs.false.62, %if.end.57
  %52 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %vectors68 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %52, i32 0, i32 14
  %53 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors68, align 8
  %tobool69 = icmp ne %struct._GimpVectors* %53, null
  br i1 %tobool69, label %if.then.70, label %if.end.100

if.then.70:                                       ; preds = %if.end.67
  %54 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %vectors72 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %54, i32 0, i32 14
  %55 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors72, align 8
  %56 = bitcast %struct._GimpVectors* %55 to %struct._GTypeInstance*
  %call73 = call i64 @gimp_item_get_type() #7
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call73)
  %57 = bitcast %struct._GTypeInstance* %call74 to %struct._GimpItem*
  %call75 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %57)
  store %struct._GimpImage* %call75, %struct._GimpImage** %old_image, align 8
  %58 = load %struct._GimpImage*, %struct._GimpImage** %old_image, align 8
  %59 = bitcast %struct._GimpImage* %58 to i8*
  %60 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %61 = bitcast %struct._GimpVectorTool* %60 to i8*
  %call76 = call i32 @g_signal_handlers_disconnect_matched(i8* %59, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, %struct._GimpVectorTool*)* @gimp_vector_tool_vectors_changed to i8*), i8* %61)
  %62 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %vectors77 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %62, i32 0, i32 14
  %63 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors77, align 8
  %64 = bitcast %struct._GimpVectors* %63 to i8*
  %65 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %66 = bitcast %struct._GimpVectorTool* %65 to i8*
  %call78 = call i32 @g_signal_handlers_disconnect_matched(i8* %64, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpVectors*, %struct._GimpVectorTool*)* @gimp_vector_tool_vectors_removed to i8*), i8* %66)
  %67 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %vectors79 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %67, i32 0, i32 14
  %68 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors79, align 8
  %69 = bitcast %struct._GimpVectors* %68 to i8*
  %70 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %71 = bitcast %struct._GimpVectorTool* %70 to i8*
  %call80 = call i32 @g_signal_handlers_disconnect_matched(i8* %69, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpVectors*, %struct._GimpVectorTool*)* @gimp_vector_tool_vectors_visible to i8*), i8* %71)
  %72 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %vectors81 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %72, i32 0, i32 14
  %73 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors81, align 8
  %74 = bitcast %struct._GimpVectors* %73 to i8*
  %75 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %76 = bitcast %struct._GimpVectorTool* %75 to i8*
  %call82 = call i32 @g_signal_handlers_disconnect_matched(i8* %74, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpVectors*, %struct._GimpVectorTool*)* @gimp_vector_tool_vectors_freeze to i8*), i8* %76)
  %77 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %vectors83 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %77, i32 0, i32 14
  %78 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors83, align 8
  %79 = bitcast %struct._GimpVectors* %78 to i8*
  %80 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %81 = bitcast %struct._GimpVectorTool* %80 to i8*
  %call84 = call i32 @g_signal_handlers_disconnect_matched(i8* %79, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpVectors*, %struct._GimpVectorTool*)* @gimp_vector_tool_vectors_thaw to i8*), i8* %81)
  %82 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %vectors85 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %82, i32 0, i32 14
  %83 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors85, align 8
  %84 = bitcast %struct._GimpVectors* %83 to i8*
  call void @g_object_unref(i8* %84)
  %85 = load %struct._GimpVectorOptions*, %struct._GimpVectorOptions** %options, align 8
  %to_selection_button = getelementptr inbounds %struct._GimpVectorOptions, %struct._GimpVectorOptions* %85, i32 0, i32 3
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %to_selection_button, align 8
  %tobool86 = icmp ne %struct._GtkWidget* %86, null
  br i1 %tobool86, label %if.then.87, label %if.end.93

if.then.87:                                       ; preds = %if.then.70
  %87 = load %struct._GimpVectorOptions*, %struct._GimpVectorOptions** %options, align 8
  %to_selection_button88 = getelementptr inbounds %struct._GimpVectorOptions, %struct._GimpVectorOptions* %87, i32 0, i32 3
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %to_selection_button88, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %88, i32 0)
  %89 = load %struct._GimpVectorOptions*, %struct._GimpVectorOptions** %options, align 8
  %to_selection_button89 = getelementptr inbounds %struct._GimpVectorOptions, %struct._GimpVectorOptions* %89, i32 0, i32 3
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %to_selection_button89, align 8
  %91 = bitcast %struct._GtkWidget* %90 to i8*
  %92 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %93 = bitcast %struct._GimpTool* %92 to i8*
  %call90 = call i32 @g_signal_handlers_disconnect_matched(i8* %91, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpVectorTool*)* @gimp_vector_tool_to_selection to i8*), i8* %93)
  %94 = load %struct._GimpVectorOptions*, %struct._GimpVectorOptions** %options, align 8
  %to_selection_button91 = getelementptr inbounds %struct._GimpVectorOptions, %struct._GimpVectorOptions* %94, i32 0, i32 3
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %to_selection_button91, align 8
  %96 = bitcast %struct._GtkWidget* %95 to i8*
  %97 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %98 = bitcast %struct._GimpTool* %97 to i8*
  %call92 = call i32 @g_signal_handlers_disconnect_matched(i8* %96, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpVectorTool*, i32)* @gimp_vector_tool_to_selection_extended to i8*), i8* %98)
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.87, %if.then.70
  %99 = load %struct._GimpVectorOptions*, %struct._GimpVectorOptions** %options, align 8
  %stroke_button = getelementptr inbounds %struct._GimpVectorOptions, %struct._GimpVectorOptions* %99, i32 0, i32 4
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %stroke_button, align 8
  %tobool94 = icmp ne %struct._GtkWidget* %100, null
  br i1 %tobool94, label %if.then.95, label %if.end.99

if.then.95:                                       ; preds = %if.end.93
  %101 = load %struct._GimpVectorOptions*, %struct._GimpVectorOptions** %options, align 8
  %stroke_button96 = getelementptr inbounds %struct._GimpVectorOptions, %struct._GimpVectorOptions* %101, i32 0, i32 4
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %stroke_button96, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %102, i32 0)
  %103 = load %struct._GimpVectorOptions*, %struct._GimpVectorOptions** %options, align 8
  %stroke_button97 = getelementptr inbounds %struct._GimpVectorOptions, %struct._GimpVectorOptions* %103, i32 0, i32 4
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %stroke_button97, align 8
  %105 = bitcast %struct._GtkWidget* %104 to i8*
  %106 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %107 = bitcast %struct._GimpTool* %106 to i8*
  %call98 = call i32 @g_signal_handlers_disconnect_matched(i8* %105, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpVectorTool*, %struct._GtkWidget*)* @gimp_vector_tool_stroke_vectors to i8*), i8* %107)
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.95, %if.end.93
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.end.67
  %108 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %109 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %vectors101 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %109, i32 0, i32 14
  store %struct._GimpVectors* %108, %struct._GimpVectors** %vectors101, align 8
  %110 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %function = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %110, i32 0, i32 1
  store i32 15, i32* %function, align 4
  %111 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  call void @gimp_vector_tool_verify_state(%struct._GimpVectorTool* %111)
  %112 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %vectors102 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %112, i32 0, i32 14
  %113 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors102, align 8
  %tobool103 = icmp ne %struct._GimpVectors* %113, null
  br i1 %tobool103, label %if.end.107, label %if.then.104

if.then.104:                                      ; preds = %if.end.100
  %114 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display105 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %114, i32 0, i32 4
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %display105, align 8
  %115 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %115)
  %116 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %function106 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %116, i32 0, i32 1
  store i32 1, i32* %function106, align 4
  br label %if.end.177

if.end.107:                                       ; preds = %if.end.100
  %117 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %118 = bitcast %struct._GimpVectors* %117 to i8*
  %call108 = call i8* @g_object_ref(i8* %118)
  %119 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call109 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %119)
  %120 = bitcast %struct._GimpImage* %call109 to i8*
  %121 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %122 = bitcast %struct._GimpVectorTool* %121 to i8*
  %call110 = call i64 @g_signal_connect_object(i8* %120, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, %struct._GimpVectorTool*)* @gimp_vector_tool_vectors_changed to void ()*), i8* %122, i32 0)
  %123 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %124 = bitcast %struct._GimpVectors* %123 to i8*
  %125 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %126 = bitcast %struct._GimpVectorTool* %125 to i8*
  %call111 = call i64 @g_signal_connect_object(i8* %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GimpVectors*, %struct._GimpVectorTool*)* @gimp_vector_tool_vectors_removed to void ()*), i8* %126, i32 0)
  %127 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %128 = bitcast %struct._GimpVectors* %127 to i8*
  %129 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %130 = bitcast %struct._GimpVectorTool* %129 to i8*
  %call112 = call i64 @g_signal_connect_object(i8* %128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (void (%struct._GimpVectors*, %struct._GimpVectorTool*)* @gimp_vector_tool_vectors_visible to void ()*), i8* %130, i32 0)
  %131 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %132 = bitcast %struct._GimpVectors* %131 to i8*
  %133 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %134 = bitcast %struct._GimpVectorTool* %133 to i8*
  %call113 = call i64 @g_signal_connect_object(i8* %132, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GimpVectors*, %struct._GimpVectorTool*)* @gimp_vector_tool_vectors_freeze to void ()*), i8* %134, i32 0)
  %135 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %136 = bitcast %struct._GimpVectors* %135 to i8*
  %137 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %138 = bitcast %struct._GimpVectorTool* %137 to i8*
  %call114 = call i64 @g_signal_connect_object(i8* %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GimpVectors*, %struct._GimpVectorTool*)* @gimp_vector_tool_vectors_thaw to void ()*), i8* %138, i32 0)
  %139 = load %struct._GimpVectorOptions*, %struct._GimpVectorOptions** %options, align 8
  %to_selection_button115 = getelementptr inbounds %struct._GimpVectorOptions, %struct._GimpVectorOptions* %139, i32 0, i32 3
  %140 = load %struct._GtkWidget*, %struct._GtkWidget** %to_selection_button115, align 8
  %tobool116 = icmp ne %struct._GtkWidget* %140, null
  br i1 %tobool116, label %if.then.117, label %if.end.123

if.then.117:                                      ; preds = %if.end.107
  %141 = load %struct._GimpVectorOptions*, %struct._GimpVectorOptions** %options, align 8
  %to_selection_button118 = getelementptr inbounds %struct._GimpVectorOptions, %struct._GimpVectorOptions* %141, i32 0, i32 3
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %to_selection_button118, align 8
  %143 = bitcast %struct._GtkWidget* %142 to i8*
  %144 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %145 = bitcast %struct._GimpTool* %144 to i8*
  %call119 = call i64 @g_signal_connect_data(i8* %143, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GimpVectorTool*)* @gimp_vector_tool_to_selection to void ()*), i8* %145, void (i8*, %struct._GClosure*)* null, i32 2)
  %146 = load %struct._GimpVectorOptions*, %struct._GimpVectorOptions** %options, align 8
  %to_selection_button120 = getelementptr inbounds %struct._GimpVectorOptions, %struct._GimpVectorOptions* %146, i32 0, i32 3
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %to_selection_button120, align 8
  %148 = bitcast %struct._GtkWidget* %147 to i8*
  %149 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %150 = bitcast %struct._GimpTool* %149 to i8*
  %call121 = call i64 @g_signal_connect_data(i8* %148, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), void ()* bitcast (void (%struct._GimpVectorTool*, i32)* @gimp_vector_tool_to_selection_extended to void ()*), i8* %150, void (i8*, %struct._GClosure*)* null, i32 2)
  %151 = load %struct._GimpVectorOptions*, %struct._GimpVectorOptions** %options, align 8
  %to_selection_button122 = getelementptr inbounds %struct._GimpVectorOptions, %struct._GimpVectorOptions* %151, i32 0, i32 3
  %152 = load %struct._GtkWidget*, %struct._GtkWidget** %to_selection_button122, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %152, i32 1)
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.117, %if.end.107
  %153 = load %struct._GimpVectorOptions*, %struct._GimpVectorOptions** %options, align 8
  %stroke_button124 = getelementptr inbounds %struct._GimpVectorOptions, %struct._GimpVectorOptions* %153, i32 0, i32 4
  %154 = load %struct._GtkWidget*, %struct._GtkWidget** %stroke_button124, align 8
  %tobool125 = icmp ne %struct._GtkWidget* %154, null
  br i1 %tobool125, label %if.then.126, label %if.end.130

if.then.126:                                      ; preds = %if.end.123
  %155 = load %struct._GimpVectorOptions*, %struct._GimpVectorOptions** %options, align 8
  %stroke_button127 = getelementptr inbounds %struct._GimpVectorOptions, %struct._GimpVectorOptions* %155, i32 0, i32 4
  %156 = load %struct._GtkWidget*, %struct._GtkWidget** %stroke_button127, align 8
  %157 = bitcast %struct._GtkWidget* %156 to i8*
  %158 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %159 = bitcast %struct._GimpTool* %158 to i8*
  %call128 = call i64 @g_signal_connect_data(i8* %157, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GimpVectorTool*, %struct._GtkWidget*)* @gimp_vector_tool_stroke_vectors to void ()*), i8* %159, void (i8*, %struct._GClosure*)* null, i32 2)
  %160 = load %struct._GimpVectorOptions*, %struct._GimpVectorOptions** %options, align 8
  %stroke_button129 = getelementptr inbounds %struct._GimpVectorOptions, %struct._GimpVectorOptions* %160, i32 0, i32 4
  %161 = load %struct._GtkWidget*, %struct._GtkWidget** %stroke_button129, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %161, i32 1)
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.126, %if.end.123
  %162 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %call131 = call i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool* %162)
  %tobool132 = icmp ne i32 %call131, 0
  br i1 %tobool132, label %if.end.174, label %if.then.133

if.then.133:                                      ; preds = %if.end.130
  %163 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display134 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %163, i32 0, i32 4
  %164 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display134, align 8
  %tobool135 = icmp ne %struct._GimpDisplay* %164, null
  br i1 %tobool135, label %land.lhs.true.136, label %if.else.143

land.lhs.true.136:                                ; preds = %if.then.133
  %165 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display137 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %165, i32 0, i32 4
  %166 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display137, align 8
  %call138 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %166)
  %167 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call139 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %167)
  %cmp140 = icmp eq %struct._GimpImage* %call138, %call139
  br i1 %cmp140, label %if.then.141, label %if.else.143

if.then.141:                                      ; preds = %land.lhs.true.136
  %168 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %169 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display142 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %169, i32 0, i32 4
  %170 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display142, align 8
  call void @gimp_draw_tool_start(%struct._GimpDrawTool* %168, %struct._GimpDisplay* %170)
  br label %if.end.173

if.else.143:                                      ; preds = %land.lhs.true.136, %if.then.133
  %171 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %tool_info = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %171, i32 0, i32 1
  %172 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %gimp = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %172, i32 0, i32 1
  %173 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call147 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %173)
  store %struct._GimpContext* %call147, %struct._GimpContext** %context, align 8
  %174 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call148 = call i8* @gimp_context_get_display(%struct._GimpContext* %174)
  %175 = bitcast i8* %call148 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %175, %struct._GimpDisplay** %display146, align 8
  %176 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display146, align 8
  %tobool149 = icmp ne %struct._GimpDisplay* %176, null
  br i1 %tobool149, label %lor.lhs.false.150, label %if.then.154

lor.lhs.false.150:                                ; preds = %if.else.143
  %177 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display146, align 8
  %call151 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %177)
  %178 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call152 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %178)
  %cmp153 = icmp ne %struct._GimpImage* %call151, %call152
  br i1 %cmp153, label %if.then.154, label %if.end.166

if.then.154:                                      ; preds = %lor.lhs.false.150, %if.else.143
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %display146, align 8
  %179 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call156 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %179)
  %gimp157 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %call156, i32 0, i32 1
  %180 = load %struct._Gimp*, %struct._Gimp** %gimp157, align 8
  %call158 = call %struct._GList* @gimp_get_display_iter(%struct._Gimp* %180)
  store %struct._GList* %call158, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.154
  %181 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool159 = icmp ne %struct._GList* %181, null
  br i1 %tobool159, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %182 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %182, i32 0, i32 0
  %183 = load i8*, i8** %data, align 8
  %184 = bitcast i8* %183 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %184, %struct._GimpDisplay** %display146, align 8
  %185 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display146, align 8
  %call160 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %185)
  %186 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call161 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %186)
  %cmp162 = icmp eq %struct._GimpImage* %call160, %call161
  br i1 %cmp162, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %for.body
  %187 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %188 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display146, align 8
  %189 = bitcast %struct._GimpDisplay* %188 to i8*
  call void @gimp_context_set_display(%struct._GimpContext* %187, i8* %189)
  br label %for.end

if.end.164:                                       ; preds = %for.body
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %display146, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.164
  %190 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool165 = icmp ne %struct._GList* %190, null
  br i1 %tobool165, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %191 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %191, i32 0, i32 1
  %192 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %192, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.163, %for.cond
  br label %if.end.166

if.end.166:                                       ; preds = %for.end, %lor.lhs.false.150
  %193 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display146, align 8
  %194 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display167 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %194, i32 0, i32 4
  store %struct._GimpDisplay* %193, %struct._GimpDisplay** %display167, align 8
  %195 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display168 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %195, i32 0, i32 4
  %196 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display168, align 8
  %tobool169 = icmp ne %struct._GimpDisplay* %196, null
  br i1 %tobool169, label %if.then.170, label %if.end.172

if.then.170:                                      ; preds = %if.end.166
  %197 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %198 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display171 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %198, i32 0, i32 4
  %199 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display171, align 8
  call void @gimp_draw_tool_start(%struct._GimpDrawTool* %197, %struct._GimpDisplay* %199)
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.170, %if.end.166
  br label %if.end.173

if.end.173:                                       ; preds = %if.end.172, %if.then.141
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173, %if.end.130
  %200 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %200)
  %201 = load %struct._GimpVectorOptions*, %struct._GimpVectorOptions** %options, align 8
  %edit_mode = getelementptr inbounds %struct._GimpVectorOptions, %struct._GimpVectorOptions* %201, i32 0, i32 1
  %202 = load i32, i32* %edit_mode, align 4
  %cmp175 = icmp ne i32 %202, 0
  br i1 %cmp175, label %if.then.176, label %if.end.177

if.then.176:                                      ; preds = %if.end.174
  %203 = load %struct._GimpVectorOptions*, %struct._GimpVectorOptions** %options, align 8
  %204 = bitcast %struct._GimpVectorOptions* %203 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %204, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i32 0, i8* null)
  br label %if.end.177

if.end.177:                                       ; preds = %if.else.9, %if.else.37, %if.then.56, %if.then.104, %if.then.176, %if.end.174
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #5

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_vectors_get_type() #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

declare %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare void @gimp_draw_tool_pause(%struct._GimpDrawTool*) #1

declare i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool*) #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

declare void @gimp_draw_tool_stop(%struct._GimpDrawTool*) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_vector_tool_vectors_changed(%struct._GimpImage* %image, %struct._GimpVectorTool* %vector_tool) #3 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %vector_tool.addr = alloca %struct._GimpVectorTool*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpVectorTool* %vector_tool, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %0 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %1)
  call void @gimp_vector_tool_set_vectors(%struct._GimpVectorTool* %0, %struct._GimpVectors* %call)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_vector_tool_vectors_removed(%struct._GimpVectors* %vectors, %struct._GimpVectorTool* %vector_tool) #3 {
entry:
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %vector_tool.addr = alloca %struct._GimpVectorTool*, align 8
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store %struct._GimpVectorTool* %vector_tool, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %0 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  call void @gimp_vector_tool_set_vectors(%struct._GimpVectorTool* %0, %struct._GimpVectors* null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_vector_tool_vectors_visible(%struct._GimpVectors* %vectors, %struct._GimpVectorTool* %vector_tool) #3 {
entry:
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %vector_tool.addr = alloca %struct._GimpVectorTool*, align 8
  %draw_tool = alloca %struct._GimpDrawTool*, align 8
  %stroke = alloca %struct._GimpStroke*, align 8
  %coords = alloca %struct._GArray*, align 8
  %closed = alloca i32, align 4
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store %struct._GimpVectorTool* %vector_tool, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %0 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %1 = bitcast %struct._GimpVectorTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_draw_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawTool*
  store %struct._GimpDrawTool* %2, %struct._GimpDrawTool** %draw_tool, align 8
  %3 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %call2 = call i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool* %3)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %paused_count = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %4, i32 0, i32 2
  %5 = load i32, i32* %paused_count, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end.14

if.then:                                          ; preds = %land.lhs.true
  store %struct._GimpStroke* null, %struct._GimpStroke** %stroke, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.13, %if.then
  %6 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %7 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %call3 = call %struct._GimpStroke* @gimp_vectors_stroke_get_next(%struct._GimpVectors* %6, %struct._GimpStroke* %7)
  store %struct._GimpStroke* %call3, %struct._GimpStroke** %stroke, align 8
  %tobool4 = icmp ne %struct._GimpStroke* %call3, null
  br i1 %tobool4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %call5 = call %struct._GArray* @gimp_stroke_interpolate(%struct._GimpStroke* %8, double 1.000000e+00, i32* %closed)
  store %struct._GArray* %call5, %struct._GArray** %coords, align 8
  %9 = load %struct._GArray*, %struct._GArray** %coords, align 8
  %tobool6 = icmp ne %struct._GArray* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.13

if.then.7:                                        ; preds = %while.body
  %10 = load %struct._GArray*, %struct._GArray** %coords, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %10, i32 0, i32 1
  %11 = load i32, i32* %len, align 4
  %tobool8 = icmp ne i32 %11, 0
  br i1 %tobool8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then.7
  %12 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %13 = load %struct._GArray*, %struct._GArray** %coords, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %13, i32 0, i32 0
  %14 = load i8*, i8** %data, align 8
  %15 = bitcast i8* %14 to %struct._GimpCoords*
  %arrayidx = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %15, i64 0
  %16 = load %struct._GArray*, %struct._GArray** %coords, align 8
  %len10 = getelementptr inbounds %struct._GArray, %struct._GArray* %16, i32 0, i32 1
  %17 = load i32, i32* %len10, align 4
  %call11 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_strokes(%struct._GimpDrawTool* %12, %struct._GimpCoords* %arrayidx, i32 %17, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then.7
  %18 = load %struct._GArray*, %struct._GArray** %coords, align 8
  %call12 = call i8* @g_array_free(%struct._GArray* %18, i32 1)
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.14

if.end.14:                                        ; preds = %while.end, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_vector_tool_vectors_freeze(%struct._GimpVectors* %vectors, %struct._GimpVectorTool* %vector_tool) #3 {
entry:
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %vector_tool.addr = alloca %struct._GimpVectorTool*, align 8
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store %struct._GimpVectorTool* %vector_tool, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %0 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %1 = bitcast %struct._GimpVectorTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_draw_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_vector_tool_vectors_thaw(%struct._GimpVectors* %vectors, %struct._GimpVectorTool* %vector_tool) #3 {
entry:
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %vector_tool.addr = alloca %struct._GimpVectorTool*, align 8
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store %struct._GimpVectorTool* %vector_tool, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %0 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  call void @gimp_vector_tool_verify_state(%struct._GimpVectorTool* %0)
  %1 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %2 = bitcast %struct._GimpVectorTool* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_draw_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %3)
  ret void
}

declare void @g_object_unref(i8*) #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_vector_tool_to_selection(%struct._GimpVectorTool* %vector_tool) #3 {
entry:
  %vector_tool.addr = alloca %struct._GimpVectorTool*, align 8
  store %struct._GimpVectorTool* %vector_tool, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %0 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  call void @gimp_vector_tool_to_selection_extended(%struct._GimpVectorTool* %0, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_vector_tool_to_selection_extended(%struct._GimpVectorTool* %vector_tool, i32 %state) #3 {
entry:
  %vector_tool.addr = alloca %struct._GimpVectorTool*, align 8
  %state.addr = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GimpVectorTool* %vector_tool, %struct._GimpVectorTool** %vector_tool.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  %0 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %vectors = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %0, i32 0, i32 14
  %1 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool = icmp ne %struct._GimpVectors* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %vectors1 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %2, i32 0, i32 14
  %3 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors1, align 8
  %4 = bitcast %struct._GimpVectors* %3 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpItem*
  %call3 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %5)
  store %struct._GimpImage* %call3, %struct._GimpImage** %image, align 8
  %6 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %vectors4 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %6, i32 0, i32 14
  %7 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors4, align 8
  %8 = bitcast %struct._GimpVectors* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %10 = load i32, i32* %state.addr, align 4
  %call7 = call i32 @gimp_modifiers_to_channel_op(i32 %10)
  call void @gimp_item_to_selection(%struct._GimpItem* %9, i32 %call7, i32 1, i32 0, double 0.000000e+00, double 0.000000e+00)
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %11)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_vector_tool_stroke_vectors(%struct._GimpVectorTool* %vector_tool, %struct._GtkWidget* %button) #3 {
entry:
  %vector_tool.addr = alloca %struct._GimpVectorTool*, align 8
  %button.addr = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %active_drawable = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  store %struct._GimpVectorTool* %vector_tool, %struct._GimpVectorTool** %vector_tool.addr, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  %0 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %vectors = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %0, i32 0, i32 14
  %1 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool = icmp ne %struct._GimpVectors* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %vectors1 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %2, i32 0, i32 14
  %3 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors1, align 8
  %4 = bitcast %struct._GimpVectors* %3 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpItem*
  %call3 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %5)
  store %struct._GimpImage* %call3, %struct._GimpImage** %image, align 8
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call4 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %6)
  store %struct._GimpDrawable* %call4, %struct._GimpDrawable** %active_drawable, align 8
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %active_drawable, align 8
  %tobool5 = icmp ne %struct._GimpDrawable* %7, null
  br i1 %tobool5, label %if.end.12, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %8 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %9 = bitcast %struct._GimpVectorTool* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_tool_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpTool*
  %11 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %12 = bitcast %struct._GimpVectorTool* %11 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_tool_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call9)
  %13 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpTool*
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %13, i32 0, i32 4
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.54, i32 0, i32 0)) #6
  call void (%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) @gimp_tool_message(%struct._GimpTool* %10, %struct._GimpDisplay* %14, i8* %call11)
  br label %return

if.end.12:                                        ; preds = %if.end
  %15 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %vectors13 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %15, i32 0, i32 14
  %16 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors13, align 8
  %17 = bitcast %struct._GimpVectors* %16 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_item_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call14)
  %18 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpItem*
  %19 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %20 = bitcast %struct._GimpVectorTool* %19 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_tool_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call16)
  %21 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpTool*
  %call18 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %21)
  %22 = bitcast %struct._GimpToolOptions* %call18 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_context_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call19)
  %23 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpContext*
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i32 0, i32 0)) #6
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %call22 = call %struct._GtkWidget* @stroke_dialog_new(%struct._GimpItem* %18, %struct._GimpContext* %23, i8* %call21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.56, i32 0, i32 0), %struct._GtkWidget* %24)
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %dialog, align 8
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %25)
  br label %return

return:                                           ; preds = %if.end.12, %if.then.6, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_vector_tool_verify_state(%struct._GimpVectorTool* %vector_tool) #3 {
entry:
  %vector_tool.addr = alloca %struct._GimpVectorTool*, align 8
  %cur_stroke = alloca %struct._GimpStroke*, align 8
  %cur_anchor_valid = alloca i32, align 4
  %cur_stroke_valid = alloca i32, align 4
  %anchors = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %cur_anchor9 = alloca %struct._GimpAnchor*, align 8
  %cur_anchor32 = alloca %struct._GimpAnchor*, align 8
  store %struct._GimpVectorTool* %vector_tool, %struct._GimpVectorTool** %vector_tool.addr, align 8
  store %struct._GimpStroke* null, %struct._GimpStroke** %cur_stroke, align 8
  store i32 0, i32* %cur_anchor_valid, align 4
  store i32 0, i32* %cur_stroke_valid, align 4
  %0 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %sel_count = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %0, i32 0, i32 15
  store i32 0, i32* %sel_count, align 4
  %1 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %sel_anchor = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %1, i32 0, i32 16
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %sel_anchor, align 8
  %2 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %sel_stroke = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %2, i32 0, i32 17
  store %struct._GimpStroke* null, %struct._GimpStroke** %sel_stroke, align 8
  %3 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %vectors = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %3, i32 0, i32 14
  %4 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool = icmp ne %struct._GimpVectors* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %cur_position = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %5, i32 0, i32 12
  store double -1.000000e+00, double* %cur_position, align 8
  %6 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %cur_anchor = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %6, i32 0, i32 9
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %cur_anchor, align 8
  %7 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %cur_stroke1 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %7, i32 0, i32 11
  store %struct._GimpStroke* null, %struct._GimpStroke** %cur_stroke1, align 8
  br label %if.end.53

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %for.end.45, %if.end
  %8 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %vectors2 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %8, i32 0, i32 14
  %9 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors2, align 8
  %10 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke, align 8
  %call = call %struct._GimpStroke* @gimp_vectors_stroke_get_next(%struct._GimpVectors* %9, %struct._GimpStroke* %10)
  store %struct._GimpStroke* %call, %struct._GimpStroke** %cur_stroke, align 8
  %tobool3 = icmp ne %struct._GimpStroke* %call, null
  br i1 %tobool3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke, align 8
  %call4 = call %struct._GList* @gimp_stroke_get_draw_anchors(%struct._GimpStroke* %11)
  store %struct._GList* %call4, %struct._GList** %anchors, align 8
  %12 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke, align 8
  %13 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %cur_stroke5 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %13, i32 0, i32 11
  %14 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke5, align 8
  %cmp = icmp eq %struct._GimpStroke* %12, %14
  br i1 %cmp, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %while.body
  store i32 1, i32* %cur_stroke_valid, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %while.body
  %15 = load %struct._GList*, %struct._GList** %anchors, align 8
  store %struct._GList* %15, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.7
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool8 = icmp ne %struct._GList* %16, null
  br i1 %tobool8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 0
  %18 = load i8*, i8** %data, align 8
  %19 = bitcast i8* %18 to %struct._GimpAnchor*
  store %struct._GimpAnchor* %19, %struct._GimpAnchor** %cur_anchor9, align 8
  %20 = load %struct._GimpAnchor*, %struct._GimpAnchor** %cur_anchor9, align 8
  %21 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %cur_anchor10 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %21, i32 0, i32 9
  %22 = load %struct._GimpAnchor*, %struct._GimpAnchor** %cur_anchor10, align 8
  %cmp11 = icmp eq %struct._GimpAnchor* %20, %22
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.body
  store i32 1, i32* %cur_anchor_valid, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %for.body
  %23 = load %struct._GimpAnchor*, %struct._GimpAnchor** %cur_anchor9, align 8
  %type = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %23, i32 0, i32 1
  %24 = load i32, i32* %type, align 4
  %cmp14 = icmp eq i32 %24, 0
  br i1 %cmp14, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %if.end.13
  %25 = load %struct._GimpAnchor*, %struct._GimpAnchor** %cur_anchor9, align 8
  %selected = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %25, i32 0, i32 2
  %26 = load i32, i32* %selected, align 4
  %tobool15 = icmp ne i32 %26, 0
  br i1 %tobool15, label %if.then.16, label %if.end.26

if.then.16:                                       ; preds = %land.lhs.true
  %27 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %sel_count17 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %27, i32 0, i32 15
  %28 = load i32, i32* %sel_count17, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %sel_count17, align 4
  %29 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %sel_count18 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %29, i32 0, i32 15
  %30 = load i32, i32* %sel_count18, align 4
  %cmp19 = icmp eq i32 %30, 1
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.then.16
  %31 = load %struct._GimpAnchor*, %struct._GimpAnchor** %cur_anchor9, align 8
  %32 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %sel_anchor21 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %32, i32 0, i32 16
  store %struct._GimpAnchor* %31, %struct._GimpAnchor** %sel_anchor21, align 8
  %33 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke, align 8
  %34 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %sel_stroke22 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %34, i32 0, i32 17
  store %struct._GimpStroke* %33, %struct._GimpStroke** %sel_stroke22, align 8
  br label %if.end.25

if.else:                                          ; preds = %if.then.16
  %35 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %sel_anchor23 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %35, i32 0, i32 16
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %sel_anchor23, align 8
  %36 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %sel_stroke24 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %36, i32 0, i32 17
  store %struct._GimpStroke* null, %struct._GimpStroke** %sel_stroke24, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.then.20
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %land.lhs.true, %if.end.13
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %37 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool27 = icmp ne %struct._GList* %37, null
  br i1 %tobool27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %38 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %38, i32 0, i32 1
  %39 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %39, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load %struct._GList*, %struct._GList** %anchors, align 8
  call void @g_list_free(%struct._GList* %40)
  %41 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke, align 8
  %call28 = call %struct._GList* @gimp_stroke_get_draw_controls(%struct._GimpStroke* %41)
  store %struct._GList* %call28, %struct._GList** %anchors, align 8
  %42 = load %struct._GList*, %struct._GList** %anchors, align 8
  store %struct._GList* %42, %struct._GList** %list, align 8
  br label %for.cond.29

for.cond.29:                                      ; preds = %cond.end.43, %for.end
  %43 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool30 = icmp ne %struct._GList* %43, null
  br i1 %tobool30, label %for.body.31, label %for.end.45

for.body.31:                                      ; preds = %for.cond.29
  %44 = load %struct._GList*, %struct._GList** %list, align 8
  %data33 = getelementptr inbounds %struct._GList, %struct._GList* %44, i32 0, i32 0
  %45 = load i8*, i8** %data33, align 8
  %46 = bitcast i8* %45 to %struct._GimpAnchor*
  store %struct._GimpAnchor* %46, %struct._GimpAnchor** %cur_anchor32, align 8
  %47 = load %struct._GimpAnchor*, %struct._GimpAnchor** %cur_anchor32, align 8
  %48 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %cur_anchor34 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %48, i32 0, i32 9
  %49 = load %struct._GimpAnchor*, %struct._GimpAnchor** %cur_anchor34, align 8
  %cmp35 = icmp eq %struct._GimpAnchor* %47, %49
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %for.body.31
  store i32 1, i32* %cur_anchor_valid, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %for.body.31
  br label %for.inc.38

for.inc.38:                                       ; preds = %if.end.37
  %50 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool39 = icmp ne %struct._GList* %50, null
  br i1 %tobool39, label %cond.true.40, label %cond.false.42

cond.true.40:                                     ; preds = %for.inc.38
  %51 = load %struct._GList*, %struct._GList** %list, align 8
  %next41 = getelementptr inbounds %struct._GList, %struct._GList* %51, i32 0, i32 1
  %52 = load %struct._GList*, %struct._GList** %next41, align 8
  br label %cond.end.43

cond.false.42:                                    ; preds = %for.inc.38
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.42, %cond.true.40
  %cond44 = phi %struct._GList* [ %52, %cond.true.40 ], [ null, %cond.false.42 ]
  store %struct._GList* %cond44, %struct._GList** %list, align 8
  br label %for.cond.29

for.end.45:                                       ; preds = %for.cond.29
  %53 = load %struct._GList*, %struct._GList** %anchors, align 8
  call void @g_list_free(%struct._GList* %53)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %54 = load i32, i32* %cur_stroke_valid, align 4
  %tobool46 = icmp ne i32 %54, 0
  br i1 %tobool46, label %if.end.49, label %if.then.47

if.then.47:                                       ; preds = %while.end
  %55 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %cur_stroke48 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %55, i32 0, i32 11
  store %struct._GimpStroke* null, %struct._GimpStroke** %cur_stroke48, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %while.end
  %56 = load i32, i32* %cur_anchor_valid, align 4
  %tobool50 = icmp ne i32 %56, 0
  br i1 %tobool50, label %if.end.53, label %if.then.51

if.then.51:                                       ; preds = %if.end.49
  %57 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %cur_anchor52 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %57, i32 0, i32 9
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %cur_anchor52, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then, %if.then.51, %if.end.49
  ret void
}

declare void @gimp_draw_tool_resume(%struct._GimpDrawTool*) #1

declare i8* @g_object_ref(i8*) #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gimp_draw_tool_start(%struct._GimpDrawTool*, %struct._GimpDisplay*) #1

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #1

declare i8* @gimp_context_get_display(%struct._GimpContext*) #1

declare %struct._GList* @gimp_get_display_iter(%struct._Gimp*) #1

declare void @gimp_context_set_display(%struct._GimpContext*, i8*) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_vector_tool_class_init(%struct._GimpVectorToolClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpVectorToolClass*, align 8
  %tool_class = alloca %struct._GimpToolClass*, align 8
  %draw_tool_class = alloca %struct._GimpDrawToolClass*, align 8
  store %struct._GimpVectorToolClass* %klass, %struct._GimpVectorToolClass** %klass.addr, align 8
  %0 = load %struct._GimpVectorToolClass*, %struct._GimpVectorToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpVectorToolClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpToolClass*
  store %struct._GimpToolClass* %2, %struct._GimpToolClass** %tool_class, align 8
  %3 = load %struct._GimpVectorToolClass*, %struct._GimpVectorToolClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpVectorToolClass* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_draw_tool_get_type() #7
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpDrawToolClass*
  store %struct._GimpDrawToolClass* %5, %struct._GimpDrawToolClass** %draw_tool_class, align 8
  %6 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %control = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %6, i32 0, i32 4
  store void (%struct._GimpTool*, i32, %struct._GimpDisplay*)* @gimp_vector_tool_control, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)** %control, align 8
  %7 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %7, i32 0, i32 5
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_vector_tool_button_press, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_press, align 8
  %8 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_release = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %8, i32 0, i32 6
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_vector_tool_button_release, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_release, align 8
  %9 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %motion = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %9, i32 0, i32 7
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_vector_tool_motion, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %motion, align 8
  %10 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %key_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %10, i32 0, i32 8
  store i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)* @gimp_vector_tool_key_press, i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)** %key_press, align 8
  %11 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %modifier_key = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %11, i32 0, i32 10
  store void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_vector_tool_modifier_key, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)** %modifier_key, align 8
  %12 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %oper_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %12, i32 0, i32 12
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_vector_tool_oper_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %oper_update, align 8
  %13 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %13, i32 0, i32 13
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)* @gimp_vector_tool_cursor_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %14 = load %struct._GimpDrawToolClass*, %struct._GimpDrawToolClass** %draw_tool_class, align 8
  %draw = getelementptr inbounds %struct._GimpDrawToolClass, %struct._GimpDrawToolClass* %14, i32 0, i32 1
  store void (%struct._GimpDrawTool*)* @gimp_vector_tool_draw, void (%struct._GimpDrawTool*)** %draw, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_vector_tool_control(%struct._GimpTool* %tool, i32 %action, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %action.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %vector_tool = alloca %struct._GimpVectorTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %action, i32* %action.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_vector_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpVectorTool*
  store %struct._GimpVectorTool* %2, %struct._GimpVectorTool** %vector_tool, align 8
  %3 = load i32, i32* %action.addr, align 4
  switch i32 %3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry, %entry
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %4 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  call void @gimp_vector_tool_set_vectors(%struct._GimpVectorTool* %4, %struct._GimpVectors* null)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.2, %sw.bb
  %5 = load i8*, i8** @gimp_vector_tool_parent_class, align 8
  %6 = bitcast i8* %5 to %struct._GTypeClass*
  %call3 = call i64 @gimp_tool_get_type() #7
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %6, i64 %call3)
  %7 = bitcast %struct._GTypeClass* %call4 to %struct._GimpToolClass*
  %control = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %7, i32 0, i32 4
  %8 = load void (%struct._GimpTool*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)** %control, align 8
  %9 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %10 = load i32, i32* %action.addr, align 4
  %11 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %8(%struct._GimpTool* %9, i32 %10, %struct._GimpDisplay* %11)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_vector_tool_button_press(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %press_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %press_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %draw_tool = alloca %struct._GimpDrawTool*, align 8
  %vector_tool = alloca %struct._GimpVectorTool*, align 8
  %options = alloca %struct._GimpVectorOptions*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %position = alloca %struct._GimpCoords, align 8
  %new_stroke = alloca %struct._GimpStroke*, align 8
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
  %call2 = call i64 @gimp_vector_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpVectorTool*
  store %struct._GimpVectorTool* %5, %struct._GimpVectorTool** %vector_tool, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %7 = bitcast %struct._GimpTool* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_tool_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpTool*
  %call6 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %8)
  %9 = bitcast %struct._GimpToolOptions* %call6 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_vector_options_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpVectorOptions*
  store %struct._GimpVectorOptions* %10, %struct._GimpVectorOptions** %options, align 8
  %11 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call9 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %11)
  store %struct._GimpImage* %call9, %struct._GimpImage** %image, align 8
  %12 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %12, i32 0, i32 1
  %13 = load i32, i32* %function, align 4
  %cmp = icmp eq i32 %13, 15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %14 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %vectors10 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %14, i32 0, i32 14
  %15 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors10, align 8
  %cmp11 = icmp ne %struct._GimpVectors* %15, null
  br i1 %cmp11, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %16 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function12 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %16, i32 0, i32 1
  %17 = load i32, i32* %function12, align 4
  %cmp13 = icmp eq i32 %17, 0
  br i1 %cmp13, label %if.then.17, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false
  %18 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function15 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %18, i32 0, i32 1
  %19 = load i32, i32* %function15, align 4
  %cmp16 = icmp eq i32 %19, 1
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %lor.lhs.false.14, %lor.lhs.false, %do.body
  br label %if.end.18

if.else:                                          ; preds = %lor.lhs.false.14
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_vector_tool_button_press, i32 0, i32 0), i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.18, i32 0, i32 0))
  br label %return

if.end.18:                                        ; preds = %if.then.17
  br label %do.end

do.end:                                           ; preds = %if.end.18
  %20 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %undo_motion = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %20, i32 0, i32 7
  store i32 0, i32* %undo_motion, align 4
  %21 = load i32, i32* %state.addr, align 4
  %22 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %saved_state = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %22, i32 0, i32 4
  store i32 %21, i32* %saved_state, align 4
  %23 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %23)
  %24 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %call19 = call i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool* %24)
  %tobool = icmp ne i32 %call19, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %do.end
  %25 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %display20 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %25, i32 0, i32 1
  %26 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display20, align 8
  %27 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %cmp21 = icmp ne %struct._GimpDisplay* %26, %27
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %land.lhs.true
  %28 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_stop(%struct._GimpDrawTool* %28)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %land.lhs.true, %do.end
  %29 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %29, i32 0, i32 3
  %30 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_activate(%struct._GimpToolControl* %30)
  %31 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %32 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display24 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %32, i32 0, i32 4
  store %struct._GimpDisplay* %31, %struct._GimpDisplay** %display24, align 8
  %33 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function25 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %33, i32 0, i32 1
  %34 = load i32, i32* %function25, align 4
  %cmp26 = icmp eq i32 %34, 0
  br i1 %cmp26, label %if.then.27, label %if.end.34

if.then.27:                                       ; preds = %if.end.23
  %35 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %36 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %37 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %call28 = call i32 @gimp_draw_tool_on_vectors(%struct._GimpDrawTool* %35, %struct._GimpDisplay* %36, %struct._GimpCoords* %37, i32 13, i32 13, %struct._GimpCoords* null, double* null, %struct._GimpAnchor** null, %struct._GimpAnchor** null, %struct._GimpStroke** null, %struct._GimpVectors** %vectors)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.then.27
  %38 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %39 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_vector_tool_set_vectors(%struct._GimpVectorTool* %38, %struct._GimpVectors* %39)
  %40 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %41 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %call31 = call %struct._GimpVectors* @gimp_image_set_active_vectors(%struct._GimpImage* %40, %struct._GimpVectors* %41)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.then.27
  %42 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function33 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %42, i32 0, i32 1
  store i32 15, i32* %function33, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.32, %if.end.23
  %43 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function35 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %43, i32 0, i32 1
  %44 = load i32, i32* %function35, align 4
  %cmp36 = icmp eq i32 %44, 1
  br i1 %cmp36, label %if.then.37, label %if.end.43

if.then.37:                                       ; preds = %if.end.34
  %45 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call38 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0)) #6
  %call39 = call %struct._GimpVectors* @gimp_vectors_new(%struct._GimpImage* %45, i8* %call38)
  store %struct._GimpVectors* %call39, %struct._GimpVectors** %vectors, align 8
  %46 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %have_undo = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %46, i32 0, i32 8
  store i32 1, i32* %have_undo, align 4
  %47 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %undo_motion40 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %47, i32 0, i32 7
  store i32 1, i32* %undo_motion40, align 4
  %48 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %49 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %call41 = call i32 @gimp_image_add_vectors(%struct._GimpImage* %48, %struct._GimpVectors* %49, %struct._GimpVectors* inttoptr (i64 1 to %struct._GimpVectors*), i32 -1, i32 1)
  %50 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %50)
  %51 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %52 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_vector_tool_set_vectors(%struct._GimpVectorTool* %51, %struct._GimpVectors* %52)
  %53 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function42 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %53, i32 0, i32 1
  store i32 2, i32* %function42, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.37, %if.end.34
  %54 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %vectors44 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %54, i32 0, i32 14
  %55 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors44, align 8
  call void @gimp_vectors_freeze(%struct._GimpVectors* %55)
  %56 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function45 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %56, i32 0, i32 1
  %57 = load i32, i32* %function45, align 4
  %cmp46 = icmp eq i32 %57, 2
  br i1 %cmp46, label %land.lhs.true.47, label %if.end.59

land.lhs.true.47:                                 ; preds = %if.end.43
  %58 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %call48 = call i32 @gimp_vector_tool_check_writable(%struct._GimpVectorTool* %58)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.then.50, label %if.end.59

if.then.50:                                       ; preds = %land.lhs.true.47
  %59 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %call51 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0)) #6
  call void @gimp_vector_tool_undo_push(%struct._GimpVectorTool* %59, i8* %call51)
  %call52 = call %struct._GimpStroke* @gimp_bezier_stroke_new()
  %60 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_stroke = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %60, i32 0, i32 11
  store %struct._GimpStroke* %call52, %struct._GimpStroke** %cur_stroke, align 8
  %61 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %vectors53 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %61, i32 0, i32 14
  %62 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors53, align 8
  %63 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_stroke54 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %63, i32 0, i32 11
  %64 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke54, align 8
  call void @gimp_vectors_stroke_add(%struct._GimpVectors* %62, %struct._GimpStroke* %64)
  %65 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_stroke55 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %65, i32 0, i32 11
  %66 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke55, align 8
  %67 = bitcast %struct._GimpStroke* %66 to i8*
  call void @g_object_unref(i8* %67)
  %68 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %undo_motion56 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %68, i32 0, i32 7
  store i32 1, i32* %undo_motion56, align 4
  %69 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_stroke57 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %69, i32 0, i32 11
  %70 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke57, align 8
  %71 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %sel_stroke = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %71, i32 0, i32 17
  store %struct._GimpStroke* %70, %struct._GimpStroke** %sel_stroke, align 8
  %72 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_anchor = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %72, i32 0, i32 9
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %cur_anchor, align 8
  %73 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %sel_anchor = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %73, i32 0, i32 16
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %sel_anchor, align 8
  %74 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function58 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %74, i32 0, i32 1
  store i32 3, i32* %function58, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.50, %land.lhs.true.47, %if.end.43
  %75 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function60 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %75, i32 0, i32 1
  %76 = load i32, i32* %function60, align 4
  %cmp61 = icmp eq i32 %76, 3
  br i1 %cmp61, label %land.lhs.true.62, label %if.end.82

land.lhs.true.62:                                 ; preds = %if.end.59
  %77 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %call63 = call i32 @gimp_vector_tool_check_writable(%struct._GimpVectorTool* %77)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then.65, label %if.end.82

if.then.65:                                       ; preds = %land.lhs.true.62
  %78 = bitcast %struct._GimpCoords* %position to i8*
  call void @llvm.memset.p0i8.i64(i8* %78, i8 0, i64 64, i32 8, i1 false)
  %79 = bitcast i8* %78 to %struct._GimpCoords*
  %80 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %79, i32 0, i32 2
  store double 1.000000e+00, double* %80
  %81 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %79, i32 0, i32 5
  store double 5.000000e-01, double* %81
  %82 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %82, i32 0, i32 0
  %83 = load double, double* %x, align 8
  %x66 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position, i32 0, i32 0
  store double %83, double* %x66, align 8
  %84 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %84, i32 0, i32 1
  %85 = load double, double* %y, align 8
  %y67 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position, i32 0, i32 1
  store double %85, double* %y67, align 8
  %86 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %call68 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0)) #6
  call void @gimp_vector_tool_undo_push(%struct._GimpVectorTool* %86, i8* %call68)
  %87 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %undo_motion69 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %87, i32 0, i32 7
  store i32 1, i32* %undo_motion69, align 4
  %88 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %sel_stroke70 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %88, i32 0, i32 17
  %89 = load %struct._GimpStroke*, %struct._GimpStroke** %sel_stroke70, align 8
  %90 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %sel_anchor71 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %90, i32 0, i32 16
  %91 = load %struct._GimpAnchor*, %struct._GimpAnchor** %sel_anchor71, align 8
  %call72 = call %struct._GimpAnchor* @gimp_bezier_stroke_extend(%struct._GimpStroke* %89, %struct._GimpCoords* %position, %struct._GimpAnchor* %91, i32 1)
  %92 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_anchor73 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %92, i32 0, i32 9
  store %struct._GimpAnchor* %call72, %struct._GimpAnchor** %cur_anchor73, align 8
  %93 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %restriction = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %93, i32 0, i32 2
  store i32 3, i32* %restriction, align 4
  %94 = load %struct._GimpVectorOptions*, %struct._GimpVectorOptions** %options, align 8
  %polygonal = getelementptr inbounds %struct._GimpVectorOptions, %struct._GimpVectorOptions* %94, i32 0, i32 2
  %95 = load i32, i32* %polygonal, align 4
  %tobool74 = icmp ne i32 %95, 0
  br i1 %tobool74, label %if.else.77, label %if.then.75

if.then.75:                                       ; preds = %if.then.65
  %96 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function76 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %96, i32 0, i32 1
  store i32 6, i32* %function76, align 4
  br label %if.end.79

if.else.77:                                       ; preds = %if.then.65
  %97 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function78 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %97, i32 0, i32 1
  store i32 4, i32* %function78, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.77, %if.then.75
  %98 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %sel_stroke80 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %98, i32 0, i32 17
  %99 = load %struct._GimpStroke*, %struct._GimpStroke** %sel_stroke80, align 8
  %100 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_stroke81 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %100, i32 0, i32 11
  store %struct._GimpStroke* %99, %struct._GimpStroke** %cur_stroke81, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.79, %land.lhs.true.62, %if.end.59
  %101 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function83 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %101, i32 0, i32 1
  %102 = load i32, i32* %function83, align 4
  %cmp84 = icmp eq i32 %102, 10
  br i1 %cmp84, label %land.lhs.true.85, label %if.end.108

land.lhs.true.85:                                 ; preds = %if.end.82
  %103 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %call86 = call i32 @gimp_vector_tool_check_writable(%struct._GimpVectorTool* %103)
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.then.88, label %if.end.108

if.then.88:                                       ; preds = %land.lhs.true.85
  %104 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %call89 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0)) #6
  call void @gimp_vector_tool_undo_push(%struct._GimpVectorTool* %104, i8* %call89)
  %105 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %undo_motion90 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %105, i32 0, i32 7
  store i32 1, i32* %undo_motion90, align 4
  %106 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_stroke91 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %106, i32 0, i32 11
  %107 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke91, align 8
  %108 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_anchor92 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %108, i32 0, i32 9
  %109 = load %struct._GimpAnchor*, %struct._GimpAnchor** %cur_anchor92, align 8
  %110 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_position = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %110, i32 0, i32 12
  %111 = load double, double* %cur_position, align 8
  %call93 = call %struct._GimpAnchor* @gimp_stroke_anchor_insert(%struct._GimpStroke* %107, %struct._GimpAnchor* %109, double %111)
  %112 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_anchor94 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %112, i32 0, i32 9
  store %struct._GimpAnchor* %call93, %struct._GimpAnchor** %cur_anchor94, align 8
  %113 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_anchor95 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %113, i32 0, i32 9
  %114 = load %struct._GimpAnchor*, %struct._GimpAnchor** %cur_anchor95, align 8
  %tobool96 = icmp ne %struct._GimpAnchor* %114, null
  br i1 %tobool96, label %if.then.97, label %if.else.105

if.then.97:                                       ; preds = %if.then.88
  %115 = load %struct._GimpVectorOptions*, %struct._GimpVectorOptions** %options, align 8
  %polygonal98 = getelementptr inbounds %struct._GimpVectorOptions, %struct._GimpVectorOptions* %115, i32 0, i32 2
  %116 = load i32, i32* %polygonal98, align 4
  %tobool99 = icmp ne i32 %116, 0
  br i1 %tobool99, label %if.then.100, label %if.end.103

if.then.100:                                      ; preds = %if.then.97
  %117 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_stroke101 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %117, i32 0, i32 11
  %118 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke101, align 8
  %119 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_anchor102 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %119, i32 0, i32 9
  %120 = load %struct._GimpAnchor*, %struct._GimpAnchor** %cur_anchor102, align 8
  call void @gimp_stroke_anchor_convert(%struct._GimpStroke* %118, %struct._GimpAnchor* %120, i32 1)
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.100, %if.then.97
  %121 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function104 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %121, i32 0, i32 1
  store i32 4, i32* %function104, align 4
  br label %if.end.107

if.else.105:                                      ; preds = %if.then.88
  %122 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function106 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %122, i32 0, i32 1
  store i32 15, i32* %function106, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.105, %if.end.103
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %land.lhs.true.85, %if.end.82
  %123 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function109 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %123, i32 0, i32 1
  %124 = load i32, i32* %function109, align 4
  %cmp110 = icmp eq i32 %124, 6
  br i1 %cmp110, label %land.lhs.true.111, label %if.end.139

land.lhs.true.111:                                ; preds = %if.end.108
  %125 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %call112 = call i32 @gimp_vector_tool_check_writable(%struct._GimpVectorTool* %125)
  %tobool113 = icmp ne i32 %call112, 0
  br i1 %tobool113, label %if.then.114, label %if.end.139

if.then.114:                                      ; preds = %land.lhs.true.111
  %126 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %call115 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0)) #6
  call void @gimp_vector_tool_undo_push(%struct._GimpVectorTool* %126, i8* %call115)
  %127 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_anchor116 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %127, i32 0, i32 9
  %128 = load %struct._GimpAnchor*, %struct._GimpAnchor** %cur_anchor116, align 8
  %type = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %128, i32 0, i32 1
  %129 = load i32, i32* %type, align 4
  %cmp117 = icmp eq i32 %129, 0
  br i1 %cmp117, label %if.then.118, label %if.end.138

if.then.118:                                      ; preds = %if.then.114
  %130 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_anchor119 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %130, i32 0, i32 9
  %131 = load %struct._GimpAnchor*, %struct._GimpAnchor** %cur_anchor119, align 8
  %selected = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %131, i32 0, i32 2
  %132 = load i32, i32* %selected, align 4
  %tobool120 = icmp ne i32 %132, 0
  br i1 %tobool120, label %if.end.126, label %if.then.121

if.then.121:                                      ; preds = %if.then.118
  %133 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %vectors122 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %133, i32 0, i32 14
  %134 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors122, align 8
  %135 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_stroke123 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %135, i32 0, i32 11
  %136 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke123, align 8
  %137 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_anchor124 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %137, i32 0, i32 9
  %138 = load %struct._GimpAnchor*, %struct._GimpAnchor** %cur_anchor124, align 8
  call void @gimp_vectors_anchor_select(%struct._GimpVectors* %134, %struct._GimpStroke* %136, %struct._GimpAnchor* %138, i32 1, i32 1)
  %139 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %undo_motion125 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %139, i32 0, i32 7
  store i32 1, i32* %undo_motion125, align 4
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.121, %if.then.118
  %140 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %141 = bitcast %struct._GimpTool* %140 to %struct._GTypeInstance*
  %call127 = call i64 @gimp_draw_tool_get_type() #7
  %call128 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %141, i64 %call127)
  %142 = bitcast %struct._GTypeInstance* %call128 to %struct._GimpDrawTool*
  %143 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %144 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %vectors129 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %144, i32 0, i32 14
  %145 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors129, align 8
  %146 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %147 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_anchor130 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %147, i32 0, i32 9
  %148 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_stroke131 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %148, i32 0, i32 11
  %call132 = call i32 @gimp_draw_tool_on_vectors_handle(%struct._GimpDrawTool* %142, %struct._GimpDisplay* %143, %struct._GimpVectors* %145, %struct._GimpCoords* %146, i32 13, i32 13, i32 1, i32 1, %struct._GimpAnchor** %cur_anchor130, %struct._GimpStroke** %cur_stroke131)
  %149 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_anchor133 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %149, i32 0, i32 9
  %150 = load %struct._GimpAnchor*, %struct._GimpAnchor** %cur_anchor133, align 8
  %tobool134 = icmp ne %struct._GimpAnchor* %150, null
  br i1 %tobool134, label %if.end.137, label %if.then.135

if.then.135:                                      ; preds = %if.end.126
  %151 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function136 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %151, i32 0, i32 1
  store i32 15, i32* %function136, align 4
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.135, %if.end.126
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %if.then.114
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %land.lhs.true.111, %if.end.108
  %152 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function140 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %152, i32 0, i32 1
  %153 = load i32, i32* %function140, align 4
  %cmp141 = icmp eq i32 %153, 4
  br i1 %cmp141, label %land.lhs.true.142, label %if.end.156

land.lhs.true.142:                                ; preds = %if.end.139
  %154 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %call143 = call i32 @gimp_vector_tool_check_writable(%struct._GimpVectorTool* %154)
  %tobool144 = icmp ne i32 %call143, 0
  br i1 %tobool144, label %if.then.145, label %if.end.156

if.then.145:                                      ; preds = %land.lhs.true.142
  %155 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %call146 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0)) #6
  call void @gimp_vector_tool_undo_push(%struct._GimpVectorTool* %155, i8* %call146)
  %156 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_anchor147 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %156, i32 0, i32 9
  %157 = load %struct._GimpAnchor*, %struct._GimpAnchor** %cur_anchor147, align 8
  %selected148 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %157, i32 0, i32 2
  %158 = load i32, i32* %selected148, align 4
  %tobool149 = icmp ne i32 %158, 0
  br i1 %tobool149, label %if.end.155, label %if.then.150

if.then.150:                                      ; preds = %if.then.145
  %159 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %vectors151 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %159, i32 0, i32 14
  %160 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors151, align 8
  %161 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_stroke152 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %161, i32 0, i32 11
  %162 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke152, align 8
  %163 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_anchor153 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %163, i32 0, i32 9
  %164 = load %struct._GimpAnchor*, %struct._GimpAnchor** %cur_anchor153, align 8
  call void @gimp_vectors_anchor_select(%struct._GimpVectors* %160, %struct._GimpStroke* %162, %struct._GimpAnchor* %164, i32 1, i32 1)
  %165 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %undo_motion154 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %165, i32 0, i32 7
  store i32 1, i32* %undo_motion154, align 4
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.150, %if.then.145
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.155, %land.lhs.true.142, %if.end.139
  %166 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function157 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %166, i32 0, i32 1
  %167 = load i32, i32* %function157, align 4
  %cmp158 = icmp eq i32 %167, 5
  br i1 %cmp158, label %land.lhs.true.159, label %if.end.180

land.lhs.true.159:                                ; preds = %if.end.156
  %168 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %call160 = call i32 @gimp_vector_tool_check_writable(%struct._GimpVectorTool* %168)
  %tobool161 = icmp ne i32 %call160, 0
  br i1 %tobool161, label %if.then.162, label %if.end.180

if.then.162:                                      ; preds = %land.lhs.true.159
  %169 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %call163 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0)) #6
  call void @gimp_vector_tool_undo_push(%struct._GimpVectorTool* %169, i8* %call163)
  %170 = load i32, i32* %state.addr, align 4
  %and = and i32 %170, 1
  %tobool164 = icmp ne i32 %and, 0
  br i1 %tobool164, label %if.then.165, label %if.end.179

if.then.165:                                      ; preds = %if.then.162
  %171 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %vectors166 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %171, i32 0, i32 14
  %172 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors166, align 8
  %173 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_stroke167 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %173, i32 0, i32 11
  %174 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke167, align 8
  %175 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_anchor168 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %175, i32 0, i32 9
  %176 = load %struct._GimpAnchor*, %struct._GimpAnchor** %cur_anchor168, align 8
  %177 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_anchor169 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %177, i32 0, i32 9
  %178 = load %struct._GimpAnchor*, %struct._GimpAnchor** %cur_anchor169, align 8
  %selected170 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %178, i32 0, i32 2
  %179 = load i32, i32* %selected170, align 4
  %tobool171 = icmp ne i32 %179, 0
  %lnot = xor i1 %tobool171, true
  %lnot.ext = zext i1 %lnot to i32
  call void @gimp_vectors_anchor_select(%struct._GimpVectors* %172, %struct._GimpStroke* %174, %struct._GimpAnchor* %176, i32 %lnot.ext, i32 0)
  %180 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %undo_motion172 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %180, i32 0, i32 7
  store i32 1, i32* %undo_motion172, align 4
  %181 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_anchor173 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %181, i32 0, i32 9
  %182 = load %struct._GimpAnchor*, %struct._GimpAnchor** %cur_anchor173, align 8
  %selected174 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %182, i32 0, i32 2
  %183 = load i32, i32* %selected174, align 4
  %cmp175 = icmp eq i32 %183, 0
  br i1 %cmp175, label %if.then.176, label %if.end.178

if.then.176:                                      ; preds = %if.then.165
  %184 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function177 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %184, i32 0, i32 1
  store i32 15, i32* %function177, align 4
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.176, %if.then.165
  br label %if.end.179

if.end.179:                                       ; preds = %if.end.178, %if.then.162
  br label %if.end.180

if.end.180:                                       ; preds = %if.end.179, %land.lhs.true.159, %if.end.156
  %185 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function181 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %185, i32 0, i32 1
  %186 = load i32, i32* %function181, align 4
  %cmp182 = icmp eq i32 %186, 7
  br i1 %cmp182, label %land.lhs.true.183, label %if.end.205

land.lhs.true.183:                                ; preds = %if.end.180
  %187 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %call184 = call i32 @gimp_vector_tool_check_writable(%struct._GimpVectorTool* %187)
  %tobool185 = icmp ne i32 %call184, 0
  br i1 %tobool185, label %if.then.186, label %if.end.205

if.then.186:                                      ; preds = %land.lhs.true.183
  %188 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %call187 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0)) #6
  call void @gimp_vector_tool_undo_push(%struct._GimpVectorTool* %188, i8* %call187)
  %189 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_position188 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %189, i32 0, i32 12
  %190 = load double, double* %cur_position188, align 8
  %cmp189 = fcmp olt double %190, 0x3FEAAAAAAAAAAAAB
  br i1 %cmp189, label %if.then.190, label %if.end.195

if.then.190:                                      ; preds = %if.then.186
  %191 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %vectors191 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %191, i32 0, i32 14
  %192 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors191, align 8
  %193 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_stroke192 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %193, i32 0, i32 11
  %194 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke192, align 8
  %195 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_anchor193 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %195, i32 0, i32 9
  %196 = load %struct._GimpAnchor*, %struct._GimpAnchor** %cur_anchor193, align 8
  call void @gimp_vectors_anchor_select(%struct._GimpVectors* %192, %struct._GimpStroke* %194, %struct._GimpAnchor* %196, i32 1, i32 1)
  %197 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %undo_motion194 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %197, i32 0, i32 7
  store i32 1, i32* %undo_motion194, align 4
  br label %if.end.195

if.end.195:                                       ; preds = %if.then.190, %if.then.186
  %198 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_position196 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %198, i32 0, i32 12
  %199 = load double, double* %cur_position196, align 8
  %cmp197 = fcmp ogt double %199, 0x3FC5555555555555
  br i1 %cmp197, label %if.then.198, label %if.end.204

if.then.198:                                      ; preds = %if.end.195
  %200 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %vectors199 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %200, i32 0, i32 14
  %201 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors199, align 8
  %202 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_stroke200 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %202, i32 0, i32 11
  %203 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke200, align 8
  %204 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_anchor2 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %204, i32 0, i32 10
  %205 = load %struct._GimpAnchor*, %struct._GimpAnchor** %cur_anchor2, align 8
  %206 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_position201 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %206, i32 0, i32 12
  %207 = load double, double* %cur_position201, align 8
  %cmp202 = fcmp oge double %207, 0x3FEAAAAAAAAAAAAB
  %conv = zext i1 %cmp202 to i32
  call void @gimp_vectors_anchor_select(%struct._GimpVectors* %201, %struct._GimpStroke* %203, %struct._GimpAnchor* %205, i32 1, i32 %conv)
  %208 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %undo_motion203 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %208, i32 0, i32 7
  store i32 1, i32* %undo_motion203, align 4
  br label %if.end.204

if.end.204:                                       ; preds = %if.then.198, %if.end.195
  br label %if.end.205

if.end.205:                                       ; preds = %if.end.204, %land.lhs.true.183, %if.end.180
  %209 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function206 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %209, i32 0, i32 1
  %210 = load i32, i32* %function206, align 4
  %cmp207 = icmp eq i32 %210, 12
  br i1 %cmp207, label %land.lhs.true.209, label %if.end.240

land.lhs.true.209:                                ; preds = %if.end.205
  %211 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %call210 = call i32 @gimp_vector_tool_check_writable(%struct._GimpVectorTool* %211)
  %tobool211 = icmp ne i32 %call210, 0
  br i1 %tobool211, label %if.then.212, label %if.end.240

if.then.212:                                      ; preds = %land.lhs.true.209
  %212 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %call213 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0)) #6
  call void @gimp_vector_tool_undo_push(%struct._GimpVectorTool* %212, i8* %call213)
  %213 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %sel_stroke214 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %213, i32 0, i32 17
  %214 = load %struct._GimpStroke*, %struct._GimpStroke** %sel_stroke214, align 8
  %215 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %sel_anchor215 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %215, i32 0, i32 16
  %216 = load %struct._GimpAnchor*, %struct._GimpAnchor** %sel_anchor215, align 8
  %217 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_stroke216 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %217, i32 0, i32 11
  %218 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke216, align 8
  %219 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_anchor217 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %219, i32 0, i32 9
  %220 = load %struct._GimpAnchor*, %struct._GimpAnchor** %cur_anchor217, align 8
  %call218 = call i32 @gimp_stroke_connect_stroke(%struct._GimpStroke* %214, %struct._GimpAnchor* %216, %struct._GimpStroke* %218, %struct._GimpAnchor* %220)
  %221 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %undo_motion219 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %221, i32 0, i32 7
  store i32 1, i32* %undo_motion219, align 4
  %222 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_stroke220 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %222, i32 0, i32 11
  %223 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke220, align 8
  %224 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %sel_stroke221 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %224, i32 0, i32 17
  %225 = load %struct._GimpStroke*, %struct._GimpStroke** %sel_stroke221, align 8
  %cmp222 = icmp ne %struct._GimpStroke* %223, %225
  br i1 %cmp222, label %land.lhs.true.224, label %if.end.231

land.lhs.true.224:                                ; preds = %if.then.212
  %226 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_stroke225 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %226, i32 0, i32 11
  %227 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke225, align 8
  %call226 = call i32 @gimp_stroke_is_empty(%struct._GimpStroke* %227)
  %tobool227 = icmp ne i32 %call226, 0
  br i1 %tobool227, label %if.then.228, label %if.end.231

if.then.228:                                      ; preds = %land.lhs.true.224
  %228 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %vectors229 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %228, i32 0, i32 14
  %229 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors229, align 8
  %230 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_stroke230 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %230, i32 0, i32 11
  %231 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke230, align 8
  call void @gimp_vectors_stroke_remove(%struct._GimpVectors* %229, %struct._GimpStroke* %231)
  br label %if.end.231

if.end.231:                                       ; preds = %if.then.228, %land.lhs.true.224, %if.then.212
  %232 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_anchor232 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %232, i32 0, i32 9
  %233 = load %struct._GimpAnchor*, %struct._GimpAnchor** %cur_anchor232, align 8
  %234 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %sel_anchor233 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %234, i32 0, i32 16
  store %struct._GimpAnchor* %233, %struct._GimpAnchor** %sel_anchor233, align 8
  %235 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %sel_stroke234 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %235, i32 0, i32 17
  %236 = load %struct._GimpStroke*, %struct._GimpStroke** %sel_stroke234, align 8
  %237 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_stroke235 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %237, i32 0, i32 11
  store %struct._GimpStroke* %236, %struct._GimpStroke** %cur_stroke235, align 8
  %238 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %vectors236 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %238, i32 0, i32 14
  %239 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors236, align 8
  %240 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %sel_stroke237 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %240, i32 0, i32 17
  %241 = load %struct._GimpStroke*, %struct._GimpStroke** %sel_stroke237, align 8
  %242 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %sel_anchor238 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %242, i32 0, i32 16
  %243 = load %struct._GimpAnchor*, %struct._GimpAnchor** %sel_anchor238, align 8
  call void @gimp_vectors_anchor_select(%struct._GimpVectors* %239, %struct._GimpStroke* %241, %struct._GimpAnchor* %243, i32 1, i32 1)
  %244 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function239 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %244, i32 0, i32 1
  store i32 15, i32* %function239, align 4
  br label %if.end.240

if.end.240:                                       ; preds = %if.end.231, %land.lhs.true.209, %if.end.205
  %245 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function241 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %245, i32 0, i32 1
  %246 = load i32, i32* %function241, align 4
  %cmp242 = icmp eq i32 %246, 8
  br i1 %cmp242, label %land.lhs.true.248, label %lor.lhs.false.244

lor.lhs.false.244:                                ; preds = %if.end.240
  %247 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function245 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %247, i32 0, i32 1
  %248 = load i32, i32* %function245, align 4
  %cmp246 = icmp eq i32 %248, 9
  br i1 %cmp246, label %land.lhs.true.248, label %if.end.253

land.lhs.true.248:                                ; preds = %lor.lhs.false.244, %if.end.240
  %249 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %call249 = call i32 @gimp_vector_tool_check_writable(%struct._GimpVectorTool* %249)
  %tobool250 = icmp ne i32 %call249, 0
  br i1 %tobool250, label %if.then.251, label %if.end.253

if.then.251:                                      ; preds = %land.lhs.true.248
  %250 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %call252 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0)) #6
  call void @gimp_vector_tool_undo_push(%struct._GimpVectorTool* %250, i8* %call252)
  br label %if.end.253

if.end.253:                                       ; preds = %if.then.251, %land.lhs.true.248, %lor.lhs.false.244
  %251 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function254 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %251, i32 0, i32 1
  %252 = load i32, i32* %function254, align 4
  %cmp255 = icmp eq i32 %252, 14
  br i1 %cmp255, label %land.lhs.true.257, label %if.end.279

land.lhs.true.257:                                ; preds = %if.end.253
  %253 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %call258 = call i32 @gimp_vector_tool_check_writable(%struct._GimpVectorTool* %253)
  %tobool259 = icmp ne i32 %call258, 0
  br i1 %tobool259, label %if.then.260, label %if.end.279

if.then.260:                                      ; preds = %land.lhs.true.257
  %254 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %call261 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0)) #6
  call void @gimp_vector_tool_undo_push(%struct._GimpVectorTool* %254, i8* %call261)
  %255 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_stroke262 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %255, i32 0, i32 11
  %256 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke262, align 8
  %257 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_anchor263 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %257, i32 0, i32 9
  %258 = load %struct._GimpAnchor*, %struct._GimpAnchor** %cur_anchor263, align 8
  call void @gimp_stroke_anchor_convert(%struct._GimpStroke* %256, %struct._GimpAnchor* %258, i32 1)
  %259 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %undo_motion264 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %259, i32 0, i32 7
  store i32 1, i32* %undo_motion264, align 4
  %260 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_anchor265 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %260, i32 0, i32 9
  %261 = load %struct._GimpAnchor*, %struct._GimpAnchor** %cur_anchor265, align 8
  %type266 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %261, i32 0, i32 1
  %262 = load i32, i32* %type266, align 4
  %cmp267 = icmp eq i32 %262, 0
  br i1 %cmp267, label %if.then.269, label %if.else.274

if.then.269:                                      ; preds = %if.then.260
  %263 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %vectors270 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %263, i32 0, i32 14
  %264 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors270, align 8
  %265 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_stroke271 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %265, i32 0, i32 11
  %266 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke271, align 8
  %267 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_anchor272 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %267, i32 0, i32 9
  %268 = load %struct._GimpAnchor*, %struct._GimpAnchor** %cur_anchor272, align 8
  call void @gimp_vectors_anchor_select(%struct._GimpVectors* %264, %struct._GimpStroke* %266, %struct._GimpAnchor* %268, i32 1, i32 1)
  %269 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function273 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %269, i32 0, i32 1
  store i32 4, i32* %function273, align 4
  br label %if.end.278

if.else.274:                                      ; preds = %if.then.260
  %270 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_stroke275 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %270, i32 0, i32 11
  store %struct._GimpStroke* null, %struct._GimpStroke** %cur_stroke275, align 8
  %271 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_anchor276 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %271, i32 0, i32 9
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %cur_anchor276, align 8
  %272 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function277 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %272, i32 0, i32 1
  store i32 15, i32* %function277, align 4
  br label %if.end.278

if.end.278:                                       ; preds = %if.else.274, %if.then.269
  br label %if.end.279

if.end.279:                                       ; preds = %if.end.278, %land.lhs.true.257, %if.end.253
  %273 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function280 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %273, i32 0, i32 1
  %274 = load i32, i32* %function280, align 4
  %cmp281 = icmp eq i32 %274, 11
  br i1 %cmp281, label %land.lhs.true.283, label %if.end.301

land.lhs.true.283:                                ; preds = %if.end.279
  %275 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %call284 = call i32 @gimp_vector_tool_check_writable(%struct._GimpVectorTool* %275)
  %tobool285 = icmp ne i32 %call284, 0
  br i1 %tobool285, label %if.then.286, label %if.end.301

if.then.286:                                      ; preds = %land.lhs.true.283
  %276 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %call287 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0)) #6
  call void @gimp_vector_tool_undo_push(%struct._GimpVectorTool* %276, i8* %call287)
  %277 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_stroke288 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %277, i32 0, i32 11
  %278 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke288, align 8
  %279 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_anchor289 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %279, i32 0, i32 9
  %280 = load %struct._GimpAnchor*, %struct._GimpAnchor** %cur_anchor289, align 8
  call void @gimp_stroke_anchor_delete(%struct._GimpStroke* %278, %struct._GimpAnchor* %280)
  %281 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %undo_motion290 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %281, i32 0, i32 7
  store i32 1, i32* %undo_motion290, align 4
  %282 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_stroke291 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %282, i32 0, i32 11
  %283 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke291, align 8
  %call292 = call i32 @gimp_stroke_is_empty(%struct._GimpStroke* %283)
  %tobool293 = icmp ne i32 %call292, 0
  br i1 %tobool293, label %if.then.294, label %if.end.297

if.then.294:                                      ; preds = %if.then.286
  %284 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %vectors295 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %284, i32 0, i32 14
  %285 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors295, align 8
  %286 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_stroke296 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %286, i32 0, i32 11
  %287 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke296, align 8
  call void @gimp_vectors_stroke_remove(%struct._GimpVectors* %285, %struct._GimpStroke* %287)
  br label %if.end.297

if.end.297:                                       ; preds = %if.then.294, %if.then.286
  %288 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_stroke298 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %288, i32 0, i32 11
  store %struct._GimpStroke* null, %struct._GimpStroke** %cur_stroke298, align 8
  %289 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_anchor299 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %289, i32 0, i32 9
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %cur_anchor299, align 8
  %290 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function300 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %290, i32 0, i32 1
  store i32 15, i32* %function300, align 4
  br label %if.end.301

if.end.301:                                       ; preds = %if.end.297, %land.lhs.true.283, %if.end.279
  %291 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function302 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %291, i32 0, i32 1
  %292 = load i32, i32* %function302, align 4
  %cmp303 = icmp eq i32 %292, 13
  br i1 %cmp303, label %land.lhs.true.305, label %if.end.321

land.lhs.true.305:                                ; preds = %if.end.301
  %293 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %call306 = call i32 @gimp_vector_tool_check_writable(%struct._GimpVectorTool* %293)
  %tobool307 = icmp ne i32 %call306, 0
  br i1 %tobool307, label %if.then.308, label %if.end.321

if.then.308:                                      ; preds = %land.lhs.true.305
  %294 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %call309 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0)) #6
  call void @gimp_vector_tool_undo_push(%struct._GimpVectorTool* %294, i8* %call309)
  %295 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_stroke310 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %295, i32 0, i32 11
  %296 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke310, align 8
  %297 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_anchor311 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %297, i32 0, i32 9
  %298 = load %struct._GimpAnchor*, %struct._GimpAnchor** %cur_anchor311, align 8
  %call312 = call %struct._GimpStroke* @gimp_stroke_open(%struct._GimpStroke* %296, %struct._GimpAnchor* %298)
  store %struct._GimpStroke* %call312, %struct._GimpStroke** %new_stroke, align 8
  %299 = load %struct._GimpStroke*, %struct._GimpStroke** %new_stroke, align 8
  %tobool313 = icmp ne %struct._GimpStroke* %299, null
  br i1 %tobool313, label %if.then.314, label %if.end.316

if.then.314:                                      ; preds = %if.then.308
  %300 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %vectors315 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %300, i32 0, i32 14
  %301 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors315, align 8
  %302 = load %struct._GimpStroke*, %struct._GimpStroke** %new_stroke, align 8
  call void @gimp_vectors_stroke_add(%struct._GimpVectors* %301, %struct._GimpStroke* %302)
  %303 = load %struct._GimpStroke*, %struct._GimpStroke** %new_stroke, align 8
  %304 = bitcast %struct._GimpStroke* %303 to i8*
  call void @g_object_unref(i8* %304)
  br label %if.end.316

if.end.316:                                       ; preds = %if.then.314, %if.then.308
  %305 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %undo_motion317 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %305, i32 0, i32 7
  store i32 1, i32* %undo_motion317, align 4
  %306 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_stroke318 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %306, i32 0, i32 11
  store %struct._GimpStroke* null, %struct._GimpStroke** %cur_stroke318, align 8
  %307 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_anchor319 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %307, i32 0, i32 9
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %cur_anchor319, align 8
  %308 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function320 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %308, i32 0, i32 1
  store i32 15, i32* %function320, align 4
  br label %if.end.321

if.end.321:                                       ; preds = %if.end.316, %land.lhs.true.305, %if.end.301
  %309 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x322 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %309, i32 0, i32 0
  %310 = load double, double* %x322, align 8
  %311 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %last_x = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %311, i32 0, i32 5
  store double %310, double* %last_x, align 8
  %312 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y323 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %312, i32 0, i32 1
  %313 = load double, double* %y323, align 8
  %314 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %last_y = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %314, i32 0, i32 6
  store double %313, double* %last_y, align 8
  %315 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %vectors324 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %315, i32 0, i32 14
  %316 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors324, align 8
  call void @gimp_vectors_thaw(%struct._GimpVectors* %316)
  %317 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %call325 = call i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool* %317)
  %tobool326 = icmp ne i32 %call325, 0
  br i1 %tobool326, label %if.end.328, label %if.then.327

if.then.327:                                      ; preds = %if.end.321
  %318 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %319 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_draw_tool_start(%struct._GimpDrawTool* %318, %struct._GimpDisplay* %319)
  br label %if.end.328

if.end.328:                                       ; preds = %if.then.327, %if.end.321
  %320 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %320)
  br label %return

return:                                           ; preds = %if.end.328, %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_vector_tool_button_release(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %release_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %release_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %vector_tool = alloca %struct._GimpVectorTool*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %undo = alloca %struct._GimpUndo*, align 8
  %accum = alloca %struct._GimpUndoAccumulator, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %release_type, i32* %release_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_vector_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpVectorTool*
  store %struct._GimpVectorTool* %2, %struct._GimpVectorTool** %vector_tool, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call2 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %3)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  %4 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %4, i32 0, i32 1
  store i32 15, i32* %function, align 4
  %5 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %have_undo = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %5, i32 0, i32 8
  %6 = load i32, i32* %have_undo, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %undo_motion = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %7, i32 0, i32 7
  %8 = load i32, i32* %undo_motion, align 4
  %tobool3 = icmp ne i32 %8, 0
  br i1 %tobool3, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %9 = load i32, i32* %release_type.addr, align 4
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %10 = bitcast %struct._GimpUndoAccumulator* %accum to i8*
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 32, i32 4, i1 false)
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call4 = call %struct._GimpUndoStack* @gimp_image_get_undo_stack(%struct._GimpImage* %11)
  %call5 = call %struct._GimpUndo* @gimp_undo_stack_pop_undo(%struct._GimpUndoStack* %call4, i32 0, %struct._GimpUndoAccumulator* %accum)
  store %struct._GimpUndo* %call5, %struct._GimpUndo** %undo, align 8
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %13 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  call void @gimp_image_undo_event(%struct._GimpImage* %12, i32 1, %struct._GimpUndo* %13)
  %14 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  call void @gimp_undo_free(%struct._GimpUndo* %14, i32 0)
  %15 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %16 = bitcast %struct._GimpUndo* %15 to i8*
  call void @g_object_unref(i8* %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  %17 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %have_undo6 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %17, i32 0, i32 8
  store i32 0, i32* %have_undo6, align 4
  %18 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %undo_motion7 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %18, i32 0, i32 7
  store i32 0, i32* %undo_motion7, align 4
  %19 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %19, i32 0, i32 3
  %20 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_halt(%struct._GimpToolControl* %20)
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %21)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_vector_tool_motion(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %vector_tool = alloca %struct._GimpVectorTool*, align 8
  %options = alloca %struct._GimpVectorOptions*, align 8
  %position = alloca %struct._GimpCoords, align 8
  %anchor = alloca %struct._GimpAnchor*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_vector_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpVectorTool*
  store %struct._GimpVectorTool* %2, %struct._GimpVectorTool** %vector_tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_vector_options_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpVectorOptions*
  store %struct._GimpVectorOptions* %7, %struct._GimpVectorOptions** %options, align 8
  %8 = bitcast %struct._GimpCoords* %position to i8*
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 64, i32 8, i1 false)
  %9 = bitcast i8* %8 to %struct._GimpCoords*
  %10 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %9, i32 0, i32 2
  store double 1.000000e+00, double* %10
  %11 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %9, i32 0, i32 5
  store double 5.000000e-01, double* %11
  %12 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %12, i32 0, i32 1
  %13 = load i32, i32* %function, align 4
  %cmp = icmp eq i32 %13, 15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %14 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %14, i32 0, i32 0
  %15 = load double, double* %x, align 8
  %x7 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position, i32 0, i32 0
  store double %15, double* %x7, align 8
  %16 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %16, i32 0, i32 1
  %17 = load double, double* %y, align 8
  %y8 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position, i32 0, i32 1
  store double %17, double* %y8, align 8
  %18 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %vectors = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %18, i32 0, i32 14
  %19 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_vectors_freeze(%struct._GimpVectors* %19)
  %20 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %saved_state = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %20, i32 0, i32 4
  %21 = load i32, i32* %saved_state, align 4
  %and = and i32 %21, 1
  %22 = load i32, i32* %state.addr, align 4
  %and9 = and i32 %22, 1
  %cmp10 = icmp ne i32 %and, %and9
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  %23 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %modifier_lock = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %23, i32 0, i32 3
  store i32 0, i32* %modifier_lock, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end
  %24 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %modifier_lock13 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %24, i32 0, i32 3
  %25 = load i32, i32* %modifier_lock13, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.end.20, label %if.then.14

if.then.14:                                       ; preds = %if.end.12
  %26 = load i32, i32* %state.addr, align 4
  %and15 = and i32 %26, 1
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.then.14
  %27 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %restriction = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %27, i32 0, i32 2
  store i32 3, i32* %restriction, align 4
  br label %if.end.19

if.else:                                          ; preds = %if.then.14
  %28 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %restriction18 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %28, i32 0, i32 2
  store i32 0, i32* %restriction18, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.17
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end.12
  %29 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function21 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %29, i32 0, i32 1
  %30 = load i32, i32* %function21, align 4
  switch i32 %30, label %sw.default [
    i32 4, label %sw.bb
    i32 6, label %sw.bb
    i32 7, label %sw.bb.27
    i32 5, label %sw.bb.40
    i32 8, label %sw.bb.48
    i32 9, label %sw.bb.73
  ]

sw.bb:                                            ; preds = %if.end.20, %if.end.20
  %31 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_anchor = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %31, i32 0, i32 9
  %32 = load %struct._GimpAnchor*, %struct._GimpAnchor** %cur_anchor, align 8
  store %struct._GimpAnchor* %32, %struct._GimpAnchor** %anchor, align 8
  %33 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %tobool22 = icmp ne %struct._GimpAnchor* %33, null
  br i1 %tobool22, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %sw.bb
  %34 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_stroke = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %34, i32 0, i32 11
  %35 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke, align 8
  %36 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_anchor24 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %36, i32 0, i32 9
  %37 = load %struct._GimpAnchor*, %struct._GimpAnchor** %cur_anchor24, align 8
  %38 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %restriction25 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %38, i32 0, i32 2
  %39 = load i32, i32* %restriction25, align 4
  call void @gimp_stroke_anchor_move_absolute(%struct._GimpStroke* %35, %struct._GimpAnchor* %37, %struct._GimpCoords* %position, i32 %39)
  %40 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %undo_motion = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %40, i32 0, i32 7
  store i32 1, i32* %undo_motion, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %sw.bb
  br label %sw.epilog

sw.bb.27:                                         ; preds = %if.end.20
  %41 = load %struct._GimpVectorOptions*, %struct._GimpVectorOptions** %options, align 8
  %polygonal = getelementptr inbounds %struct._GimpVectorOptions, %struct._GimpVectorOptions* %41, i32 0, i32 2
  %42 = load i32, i32* %polygonal, align 4
  %tobool28 = icmp ne i32 %42, 0
  br i1 %tobool28, label %if.then.29, label %if.else.34

if.then.29:                                       ; preds = %sw.bb.27
  %43 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %44 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x30 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %44, i32 0, i32 0
  %45 = load double, double* %x30, align 8
  %46 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %last_x = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %46, i32 0, i32 5
  %47 = load double, double* %last_x, align 8
  %sub = fsub double %45, %47
  %48 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y31 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %48, i32 0, i32 1
  %49 = load double, double* %y31, align 8
  %50 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %last_y = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %50, i32 0, i32 6
  %51 = load double, double* %last_y, align 8
  %sub32 = fsub double %49, %51
  call void @gimp_vector_tool_move_selected_anchors(%struct._GimpVectorTool* %43, double %sub, double %sub32)
  %52 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %undo_motion33 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %52, i32 0, i32 7
  store i32 1, i32* %undo_motion33, align 4
  br label %if.end.39

if.else.34:                                       ; preds = %sw.bb.27
  %53 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_stroke35 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %53, i32 0, i32 11
  %54 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke35, align 8
  %55 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_anchor36 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %55, i32 0, i32 9
  %56 = load %struct._GimpAnchor*, %struct._GimpAnchor** %cur_anchor36, align 8
  %57 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_position = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %57, i32 0, i32 12
  %58 = load double, double* %cur_position, align 8
  %59 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %restriction37 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %59, i32 0, i32 2
  %60 = load i32, i32* %restriction37, align 4
  call void @gimp_stroke_point_move_absolute(%struct._GimpStroke* %54, %struct._GimpAnchor* %56, double %58, %struct._GimpCoords* %position, i32 %60)
  %61 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %undo_motion38 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %61, i32 0, i32 7
  store i32 1, i32* %undo_motion38, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.34, %if.then.29
  br label %sw.epilog

sw.bb.40:                                         ; preds = %if.end.20
  %62 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %63 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x41 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %63, i32 0, i32 0
  %64 = load double, double* %x41, align 8
  %65 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %last_x42 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %65, i32 0, i32 5
  %66 = load double, double* %last_x42, align 8
  %sub43 = fsub double %64, %66
  %67 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y44 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %67, i32 0, i32 1
  %68 = load double, double* %y44, align 8
  %69 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %last_y45 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %69, i32 0, i32 6
  %70 = load double, double* %last_y45, align 8
  %sub46 = fsub double %68, %70
  call void @gimp_vector_tool_move_selected_anchors(%struct._GimpVectorTool* %62, double %sub43, double %sub46)
  %71 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %undo_motion47 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %71, i32 0, i32 7
  store i32 1, i32* %undo_motion47, align 4
  br label %sw.epilog

sw.bb.48:                                         ; preds = %if.end.20
  %72 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_stroke49 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %72, i32 0, i32 11
  %73 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke49, align 8
  %tobool50 = icmp ne %struct._GimpStroke* %73, null
  br i1 %tobool50, label %if.then.51, label %if.else.60

if.then.51:                                       ; preds = %sw.bb.48
  %74 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_stroke52 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %74, i32 0, i32 11
  %75 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke52, align 8
  %76 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x53 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %76, i32 0, i32 0
  %77 = load double, double* %x53, align 8
  %78 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %last_x54 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %78, i32 0, i32 5
  %79 = load double, double* %last_x54, align 8
  %sub55 = fsub double %77, %79
  %80 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y56 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %80, i32 0, i32 1
  %81 = load double, double* %y56, align 8
  %82 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %last_y57 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %82, i32 0, i32 6
  %83 = load double, double* %last_y57, align 8
  %sub58 = fsub double %81, %83
  call void @gimp_stroke_translate(%struct._GimpStroke* %75, double %sub55, double %sub58)
  %84 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %undo_motion59 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %84, i32 0, i32 7
  store i32 1, i32* %undo_motion59, align 4
  br label %if.end.72

if.else.60:                                       ; preds = %sw.bb.48
  %85 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %sel_stroke = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %85, i32 0, i32 17
  %86 = load %struct._GimpStroke*, %struct._GimpStroke** %sel_stroke, align 8
  %tobool61 = icmp ne %struct._GimpStroke* %86, null
  br i1 %tobool61, label %if.then.62, label %if.end.71

if.then.62:                                       ; preds = %if.else.60
  %87 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %sel_stroke63 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %87, i32 0, i32 17
  %88 = load %struct._GimpStroke*, %struct._GimpStroke** %sel_stroke63, align 8
  %89 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x64 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %89, i32 0, i32 0
  %90 = load double, double* %x64, align 8
  %91 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %last_x65 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %91, i32 0, i32 5
  %92 = load double, double* %last_x65, align 8
  %sub66 = fsub double %90, %92
  %93 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y67 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %93, i32 0, i32 1
  %94 = load double, double* %y67, align 8
  %95 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %last_y68 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %95, i32 0, i32 6
  %96 = load double, double* %last_y68, align 8
  %sub69 = fsub double %94, %96
  call void @gimp_stroke_translate(%struct._GimpStroke* %88, double %sub66, double %sub69)
  %97 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %undo_motion70 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %97, i32 0, i32 7
  store i32 1, i32* %undo_motion70, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.62, %if.else.60
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.then.51
  br label %sw.epilog

sw.bb.73:                                         ; preds = %if.end.20
  %98 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %vectors74 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %98, i32 0, i32 14
  %99 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors74, align 8
  %100 = bitcast %struct._GimpVectors* %99 to %struct._GTypeInstance*
  %call75 = call i64 @gimp_item_get_type() #7
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %100, i64 %call75)
  %101 = bitcast %struct._GTypeInstance* %call76 to %struct._GimpItem*
  %102 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x77 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %102, i32 0, i32 0
  %103 = load double, double* %x77, align 8
  %104 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %last_x78 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %104, i32 0, i32 5
  %105 = load double, double* %last_x78, align 8
  %sub79 = fsub double %103, %105
  %conv = fptosi double %sub79 to i32
  %106 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y80 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %106, i32 0, i32 1
  %107 = load double, double* %y80, align 8
  %108 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %last_y81 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %108, i32 0, i32 6
  %109 = load double, double* %last_y81, align 8
  %sub82 = fsub double %107, %109
  %conv83 = fptosi double %sub82 to i32
  call void @gimp_item_translate(%struct._GimpItem* %101, i32 %conv, i32 %conv83, i32 0)
  %110 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %undo_motion84 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %110, i32 0, i32 7
  store i32 1, i32* %undo_motion84, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.20
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.73, %if.end.72, %sw.bb.40, %if.end.39, %if.end.26
  %111 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x85 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %111, i32 0, i32 0
  %112 = load double, double* %x85, align 8
  %113 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %last_x86 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %113, i32 0, i32 5
  store double %112, double* %last_x86, align 8
  %114 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y87 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %114, i32 0, i32 1
  %115 = load double, double* %y87, align 8
  %116 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %last_y88 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %116, i32 0, i32 6
  store double %115, double* %last_y88, align 8
  %117 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %vectors89 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %117, i32 0, i32 14
  %118 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors89, align 8
  call void @gimp_vectors_thaw(%struct._GimpVectors* %118)
  br label %return

return:                                           ; preds = %sw.epilog, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_vector_tool_key_press(%struct._GimpTool* %tool, %struct._GdkEventKey* %kevent, %struct._GimpDisplay* %display) #3 {
entry:
  %retval = alloca i32, align 4
  %tool.addr = alloca %struct._GimpTool*, align 8
  %kevent.addr = alloca %struct._GdkEventKey*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %vector_tool = alloca %struct._GimpVectorTool*, align 8
  %draw_tool = alloca %struct._GimpDrawTool*, align 8
  %options = alloca %struct._GimpVectorOptions*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %xdist = alloca double, align 8
  %ydist = alloca double, align 8
  %pixels = alloca double, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GdkEventKey* %kevent, %struct._GdkEventKey** %kevent.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_vector_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpVectorTool*
  store %struct._GimpVectorTool* %2, %struct._GimpVectorTool** %vector_tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_draw_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDrawTool*
  store %struct._GimpDrawTool* %5, %struct._GimpDrawTool** %draw_tool, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %7 = bitcast %struct._GimpTool* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_tool_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpTool*
  %call6 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %8)
  %9 = bitcast %struct._GimpToolOptions* %call6 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_vector_options_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpVectorOptions*
  store %struct._GimpVectorOptions* %10, %struct._GimpVectorOptions** %options, align 8
  store double 1.000000e+00, double* %pixels, align 8
  %11 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %vectors = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %11, i32 0, i32 14
  %12 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool = icmp ne %struct._GimpVectors* %12, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %14 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %display9 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %14, i32 0, i32 1
  %15 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display9, align 8
  %cmp = icmp ne %struct._GimpDisplay* %13, %15
  br i1 %cmp, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  %16 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %display12 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %16, i32 0, i32 1
  %17 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display12, align 8
  %call13 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %17)
  store %struct._GimpDisplayShell* %call13, %struct._GimpDisplayShell** %shell, align 8
  %18 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %state = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %18, i32 0, i32 4
  %19 = load i32, i32* %state, align 4
  %and = and i32 %19, 1
  %tobool14 = icmp ne i32 %and, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.11
  store double 1.000000e+01, double* %pixels, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.11
  %20 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %state17 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %20, i32 0, i32 4
  %21 = load i32, i32* %state17, align 4
  %call18 = call i32 @gimp_get_toggle_behavior_mask()
  %and19 = and i32 %21, %call18
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.16
  store double 5.000000e+01, double* %pixels, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.16
  %22 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %keyval = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %22, i32 0, i32 5
  %23 = load i32, i32* %keyval, align 4
  switch i32 %23, label %sw.default.40 [
    i32 65293, label %sw.bb
    i32 65421, label %sw.bb
    i32 65076, label %sw.bb
    i32 65288, label %sw.bb.24
    i32 65535, label %sw.bb.24
    i32 65361, label %sw.bb.25
    i32 65363, label %sw.bb.25
    i32 65362, label %sw.bb.25
    i32 65364, label %sw.bb.25
    i32 65307, label %sw.bb.36
  ]

sw.bb:                                            ; preds = %if.end.22, %if.end.22, %if.end.22
  %24 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %25 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %state23 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %25, i32 0, i32 4
  %26 = load i32, i32* %state23, align 4
  call void @gimp_vector_tool_to_selection_extended(%struct._GimpVectorTool* %24, i32 %26)
  br label %sw.epilog.41

sw.bb.24:                                         ; preds = %if.end.22, %if.end.22
  %27 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  call void @gimp_vector_tool_delete_selected_anchors(%struct._GimpVectorTool* %27)
  br label %sw.epilog.41

sw.bb.25:                                         ; preds = %if.end.22, %if.end.22, %if.end.22, %if.end.22
  %28 = load double, double* %pixels, align 8
  %29 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %29, i32 0, i32 13
  %30 = load double, double* %scale_x, align 8
  %div = fdiv double %28, %30
  store double %div, double* %xdist, align 8
  %31 = load double, double* %pixels, align 8
  %32 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %32, i32 0, i32 14
  %33 = load double, double* %scale_y, align 8
  %div26 = fdiv double %31, %33
  store double %div26, double* %ydist, align 8
  %34 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0)) #6
  call void @gimp_vector_tool_undo_push(%struct._GimpVectorTool* %34, i8* %call27)
  %35 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %vectors28 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %35, i32 0, i32 14
  %36 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors28, align 8
  call void @gimp_vectors_freeze(%struct._GimpVectors* %36)
  %37 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %keyval29 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %37, i32 0, i32 5
  %38 = load i32, i32* %keyval29, align 4
  switch i32 %38, label %sw.default [
    i32 65361, label %sw.bb.30
    i32 65363, label %sw.bb.31
    i32 65362, label %sw.bb.32
    i32 65364, label %sw.bb.34
  ]

sw.bb.30:                                         ; preds = %sw.bb.25
  %39 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %40 = load double, double* %xdist, align 8
  %sub = fsub double -0.000000e+00, %40
  call void @gimp_vector_tool_move_selected_anchors(%struct._GimpVectorTool* %39, double %sub, double 0.000000e+00)
  br label %sw.epilog

sw.bb.31:                                         ; preds = %sw.bb.25
  %41 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %42 = load double, double* %xdist, align 8
  call void @gimp_vector_tool_move_selected_anchors(%struct._GimpVectorTool* %41, double %42, double 0.000000e+00)
  br label %sw.epilog

sw.bb.32:                                         ; preds = %sw.bb.25
  %43 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %44 = load double, double* %ydist, align 8
  %sub33 = fsub double -0.000000e+00, %44
  call void @gimp_vector_tool_move_selected_anchors(%struct._GimpVectorTool* %43, double 0.000000e+00, double %sub33)
  br label %sw.epilog

sw.bb.34:                                         ; preds = %sw.bb.25
  %45 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %46 = load double, double* %ydist, align 8
  call void @gimp_vector_tool_move_selected_anchors(%struct._GimpVectorTool* %45, double 0.000000e+00, double %46)
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.25
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.34, %sw.bb.32, %sw.bb.31, %sw.bb.30
  %47 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %vectors35 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %47, i32 0, i32 14
  %48 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors35, align 8
  call void @gimp_vectors_thaw(%struct._GimpVectors* %48)
  %49 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %have_undo = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %49, i32 0, i32 8
  store i32 0, i32* %have_undo, align 4
  br label %sw.epilog.41

sw.bb.36:                                         ; preds = %if.end.22
  %50 = load %struct._GimpVectorOptions*, %struct._GimpVectorOptions** %options, align 8
  %edit_mode = getelementptr inbounds %struct._GimpVectorOptions, %struct._GimpVectorOptions* %50, i32 0, i32 1
  %51 = load i32, i32* %edit_mode, align 4
  %cmp37 = icmp ne i32 %51, 0
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %sw.bb.36
  %52 = load %struct._GimpVectorOptions*, %struct._GimpVectorOptions** %options, align 8
  %53 = bitcast %struct._GimpVectorOptions* %52 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i32 0, i8* null)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %sw.bb.36
  br label %sw.epilog.41

sw.default.40:                                    ; preds = %if.end.22
  store i32 0, i32* %retval
  br label %return

sw.epilog.41:                                     ; preds = %if.end.39, %sw.epilog, %sw.bb.24, %sw.bb
  %54 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call42 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %54)
  call void @gimp_image_flush(%struct._GimpImage* %call42)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog.41, %sw.default.40, %if.then.10, %if.then
  %55 = load i32, i32* %retval
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define internal void @gimp_vector_tool_modifier_key(%struct._GimpTool* %tool, i32 %key, i32 %press, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %key.addr = alloca i32, align 4
  %press.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %vector_tool = alloca %struct._GimpVectorTool*, align 8
  %options = alloca %struct._GimpVectorOptions*, align 8
  %button_mode = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %press, i32* %press.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_vector_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpVectorTool*
  store %struct._GimpVectorTool* %2, %struct._GimpVectorTool** %vector_tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_vector_options_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpVectorOptions*
  store %struct._GimpVectorOptions* %7, %struct._GimpVectorOptions** %options, align 8
  %8 = load i32, i32* %key.addr, align 4
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.39

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %key.addr, align 4
  %call7 = call i32 @gimp_get_toggle_behavior_mask()
  %cmp8 = icmp eq i32 %9, %call7
  br i1 %cmp8, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %10 = load i32, i32* %key.addr, align 4
  %cmp9 = icmp eq i32 %10, 8
  br i1 %cmp9, label %if.then.10, label %if.end.39

if.then.10:                                       ; preds = %lor.lhs.false, %if.end
  %11 = load %struct._GimpVectorOptions*, %struct._GimpVectorOptions** %options, align 8
  %edit_mode = getelementptr inbounds %struct._GimpVectorOptions, %struct._GimpVectorOptions* %11, i32 0, i32 1
  %12 = load i32, i32* %edit_mode, align 4
  store i32 %12, i32* %button_mode, align 4
  %13 = load i32, i32* %press.addr, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then.10
  %14 = load i32, i32* %key.addr, align 4
  %15 = load i32, i32* %state.addr, align 4
  %call12 = call i32 @gimp_get_toggle_behavior_mask()
  %or = or i32 %call12, 8
  %and = and i32 %15, %or
  %cmp13 = icmp eq i32 %14, %and
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.then.11
  %16 = load %struct._GimpVectorOptions*, %struct._GimpVectorOptions** %options, align 8
  %edit_mode15 = getelementptr inbounds %struct._GimpVectorOptions, %struct._GimpVectorOptions* %16, i32 0, i32 1
  %17 = load i32, i32* %edit_mode15, align 4
  %18 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %saved_mode = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %18, i32 0, i32 18
  store i32 %17, i32* %saved_mode, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.then.11
  br label %if.end.24

if.else:                                          ; preds = %if.then.10
  %19 = load i32, i32* %state.addr, align 4
  %call17 = call i32 @gimp_get_toggle_behavior_mask()
  %or18 = or i32 %call17, 8
  %and19 = and i32 %19, %or18
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.end.23, label %if.then.21

if.then.21:                                       ; preds = %if.else
  %20 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %saved_mode22 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %20, i32 0, i32 18
  %21 = load i32, i32* %saved_mode22, align 4
  store i32 %21, i32* %button_mode, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.else
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.16
  %22 = load i32, i32* %state.addr, align 4
  %and25 = and i32 %22, 8
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %if.end.24
  store i32 2, i32* %button_mode, align 4
  br label %if.end.34

if.else.28:                                       ; preds = %if.end.24
  %23 = load i32, i32* %state.addr, align 4
  %call29 = call i32 @gimp_get_toggle_behavior_mask()
  %and30 = and i32 %23, %call29
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.else.28
  store i32 1, i32* %button_mode, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.else.28
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.27
  %24 = load i32, i32* %button_mode, align 4
  %25 = load %struct._GimpVectorOptions*, %struct._GimpVectorOptions** %options, align 8
  %edit_mode35 = getelementptr inbounds %struct._GimpVectorOptions, %struct._GimpVectorOptions* %25, i32 0, i32 1
  %26 = load i32, i32* %edit_mode35, align 4
  %cmp36 = icmp ne i32 %24, %26
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.34
  %27 = load %struct._GimpVectorOptions*, %struct._GimpVectorOptions** %options, align 8
  %28 = bitcast %struct._GimpVectorOptions* %27 to i8*
  %29 = load i32, i32* %button_mode, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i32 %29, i8* null)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.end.34
  br label %if.end.39

if.end.39:                                        ; preds = %if.then, %if.end.38, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_vector_tool_oper_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, i32 %proximity, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %proximity.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %vector_tool = alloca %struct._GimpVectorTool*, align 8
  %draw_tool = alloca %struct._GimpDrawTool*, align 8
  %options = alloca %struct._GimpVectorOptions*, align 8
  %anchor = alloca %struct._GimpAnchor*, align 8
  %anchor2 = alloca %struct._GimpAnchor*, align 8
  %stroke = alloca %struct._GimpStroke*, align 8
  %position = alloca double, align 8
  %on_handle = alloca i32, align 4
  %on_curve = alloca i32, align 4
  %on_vectors = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store i32 %proximity, i32* %proximity.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_vector_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpVectorTool*
  store %struct._GimpVectorTool* %2, %struct._GimpVectorTool** %vector_tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_draw_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDrawTool*
  store %struct._GimpDrawTool* %5, %struct._GimpDrawTool** %draw_tool, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %7 = bitcast %struct._GimpTool* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_tool_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpTool*
  %call6 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %8)
  %9 = bitcast %struct._GimpToolOptions* %call6 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_vector_options_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpVectorOptions*
  store %struct._GimpVectorOptions* %10, %struct._GimpVectorOptions** %options, align 8
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %anchor, align 8
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %anchor2, align 8
  store %struct._GimpStroke* null, %struct._GimpStroke** %stroke, align 8
  store double -1.000000e+00, double* %position, align 8
  store i32 0, i32* %on_handle, align 4
  store i32 0, i32* %on_curve, align 4
  store i32 0, i32* %on_vectors, align 4
  %11 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %modifier_lock = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %11, i32 0, i32 3
  store i32 0, i32* %modifier_lock, align 4
  %12 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %vectors = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %12, i32 0, i32 14
  %13 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool = icmp ne %struct._GimpVectors* %13, null
  br i1 %tobool, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %entry
  %14 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %15 = bitcast %struct._GimpTool* %14 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_draw_tool_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call9)
  %16 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpDrawTool*
  %display11 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %16, i32 0, i32 1
  %17 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display11, align 8
  %18 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %cmp = icmp eq %struct._GimpDisplay* %17, %18
  br i1 %cmp, label %if.then, label %if.end.23

if.then:                                          ; preds = %land.lhs.true
  %19 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %20 = bitcast %struct._GimpTool* %19 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_draw_tool_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call12)
  %21 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpDrawTool*
  %22 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %23 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %vectors14 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %23, i32 0, i32 14
  %24 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors14, align 8
  %25 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %26 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %sel_count = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %26, i32 0, i32 15
  %27 = load i32, i32* %sel_count, align 4
  %cmp15 = icmp sgt i32 %27, 2
  %conv = zext i1 %cmp15 to i32
  %call16 = call i32 @gimp_draw_tool_on_vectors_handle(%struct._GimpDrawTool* %21, %struct._GimpDisplay* %22, %struct._GimpVectors* %24, %struct._GimpCoords* %25, i32 13, i32 13, i32 0, i32 %conv, %struct._GimpAnchor** %anchor, %struct._GimpStroke** %stroke)
  store i32 %call16, i32* %on_handle, align 4
  %28 = load i32, i32* %on_handle, align 4
  %tobool17 = icmp ne i32 %28, 0
  br i1 %tobool17, label %if.end, label %if.then.18

if.then.18:                                       ; preds = %if.then
  %29 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %30 = bitcast %struct._GimpTool* %29 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_draw_tool_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call19)
  %31 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpDrawTool*
  %32 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %33 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %vectors21 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %33, i32 0, i32 14
  %34 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors21, align 8
  %35 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %call22 = call i32 @gimp_draw_tool_on_vectors_curve(%struct._GimpDrawTool* %31, %struct._GimpDisplay* %32, %struct._GimpVectors* %34, %struct._GimpCoords* %35, i32 13, i32 13, %struct._GimpCoords* null, double* %position, %struct._GimpAnchor** %anchor, %struct._GimpAnchor** %anchor2, %struct._GimpStroke** %stroke)
  store i32 %call22, i32* %on_curve, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.18, %if.then
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %land.lhs.true, %entry
  %36 = load i32, i32* %on_handle, align 4
  %tobool24 = icmp ne i32 %36, 0
  br i1 %tobool24, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.23
  %37 = load i32, i32* %on_curve, align 4
  %tobool25 = icmp ne i32 %37, 0
  br i1 %tobool25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %lor.lhs.false, %if.end.23
  %38 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_vectors = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %38, i32 0, i32 13
  store %struct._GimpVectors* null, %struct._GimpVectors** %cur_vectors, align 8
  br label %if.end.29

if.else:                                          ; preds = %lor.lhs.false
  %39 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %40 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %41 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %42 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_vectors27 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %42, i32 0, i32 13
  %call28 = call i32 @gimp_draw_tool_on_vectors(%struct._GimpDrawTool* %39, %struct._GimpDisplay* %40, %struct._GimpCoords* %41, i32 13, i32 13, %struct._GimpCoords* null, double* null, %struct._GimpAnchor** null, %struct._GimpAnchor** null, %struct._GimpStroke** null, %struct._GimpVectors** %cur_vectors27)
  store i32 %call28, i32* %on_vectors, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.26
  %43 = load double, double* %position, align 8
  %44 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_position = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %44, i32 0, i32 12
  store double %43, double* %cur_position, align 8
  %45 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %46 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_anchor = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %46, i32 0, i32 9
  store %struct._GimpAnchor* %45, %struct._GimpAnchor** %cur_anchor, align 8
  %47 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor2, align 8
  %48 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_anchor2 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %48, i32 0, i32 10
  store %struct._GimpAnchor* %47, %struct._GimpAnchor** %cur_anchor2, align 8
  %49 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %50 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %cur_stroke = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %50, i32 0, i32 11
  store %struct._GimpStroke* %49, %struct._GimpStroke** %cur_stroke, align 8
  %51 = load %struct._GimpVectorOptions*, %struct._GimpVectorOptions** %options, align 8
  %edit_mode = getelementptr inbounds %struct._GimpVectorOptions, %struct._GimpVectorOptions* %51, i32 0, i32 1
  %52 = load i32, i32* %edit_mode, align 4
  switch i32 %52, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.115
    i32 2, label %sw.bb.201
  ]

sw.bb:                                            ; preds = %if.end.29
  %53 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %vectors30 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %53, i32 0, i32 14
  %54 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors30, align 8
  %tobool31 = icmp ne %struct._GimpVectors* %54, null
  br i1 %tobool31, label %lor.lhs.false.32, label %if.then.38

lor.lhs.false.32:                                 ; preds = %sw.bb
  %55 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %56 = bitcast %struct._GimpTool* %55 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_draw_tool_get_type() #7
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call33)
  %57 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpDrawTool*
  %display35 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %57, i32 0, i32 1
  %58 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display35, align 8
  %59 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %cmp36 = icmp ne %struct._GimpDisplay* %58, %59
  br i1 %cmp36, label %if.then.38, label %if.else.45

if.then.38:                                       ; preds = %lor.lhs.false.32, %sw.bb
  %60 = load i32, i32* %on_vectors, align 4
  %tobool39 = icmp ne i32 %60, 0
  br i1 %tobool39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %if.then.38
  %61 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %61, i32 0, i32 1
  store i32 0, i32* %function, align 4
  br label %if.end.44

if.else.41:                                       ; preds = %if.then.38
  %62 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function42 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %62, i32 0, i32 1
  store i32 1, i32* %function42, align 4
  %63 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %restriction = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %63, i32 0, i32 2
  store i32 3, i32* %restriction, align 4
  %64 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %modifier_lock43 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %64, i32 0, i32 3
  store i32 1, i32* %modifier_lock43, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.41, %if.then.40
  br label %if.end.114

if.else.45:                                       ; preds = %lor.lhs.false.32
  %65 = load i32, i32* %on_handle, align 4
  %tobool46 = icmp ne i32 %65, 0
  br i1 %tobool46, label %if.then.47, label %if.else.76

if.then.47:                                       ; preds = %if.else.45
  %66 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %type = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %66, i32 0, i32 1
  %67 = load i32, i32* %type, align 4
  %cmp48 = icmp eq i32 %67, 0
  br i1 %cmp48, label %if.then.50, label %if.else.66

if.then.50:                                       ; preds = %if.then.47
  %68 = load i32, i32* %state.addr, align 4
  %and = and i32 %68, 1
  %tobool51 = icmp ne i32 %and, 0
  br i1 %tobool51, label %if.then.52, label %if.else.54

if.then.52:                                       ; preds = %if.then.50
  %69 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function53 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %69, i32 0, i32 1
  store i32 5, i32* %function53, align 4
  br label %if.end.65

if.else.54:                                       ; preds = %if.then.50
  %70 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %sel_count55 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %70, i32 0, i32 15
  %71 = load i32, i32* %sel_count55, align 4
  %cmp56 = icmp sge i32 %71, 2
  br i1 %cmp56, label %land.lhs.true.58, label %if.else.62

land.lhs.true.58:                                 ; preds = %if.else.54
  %72 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %selected = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %72, i32 0, i32 2
  %73 = load i32, i32* %selected, align 4
  %tobool59 = icmp ne i32 %73, 0
  br i1 %tobool59, label %if.then.60, label %if.else.62

if.then.60:                                       ; preds = %land.lhs.true.58
  %74 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function61 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %74, i32 0, i32 1
  store i32 5, i32* %function61, align 4
  br label %if.end.64

if.else.62:                                       ; preds = %land.lhs.true.58, %if.else.54
  %75 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function63 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %75, i32 0, i32 1
  store i32 4, i32* %function63, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.62, %if.then.60
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.52
  br label %if.end.75

if.else.66:                                       ; preds = %if.then.47
  %76 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function67 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %76, i32 0, i32 1
  store i32 6, i32* %function67, align 4
  %77 = load i32, i32* %state.addr, align 4
  %and68 = and i32 %77, 1
  %tobool69 = icmp ne i32 %and68, 0
  br i1 %tobool69, label %if.then.70, label %if.else.72

if.then.70:                                       ; preds = %if.else.66
  %78 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %restriction71 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %78, i32 0, i32 2
  store i32 3, i32* %restriction71, align 4
  br label %if.end.74

if.else.72:                                       ; preds = %if.else.66
  %79 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %restriction73 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %79, i32 0, i32 2
  store i32 0, i32* %restriction73, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.72, %if.then.70
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.end.65
  br label %if.end.113

if.else.76:                                       ; preds = %if.else.45
  %80 = load i32, i32* %on_curve, align 4
  %tobool77 = icmp ne i32 %80, 0
  br i1 %tobool77, label %if.then.78, label %if.else.93

if.then.78:                                       ; preds = %if.else.76
  %81 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %82 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %83 = load double, double* %position, align 8
  %call79 = call i32 @gimp_stroke_point_is_movable(%struct._GimpStroke* %81, %struct._GimpAnchor* %82, double %83)
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.then.81, label %if.else.90

if.then.81:                                       ; preds = %if.then.78
  %84 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function82 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %84, i32 0, i32 1
  store i32 7, i32* %function82, align 4
  %85 = load i32, i32* %state.addr, align 4
  %and83 = and i32 %85, 1
  %tobool84 = icmp ne i32 %and83, 0
  br i1 %tobool84, label %if.then.85, label %if.else.87

if.then.85:                                       ; preds = %if.then.81
  %86 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %restriction86 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %86, i32 0, i32 2
  store i32 3, i32* %restriction86, align 4
  br label %if.end.89

if.else.87:                                       ; preds = %if.then.81
  %87 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %restriction88 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %87, i32 0, i32 2
  store i32 0, i32* %restriction88, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.87, %if.then.85
  br label %if.end.92

if.else.90:                                       ; preds = %if.then.78
  %88 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function91 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %88, i32 0, i32 1
  store i32 15, i32* %function91, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.90, %if.end.89
  br label %if.end.112

if.else.93:                                       ; preds = %if.else.76
  %89 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %sel_stroke = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %89, i32 0, i32 17
  %90 = load %struct._GimpStroke*, %struct._GimpStroke** %sel_stroke, align 8
  %tobool94 = icmp ne %struct._GimpStroke* %90, null
  br i1 %tobool94, label %land.lhs.true.95, label %if.else.107

land.lhs.true.95:                                 ; preds = %if.else.93
  %91 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %sel_anchor = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %91, i32 0, i32 16
  %92 = load %struct._GimpAnchor*, %struct._GimpAnchor** %sel_anchor, align 8
  %tobool96 = icmp ne %struct._GimpAnchor* %92, null
  br i1 %tobool96, label %land.lhs.true.97, label %if.else.107

land.lhs.true.97:                                 ; preds = %land.lhs.true.95
  %93 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %sel_stroke98 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %93, i32 0, i32 17
  %94 = load %struct._GimpStroke*, %struct._GimpStroke** %sel_stroke98, align 8
  %95 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %sel_anchor99 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %95, i32 0, i32 16
  %96 = load %struct._GimpAnchor*, %struct._GimpAnchor** %sel_anchor99, align 8
  %call100 = call i32 @gimp_stroke_is_extendable(%struct._GimpStroke* %94, %struct._GimpAnchor* %96)
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %land.lhs.true.102, label %if.else.107

land.lhs.true.102:                                ; preds = %land.lhs.true.97
  %97 = load i32, i32* %state.addr, align 4
  %and103 = and i32 %97, 1
  %tobool104 = icmp ne i32 %and103, 0
  br i1 %tobool104, label %if.else.107, label %if.then.105

if.then.105:                                      ; preds = %land.lhs.true.102
  %98 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function106 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %98, i32 0, i32 1
  store i32 3, i32* %function106, align 4
  br label %if.end.109

if.else.107:                                      ; preds = %land.lhs.true.102, %land.lhs.true.97, %land.lhs.true.95, %if.else.93
  %99 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function108 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %99, i32 0, i32 1
  store i32 2, i32* %function108, align 4
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.107, %if.then.105
  %100 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %restriction110 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %100, i32 0, i32 2
  store i32 3, i32* %restriction110, align 4
  %101 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %modifier_lock111 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %101, i32 0, i32 3
  store i32 1, i32* %modifier_lock111, align 4
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.109, %if.end.92
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.end.75
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.end.44
  br label %sw.epilog

sw.bb.115:                                        ; preds = %if.end.29
  %102 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %vectors116 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %102, i32 0, i32 14
  %103 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors116, align 8
  %tobool117 = icmp ne %struct._GimpVectors* %103, null
  br i1 %tobool117, label %lor.lhs.false.118, label %if.then.124

lor.lhs.false.118:                                ; preds = %sw.bb.115
  %104 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %105 = bitcast %struct._GimpTool* %104 to %struct._GTypeInstance*
  %call119 = call i64 @gimp_draw_tool_get_type() #7
  %call120 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %105, i64 %call119)
  %106 = bitcast %struct._GTypeInstance* %call120 to %struct._GimpDrawTool*
  %display121 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %106, i32 0, i32 1
  %107 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display121, align 8
  %108 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %cmp122 = icmp ne %struct._GimpDisplay* %107, %108
  br i1 %cmp122, label %if.then.124, label %if.else.131

if.then.124:                                      ; preds = %lor.lhs.false.118, %sw.bb.115
  %109 = load i32, i32* %on_vectors, align 4
  %tobool125 = icmp ne i32 %109, 0
  br i1 %tobool125, label %if.then.126, label %if.else.128

if.then.126:                                      ; preds = %if.then.124
  %110 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function127 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %110, i32 0, i32 1
  store i32 0, i32* %function127, align 4
  br label %if.end.130

if.else.128:                                      ; preds = %if.then.124
  %111 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function129 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %111, i32 0, i32 1
  store i32 15, i32* %function129, align 4
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.128, %if.then.126
  br label %if.end.200

if.else.131:                                      ; preds = %lor.lhs.false.118
  %112 = load i32, i32* %on_handle, align 4
  %tobool132 = icmp ne i32 %112, 0
  br i1 %tobool132, label %if.then.133, label %if.else.180

if.then.133:                                      ; preds = %if.else.131
  %113 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %type134 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %113, i32 0, i32 1
  %114 = load i32, i32* %type134, align 4
  %cmp135 = icmp eq i32 %114, 0
  br i1 %cmp135, label %if.then.137, label %if.else.171

if.then.137:                                      ; preds = %if.then.133
  %115 = load i32, i32* %state.addr, align 4
  %and138 = and i32 %115, 1
  %tobool139 = icmp ne i32 %and138, 0
  br i1 %tobool139, label %if.else.157, label %land.lhs.true.140

land.lhs.true.140:                                ; preds = %if.then.137
  %116 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %sel_anchor141 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %116, i32 0, i32 16
  %117 = load %struct._GimpAnchor*, %struct._GimpAnchor** %sel_anchor141, align 8
  %tobool142 = icmp ne %struct._GimpAnchor* %117, null
  br i1 %tobool142, label %land.lhs.true.143, label %if.else.157

land.lhs.true.143:                                ; preds = %land.lhs.true.140
  %118 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %sel_anchor144 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %118, i32 0, i32 16
  %119 = load %struct._GimpAnchor*, %struct._GimpAnchor** %sel_anchor144, align 8
  %120 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %cmp145 = icmp ne %struct._GimpAnchor* %119, %120
  br i1 %cmp145, label %land.lhs.true.147, label %if.else.157

land.lhs.true.147:                                ; preds = %land.lhs.true.143
  %121 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %sel_stroke148 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %121, i32 0, i32 17
  %122 = load %struct._GimpStroke*, %struct._GimpStroke** %sel_stroke148, align 8
  %123 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %sel_anchor149 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %123, i32 0, i32 16
  %124 = load %struct._GimpAnchor*, %struct._GimpAnchor** %sel_anchor149, align 8
  %call150 = call i32 @gimp_stroke_is_extendable(%struct._GimpStroke* %122, %struct._GimpAnchor* %124)
  %tobool151 = icmp ne i32 %call150, 0
  br i1 %tobool151, label %land.lhs.true.152, label %if.else.157

land.lhs.true.152:                                ; preds = %land.lhs.true.147
  %125 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %126 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %call153 = call i32 @gimp_stroke_is_extendable(%struct._GimpStroke* %125, %struct._GimpAnchor* %126)
  %tobool154 = icmp ne i32 %call153, 0
  br i1 %tobool154, label %if.then.155, label %if.else.157

if.then.155:                                      ; preds = %land.lhs.true.152
  %127 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function156 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %127, i32 0, i32 1
  store i32 12, i32* %function156, align 4
  br label %if.end.170

if.else.157:                                      ; preds = %land.lhs.true.152, %land.lhs.true.147, %land.lhs.true.143, %land.lhs.true.140, %if.then.137
  %128 = load i32, i32* %state.addr, align 4
  %and158 = and i32 %128, 1
  %tobool159 = icmp ne i32 %and158, 0
  br i1 %tobool159, label %if.then.160, label %if.else.162

if.then.160:                                      ; preds = %if.else.157
  %129 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function161 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %129, i32 0, i32 1
  store i32 11, i32* %function161, align 4
  br label %if.end.169

if.else.162:                                      ; preds = %if.else.157
  %130 = load %struct._GimpVectorOptions*, %struct._GimpVectorOptions** %options, align 8
  %polygonal = getelementptr inbounds %struct._GimpVectorOptions, %struct._GimpVectorOptions* %130, i32 0, i32 2
  %131 = load i32, i32* %polygonal, align 4
  %tobool163 = icmp ne i32 %131, 0
  br i1 %tobool163, label %if.then.164, label %if.else.166

if.then.164:                                      ; preds = %if.else.162
  %132 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function165 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %132, i32 0, i32 1
  store i32 4, i32* %function165, align 4
  br label %if.end.168

if.else.166:                                      ; preds = %if.else.162
  %133 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function167 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %133, i32 0, i32 1
  store i32 6, i32* %function167, align 4
  br label %if.end.168

if.end.168:                                       ; preds = %if.else.166, %if.then.164
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %if.then.160
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %if.then.155
  br label %if.end.179

if.else.171:                                      ; preds = %if.then.133
  %134 = load i32, i32* %state.addr, align 4
  %and172 = and i32 %134, 1
  %tobool173 = icmp ne i32 %and172, 0
  br i1 %tobool173, label %if.then.174, label %if.else.176

if.then.174:                                      ; preds = %if.else.171
  %135 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function175 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %135, i32 0, i32 1
  store i32 14, i32* %function175, align 4
  br label %if.end.178

if.else.176:                                      ; preds = %if.else.171
  %136 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function177 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %136, i32 0, i32 1
  store i32 6, i32* %function177, align 4
  br label %if.end.178

if.end.178:                                       ; preds = %if.else.176, %if.then.174
  br label %if.end.179

if.end.179:                                       ; preds = %if.end.178, %if.end.170
  br label %if.end.199

if.else.180:                                      ; preds = %if.else.131
  %137 = load i32, i32* %on_curve, align 4
  %tobool181 = icmp ne i32 %137, 0
  br i1 %tobool181, label %if.then.182, label %if.else.196

if.then.182:                                      ; preds = %if.else.180
  %138 = load i32, i32* %state.addr, align 4
  %and183 = and i32 %138, 1
  %tobool184 = icmp ne i32 %and183, 0
  br i1 %tobool184, label %if.then.185, label %if.else.187

if.then.185:                                      ; preds = %if.then.182
  %139 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function186 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %139, i32 0, i32 1
  store i32 13, i32* %function186, align 4
  br label %if.end.195

if.else.187:                                      ; preds = %if.then.182
  %140 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %141 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %142 = load double, double* %position, align 8
  %call188 = call i32 @gimp_stroke_anchor_is_insertable(%struct._GimpStroke* %140, %struct._GimpAnchor* %141, double %142)
  %tobool189 = icmp ne i32 %call188, 0
  br i1 %tobool189, label %if.then.190, label %if.else.192

if.then.190:                                      ; preds = %if.else.187
  %143 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function191 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %143, i32 0, i32 1
  store i32 10, i32* %function191, align 4
  br label %if.end.194

if.else.192:                                      ; preds = %if.else.187
  %144 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function193 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %144, i32 0, i32 1
  store i32 15, i32* %function193, align 4
  br label %if.end.194

if.end.194:                                       ; preds = %if.else.192, %if.then.190
  br label %if.end.195

if.end.195:                                       ; preds = %if.end.194, %if.then.185
  br label %if.end.198

if.else.196:                                      ; preds = %if.else.180
  %145 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function197 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %145, i32 0, i32 1
  store i32 15, i32* %function197, align 4
  br label %if.end.198

if.end.198:                                       ; preds = %if.else.196, %if.end.195
  br label %if.end.199

if.end.199:                                       ; preds = %if.end.198, %if.end.179
  br label %if.end.200

if.end.200:                                       ; preds = %if.end.199, %if.end.130
  br label %sw.epilog

sw.bb.201:                                        ; preds = %if.end.29
  %146 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %vectors202 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %146, i32 0, i32 14
  %147 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors202, align 8
  %tobool203 = icmp ne %struct._GimpVectors* %147, null
  br i1 %tobool203, label %lor.lhs.false.204, label %if.then.210

lor.lhs.false.204:                                ; preds = %sw.bb.201
  %148 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %149 = bitcast %struct._GimpTool* %148 to %struct._GTypeInstance*
  %call205 = call i64 @gimp_draw_tool_get_type() #7
  %call206 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %149, i64 %call205)
  %150 = bitcast %struct._GTypeInstance* %call206 to %struct._GimpDrawTool*
  %display207 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %150, i32 0, i32 1
  %151 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display207, align 8
  %152 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %cmp208 = icmp ne %struct._GimpDisplay* %151, %152
  br i1 %cmp208, label %if.then.210, label %if.else.217

if.then.210:                                      ; preds = %lor.lhs.false.204, %sw.bb.201
  %153 = load i32, i32* %on_vectors, align 4
  %tobool211 = icmp ne i32 %153, 0
  br i1 %tobool211, label %if.then.212, label %if.else.214

if.then.212:                                      ; preds = %if.then.210
  %154 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function213 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %154, i32 0, i32 1
  store i32 0, i32* %function213, align 4
  br label %if.end.216

if.else.214:                                      ; preds = %if.then.210
  %155 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function215 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %155, i32 0, i32 1
  store i32 15, i32* %function215, align 4
  br label %if.end.216

if.end.216:                                       ; preds = %if.else.214, %if.then.212
  br label %if.end.237

if.else.217:                                      ; preds = %lor.lhs.false.204
  %156 = load i32, i32* %on_handle, align 4
  %tobool218 = icmp ne i32 %156, 0
  br i1 %tobool218, label %if.then.221, label %lor.lhs.false.219

lor.lhs.false.219:                                ; preds = %if.else.217
  %157 = load i32, i32* %on_curve, align 4
  %tobool220 = icmp ne i32 %157, 0
  br i1 %tobool220, label %if.then.221, label %if.else.229

if.then.221:                                      ; preds = %lor.lhs.false.219, %if.else.217
  %158 = load i32, i32* %state.addr, align 4
  %and222 = and i32 %158, 1
  %tobool223 = icmp ne i32 %and222, 0
  br i1 %tobool223, label %if.then.224, label %if.else.226

if.then.224:                                      ; preds = %if.then.221
  %159 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function225 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %159, i32 0, i32 1
  store i32 9, i32* %function225, align 4
  br label %if.end.228

if.else.226:                                      ; preds = %if.then.221
  %160 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function227 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %160, i32 0, i32 1
  store i32 8, i32* %function227, align 4
  br label %if.end.228

if.end.228:                                       ; preds = %if.else.226, %if.then.224
  br label %if.end.236

if.else.229:                                      ; preds = %lor.lhs.false.219
  %161 = load i32, i32* %on_vectors, align 4
  %tobool230 = icmp ne i32 %161, 0
  br i1 %tobool230, label %if.then.231, label %if.else.233

if.then.231:                                      ; preds = %if.else.229
  %162 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function232 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %162, i32 0, i32 1
  store i32 0, i32* %function232, align 4
  br label %if.end.235

if.else.233:                                      ; preds = %if.else.229
  %163 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function234 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %163, i32 0, i32 1
  store i32 9, i32* %function234, align 4
  br label %if.end.235

if.end.235:                                       ; preds = %if.else.233, %if.then.231
  br label %if.end.236

if.end.236:                                       ; preds = %if.end.235, %if.end.228
  br label %if.end.237

if.end.237:                                       ; preds = %if.end.236, %if.end.216
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.29, %if.end.237, %if.end.200, %if.end.114
  %164 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %165 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %166 = load i32, i32* %state.addr, align 4
  %167 = load i32, i32* %proximity.addr, align 4
  call void @gimp_vector_tool_status_update(%struct._GimpTool* %164, %struct._GimpDisplay* %165, i32 %166, i32 %167)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_vector_tool_cursor_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %vector_tool = alloca %struct._GimpVectorTool*, align 8
  %tool_cursor = alloca i32, align 4
  %modifier = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_vector_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpVectorTool*
  store %struct._GimpVectorTool* %2, %struct._GimpVectorTool** %vector_tool, align 8
  store i32 6, i32* %tool_cursor, align 4
  store i32 0, i32* %modifier, align 4
  %3 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %3, i32 0, i32 1
  %4 = load i32, i32* %function, align 4
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 10, label %sw.bb.3
    i32 11, label %sw.bb.4
    i32 13, label %sw.bb.5
    i32 6, label %sw.bb.6
    i32 14, label %sw.bb.7
    i32 4, label %sw.bb.8
    i32 7, label %sw.bb.9
    i32 8, label %sw.bb.10
    i32 9, label %sw.bb.10
    i32 5, label %sw.bb.11
    i32 12, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %entry
  store i32 36, i32* %tool_cursor, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry, %entry
  store i32 7, i32* %modifier, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry, %entry
  store i32 7, i32* %tool_cursor, align 4
  store i32 2, i32* %modifier, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  store i32 7, i32* %tool_cursor, align 4
  store i32 3, i32* %modifier, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  store i32 9, i32* %tool_cursor, align 4
  store i32 3, i32* %modifier, align 4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  store i32 8, i32* %tool_cursor, align 4
  store i32 5, i32* %modifier, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  store i32 8, i32* %tool_cursor, align 4
  store i32 3, i32* %modifier, align 4
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  store i32 7, i32* %tool_cursor, align 4
  store i32 5, i32* %modifier, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  store i32 9, i32* %tool_cursor, align 4
  store i32 5, i32* %modifier, align 4
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry, %entry
  store i32 5, i32* %modifier, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  store i32 7, i32* %tool_cursor, align 4
  store i32 5, i32* %modifier, align 4
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  store i32 9, i32* %tool_cursor, align 4
  store i32 12, i32* %modifier, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 1, i32* %modifier, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 3
  %6 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %7 = load i32, i32* %tool_cursor, align 4
  call void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl* %6, i32 %7)
  %8 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control13 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %8, i32 0, i32 3
  %9 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control13, align 8
  %10 = load i32, i32* %modifier, align 4
  call void @gimp_tool_control_set_cursor_modifier(%struct._GimpToolControl* %9, i32 %10)
  %11 = load i8*, i8** @gimp_vector_tool_parent_class, align 8
  %12 = bitcast i8* %11 to %struct._GTypeClass*
  %call14 = call i64 @gimp_tool_get_type() #7
  %call15 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %12, i64 %call14)
  %13 = bitcast %struct._GTypeClass* %call15 to %struct._GimpToolClass*
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %13, i32 0, i32 13
  %14 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %15 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %16 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %17 = load i32, i32* %state.addr, align 4
  %18 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %14(%struct._GimpTool* %15, %struct._GimpCoords* %16, i32 %17, %struct._GimpDisplay* %18)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_vector_tool_draw(%struct._GimpDrawTool* %draw_tool) #3 {
entry:
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %vector_tool = alloca %struct._GimpVectorTool*, align 8
  %cur_stroke = alloca %struct._GimpStroke*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %coords = alloca %struct._GArray*, align 8
  %draw_anchors = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %cur_anchor = alloca %struct._GimpAnchor*, align 8
  %i = alloca i32, align 4
  %item = alloca %struct._GimpCanvasItem*, align 8
  %cur_anchor63 = alloca %struct._GimpAnchor*, align 8
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_vector_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpVectorTool*
  store %struct._GimpVectorTool* %2, %struct._GimpVectorTool** %vector_tool, align 8
  %3 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %vectors2 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %3, i32 0, i32 14
  %4 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors2, align 8
  store %struct._GimpVectors* %4, %struct._GimpVectors** %vectors, align 8
  %5 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool = icmp ne %struct._GimpVectors* %5, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %6 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %call3 = call %struct.cairo_path* @gimp_vectors_get_bezier(%struct._GimpVectors* %6)
  %tobool4 = icmp ne %struct.cairo_path* %call3, null
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %for.end.81

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %8 = bitcast %struct._GimpVectors* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %call7 = call i32 @gimp_item_get_visible(%struct._GimpItem* %9)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.12, label %if.then.9

if.then.9:                                        ; preds = %if.end
  %10 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %11 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %call10 = call %struct.cairo_path* @gimp_vectors_get_bezier(%struct._GimpVectors* %11)
  %call11 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_path(%struct._GimpDrawTool* %10, %struct.cairo_path* %call10, double 0.000000e+00, double 0.000000e+00)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.end
  %12 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %call13 = call %struct._GimpStroke* @gimp_vectors_stroke_get_next(%struct._GimpVectors* %12, %struct._GimpStroke* null)
  store %struct._GimpStroke* %call13, %struct._GimpStroke** %cur_stroke, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.79, %if.end.12
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke, align 8
  %tobool14 = icmp ne %struct._GimpStroke* %13, null
  br i1 %tobool14, label %for.body, label %for.end.81

for.body:                                         ; preds = %for.cond
  %14 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke, align 8
  %call15 = call %struct._GList* @gimp_stroke_get_draw_anchors(%struct._GimpStroke* %14)
  store %struct._GList* %call15, %struct._GList** %draw_anchors, align 8
  %15 = load %struct._GList*, %struct._GList** %draw_anchors, align 8
  store %struct._GList* %15, %struct._GList** %list, align 8
  br label %for.cond.16

for.cond.16:                                      ; preds = %cond.end, %for.body
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool17 = icmp ne %struct._GList* %16, null
  br i1 %tobool17, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %for.cond.16
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 0
  %18 = load i8*, i8** %data, align 8
  %19 = bitcast i8* %18 to %struct._GimpAnchor*
  store %struct._GimpAnchor* %19, %struct._GimpAnchor** %cur_anchor, align 8
  %20 = load %struct._GimpAnchor*, %struct._GimpAnchor** %cur_anchor, align 8
  %type = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %20, i32 0, i32 1
  %21 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %21, 0
  br i1 %cmp, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %for.body.18
  %22 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %23 = load %struct._GimpAnchor*, %struct._GimpAnchor** %cur_anchor, align 8
  %selected = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %23, i32 0, i32 2
  %24 = load i32, i32* %selected, align 4
  %tobool20 = icmp ne i32 %24, 0
  %cond = select i1 %tobool20, i32 2, i32 3
  %25 = load %struct._GimpAnchor*, %struct._GimpAnchor** %cur_anchor, align 8
  %position = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %25, i32 0, i32 0
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position, i32 0, i32 0
  %26 = load double, double* %x, align 8
  %27 = load %struct._GimpAnchor*, %struct._GimpAnchor** %cur_anchor, align 8
  %position21 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %27, i32 0, i32 0
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position21, i32 0, i32 1
  %28 = load double, double* %y, align 8
  %call22 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %22, i32 %cond, double %26, double %28, i32 13, i32 13, i32 0)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.19, %for.body.18
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %29 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool24 = icmp ne %struct._GList* %29, null
  br i1 %tobool24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %30 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %30, i32 0, i32 1
  %31 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond25 = phi %struct._GList* [ %31, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond25, %struct._GList** %list, align 8
  br label %for.cond.16

for.end:                                          ; preds = %for.cond.16
  %32 = load %struct._GList*, %struct._GList** %draw_anchors, align 8
  call void @g_list_free(%struct._GList* %32)
  %33 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %sel_count = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %33, i32 0, i32 15
  %34 = load i32, i32* %sel_count, align 4
  %cmp26 = icmp sle i32 %34, 2
  br i1 %cmp26, label %if.then.27, label %if.end.78

if.then.27:                                       ; preds = %for.end
  %35 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke, align 8
  %call28 = call %struct._GArray* @gimp_stroke_get_draw_lines(%struct._GimpStroke* %35)
  store %struct._GArray* %call28, %struct._GArray** %coords, align 8
  %36 = load %struct._GArray*, %struct._GArray** %coords, align 8
  %tobool29 = icmp ne %struct._GArray* %36, null
  br i1 %tobool29, label %if.then.30, label %if.end.58

if.then.30:                                       ; preds = %if.then.27
  %37 = load %struct._GArray*, %struct._GArray** %coords, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %37, i32 0, i32 1
  %38 = load i32, i32* %len, align 4
  %rem = urem i32 %38, 2
  %cmp31 = icmp eq i32 %rem, 0
  br i1 %cmp31, label %if.then.32, label %if.end.56

if.then.32:                                       ; preds = %if.then.30
  store i32 0, i32* %i, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.53, %if.then.32
  %39 = load i32, i32* %i, align 4
  %40 = load %struct._GArray*, %struct._GArray** %coords, align 8
  %len34 = getelementptr inbounds %struct._GArray, %struct._GArray* %40, i32 0, i32 1
  %41 = load i32, i32* %len34, align 4
  %cmp35 = icmp ult i32 %39, %41
  br i1 %cmp35, label %for.body.36, label %for.end.55

for.body.36:                                      ; preds = %for.cond.33
  %42 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %43 = load i32, i32* %i, align 4
  %idxprom = sext i32 %43 to i64
  %44 = load %struct._GArray*, %struct._GArray** %coords, align 8
  %data37 = getelementptr inbounds %struct._GArray, %struct._GArray* %44, i32 0, i32 0
  %45 = load i8*, i8** %data37, align 8
  %46 = bitcast i8* %45 to %struct._GimpCoords*
  %arrayidx = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %46, i64 %idxprom
  %x38 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx, i32 0, i32 0
  %47 = load double, double* %x38, align 8
  %48 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %48 to i64
  %49 = load %struct._GArray*, %struct._GArray** %coords, align 8
  %data40 = getelementptr inbounds %struct._GArray, %struct._GArray* %49, i32 0, i32 0
  %50 = load i8*, i8** %data40, align 8
  %51 = bitcast i8* %50 to %struct._GimpCoords*
  %arrayidx41 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %51, i64 %idxprom39
  %y42 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx41, i32 0, i32 1
  %52 = load double, double* %y42, align 8
  %53 = load i32, i32* %i, align 4
  %add = add nsw i32 %53, 1
  %idxprom43 = sext i32 %add to i64
  %54 = load %struct._GArray*, %struct._GArray** %coords, align 8
  %data44 = getelementptr inbounds %struct._GArray, %struct._GArray* %54, i32 0, i32 0
  %55 = load i8*, i8** %data44, align 8
  %56 = bitcast i8* %55 to %struct._GimpCoords*
  %arrayidx45 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %56, i64 %idxprom43
  %x46 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx45, i32 0, i32 0
  %57 = load double, double* %x46, align 8
  %58 = load i32, i32* %i, align 4
  %add47 = add nsw i32 %58, 1
  %idxprom48 = sext i32 %add47 to i64
  %59 = load %struct._GArray*, %struct._GArray** %coords, align 8
  %data49 = getelementptr inbounds %struct._GArray, %struct._GArray* %59, i32 0, i32 0
  %60 = load i8*, i8** %data49, align 8
  %61 = bitcast i8* %60 to %struct._GimpCoords*
  %arrayidx50 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %61, i64 %idxprom48
  %y51 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx50, i32 0, i32 1
  %62 = load double, double* %y51, align 8
  %call52 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_line(%struct._GimpDrawTool* %42, double %47, double %52, double %57, double %62)
  store %struct._GimpCanvasItem* %call52, %struct._GimpCanvasItem** %item, align 8
  %63 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  call void @gimp_canvas_item_set_highlight(%struct._GimpCanvasItem* %63, i32 1)
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.body.36
  %64 = load i32, i32* %i, align 4
  %add54 = add nsw i32 %64, 2
  store i32 %add54, i32* %i, align 4
  br label %for.cond.33

for.end.55:                                       ; preds = %for.cond.33
  br label %if.end.56

if.end.56:                                        ; preds = %for.end.55, %if.then.30
  %65 = load %struct._GArray*, %struct._GArray** %coords, align 8
  %call57 = call i8* @g_array_free(%struct._GArray* %65, i32 1)
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.56, %if.then.27
  %66 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke, align 8
  %call59 = call %struct._GList* @gimp_stroke_get_draw_controls(%struct._GimpStroke* %66)
  store %struct._GList* %call59, %struct._GList** %draw_anchors, align 8
  %67 = load %struct._GList*, %struct._GList** %draw_anchors, align 8
  store %struct._GList* %67, %struct._GList** %list, align 8
  br label %for.cond.60

for.cond.60:                                      ; preds = %cond.end.75, %if.end.58
  %68 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool61 = icmp ne %struct._GList* %68, null
  br i1 %tobool61, label %for.body.62, label %for.end.77

for.body.62:                                      ; preds = %for.cond.60
  %69 = load %struct._GList*, %struct._GList** %list, align 8
  %data64 = getelementptr inbounds %struct._GList, %struct._GList* %69, i32 0, i32 0
  %70 = load i8*, i8** %data64, align 8
  %71 = bitcast i8* %70 to %struct._GimpAnchor*
  store %struct._GimpAnchor* %71, %struct._GimpAnchor** %cur_anchor63, align 8
  %72 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %73 = load %struct._GimpAnchor*, %struct._GimpAnchor** %cur_anchor63, align 8
  %position65 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %73, i32 0, i32 0
  %x66 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position65, i32 0, i32 0
  %74 = load double, double* %x66, align 8
  %75 = load %struct._GimpAnchor*, %struct._GimpAnchor** %cur_anchor63, align 8
  %position67 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %75, i32 0, i32 0
  %y68 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position67, i32 0, i32 1
  %76 = load double, double* %y68, align 8
  %call69 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %72, i32 0, double %74, double %76, i32 10, i32 10, i32 0)
  br label %for.inc.70

for.inc.70:                                       ; preds = %for.body.62
  %77 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool71 = icmp ne %struct._GList* %77, null
  br i1 %tobool71, label %cond.true.72, label %cond.false.74

cond.true.72:                                     ; preds = %for.inc.70
  %78 = load %struct._GList*, %struct._GList** %list, align 8
  %next73 = getelementptr inbounds %struct._GList, %struct._GList* %78, i32 0, i32 1
  %79 = load %struct._GList*, %struct._GList** %next73, align 8
  br label %cond.end.75

cond.false.74:                                    ; preds = %for.inc.70
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.false.74, %cond.true.72
  %cond76 = phi %struct._GList* [ %79, %cond.true.72 ], [ null, %cond.false.74 ]
  store %struct._GList* %cond76, %struct._GList** %list, align 8
  br label %for.cond.60

for.end.77:                                       ; preds = %for.cond.60
  %80 = load %struct._GList*, %struct._GList** %draw_anchors, align 8
  call void @g_list_free(%struct._GList* %80)
  br label %if.end.78

if.end.78:                                        ; preds = %for.end.77, %for.end
  br label %for.inc.79

for.inc.79:                                       ; preds = %if.end.78
  %81 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %82 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke, align 8
  %call80 = call %struct._GimpStroke* @gimp_vectors_stroke_get_next(%struct._GimpVectors* %81, %struct._GimpStroke* %82)
  store %struct._GimpStroke* %call80, %struct._GimpStroke** %cur_stroke, align 8
  br label %for.cond

for.end.81:                                       ; preds = %if.then, %for.cond
  ret void
}

declare void @gimp_tool_control_activate(%struct._GimpToolControl*) #1

declare i32 @gimp_draw_tool_on_vectors(%struct._GimpDrawTool*, %struct._GimpDisplay*, %struct._GimpCoords*, i32, i32, %struct._GimpCoords*, double*, %struct._GimpAnchor**, %struct._GimpAnchor**, %struct._GimpStroke**, %struct._GimpVectors**) #1

declare %struct._GimpVectors* @gimp_image_set_active_vectors(%struct._GimpImage*, %struct._GimpVectors*) #1

declare %struct._GimpVectors* @gimp_vectors_new(%struct._GimpImage*, i8*) #1

declare i32 @gimp_image_add_vectors(%struct._GimpImage*, %struct._GimpVectors*, %struct._GimpVectors*, i32, i32) #1

declare void @gimp_image_flush(%struct._GimpImage*) #1

declare void @gimp_vectors_freeze(%struct._GimpVectors*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_vector_tool_check_writable(%struct._GimpVectorTool* %vector_tool) #3 {
entry:
  %retval = alloca i32, align 4
  %vector_tool.addr = alloca %struct._GimpVectorTool*, align 8
  store %struct._GimpVectorTool* %vector_tool, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %0 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %vectors = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %0, i32 0, i32 14
  %1 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %2 = bitcast %struct._GimpVectors* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItem*
  %call2 = call i32 @gimp_item_is_content_locked(%struct._GimpItem* %3)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %5 = bitcast %struct._GimpVectorTool* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_tool_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpTool*
  %7 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %8 = bitcast %struct._GimpVectorTool* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_tool_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpTool*
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %9, i32 0, i32 4
  %10 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i32 0, i32 0)) #6
  call void @gimp_tool_message_literal(%struct._GimpTool* %6, %struct._GimpDisplay* %10, i8* %call7)
  %11 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %function = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %11, i32 0, i32 1
  store i32 15, i32* %function, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal void @gimp_vector_tool_undo_push(%struct._GimpVectorTool* %vector_tool, i8* %desc) #3 {
entry:
  %vector_tool.addr = alloca %struct._GimpVectorTool*, align 8
  %desc.addr = alloca i8*, align 8
  store %struct._GimpVectorTool* %vector_tool, %struct._GimpVectorTool** %vector_tool.addr, align 8
  store i8* %desc, i8** %desc.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %vectors = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %0, i32 0, i32 14
  %1 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %cmp = icmp ne %struct._GimpVectors* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_vector_tool_undo_push, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %have_undo = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %2, i32 0, i32 8
  %3 = load i32, i32* %have_undo, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %do.end
  br label %return

if.end.2:                                         ; preds = %do.end
  %4 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %vectors3 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %4, i32 0, i32 14
  %5 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors3, align 8
  %6 = bitcast %struct._GimpVectors* %5 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpItem*
  %call5 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %7)
  %8 = load i8*, i8** %desc.addr, align 8
  %9 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %vectors6 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %9, i32 0, i32 14
  %10 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors6, align 8
  %call7 = call %struct._GimpUndo* @gimp_image_undo_push_vectors_mod(%struct._GimpImage* %call5, i8* %8, %struct._GimpVectors* %10)
  %11 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %have_undo8 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %11, i32 0, i32 8
  store i32 1, i32* %have_undo8, align 4
  br label %return

return:                                           ; preds = %if.end.2, %if.then.1, %if.else
  ret void
}

declare %struct._GimpStroke* @gimp_bezier_stroke_new() #1

declare void @gimp_vectors_stroke_add(%struct._GimpVectors*, %struct._GimpStroke*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

declare %struct._GimpAnchor* @gimp_bezier_stroke_extend(%struct._GimpStroke*, %struct._GimpCoords*, %struct._GimpAnchor*, i32) #1

declare %struct._GimpAnchor* @gimp_stroke_anchor_insert(%struct._GimpStroke*, %struct._GimpAnchor*, double) #1

declare void @gimp_stroke_anchor_convert(%struct._GimpStroke*, %struct._GimpAnchor*, i32) #1

declare void @gimp_vectors_anchor_select(%struct._GimpVectors*, %struct._GimpStroke*, %struct._GimpAnchor*, i32, i32) #1

declare i32 @gimp_draw_tool_on_vectors_handle(%struct._GimpDrawTool*, %struct._GimpDisplay*, %struct._GimpVectors*, %struct._GimpCoords*, i32, i32, i32, i32, %struct._GimpAnchor**, %struct._GimpStroke**) #1

declare i32 @gimp_stroke_connect_stroke(%struct._GimpStroke*, %struct._GimpAnchor*, %struct._GimpStroke*, %struct._GimpAnchor*) #1

declare i32 @gimp_stroke_is_empty(%struct._GimpStroke*) #1

declare void @gimp_vectors_stroke_remove(%struct._GimpVectors*, %struct._GimpStroke*) #1

declare void @gimp_stroke_anchor_delete(%struct._GimpStroke*, %struct._GimpAnchor*) #1

declare %struct._GimpStroke* @gimp_stroke_open(%struct._GimpStroke*, %struct._GimpAnchor*) #1

declare void @gimp_vectors_thaw(%struct._GimpVectors*) #1

declare i32 @gimp_item_is_content_locked(%struct._GimpItem*) #1

declare void @gimp_tool_message_literal(%struct._GimpTool*, %struct._GimpDisplay*, i8*) #1

declare %struct._GimpUndo* @gimp_image_undo_push_vectors_mod(%struct._GimpImage*, i8*, %struct._GimpVectors*) #1

declare %struct._GimpUndo* @gimp_undo_stack_pop_undo(%struct._GimpUndoStack*, i32, %struct._GimpUndoAccumulator*) #1

declare %struct._GimpUndoStack* @gimp_image_get_undo_stack(%struct._GimpImage*) #1

declare void @gimp_image_undo_event(%struct._GimpImage*, i32, %struct._GimpUndo*) #1

declare void @gimp_undo_free(%struct._GimpUndo*, i32) #1

declare void @gimp_tool_control_halt(%struct._GimpToolControl*) #1

declare void @gimp_stroke_anchor_move_absolute(%struct._GimpStroke*, %struct._GimpAnchor*, %struct._GimpCoords*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_vector_tool_move_selected_anchors(%struct._GimpVectorTool* %vector_tool, double %x, double %y) #3 {
entry:
  %vector_tool.addr = alloca %struct._GimpVectorTool*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %cur_anchor = alloca %struct._GimpAnchor*, align 8
  %cur_stroke = alloca %struct._GimpStroke*, align 8
  %anchors = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %offset = alloca %struct._GimpCoords, align 8
  store %struct._GimpVectorTool* %vector_tool, %struct._GimpVectorTool** %vector_tool.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store %struct._GimpStroke* null, %struct._GimpStroke** %cur_stroke, align 8
  %0 = bitcast %struct._GimpCoords* %offset to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 64, i32 8, i1 false)
  %1 = load double, double* %x.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %offset, i32 0, i32 0
  store double %1, double* %x1, align 8
  %2 = load double, double* %y.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %offset, i32 0, i32 1
  store double %2, double* %y2, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %3 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %vectors = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %3, i32 0, i32 14
  %4 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %5 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke, align 8
  %call = call %struct._GimpStroke* @gimp_vectors_stroke_get_next(%struct._GimpVectors* %4, %struct._GimpStroke* %5)
  store %struct._GimpStroke* %call, %struct._GimpStroke** %cur_stroke, align 8
  %tobool = icmp ne %struct._GimpStroke* %call, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke, align 8
  %call3 = call %struct._GList* @gimp_stroke_get_draw_anchors(%struct._GimpStroke* %6)
  store %struct._GList* %call3, %struct._GList** %anchors, align 8
  %7 = load %struct._GList*, %struct._GList** %anchors, align 8
  store %struct._GList* %7, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %while.body
  %8 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool4 = icmp ne %struct._GList* %8, null
  br i1 %tobool4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %9, i32 0, i32 0
  %10 = load i8*, i8** %data, align 8
  %11 = bitcast i8* %10 to %struct._GimpAnchor*
  store %struct._GimpAnchor* %11, %struct._GimpAnchor** %cur_anchor, align 8
  %12 = load %struct._GimpAnchor*, %struct._GimpAnchor** %cur_anchor, align 8
  %selected = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %12, i32 0, i32 2
  %13 = load i32, i32* %selected, align 4
  %tobool5 = icmp ne i32 %13, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %14 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke, align 8
  %15 = load %struct._GimpAnchor*, %struct._GimpAnchor** %cur_anchor, align 8
  call void @gimp_stroke_anchor_move_relative(%struct._GimpStroke* %14, %struct._GimpAnchor* %15, %struct._GimpCoords* %offset, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool6 = icmp ne %struct._GList* %16, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 1
  %18 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %18, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct._GList*, %struct._GList** %anchors, align 8
  call void @g_list_free(%struct._GList* %19)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare void @gimp_stroke_point_move_absolute(%struct._GimpStroke*, %struct._GimpAnchor*, double, %struct._GimpCoords*, i32) #1

declare void @gimp_stroke_translate(%struct._GimpStroke*, double, double) #1

declare void @gimp_item_translate(%struct._GimpItem*, i32, i32, i32) #1

declare %struct._GimpStroke* @gimp_vectors_stroke_get_next(%struct._GimpVectors*, %struct._GimpStroke*) #1

declare %struct._GList* @gimp_stroke_get_draw_anchors(%struct._GimpStroke*) #1

declare void @gimp_stroke_anchor_move_relative(%struct._GimpStroke*, %struct._GimpAnchor*, %struct._GimpCoords*, i32) #1

declare void @g_list_free(%struct._GList*) #1

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

declare i32 @gimp_get_toggle_behavior_mask() #1

; Function Attrs: nounwind uwtable
define internal void @gimp_vector_tool_delete_selected_anchors(%struct._GimpVectorTool* %vector_tool) #3 {
entry:
  %vector_tool.addr = alloca %struct._GimpVectorTool*, align 8
  %cur_anchor = alloca %struct._GimpAnchor*, align 8
  %cur_stroke = alloca %struct._GimpStroke*, align 8
  %anchors = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %have_undo = alloca i32, align 4
  store %struct._GimpVectorTool* %vector_tool, %struct._GimpVectorTool** %vector_tool.addr, align 8
  store %struct._GimpStroke* null, %struct._GimpStroke** %cur_stroke, align 8
  store i32 0, i32* %have_undo, align 4
  %0 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %1 = bitcast %struct._GimpVectorTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_draw_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %2)
  %3 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %vectors = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %3, i32 0, i32 14
  %4 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_vectors_freeze(%struct._GimpVectors* %4)
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %5 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %vectors2 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %5, i32 0, i32 14
  %6 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors2, align 8
  %7 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke, align 8
  %call3 = call %struct._GimpStroke* @gimp_vectors_stroke_get_next(%struct._GimpVectors* %6, %struct._GimpStroke* %7)
  store %struct._GimpStroke* %call3, %struct._GimpStroke** %cur_stroke, align 8
  %tobool = icmp ne %struct._GimpStroke* %call3, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke, align 8
  %call4 = call %struct._GList* @gimp_stroke_get_draw_anchors(%struct._GimpStroke* %8)
  store %struct._GList* %call4, %struct._GList** %anchors, align 8
  %9 = load %struct._GList*, %struct._GList** %anchors, align 8
  store %struct._GList* %9, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %while.body
  %10 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool5 = icmp ne %struct._GList* %10, null
  br i1 %tobool5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 0
  %12 = load i8*, i8** %data, align 8
  %13 = bitcast i8* %12 to %struct._GimpAnchor*
  store %struct._GimpAnchor* %13, %struct._GimpAnchor** %cur_anchor, align 8
  %14 = load %struct._GimpAnchor*, %struct._GimpAnchor** %cur_anchor, align 8
  %selected = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %14, i32 0, i32 2
  %15 = load i32, i32* %selected, align 4
  %tobool6 = icmp ne i32 %15, 0
  br i1 %tobool6, label %if.then, label %if.end.15

if.then:                                          ; preds = %for.body
  %16 = load i32, i32* %have_undo, align 4
  %tobool7 = icmp ne i32 %16, 0
  br i1 %tobool7, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %if.then
  %17 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0)) #6
  call void @gimp_vector_tool_undo_push(%struct._GimpVectorTool* %17, i8* %call9)
  store i32 1, i32* %have_undo, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %18 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke, align 8
  %19 = load %struct._GimpAnchor*, %struct._GimpAnchor** %cur_anchor, align 8
  call void @gimp_stroke_anchor_delete(%struct._GimpStroke* %18, %struct._GimpAnchor* %19)
  %20 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke, align 8
  %call10 = call i32 @gimp_stroke_is_empty(%struct._GimpStroke* %20)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end
  %21 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %vectors13 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %21, i32 0, i32 14
  %22 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors13, align 8
  %23 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke, align 8
  call void @gimp_vectors_stroke_remove(%struct._GimpVectors* %22, %struct._GimpStroke* %23)
  store %struct._GimpStroke* null, %struct._GimpStroke** %cur_stroke, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %24 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool16 = icmp ne %struct._GList* %24, null
  br i1 %tobool16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %25 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %25, i32 0, i32 1
  %26 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %26, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load %struct._GList*, %struct._GList** %anchors, align 8
  call void @g_list_free(%struct._GList* %27)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %28 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %vectors17 = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %28, i32 0, i32 14
  %29 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors17, align 8
  call void @gimp_vectors_thaw(%struct._GimpVectors* %29)
  %30 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool.addr, align 8
  %31 = bitcast %struct._GimpVectorTool* %30 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_draw_tool_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call18)
  %32 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %32)
  ret void
}

declare i32 @gimp_draw_tool_on_vectors_curve(%struct._GimpDrawTool*, %struct._GimpDisplay*, %struct._GimpVectors*, %struct._GimpCoords*, i32, i32, %struct._GimpCoords*, double*, %struct._GimpAnchor**, %struct._GimpAnchor**, %struct._GimpStroke**) #1

declare i32 @gimp_stroke_point_is_movable(%struct._GimpStroke*, %struct._GimpAnchor*, double) #1

declare i32 @gimp_stroke_is_extendable(%struct._GimpStroke*, %struct._GimpAnchor*) #1

declare i32 @gimp_stroke_anchor_is_insertable(%struct._GimpStroke*, %struct._GimpAnchor*, double) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_vector_tool_status_update(%struct._GimpTool* %tool, %struct._GimpDisplay* %display, i32 %state, i32 %proximity) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %state.addr = alloca i32, align 4
  %proximity.addr = alloca i32, align 4
  %vector_tool = alloca %struct._GimpVectorTool*, align 8
  %options = alloca %struct._GimpVectorOptions*, align 8
  %status = alloca i8*, align 8
  %free_status = alloca i32, align 4
  %toggle_mask = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store i32 %proximity, i32* %proximity.addr, align 4
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_vector_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpVectorTool*
  store %struct._GimpVectorTool* %2, %struct._GimpVectorTool** %vector_tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_vector_options_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpVectorOptions*
  store %struct._GimpVectorOptions* %7, %struct._GimpVectorOptions** %options, align 8
  %8 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %9 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_pop_status(%struct._GimpTool* %8, %struct._GimpDisplay* %9)
  %10 = load i32, i32* %proximity.addr, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end.84

if.then:                                          ; preds = %entry
  store i8* null, i8** %status, align 8
  store i32 0, i32* %free_status, align 4
  %11 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %function = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %11, i32 0, i32 1
  %12 = load i32, i32* %function, align 4
  switch i32 %12, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.8
    i32 2, label %sw.bb.10
    i32 3, label %sw.bb.12
    i32 4, label %sw.bb.15
    i32 5, label %sw.bb.23
    i32 6, label %sw.bb.25
    i32 7, label %sw.bb.38
    i32 8, label %sw.bb.57
    i32 9, label %sw.bb.62
    i32 10, label %sw.bb.64
    i32 11, label %sw.bb.69
    i32 12, label %sw.bb.71
    i32 13, label %sw.bb.73
    i32 14, label %sw.bb.75
    i32 15, label %sw.bb.77
  ]

sw.bb:                                            ; preds = %if.then
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.36, i32 0, i32 0)) #6
  store i8* %call7, i8** %status, align 8
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.then
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.37, i32 0, i32 0)) #6
  store i8* %call9, i8** %status, align 8
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.then
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.38, i32 0, i32 0)) #6
  store i8* %call11, i8** %status, align 8
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.then
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.39, i32 0, i32 0)) #6
  %13 = load i32, i32* %state.addr, align 4
  %neg = xor i32 %13, -1
  %and = and i32 1, %neg
  %call14 = call i8* @gimp_suggest_modifiers(i8* %call13, i32 %and, i8* null, i8* null, i8* null)
  store i8* %call14, i8** %status, align 8
  store i32 1, i32* %free_status, align 4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %if.then
  %14 = load %struct._GimpVectorOptions*, %struct._GimpVectorOptions** %options, align 8
  %edit_mode = getelementptr inbounds %struct._GimpVectorOptions, %struct._GimpVectorOptions* %14, i32 0, i32 1
  %15 = load i32, i32* %edit_mode, align 4
  %cmp = icmp ne i32 %15, 1
  br i1 %cmp, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %sw.bb.15
  %call17 = call i32 @gimp_get_toggle_behavior_mask()
  store i32 %call17, i32* %toggle_mask, align 4
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.40, i32 0, i32 0)) #6
  %16 = load i32, i32* %toggle_mask, align 4
  %17 = load i32, i32* %state.addr, align 4
  %neg19 = xor i32 %17, -1
  %and20 = and i32 %16, %neg19
  %call21 = call i8* @gimp_suggest_modifiers(i8* %call18, i32 %and20, i8* null, i8* null, i8* null)
  store i8* %call21, i8** %status, align 8
  store i32 1, i32* %free_status, align 4
  br label %if.end

if.else:                                          ; preds = %sw.bb.15
  %call22 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.40, i32 0, i32 0)) #6
  store i8* %call22, i8** %status, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.16
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.then
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.41, i32 0, i32 0)) #6
  store i8* %call24, i8** %status, align 8
  br label %sw.epilog

sw.bb.25:                                         ; preds = %if.then
  %18 = load %struct._GimpVectorTool*, %struct._GimpVectorTool** %vector_tool, align 8
  %restriction = getelementptr inbounds %struct._GimpVectorTool, %struct._GimpVectorTool* %18, i32 0, i32 2
  %19 = load i32, i32* %restriction, align 4
  %cmp26 = icmp ne i32 %19, 3
  br i1 %cmp26, label %if.then.27, label %if.else.32

if.then.27:                                       ; preds = %sw.bb.25
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.42, i32 0, i32 0)) #6
  %20 = load i32, i32* %state.addr, align 4
  %neg29 = xor i32 %20, -1
  %and30 = and i32 1, %neg29
  %call31 = call i8* @gimp_suggest_modifiers(i8* %call28, i32 %and30, i8* null, i8* null, i8* null)
  store i8* %call31, i8** %status, align 8
  br label %if.end.37

if.else.32:                                       ; preds = %sw.bb.25
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.43, i32 0, i32 0)) #6
  %21 = load i32, i32* %state.addr, align 4
  %neg34 = xor i32 %21, -1
  %and35 = and i32 1, %neg34
  %call36 = call i8* @gimp_suggest_modifiers(i8* %call33, i32 %and35, i8* null, i8* null, i8* null)
  store i8* %call36, i8** %status, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.32, %if.then.27
  store i32 1, i32* %free_status, align 4
  br label %sw.epilog

sw.bb.38:                                         ; preds = %if.then
  %22 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %23 = bitcast %struct._GimpTool* %22 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_tool_get_type() #7
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call39)
  %24 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpTool*
  %call41 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %24)
  %25 = bitcast %struct._GimpToolOptions* %call41 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_vector_options_get_type() #7
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call42)
  %26 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpVectorOptions*
  %polygonal = getelementptr inbounds %struct._GimpVectorOptions, %struct._GimpVectorOptions* %26, i32 0, i32 2
  %27 = load i32, i32* %polygonal, align 4
  %tobool44 = icmp ne i32 %27, 0
  br i1 %tobool44, label %if.then.45, label %if.else.50

if.then.45:                                       ; preds = %sw.bb.38
  %call46 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.41, i32 0, i32 0)) #6
  %28 = load i32, i32* %state.addr, align 4
  %neg47 = xor i32 %28, -1
  %and48 = and i32 1, %neg47
  %call49 = call i8* @gimp_suggest_modifiers(i8* %call46, i32 %and48, i8* null, i8* null, i8* null)
  store i8* %call49, i8** %status, align 8
  br label %if.end.56

if.else.50:                                       ; preds = %sw.bb.38
  %call51 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.44, i32 0, i32 0)) #6
  %29 = load i32, i32* %state.addr, align 4
  %neg52 = xor i32 %29, -1
  %and53 = and i32 1, %neg52
  %call54 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i32 0, i32 0)) #6
  %call55 = call i8* @gimp_suggest_modifiers(i8* %call51, i32 %and53, i8* %call54, i8* null, i8* null)
  store i8* %call55, i8** %status, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.50, %if.then.45
  store i32 1, i32* %free_status, align 4
  br label %sw.epilog

sw.bb.57:                                         ; preds = %if.then
  %call58 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.46, i32 0, i32 0)) #6
  %30 = load i32, i32* %state.addr, align 4
  %neg59 = xor i32 %30, -1
  %and60 = and i32 1, %neg59
  %call61 = call i8* @gimp_suggest_modifiers(i8* %call58, i32 %and60, i8* null, i8* null, i8* null)
  store i8* %call61, i8** %status, align 8
  store i32 1, i32* %free_status, align 4
  br label %sw.epilog

sw.bb.62:                                         ; preds = %if.then
  %call63 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.47, i32 0, i32 0)) #6
  store i8* %call63, i8** %status, align 8
  br label %sw.epilog

sw.bb.64:                                         ; preds = %if.then
  %call65 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.48, i32 0, i32 0)) #6
  %31 = load i32, i32* %state.addr, align 4
  %neg66 = xor i32 %31, -1
  %and67 = and i32 1, %neg66
  %call68 = call i8* @gimp_suggest_modifiers(i8* %call65, i32 %and67, i8* null, i8* null, i8* null)
  store i8* %call68, i8** %status, align 8
  store i32 1, i32* %free_status, align 4
  br label %sw.epilog

sw.bb.69:                                         ; preds = %if.then
  %call70 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.49, i32 0, i32 0)) #6
  store i8* %call70, i8** %status, align 8
  br label %sw.epilog

sw.bb.71:                                         ; preds = %if.then
  %call72 = call i8* @gettext(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.50, i32 0, i32 0)) #6
  store i8* %call72, i8** %status, align 8
  br label %sw.epilog

sw.bb.73:                                         ; preds = %if.then
  %call74 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.51, i32 0, i32 0)) #6
  store i8* %call74, i8** %status, align 8
  br label %sw.epilog

sw.bb.75:                                         ; preds = %if.then
  %call76 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.52, i32 0, i32 0)) #6
  store i8* %call76, i8** %status, align 8
  br label %sw.epilog

sw.bb.77:                                         ; preds = %if.then
  store i8* null, i8** %status, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb.77, %sw.bb.75, %sw.bb.73, %sw.bb.71, %sw.bb.69, %sw.bb.64, %sw.bb.62, %sw.bb.57, %if.end.56, %if.end.37, %sw.bb.23, %if.end, %sw.bb.12, %sw.bb.10, %sw.bb.8, %sw.bb
  %32 = load i8*, i8** %status, align 8
  %tobool78 = icmp ne i8* %32, null
  br i1 %tobool78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %sw.epilog
  %33 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %34 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %35 = load i8*, i8** %status, align 8
  call void (%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) @gimp_tool_push_status(%struct._GimpTool* %33, %struct._GimpDisplay* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i32 0, i32 0), i8* %35)
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.79, %sw.epilog
  %36 = load i32, i32* %free_status, align 4
  %tobool81 = icmp ne i32 %36, 0
  br i1 %tobool81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.end.80
  %37 = load i8*, i8** %status, align 8
  call void @g_free(i8* %37)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.82, %if.end.80
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %entry
  ret void
}

declare void @gimp_tool_pop_status(%struct._GimpTool*, %struct._GimpDisplay*) #1

declare i8* @gimp_suggest_modifiers(i8*, i32, i8*, i8*, i8*) #1

declare void @gimp_tool_push_status(%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) #1

declare void @g_free(i8*) #1

declare void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_cursor_modifier(%struct._GimpToolControl*, i32) #1

declare %struct.cairo_path* @gimp_vectors_get_bezier(%struct._GimpVectors*) #1

declare i32 @gimp_item_get_visible(%struct._GimpItem*) #1

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_path(%struct._GimpDrawTool*, %struct.cairo_path*, double, double) #1

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool*, i32, double, double, i32, i32, i32) #1

declare %struct._GArray* @gimp_stroke_get_draw_lines(%struct._GimpStroke*) #1

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_line(%struct._GimpDrawTool*, double, double, double, double) #1

declare void @gimp_canvas_item_set_highlight(%struct._GimpCanvasItem*, i32) #1

declare i8* @g_array_free(%struct._GArray*, i32) #1

declare %struct._GList* @gimp_stroke_get_draw_controls(%struct._GimpStroke*) #1

declare void @gimp_tool_control_set_handle_empty_image(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_motion_mode(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_precision(%struct._GimpToolControl*, i32) #1

declare %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage*) #1

declare %struct._GArray* @gimp_stroke_interpolate(%struct._GimpStroke*, double, i32*) #1

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_strokes(%struct._GimpDrawTool*, %struct._GimpCoords*, i32, i32) #1

declare void @gimp_item_to_selection(%struct._GimpItem*, i32, i32, i32, double, double) #1

declare i32 @gimp_modifiers_to_channel_op(i32) #1

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #1

declare void @gimp_tool_message(%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) #1

declare %struct._GtkWidget* @stroke_dialog_new(%struct._GimpItem*, %struct._GimpContext*, i8*, i8*, i8*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

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
