; ModuleID = './app/tools/gimprectangletool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInfo = type { i16, void (i8*)*, void (i8*)*, void (i8*, i8*)*, void (i8*, i8*)*, i8*, i16, i16, void (%struct._GTypeInstance*, i8*)*, %struct._GTypeValueTable* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GTypeValueTable = type { void (%struct._GValue*)*, void (%struct._GValue*)*, void (%struct._GValue*, %struct._GValue*)*, i8* (%struct._GValue*)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%union._GTypeCValue = type opaque
%struct._GimpRectangleToolInterface = type { %struct._GTypeInterface, i32 (%struct._GimpRectangleTool*, i32, i32, i32, i32)*, void (%struct._GimpRectangleTool*)*, i32 (%struct._GimpRectangleTool*)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpRectangleTool = type opaque
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GData = type opaque
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GimpRectangleToolPrivate = type { i32, double, double, double, double, i32, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, double, double, i32, i32, i32, i32, i32, double, double, double, double, double, double, i32 }
%struct._GimpDrawTool = type { %struct._GimpTool, %struct._GimpDisplay*, i32, i32, i64, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GList* }
%struct._GimpTool = type { %struct._GimpObject, %struct._GimpToolInfo*, i32, %struct._GimpToolControl*, %struct._GimpDisplay*, %struct._GimpDrawable*, %struct._GimpDisplay*, i32, i32, i32, i32, i32, %struct._GimpCoords, i32, %struct._GList*, %struct._GimpCanvasItem*, %struct._GimpDisplay* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
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
%struct._GimpToolOptions = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpToolControl = type { %struct._GimpObject, i32, i32, i32, %struct._GSList*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpDisplayConfig = type opaque
%struct._GimpCanvasItem = type { %struct._GimpObject }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpRectangleOptions = type opaque
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
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpUIManager = type opaque
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
%struct._GimpLayer = type opaque
%struct._GimpRectangleOptionsPrivate = type { i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, double, double, double, double, double, double, i32, double, double, double, double, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkListStore*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkListStore*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GimpSizeEntry = type { %struct._GtkTable, %struct._GSList*, i32, %struct._GtkWidget*, i32, i32, i32, i32, i32 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GdkEventKey = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32, i8*, i16, i8, i8 }
%struct._GimpCanvasGroup = type { %struct._GimpCanvasItem }

@gimp_rectangle_tool_interface_get_type.iface_type = internal global i64 0, align 8
@gimp_rectangle_tool_interface_get_type.iface_info = internal constant %struct._GTypeInfo { i16 40, void (i8*)* bitcast (void (%struct._GimpRectangleToolInterface*)* @gimp_rectangle_tool_iface_base_init to void (i8*)*), void (i8*)* null, void (i8*, i8*)* null, void (i8*, i8*)* null, i8* null, i16 0, i16 0, void (%struct._GTypeInstance*, i8*)* null, %struct._GTypeValueTable* null }, align 8
@.str = private unnamed_addr constant [27 x i8] c"GimpRectangleToolInterface\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"x1\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"y1\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"x2\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"y2\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"constraint\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"precision\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"narrow-mode\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"Gimp-Tools\00", align 1
@__func__.gimp_rectangle_tool_set_constraint = private unnamed_addr constant [35 x i8] c"gimp_rectangle_tool_set_constraint\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"GIMP_IS_RECTANGLE_TOOL (tool)\00", align 1
@__func__.gimp_rectangle_tool_get_constraint = private unnamed_addr constant [35 x i8] c"gimp_rectangle_tool_get_constraint\00", align 1
@__func__.gimp_rectangle_tool_pending_size_set = private unnamed_addr constant [37 x i8] c"gimp_rectangle_tool_pending_size_set\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"GIMP_IS_RECTANGLE_TOOL (rect_tool)\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"width_property != NULL\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"height_property != NULL\00", align 1
@__func__.gimp_rectangle_tool_constraint_size_set = private unnamed_addr constant [40 x i8] c"gimp_rectangle_tool_constraint_size_set\00", align 1
@__func__.gimp_rectangle_tool_rectangle_is_new = private unnamed_addr constant [37 x i8] c"gimp_rectangle_tool_rectangle_is_new\00", align 1
@__func__.gimp_rectangle_tool_point_in_rectangle = private unnamed_addr constant [39 x i8] c"gimp_rectangle_tool_point_in_rectangle\00", align 1
@__func__.gimp_rectangle_tool_frame_item = private unnamed_addr constant [31 x i8] c"gimp_rectangle_tool_frame_item\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"GIMP_IS_ITEM (item)\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"gimp_item_is_attached (item)\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"GIMP_IS_DISPLAY (display)\00", align 1
@.str.16 = private unnamed_addr constant [63 x i8] c"gimp_display_get_image (display) == gimp_item_get_image (item)\00", align 1
@.str.17 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"gimprectangletool.c\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"notify\00", align 1
@gimp_log_flags = external global i32, align 4
@__func__.gimp_rectangle_tool_control = private unnamed_addr constant [28 x i8] c"gimp_rectangle_tool_control\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"action = %s\00", align 1
@__func__.gimp_rectangle_tool_button_press = private unnamed_addr constant [33 x i8] c"gimp_rectangle_tool_button_press\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"coords->x = %f, coords->y = %f\00", align 1
@__func__.gimp_rectangle_tool_button_release = private unnamed_addr constant [35 x i8] c"gimp_rectangle_tool_button_release\00", align 1
@__func__.gimp_rectangle_tool_motion = private unnamed_addr constant [27 x i8] c"gimp_rectangle_tool_motion\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"  (%.2f:1)\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"Rectangle: \00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c" \C3\97 \00", align 1
@__func__.gimp_rectangle_tool_active_modifier_key = private unnamed_addr constant [40 x i8] c"gimp_rectangle_tool_active_modifier_key\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"fixed-rule-active\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"fixed-center\00", align 1
@__func__.gimp_rectangle_tool_key_press = private unnamed_addr constant [30 x i8] c"gimp_rectangle_tool_key_press\00", align 1
@__func__.gimp_rectangle_tool_oper_update = private unnamed_addr constant [32 x i8] c"gimp_rectangle_tool_oper_update\00", align 1
@__func__.gimp_rectangle_tool_cursor_update = private unnamed_addr constant [34 x i8] c"gimp_rectangle_tool_cursor_update\00", align 1
@__func__.gimp_rectangle_tool_draw = private unnamed_addr constant [25 x i8] c"gimp_rectangle_tool_draw\00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"GIMP_IS_RECTANGLE_TOOL (draw_tool)\00", align 1
@.str.29 = private unnamed_addr constant [60 x i8] c"stroke_group == NULL || GIMP_IS_CANVAS_GROUP (stroke_group)\00", align 1
@__func__.gimp_rectangle_tool_get_function = private unnamed_addr constant [33 x i8] c"gimp_rectangle_tool_get_function\00", align 1
@__func__.gimp_rectangle_tool_set_function = private unnamed_addr constant [33 x i8] c"gimp_rectangle_tool_set_function\00", align 1
@gimp_rectangle_tool_iface_base_init.initialized = internal global i32 0, align 4
@.str.30 = private unnamed_addr constant [26 x i8] c"rectangle-change-complete\00", align 1
@gimp_rectangle_tool_signals = internal global [1 x i32] zeroinitializer, align 4
@gimp_rectangle_tool_get_private.private_key = internal global i32 0, align 4
@.str.31 = private unnamed_addr constant [28 x i8] c"gimp-rectangle-tool-private\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"scrolled\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"shrink-merged\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"guide\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"desired-fixed-size-width\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"aspect-numerator\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"highlight\00", align 1
@.str.43 = private unnamed_addr constant [31 x i8] c"Invalid rectangle constraint.\0A\00", align 1
@.str.44 = private unnamed_addr constant [63 x i8] c"function is GIMP_RECTANGLE_TOOL_INACTIVE while mouse is moving\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_rectangle_tool_interface_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_rectangle_tool_interface_get_type.iface_type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_type_register_static(i64 8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0), %struct._GTypeInfo* @gimp_rectangle_tool_interface_get_type.iface_info, i32 0)
  store i64 %call, i64* @gimp_rectangle_tool_interface_get_type.iface_type, align 8
  %1 = load i64, i64* @gimp_rectangle_tool_interface_get_type.iface_type, align 8
  %call1 = call i64 @gimp_draw_tool_get_type() #7
  call void @g_type_interface_add_prerequisite(i64 %1, i64 %call1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* @gimp_rectangle_tool_interface_get_type.iface_type, align 8
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_tool_iface_base_init(%struct._GimpRectangleToolInterface* %iface) #1 {
entry:
  %iface.addr = alloca %struct._GimpRectangleToolInterface*, align 8
  store %struct._GimpRectangleToolInterface* %iface, %struct._GimpRectangleToolInterface** %iface.addr, align 8
  %0 = load i32, i32* @gimp_rectangle_tool_iface_base_init.initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpRectangleToolInterface*, %struct._GimpRectangleToolInterface** %iface.addr, align 8
  %2 = bitcast %struct._GimpRectangleToolInterface* %1 to %struct._GTypeInterface*
  %g_type = getelementptr inbounds %struct._GTypeInterface, %struct._GTypeInterface* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %call = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i32 0, i32 0), i64 %3, i32 1, i32 32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @gimp_rectangle_tool_signals, i32 0, i64 0), align 4
  %4 = load %struct._GimpRectangleToolInterface*, %struct._GimpRectangleToolInterface** %iface.addr, align 8
  %5 = bitcast %struct._GimpRectangleToolInterface* %4 to i8*
  %call1 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null, i32 -262144, i32 262144, i32 0, i32 227)
  call void @g_object_interface_install_property(i8* %5, %struct._GParamSpec* %call1)
  %6 = load %struct._GimpRectangleToolInterface*, %struct._GimpRectangleToolInterface** %iface.addr, align 8
  %7 = bitcast %struct._GimpRectangleToolInterface* %6 to i8*
  %call2 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* null, i32 -262144, i32 262144, i32 0, i32 227)
  call void @g_object_interface_install_property(i8* %7, %struct._GParamSpec* %call2)
  %8 = load %struct._GimpRectangleToolInterface*, %struct._GimpRectangleToolInterface** %iface.addr, align 8
  %9 = bitcast %struct._GimpRectangleToolInterface* %8 to i8*
  %call3 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null, i32 -262144, i32 262144, i32 0, i32 227)
  call void @g_object_interface_install_property(i8* %9, %struct._GParamSpec* %call3)
  %10 = load %struct._GimpRectangleToolInterface*, %struct._GimpRectangleToolInterface** %iface.addr, align 8
  %11 = bitcast %struct._GimpRectangleToolInterface* %10 to i8*
  %call4 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i32 -262144, i32 262144, i32 0, i32 227)
  call void @g_object_interface_install_property(i8* %11, %struct._GParamSpec* %call4)
  %12 = load %struct._GimpRectangleToolInterface*, %struct._GimpRectangleToolInterface** %iface.addr, align 8
  %13 = bitcast %struct._GimpRectangleToolInterface* %12 to i8*
  %call5 = call i64 @gimp_rectangle_constraint_get_type() #7
  %call6 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i64 %call5, i32 0, i32 227)
  call void @g_object_interface_install_property(i8* %13, %struct._GParamSpec* %call6)
  %14 = load %struct._GimpRectangleToolInterface*, %struct._GimpRectangleToolInterface** %iface.addr, align 8
  %15 = bitcast %struct._GimpRectangleToolInterface* %14 to i8*
  %call7 = call i64 @gimp_rectangle_precision_get_type() #7
  %call8 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i64 %call7, i32 0, i32 227)
  call void @g_object_interface_install_property(i8* %15, %struct._GParamSpec* %call8)
  %16 = load %struct._GimpRectangleToolInterface*, %struct._GimpRectangleToolInterface** %iface.addr, align 8
  %17 = bitcast %struct._GimpRectangleToolInterface* %16 to i8*
  %call9 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i32 0, i32 227)
  call void @g_object_interface_install_property(i8* %17, %struct._GParamSpec* %call9)
  %18 = load %struct._GimpRectangleToolInterface*, %struct._GimpRectangleToolInterface** %iface.addr, align 8
  %execute = getelementptr inbounds %struct._GimpRectangleToolInterface, %struct._GimpRectangleToolInterface* %18, i32 0, i32 1
  store i32 (%struct._GimpRectangleTool*, i32, i32, i32, i32)* null, i32 (%struct._GimpRectangleTool*, i32, i32, i32, i32)** %execute, align 8
  %19 = load %struct._GimpRectangleToolInterface*, %struct._GimpRectangleToolInterface** %iface.addr, align 8
  %cancel = getelementptr inbounds %struct._GimpRectangleToolInterface, %struct._GimpRectangleToolInterface* %19, i32 0, i32 2
  store void (%struct._GimpRectangleTool*)* null, void (%struct._GimpRectangleTool*)** %cancel, align 8
  %20 = load %struct._GimpRectangleToolInterface*, %struct._GimpRectangleToolInterface** %iface.addr, align 8
  %rectangle_change_complete = getelementptr inbounds %struct._GimpRectangleToolInterface, %struct._GimpRectangleToolInterface* %20, i32 0, i32 3
  store i32 (%struct._GimpRectangleTool*)* null, i32 (%struct._GimpRectangleTool*)** %rectangle_change_complete, align 8
  store i32 1, i32* @gimp_rectangle_tool_iface_base_init.initialized, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i64 @g_type_register_static(i64, i8*, %struct._GTypeInfo*, i32) #2

declare void @g_type_interface_add_prerequisite(i64, i64) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_draw_tool_get_type() #3

; Function Attrs: nounwind uwtable
define void @gimp_rectangle_tool_init(%struct._GimpRectangleTool* %rect_tool) #1 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_rectangle_tool_install_properties(%struct._GObjectClass* %klass) #1 {
entry:
  %klass.addr = alloca %struct._GObjectClass*, align 8
  store %struct._GObjectClass* %klass, %struct._GObjectClass** %klass.addr, align 8
  %0 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  call void @g_object_class_override_property(%struct._GObjectClass* %0, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  %1 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  call void @g_object_class_override_property(%struct._GObjectClass* %1, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  %2 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  call void @g_object_class_override_property(%struct._GObjectClass* %2, i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  call void @g_object_class_override_property(%struct._GObjectClass* %3, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  call void @g_object_class_override_property(%struct._GObjectClass* %4, i32 5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0))
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  call void @g_object_class_override_property(%struct._GObjectClass* %5, i32 6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0))
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  call void @g_object_class_override_property(%struct._GObjectClass* %6, i32 7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0))
  ret void
}

declare void @g_object_class_override_property(%struct._GObjectClass*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define void @gimp_rectangle_tool_set_constraint(%struct._GimpRectangleTool* %tool, i32 %constraint) #1 {
entry:
  %tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %constraint.addr = alloca i32, align 4
  %private = alloca %struct._GimpRectangleToolPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpRectangleTool* %tool, %struct._GimpRectangleTool** %tool.addr, align 8
  store i32 %constraint, i32* %constraint.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_rectangle_tool_set_constraint, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %tool.addr, align 8
  %14 = bitcast %struct._GimpRectangleTool* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpRectangleTool*
  %call13 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %15)
  store %struct._GimpRectangleToolPrivate* %call13, %struct._GimpRectangleToolPrivate** %private, align 8
  %16 = load i32, i32* %constraint.addr, align 4
  %17 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %constraint14 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %17, i32 0, i32 15
  store i32 %16, i32* %constraint14, align 4
  %18 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %tool.addr, align 8
  %19 = bitcast %struct._GimpRectangleTool* %18 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_draw_tool_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call15)
  %20 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %20)
  %21 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %tool.addr, align 8
  %22 = load i32, i32* %constraint.addr, align 4
  call void @gimp_rectangle_tool_clamp(%struct._GimpRectangleTool* %21, i32* null, i32 %22, i32 0)
  %23 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %tool.addr, align 8
  call void @gimp_rectangle_tool_update_highlight(%struct._GimpRectangleTool* %23)
  %24 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %tool.addr, align 8
  call void @gimp_rectangle_tool_update_handle_sizes(%struct._GimpRectangleTool* %24)
  %25 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %tool.addr, align 8
  call void @gimp_rectangle_tool_rectangle_change_complete(%struct._GimpRectangleTool* %25)
  %26 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %tool.addr, align 8
  %27 = bitcast %struct._GimpRectangleTool* %26 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_draw_tool_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call17)
  %28 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %28)
  %29 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %tool.addr, align 8
  %30 = bitcast %struct._GimpRectangleTool* %29 to %struct._GTypeInstance*
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 80)
  %31 = bitcast %struct._GTypeInstance* %call19 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0))
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %tool) #1 {
entry:
  %tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %private = alloca %struct._GimpRectangleToolPrivate*, align 8
  store %struct._GimpRectangleTool* %tool, %struct._GimpRectangleTool** %tool.addr, align 8
  %0 = load i32, i32* @gimp_rectangle_tool_get_private.private_key, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @g_quark_from_static_string(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i32 0, i32 0))
  store i32 %call, i32* @gimp_rectangle_tool_get_private.private_key, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %tool.addr, align 8
  %2 = bitcast %struct._GimpRectangleTool* %1 to %struct._GTypeInstance*
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 80)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GObject*
  %4 = load i32, i32* @gimp_rectangle_tool_get_private.private_key, align 4
  %call2 = call i8* @g_object_get_qdata(%struct._GObject* %3, i32 %4)
  %5 = bitcast i8* %call2 to %struct._GimpRectangleToolPrivate*
  store %struct._GimpRectangleToolPrivate* %5, %struct._GimpRectangleToolPrivate** %private, align 8
  %6 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %tobool = icmp ne %struct._GimpRectangleToolPrivate* %6, null
  br i1 %tobool, label %if.end.6, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %call4 = call noalias i8* @g_slice_alloc0(i64 208)
  %7 = bitcast i8* %call4 to %struct._GimpRectangleToolPrivate*
  store %struct._GimpRectangleToolPrivate* %7, %struct._GimpRectangleToolPrivate** %private, align 8
  %8 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %tool.addr, align 8
  %9 = bitcast %struct._GimpRectangleTool* %8 to %struct._GTypeInstance*
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 80)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GObject*
  %11 = load i32, i32* @gimp_rectangle_tool_get_private.private_key, align 4
  %12 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %13 = bitcast %struct._GimpRectangleToolPrivate* %12 to i8*
  call void @g_object_set_qdata_full(%struct._GObject* %10, i32 %11, i8* %13, void (i8*)* bitcast (void (%struct._GimpRectangleToolPrivate*)* @gimp_rectangle_tool_private_finalize to void (i8*)*))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %if.end
  %14 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  ret %struct._GimpRectangleToolPrivate* %14
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #2

declare void @gimp_draw_tool_pause(%struct._GimpDrawTool*) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_tool_clamp(%struct._GimpRectangleTool* %rect_tool, i32* %clamped_sides, i32 %constraint, i32 %symmetrically) #1 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %clamped_sides.addr = alloca i32*, align 8
  %constraint.addr = alloca i32, align 4
  %symmetrically.addr = alloca i32, align 4
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  store i32* %clamped_sides, i32** %clamped_sides.addr, align 8
  store i32 %constraint, i32* %constraint.addr, align 4
  store i32 %symmetrically, i32* %symmetrically.addr, align 4
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = load i32*, i32** %clamped_sides.addr, align 8
  %2 = load i32, i32* %constraint.addr, align 4
  %3 = load i32, i32* %symmetrically.addr, align 4
  call void @gimp_rectangle_tool_clamp_width(%struct._GimpRectangleTool* %0, i32* %1, i32 %2, i32 %3)
  %4 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %5 = load i32*, i32** %clamped_sides.addr, align 8
  %6 = load i32, i32* %constraint.addr, align 4
  %7 = load i32, i32* %symmetrically.addr, align 4
  call void @gimp_rectangle_tool_clamp_height(%struct._GimpRectangleTool* %4, i32* %5, i32 %6, i32 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_tool_update_highlight(%struct._GimpRectangleTool* %rect_tool) #1 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %private = alloca %struct._GimpRectangleToolPrivate*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %options = alloca %struct._GimpRectangleOptions*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %highlight = alloca i32, align 4
  %rect = alloca %struct._GdkRectangle, align 4
  %pub_x1 = alloca double, align 8
  %pub_y1 = alloca double, align 8
  %pub_x2 = alloca double, align 8
  %pub_y2 = alloca double, align 8
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_rectangle_options_interface_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpRectangleOptions*
  store %struct._GimpRectangleOptions* %7, %struct._GimpRectangleOptions** %options, align 8
  %8 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %9 = bitcast %struct._GimpRectangleTool* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpRectangleTool*
  %call9 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %10)
  store %struct._GimpRectangleToolPrivate* %call9, %struct._GimpRectangleToolPrivate** %private, align 8
  store i32 0, i32* %highlight, align 4
  %11 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %11, i32 0, i32 4
  %12 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %12, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.19

if.end:                                           ; preds = %entry
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display10 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %13, i32 0, i32 4
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display10, align 8
  %call11 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %14)
  store %struct._GimpDisplayShell* %call11, %struct._GimpDisplayShell** %shell, align 8
  %15 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %options, align 8
  %16 = bitcast %struct._GimpRectangleOptions* %15 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i32* %highlight, i8* null)
  %17 = load i32, i32* %highlight, align 4
  %tobool12 = icmp ne i32 %17, 0
  br i1 %tobool12, label %lor.lhs.false, label %if.then.14

lor.lhs.false:                                    ; preds = %if.end
  %18 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %rect_adjusting = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %18, i32 0, i32 5
  %19 = load i32, i32* %rect_adjusting, align 4
  %tobool13 = icmp ne i32 %19, 0
  br i1 %tobool13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %lor.lhs.false, %if.end
  %20 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_set_highlight(%struct._GimpDisplayShell* %20, %struct._GdkRectangle* null)
  br label %if.end.19

if.else:                                          ; preds = %lor.lhs.false
  %21 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  call void @gimp_rectangle_tool_get_public_rect(%struct._GimpRectangleTool* %21, double* %pub_x1, double* %pub_y1, double* %pub_x2, double* %pub_y2)
  %22 = load double, double* %pub_x1, align 8
  %conv = fptosi double %22 to i32
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  store i32 %conv, i32* %x, align 4
  %23 = load double, double* %pub_y1, align 8
  %conv15 = fptosi double %23 to i32
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  store i32 %conv15, i32* %y, align 4
  %24 = load double, double* %pub_x2, align 8
  %25 = load double, double* %pub_x1, align 8
  %sub = fsub double %24, %25
  %conv16 = fptosi double %sub to i32
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 2
  store i32 %conv16, i32* %width, align 4
  %26 = load double, double* %pub_y2, align 8
  %27 = load double, double* %pub_y1, align 8
  %sub17 = fsub double %26, %27
  %conv18 = fptosi double %sub17 to i32
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 3
  store i32 %conv18, i32* %height, align 4
  %28 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_set_highlight(%struct._GimpDisplayShell* %28, %struct._GdkRectangle* %rect)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then, %if.else, %if.then.14
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_tool_update_handle_sizes(%struct._GimpRectangleTool* %rect_tool) #1 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %private = alloca %struct._GimpRectangleToolPrivate*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %visible_rectangle_width = alloca i32, align 4
  %visible_rectangle_height = alloca i32, align 4
  %rectangle_width = alloca i32, align 4
  %rectangle_height = alloca i32, align 4
  %pub_x1 = alloca double, align 8
  %pub_y1 = alloca double, align 8
  %pub_x2 = alloca double, align 8
  %pub_y2 = alloca double, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %w1 = alloca i32, align 4
  %h1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %w2 = alloca i32, align 4
  %h2 = alloca i32, align 4
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpRectangleTool*
  %call4 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %5)
  store %struct._GimpRectangleToolPrivate* %call4, %struct._GimpRectangleToolPrivate** %private, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %tobool = icmp ne %struct._GimpTool* %6, null
  br i1 %tobool, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %7, i32 0, i32 4
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool5 = icmp ne %struct._GimpDisplay* %8, null
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  br label %return

if.end:                                           ; preds = %land.lhs.true
  %9 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display6 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %9, i32 0, i32 4
  %10 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display6, align 8
  %call7 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %10)
  store %struct._GimpDisplayShell* %call7, %struct._GimpDisplayShell** %shell, align 8
  %11 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  call void @gimp_rectangle_tool_get_public_rect(%struct._GimpRectangleTool* %11, double* %pub_x1, double* %pub_y1, double* %pub_x2, double* %pub_y2)
  %12 = load double, double* %pub_x1, align 8
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 13
  %14 = load double, double* %scale_x, align 8
  %mul = fmul double %12, %14
  %conv = fptosi double %mul to i32
  store i32 %conv, i32* %x1, align 4
  %15 = load double, double* %pub_y1, align 8
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %16, i32 0, i32 14
  %17 = load double, double* %scale_y, align 8
  %mul8 = fmul double %15, %17
  %conv9 = fptosi double %mul8 to i32
  store i32 %conv9, i32* %y1, align 4
  %18 = load double, double* %pub_x2, align 8
  %19 = load double, double* %pub_x1, align 8
  %sub = fsub double %18, %19
  %20 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_x10 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %20, i32 0, i32 13
  %21 = load double, double* %scale_x10, align 8
  %mul11 = fmul double %sub, %21
  %conv12 = fptosi double %mul11 to i32
  store i32 %conv12, i32* %w1, align 4
  %22 = load double, double* %pub_y2, align 8
  %23 = load double, double* %pub_y1, align 8
  %sub13 = fsub double %22, %23
  %24 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_y14 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %24, i32 0, i32 14
  %25 = load double, double* %scale_y14, align 8
  %mul15 = fmul double %sub13, %25
  %conv16 = fptosi double %mul15 to i32
  store i32 %conv16, i32* %h1, align 4
  %26 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_scroll_get_scaled_viewport(%struct._GimpDisplayShell* %26, i32* %x2, i32* %y2, i32* %w2, i32* %h2)
  %27 = load i32, i32* %w1, align 4
  store i32 %27, i32* %rectangle_width, align 4
  %28 = load i32, i32* %h1, align 4
  store i32 %28, i32* %rectangle_height, align 4
  %29 = load i32, i32* %x1, align 4
  %30 = load i32, i32* %y1, align 4
  %31 = load i32, i32* %w1, align 4
  %32 = load i32, i32* %h1, align 4
  %33 = load i32, i32* %x2, align 4
  %34 = load i32, i32* %y2, align 4
  %35 = load i32, i32* %w2, align 4
  %36 = load i32, i32* %h2, align 4
  %call17 = call i32 @gimp_rectangle_intersect(i32 %29, i32 %30, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 %36, i32* null, i32* null, i32* %visible_rectangle_width, i32* %visible_rectangle_height)
  %37 = load i32, i32* %visible_rectangle_width, align 4
  %cmp = icmp slt i32 %37, 45
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %38 = load i32, i32* %visible_rectangle_height, align 4
  %cmp19 = icmp slt i32 %38, 45
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end
  %39 = phi i1 [ true, %if.end ], [ %cmp19, %lor.rhs ]
  %lor.ext = zext i1 %39 to i32
  %40 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %narrow_mode = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %40, i32 0, i32 23
  store i32 %lor.ext, i32* %narrow_mode, align 4
  %41 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %narrow_mode21 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %41, i32 0, i32 23
  %42 = load i32, i32* %narrow_mode21, align 4
  %tobool22 = icmp ne i32 %42, 0
  br i1 %tobool22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %lor.end
  %43 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_w = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %43, i32 0, i32 19
  store i32 15, i32* %corner_handle_w, align 4
  %44 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_h = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %44, i32 0, i32 20
  store i32 15, i32* %corner_handle_h, align 4
  %45 = load i32, i32* %rectangle_width, align 4
  %cmp24 = icmp sgt i32 %45, 2147483647
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.23
  br label %cond.end.46

cond.false:                                       ; preds = %if.then.23
  %46 = load i32, i32* %rectangle_width, align 4
  %47 = load i32, i32* %rectangle_width, align 4
  %sub26 = sub nsw i32 %47, 2
  %cmp27 = icmp slt i32 %sub26, 15
  br i1 %cmp27, label %cond.true.29, label %cond.false.31

cond.true.29:                                     ; preds = %cond.false
  %48 = load i32, i32* %rectangle_width, align 4
  %sub30 = sub nsw i32 %48, 2
  br label %cond.end

cond.false.31:                                    ; preds = %cond.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false.31, %cond.true.29
  %cond = phi i32 [ %sub30, %cond.true.29 ], [ 15, %cond.false.31 ]
  %cmp32 = icmp slt i32 %46, %cond
  br i1 %cmp32, label %cond.true.34, label %cond.false.43

cond.true.34:                                     ; preds = %cond.end
  %49 = load i32, i32* %rectangle_width, align 4
  %sub35 = sub nsw i32 %49, 2
  %cmp36 = icmp slt i32 %sub35, 15
  br i1 %cmp36, label %cond.true.38, label %cond.false.40

cond.true.38:                                     ; preds = %cond.true.34
  %50 = load i32, i32* %rectangle_width, align 4
  %sub39 = sub nsw i32 %50, 2
  br label %cond.end.41

cond.false.40:                                    ; preds = %cond.true.34
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.40, %cond.true.38
  %cond42 = phi i32 [ %sub39, %cond.true.38 ], [ 15, %cond.false.40 ]
  br label %cond.end.44

cond.false.43:                                    ; preds = %cond.end
  %51 = load i32, i32* %rectangle_width, align 4
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.43, %cond.end.41
  %cond45 = phi i32 [ %cond42, %cond.end.41 ], [ %51, %cond.false.43 ]
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.end.44, %cond.true
  %cond47 = phi i32 [ 2147483647, %cond.true ], [ %cond45, %cond.end.44 ]
  %52 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %top_and_bottom_handle_w = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %52, i32 0, i32 21
  store i32 %cond47, i32* %top_and_bottom_handle_w, align 4
  %53 = load i32, i32* %rectangle_height, align 4
  %cmp48 = icmp sgt i32 %53, 2147483647
  br i1 %cmp48, label %cond.true.50, label %cond.false.51

cond.true.50:                                     ; preds = %cond.end.46
  br label %cond.end.74

cond.false.51:                                    ; preds = %cond.end.46
  %54 = load i32, i32* %rectangle_height, align 4
  %55 = load i32, i32* %rectangle_height, align 4
  %sub52 = sub nsw i32 %55, 2
  %cmp53 = icmp slt i32 %sub52, 15
  br i1 %cmp53, label %cond.true.55, label %cond.false.57

cond.true.55:                                     ; preds = %cond.false.51
  %56 = load i32, i32* %rectangle_height, align 4
  %sub56 = sub nsw i32 %56, 2
  br label %cond.end.58

cond.false.57:                                    ; preds = %cond.false.51
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.57, %cond.true.55
  %cond59 = phi i32 [ %sub56, %cond.true.55 ], [ 15, %cond.false.57 ]
  %cmp60 = icmp slt i32 %54, %cond59
  br i1 %cmp60, label %cond.true.62, label %cond.false.71

cond.true.62:                                     ; preds = %cond.end.58
  %57 = load i32, i32* %rectangle_height, align 4
  %sub63 = sub nsw i32 %57, 2
  %cmp64 = icmp slt i32 %sub63, 15
  br i1 %cmp64, label %cond.true.66, label %cond.false.68

cond.true.66:                                     ; preds = %cond.true.62
  %58 = load i32, i32* %rectangle_height, align 4
  %sub67 = sub nsw i32 %58, 2
  br label %cond.end.69

cond.false.68:                                    ; preds = %cond.true.62
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.68, %cond.true.66
  %cond70 = phi i32 [ %sub67, %cond.true.66 ], [ 15, %cond.false.68 ]
  br label %cond.end.72

cond.false.71:                                    ; preds = %cond.end.58
  %59 = load i32, i32* %rectangle_height, align 4
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.71, %cond.end.69
  %cond73 = phi i32 [ %cond70, %cond.end.69 ], [ %59, %cond.false.71 ]
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.end.72, %cond.true.50
  %cond75 = phi i32 [ 2147483647, %cond.true.50 ], [ %cond73, %cond.end.72 ]
  %60 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %left_and_right_handle_h = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %60, i32 0, i32 22
  store i32 %cond75, i32* %left_and_right_handle_h, align 4
  br label %if.end.151

if.else:                                          ; preds = %lor.end
  %61 = load i32, i32* %visible_rectangle_width, align 4
  %div = sdiv i32 %61, 4
  %62 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_w76 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %62, i32 0, i32 19
  store i32 %div, i32* %corner_handle_w76, align 4
  %63 = load i32, i32* %visible_rectangle_height, align 4
  %div77 = sdiv i32 %63, 4
  %64 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_h78 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %64, i32 0, i32 20
  store i32 %div77, i32* %corner_handle_h78, align 4
  %65 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_w79 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %65, i32 0, i32 19
  %66 = load i32, i32* %corner_handle_w79, align 4
  %cmp80 = icmp sgt i32 %66, 50
  br i1 %cmp80, label %cond.true.82, label %cond.false.83

cond.true.82:                                     ; preds = %if.else
  br label %cond.end.92

cond.false.83:                                    ; preds = %if.else
  %67 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_w84 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %67, i32 0, i32 19
  %68 = load i32, i32* %corner_handle_w84, align 4
  %cmp85 = icmp slt i32 %68, 15
  br i1 %cmp85, label %cond.true.87, label %cond.false.88

cond.true.87:                                     ; preds = %cond.false.83
  br label %cond.end.90

cond.false.88:                                    ; preds = %cond.false.83
  %69 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_w89 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %69, i32 0, i32 19
  %70 = load i32, i32* %corner_handle_w89, align 4
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.false.88, %cond.true.87
  %cond91 = phi i32 [ 15, %cond.true.87 ], [ %70, %cond.false.88 ]
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.end.90, %cond.true.82
  %cond93 = phi i32 [ 50, %cond.true.82 ], [ %cond91, %cond.end.90 ]
  %71 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_w94 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %71, i32 0, i32 19
  store i32 %cond93, i32* %corner_handle_w94, align 4
  %72 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_h95 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %72, i32 0, i32 20
  %73 = load i32, i32* %corner_handle_h95, align 4
  %cmp96 = icmp sgt i32 %73, 50
  br i1 %cmp96, label %cond.true.98, label %cond.false.99

cond.true.98:                                     ; preds = %cond.end.92
  br label %cond.end.108

cond.false.99:                                    ; preds = %cond.end.92
  %74 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_h100 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %74, i32 0, i32 20
  %75 = load i32, i32* %corner_handle_h100, align 4
  %cmp101 = icmp slt i32 %75, 15
  br i1 %cmp101, label %cond.true.103, label %cond.false.104

cond.true.103:                                    ; preds = %cond.false.99
  br label %cond.end.106

cond.false.104:                                   ; preds = %cond.false.99
  %76 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_h105 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %76, i32 0, i32 20
  %77 = load i32, i32* %corner_handle_h105, align 4
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.false.104, %cond.true.103
  %cond107 = phi i32 [ 15, %cond.true.103 ], [ %77, %cond.false.104 ]
  br label %cond.end.108

cond.end.108:                                     ; preds = %cond.end.106, %cond.true.98
  %cond109 = phi i32 [ 50, %cond.true.98 ], [ %cond107, %cond.end.106 ]
  %78 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_h110 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %78, i32 0, i32 20
  store i32 %cond109, i32* %corner_handle_h110, align 4
  %79 = load i32, i32* %rectangle_width, align 4
  %80 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_w111 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %80, i32 0, i32 19
  %81 = load i32, i32* %corner_handle_w111, align 4
  %mul112 = mul nsw i32 3, %81
  %sub113 = sub nsw i32 %79, %mul112
  %82 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %top_and_bottom_handle_w114 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %82, i32 0, i32 21
  store i32 %sub113, i32* %top_and_bottom_handle_w114, align 4
  %83 = load i32, i32* %rectangle_height, align 4
  %84 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_h115 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %84, i32 0, i32 20
  %85 = load i32, i32* %corner_handle_h115, align 4
  %mul116 = mul nsw i32 3, %85
  %sub117 = sub nsw i32 %83, %mul116
  %86 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %left_and_right_handle_h118 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %86, i32 0, i32 22
  store i32 %sub117, i32* %left_and_right_handle_h118, align 4
  %87 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %top_and_bottom_handle_w119 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %87, i32 0, i32 21
  %88 = load i32, i32* %top_and_bottom_handle_w119, align 4
  %cmp120 = icmp sgt i32 %88, 2147483647
  br i1 %cmp120, label %cond.true.122, label %cond.false.123

cond.true.122:                                    ; preds = %cond.end.108
  br label %cond.end.132

cond.false.123:                                   ; preds = %cond.end.108
  %89 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %top_and_bottom_handle_w124 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %89, i32 0, i32 21
  %90 = load i32, i32* %top_and_bottom_handle_w124, align 4
  %cmp125 = icmp slt i32 %90, 15
  br i1 %cmp125, label %cond.true.127, label %cond.false.128

cond.true.127:                                    ; preds = %cond.false.123
  br label %cond.end.130

cond.false.128:                                   ; preds = %cond.false.123
  %91 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %top_and_bottom_handle_w129 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %91, i32 0, i32 21
  %92 = load i32, i32* %top_and_bottom_handle_w129, align 4
  br label %cond.end.130

cond.end.130:                                     ; preds = %cond.false.128, %cond.true.127
  %cond131 = phi i32 [ 15, %cond.true.127 ], [ %92, %cond.false.128 ]
  br label %cond.end.132

cond.end.132:                                     ; preds = %cond.end.130, %cond.true.122
  %cond133 = phi i32 [ 2147483647, %cond.true.122 ], [ %cond131, %cond.end.130 ]
  %93 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %top_and_bottom_handle_w134 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %93, i32 0, i32 21
  store i32 %cond133, i32* %top_and_bottom_handle_w134, align 4
  %94 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %left_and_right_handle_h135 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %94, i32 0, i32 22
  %95 = load i32, i32* %left_and_right_handle_h135, align 4
  %cmp136 = icmp sgt i32 %95, 2147483647
  br i1 %cmp136, label %cond.true.138, label %cond.false.139

cond.true.138:                                    ; preds = %cond.end.132
  br label %cond.end.148

cond.false.139:                                   ; preds = %cond.end.132
  %96 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %left_and_right_handle_h140 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %96, i32 0, i32 22
  %97 = load i32, i32* %left_and_right_handle_h140, align 4
  %cmp141 = icmp slt i32 %97, 15
  br i1 %cmp141, label %cond.true.143, label %cond.false.144

cond.true.143:                                    ; preds = %cond.false.139
  br label %cond.end.146

cond.false.144:                                   ; preds = %cond.false.139
  %98 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %left_and_right_handle_h145 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %98, i32 0, i32 22
  %99 = load i32, i32* %left_and_right_handle_h145, align 4
  br label %cond.end.146

cond.end.146:                                     ; preds = %cond.false.144, %cond.true.143
  %cond147 = phi i32 [ 15, %cond.true.143 ], [ %99, %cond.false.144 ]
  br label %cond.end.148

cond.end.148:                                     ; preds = %cond.end.146, %cond.true.138
  %cond149 = phi i32 [ 2147483647, %cond.true.138 ], [ %cond147, %cond.end.146 ]
  %100 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %left_and_right_handle_h150 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %100, i32 0, i32 22
  store i32 %cond149, i32* %left_and_right_handle_h150, align 4
  br label %if.end.151

if.end.151:                                       ; preds = %cond.end.148, %cond.end.74
  %101 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_x152 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %101, i32 0, i32 13
  %102 = load double, double* %scale_x152, align 8
  %103 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %scale_x_used_for_handle_size_calculations = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %103, i32 0, i32 24
  store double %102, double* %scale_x_used_for_handle_size_calculations, align 8
  %104 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_y153 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %104, i32 0, i32 14
  %105 = load double, double* %scale_y153, align 8
  %106 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %scale_y_used_for_handle_size_calculations = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %106, i32 0, i32 25
  store double %105, double* %scale_y_used_for_handle_size_calculations, align 8
  br label %return

return:                                           ; preds = %if.end.151, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_tool_rectangle_change_complete(%struct._GimpRectangleTool* %rect_tool) #1 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to i8*
  %2 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @gimp_rectangle_tool_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %1, i32 %2, i32 0)
  ret void
}

declare void @gimp_draw_tool_resume(%struct._GimpDrawTool*) #2

declare void @g_object_notify(%struct._GObject*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @gimp_rectangle_tool_get_constraint(%struct._GimpRectangleTool* %tool) #1 {
entry:
  %retval = alloca i32, align 4
  %tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %private = alloca %struct._GimpRectangleToolPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpRectangleTool* %tool, %struct._GimpRectangleTool** %tool.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_rectangle_tool_get_constraint, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %tool.addr, align 8
  %14 = bitcast %struct._GimpRectangleTool* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpRectangleTool*
  %call13 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %15)
  store %struct._GimpRectangleToolPrivate* %call13, %struct._GimpRectangleToolPrivate** %private, align 8
  %16 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %constraint = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %16, i32 0, i32 15
  %17 = load i32, i32* %constraint, align 4
  store i32 %17, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define void @gimp_rectangle_tool_pending_size_set(%struct._GimpRectangleTool* %rect_tool, %struct._GObject* %object, i8* %width_property, i8* %height_property) #1 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %object.addr = alloca %struct._GObject*, align 8
  %width_property.addr = alloca i8*, align 8
  %height_property.addr = alloca i8*, align 8
  %private = alloca %struct._GimpRectangleToolPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i8* %width_property, i8** %width_property.addr, align 8
  store i8* %height_property, i8** %height_property.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_rectangle_tool_pending_size_set, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %width_property.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_rectangle_tool_pending_size_set, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i8*, i8** %height_property.addr, align 8
  %cmp18 = icmp ne i8* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_rectangle_tool_pending_size_set, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %call23 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %15)
  store %struct._GimpRectangleToolPrivate* %call23, %struct._GimpRectangleToolPrivate** %private, align 8
  %16 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %17 = bitcast %struct._GObject* %16 to i8*
  %18 = load i8*, i8** %width_property.addr, align 8
  %19 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x2 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %19, i32 0, i32 8
  %20 = load double, double* %x2, align 8
  %21 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x1 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %21, i32 0, i32 6
  %22 = load double, double* %x1, align 8
  %sub = fsub double %20, %22
  %cmp24 = fcmp ogt double %sub, 1.000000e+00
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.22
  %23 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x225 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %23, i32 0, i32 8
  %24 = load double, double* %x225, align 8
  %25 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x126 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %25, i32 0, i32 6
  %26 = load double, double* %x126, align 8
  %sub27 = fsub double %24, %26
  br label %cond.end

cond.false:                                       ; preds = %do.end.22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub27, %cond.true ], [ 1.000000e+00, %cond.false ]
  %27 = load i8*, i8** %height_property.addr, align 8
  %28 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y2 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %28, i32 0, i32 9
  %29 = load double, double* %y2, align 8
  %30 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y1 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %30, i32 0, i32 7
  %31 = load double, double* %y1, align 8
  %sub28 = fsub double %29, %31
  %cmp29 = fcmp ogt double %sub28, 1.000000e+00
  br i1 %cmp29, label %cond.true.30, label %cond.false.34

cond.true.30:                                     ; preds = %cond.end
  %32 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y231 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %32, i32 0, i32 9
  %33 = load double, double* %y231, align 8
  %34 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y132 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %34, i32 0, i32 7
  %35 = load double, double* %y132, align 8
  %sub33 = fsub double %33, %35
  br label %cond.end.35

cond.false.34:                                    ; preds = %cond.end
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.34, %cond.true.30
  %cond36 = phi double [ %sub33, %cond.true.30 ], [ 1.000000e+00, %cond.false.34 ]
  call void (i8*, i8*, ...) @g_object_set(i8* %17, i8* %18, double %cond, i8* %27, double %cond36, i8* null)
  br label %return

return:                                           ; preds = %cond.end.35, %if.else.20, %if.else.14, %if.else.9
  ret void
}

declare void @g_object_set(i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @gimp_rectangle_tool_constraint_size_set(%struct._GimpRectangleTool* %rect_tool, %struct._GObject* %object, i8* %width_property, i8* %height_property) #1 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %object.addr = alloca %struct._GObject*, align 8
  %width_property.addr = alloca i8*, align 8
  %height_property.addr = alloca i8*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %width = alloca double, align 8
  %height = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %constraint = alloca i32, align 4
  %item = alloca %struct._GimpItem*, align 8
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i8* %width_property, i8** %width_property.addr, align 8
  store i8* %height_property, i8** %height_property.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_rectangle_tool_constraint_size_set, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %14 = bitcast %struct._GimpRectangleTool* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_tool_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpTool*
  store %struct._GimpTool* %15, %struct._GimpTool** %tool, align 8
  %16 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %tool_info = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %16, i32 0, i32 1
  %17 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %gimp = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %17, i32 0, i32 1
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call13 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %18)
  store %struct._GimpContext* %call13, %struct._GimpContext** %context, align 8
  %19 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call14 = call %struct._GimpImage* @gimp_context_get_image(%struct._GimpContext* %19)
  store %struct._GimpImage* %call14, %struct._GimpImage** %image, align 8
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool15 = icmp ne %struct._GimpImage* %20, null
  br i1 %tobool15, label %if.else.17, label %if.then.16

if.then.16:                                       ; preds = %do.end
  store double 1.000000e+00, double* %width, align 8
  store double 1.000000e+00, double* %height, align 8
  br label %if.end.36

if.else.17:                                       ; preds = %do.end
  %21 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %call19 = call i32 @gimp_rectangle_tool_get_constraint(%struct._GimpRectangleTool* %21)
  store i32 %call19, i32* %constraint, align 4
  %22 = load i32, i32* %constraint, align 4
  switch i32 %22, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.31
  ]

sw.bb:                                            ; preds = %if.else.17
  %23 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call21 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %23)
  %24 = bitcast %struct._GimpLayer* %call21 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_item_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call22)
  %25 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpItem*
  store %struct._GimpItem* %25, %struct._GimpItem** %item, align 8
  %26 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %tobool24 = icmp ne %struct._GimpItem* %26, null
  br i1 %tobool24, label %if.else.26, label %if.then.25

if.then.25:                                       ; preds = %sw.bb
  store double 1.000000e+00, double* %width, align 8
  store double 1.000000e+00, double* %height, align 8
  br label %if.end.30

if.else.26:                                       ; preds = %sw.bb
  %27 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call27 = call i32 @gimp_item_get_width(%struct._GimpItem* %27)
  %conv = sitofp i32 %call27 to double
  store double %conv, double* %width, align 8
  %28 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call28 = call i32 @gimp_item_get_height(%struct._GimpItem* %28)
  %conv29 = sitofp i32 %call28 to double
  store double %conv29, double* %height, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.26, %if.then.25
  br label %sw.epilog

sw.bb.31:                                         ; preds = %if.else.17
  br label %sw.default

sw.default:                                       ; preds = %if.else.17, %sw.bb.31
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call32 = call i32 @gimp_image_get_width(%struct._GimpImage* %29)
  %conv33 = sitofp i32 %call32 to double
  store double %conv33, double* %width, align 8
  %30 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call34 = call i32 @gimp_image_get_height(%struct._GimpImage* %30)
  %conv35 = sitofp i32 %call34 to double
  store double %conv35, double* %height, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.30
  br label %if.end.36

if.end.36:                                        ; preds = %sw.epilog, %if.then.16
  %31 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %32 = bitcast %struct._GObject* %31 to i8*
  %33 = load i8*, i8** %width_property.addr, align 8
  %34 = load double, double* %width, align 8
  %35 = load i8*, i8** %height_property.addr, align 8
  %36 = load double, double* %height, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %32, i8* %33, double %34, i8* %35, double %36, i8* null)
  br label %return

return:                                           ; preds = %if.end.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #3

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #2

declare %struct._GimpImage* @gimp_context_get_image(%struct._GimpContext*) #2

declare %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage*) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #3

declare i32 @gimp_item_get_width(%struct._GimpItem*) #2

declare i32 @gimp_item_get_height(%struct._GimpItem*) #2

declare i32 @gimp_image_get_width(%struct._GimpImage*) #2

declare i32 @gimp_image_get_height(%struct._GimpImage*) #2

; Function Attrs: nounwind uwtable
define i32 @gimp_rectangle_tool_rectangle_is_new(%struct._GimpRectangleTool* %rect_tool) #1 {
entry:
  %retval = alloca i32, align 4
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_rectangle_tool_rectangle_is_new, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %14 = bitcast %struct._GimpRectangleTool* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpRectangleTool*
  %call13 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %15)
  %is_new = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %call13, i32 0, i32 0
  %16 = load i32, i32* %is_new, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @gimp_rectangle_tool_point_in_rectangle(%struct._GimpRectangleTool* %rect_tool, double %x, double %y) #1 {
entry:
  %retval = alloca i32, align 4
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %inside = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pub_x1 = alloca double, align 8
  %pub_y1 = alloca double, align 8
  %pub_x2 = alloca double, align 8
  %pub_y2 = alloca double, align 8
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store i32 0, i32* %inside, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_rectangle_tool_point_in_rectangle, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %14 = bitcast %struct._GimpRectangleTool* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_tool_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpTool*
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %15, i32 0, i32 4
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool13 = icmp ne %struct._GimpDisplay* %16, null
  br i1 %tobool13, label %if.then.14, label %if.end.25

if.then.14:                                       ; preds = %do.end
  %17 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  call void @gimp_rectangle_tool_get_public_rect(%struct._GimpRectangleTool* %17, double* %pub_x1, double* %pub_y1, double* %pub_x2, double* %pub_y2)
  %18 = load double, double* %x.addr, align 8
  %19 = load double, double* %pub_x1, align 8
  %cmp19 = fcmp oge double %18, %19
  br i1 %cmp19, label %land.lhs.true.20, label %land.end

land.lhs.true.20:                                 ; preds = %if.then.14
  %20 = load double, double* %x.addr, align 8
  %21 = load double, double* %pub_x2, align 8
  %cmp21 = fcmp ole double %20, %21
  br i1 %cmp21, label %land.lhs.true.22, label %land.end

land.lhs.true.22:                                 ; preds = %land.lhs.true.20
  %22 = load double, double* %y.addr, align 8
  %23 = load double, double* %pub_y1, align 8
  %cmp23 = fcmp oge double %22, %23
  br i1 %cmp23, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.22
  %24 = load double, double* %y.addr, align 8
  %25 = load double, double* %pub_y2, align 8
  %cmp24 = fcmp ole double %24, %25
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.22, %land.lhs.true.20, %if.then.14
  %26 = phi i1 [ false, %land.lhs.true.22 ], [ false, %land.lhs.true.20 ], [ false, %if.then.14 ], [ %cmp24, %land.rhs ]
  %land.ext = zext i1 %26 to i32
  store i32 %land.ext, i32* %inside, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %land.end, %do.end
  %27 = load i32, i32* %inside, align 4
  store i32 %27, i32* %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.else.9
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_tool_get_public_rect(%struct._GimpRectangleTool* %rect_tool, double* %pub_x1, double* %pub_y1, double* %pub_x2, double* %pub_y2) #1 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %pub_x1.addr = alloca double*, align 8
  %pub_y1.addr = alloca double*, align 8
  %pub_x2.addr = alloca double*, align 8
  %pub_y2.addr = alloca double*, align 8
  %priv = alloca %struct._GimpRectangleToolPrivate*, align 8
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  store double* %pub_x1, double** %pub_x1.addr, align 8
  store double* %pub_y1, double** %pub_y1.addr, align 8
  store double* %pub_x2, double** %pub_x2.addr, align 8
  store double* %pub_y2, double** %pub_y2.addr, align 8
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRectangleTool*
  %call2 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %2)
  store %struct._GimpRectangleToolPrivate* %call2, %struct._GimpRectangleToolPrivate** %priv, align 8
  %3 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %priv, align 8
  %precision = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %3, i32 0, i32 16
  %4 = load i32, i32* %precision, align 4
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %priv, align 8
  %x1_int = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %5, i32 0, i32 10
  %6 = load i32, i32* %x1_int, align 4
  %conv = sitofp i32 %6 to double
  %7 = load double*, double** %pub_x1.addr, align 8
  store double %conv, double* %7, align 8
  %8 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %priv, align 8
  %y1_int = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %8, i32 0, i32 11
  %9 = load i32, i32* %y1_int, align 4
  %conv3 = sitofp i32 %9 to double
  %10 = load double*, double** %pub_y1.addr, align 8
  store double %conv3, double* %10, align 8
  %11 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %priv, align 8
  %x1_int4 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %11, i32 0, i32 10
  %12 = load i32, i32* %x1_int4, align 4
  %13 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %priv, align 8
  %width_int = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %13, i32 0, i32 12
  %14 = load i32, i32* %width_int, align 4
  %add = add nsw i32 %12, %14
  %conv5 = sitofp i32 %add to double
  %15 = load double*, double** %pub_x2.addr, align 8
  store double %conv5, double* %15, align 8
  %16 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %priv, align 8
  %y1_int6 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %16, i32 0, i32 11
  %17 = load i32, i32* %y1_int6, align 4
  %18 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %priv, align 8
  %height_int = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %18, i32 0, i32 13
  %19 = load i32, i32* %height_int, align 4
  %add7 = add nsw i32 %17, %19
  %conv8 = sitofp i32 %add7 to double
  %20 = load double*, double** %pub_y2.addr, align 8
  store double %conv8, double* %20, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb.9
  %21 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %priv, align 8
  %x1 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %21, i32 0, i32 6
  %22 = load double, double* %x1, align 8
  %23 = load double*, double** %pub_x1.addr, align 8
  store double %22, double* %23, align 8
  %24 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %priv, align 8
  %y1 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %24, i32 0, i32 7
  %25 = load double, double* %y1, align 8
  %26 = load double*, double** %pub_y1.addr, align 8
  store double %25, double* %26, align 8
  %27 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %priv, align 8
  %x2 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %27, i32 0, i32 8
  %28 = load double, double* %x2, align 8
  %29 = load double*, double** %pub_x2.addr, align 8
  store double %28, double* %29, align 8
  %30 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %priv, align 8
  %y2 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %30, i32 0, i32 9
  %31 = load double, double* %y2, align 8
  %32 = load double*, double** %pub_y2.addr, align 8
  store double %31, double* %32, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_rectangle_tool_frame_item(%struct._GimpRectangleTool* %rect_tool, %struct._GimpItem* %item) #1 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %item.addr = alloca %struct._GimpItem*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst51 = alloca %struct._GTypeInstance*, align 8
  %__t53 = alloca i64, align 8
  %__r56 = alloca i32, align 4
  %tmp71 = alloca i32, align 4
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_rectangle_tool_frame_item, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %14 = bitcast %struct._GimpItem* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_item_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_rectangle_tool_frame_item, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call40 = call i32 @gimp_item_is_attached(%struct._GimpItem* %26)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.39
  br label %if.end.44

if.else.43:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_rectangle_tool_frame_item, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0))
  br label %return

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %27 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %28 = bitcast %struct._GimpRectangleTool* %27 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_tool_get_type() #7
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call46)
  %29 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpTool*
  %display48 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %29, i32 0, i32 4
  %30 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display48, align 8
  store %struct._GimpDisplay* %30, %struct._GimpDisplay** %display, align 8
  br label %do.body.49

do.body.49:                                       ; preds = %do.end.45
  %31 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %32 = bitcast %struct._GimpDisplay* %31 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %32, %struct._GTypeInstance** %__inst51, align 8
  %call54 = call i64 @gimp_display_get_type() #7
  store i64 %call54, i64* %__t53, align 8
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst51, align 8
  %tobool57 = icmp ne %struct._GTypeInstance* %33, null
  br i1 %tobool57, label %if.else.59, label %if.then.58

if.then.58:                                       ; preds = %do.body.49
  store i32 0, i32* %__r56, align 4
  br label %if.end.70

if.else.59:                                       ; preds = %do.body.49
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst51, align 8
  %g_class60 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class60, align 8
  %tobool61 = icmp ne %struct._GTypeClass* %35, null
  br i1 %tobool61, label %land.lhs.true.62, label %if.else.67

land.lhs.true.62:                                 ; preds = %if.else.59
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst51, align 8
  %g_class63 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %36, i32 0, i32 0
  %37 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class63, align 8
  %g_type64 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %37, i32 0, i32 0
  %38 = load i64, i64* %g_type64, align 8
  %39 = load i64, i64* %__t53, align 8
  %cmp65 = icmp eq i64 %38, %39
  br i1 %cmp65, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %land.lhs.true.62
  store i32 1, i32* %__r56, align 4
  br label %if.end.69

if.else.67:                                       ; preds = %land.lhs.true.62, %if.else.59
  %40 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst51, align 8
  %41 = load i64, i64* %__t53, align 8
  %call68 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %40, i64 %41) #8
  store i32 %call68, i32* %__r56, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.67, %if.then.66
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.58
  %42 = load i32, i32* %__r56, align 4
  store i32 %42, i32* %tmp71
  %43 = load i32, i32* %tmp71
  %tobool72 = icmp ne i32 %43, 0
  br i1 %tobool72, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %if.end.70
  br label %if.end.75

if.else.74:                                       ; preds = %if.end.70
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_rectangle_tool_frame_item, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0))
  br label %return

if.end.75:                                        ; preds = %if.then.73
  br label %do.end.76

do.end.76:                                        ; preds = %if.end.75
  br label %do.body.77

do.body.77:                                       ; preds = %do.end.76
  %44 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call78 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %44)
  %45 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call79 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %45)
  %cmp80 = icmp eq %struct._GimpImage* %call78, %call79
  br i1 %cmp80, label %if.then.81, label %if.else.82

if.then.81:                                       ; preds = %do.body.77
  br label %if.end.83

if.else.82:                                       ; preds = %do.body.77
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_rectangle_tool_frame_item, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.16, i32 0, i32 0))
  br label %return

if.end.83:                                        ; preds = %if.then.81
  br label %do.end.84

do.end.84:                                        ; preds = %if.end.83
  %46 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call85 = call i32 @gimp_item_get_width(%struct._GimpItem* %46)
  store i32 %call85, i32* %width, align 4
  %47 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call86 = call i32 @gimp_item_get_height(%struct._GimpItem* %47)
  store i32 %call86, i32* %height, align 4
  %48 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %48, i32* %offset_x, i32* %offset_y)
  %49 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %50 = bitcast %struct._GimpRectangleTool* %49 to %struct._GTypeInstance*
  %call87 = call i64 @gimp_draw_tool_get_type() #7
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call87)
  %51 = bitcast %struct._GTypeInstance* %call88 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %51)
  %52 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  call void @gimp_rectangle_tool_set_function(%struct._GimpRectangleTool* %52, i32 2)
  %53 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %54 = bitcast %struct._GimpRectangleTool* %53 to i8*
  %55 = load i32, i32* %offset_x, align 4
  %56 = load i32, i32* %offset_y, align 4
  %57 = load i32, i32* %offset_x, align 4
  %58 = load i32, i32* %width, align 4
  %add = add nsw i32 %57, %58
  %59 = load i32, i32* %offset_y, align 4
  %60 = load i32, i32* %height, align 4
  %add89 = add nsw i32 %59, %60
  call void (i8*, i8*, ...) @g_object_set(i8* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32 %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32 %add, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32 %add89, i8* null)
  %61 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  call void @gimp_rectangle_tool_set_constraint(%struct._GimpRectangleTool* %61, i32 0)
  %62 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %63 = bitcast %struct._GimpRectangleTool* %62 to %struct._GTypeInstance*
  %call90 = call i64 @gimp_draw_tool_get_type() #7
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call90)
  %64 = bitcast %struct._GTypeInstance* %call91 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %64)
  br label %return

return:                                           ; preds = %do.end.84, %if.else.82, %if.else.74, %if.else.43, %if.else.36, %if.else.9
  ret void
}

declare i32 @gimp_item_is_attached(%struct._GimpItem*) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_display_get_type() #3

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #2

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #2

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #2

; Function Attrs: nounwind uwtable
define void @gimp_rectangle_tool_set_function(%struct._GimpRectangleTool* %rect_tool, i32 %function) #1 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %function.addr = alloca i32, align 4
  %private = alloca %struct._GimpRectangleToolPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %draw_tool = alloca %struct._GimpDrawTool*, align 8
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  store i32 %function, i32* %function.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_rectangle_tool_set_function, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.21

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %14 = bitcast %struct._GimpRectangleTool* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpRectangleTool*
  %call13 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %15)
  store %struct._GimpRectangleToolPrivate* %call13, %struct._GimpRectangleToolPrivate** %private, align 8
  %16 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %function14 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %16, i32 0, i32 14
  %17 = load i32, i32* %function14, align 4
  %18 = load i32, i32* %function.addr, align 4
  %cmp15 = icmp ne i32 %17, %18
  br i1 %cmp15, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %do.end
  %19 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %20 = bitcast %struct._GimpRectangleTool* %19 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_draw_tool_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call18)
  %21 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpDrawTool*
  store %struct._GimpDrawTool* %21, %struct._GimpDrawTool** %draw_tool, align 8
  %22 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %22)
  %23 = load i32, i32* %function.addr, align 4
  %24 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %function20 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %24, i32 0, i32 14
  store i32 %23, i32* %function20, align 4
  %25 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %25)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.9, %if.then.16, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_rectangle_tool_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #1 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %rect_tool = alloca %struct._GimpRectangleTool*, align 8
  %private = alloca %struct._GimpRectangleToolPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRectangleTool*
  store %struct._GimpRectangleTool* %2, %struct._GimpRectangleTool** %rect_tool, align 8
  %3 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %4 = bitcast %struct._GimpRectangleTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpRectangleTool*
  %call4 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %5)
  store %struct._GimpRectangleToolPrivate* %call4, %struct._GimpRectangleToolPrivate** %private, align 8
  %6 = load i32, i32* %property_id.addr, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.6
    i32 3, label %sw.bb.9
    i32 4, label %sw.bb.12
    i32 5, label %sw.bb.15
    i32 6, label %sw.bb.17
    i32 7, label %sw.bb.19
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call5 = call i32 @g_value_get_int(%struct._GValue* %7)
  %conv = sitofp i32 %call5 to double
  %8 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x1 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %8, i32 0, i32 6
  store double %conv, double* %x1, align 8
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call7 = call i32 @g_value_get_int(%struct._GValue* %9)
  %conv8 = sitofp i32 %call7 to double
  %10 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y1 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %10, i32 0, i32 7
  store double %conv8, double* %y1, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call i32 @g_value_get_int(%struct._GValue* %11)
  %conv11 = sitofp i32 %call10 to double
  %12 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x2 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %12, i32 0, i32 8
  store double %conv11, double* %x2, align 8
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call13 = call i32 @g_value_get_int(%struct._GValue* %13)
  %conv14 = sitofp i32 %call13 to double
  %14 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y2 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %14, i32 0, i32 9
  store double %conv14, double* %y2, align 8
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %15 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call16 = call i32 @g_value_get_enum(%struct._GValue* %16)
  call void @gimp_rectangle_tool_set_constraint(%struct._GimpRectangleTool* %15, i32 %call16)
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  %17 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call18 = call i32 @g_value_get_enum(%struct._GValue* %17)
  %18 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %precision = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %18, i32 0, i32 16
  store i32 %call18, i32* %precision, align 4
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call20 = call i32 @g_value_get_boolean(%struct._GValue* %19)
  %20 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %narrow_mode = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %20, i32 0, i32 23
  store i32 %call20, i32* %narrow_mode, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %21 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %21, %struct._GObject** %_glib__object, align 8
  %22 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %22, %struct._GParamSpec** %_glib__pspec, align 8
  %23 = load i32, i32* %property_id.addr, align 4
  store i32 %23, i32* %_glib__property_id, align 4
  %24 = load i32, i32* %_glib__property_id, align 4
  %25 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %25, i32 0, i32 1
  %26 = load i8*, i8** %name, align 8
  %27 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %28 = bitcast %struct._GParamSpec* %27 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %28, i32 0, i32 0
  %29 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %29, i32 0, i32 0
  %30 = load i64, i64* %g_type, align 8
  %call21 = call i8* @g_type_name(i64 %30)
  %31 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %32 = bitcast %struct._GObject* %31 to %struct._GTypeInstance*
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %g_type23 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type23, align 8
  %call24 = call i8* @g_type_name(i64 %34)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i32 789, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 %24, i8* %26, i8* %call21, i8* %call24)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.19, %sw.bb.17, %sw.bb.15, %sw.bb.12, %sw.bb.9, %sw.bb.6, %sw.bb
  %35 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  call void @gimp_rectangle_tool_update_int_rect(%struct._GimpRectangleTool* %35)
  ret void
}

declare i32 @g_value_get_int(%struct._GValue*) #2

declare i32 @g_value_get_enum(%struct._GValue*) #2

declare i32 @g_value_get_boolean(%struct._GValue*) #2

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #1 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_tool_update_int_rect(%struct._GimpRectangleTool* %rect_tool) #1 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %priv = alloca %struct._GimpRectangleToolPrivate*, align 8
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRectangleTool*
  %call2 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %2)
  store %struct._GimpRectangleToolPrivate* %call2, %struct._GimpRectangleToolPrivate** %priv, align 8
  %3 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %priv, align 8
  %x1 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %3, i32 0, i32 6
  %4 = load double, double* %x1, align 8
  %cmp = fcmp olt double %4, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %priv, align 8
  %x13 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %5, i32 0, i32 6
  %6 = load double, double* %x13, align 8
  %sub = fsub double %6, 5.000000e-01
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %priv, align 8
  %x14 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %7, i32 0, i32 6
  %8 = load double, double* %x14, align 8
  %add = fadd double %8, 5.000000e-01
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub, %cond.true ], [ %add, %cond.false ]
  %conv = fptosi double %cond to i32
  %9 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %priv, align 8
  %x1_int = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %9, i32 0, i32 10
  store i32 %conv, i32* %x1_int, align 4
  %10 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %priv, align 8
  %y1 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %10, i32 0, i32 7
  %11 = load double, double* %y1, align 8
  %cmp5 = fcmp olt double %11, 0.000000e+00
  br i1 %cmp5, label %cond.true.7, label %cond.false.10

cond.true.7:                                      ; preds = %cond.end
  %12 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %priv, align 8
  %y18 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %12, i32 0, i32 7
  %13 = load double, double* %y18, align 8
  %sub9 = fsub double %13, 5.000000e-01
  br label %cond.end.13

cond.false.10:                                    ; preds = %cond.end
  %14 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %priv, align 8
  %y111 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %14, i32 0, i32 7
  %15 = load double, double* %y111, align 8
  %add12 = fadd double %15, 5.000000e-01
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.10, %cond.true.7
  %cond14 = phi double [ %sub9, %cond.true.7 ], [ %add12, %cond.false.10 ]
  %conv15 = fptosi double %cond14 to i32
  %16 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %priv, align 8
  %y1_int = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %16, i32 0, i32 11
  store i32 %conv15, i32* %y1_int, align 4
  %17 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %call16 = call i32 @gimp_rectangle_tool_rect_rubber_banding_func(%struct._GimpRectangleTool* %17)
  %tobool = icmp ne i32 %call16, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.13
  %18 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %priv, align 8
  %x2 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %18, i32 0, i32 8
  %19 = load double, double* %x2, align 8
  %cmp17 = fcmp olt double %19, 0.000000e+00
  br i1 %cmp17, label %cond.true.19, label %cond.false.22

cond.true.19:                                     ; preds = %if.then
  %20 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %priv, align 8
  %x220 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %20, i32 0, i32 8
  %21 = load double, double* %x220, align 8
  %sub21 = fsub double %21, 5.000000e-01
  br label %cond.end.25

cond.false.22:                                    ; preds = %if.then
  %22 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %priv, align 8
  %x223 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %22, i32 0, i32 8
  %23 = load double, double* %x223, align 8
  %add24 = fadd double %23, 5.000000e-01
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.22, %cond.true.19
  %cond26 = phi double [ %sub21, %cond.true.19 ], [ %add24, %cond.false.22 ]
  %conv27 = fptosi double %cond26 to i32
  %24 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %priv, align 8
  %x1_int28 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %24, i32 0, i32 10
  %25 = load i32, i32* %x1_int28, align 4
  %sub29 = sub nsw i32 %conv27, %25
  %26 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %priv, align 8
  %width_int = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %26, i32 0, i32 12
  store i32 %sub29, i32* %width_int, align 4
  %27 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %priv, align 8
  %y2 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %27, i32 0, i32 9
  %28 = load double, double* %y2, align 8
  %cmp30 = fcmp olt double %28, 0.000000e+00
  br i1 %cmp30, label %cond.true.32, label %cond.false.35

cond.true.32:                                     ; preds = %cond.end.25
  %29 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %priv, align 8
  %y233 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %29, i32 0, i32 9
  %30 = load double, double* %y233, align 8
  %sub34 = fsub double %30, 5.000000e-01
  br label %cond.end.38

cond.false.35:                                    ; preds = %cond.end.25
  %31 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %priv, align 8
  %y236 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %31, i32 0, i32 9
  %32 = load double, double* %y236, align 8
  %add37 = fadd double %32, 5.000000e-01
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.35, %cond.true.32
  %cond39 = phi double [ %sub34, %cond.true.32 ], [ %add37, %cond.false.35 ]
  %conv40 = fptosi double %cond39 to i32
  %33 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %priv, align 8
  %y1_int41 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %33, i32 0, i32 11
  %34 = load i32, i32* %y1_int41, align 4
  %sub42 = sub nsw i32 %conv40, %34
  %35 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %priv, align 8
  %height_int = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %35, i32 0, i32 13
  store i32 %sub42, i32* %height_int, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.38, %cond.end.13
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_rectangle_tool_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #1 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %rect_tool = alloca %struct._GimpRectangleTool*, align 8
  %private = alloca %struct._GimpRectangleToolPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRectangleTool*
  store %struct._GimpRectangleTool* %2, %struct._GimpRectangleTool** %rect_tool, align 8
  %3 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %4 = bitcast %struct._GimpRectangleTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpRectangleTool*
  %call4 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %5)
  store %struct._GimpRectangleToolPrivate* %call4, %struct._GimpRectangleToolPrivate** %private, align 8
  %6 = load i32, i32* %property_id.addr, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.5
    i32 3, label %sw.bb.6
    i32 4, label %sw.bb.8
    i32 5, label %sw.bb.11
    i32 6, label %sw.bb.13
    i32 7, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x1_int = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %8, i32 0, i32 10
  %9 = load i32, i32* %x1_int, align 4
  call void @g_value_set_int(%struct._GValue* %7, i32 %9)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y1_int = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %11, i32 0, i32 11
  %12 = load i32, i32* %y1_int, align 4
  call void @g_value_set_int(%struct._GValue* %10, i32 %12)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %14 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x1_int7 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %14, i32 0, i32 10
  %15 = load i32, i32* %x1_int7, align 4
  %16 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %width_int = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %16, i32 0, i32 12
  %17 = load i32, i32* %width_int, align 4
  %add = add nsw i32 %15, %17
  call void @g_value_set_int(%struct._GValue* %13, i32 %add)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %18 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %19 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y1_int9 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %19, i32 0, i32 11
  %20 = load i32, i32* %y1_int9, align 4
  %21 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %height_int = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %21, i32 0, i32 13
  %22 = load i32, i32* %height_int, align 4
  %add10 = add nsw i32 %20, %22
  call void @g_value_set_int(%struct._GValue* %18, i32 %add10)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %23 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %24 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %call12 = call i32 @gimp_rectangle_tool_get_constraint(%struct._GimpRectangleTool* %24)
  call void @g_value_set_enum(%struct._GValue* %23, i32 %call12)
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %25 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %26 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %precision = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %26, i32 0, i32 16
  %27 = load i32, i32* %precision, align 4
  call void @g_value_set_enum(%struct._GValue* %25, i32 %27)
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %28 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %29 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %narrow_mode = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %29, i32 0, i32 23
  %30 = load i32, i32* %narrow_mode, align 4
  call void @g_value_set_boolean(%struct._GValue* %28, i32 %30)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %31 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %31, %struct._GObject** %_glib__object, align 8
  %32 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %32, %struct._GParamSpec** %_glib__pspec, align 8
  %33 = load i32, i32* %property_id.addr, align 4
  store i32 %33, i32* %_glib__property_id, align 4
  %34 = load i32, i32* %_glib__property_id, align 4
  %35 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %35, i32 0, i32 1
  %36 = load i8*, i8** %name, align 8
  %37 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %38 = bitcast %struct._GParamSpec* %37 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %38, i32 0, i32 0
  %39 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %39, i32 0, i32 0
  %40 = load i64, i64* %g_type, align 8
  %call15 = call i8* @g_type_name(i64 %40)
  %41 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %42 = bitcast %struct._GObject* %41 to %struct._GTypeInstance*
  %g_class16 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %42, i32 0, i32 0
  %43 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class16, align 8
  %g_type17 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %43, i32 0, i32 0
  %44 = load i64, i64* %g_type17, align 8
  %call18 = call i8* @g_type_name(i64 %44)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i32 832, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 %34, i8* %36, i8* %call15, i8* %call18)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.14, %sw.bb.13, %sw.bb.11, %sw.bb.8, %sw.bb.6, %sw.bb.5, %sw.bb
  ret void
}

declare void @g_value_set_int(%struct._GValue*, i32) #2

declare void @g_value_set_enum(%struct._GValue*, i32) #2

declare void @g_value_set_boolean(%struct._GValue*, i32) #2

; Function Attrs: nounwind uwtable
define void @gimp_rectangle_tool_constructor(%struct._GObject* %object) #1 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %rect_tool = alloca %struct._GimpRectangleTool*, align 8
  %options = alloca %struct._GimpRectangleOptions*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRectangleTool*
  store %struct._GimpRectangleTool* %2, %struct._GimpRectangleTool** %rect_tool, align 8
  %3 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %4 = bitcast %struct._GObject* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_rectangle_options_interface_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpRectangleOptions*
  store %struct._GimpRectangleOptions* %7, %struct._GimpRectangleOptions** %options, align 8
  %8 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %options, align 8
  %9 = bitcast %struct._GimpRectangleOptions* %8 to i8*
  %10 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %11 = bitcast %struct._GimpRectangleTool* %10 to i8*
  %call7 = call i64 @g_signal_connect_object(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), void ()* bitcast (void (%struct._GimpRectangleOptions*, %struct._GParamSpec*, %struct._GimpRectangleTool*)* @gimp_rectangle_tool_options_notify to void ()*), i8* %11, i32 0)
  ret void
}

declare %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool*) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_rectangle_options_interface_get_type() #3

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_tool_options_notify(%struct._GimpRectangleOptions* %options, %struct._GParamSpec* %pspec, %struct._GimpRectangleTool* %rect_tool) #1 {
entry:
  %options.addr = alloca %struct._GimpRectangleOptions*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %private = alloca %struct._GimpRectangleToolPrivate*, align 8
  %options_private = alloca %struct._GimpRectangleOptionsPrivate*, align 8
  %x243 = alloca double, align 8
  %y262 = alloca double, align 8
  %width80 = alloca double, align 8
  %height84 = alloca double, align 8
  %x104 = alloca double, align 8
  %y106 = alloca double, align 8
  %width116 = alloca double, align 8
  %height120 = alloca double, align 8
  %new_inverse_ratio = alloca double, align 8
  %lower_ratio = alloca double, align 8
  %higher_ratio = alloca double, align 8
  %new_x2 = alloca double, align 8
  %new_y2 = alloca double, align 8
  store %struct._GimpRectangleOptions* %options, %struct._GimpRectangleOptions** %options.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpRectangleTool*
  %call4 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %5)
  store %struct._GimpRectangleToolPrivate* %call4, %struct._GimpRectangleToolPrivate** %private, align 8
  %6 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %options.addr, align 8
  %7 = bitcast %struct._GimpRectangleOptions* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_rectangle_options_interface_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpRectangleOptions*
  %call7 = call %struct._GimpRectangleOptionsPrivate* @gimp_rectangle_options_get_private(%struct._GimpRectangleOptions* %8)
  store %struct._GimpRectangleOptionsPrivate* %call7, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %9, i32 0, i32 1
  %10 = load i8*, i8** %name, align 8
  %call8 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0)) #8
  %cmp = icmp eq i32 %call8, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %12 = bitcast %struct._GimpRectangleTool* %11 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_draw_tool_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call9)
  %13 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %13)
  %14 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %15 = bitcast %struct._GimpRectangleTool* %14 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_draw_tool_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call11)
  %16 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %16)
  br label %if.end.178

if.else:                                          ; preds = %entry
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name13 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %17, i32 0, i32 1
  %18 = load i8*, i8** %name13, align 8
  %call14 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0)) #8
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %land.lhs.true, label %if.else.20

land.lhs.true:                                    ; preds = %if.else
  %19 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x1 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %19, i32 0, i32 6
  %20 = load double, double* %x1, align 8
  %21 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %x = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %21, i32 0, i32 4
  %22 = load double, double* %x, align 8
  %sub = fsub double %20, %22
  %call16 = call double @fabs(double %sub) #7
  %cmp17 = fcmp olt double %call16, 5.000000e-01
  br i1 %cmp17, label %if.else.20, label %if.then.18

if.then.18:                                       ; preds = %land.lhs.true
  %23 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %24 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %x19 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %24, i32 0, i32 4
  %25 = load double, double* %x19, align 8
  %26 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y1 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %26, i32 0, i32 7
  %27 = load double, double* %y1, align 8
  call void @gimp_rectangle_tool_synthesize_motion(%struct._GimpRectangleTool* %23, i32 3, double %25, double %27)
  br label %if.end.177

if.else.20:                                       ; preds = %land.lhs.true, %if.else
  %28 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name21 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %28, i32 0, i32 1
  %29 = load i8*, i8** %name21, align 8
  %call22 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i32 0, i32 0)) #8
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %land.lhs.true.24, label %if.else.32

land.lhs.true.24:                                 ; preds = %if.else.20
  %30 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y125 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %30, i32 0, i32 7
  %31 = load double, double* %y125, align 8
  %32 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %y = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %32, i32 0, i32 5
  %33 = load double, double* %y, align 8
  %sub26 = fsub double %31, %33
  %call27 = call double @fabs(double %sub26) #7
  %cmp28 = fcmp olt double %call27, 5.000000e-01
  br i1 %cmp28, label %if.else.32, label %if.then.29

if.then.29:                                       ; preds = %land.lhs.true.24
  %34 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %35 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x130 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %35, i32 0, i32 6
  %36 = load double, double* %x130, align 8
  %37 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %y31 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %37, i32 0, i32 5
  %38 = load double, double* %y31, align 8
  call void @gimp_rectangle_tool_synthesize_motion(%struct._GimpRectangleTool* %34, i32 3, double %36, double %38)
  br label %if.end.176

if.else.32:                                       ; preds = %land.lhs.true.24, %if.else.20
  %39 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name33 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %39, i32 0, i32 1
  %40 = load i8*, i8** %name33, align 8
  %call34 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0)) #8
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %land.lhs.true.36, label %if.else.50

land.lhs.true.36:                                 ; preds = %if.else.32
  %41 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x2 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %41, i32 0, i32 8
  %42 = load double, double* %x2, align 8
  %43 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x137 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %43, i32 0, i32 6
  %44 = load double, double* %x137, align 8
  %sub38 = fsub double %42, %44
  %45 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %width = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %45, i32 0, i32 6
  %46 = load double, double* %width, align 8
  %sub39 = fsub double %sub38, %46
  %call40 = call double @fabs(double %sub39) #7
  %cmp41 = fcmp olt double %call40, 5.000000e-01
  br i1 %cmp41, label %if.else.50, label %if.then.42

if.then.42:                                       ; preds = %land.lhs.true.36
  %47 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %fixed_center = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %47, i32 0, i32 24
  %48 = load i32, i32* %fixed_center, align 4
  %tobool = icmp ne i32 %48, 0
  br i1 %tobool, label %if.then.44, label %if.else.46

if.then.44:                                       ; preds = %if.then.42
  %49 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %center_x_on_fixed_center = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %49, i32 0, i32 3
  %50 = load double, double* %center_x_on_fixed_center, align 8
  %51 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %width45 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %51, i32 0, i32 6
  %52 = load double, double* %width45, align 8
  %div = fdiv double %52, 2.000000e+00
  %add = fadd double %50, %div
  store double %add, double* %x243, align 8
  br label %if.end

if.else.46:                                       ; preds = %if.then.42
  %53 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x147 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %53, i32 0, i32 6
  %54 = load double, double* %x147, align 8
  %55 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %width48 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %55, i32 0, i32 6
  %56 = load double, double* %width48, align 8
  %add49 = fadd double %54, %56
  store double %add49, double* %x243, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.46, %if.then.44
  %57 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %58 = load double, double* %x243, align 8
  %59 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y2 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %59, i32 0, i32 9
  %60 = load double, double* %y2, align 8
  call void @gimp_rectangle_tool_synthesize_motion(%struct._GimpRectangleTool* %57, i32 9, double %58, double %60)
  br label %if.end.175

if.else.50:                                       ; preds = %land.lhs.true.36, %if.else.32
  %61 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name51 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %61, i32 0, i32 1
  %62 = load i8*, i8** %name51, align 8
  %call52 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0)) #8
  %cmp53 = icmp eq i32 %call52, 0
  br i1 %cmp53, label %land.lhs.true.54, label %if.else.75

land.lhs.true.54:                                 ; preds = %if.else.50
  %63 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y255 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %63, i32 0, i32 9
  %64 = load double, double* %y255, align 8
  %65 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y156 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %65, i32 0, i32 7
  %66 = load double, double* %y156, align 8
  %sub57 = fsub double %64, %66
  %67 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %height = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %67, i32 0, i32 7
  %68 = load double, double* %height, align 8
  %sub58 = fsub double %sub57, %68
  %call59 = call double @fabs(double %sub58) #7
  %cmp60 = fcmp olt double %call59, 5.000000e-01
  br i1 %cmp60, label %if.else.75, label %if.then.61

if.then.61:                                       ; preds = %land.lhs.true.54
  %69 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %fixed_center63 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %69, i32 0, i32 24
  %70 = load i32, i32* %fixed_center63, align 4
  %tobool64 = icmp ne i32 %70, 0
  br i1 %tobool64, label %if.then.65, label %if.else.69

if.then.65:                                       ; preds = %if.then.61
  %71 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %center_y_on_fixed_center = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %71, i32 0, i32 4
  %72 = load double, double* %center_y_on_fixed_center, align 8
  %73 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %height66 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %73, i32 0, i32 7
  %74 = load double, double* %height66, align 8
  %div67 = fdiv double %74, 2.000000e+00
  %add68 = fadd double %72, %div67
  store double %add68, double* %y262, align 8
  br label %if.end.73

if.else.69:                                       ; preds = %if.then.61
  %75 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y170 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %75, i32 0, i32 7
  %76 = load double, double* %y170, align 8
  %77 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %height71 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %77, i32 0, i32 7
  %78 = load double, double* %height71, align 8
  %add72 = fadd double %76, %78
  store double %add72, double* %y262, align 8
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.69, %if.then.65
  %79 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %80 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x274 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %80, i32 0, i32 8
  %81 = load double, double* %x274, align 8
  %82 = load double, double* %y262, align 8
  call void @gimp_rectangle_tool_synthesize_motion(%struct._GimpRectangleTool* %79, i32 11, double %81, double %82)
  br label %if.end.174

if.else.75:                                       ; preds = %land.lhs.true.54, %if.else.50
  %83 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name76 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %83, i32 0, i32 1
  %84 = load i8*, i8** %name76, align 8
  %call77 = call i32 @strcmp(i8* %84, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i32 0, i32 0)) #8
  %cmp78 = icmp eq i32 %call77, 0
  br i1 %cmp78, label %if.then.79, label %if.else.111

if.then.79:                                       ; preds = %if.else.75
  %85 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x281 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %85, i32 0, i32 8
  %86 = load double, double* %x281, align 8
  %87 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x182 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %87, i32 0, i32 6
  %88 = load double, double* %x182, align 8
  %sub83 = fsub double %86, %88
  store double %sub83, double* %width80, align 8
  %89 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y285 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %89, i32 0, i32 9
  %90 = load double, double* %y285, align 8
  %91 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y186 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %91, i32 0, i32 7
  %92 = load double, double* %y186, align 8
  %sub87 = fsub double %90, %92
  store double %sub87, double* %height84, align 8
  %93 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %fixed_rule_active = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %93, i32 0, i32 10
  %94 = load i32, i32* %fixed_rule_active, align 4
  %tobool88 = icmp ne i32 %94, 0
  br i1 %tobool88, label %land.lhs.true.89, label %if.end.110

land.lhs.true.89:                                 ; preds = %if.then.79
  %95 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %95, i32 0, i32 4
  %96 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %cmp90 = icmp ne %struct._GimpDisplay* %96, null
  br i1 %cmp90, label %land.lhs.true.91, label %if.end.110

land.lhs.true.91:                                 ; preds = %land.lhs.true.89
  %97 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %button_press_state = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %97, i32 0, i32 8
  %98 = load i32, i32* %button_press_state, align 4
  %cmp92 = icmp eq i32 %98, 0
  br i1 %cmp92, label %land.lhs.true.93, label %if.end.110

land.lhs.true.93:                                 ; preds = %land.lhs.true.91
  %99 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %active_modifier_state = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %99, i32 0, i32 9
  %100 = load i32, i32* %active_modifier_state, align 4
  %cmp94 = icmp eq i32 %100, 0
  br i1 %cmp94, label %land.lhs.true.95, label %if.end.110

land.lhs.true.95:                                 ; preds = %land.lhs.true.93
  %101 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %desired_fixed_size_width = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %101, i32 0, i32 14
  %102 = load double, double* %desired_fixed_size_width, align 8
  %103 = load double, double* %height84, align 8
  %sub96 = fsub double %102, %103
  %call97 = call double @fabs(double %sub96) #7
  %cmp98 = fcmp olt double %call97, 1.000000e-04
  br i1 %cmp98, label %land.lhs.true.99, label %if.end.110

land.lhs.true.99:                                 ; preds = %land.lhs.true.95
  %104 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %desired_fixed_size_height = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %104, i32 0, i32 15
  %105 = load double, double* %desired_fixed_size_height, align 8
  %106 = load double, double* %width80, align 8
  %sub100 = fsub double %105, %106
  %call101 = call double @fabs(double %sub100) #7
  %cmp102 = fcmp olt double %call101, 1.000000e-04
  br i1 %cmp102, label %if.then.103, label %if.end.110

if.then.103:                                      ; preds = %land.lhs.true.99
  %107 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x1105 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %107, i32 0, i32 6
  %108 = load double, double* %x1105, align 8
  store double %108, double* %x104, align 8
  %109 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y1107 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %109, i32 0, i32 7
  %110 = load double, double* %y1107, align 8
  store double %110, double* %y106, align 8
  %111 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %112 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x2108 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %112, i32 0, i32 8
  %113 = load double, double* %x2108, align 8
  %114 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y2109 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %114, i32 0, i32 9
  %115 = load double, double* %y2109, align 8
  call void @gimp_rectangle_tool_synthesize_motion(%struct._GimpRectangleTool* %111, i32 7, double %113, double %115)
  %116 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %options.addr, align 8
  %117 = bitcast %struct._GimpRectangleOptions* %116 to i8*
  %118 = load double, double* %x104, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0), double %118, i8* null)
  %119 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %options.addr, align 8
  %120 = bitcast %struct._GimpRectangleOptions* %119 to i8*
  %121 = load double, double* %y106, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i32 0, i32 0), double %121, i8* null)
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.103, %land.lhs.true.99, %land.lhs.true.95, %land.lhs.true.93, %land.lhs.true.91, %land.lhs.true.89, %if.then.79
  br label %if.end.173

if.else.111:                                      ; preds = %if.else.75
  %122 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name112 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %122, i32 0, i32 1
  %123 = load i8*, i8** %name112, align 8
  %call113 = call i32 @strcmp(i8* %123, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i32 0, i32 0)) #8
  %cmp114 = icmp eq i32 %call113, 0
  br i1 %cmp114, label %if.then.115, label %if.else.166

if.then.115:                                      ; preds = %if.else.111
  %124 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x2117 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %124, i32 0, i32 8
  %125 = load double, double* %x2117, align 8
  %126 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x1118 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %126, i32 0, i32 6
  %127 = load double, double* %x1118, align 8
  %sub119 = fsub double %125, %127
  store double %sub119, double* %width116, align 8
  %128 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y2121 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %128, i32 0, i32 9
  %129 = load double, double* %y2121, align 8
  %130 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y1122 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %130, i32 0, i32 7
  %131 = load double, double* %y1122, align 8
  %sub123 = fsub double %129, %131
  store double %sub123, double* %height120, align 8
  %132 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %aspect_denominator = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %132, i32 0, i32 20
  %133 = load double, double* %aspect_denominator, align 8
  %134 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %aspect_numerator = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %134, i32 0, i32 19
  %135 = load double, double* %aspect_numerator, align 8
  %div124 = fdiv double %133, %135
  store double %div124, double* %new_inverse_ratio, align 8
  %136 = load double, double* %width116, align 8
  %137 = load double, double* %height120, align 8
  %cmp125 = fcmp ogt double %136, %137
  br i1 %cmp125, label %land.lhs.true.126, label %if.else.133

land.lhs.true.126:                                ; preds = %if.then.115
  %138 = load double, double* %height120, align 8
  %cmp127 = fcmp ogt double %138, 1.000000e+00
  br i1 %cmp127, label %if.then.128, label %if.else.133

if.then.128:                                      ; preds = %land.lhs.true.126
  %139 = load double, double* %width116, align 8
  %140 = load double, double* %height120, align 8
  %add129 = fadd double %140, 1.000000e+00
  %div130 = fdiv double %139, %add129
  store double %div130, double* %lower_ratio, align 8
  %141 = load double, double* %width116, align 8
  %142 = load double, double* %height120, align 8
  %sub131 = fsub double %142, 1.000000e+00
  %div132 = fdiv double %141, %sub131
  store double %div132, double* %higher_ratio, align 8
  br label %if.end.138

if.else.133:                                      ; preds = %land.lhs.true.126, %if.then.115
  %143 = load double, double* %width116, align 8
  %sub134 = fsub double %143, 1.000000e+00
  %144 = load double, double* %height120, align 8
  %div135 = fdiv double %sub134, %144
  store double %div135, double* %lower_ratio, align 8
  %145 = load double, double* %width116, align 8
  %add136 = fadd double %145, 1.000000e+00
  %146 = load double, double* %height120, align 8
  %div137 = fdiv double %add136, %146
  store double %div137, double* %higher_ratio, align 8
  br label %if.end.138

if.end.138:                                       ; preds = %if.else.133, %if.then.128
  %147 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %fixed_rule_active139 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %147, i32 0, i32 10
  %148 = load i32, i32* %fixed_rule_active139, align 4
  %tobool140 = icmp ne i32 %148, 0
  br i1 %tobool140, label %land.lhs.true.141, label %if.end.165

land.lhs.true.141:                                ; preds = %if.end.138
  %149 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display142 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %149, i32 0, i32 4
  %150 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display142, align 8
  %cmp143 = icmp ne %struct._GimpDisplay* %150, null
  br i1 %cmp143, label %land.lhs.true.144, label %if.end.165

land.lhs.true.144:                                ; preds = %land.lhs.true.141
  %151 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %button_press_state145 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %151, i32 0, i32 8
  %152 = load i32, i32* %button_press_state145, align 4
  %cmp146 = icmp eq i32 %152, 0
  br i1 %cmp146, label %land.lhs.true.147, label %if.end.165

land.lhs.true.147:                                ; preds = %land.lhs.true.144
  %153 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %active_modifier_state148 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %153, i32 0, i32 9
  %154 = load i32, i32* %active_modifier_state148, align 4
  %cmp149 = icmp eq i32 %154, 0
  br i1 %cmp149, label %land.lhs.true.150, label %if.end.165

land.lhs.true.150:                                ; preds = %land.lhs.true.147
  %155 = load double, double* %lower_ratio, align 8
  %156 = load double, double* %new_inverse_ratio, align 8
  %cmp151 = fcmp olt double %155, %156
  br i1 %cmp151, label %land.lhs.true.152, label %if.end.165

land.lhs.true.152:                                ; preds = %land.lhs.true.150
  %157 = load double, double* %higher_ratio, align 8
  %158 = load double, double* %new_inverse_ratio, align 8
  %cmp153 = fcmp ogt double %157, %158
  br i1 %cmp153, label %if.then.154, label %if.end.165

if.then.154:                                      ; preds = %land.lhs.true.152
  %159 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x1155 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %159, i32 0, i32 6
  %160 = load double, double* %x1155, align 8
  %161 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y2156 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %161, i32 0, i32 9
  %162 = load double, double* %y2156, align 8
  %add157 = fadd double %160, %162
  %163 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y1158 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %163, i32 0, i32 7
  %164 = load double, double* %y1158, align 8
  %sub159 = fsub double %add157, %164
  store double %sub159, double* %new_x2, align 8
  %165 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y1160 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %165, i32 0, i32 7
  %166 = load double, double* %y1160, align 8
  %167 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x2161 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %167, i32 0, i32 8
  %168 = load double, double* %x2161, align 8
  %add162 = fadd double %166, %168
  %169 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x1163 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %169, i32 0, i32 6
  %170 = load double, double* %x1163, align 8
  %sub164 = fsub double %add162, %170
  store double %sub164, double* %new_y2, align 8
  %171 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %172 = load double, double* %new_x2, align 8
  %173 = load double, double* %new_y2, align 8
  call void @gimp_rectangle_tool_synthesize_motion(%struct._GimpRectangleTool* %171, i32 7, double %172, double %173)
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.154, %land.lhs.true.152, %land.lhs.true.150, %land.lhs.true.147, %land.lhs.true.144, %land.lhs.true.141, %if.end.138
  br label %if.end.172

if.else.166:                                      ; preds = %if.else.111
  %174 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name167 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %174, i32 0, i32 1
  %175 = load i8*, i8** %name167, align 8
  %call168 = call i32 @strcmp(i8* %175, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0)) #8
  %cmp169 = icmp eq i32 %call168, 0
  br i1 %cmp169, label %if.then.170, label %if.end.171

if.then.170:                                      ; preds = %if.else.166
  %176 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  call void @gimp_rectangle_tool_update_highlight(%struct._GimpRectangleTool* %176)
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.170, %if.else.166
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.171, %if.end.165
  br label %if.end.173

if.end.173:                                       ; preds = %if.end.172, %if.end.110
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173, %if.end.73
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174, %if.end
  br label %if.end.176

if.end.176:                                       ; preds = %if.end.175, %if.then.29
  br label %if.end.177

if.end.177:                                       ; preds = %if.end.176, %if.then.18
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.177, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_rectangle_tool_control(%struct._GimpTool* %tool, i32 %action, %struct._GimpDisplay* %display) #1 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %action.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %rect_tool = alloca %struct._GimpRectangleTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %action, i32* %action.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRectangleTool*
  store %struct._GimpRectangleTool* %2, %struct._GimpRectangleTool** %rect_tool, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %3, 131072
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %call2 = call i64 @gimp_tool_action_get_type() #7
  %4 = load i32, i32* %action.addr, align 4
  %call3 = call i8* @gimp_enum_get_value_name(i64 %call2, i32 %4)
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 131072, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_rectangle_tool_control, i32 0, i32 0), i32 858, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i8* %call3)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load i32, i32* %action.addr, align 4
  switch i32 %5, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.4
    i32 2, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %do.end
  br label %sw.epilog

sw.bb.4:                                          ; preds = %do.end
  %6 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %call5 = call i32 @gimp_rectangle_tool_scale_has_changed(%struct._GimpRectangleTool* %6)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %sw.bb.4
  %7 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  call void @gimp_rectangle_tool_update_handle_sizes(%struct._GimpRectangleTool* %7)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %sw.bb.4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %do.end
  %8 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  call void @gimp_rectangle_tool_halt(%struct._GimpRectangleTool* %8)
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.9, %if.end.8, %sw.bb
  ret void
}

declare void @gimp_log(i32, i8*, i32, i8*, ...) #2

declare i8* @gimp_enum_get_value_name(i64, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_action_get_type() #3

; Function Attrs: nounwind uwtable
define internal i32 @gimp_rectangle_tool_scale_has_changed(%struct._GimpRectangleTool* %rect_tool) #1 {
entry:
  %retval = alloca i32, align 4
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %private = alloca %struct._GimpRectangleToolPrivate*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpRectangleTool*
  %call4 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %5)
  store %struct._GimpRectangleToolPrivate* %call4, %struct._GimpRectangleToolPrivate** %private, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %6, i32 0, i32 4
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %7, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display5 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %8, i32 0, i32 4
  %9 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display5, align 8
  %call6 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %9)
  store %struct._GimpDisplayShell* %call6, %struct._GimpDisplayShell** %shell, align 8
  %10 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %10, i32 0, i32 13
  %11 = load double, double* %scale_x, align 8
  %12 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %scale_x_used_for_handle_size_calculations = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %12, i32 0, i32 24
  %13 = load double, double* %scale_x_used_for_handle_size_calculations, align 8
  %cmp = fcmp une double %11, %13
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %14, i32 0, i32 14
  %15 = load double, double* %scale_y, align 8
  %16 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %scale_y_used_for_handle_size_calculations = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %16, i32 0, i32 25
  %17 = load double, double* %scale_y_used_for_handle_size_calculations, align 8
  %cmp7 = fcmp une double %15, %17
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end
  %18 = phi i1 [ true, %if.end ], [ %cmp7, %lor.rhs ]
  %lor.ext = zext i1 %18 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

return:                                           ; preds = %lor.end, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_tool_halt(%struct._GimpRectangleTool* %rect_tool) #1 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %options_private = alloca %struct._GimpRectangleOptionsPrivate*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %call2 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %3)
  %4 = bitcast %struct._GimpToolOptions* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_rectangle_options_interface_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpRectangleOptions*
  %call5 = call %struct._GimpRectangleOptionsPrivate* @gimp_rectangle_options_get_private(%struct._GimpRectangleOptions* %5)
  store %struct._GimpRectangleOptionsPrivate* %call5, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %6, i32 0, i32 4
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display6 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %8, i32 0, i32 4
  %9 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display6, align 8
  %call7 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %9)
  store %struct._GimpDisplayShell* %call7, %struct._GimpDisplayShell** %shell, align 8
  %10 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_set_highlight(%struct._GimpDisplayShell* %10, %struct._GdkRectangle* null)
  %11 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %12 = bitcast %struct._GimpDisplayShell* %11 to i8*
  %13 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %14 = bitcast %struct._GimpRectangleTool* %13 to i8*
  %call8 = call i32 @g_signal_handlers_disconnect_matched(i8* %12, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpDisplayShell*, %struct._GimpRectangleTool*)* @gimp_rectangle_tool_shell_scrolled to i8*), i8* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %16 = bitcast %struct._GimpRectangleTool* %15 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_draw_tool_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call9)
  %17 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpDrawTool*
  %call11 = call i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool* %17)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end
  %18 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %19 = bitcast %struct._GimpRectangleTool* %18 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_draw_tool_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call14)
  %20 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_stop(%struct._GimpDrawTool* %20)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.end
  %21 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display17 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %21, i32 0, i32 4
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %display17, align 8
  %22 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %drawable = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %22, i32 0, i32 5
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %drawable, align 8
  %23 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  call void @gimp_rectangle_tool_set_function(%struct._GimpRectangleTool* %23, i32 0)
  %24 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %auto_shrink_button = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %24, i32 0, i32 27
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %auto_shrink_button, align 8
  %tobool18 = icmp ne %struct._GtkWidget* %25, null
  br i1 %tobool18, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %if.end.16
  %26 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %auto_shrink_button20 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %26, i32 0, i32 27
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %auto_shrink_button20, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %27, i32 0)
  %28 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %auto_shrink_button21 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %28, i32 0, i32 27
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %auto_shrink_button21, align 8
  %30 = bitcast %struct._GtkWidget* %29 to i8*
  %31 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %32 = bitcast %struct._GimpRectangleTool* %31 to i8*
  %call22 = call i32 @g_signal_handlers_disconnect_matched(i8* %30, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpRectangleTool*)* @gimp_rectangle_tool_auto_shrink to i8*), i8* %32)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.19, %if.end.16
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_rectangle_tool_button_press(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, %struct._GimpDisplay* %display) #1 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %rect_tool = alloca %struct._GimpRectangleTool*, align 8
  %draw_tool = alloca %struct._GimpDrawTool*, align 8
  %private = alloca %struct._GimpRectangleToolPrivate*, align 8
  %snapped_x = alloca double, align 8
  %snapped_y = alloca double, align 8
  %snap_x = alloca i32, align 4
  %snap_y = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %shell = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_rectangle_tool_button_press, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %14 = bitcast %struct._GimpTool* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpRectangleTool*
  store %struct._GimpRectangleTool* %15, %struct._GimpRectangleTool** %rect_tool, align 8
  %16 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %17 = bitcast %struct._GimpTool* %16 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_draw_tool_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call13)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpDrawTool*
  store %struct._GimpDrawTool* %18, %struct._GimpDrawTool** %draw_tool, align 8
  %19 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %20 = bitcast %struct._GimpTool* %19 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call15)
  %21 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpRectangleTool*
  %call17 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %21)
  store %struct._GimpRectangleToolPrivate* %call17, %struct._GimpRectangleToolPrivate** %private, align 8
  %22 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %22)
  br label %do.body.18

do.body.18:                                       ; preds = %do.end
  %23 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %23, 131072
  %tobool19 = icmp ne i32 %and, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %do.body.18
  %24 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %24, i32 0, i32 0
  %25 = load double, double* %x, align 8
  %26 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %26, i32 0, i32 1
  %27 = load double, double* %y, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 131072, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_rectangle_tool_button_press, i32 0, i32 0), i32 906, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i32 0, i32 0), double %25, double %27)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %do.body.18
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %28 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %29 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display23 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %29, i32 0, i32 4
  %30 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display23, align 8
  %cmp24 = icmp ne %struct._GimpDisplay* %28, %30
  br i1 %cmp24, label %if.then.25, label %if.end.35

if.then.25:                                       ; preds = %do.end.22
  %31 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %call26 = call i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool* %31)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.32

if.then.28:                                       ; preds = %if.then.25
  %32 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %display30 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %32, i32 0, i32 1
  %33 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display30, align 8
  %call31 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %33)
  store %struct._GimpDisplayShell* %call31, %struct._GimpDisplayShell** %shell, align 8
  %34 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_set_highlight(%struct._GimpDisplayShell* %34, %struct._GdkRectangle* null)
  %35 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_stop(%struct._GimpDrawTool* %35)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.28, %if.then.25
  %36 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  call void @gimp_rectangle_tool_set_function(%struct._GimpRectangleTool* %36, i32 2)
  %37 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x33 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %37, i32 0, i32 0
  %38 = load double, double* %x33, align 8
  %39 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x2 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %39, i32 0, i32 8
  store double %38, double* %x2, align 8
  %40 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x1 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %40, i32 0, i32 6
  store double %38, double* %x1, align 8
  %41 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y34 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %41, i32 0, i32 1
  %42 = load double, double* %y34, align 8
  %43 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y2 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %43, i32 0, i32 9
  store double %42, double* %y2, align 8
  %44 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y1 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %44, i32 0, i32 7
  store double %42, double* %y1, align 8
  %45 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %46 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_rectangle_tool_start(%struct._GimpRectangleTool* %45, %struct._GimpDisplay* %46)
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.32, %do.end.22
  %47 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x136 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %47, i32 0, i32 6
  %48 = load double, double* %x136, align 8
  %49 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %saved_x1 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %49, i32 0, i32 26
  store double %48, double* %saved_x1, align 8
  %50 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y137 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %50, i32 0, i32 7
  %51 = load double, double* %y137, align 8
  %52 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %saved_y1 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %52, i32 0, i32 27
  store double %51, double* %saved_y1, align 8
  %53 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x238 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %53, i32 0, i32 8
  %54 = load double, double* %x238, align 8
  %55 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %saved_x2 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %55, i32 0, i32 28
  store double %54, double* %saved_x2, align 8
  %56 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y239 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %56, i32 0, i32 9
  %57 = load double, double* %y239, align 8
  %58 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %saved_y2 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %58, i32 0, i32 29
  store double %57, double* %saved_y2, align 8
  %59 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %60 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  call void @gimp_rectangle_tool_setup_snap_offsets(%struct._GimpRectangleTool* %59, %struct._GimpCoords* %60)
  %61 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %61, i32 0, i32 3
  %62 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_get_snap_offsets(%struct._GimpToolControl* %62, i32* %snap_x, i32* %snap_y, i32* null, i32* null)
  %63 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x40 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %63, i32 0, i32 0
  %64 = load double, double* %x40, align 8
  %65 = load i32, i32* %snap_x, align 4
  %conv = sitofp i32 %65 to double
  %add = fadd double %64, %conv
  store double %add, double* %snapped_x, align 8
  %66 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y41 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %66, i32 0, i32 1
  %67 = load double, double* %y41, align 8
  %68 = load i32, i32* %snap_y, align 4
  %conv42 = sitofp i32 %68 to double
  %add43 = fadd double %67, %conv42
  store double %add43, double* %snapped_y, align 8
  %69 = load double, double* %snapped_x, align 8
  %70 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %lastx = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %70, i32 0, i32 17
  store double %69, double* %lastx, align 8
  %71 = load double, double* %snapped_y, align 8
  %72 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %lasty = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %72, i32 0, i32 18
  store double %71, double* %lasty, align 8
  %73 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %function = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %73, i32 0, i32 14
  %74 = load i32, i32* %function, align 4
  %cmp44 = icmp eq i32 %74, 2
  br i1 %cmp44, label %if.then.46, label %if.else.51

if.then.46:                                       ; preds = %if.end.35
  %75 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %is_new = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %75, i32 0, i32 0
  store i32 1, i32* %is_new, align 4
  %76 = load double, double* %snapped_x, align 8
  %77 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x247 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %77, i32 0, i32 8
  store double %76, double* %x247, align 8
  %78 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x148 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %78, i32 0, i32 6
  store double %76, double* %x148, align 8
  %79 = load double, double* %snapped_y, align 8
  %80 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y249 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %80, i32 0, i32 9
  store double %79, double* %y249, align 8
  %81 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y150 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %81, i32 0, i32 7
  store double %79, double* %y150, align 8
  %82 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  call void @gimp_rectangle_tool_update_handle_sizes(%struct._GimpRectangleTool* %82)
  %83 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %narrow_mode = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %83, i32 0, i32 23
  store i32 0, i32* %narrow_mode, align 4
  %84 = load double, double* %snapped_x, align 8
  %85 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %center_x_on_fixed_center = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %85, i32 0, i32 3
  store double %84, double* %center_x_on_fixed_center, align 8
  %86 = load double, double* %snapped_y, align 8
  %87 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %center_y_on_fixed_center = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %87, i32 0, i32 4
  store double %86, double* %center_y_on_fixed_center, align 8
  %88 = load double, double* %snapped_x, align 8
  %89 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %other_side_x = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %89, i32 0, i32 1
  store double %88, double* %other_side_x, align 8
  %90 = load double, double* %snapped_y, align 8
  %91 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %other_side_y = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %91, i32 0, i32 2
  store double %90, double* %other_side_y, align 8
  br label %if.end.64

if.else.51:                                       ; preds = %if.end.35
  %92 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %is_new52 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %92, i32 0, i32 0
  store i32 0, i32* %is_new52, align 4
  %93 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x153 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %93, i32 0, i32 6
  %94 = load double, double* %x153, align 8
  %95 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x254 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %95, i32 0, i32 8
  %96 = load double, double* %x254, align 8
  %add55 = fadd double %94, %96
  %div = fdiv double %add55, 2.000000e+00
  %97 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %center_x_on_fixed_center56 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %97, i32 0, i32 3
  store double %div, double* %center_x_on_fixed_center56, align 8
  %98 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y157 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %98, i32 0, i32 7
  %99 = load double, double* %y157, align 8
  %100 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y258 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %100, i32 0, i32 9
  %101 = load double, double* %y258, align 8
  %add59 = fadd double %99, %101
  %div60 = fdiv double %add59, 2.000000e+00
  %102 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %center_y_on_fixed_center61 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %102, i32 0, i32 4
  store double %div60, double* %center_y_on_fixed_center61, align 8
  %103 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %104 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %other_side_x62 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %104, i32 0, i32 1
  %105 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %other_side_y63 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %105, i32 0, i32 2
  call void @gimp_rectangle_tool_get_other_side_coord(%struct._GimpRectangleTool* %103, double* %other_side_x62, double* %other_side_y63)
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.51, %if.then.46
  %106 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  call void @gimp_rectangle_tool_update_int_rect(%struct._GimpRectangleTool* %106)
  %107 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %call65 = call i32 @gimp_rectangle_tool_rect_adjusting_func(%struct._GimpRectangleTool* %107)
  %108 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %rect_adjusting = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %108, i32 0, i32 5
  store i32 %call65, i32* %rect_adjusting, align 4
  %109 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  call void @gimp_rectangle_tool_update_highlight(%struct._GimpRectangleTool* %109)
  %110 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %110)
  br label %return

return:                                           ; preds = %if.end.64, %if.else.9
  ret void
}

declare i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool*) #2

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #2

declare void @gimp_display_shell_set_highlight(%struct._GimpDisplayShell*, %struct._GdkRectangle*) #2

declare void @gimp_draw_tool_stop(%struct._GimpDrawTool*) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_tool_start(%struct._GimpRectangleTool* %rect_tool, %struct._GimpDisplay* %display) #1 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %options_private = alloca %struct._GimpRectangleOptionsPrivate*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %entry17 = alloca %struct._GtkWidget*, align 8
  %entry26 = alloca %struct._GtkWidget*, align 8
  %entry37 = alloca %struct._GtkWidget*, align 8
  %entry48 = alloca %struct._GtkWidget*, align 8
  %entry59 = alloca %struct._GtkWidget*, align 8
  %entry70 = alloca %struct._GtkWidget*, align 8
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %call2 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %3)
  %4 = bitcast %struct._GimpToolOptions* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_rectangle_options_interface_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpRectangleOptions*
  %call5 = call %struct._GimpRectangleOptionsPrivate* @gimp_rectangle_options_get_private(%struct._GimpRectangleOptions* %5)
  store %struct._GimpRectangleOptionsPrivate* %call5, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %6 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call6 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %6)
  store %struct._GimpImage* %call6, %struct._GimpImage** %image, align 8
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %8 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display7 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %8, i32 0, i32 4
  store %struct._GimpDisplay* %7, %struct._GimpDisplay** %display7, align 8
  %9 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display8 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %9, i32 0, i32 4
  %10 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display8, align 8
  %call9 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %10)
  %11 = bitcast %struct._GimpDisplayShell* %call9 to i8*
  %12 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %13 = bitcast %struct._GimpRectangleTool* %12 to i8*
  %call10 = call i64 @g_signal_connect_object(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDisplayShell*, %struct._GimpRectangleTool*)* @gimp_rectangle_tool_shell_scrolled to void ()*), i8* %13, i32 0)
  %14 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  call void @gimp_rectangle_tool_update_highlight(%struct._GimpRectangleTool* %14)
  %15 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  call void @gimp_rectangle_tool_update_handle_sizes(%struct._GimpRectangleTool* %15)
  %16 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %17 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display11 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %17, i32 0, i32 4
  %18 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display11, align 8
  %19 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %19, i32 0, i32 3
  %20 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call12 = call i32 @gimp_tool_control_get_precision(%struct._GimpToolControl* %20)
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0)) #6
  call void @gimp_tool_push_status_coords(%struct._GimpTool* %16, %struct._GimpDisplay* %18, i32 %call12, i8* %call13, double 0.000000e+00, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), double 0.000000e+00, i8* null)
  %21 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %22 = bitcast %struct._GimpTool* %21 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_draw_tool_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call14)
  %23 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpDrawTool*
  %24 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display16 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %24, i32 0, i32 4
  %25 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display16, align 8
  call void @gimp_draw_tool_start(%struct._GimpDrawTool* %23, %struct._GimpDisplay* %25)
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %26, double* %xres, double* %yres)
  %27 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %fixed_width_entry = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %27, i32 0, i32 28
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %fixed_width_entry, align 8
  %tobool = icmp ne %struct._GtkWidget* %28, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %29 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %fixed_width_entry18 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %29, i32 0, i32 28
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %fixed_width_entry18, align 8
  store %struct._GtkWidget* %30, %struct._GtkWidget** %entry17, align 8
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %entry17, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_size_entry_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call19)
  %33 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpSizeEntry*
  %34 = load double, double* %xres, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %33, i32 0, double %34, i32 0)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %entry17, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_size_entry_get_type() #7
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call21)
  %37 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpSizeEntry*
  %38 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call23 = call i32 @gimp_image_get_width(%struct._GimpImage* %38)
  %conv = sitofp i32 %call23 to double
  call void @gimp_size_entry_set_size(%struct._GimpSizeEntry* %37, i32 0, double 0.000000e+00, double %conv)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %39 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %fixed_height_entry = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %39, i32 0, i32 29
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %fixed_height_entry, align 8
  %tobool24 = icmp ne %struct._GtkWidget* %40, null
  br i1 %tobool24, label %if.then.25, label %if.end.34

if.then.25:                                       ; preds = %if.end
  %41 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %fixed_height_entry27 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %41, i32 0, i32 29
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %fixed_height_entry27, align 8
  store %struct._GtkWidget* %42, %struct._GtkWidget** %entry26, align 8
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %entry26, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_size_entry_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call28)
  %45 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpSizeEntry*
  %46 = load double, double* %yres, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %45, i32 0, double %46, i32 0)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %entry26, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_size_entry_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call30)
  %49 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpSizeEntry*
  %50 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call32 = call i32 @gimp_image_get_height(%struct._GimpImage* %50)
  %conv33 = sitofp i32 %call32 to double
  call void @gimp_size_entry_set_size(%struct._GimpSizeEntry* %49, i32 0, double 0.000000e+00, double %conv33)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.25, %if.end
  %51 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %x_entry = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %51, i32 0, i32 36
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %x_entry, align 8
  %tobool35 = icmp ne %struct._GtkWidget* %52, null
  br i1 %tobool35, label %if.then.36, label %if.end.45

if.then.36:                                       ; preds = %if.end.34
  %53 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %x_entry38 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %53, i32 0, i32 36
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %x_entry38, align 8
  store %struct._GtkWidget* %54, %struct._GtkWidget** %entry37, align 8
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %entry37, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_size_entry_get_type() #7
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call39)
  %57 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpSizeEntry*
  %58 = load double, double* %xres, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %57, i32 0, double %58, i32 0)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %entry37, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call41 = call i64 @gimp_size_entry_get_type() #7
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call41)
  %61 = bitcast %struct._GTypeInstance* %call42 to %struct._GimpSizeEntry*
  %62 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call43 = call i32 @gimp_image_get_width(%struct._GimpImage* %62)
  %conv44 = sitofp i32 %call43 to double
  call void @gimp_size_entry_set_size(%struct._GimpSizeEntry* %61, i32 0, double 0.000000e+00, double %conv44)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.36, %if.end.34
  %63 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %y_entry = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %63, i32 0, i32 37
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %y_entry, align 8
  %tobool46 = icmp ne %struct._GtkWidget* %64, null
  br i1 %tobool46, label %if.then.47, label %if.end.56

if.then.47:                                       ; preds = %if.end.45
  %65 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %y_entry49 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %65, i32 0, i32 37
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %y_entry49, align 8
  store %struct._GtkWidget* %66, %struct._GtkWidget** %entry48, align 8
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %entry48, align 8
  %68 = bitcast %struct._GtkWidget* %67 to %struct._GTypeInstance*
  %call50 = call i64 @gimp_size_entry_get_type() #7
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call50)
  %69 = bitcast %struct._GTypeInstance* %call51 to %struct._GimpSizeEntry*
  %70 = load double, double* %yres, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %69, i32 0, double %70, i32 0)
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %entry48, align 8
  %72 = bitcast %struct._GtkWidget* %71 to %struct._GTypeInstance*
  %call52 = call i64 @gimp_size_entry_get_type() #7
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call52)
  %73 = bitcast %struct._GTypeInstance* %call53 to %struct._GimpSizeEntry*
  %74 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call54 = call i32 @gimp_image_get_height(%struct._GimpImage* %74)
  %conv55 = sitofp i32 %call54 to double
  call void @gimp_size_entry_set_size(%struct._GimpSizeEntry* %73, i32 0, double 0.000000e+00, double %conv55)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.47, %if.end.45
  %75 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %width_entry = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %75, i32 0, i32 38
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %width_entry, align 8
  %tobool57 = icmp ne %struct._GtkWidget* %76, null
  br i1 %tobool57, label %if.then.58, label %if.end.67

if.then.58:                                       ; preds = %if.end.56
  %77 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %width_entry60 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %77, i32 0, i32 38
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %width_entry60, align 8
  store %struct._GtkWidget* %78, %struct._GtkWidget** %entry59, align 8
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %entry59, align 8
  %80 = bitcast %struct._GtkWidget* %79 to %struct._GTypeInstance*
  %call61 = call i64 @gimp_size_entry_get_type() #7
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 %call61)
  %81 = bitcast %struct._GTypeInstance* %call62 to %struct._GimpSizeEntry*
  %82 = load double, double* %xres, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %81, i32 0, double %82, i32 0)
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %entry59, align 8
  %84 = bitcast %struct._GtkWidget* %83 to %struct._GTypeInstance*
  %call63 = call i64 @gimp_size_entry_get_type() #7
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call63)
  %85 = bitcast %struct._GTypeInstance* %call64 to %struct._GimpSizeEntry*
  %86 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call65 = call i32 @gimp_image_get_width(%struct._GimpImage* %86)
  %conv66 = sitofp i32 %call65 to double
  call void @gimp_size_entry_set_size(%struct._GimpSizeEntry* %85, i32 0, double 0.000000e+00, double %conv66)
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.58, %if.end.56
  %87 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %height_entry = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %87, i32 0, i32 39
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %height_entry, align 8
  %tobool68 = icmp ne %struct._GtkWidget* %88, null
  br i1 %tobool68, label %if.then.69, label %if.end.78

if.then.69:                                       ; preds = %if.end.67
  %89 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %height_entry71 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %89, i32 0, i32 39
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %height_entry71, align 8
  store %struct._GtkWidget* %90, %struct._GtkWidget** %entry70, align 8
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %entry70, align 8
  %92 = bitcast %struct._GtkWidget* %91 to %struct._GTypeInstance*
  %call72 = call i64 @gimp_size_entry_get_type() #7
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call72)
  %93 = bitcast %struct._GTypeInstance* %call73 to %struct._GimpSizeEntry*
  %94 = load double, double* %yres, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %93, i32 0, double %94, i32 0)
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %entry70, align 8
  %96 = bitcast %struct._GtkWidget* %95 to %struct._GTypeInstance*
  %call74 = call i64 @gimp_size_entry_get_type() #7
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 %call74)
  %97 = bitcast %struct._GTypeInstance* %call75 to %struct._GimpSizeEntry*
  %98 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call76 = call i32 @gimp_image_get_height(%struct._GimpImage* %98)
  %conv77 = sitofp i32 %call76 to double
  call void @gimp_size_entry_set_size(%struct._GimpSizeEntry* %97, i32 0, double 0.000000e+00, double %conv77)
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.69, %if.end.67
  %99 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %auto_shrink_button = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %99, i32 0, i32 27
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %auto_shrink_button, align 8
  %tobool79 = icmp ne %struct._GtkWidget* %100, null
  br i1 %tobool79, label %if.then.80, label %if.end.84

if.then.80:                                       ; preds = %if.end.78
  %101 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %auto_shrink_button81 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %101, i32 0, i32 27
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %auto_shrink_button81, align 8
  %103 = bitcast %struct._GtkWidget* %102 to i8*
  %104 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %105 = bitcast %struct._GimpRectangleTool* %104 to i8*
  %call82 = call i64 @g_signal_connect_data(i8* %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GimpRectangleTool*)* @gimp_rectangle_tool_auto_shrink to void ()*), i8* %105, void (i8*, %struct._GClosure*)* null, i32 2)
  %106 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %auto_shrink_button83 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %106, i32 0, i32 27
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %auto_shrink_button83, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %107, i32 1)
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.80, %if.end.78
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_tool_setup_snap_offsets(%struct._GimpRectangleTool* %rect_tool, %struct._GimpCoords* %coords) #1 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %private = alloca %struct._GimpRectangleToolPrivate*, align 8
  %pub_x1 = alloca double, align 8
  %pub_y1 = alloca double, align 8
  %pub_x2 = alloca double, align 8
  %pub_y2 = alloca double, align 8
  %pub_coord_x = alloca double, align 8
  %pub_coord_y = alloca double, align 8
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %4 = bitcast %struct._GimpRectangleTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpRectangleTool*
  %call4 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %5)
  store %struct._GimpRectangleToolPrivate* %call4, %struct._GimpRectangleToolPrivate** %private, align 8
  %6 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  call void @gimp_rectangle_tool_get_public_rect(%struct._GimpRectangleTool* %6, double* %pub_x1, double* %pub_y1, double* %pub_x2, double* %pub_y2)
  %7 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %8 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %8, i32 0, i32 0
  %9 = load double, double* %x, align 8
  %10 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %10, i32 0, i32 1
  %11 = load double, double* %y, align 8
  call void @gimp_rectangle_tool_adjust_coord(%struct._GimpRectangleTool* %7, double %9, double %11, double* %pub_coord_x, double* %pub_coord_y)
  %12 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %function = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %12, i32 0, i32 14
  %13 = load i32, i32* %function, align 4
  switch i32 %13, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb.7
    i32 6, label %sw.bb.13
    i32 7, label %sw.bb.19
    i32 8, label %sw.bb.25
    i32 9, label %sw.bb.29
    i32 10, label %sw.bb.33
    i32 11, label %sw.bb.37
    i32 3, label %sw.bb.41
  ]

sw.bb:                                            ; preds = %entry
  %14 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %14, i32 0, i32 3
  %15 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %16 = load double, double* %pub_x1, align 8
  %17 = load double, double* %pub_coord_x, align 8
  %sub = fsub double %16, %17
  %conv = fptosi double %sub to i32
  %18 = load double, double* %pub_y1, align 8
  %19 = load double, double* %pub_coord_y, align 8
  %sub5 = fsub double %18, %19
  %conv6 = fptosi double %sub5 to i32
  call void @gimp_tool_control_set_snap_offsets(%struct._GimpToolControl* %15, i32 %conv, i32 %conv6, i32 0, i32 0)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %20 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control8 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %20, i32 0, i32 3
  %21 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control8, align 8
  %22 = load double, double* %pub_x2, align 8
  %23 = load double, double* %pub_coord_x, align 8
  %sub9 = fsub double %22, %23
  %conv10 = fptosi double %sub9 to i32
  %24 = load double, double* %pub_y1, align 8
  %25 = load double, double* %pub_coord_y, align 8
  %sub11 = fsub double %24, %25
  %conv12 = fptosi double %sub11 to i32
  call void @gimp_tool_control_set_snap_offsets(%struct._GimpToolControl* %21, i32 %conv10, i32 %conv12, i32 0, i32 0)
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %26 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control14 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %26, i32 0, i32 3
  %27 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control14, align 8
  %28 = load double, double* %pub_x1, align 8
  %29 = load double, double* %pub_coord_x, align 8
  %sub15 = fsub double %28, %29
  %conv16 = fptosi double %sub15 to i32
  %30 = load double, double* %pub_y2, align 8
  %31 = load double, double* %pub_coord_y, align 8
  %sub17 = fsub double %30, %31
  %conv18 = fptosi double %sub17 to i32
  call void @gimp_tool_control_set_snap_offsets(%struct._GimpToolControl* %27, i32 %conv16, i32 %conv18, i32 0, i32 0)
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  %32 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control20 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %32, i32 0, i32 3
  %33 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control20, align 8
  %34 = load double, double* %pub_x2, align 8
  %35 = load double, double* %pub_coord_x, align 8
  %sub21 = fsub double %34, %35
  %conv22 = fptosi double %sub21 to i32
  %36 = load double, double* %pub_y2, align 8
  %37 = load double, double* %pub_coord_y, align 8
  %sub23 = fsub double %36, %37
  %conv24 = fptosi double %sub23 to i32
  call void @gimp_tool_control_set_snap_offsets(%struct._GimpToolControl* %33, i32 %conv22, i32 %conv24, i32 0, i32 0)
  br label %sw.epilog

sw.bb.25:                                         ; preds = %entry
  %38 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control26 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %38, i32 0, i32 3
  %39 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control26, align 8
  %40 = load double, double* %pub_x1, align 8
  %41 = load double, double* %pub_coord_x, align 8
  %sub27 = fsub double %40, %41
  %conv28 = fptosi double %sub27 to i32
  call void @gimp_tool_control_set_snap_offsets(%struct._GimpToolControl* %39, i32 %conv28, i32 0, i32 0, i32 0)
  br label %sw.epilog

sw.bb.29:                                         ; preds = %entry
  %42 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control30 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %42, i32 0, i32 3
  %43 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control30, align 8
  %44 = load double, double* %pub_x2, align 8
  %45 = load double, double* %pub_coord_x, align 8
  %sub31 = fsub double %44, %45
  %conv32 = fptosi double %sub31 to i32
  call void @gimp_tool_control_set_snap_offsets(%struct._GimpToolControl* %43, i32 %conv32, i32 0, i32 0, i32 0)
  br label %sw.epilog

sw.bb.33:                                         ; preds = %entry
  %46 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control34 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %46, i32 0, i32 3
  %47 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control34, align 8
  %48 = load double, double* %pub_y1, align 8
  %49 = load double, double* %pub_coord_y, align 8
  %sub35 = fsub double %48, %49
  %conv36 = fptosi double %sub35 to i32
  call void @gimp_tool_control_set_snap_offsets(%struct._GimpToolControl* %47, i32 0, i32 %conv36, i32 0, i32 0)
  br label %sw.epilog

sw.bb.37:                                         ; preds = %entry
  %50 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control38 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %50, i32 0, i32 3
  %51 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control38, align 8
  %52 = load double, double* %pub_y2, align 8
  %53 = load double, double* %pub_coord_y, align 8
  %sub39 = fsub double %52, %53
  %conv40 = fptosi double %sub39 to i32
  call void @gimp_tool_control_set_snap_offsets(%struct._GimpToolControl* %51, i32 0, i32 %conv40, i32 0, i32 0)
  br label %sw.epilog

sw.bb.41:                                         ; preds = %entry
  %54 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control42 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %54, i32 0, i32 3
  %55 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control42, align 8
  %56 = load double, double* %pub_x1, align 8
  %57 = load double, double* %pub_coord_x, align 8
  %sub43 = fsub double %56, %57
  %conv44 = fptosi double %sub43 to i32
  %58 = load double, double* %pub_y1, align 8
  %59 = load double, double* %pub_coord_y, align 8
  %sub45 = fsub double %58, %59
  %conv46 = fptosi double %sub45 to i32
  %60 = load double, double* %pub_x2, align 8
  %61 = load double, double* %pub_x1, align 8
  %sub47 = fsub double %60, %61
  %conv48 = fptosi double %sub47 to i32
  %62 = load double, double* %pub_y2, align 8
  %63 = load double, double* %pub_y1, align 8
  %sub49 = fsub double %62, %63
  %conv50 = fptosi double %sub49 to i32
  call void @gimp_tool_control_set_snap_offsets(%struct._GimpToolControl* %55, i32 %conv44, i32 %conv46, i32 %conv48, i32 %conv50)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.41, %sw.bb.37, %sw.bb.33, %sw.bb.29, %sw.bb.25, %sw.bb.19, %sw.bb.13, %sw.bb.7, %sw.bb
  ret void
}

declare void @gimp_tool_control_get_snap_offsets(%struct._GimpToolControl*, i32*, i32*, i32*, i32*) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_tool_get_other_side_coord(%struct._GimpRectangleTool* %rect_tool, double* %other_side_x, double* %other_side_y) #1 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %other_side_x.addr = alloca double*, align 8
  %other_side_y.addr = alloca double*, align 8
  %other_x = alloca double*, align 8
  %other_y = alloca double*, align 8
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  store double* %other_side_x, double** %other_side_x.addr, align 8
  store double* %other_side_y, double** %other_side_y.addr, align 8
  store double* null, double** %other_x, align 8
  store double* null, double** %other_y, align 8
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  call void @gimp_rectangle_tool_get_other_side(%struct._GimpRectangleTool* %0, double** %other_x, double** %other_y)
  %1 = load double*, double** %other_x, align 8
  %tobool = icmp ne double* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load double*, double** %other_x, align 8
  %3 = load double, double* %2, align 8
  %4 = load double*, double** %other_side_x.addr, align 8
  store double %3, double* %4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load double*, double** %other_y, align 8
  %tobool1 = icmp ne double* %5, null
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %6 = load double*, double** %other_y, align 8
  %7 = load double, double* %6, align 8
  %8 = load double*, double** %other_side_y.addr, align 8
  store double %7, double* %8, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_rectangle_tool_rect_adjusting_func(%struct._GimpRectangleTool* %rect_tool) #1 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %private = alloca %struct._GimpRectangleToolPrivate*, align 8
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRectangleTool*
  %call2 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %2)
  store %struct._GimpRectangleToolPrivate* %call2, %struct._GimpRectangleToolPrivate** %private, align 8
  %3 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %call3 = call i32 @gimp_rectangle_tool_rect_rubber_banding_func(%struct._GimpRectangleTool* %3)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %4 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %function = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %4, i32 0, i32 14
  %5 = load i32, i32* %function, align 4
  %cmp = icmp eq i32 %5, 3
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %6 = phi i1 [ true, %entry ], [ %cmp, %lor.rhs ]
  %lor.ext = zext i1 %6 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define void @gimp_rectangle_tool_button_release(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %release_type, %struct._GimpDisplay* %display) #1 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %release_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %rect_tool = alloca %struct._GimpRectangleTool*, align 8
  %private = alloca %struct._GimpRectangleToolPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %release_type, i32* %release_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_rectangle_tool_button_release, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %14 = bitcast %struct._GimpTool* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpRectangleTool*
  store %struct._GimpRectangleTool* %15, %struct._GimpRectangleTool** %rect_tool, align 8
  %16 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %17 = bitcast %struct._GimpTool* %16 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call13)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpRectangleTool*
  %call15 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %18)
  store %struct._GimpRectangleToolPrivate* %call15, %struct._GimpRectangleToolPrivate** %private, align 8
  %19 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %20 = bitcast %struct._GimpTool* %19 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_draw_tool_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call16)
  %21 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %21)
  br label %do.body.18

do.body.18:                                       ; preds = %do.end
  %22 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %22, 131072
  %tobool19 = icmp ne i32 %and, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %do.body.18
  %23 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %23, i32 0, i32 0
  %24 = load double, double* %x, align 8
  %25 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %25, i32 0, i32 1
  %26 = load double, double* %y, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 131072, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_rectangle_tool_button_release, i32 0, i32 0), i32 1018, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i32 0, i32 0), double %24, double %26)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %do.body.18
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %27 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %function = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %27, i32 0, i32 14
  %28 = load i32, i32* %function, align 4
  %cmp23 = icmp eq i32 %28, 13
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %do.end.22
  %29 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %30 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_pop_status(%struct._GimpTool* %29, %struct._GimpDisplay* %30)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %do.end.22
  %31 = load i32, i32* %release_type.addr, align 4
  switch i32 %31, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.26
    i32 2, label %sw.bb.31
    i32 3, label %sw.bb.40
  ]

sw.bb:                                            ; preds = %if.end.25
  %32 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  call void @gimp_rectangle_tool_rectangle_change_complete(%struct._GimpRectangleTool* %32)
  br label %sw.epilog

sw.bb.26:                                         ; preds = %if.end.25
  %33 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %saved_x1 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %33, i32 0, i32 26
  %34 = load double, double* %saved_x1, align 8
  %35 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x1 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %35, i32 0, i32 6
  store double %34, double* %x1, align 8
  %36 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %saved_y1 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %36, i32 0, i32 27
  %37 = load double, double* %saved_y1, align 8
  %38 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y1 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %38, i32 0, i32 7
  store double %37, double* %y1, align 8
  %39 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %saved_x2 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %39, i32 0, i32 28
  %40 = load double, double* %saved_x2, align 8
  %41 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x2 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %41, i32 0, i32 8
  store double %40, double* %x2, align 8
  %42 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %saved_y2 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %42, i32 0, i32 29
  %43 = load double, double* %saved_y2, align 8
  %44 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y2 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %44, i32 0, i32 9
  store double %43, double* %y2, align 8
  %45 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  call void @gimp_rectangle_tool_update_int_rect(%struct._GimpRectangleTool* %45)
  %46 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %call27 = call i32 @gimp_rectangle_tool_rectangle_is_new(%struct._GimpRectangleTool* %46)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %sw.bb.26
  %47 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  call void @gimp_rectangle_tool_halt(%struct._GimpRectangleTool* %47)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %sw.bb.26
  br label %sw.epilog

sw.bb.31:                                         ; preds = %if.end.25
  %48 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %function32 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %48, i32 0, i32 14
  %49 = load i32, i32* %function32, align 4
  %cmp33 = icmp eq i32 %49, 1
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %sw.bb.31
  br label %sw.epilog

if.end.35:                                        ; preds = %sw.bb.31
  %50 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %call36 = call i32 @gimp_rectangle_tool_execute(%struct._GimpRectangleTool* %50)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.35
  %51 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  call void @gimp_rectangle_tool_halt(%struct._GimpRectangleTool* %51)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.end.35
  br label %sw.epilog

sw.bb.40:                                         ; preds = %if.end.25
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.25, %sw.bb.40, %if.end.39, %if.then.34, %if.end.30, %sw.bb
  %52 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x141 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %52, i32 0, i32 6
  %53 = load double, double* %x141, align 8
  %54 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x242 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %54, i32 0, i32 8
  %55 = load double, double* %x242, align 8
  %add = fadd double %53, %55
  %div = fdiv double %add, 2.000000e+00
  %56 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %center_x_on_fixed_center = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %56, i32 0, i32 3
  store double %div, double* %center_x_on_fixed_center, align 8
  %57 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y143 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %57, i32 0, i32 7
  %58 = load double, double* %y143, align 8
  %59 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y244 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %59, i32 0, i32 9
  %60 = load double, double* %y244, align 8
  %add45 = fadd double %58, %60
  %div46 = fdiv double %add45, 2.000000e+00
  %61 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %center_y_on_fixed_center = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %61, i32 0, i32 4
  store double %div46, double* %center_y_on_fixed_center, align 8
  %62 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %62, i32 0, i32 3
  %63 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_set_snap_offsets(%struct._GimpToolControl* %63, i32 0, i32 0, i32 0, i32 0)
  %64 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %rect_adjusting = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %64, i32 0, i32 5
  store i32 0, i32* %rect_adjusting, align 4
  %65 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  call void @gimp_rectangle_tool_update_highlight(%struct._GimpRectangleTool* %65)
  %66 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  call void @gimp_rectangle_tool_update_handle_sizes(%struct._GimpRectangleTool* %66)
  %67 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %68 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_rectangle_tool_update_options(%struct._GimpRectangleTool* %67, %struct._GimpDisplay* %68)
  %69 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %70 = bitcast %struct._GimpTool* %69 to %struct._GTypeInstance*
  %call47 = call i64 @gimp_draw_tool_get_type() #7
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call47)
  %71 = bitcast %struct._GTypeInstance* %call48 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %71)
  br label %return

return:                                           ; preds = %sw.epilog, %if.else.9
  ret void
}

declare void @gimp_tool_pop_status(%struct._GimpTool*, %struct._GimpDisplay*) #2

; Function Attrs: nounwind uwtable
define i32 @gimp_rectangle_tool_execute(%struct._GimpRectangleTool* %rect_tool) #1 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %iface = alloca %struct._GimpRectangleToolInterface*, align 8
  %retval1 = alloca i32, align 4
  %pub_x1 = alloca double, align 8
  %pub_y1 = alloca double, align 8
  %pub_x2 = alloca double, align 8
  %pub_y2 = alloca double, align 8
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  store i32 0, i32* %retval1, align 4
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %3 = bitcast %struct._GTypeClass* %2 to i8*
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call2 = call i8* @g_type_interface_peek(i8* %3, i64 %call)
  %4 = bitcast i8* %call2 to %struct._GimpRectangleToolInterface*
  store %struct._GimpRectangleToolInterface* %4, %struct._GimpRectangleToolInterface** %iface, align 8
  %5 = load %struct._GimpRectangleToolInterface*, %struct._GimpRectangleToolInterface** %iface, align 8
  %execute = getelementptr inbounds %struct._GimpRectangleToolInterface, %struct._GimpRectangleToolInterface* %5, i32 0, i32 1
  %6 = load i32 (%struct._GimpRectangleTool*, i32, i32, i32, i32)*, i32 (%struct._GimpRectangleTool*, i32, i32, i32, i32)** %execute, align 8
  %tobool = icmp ne i32 (%struct._GimpRectangleTool*, i32, i32, i32, i32)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  call void @gimp_rectangle_tool_get_public_rect(%struct._GimpRectangleTool* %7, double* %pub_x1, double* %pub_y1, double* %pub_x2, double* %pub_y2)
  %8 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %9 = bitcast %struct._GimpRectangleTool* %8 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_draw_tool_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call3)
  %10 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %10)
  %11 = load %struct._GimpRectangleToolInterface*, %struct._GimpRectangleToolInterface** %iface, align 8
  %execute5 = getelementptr inbounds %struct._GimpRectangleToolInterface, %struct._GimpRectangleToolInterface* %11, i32 0, i32 1
  %12 = load i32 (%struct._GimpRectangleTool*, i32, i32, i32, i32)*, i32 (%struct._GimpRectangleTool*, i32, i32, i32, i32)** %execute5, align 8
  %13 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %14 = load double, double* %pub_x1, align 8
  %conv = fptosi double %14 to i32
  %15 = load double, double* %pub_y1, align 8
  %conv6 = fptosi double %15 to i32
  %16 = load double, double* %pub_x2, align 8
  %17 = load double, double* %pub_x1, align 8
  %sub = fsub double %16, %17
  %conv7 = fptosi double %sub to i32
  %18 = load double, double* %pub_y2, align 8
  %19 = load double, double* %pub_y1, align 8
  %sub8 = fsub double %18, %19
  %conv9 = fptosi double %sub8 to i32
  %call10 = call i32 %12(%struct._GimpRectangleTool* %13, i32 %conv, i32 %conv6, i32 %conv7, i32 %conv9)
  store i32 %call10, i32* %retval1, align 4
  %20 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  call void @gimp_rectangle_tool_update_highlight(%struct._GimpRectangleTool* %20)
  %21 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %22 = bitcast %struct._GimpRectangleTool* %21 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_draw_tool_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call11)
  %23 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %23)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %24 = load i32, i32* %retval1, align 4
  ret i32 %24
}

declare void @gimp_tool_control_set_snap_offsets(%struct._GimpToolControl*, i32, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_tool_update_options(%struct._GimpRectangleTool* %rect_tool, %struct._GimpDisplay* %display) #1 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %options = alloca %struct._GimpRectangleOptions*, align 8
  %x1 = alloca double, align 8
  %y1 = alloca double, align 8
  %x2 = alloca double, align 8
  %y2 = alloca double, align 8
  %old_x = alloca double, align 8
  %old_y = alloca double, align 8
  %old_width = alloca double, align 8
  %old_height = alloca double, align 8
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  %call2 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %2)
  %3 = bitcast %struct._GimpToolOptions* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_rectangle_options_interface_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpRectangleOptions*
  store %struct._GimpRectangleOptions* %4, %struct._GimpRectangleOptions** %options, align 8
  %5 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  call void @gimp_rectangle_tool_get_public_rect(%struct._GimpRectangleTool* %5, double* %x1, double* %y1, double* %x2, double* %y2)
  %6 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %options, align 8
  %7 = bitcast %struct._GimpRectangleOptions* %6 to i8*
  %8 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %9 = bitcast %struct._GimpRectangleTool* %8 to i8*
  %call5 = call i32 @g_signal_handlers_block_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpRectangleOptions*, %struct._GParamSpec*, %struct._GimpRectangleTool*)* @gimp_rectangle_tool_options_notify to i8*), i8* %9)
  %10 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %options, align 8
  %11 = bitcast %struct._GimpRectangleOptions* %10 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0), double* %old_x, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i32 0, i32 0), double* %old_y, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), double* %old_width, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), double* %old_height, i8* null)
  %12 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %options, align 8
  %13 = bitcast %struct._GimpRectangleOptions* %12 to %struct._GTypeInstance*
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 80)
  %14 = bitcast %struct._GTypeInstance* %call6 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %14)
  %15 = load double, double* %old_x, align 8
  %16 = load double, double* %x1, align 8
  %sub = fsub double %15, %16
  %call7 = call double @fabs(double %sub) #7
  %cmp = fcmp olt double %call7, 1.000000e-04
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %17 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %options, align 8
  %18 = bitcast %struct._GimpRectangleOptions* %17 to i8*
  %19 = load double, double* %x1, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0), double %19, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %20 = load double, double* %old_y, align 8
  %21 = load double, double* %y1, align 8
  %sub8 = fsub double %20, %21
  %call9 = call double @fabs(double %sub8) #7
  %cmp10 = fcmp olt double %call9, 1.000000e-04
  br i1 %cmp10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end
  %22 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %options, align 8
  %23 = bitcast %struct._GimpRectangleOptions* %22 to i8*
  %24 = load double, double* %y1, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i32 0, i32 0), double %24, i8* null)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end
  %25 = load double, double* %old_width, align 8
  %26 = load double, double* %x2, align 8
  %27 = load double, double* %x1, align 8
  %sub13 = fsub double %26, %27
  %sub14 = fsub double %25, %sub13
  %call15 = call double @fabs(double %sub14) #7
  %cmp16 = fcmp olt double %call15, 1.000000e-04
  br i1 %cmp16, label %if.end.19, label %if.then.17

if.then.17:                                       ; preds = %if.end.12
  %28 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %options, align 8
  %29 = bitcast %struct._GimpRectangleOptions* %28 to i8*
  %30 = load double, double* %x2, align 8
  %31 = load double, double* %x1, align 8
  %sub18 = fsub double %30, %31
  call void (i8*, i8*, ...) @g_object_set(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), double %sub18, i8* null)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.end.12
  %32 = load double, double* %old_height, align 8
  %33 = load double, double* %y2, align 8
  %34 = load double, double* %y1, align 8
  %sub20 = fsub double %33, %34
  %sub21 = fsub double %32, %sub20
  %call22 = call double @fabs(double %sub21) #7
  %cmp23 = fcmp olt double %call22, 1.000000e-04
  br i1 %cmp23, label %if.end.26, label %if.then.24

if.then.24:                                       ; preds = %if.end.19
  %35 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %options, align 8
  %36 = bitcast %struct._GimpRectangleOptions* %35 to i8*
  %37 = load double, double* %y2, align 8
  %38 = load double, double* %y1, align 8
  %sub25 = fsub double %37, %38
  call void (i8*, i8*, ...) @g_object_set(i8* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), double %sub25, i8* null)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.end.19
  %39 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %options, align 8
  %40 = bitcast %struct._GimpRectangleOptions* %39 to %struct._GTypeInstance*
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 80)
  %41 = bitcast %struct._GTypeInstance* %call27 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %41)
  %42 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %options, align 8
  %43 = bitcast %struct._GimpRectangleOptions* %42 to i8*
  %44 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %45 = bitcast %struct._GimpRectangleTool* %44 to i8*
  %call28 = call i32 @g_signal_handlers_unblock_matched(i8* %43, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpRectangleOptions*, %struct._GParamSpec*, %struct._GimpRectangleTool*)* @gimp_rectangle_tool_options_notify to i8*), i8* %45)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_rectangle_tool_motion(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, %struct._GimpDisplay* %display) #1 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %rect_tool = alloca %struct._GimpRectangleTool*, align 8
  %private = alloca %struct._GimpRectangleToolPrivate*, align 8
  %options = alloca %struct._GimpRectangleOptions*, align 8
  %snapped_x = alloca double, align 8
  %snapped_y = alloca double, align 8
  %snap_x = alloca i32, align 4
  %snap_y = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pub_x1 = alloca double, align 8
  %pub_y1 = alloca double, align 8
  %pub_x2 = alloca double, align 8
  %pub_y2 = alloca double, align 8
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %aspect_text = alloca i8*, align 8
  %function82 = alloca i32, align 4
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_rectangle_tool_motion, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %14 = bitcast %struct._GimpTool* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpRectangleTool*
  store %struct._GimpRectangleTool* %15, %struct._GimpRectangleTool** %rect_tool, align 8
  %16 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %17 = bitcast %struct._GimpTool* %16 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call13)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpRectangleTool*
  %call15 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %18)
  store %struct._GimpRectangleToolPrivate* %call15, %struct._GimpRectangleToolPrivate** %private, align 8
  %19 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %20 = bitcast %struct._GimpTool* %19 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_tool_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call16)
  %21 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpTool*
  %call18 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %21)
  %22 = bitcast %struct._GimpToolOptions* %call18 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_rectangle_options_interface_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call19)
  %23 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpRectangleOptions*
  store %struct._GimpRectangleOptions* %23, %struct._GimpRectangleOptions** %options, align 8
  %24 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %function = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %24, i32 0, i32 14
  %25 = load i32, i32* %function, align 4
  %cmp21 = icmp eq i32 %25, 13
  br i1 %cmp21, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %26 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %function22 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %26, i32 0, i32 14
  %27 = load i32, i32* %function22, align 4
  %cmp23 = icmp eq i32 %27, 1
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %lor.lhs.false, %do.end
  br label %return

if.end.25:                                        ; preds = %lor.lhs.false
  br label %do.body.26

do.body.26:                                       ; preds = %if.end.25
  %28 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %28, 131072
  %tobool27 = icmp ne i32 %and, 0
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %do.body.26
  %29 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %29, i32 0, i32 0
  %30 = load double, double* %x, align 8
  %31 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %31, i32 0, i32 1
  %32 = load double, double* %y, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 131072, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_rectangle_tool_motion, i32 0, i32 0), i32 1103, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i32 0, i32 0), double %30, double %32)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %do.body.26
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  %33 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %33, i32 0, i32 3
  %34 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_get_snap_offsets(%struct._GimpToolControl* %34, i32* %snap_x, i32* %snap_y, i32* null, i32* null)
  %35 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x31 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %35, i32 0, i32 0
  %36 = load double, double* %x31, align 8
  %37 = load i32, i32* %snap_x, align 4
  %conv = sitofp i32 %37 to double
  %add = fadd double %36, %conv
  store double %add, double* %snapped_x, align 8
  %38 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y32 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %38, i32 0, i32 1
  %39 = load double, double* %y32, align 8
  %40 = load i32, i32* %snap_y, align 4
  %conv33 = sitofp i32 %40 to double
  %add34 = fadd double %39, %conv33
  store double %add34, double* %snapped_y, align 8
  %41 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %42 = bitcast %struct._GimpTool* %41 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_draw_tool_get_type() #7
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call35)
  %43 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %43)
  %44 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %45 = load double, double* %snapped_x, align 8
  %46 = load double, double* %snapped_y, align 8
  call void @gimp_rectangle_tool_update_with_coord(%struct._GimpRectangleTool* %44, double %45, double %46)
  %47 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %call37 = call i32 @gimp_rectangle_tool_rect_adjusting_func(%struct._GimpRectangleTool* %47)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %do.end.30
  %48 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  call void @gimp_rectangle_tool_update_highlight(%struct._GimpRectangleTool* %48)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %do.end.30
  %49 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %function41 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %49, i32 0, i32 14
  %50 = load i32, i32* %function41, align 4
  %cmp42 = icmp ne i32 %50, 3
  br i1 %cmp42, label %land.lhs.true.44, label %if.end.76

land.lhs.true.44:                                 ; preds = %if.end.40
  %51 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %function45 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %51, i32 0, i32 14
  %52 = load i32, i32* %function45, align 4
  %cmp46 = icmp ne i32 %52, 13
  br i1 %cmp46, label %if.then.48, label %if.end.76

if.then.48:                                       ; preds = %land.lhs.true.44
  %53 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %54 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_pop_status(%struct._GimpTool* %53, %struct._GimpDisplay* %54)
  %55 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  call void @gimp_rectangle_tool_get_public_rect(%struct._GimpRectangleTool* %55, double* %pub_x1, double* %pub_y1, double* %pub_x2, double* %pub_y2)
  %56 = load double, double* %pub_x2, align 8
  %57 = load double, double* %pub_x1, align 8
  %sub = fsub double %56, %57
  %conv55 = fptosi double %sub to i32
  store i32 %conv55, i32* %w, align 4
  %58 = load double, double* %pub_y2, align 8
  %59 = load double, double* %pub_y1, align 8
  %sub56 = fsub double %58, %59
  %conv57 = fptosi double %sub56 to i32
  store i32 %conv57, i32* %h, align 4
  %60 = load i32, i32* %w, align 4
  %conv58 = sitofp i32 %60 to double
  %cmp59 = fcmp ogt double %conv58, 0.000000e+00
  br i1 %cmp59, label %land.lhs.true.61, label %if.end.75

land.lhs.true.61:                                 ; preds = %if.then.48
  %61 = load i32, i32* %h, align 4
  %conv62 = sitofp i32 %61 to double
  %cmp63 = fcmp ogt double %conv62, 0.000000e+00
  br i1 %cmp63, label %if.then.65, label %if.end.75

if.then.65:                                       ; preds = %land.lhs.true.61
  %62 = load i32, i32* %w, align 4
  %conv67 = sitofp i32 %62 to double
  %63 = load i32, i32* %h, align 4
  %conv68 = sitofp i32 %63 to double
  %div = fdiv double %conv67, %conv68
  %call69 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), double %div)
  store i8* %call69, i8** %aspect_text, align 8
  %64 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %65 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %66 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control70 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %66, i32 0, i32 3
  %67 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control70, align 8
  %call71 = call i32 @gimp_tool_control_get_precision(%struct._GimpToolControl* %67)
  %call72 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0)) #6
  %68 = load i32, i32* %w, align 4
  %conv73 = sitofp i32 %68 to double
  %69 = load i32, i32* %h, align 4
  %conv74 = sitofp i32 %69 to double
  %70 = load i8*, i8** %aspect_text, align 8
  call void @gimp_tool_push_status_coords(%struct._GimpTool* %64, %struct._GimpDisplay* %65, i32 %call71, i8* %call72, double %conv73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), double %conv74, i8* %70)
  %71 = load i8*, i8** %aspect_text, align 8
  call void @g_free(i8* %71)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.65, %land.lhs.true.61, %if.then.48
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %land.lhs.true.44, %if.end.40
  %72 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %function77 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %72, i32 0, i32 14
  %73 = load i32, i32* %function77, align 4
  %cmp78 = icmp eq i32 %73, 2
  br i1 %cmp78, label %if.then.80, label %if.end.138

if.then.80:                                       ; preds = %if.end.76
  store i32 2, i32* %function82, align 4
  %74 = load double, double* %snapped_x, align 8
  %75 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %lastx = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %75, i32 0, i32 17
  %76 = load double, double* %lastx, align 8
  %sub84 = fsub double %74, %76
  store double %sub84, double* %dx, align 8
  %77 = load double, double* %snapped_y, align 8
  %78 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %lasty = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %78, i32 0, i32 18
  %79 = load double, double* %lasty, align 8
  %sub86 = fsub double %77, %79
  store double %sub86, double* %dy, align 8
  %80 = load double, double* %dx, align 8
  %cmp87 = fcmp olt double %80, 0.000000e+00
  br i1 %cmp87, label %if.then.89, label %if.else.92

if.then.89:                                       ; preds = %if.then.80
  %81 = load double, double* %dy, align 8
  %cmp90 = fcmp olt double %81, 0.000000e+00
  %cond = select i1 %cmp90, i32 4, i32 6
  store i32 %cond, i32* %function82, align 4
  br label %if.end.116

if.else.92:                                       ; preds = %if.then.80
  %82 = load double, double* %dx, align 8
  %cmp93 = fcmp ogt double %82, 0.000000e+00
  br i1 %cmp93, label %if.then.95, label %if.else.99

if.then.95:                                       ; preds = %if.else.92
  %83 = load double, double* %dy, align 8
  %cmp96 = fcmp olt double %83, 0.000000e+00
  %cond98 = select i1 %cmp96, i32 5, i32 7
  store i32 %cond98, i32* %function82, align 4
  br label %if.end.115

if.else.99:                                       ; preds = %if.else.92
  %84 = load double, double* %dy, align 8
  %cmp100 = fcmp olt double %84, 0.000000e+00
  br i1 %cmp100, label %if.then.102, label %if.else.106

if.then.102:                                      ; preds = %if.else.99
  %85 = load double, double* %dx, align 8
  %cmp103 = fcmp olt double %85, 0.000000e+00
  %cond105 = select i1 %cmp103, i32 4, i32 5
  store i32 %cond105, i32* %function82, align 4
  br label %if.end.114

if.else.106:                                      ; preds = %if.else.99
  %86 = load double, double* %dy, align 8
  %cmp107 = fcmp ogt double %86, 0.000000e+00
  br i1 %cmp107, label %if.then.109, label %if.end.113

if.then.109:                                      ; preds = %if.else.106
  %87 = load double, double* %dx, align 8
  %cmp110 = fcmp olt double %87, 0.000000e+00
  %cond112 = select i1 %cmp110, i32 6, i32 7
  store i32 %cond112, i32* %function82, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.109, %if.else.106
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.then.102
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.then.95
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %if.then.89
  %88 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %89 = load i32, i32* %function82, align 4
  call void @gimp_rectangle_tool_set_function(%struct._GimpRectangleTool* %88, i32 %89)
  %90 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %options, align 8
  %call117 = call i32 @gimp_rectangle_options_fixed_rule_active(%struct._GimpRectangleOptions* %90, i32 3)
  %tobool118 = icmp ne i32 %call117, 0
  br i1 %tobool118, label %if.then.119, label %if.end.137

if.then.119:                                      ; preds = %if.end.116
  %91 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %92 = load double, double* %snapped_x, align 8
  %93 = load double, double* %snapped_y, align 8
  call void @gimp_rectangle_tool_update_with_coord(%struct._GimpRectangleTool* %91, double %92, double %93)
  %94 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control120 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %94, i32 0, i32 3
  %95 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control120, align 8
  %96 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x2 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %96, i32 0, i32 8
  %97 = load double, double* %x2, align 8
  %98 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x1 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %98, i32 0, i32 6
  %99 = load double, double* %x1, align 8
  %sub121 = fsub double %97, %99
  %sub122 = fsub double -0.000000e+00, %sub121
  %div123 = fdiv double %sub122, 2.000000e+00
  %conv124 = fptosi double %div123 to i32
  %100 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y2 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %100, i32 0, i32 9
  %101 = load double, double* %y2, align 8
  %102 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y1 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %102, i32 0, i32 7
  %103 = load double, double* %y1, align 8
  %sub125 = fsub double %101, %103
  %sub126 = fsub double -0.000000e+00, %sub125
  %div127 = fdiv double %sub126, 2.000000e+00
  %conv128 = fptosi double %div127 to i32
  %104 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x2129 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %104, i32 0, i32 8
  %105 = load double, double* %x2129, align 8
  %106 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x1130 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %106, i32 0, i32 6
  %107 = load double, double* %x1130, align 8
  %sub131 = fsub double %105, %107
  %conv132 = fptosi double %sub131 to i32
  %108 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y2133 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %108, i32 0, i32 9
  %109 = load double, double* %y2133, align 8
  %110 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y1134 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %110, i32 0, i32 7
  %111 = load double, double* %y1134, align 8
  %sub135 = fsub double %109, %111
  %conv136 = fptosi double %sub135 to i32
  call void @gimp_tool_control_set_snap_offsets(%struct._GimpToolControl* %95, i32 %conv124, i32 %conv128, i32 %conv132, i32 %conv136)
  %112 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  call void @gimp_rectangle_tool_set_function(%struct._GimpRectangleTool* %112, i32 3)
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.119, %if.end.116
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %if.end.76
  %113 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %114 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_rectangle_tool_update_options(%struct._GimpRectangleTool* %113, %struct._GimpDisplay* %114)
  %115 = load double, double* %snapped_x, align 8
  %116 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %lastx139 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %116, i32 0, i32 17
  store double %115, double* %lastx139, align 8
  %117 = load double, double* %snapped_y, align 8
  %118 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %lasty140 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %118, i32 0, i32 18
  store double %117, double* %lasty140, align 8
  %119 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %120 = bitcast %struct._GimpTool* %119 to %struct._GTypeInstance*
  %call141 = call i64 @gimp_draw_tool_get_type() #7
  %call142 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %120, i64 %call141)
  %121 = bitcast %struct._GTypeInstance* %call142 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %121)
  br label %return

return:                                           ; preds = %if.end.138, %if.then.24, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_tool_update_with_coord(%struct._GimpRectangleTool* %rect_tool, double %new_x, double %new_y) #1 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %new_x.addr = alloca double, align 8
  %new_y.addr = alloca double, align 8
  %private = alloca %struct._GimpRectangleToolPrivate*, align 8
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  store double %new_x, double* %new_x.addr, align 8
  store double %new_y, double* %new_y.addr, align 8
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRectangleTool*
  %call2 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %2)
  store %struct._GimpRectangleToolPrivate* %call2, %struct._GimpRectangleToolPrivate** %private, align 8
  %3 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %4 = load double, double* %new_x.addr, align 8
  %5 = load double, double* %new_y.addr, align 8
  call void @gimp_rectangle_tool_apply_coord(%struct._GimpRectangleTool* %3, double %4, double %5)
  %6 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  call void @gimp_rectangle_tool_check_function(%struct._GimpRectangleTool* %6)
  %7 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  call void @gimp_rectangle_tool_handle_general_clamping(%struct._GimpRectangleTool* %7)
  %8 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %function = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %8, i32 0, i32 14
  %9 = load i32, i32* %function, align 4
  %cmp = icmp ne i32 %9, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  call void @gimp_rectangle_tool_apply_fixed_rule(%struct._GimpRectangleTool* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  call void @gimp_rectangle_tool_update_int_rect(%struct._GimpRectangleTool* %11)
  ret void
}

declare noalias i8* @g_strdup_printf(i8*, ...) #2

declare void @gimp_tool_push_status_coords(%struct._GimpTool*, %struct._GimpDisplay*, i32, i8*, double, i8*, double, i8*) #2

declare i32 @gimp_tool_control_get_precision(%struct._GimpToolControl*) #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare void @g_free(i8*) #2

declare i32 @gimp_rectangle_options_fixed_rule_active(%struct._GimpRectangleOptions*, i32) #2

; Function Attrs: nounwind uwtable
define void @gimp_rectangle_tool_active_modifier_key(%struct._GimpTool* %tool, i32 %key, i32 %press, i32 %state, %struct._GimpDisplay* %display) #1 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %key.addr = alloca i32, align 4
  %press.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %draw_tool = alloca %struct._GimpDrawTool*, align 8
  %rect_tool = alloca %struct._GimpRectangleTool*, align 8
  %options = alloca %struct._GimpRectangleOptions*, align 8
  %options_private = alloca %struct._GimpRectangleOptionsPrivate*, align 8
  %private = alloca %struct._GimpRectangleToolPrivate*, align 8
  %button1_down = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %press, i32* %press.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_rectangle_tool_active_modifier_key, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %14 = bitcast %struct._GimpTool* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_draw_tool_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpDrawTool*
  store %struct._GimpDrawTool* %15, %struct._GimpDrawTool** %draw_tool, align 8
  %16 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %17 = bitcast %struct._GimpTool* %16 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call13)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpRectangleTool*
  store %struct._GimpRectangleTool* %18, %struct._GimpRectangleTool** %rect_tool, align 8
  %19 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %call15 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %19)
  store %struct._GimpRectangleToolPrivate* %call15, %struct._GimpRectangleToolPrivate** %private, align 8
  %20 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %21 = bitcast %struct._GimpTool* %20 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_tool_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call16)
  %22 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpTool*
  %call18 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %22)
  %23 = bitcast %struct._GimpToolOptions* %call18 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_rectangle_options_interface_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call19)
  %24 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpRectangleOptions*
  store %struct._GimpRectangleOptions* %24, %struct._GimpRectangleOptions** %options, align 8
  %25 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %options, align 8
  %26 = bitcast %struct._GimpRectangleOptions* %25 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_rectangle_options_interface_get_type() #7
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call21)
  %27 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpRectangleOptions*
  %call23 = call %struct._GimpRectangleOptionsPrivate* @gimp_rectangle_options_get_private(%struct._GimpRectangleOptions* %27)
  store %struct._GimpRectangleOptionsPrivate* %call23, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %28 = load i32, i32* %state.addr, align 4
  %and = and i32 %28, 256
  store i32 %and, i32* %button1_down, align 4
  %29 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %29)
  %30 = load i32, i32* %key.addr, align 4
  %cmp24 = icmp eq i32 %30, 1
  br i1 %cmp24, label %if.then.25, label %if.end.36

if.then.25:                                       ; preds = %do.end
  %31 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %options, align 8
  %32 = bitcast %struct._GimpRectangleOptions* %31 to i8*
  %33 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %34 = bitcast %struct._GimpRectangleTool* %33 to i8*
  %call26 = call i32 @g_signal_handlers_block_matched(i8* %32, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpRectangleOptions*, %struct._GParamSpec*, %struct._GimpRectangleTool*)* @gimp_rectangle_tool_options_notify to i8*), i8* %34)
  %35 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %options, align 8
  %36 = bitcast %struct._GimpRectangleOptions* %35 to i8*
  %37 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %fixed_rule_active = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %37, i32 0, i32 10
  %38 = load i32, i32* %fixed_rule_active, align 4
  %tobool27 = icmp ne i32 %38, 0
  %lnot = xor i1 %tobool27, true
  %lnot.ext = zext i1 %lnot to i32
  call void (i8*, i8*, ...) @g_object_set(i8* %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0), i32 %lnot.ext, i8* null)
  %39 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %options, align 8
  %40 = bitcast %struct._GimpRectangleOptions* %39 to i8*
  %41 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %42 = bitcast %struct._GimpRectangleTool* %41 to i8*
  %call28 = call i32 @g_signal_handlers_unblock_matched(i8* %40, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpRectangleOptions*, %struct._GParamSpec*, %struct._GimpRectangleTool*)* @gimp_rectangle_tool_options_notify to i8*), i8* %42)
  %43 = load i32, i32* %button1_down, align 4
  %tobool29 = icmp ne i32 %43, 0
  br i1 %tobool29, label %if.then.30, label %if.end.35

if.then.30:                                       ; preds = %if.then.25
  %44 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %fixed_rule_active31 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %44, i32 0, i32 10
  %45 = load i32, i32* %fixed_rule_active31, align 4
  %tobool32 = icmp ne i32 %45, 0
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %if.then.30
  %46 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %47 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %other_side_x = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %47, i32 0, i32 1
  %48 = load double, double* %other_side_x, align 8
  %49 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %other_side_y = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %49, i32 0, i32 2
  %50 = load double, double* %other_side_y, align 8
  call void @gimp_rectangle_tool_set_other_side_coord(%struct._GimpRectangleTool* %46, double %48, double %50)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.then.30
  %51 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %52 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %lastx = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %52, i32 0, i32 17
  %53 = load double, double* %lastx, align 8
  %54 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %lasty = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %54, i32 0, i32 18
  %55 = load double, double* %lasty, align 8
  call void @gimp_rectangle_tool_update_with_coord(%struct._GimpRectangleTool* %51, double %53, double %55)
  %56 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  call void @gimp_rectangle_tool_update_highlight(%struct._GimpRectangleTool* %56)
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.25
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %do.end
  %57 = load i32, i32* %key.addr, align 4
  %call37 = call i32 @gimp_get_toggle_behavior_mask()
  %cmp38 = icmp eq i32 %57, %call37
  br i1 %cmp38, label %if.then.39, label %if.end.58

if.then.39:                                       ; preds = %if.end.36
  %58 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %options, align 8
  %59 = bitcast %struct._GimpRectangleOptions* %58 to i8*
  %60 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %fixed_center = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %60, i32 0, i32 24
  %61 = load i32, i32* %fixed_center, align 4
  %tobool40 = icmp ne i32 %61, 0
  %lnot41 = xor i1 %tobool40, true
  %lnot.ext42 = zext i1 %lnot41 to i32
  call void (i8*, i8*, ...) @g_object_set(i8* %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0), i32 %lnot.ext42, i8* null)
  %62 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %fixed_center43 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %62, i32 0, i32 24
  %63 = load i32, i32* %fixed_center43, align 4
  %tobool44 = icmp ne i32 %63, 0
  br i1 %tobool44, label %if.then.45, label %if.else.51

if.then.45:                                       ; preds = %if.then.39
  %64 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %65 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %lastx46 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %65, i32 0, i32 17
  %66 = load double, double* %lastx46, align 8
  %67 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %lasty47 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %67, i32 0, i32 18
  %68 = load double, double* %lasty47, align 8
  call void @gimp_rectangle_tool_update_with_coord(%struct._GimpRectangleTool* %64, double %66, double %68)
  %69 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  call void @gimp_rectangle_tool_update_highlight(%struct._GimpRectangleTool* %69)
  %70 = load i32, i32* %button1_down, align 4
  %tobool48 = icmp ne i32 %70, 0
  br i1 %tobool48, label %if.end.50, label %if.then.49

if.then.49:                                       ; preds = %if.then.45
  %71 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  call void @gimp_rectangle_tool_rectangle_change_complete(%struct._GimpRectangleTool* %71)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %if.then.45
  br label %if.end.57

if.else.51:                                       ; preds = %if.then.39
  %72 = load i32, i32* %button1_down, align 4
  %tobool52 = icmp ne i32 %72, 0
  br i1 %tobool52, label %if.then.53, label %if.end.56

if.then.53:                                       ; preds = %if.else.51
  %73 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %74 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %other_side_x54 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %74, i32 0, i32 1
  %75 = load double, double* %other_side_x54, align 8
  %76 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %other_side_y55 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %76, i32 0, i32 2
  %77 = load double, double* %other_side_y55, align 8
  call void @gimp_rectangle_tool_set_other_side_coord(%struct._GimpRectangleTool* %73, double %75, double %77)
  %78 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  call void @gimp_rectangle_tool_update_highlight(%struct._GimpRectangleTool* %78)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.53, %if.else.51
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.end.50
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.end.36
  %79 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %79)
  %80 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %81 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display59 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %81, i32 0, i32 4
  %82 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display59, align 8
  call void @gimp_rectangle_tool_update_options(%struct._GimpRectangleTool* %80, %struct._GimpDisplay* %82)
  br label %return

return:                                           ; preds = %if.end.58, %if.else.9
  ret void
}

declare %struct._GimpRectangleOptionsPrivate* @gimp_rectangle_options_get_private(%struct._GimpRectangleOptions*) #2

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #2

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_tool_set_other_side_coord(%struct._GimpRectangleTool* %rect_tool, double %other_side_x, double %other_side_y) #1 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %other_side_x.addr = alloca double, align 8
  %other_side_y.addr = alloca double, align 8
  %other_x = alloca double*, align 8
  %other_y = alloca double*, align 8
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  store double %other_side_x, double* %other_side_x.addr, align 8
  store double %other_side_y, double* %other_side_y.addr, align 8
  store double* null, double** %other_x, align 8
  store double* null, double** %other_y, align 8
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  call void @gimp_rectangle_tool_get_other_side(%struct._GimpRectangleTool* %0, double** %other_x, double** %other_y)
  %1 = load double*, double** %other_x, align 8
  %tobool = icmp ne double* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load double, double* %other_side_x.addr, align 8
  %3 = load double*, double** %other_x, align 8
  store double %2, double* %3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load double*, double** %other_y, align 8
  %tobool1 = icmp ne double* %4, null
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %5 = load double, double* %other_side_y.addr, align 8
  %6 = load double*, double** %other_y, align 8
  store double %5, double* %6, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %7 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  call void @gimp_rectangle_tool_check_function(%struct._GimpRectangleTool* %7)
  %8 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  call void @gimp_rectangle_tool_update_int_rect(%struct._GimpRectangleTool* %8)
  ret void
}

declare i32 @gimp_get_toggle_behavior_mask() #2

; Function Attrs: nounwind uwtable
define i32 @gimp_rectangle_tool_key_press(%struct._GimpTool* %tool, %struct._GdkEventKey* %kevent, %struct._GimpDisplay* %display) #1 {
entry:
  %retval = alloca i32, align 4
  %tool.addr = alloca %struct._GimpTool*, align 8
  %kevent.addr = alloca %struct._GdkEventKey*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %rect_tool = alloca %struct._GimpRectangleTool*, align 8
  %private = alloca %struct._GimpRectangleToolPrivate*, align 8
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %new_x = alloca double, align 8
  %new_y = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GdkEventKey* %kevent, %struct._GdkEventKey** %kevent.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store i32 0, i32* %dx, align 4
  store i32 0, i32* %dy, align 4
  store double 0.000000e+00, double* %new_x, align 8
  store double 0.000000e+00, double* %new_y, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_rectangle_tool_key_press, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %14 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display11 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %14, i32 0, i32 4
  %15 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display11, align 8
  %cmp12 = icmp ne %struct._GimpDisplay* %13, %15
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %do.end
  %16 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %17 = bitcast %struct._GimpTool* %16 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call15)
  %18 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpRectangleTool*
  store %struct._GimpRectangleTool* %18, %struct._GimpRectangleTool** %rect_tool, align 8
  %19 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %20 = bitcast %struct._GimpTool* %19 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call17)
  %21 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpRectangleTool*
  %call19 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %21)
  store %struct._GimpRectangleToolPrivate* %call19, %struct._GimpRectangleToolPrivate** %private, align 8
  %22 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %keyval = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %22, i32 0, i32 5
  %23 = load i32, i32* %keyval, align 4
  switch i32 %23, label %sw.default [
    i32 65362, label %sw.bb
    i32 65361, label %sw.bb.20
    i32 65363, label %sw.bb.21
    i32 65364, label %sw.bb.22
    i32 65293, label %sw.bb.23
    i32 65421, label %sw.bb.23
    i32 65076, label %sw.bb.23
    i32 65307, label %sw.bb.28
  ]

sw.bb:                                            ; preds = %if.end.14
  store i32 -1, i32* %dy, align 4
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.end.14
  store i32 -1, i32* %dx, align 4
  br label %sw.epilog

sw.bb.21:                                         ; preds = %if.end.14
  store i32 1, i32* %dx, align 4
  br label %sw.epilog

sw.bb.22:                                         ; preds = %if.end.14
  store i32 1, i32* %dy, align 4
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.end.14, %if.end.14, %if.end.14
  %24 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %call24 = call i32 @gimp_rectangle_tool_execute(%struct._GimpRectangleTool* %24)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %sw.bb.23
  %25 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  call void @gimp_rectangle_tool_halt(%struct._GimpRectangleTool* %25)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %sw.bb.23
  store i32 1, i32* %retval
  br label %return

sw.bb.28:                                         ; preds = %if.end.14
  %26 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  call void @gimp_rectangle_tool_cancel(%struct._GimpRectangleTool* %26)
  %27 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  call void @gimp_rectangle_tool_halt(%struct._GimpRectangleTool* %27)
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end.14
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.22, %sw.bb.21, %sw.bb.20, %sw.bb
  %28 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %state = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %28, i32 0, i32 4
  %29 = load i32, i32* %state, align 4
  %and = and i32 %29, 1
  %tobool29 = icmp ne i32 %and, 0
  br i1 %tobool29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %sw.epilog
  %30 = load i32, i32* %dx, align 4
  %mul = mul nsw i32 %30, 25
  store i32 %mul, i32* %dx, align 4
  %31 = load i32, i32* %dy, align 4
  %mul31 = mul nsw i32 %31, 25
  store i32 %mul31, i32* %dy, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %sw.epilog
  %32 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %33 = bitcast %struct._GimpRectangleTool* %32 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_tool_get_type() #7
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call33)
  %34 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpTool*
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %34, i32 0, i32 3
  %35 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_set_snap_offsets(%struct._GimpToolControl* %35, i32 0, i32 0, i32 0, i32 0)
  %36 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %function = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %36, i32 0, i32 14
  %37 = load i32, i32* %function, align 4
  switch i32 %37, label %sw.default.83 [
    i32 3, label %sw.bb.35
    i32 4, label %sw.bb.35
    i32 5, label %sw.bb.38
    i32 6, label %sw.bb.46
    i32 7, label %sw.bb.54
    i32 8, label %sw.bb.63
    i32 9, label %sw.bb.68
    i32 10, label %sw.bb.73
    i32 11, label %sw.bb.78
  ]

sw.bb.35:                                         ; preds = %if.end.32, %if.end.32
  %38 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x1 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %38, i32 0, i32 6
  %39 = load double, double* %x1, align 8
  %40 = load i32, i32* %dx, align 4
  %conv = sitofp i32 %40 to double
  %add = fadd double %39, %conv
  store double %add, double* %new_x, align 8
  %41 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y1 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %41, i32 0, i32 7
  %42 = load double, double* %y1, align 8
  %43 = load i32, i32* %dy, align 4
  %conv36 = sitofp i32 %43 to double
  %add37 = fadd double %42, %conv36
  store double %add37, double* %new_y, align 8
  %44 = load double, double* %new_x, align 8
  %45 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %lastx = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %45, i32 0, i32 17
  store double %44, double* %lastx, align 8
  %46 = load double, double* %new_y, align 8
  %47 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %lasty = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %47, i32 0, i32 18
  store double %46, double* %lasty, align 8
  br label %sw.epilog.84

sw.bb.38:                                         ; preds = %if.end.32
  %48 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x2 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %48, i32 0, i32 8
  %49 = load double, double* %x2, align 8
  %50 = load i32, i32* %dx, align 4
  %conv39 = sitofp i32 %50 to double
  %add40 = fadd double %49, %conv39
  store double %add40, double* %new_x, align 8
  %51 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y141 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %51, i32 0, i32 7
  %52 = load double, double* %y141, align 8
  %53 = load i32, i32* %dy, align 4
  %conv42 = sitofp i32 %53 to double
  %add43 = fadd double %52, %conv42
  store double %add43, double* %new_y, align 8
  %54 = load double, double* %new_x, align 8
  %55 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %lastx44 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %55, i32 0, i32 17
  store double %54, double* %lastx44, align 8
  %56 = load double, double* %new_y, align 8
  %57 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %lasty45 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %57, i32 0, i32 18
  store double %56, double* %lasty45, align 8
  br label %sw.epilog.84

sw.bb.46:                                         ; preds = %if.end.32
  %58 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x147 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %58, i32 0, i32 6
  %59 = load double, double* %x147, align 8
  %60 = load i32, i32* %dx, align 4
  %conv48 = sitofp i32 %60 to double
  %add49 = fadd double %59, %conv48
  store double %add49, double* %new_x, align 8
  %61 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y2 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %61, i32 0, i32 9
  %62 = load double, double* %y2, align 8
  %63 = load i32, i32* %dy, align 4
  %conv50 = sitofp i32 %63 to double
  %add51 = fadd double %62, %conv50
  store double %add51, double* %new_y, align 8
  %64 = load double, double* %new_x, align 8
  %65 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %lastx52 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %65, i32 0, i32 17
  store double %64, double* %lastx52, align 8
  %66 = load double, double* %new_y, align 8
  %67 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %lasty53 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %67, i32 0, i32 18
  store double %66, double* %lasty53, align 8
  br label %sw.epilog.84

sw.bb.54:                                         ; preds = %if.end.32
  %68 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x255 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %68, i32 0, i32 8
  %69 = load double, double* %x255, align 8
  %70 = load i32, i32* %dx, align 4
  %conv56 = sitofp i32 %70 to double
  %add57 = fadd double %69, %conv56
  store double %add57, double* %new_x, align 8
  %71 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y258 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %71, i32 0, i32 9
  %72 = load double, double* %y258, align 8
  %73 = load i32, i32* %dy, align 4
  %conv59 = sitofp i32 %73 to double
  %add60 = fadd double %72, %conv59
  store double %add60, double* %new_y, align 8
  %74 = load double, double* %new_x, align 8
  %75 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %lastx61 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %75, i32 0, i32 17
  store double %74, double* %lastx61, align 8
  %76 = load double, double* %new_y, align 8
  %77 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %lasty62 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %77, i32 0, i32 18
  store double %76, double* %lasty62, align 8
  br label %sw.epilog.84

sw.bb.63:                                         ; preds = %if.end.32
  %78 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x164 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %78, i32 0, i32 6
  %79 = load double, double* %x164, align 8
  %80 = load i32, i32* %dx, align 4
  %conv65 = sitofp i32 %80 to double
  %add66 = fadd double %79, %conv65
  store double %add66, double* %new_x, align 8
  %81 = load double, double* %new_x, align 8
  %82 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %lastx67 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %82, i32 0, i32 17
  store double %81, double* %lastx67, align 8
  br label %sw.epilog.84

sw.bb.68:                                         ; preds = %if.end.32
  %83 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x269 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %83, i32 0, i32 8
  %84 = load double, double* %x269, align 8
  %85 = load i32, i32* %dx, align 4
  %conv70 = sitofp i32 %85 to double
  %add71 = fadd double %84, %conv70
  store double %add71, double* %new_x, align 8
  %86 = load double, double* %new_x, align 8
  %87 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %lastx72 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %87, i32 0, i32 17
  store double %86, double* %lastx72, align 8
  br label %sw.epilog.84

sw.bb.73:                                         ; preds = %if.end.32
  %88 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y174 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %88, i32 0, i32 7
  %89 = load double, double* %y174, align 8
  %90 = load i32, i32* %dy, align 4
  %conv75 = sitofp i32 %90 to double
  %add76 = fadd double %89, %conv75
  store double %add76, double* %new_y, align 8
  %91 = load double, double* %new_y, align 8
  %92 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %lasty77 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %92, i32 0, i32 18
  store double %91, double* %lasty77, align 8
  br label %sw.epilog.84

sw.bb.78:                                         ; preds = %if.end.32
  %93 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y279 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %93, i32 0, i32 9
  %94 = load double, double* %y279, align 8
  %95 = load i32, i32* %dy, align 4
  %conv80 = sitofp i32 %95 to double
  %add81 = fadd double %94, %conv80
  store double %add81, double* %new_y, align 8
  %96 = load double, double* %new_y, align 8
  %97 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %lasty82 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %97, i32 0, i32 18
  store double %96, double* %lasty82, align 8
  br label %sw.epilog.84

sw.default.83:                                    ; preds = %if.end.32
  store i32 1, i32* %retval
  br label %return

sw.epilog.84:                                     ; preds = %sw.bb.78, %sw.bb.73, %sw.bb.68, %sw.bb.63, %sw.bb.54, %sw.bb.46, %sw.bb.38, %sw.bb.35
  %98 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %99 = bitcast %struct._GimpTool* %98 to %struct._GTypeInstance*
  %call85 = call i64 @gimp_draw_tool_get_type() #7
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %99, i64 %call85)
  %100 = bitcast %struct._GTypeInstance* %call86 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %100)
  %101 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %102 = load double, double* %new_x, align 8
  %103 = load double, double* %new_y, align 8
  call void @gimp_rectangle_tool_update_with_coord(%struct._GimpRectangleTool* %101, double %102, double %103)
  %104 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x187 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %104, i32 0, i32 6
  %105 = load double, double* %x187, align 8
  %106 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x288 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %106, i32 0, i32 8
  %107 = load double, double* %x288, align 8
  %add89 = fadd double %105, %107
  %div = fdiv double %add89, 2.000000e+00
  %108 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %center_x_on_fixed_center = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %108, i32 0, i32 3
  store double %div, double* %center_x_on_fixed_center, align 8
  %109 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y190 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %109, i32 0, i32 7
  %110 = load double, double* %y190, align 8
  %111 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y291 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %111, i32 0, i32 9
  %112 = load double, double* %y291, align 8
  %add92 = fadd double %110, %112
  %div93 = fdiv double %add92, 2.000000e+00
  %113 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %center_y_on_fixed_center = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %113, i32 0, i32 4
  store double %div93, double* %center_y_on_fixed_center, align 8
  %114 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  call void @gimp_rectangle_tool_update_highlight(%struct._GimpRectangleTool* %114)
  %115 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  call void @gimp_rectangle_tool_update_handle_sizes(%struct._GimpRectangleTool* %115)
  %116 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %117 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display94 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %117, i32 0, i32 4
  %118 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display94, align 8
  call void @gimp_rectangle_tool_update_options(%struct._GimpRectangleTool* %116, %struct._GimpDisplay* %118)
  %119 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %120 = bitcast %struct._GimpTool* %119 to %struct._GTypeInstance*
  %call95 = call i64 @gimp_draw_tool_get_type() #7
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %120, i64 %call95)
  %121 = bitcast %struct._GTypeInstance* %call96 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %121)
  %122 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  call void @gimp_rectangle_tool_rectangle_change_complete(%struct._GimpRectangleTool* %122)
  %123 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %suppress_updates = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %123, i32 0, i32 30
  store i32 2, i32* %suppress_updates, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog.84, %sw.default.83, %sw.default, %sw.bb.28, %if.end.27, %if.then.13, %if.else.9
  %124 = load i32, i32* %retval
  ret i32 %124
}

; Function Attrs: nounwind uwtable
define void @gimp_rectangle_tool_cancel(%struct._GimpRectangleTool* %rect_tool) #1 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %iface = alloca %struct._GimpRectangleToolInterface*, align 8
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %3 = bitcast %struct._GTypeClass* %2 to i8*
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call1 = call i8* @g_type_interface_peek(i8* %3, i64 %call)
  %4 = bitcast i8* %call1 to %struct._GimpRectangleToolInterface*
  store %struct._GimpRectangleToolInterface* %4, %struct._GimpRectangleToolInterface** %iface, align 8
  %5 = load %struct._GimpRectangleToolInterface*, %struct._GimpRectangleToolInterface** %iface, align 8
  %cancel = getelementptr inbounds %struct._GimpRectangleToolInterface, %struct._GimpRectangleToolInterface* %5, i32 0, i32 2
  %6 = load void (%struct._GimpRectangleTool*)*, void (%struct._GimpRectangleTool*)** %cancel, align 8
  %tobool = icmp ne void (%struct._GimpRectangleTool*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpRectangleToolInterface*, %struct._GimpRectangleToolInterface** %iface, align 8
  %cancel2 = getelementptr inbounds %struct._GimpRectangleToolInterface, %struct._GimpRectangleToolInterface* %7, i32 0, i32 2
  %8 = load void (%struct._GimpRectangleTool*)*, void (%struct._GimpRectangleTool*)** %cancel2, align 8
  %9 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  call void %8(%struct._GimpRectangleTool* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_rectangle_tool_oper_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, i32 %proximity, %struct._GimpDisplay* %display) #1 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %proximity.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %private = alloca %struct._GimpRectangleToolPrivate*, align 8
  %rect_tool = alloca %struct._GimpRectangleTool*, align 8
  %function = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store i32 %proximity, i32* %proximity.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_rectangle_tool_oper_update, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %14 = bitcast %struct._GimpTool* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpRectangleTool*
  %call13 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %15)
  store %struct._GimpRectangleToolPrivate* %call13, %struct._GimpRectangleToolPrivate** %private, align 8
  %16 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %17 = bitcast %struct._GimpTool* %16 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call14)
  %18 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpRectangleTool*
  store %struct._GimpRectangleTool* %18, %struct._GimpRectangleTool** %rect_tool, align 8
  %19 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display16 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %19, i32 0, i32 4
  %20 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display16, align 8
  %21 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %cmp17 = icmp ne %struct._GimpDisplay* %20, %21
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %do.end
  br label %return

if.end.19:                                        ; preds = %do.end
  %22 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %suppress_updates = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %22, i32 0, i32 30
  %23 = load i32, i32* %suppress_updates, align 4
  %tobool20 = icmp ne i32 %23, 0
  br i1 %tobool20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.19
  %24 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %suppress_updates22 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %24, i32 0, i32 30
  %25 = load i32, i32* %suppress_updates22, align 4
  %dec = add nsw i32 %25, -1
  store i32 %dec, i32* %suppress_updates22, align 4
  br label %return

if.end.23:                                        ; preds = %if.end.19
  %26 = load i32, i32* %proximity.addr, align 4
  %tobool24 = icmp ne i32 %26, 0
  br i1 %tobool24, label %if.else.26, label %if.then.25

if.then.25:                                       ; preds = %if.end.23
  store i32 1, i32* %function, align 4
  br label %if.end.77

if.else.26:                                       ; preds = %if.end.23
  %27 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %28 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %call27 = call i32 @gimp_rectangle_tool_coord_outside(%struct._GimpRectangleTool* %27, %struct._GimpCoords* %28)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %if.else.26
  store i32 2, i32* %function, align 4
  br label %if.end.76

if.else.30:                                       ; preds = %if.else.26
  %29 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %30 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %call31 = call i32 @gimp_rectangle_tool_coord_on_handle(%struct._GimpRectangleTool* %29, %struct._GimpCoords* %30, i32 2)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %if.else.30
  store i32 4, i32* %function, align 4
  br label %if.end.75

if.else.34:                                       ; preds = %if.else.30
  %31 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %32 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %call35 = call i32 @gimp_rectangle_tool_coord_on_handle(%struct._GimpRectangleTool* %31, %struct._GimpCoords* %32, i32 6)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %if.else.34
  store i32 7, i32* %function, align 4
  br label %if.end.74

if.else.38:                                       ; preds = %if.else.34
  %33 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %34 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %call39 = call i32 @gimp_rectangle_tool_coord_on_handle(%struct._GimpRectangleTool* %33, %struct._GimpCoords* %34, i32 3)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %if.else.38
  store i32 5, i32* %function, align 4
  br label %if.end.73

if.else.42:                                       ; preds = %if.else.38
  %35 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %36 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %call43 = call i32 @gimp_rectangle_tool_coord_on_handle(%struct._GimpRectangleTool* %35, %struct._GimpCoords* %36, i32 5)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %if.else.42
  store i32 6, i32* %function, align 4
  br label %if.end.72

if.else.46:                                       ; preds = %if.else.42
  %37 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %38 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %call47 = call i32 @gimp_rectangle_tool_coord_on_handle(%struct._GimpRectangleTool* %37, %struct._GimpCoords* %38, i32 7)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %if.else.46
  store i32 8, i32* %function, align 4
  br label %if.end.71

if.else.50:                                       ; preds = %if.else.46
  %39 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %40 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %call51 = call i32 @gimp_rectangle_tool_coord_on_handle(%struct._GimpRectangleTool* %39, %struct._GimpCoords* %40, i32 8)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %if.else.50
  store i32 9, i32* %function, align 4
  br label %if.end.70

if.else.54:                                       ; preds = %if.else.50
  %41 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %42 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %call55 = call i32 @gimp_rectangle_tool_coord_on_handle(%struct._GimpRectangleTool* %41, %struct._GimpCoords* %42, i32 1)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %if.else.54
  store i32 10, i32* %function, align 4
  br label %if.end.69

if.else.58:                                       ; preds = %if.else.54
  %43 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %44 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %call59 = call i32 @gimp_rectangle_tool_coord_on_handle(%struct._GimpRectangleTool* %43, %struct._GimpCoords* %44, i32 4)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %if.else.58
  store i32 11, i32* %function, align 4
  br label %if.end.68

if.else.62:                                       ; preds = %if.else.58
  %45 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %46 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %call63 = call i32 @gimp_rectangle_tool_coord_on_handle(%struct._GimpRectangleTool* %45, %struct._GimpCoords* %46, i32 0)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %if.else.62
  store i32 3, i32* %function, align 4
  br label %if.end.67

if.else.66:                                       ; preds = %if.else.62
  store i32 1, i32* %function, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.66, %if.then.65
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.then.61
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then.57
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.53
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.then.49
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.then.45
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.then.41
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.37
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.33
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.then.29
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then.25
  %47 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %48 = bitcast %struct._GimpTool* %47 to %struct._GTypeInstance*
  %call78 = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call78)
  %49 = bitcast %struct._GTypeInstance* %call79 to %struct._GimpRectangleTool*
  %50 = load i32, i32* %function, align 4
  call void @gimp_rectangle_tool_set_function(%struct._GimpRectangleTool* %49, i32 %50)
  br label %return

return:                                           ; preds = %if.end.77, %if.then.21, %if.then.18, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_rectangle_tool_coord_outside(%struct._GimpRectangleTool* %rect_tool, %struct._GimpCoords* %coord) #1 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %coord.addr = alloca %struct._GimpCoords*, align 8
  %private = alloca %struct._GimpRectangleToolPrivate*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %narrow_mode = alloca i32, align 4
  %pub_x1 = alloca double, align 8
  %pub_y1 = alloca double, align 8
  %pub_x2 = alloca double, align 8
  %pub_y2 = alloca double, align 8
  %x1_b = alloca double, align 8
  %y1_b = alloca double, align 8
  %x2_b = alloca double, align 8
  %y2_b = alloca double, align 8
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  store %struct._GimpCoords* %coord, %struct._GimpCoords** %coord.addr, align 8
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRectangleTool*
  %call2 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %2)
  store %struct._GimpRectangleToolPrivate* %call2, %struct._GimpRectangleToolPrivate** %private, align 8
  %3 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %narrow_mode3 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %3, i32 0, i32 23
  %4 = load i32, i32* %narrow_mode3, align 4
  store i32 %4, i32* %narrow_mode, align 4
  %5 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %6 = bitcast %struct._GimpRectangleTool* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_tool_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpTool*
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %7, i32 0, i32 4
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call6 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %8)
  store %struct._GimpDisplayShell* %call6, %struct._GimpDisplayShell** %shell, align 8
  %9 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  call void @gimp_rectangle_tool_get_public_rect(%struct._GimpRectangleTool* %9, double* %pub_x1, double* %pub_y1, double* %pub_x2, double* %pub_y2)
  %10 = load double, double* %pub_x1, align 8
  %11 = load i32, i32* %narrow_mode, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %12 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_w = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %12, i32 0, i32 19
  %13 = load i32, i32* %corner_handle_w, align 4
  %conv = sitofp i32 %13 to double
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %14, i32 0, i32 13
  %15 = load double, double* %scale_x, align 8
  %div = fdiv double %conv, %15
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %div, %cond.true ], [ 0.000000e+00, %cond.false ]
  %sub = fsub double %10, %cond
  store double %sub, double* %x1_b, align 8
  %16 = load double, double* %pub_x2, align 8
  %17 = load i32, i32* %narrow_mode, align 4
  %tobool7 = icmp ne i32 %17, 0
  br i1 %tobool7, label %cond.true.8, label %cond.false.13

cond.true.8:                                      ; preds = %cond.end
  %18 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_w9 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %18, i32 0, i32 19
  %19 = load i32, i32* %corner_handle_w9, align 4
  %conv10 = sitofp i32 %19 to double
  %20 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_x11 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %20, i32 0, i32 13
  %21 = load double, double* %scale_x11, align 8
  %div12 = fdiv double %conv10, %21
  br label %cond.end.14

cond.false.13:                                    ; preds = %cond.end
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.13, %cond.true.8
  %cond15 = phi double [ %div12, %cond.true.8 ], [ 0.000000e+00, %cond.false.13 ]
  %add = fadd double %16, %cond15
  store double %add, double* %x2_b, align 8
  %22 = load double, double* %pub_y1, align 8
  %23 = load i32, i32* %narrow_mode, align 4
  %tobool16 = icmp ne i32 %23, 0
  br i1 %tobool16, label %cond.true.17, label %cond.false.20

cond.true.17:                                     ; preds = %cond.end.14
  %24 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_h = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %24, i32 0, i32 20
  %25 = load i32, i32* %corner_handle_h, align 4
  %conv18 = sitofp i32 %25 to double
  %26 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %26, i32 0, i32 14
  %27 = load double, double* %scale_y, align 8
  %div19 = fdiv double %conv18, %27
  br label %cond.end.21

cond.false.20:                                    ; preds = %cond.end.14
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.20, %cond.true.17
  %cond22 = phi double [ %div19, %cond.true.17 ], [ 0.000000e+00, %cond.false.20 ]
  %sub23 = fsub double %22, %cond22
  store double %sub23, double* %y1_b, align 8
  %28 = load double, double* %pub_y2, align 8
  %29 = load i32, i32* %narrow_mode, align 4
  %tobool24 = icmp ne i32 %29, 0
  br i1 %tobool24, label %cond.true.25, label %cond.false.30

cond.true.25:                                     ; preds = %cond.end.21
  %30 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_h26 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %30, i32 0, i32 20
  %31 = load i32, i32* %corner_handle_h26, align 4
  %conv27 = sitofp i32 %31 to double
  %32 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_y28 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %32, i32 0, i32 14
  %33 = load double, double* %scale_y28, align 8
  %div29 = fdiv double %conv27, %33
  br label %cond.end.31

cond.false.30:                                    ; preds = %cond.end.21
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.30, %cond.true.25
  %cond32 = phi double [ %div29, %cond.true.25 ], [ 0.000000e+00, %cond.false.30 ]
  %add33 = fadd double %28, %cond32
  store double %add33, double* %y2_b, align 8
  %34 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %34, i32 0, i32 0
  %35 = load double, double* %x, align 8
  %36 = load double, double* %x1_b, align 8
  %cmp = fcmp olt double %35, %36
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.31
  %37 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %x35 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %37, i32 0, i32 0
  %38 = load double, double* %x35, align 8
  %39 = load double, double* %x2_b, align 8
  %cmp36 = fcmp ogt double %38, %39
  br i1 %cmp36, label %lor.end, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %lor.lhs.false
  %40 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %40, i32 0, i32 1
  %41 = load double, double* %y, align 8
  %42 = load double, double* %y1_b, align 8
  %cmp39 = fcmp olt double %41, %42
  br i1 %cmp39, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.38
  %43 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %y41 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %43, i32 0, i32 1
  %44 = load double, double* %y41, align 8
  %45 = load double, double* %y2_b, align 8
  %cmp42 = fcmp ogt double %44, %45
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.38, %lor.lhs.false, %cond.end.31
  %46 = phi i1 [ true, %lor.lhs.false.38 ], [ true, %lor.lhs.false ], [ true, %cond.end.31 ], [ %cmp42, %lor.rhs ]
  %lor.ext = zext i1 %46 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_rectangle_tool_coord_on_handle(%struct._GimpRectangleTool* %rect_tool, %struct._GimpCoords* %coords, i32 %anchor) #1 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %anchor.addr = alloca i32, align 4
  %private = alloca %struct._GimpRectangleToolPrivate*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %draw_tool = alloca %struct._GimpDrawTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %pub_x1 = alloca double, align 8
  %pub_y1 = alloca double, align 8
  %pub_x2 = alloca double, align 8
  %pub_y2 = alloca double, align 8
  %rect_w = alloca double, align 8
  %rect_h = alloca double, align 8
  %handle_x = alloca double, align 8
  %handle_y = alloca double, align 8
  %handle_width = alloca double, align 8
  %handle_height = alloca double, align 8
  %narrow_mode_x_dir = alloca i32, align 4
  %narrow_mode_y_dir = alloca i32, align 4
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %anchor, i32* %anchor.addr, align 4
  store double 0.000000e+00, double* %handle_x, align 8
  store double 0.000000e+00, double* %handle_y, align 8
  store double 0.000000e+00, double* %handle_width, align 8
  store double 0.000000e+00, double* %handle_height, align 8
  store i32 0, i32* %narrow_mode_x_dir, align 4
  store i32 0, i32* %narrow_mode_y_dir, align 4
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_draw_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDrawTool*
  store %struct._GimpDrawTool* %5, %struct._GimpDrawTool** %draw_tool, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %6, i32 0, i32 4
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call4 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %7)
  store %struct._GimpDisplayShell* %call4, %struct._GimpDisplayShell** %shell, align 8
  %8 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %9 = bitcast %struct._GimpTool* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpRectangleTool*
  %call7 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %10)
  store %struct._GimpRectangleToolPrivate* %call7, %struct._GimpRectangleToolPrivate** %private, align 8
  %11 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  call void @gimp_rectangle_tool_get_public_rect(%struct._GimpRectangleTool* %11, double* %pub_x1, double* %pub_y1, double* %pub_x2, double* %pub_y2)
  %12 = load double, double* %pub_x2, align 8
  %13 = load double, double* %pub_x1, align 8
  %sub = fsub double %12, %13
  store double %sub, double* %rect_w, align 8
  %14 = load double, double* %pub_y2, align 8
  %15 = load double, double* %pub_y1, align 8
  %sub8 = fsub double %14, %15
  store double %sub8, double* %rect_h, align 8
  %16 = load i32, i32* %anchor.addr, align 4
  switch i32 %16, label %sw.epilog [
    i32 2, label %sw.bb
    i32 6, label %sw.bb.10
    i32 3, label %sw.bb.15
    i32 5, label %sw.bb.20
    i32 7, label %sw.bb.25
    i32 8, label %sw.bb.29
    i32 1, label %sw.bb.36
    i32 4, label %sw.bb.42
    i32 0, label %sw.bb.49
  ]

sw.bb:                                            ; preds = %entry
  %17 = load double, double* %pub_x1, align 8
  store double %17, double* %handle_x, align 8
  %18 = load double, double* %pub_y1, align 8
  store double %18, double* %handle_y, align 8
  %19 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_w = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %19, i32 0, i32 19
  %20 = load i32, i32* %corner_handle_w, align 4
  %conv = sitofp i32 %20 to double
  store double %conv, double* %handle_width, align 8
  %21 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_h = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %21, i32 0, i32 20
  %22 = load i32, i32* %corner_handle_h, align 4
  %conv9 = sitofp i32 %22 to double
  store double %conv9, double* %handle_height, align 8
  store i32 -1, i32* %narrow_mode_x_dir, align 4
  store i32 -1, i32* %narrow_mode_y_dir, align 4
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %23 = load double, double* %pub_x2, align 8
  store double %23, double* %handle_x, align 8
  %24 = load double, double* %pub_y2, align 8
  store double %24, double* %handle_y, align 8
  %25 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_w11 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %25, i32 0, i32 19
  %26 = load i32, i32* %corner_handle_w11, align 4
  %conv12 = sitofp i32 %26 to double
  store double %conv12, double* %handle_width, align 8
  %27 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_h13 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %27, i32 0, i32 20
  %28 = load i32, i32* %corner_handle_h13, align 4
  %conv14 = sitofp i32 %28 to double
  store double %conv14, double* %handle_height, align 8
  store i32 1, i32* %narrow_mode_x_dir, align 4
  store i32 1, i32* %narrow_mode_y_dir, align 4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %29 = load double, double* %pub_x2, align 8
  store double %29, double* %handle_x, align 8
  %30 = load double, double* %pub_y1, align 8
  store double %30, double* %handle_y, align 8
  %31 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_w16 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %31, i32 0, i32 19
  %32 = load i32, i32* %corner_handle_w16, align 4
  %conv17 = sitofp i32 %32 to double
  store double %conv17, double* %handle_width, align 8
  %33 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_h18 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %33, i32 0, i32 20
  %34 = load i32, i32* %corner_handle_h18, align 4
  %conv19 = sitofp i32 %34 to double
  store double %conv19, double* %handle_height, align 8
  store i32 1, i32* %narrow_mode_x_dir, align 4
  store i32 -1, i32* %narrow_mode_y_dir, align 4
  br label %sw.epilog

sw.bb.20:                                         ; preds = %entry
  %35 = load double, double* %pub_x1, align 8
  store double %35, double* %handle_x, align 8
  %36 = load double, double* %pub_y2, align 8
  store double %36, double* %handle_y, align 8
  %37 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_w21 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %37, i32 0, i32 19
  %38 = load i32, i32* %corner_handle_w21, align 4
  %conv22 = sitofp i32 %38 to double
  store double %conv22, double* %handle_width, align 8
  %39 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_h23 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %39, i32 0, i32 20
  %40 = load i32, i32* %corner_handle_h23, align 4
  %conv24 = sitofp i32 %40 to double
  store double %conv24, double* %handle_height, align 8
  store i32 -1, i32* %narrow_mode_x_dir, align 4
  store i32 1, i32* %narrow_mode_y_dir, align 4
  br label %sw.epilog

sw.bb.25:                                         ; preds = %entry
  %41 = load double, double* %pub_x1, align 8
  store double %41, double* %handle_x, align 8
  %42 = load double, double* %pub_y1, align 8
  %43 = load double, double* %rect_h, align 8
  %div = fdiv double %43, 2.000000e+00
  %add = fadd double %42, %div
  store double %add, double* %handle_y, align 8
  %44 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_w26 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %44, i32 0, i32 19
  %45 = load i32, i32* %corner_handle_w26, align 4
  %conv27 = sitofp i32 %45 to double
  store double %conv27, double* %handle_width, align 8
  %46 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %left_and_right_handle_h = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %46, i32 0, i32 22
  %47 = load i32, i32* %left_and_right_handle_h, align 4
  %conv28 = sitofp i32 %47 to double
  store double %conv28, double* %handle_height, align 8
  store i32 -1, i32* %narrow_mode_x_dir, align 4
  store i32 0, i32* %narrow_mode_y_dir, align 4
  br label %sw.epilog

sw.bb.29:                                         ; preds = %entry
  %48 = load double, double* %pub_x2, align 8
  store double %48, double* %handle_x, align 8
  %49 = load double, double* %pub_y1, align 8
  %50 = load double, double* %rect_h, align 8
  %div30 = fdiv double %50, 2.000000e+00
  %add31 = fadd double %49, %div30
  store double %add31, double* %handle_y, align 8
  %51 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_w32 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %51, i32 0, i32 19
  %52 = load i32, i32* %corner_handle_w32, align 4
  %conv33 = sitofp i32 %52 to double
  store double %conv33, double* %handle_width, align 8
  %53 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %left_and_right_handle_h34 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %53, i32 0, i32 22
  %54 = load i32, i32* %left_and_right_handle_h34, align 4
  %conv35 = sitofp i32 %54 to double
  store double %conv35, double* %handle_height, align 8
  store i32 1, i32* %narrow_mode_x_dir, align 4
  store i32 0, i32* %narrow_mode_y_dir, align 4
  br label %sw.epilog

sw.bb.36:                                         ; preds = %entry
  %55 = load double, double* %pub_x1, align 8
  %56 = load double, double* %rect_w, align 8
  %div37 = fdiv double %56, 2.000000e+00
  %add38 = fadd double %55, %div37
  store double %add38, double* %handle_x, align 8
  %57 = load double, double* %pub_y1, align 8
  store double %57, double* %handle_y, align 8
  %58 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %top_and_bottom_handle_w = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %58, i32 0, i32 21
  %59 = load i32, i32* %top_and_bottom_handle_w, align 4
  %conv39 = sitofp i32 %59 to double
  store double %conv39, double* %handle_width, align 8
  %60 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_h40 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %60, i32 0, i32 20
  %61 = load i32, i32* %corner_handle_h40, align 4
  %conv41 = sitofp i32 %61 to double
  store double %conv41, double* %handle_height, align 8
  store i32 0, i32* %narrow_mode_x_dir, align 4
  store i32 -1, i32* %narrow_mode_y_dir, align 4
  br label %sw.epilog

sw.bb.42:                                         ; preds = %entry
  %62 = load double, double* %pub_x1, align 8
  %63 = load double, double* %rect_w, align 8
  %div43 = fdiv double %63, 2.000000e+00
  %add44 = fadd double %62, %div43
  store double %add44, double* %handle_x, align 8
  %64 = load double, double* %pub_y2, align 8
  store double %64, double* %handle_y, align 8
  %65 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %top_and_bottom_handle_w45 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %65, i32 0, i32 21
  %66 = load i32, i32* %top_and_bottom_handle_w45, align 4
  %conv46 = sitofp i32 %66 to double
  store double %conv46, double* %handle_width, align 8
  %67 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_h47 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %67, i32 0, i32 20
  %68 = load i32, i32* %corner_handle_h47, align 4
  %conv48 = sitofp i32 %68 to double
  store double %conv48, double* %handle_height, align 8
  store i32 0, i32* %narrow_mode_x_dir, align 4
  store i32 1, i32* %narrow_mode_y_dir, align 4
  br label %sw.epilog

sw.bb.49:                                         ; preds = %entry
  %69 = load double, double* %pub_x1, align 8
  %70 = load double, double* %rect_w, align 8
  %div50 = fdiv double %70, 2.000000e+00
  %add51 = fadd double %69, %div50
  store double %add51, double* %handle_x, align 8
  %71 = load double, double* %pub_y1, align 8
  %72 = load double, double* %rect_h, align 8
  %div52 = fdiv double %72, 2.000000e+00
  %add53 = fadd double %71, %div52
  store double %add53, double* %handle_y, align 8
  %73 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %narrow_mode = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %73, i32 0, i32 23
  %74 = load i32, i32* %narrow_mode, align 4
  %tobool = icmp ne i32 %74, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.49
  %75 = load double, double* %rect_w, align 8
  %76 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %76, i32 0, i32 13
  %77 = load double, double* %scale_x, align 8
  %mul = fmul double %75, %77
  store double %mul, double* %handle_width, align 8
  %78 = load double, double* %rect_h, align 8
  %79 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %79, i32 0, i32 14
  %80 = load double, double* %scale_y, align 8
  %mul54 = fmul double %78, %80
  store double %mul54, double* %handle_height, align 8
  br label %if.end

if.else:                                          ; preds = %sw.bb.49
  %81 = load double, double* %rect_w, align 8
  %82 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_x55 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %82, i32 0, i32 13
  %83 = load double, double* %scale_x55, align 8
  %mul56 = fmul double %81, %83
  %84 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_w57 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %84, i32 0, i32 19
  %85 = load i32, i32* %corner_handle_w57, align 4
  %mul58 = mul nsw i32 %85, 2
  %conv59 = sitofp i32 %mul58 to double
  %sub60 = fsub double %mul56, %conv59
  store double %sub60, double* %handle_width, align 8
  %86 = load double, double* %rect_h, align 8
  %87 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_y61 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %87, i32 0, i32 14
  %88 = load double, double* %scale_y61, align 8
  %mul62 = fmul double %86, %88
  %89 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_h63 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %89, i32 0, i32 20
  %90 = load i32, i32* %corner_handle_h63, align 4
  %mul64 = mul nsw i32 %90, 2
  %conv65 = sitofp i32 %mul64 to double
  %sub66 = fsub double %mul62, %conv65
  store double %sub66, double* %handle_height, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %narrow_mode_x_dir, align 4
  store i32 0, i32* %narrow_mode_y_dir, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end, %sw.bb.42, %sw.bb.36, %sw.bb.29, %sw.bb.25, %sw.bb.20, %sw.bb.15, %sw.bb.10, %sw.bb
  %91 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %narrow_mode67 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %91, i32 0, i32 23
  %92 = load i32, i32* %narrow_mode67, align 4
  %tobool68 = icmp ne i32 %92, 0
  br i1 %tobool68, label %if.then.69, label %if.end.80

if.then.69:                                       ; preds = %sw.epilog
  %93 = load i32, i32* %narrow_mode_x_dir, align 4
  %conv70 = sitofp i32 %93 to double
  %94 = load double, double* %handle_width, align 8
  %mul71 = fmul double %conv70, %94
  %95 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_x72 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %95, i32 0, i32 13
  %96 = load double, double* %scale_x72, align 8
  %div73 = fdiv double %mul71, %96
  %97 = load double, double* %handle_x, align 8
  %add74 = fadd double %97, %div73
  store double %add74, double* %handle_x, align 8
  %98 = load i32, i32* %narrow_mode_y_dir, align 4
  %conv75 = sitofp i32 %98 to double
  %99 = load double, double* %handle_height, align 8
  %mul76 = fmul double %conv75, %99
  %100 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_y77 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %100, i32 0, i32 14
  %101 = load double, double* %scale_y77, align 8
  %div78 = fdiv double %mul76, %101
  %102 = load double, double* %handle_y, align 8
  %add79 = fadd double %102, %div78
  store double %add79, double* %handle_y, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.69, %sw.epilog
  %103 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %104 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display81 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %104, i32 0, i32 1
  %105 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display81, align 8
  %106 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %106, i32 0, i32 0
  %107 = load double, double* %x, align 8
  %108 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %108, i32 0, i32 1
  %109 = load double, double* %y, align 8
  %110 = load double, double* %handle_x, align 8
  %111 = load double, double* %handle_y, align 8
  %112 = load double, double* %handle_width, align 8
  %conv82 = fptosi double %112 to i32
  %113 = load double, double* %handle_height, align 8
  %conv83 = fptosi double %113 to i32
  %114 = load i32, i32* %anchor.addr, align 4
  %call84 = call i32 @gimp_draw_tool_on_handle(%struct._GimpDrawTool* %103, %struct._GimpDisplay* %105, double %107, double %109, i32 0, double %110, double %111, i32 %conv82, i32 %conv83, i32 %114)
  ret i32 %call84
}

; Function Attrs: nounwind uwtable
define void @gimp_rectangle_tool_cursor_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, %struct._GimpDisplay* %display) #1 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %private = alloca %struct._GimpRectangleToolPrivate*, align 8
  %cursor = alloca i32, align 4
  %modifier = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store i32 1027, i32* %cursor, align 4
  store i32 0, i32* %modifier, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_rectangle_tool_cursor_update, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %14 = bitcast %struct._GimpTool* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpRectangleTool*
  %call13 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %15)
  store %struct._GimpRectangleToolPrivate* %call13, %struct._GimpRectangleToolPrivate** %private, align 8
  %16 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display14 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %16, i32 0, i32 4
  %17 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display14, align 8
  %18 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %cmp15 = icmp eq %struct._GimpDisplay* %17, %18
  br i1 %cmp15, label %if.then.16, label %if.end.26

if.then.16:                                       ; preds = %do.end
  %19 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %function = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %19, i32 0, i32 14
  %20 = load i32, i32* %function, align 4
  switch i32 %20, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.17
    i32 4, label %sw.bb.18
    i32 5, label %sw.bb.19
    i32 6, label %sw.bb.20
    i32 7, label %sw.bb.21
    i32 8, label %sw.bb.22
    i32 9, label %sw.bb.23
    i32 10, label %sw.bb.24
    i32 11, label %sw.bb.25
  ]

sw.bb:                                            ; preds = %if.then.16
  store i32 1027, i32* %cursor, align 4
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.then.16
  store i32 1029, i32* %cursor, align 4
  store i32 5, i32* %modifier, align 4
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.then.16
  store i32 1032, i32* %cursor, align 4
  br label %sw.epilog

sw.bb.19:                                         ; preds = %if.then.16
  store i32 1033, i32* %cursor, align 4
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.then.16
  store i32 1034, i32* %cursor, align 4
  br label %sw.epilog

sw.bb.21:                                         ; preds = %if.then.16
  store i32 1035, i32* %cursor, align 4
  br label %sw.epilog

sw.bb.22:                                         ; preds = %if.then.16
  store i32 1037, i32* %cursor, align 4
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.then.16
  store i32 1038, i32* %cursor, align 4
  br label %sw.epilog

sw.bb.24:                                         ; preds = %if.then.16
  store i32 1036, i32* %cursor, align 4
  br label %sw.epilog

sw.bb.25:                                         ; preds = %if.then.16
  store i32 1039, i32* %cursor, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.25, %sw.bb.24, %sw.bb.23, %sw.bb.22, %sw.bb.21, %sw.bb.20, %sw.bb.19, %sw.bb.18, %sw.bb.17, %sw.bb
  br label %if.end.26

if.end.26:                                        ; preds = %sw.epilog, %do.end
  %21 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %21, i32 0, i32 3
  %22 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %23 = load i32, i32* %cursor, align 4
  call void @gimp_tool_control_set_cursor(%struct._GimpToolControl* %22, i32 %23)
  %24 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control27 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %24, i32 0, i32 3
  %25 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control27, align 8
  %26 = load i32, i32* %modifier, align 4
  call void @gimp_tool_control_set_cursor_modifier(%struct._GimpToolControl* %25, i32 %26)
  br label %return

return:                                           ; preds = %if.end.26, %if.else.9
  ret void
}

declare void @gimp_tool_control_set_cursor(%struct._GimpToolControl*, i32) #2

declare void @gimp_tool_control_set_cursor_modifier(%struct._GimpToolControl*, i32) #2

; Function Attrs: nounwind uwtable
define void @gimp_rectangle_tool_draw(%struct._GimpDrawTool* %draw_tool, %struct._GimpCanvasGroup* %stroke_group) #1 {
entry:
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %stroke_group.addr = alloca %struct._GimpCanvasGroup*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %private = alloca %struct._GimpRectangleToolPrivate*, align 8
  %options = alloca %struct._GimpRectangleOptions*, align 8
  %options_private = alloca %struct._GimpRectangleOptionsPrivate*, align 8
  %x1 = alloca double, align 8
  %y1 = alloca double, align 8
  %x2 = alloca double, align 8
  %y2 = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  store %struct._GimpCanvasGroup* %stroke_group, %struct._GimpCanvasGroup** %stroke_group.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_rectangle_tool_draw, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.28, i32 0, i32 0))
  br label %sw.epilog

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %stroke_group.addr, align 8
  %cmp12 = icmp eq %struct._GimpCanvasGroup* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %stroke_group.addr, align 8
  %15 = bitcast %struct._GimpCanvasGroup* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_canvas_group_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_rectangle_tool_draw, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.29, i32 0, i32 0))
  br label %sw.epilog

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %28 = bitcast %struct._GimpDrawTool* %27 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_tool_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call40)
  %29 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpTool*
  store %struct._GimpTool* %29, %struct._GimpTool** %tool, align 8
  %30 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %31 = bitcast %struct._GimpTool* %30 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call42)
  %32 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpRectangleTool*
  %call44 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %32)
  store %struct._GimpRectangleToolPrivate* %call44, %struct._GimpRectangleToolPrivate** %private, align 8
  %33 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %34 = bitcast %struct._GimpTool* %33 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_tool_get_type() #7
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call45)
  %35 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpTool*
  %call47 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %35)
  %36 = bitcast %struct._GimpToolOptions* %call47 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_rectangle_options_interface_get_type() #7
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call48)
  %37 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpRectangleOptions*
  store %struct._GimpRectangleOptions* %37, %struct._GimpRectangleOptions** %options, align 8
  %38 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %options, align 8
  %39 = bitcast %struct._GimpRectangleOptions* %38 to %struct._GTypeInstance*
  %call50 = call i64 @gimp_rectangle_options_interface_get_type() #7
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call50)
  %40 = bitcast %struct._GTypeInstance* %call51 to %struct._GimpRectangleOptions*
  %call52 = call %struct._GimpRectangleOptionsPrivate* @gimp_rectangle_options_get_private(%struct._GimpRectangleOptions* %40)
  store %struct._GimpRectangleOptionsPrivate* %call52, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %41 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %42 = bitcast %struct._GimpDrawTool* %41 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call53)
  %43 = bitcast %struct._GTypeInstance* %call54 to %struct._GimpRectangleTool*
  call void @gimp_rectangle_tool_get_public_rect(%struct._GimpRectangleTool* %43, double* %x1, double* %y1, double* %x2, double* %y2)
  %44 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %function = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %44, i32 0, i32 14
  %45 = load i32, i32* %function, align 4
  %cmp55 = icmp eq i32 %45, 0
  br i1 %cmp55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %do.end.39
  br label %sw.epilog

if.end.57:                                        ; preds = %do.end.39
  %46 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %stroke_group.addr, align 8
  %tobool58 = icmp ne %struct._GimpCanvasGroup* %46, null
  br i1 %tobool58, label %if.end.63, label %if.then.59

if.then.59:                                       ; preds = %if.end.57
  %47 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %call60 = call %struct._GimpCanvasGroup* @gimp_draw_tool_add_stroke_group(%struct._GimpDrawTool* %47)
  %48 = bitcast %struct._GimpCanvasGroup* %call60 to %struct._GTypeInstance*
  %call61 = call i64 @gimp_canvas_group_get_type() #7
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call61)
  %49 = bitcast %struct._GTypeInstance* %call62 to %struct._GimpCanvasGroup*
  store %struct._GimpCanvasGroup* %49, %struct._GimpCanvasGroup** %stroke_group.addr, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.59, %if.end.57
  %50 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %51 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %stroke_group.addr, align 8
  call void @gimp_draw_tool_push_group(%struct._GimpDrawTool* %50, %struct._GimpCanvasGroup* %51)
  %52 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %53 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %guide = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %53, i32 0, i32 3
  %54 = load i32, i32* %guide, align 4
  %55 = load double, double* %x1, align 8
  %56 = load double, double* %y1, align 8
  %57 = load double, double* %x2, align 8
  %58 = load double, double* %x1, align 8
  %sub = fsub double %57, %58
  %59 = load double, double* %y2, align 8
  %60 = load double, double* %y1, align 8
  %sub64 = fsub double %59, %60
  %call65 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_rectangle_guides(%struct._GimpDrawTool* %52, i32 %54, double %55, double %56, double %sub, double %sub64)
  %61 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %62 = load double, double* %x1, align 8
  %63 = load double, double* %y1, align 8
  %64 = load double, double* %x2, align 8
  %65 = load double, double* %x1, align 8
  %sub66 = fsub double %64, %65
  %66 = load double, double* %y2, align 8
  %67 = load double, double* %y1, align 8
  %sub67 = fsub double %66, %67
  %call68 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_rectangle(%struct._GimpDrawTool* %61, i32 0, double %62, double %63, double %sub66, double %sub67)
  %68 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  call void @gimp_draw_tool_pop_group(%struct._GimpDrawTool* %68)
  %69 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %function69 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %69, i32 0, i32 14
  %70 = load i32, i32* %function69, align 4
  switch i32 %70, label %sw.default [
    i32 3, label %sw.bb
    i32 1, label %sw.bb.78
    i32 2, label %sw.bb.78
    i32 12, label %sw.bb.78
    i32 10, label %sw.bb.92
    i32 11, label %sw.bb.92
    i32 8, label %sw.bb.110
    i32 9, label %sw.bb.110
  ]

sw.bb:                                            ; preds = %if.end.63
  %71 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %71, i32 0, i32 3
  %72 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call70 = call i32 @gimp_tool_control_is_active(%struct._GimpToolControl* %72)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.then.72, label %if.else.76

if.then.72:                                       ; preds = %sw.bb
  %73 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %74 = load double, double* %x1, align 8
  %75 = load double, double* %x2, align 8
  %add = fadd double %74, %75
  %div = fdiv double %add, 2.000000e+00
  %76 = load double, double* %y1, align 8
  %77 = load double, double* %y2, align 8
  %add73 = fadd double %76, %77
  %div74 = fdiv double %add73, 2.000000e+00
  %call75 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %73, i32 4, double %div, double %div74, i32 7, i32 7, i32 0)
  br label %sw.epilog

if.else.76:                                       ; preds = %sw.bb
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.76
  br label %sw.bb.78

sw.bb.78:                                         ; preds = %if.end.63, %if.end.63, %if.end.63, %if.end.77
  %78 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %79 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %stroke_group.addr, align 8
  call void @gimp_draw_tool_push_group(%struct._GimpDrawTool* %78, %struct._GimpCanvasGroup* %79)
  %80 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %81 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %narrow_mode = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %81, i32 0, i32 23
  %82 = load i32, i32* %narrow_mode, align 4
  %83 = load double, double* %x1, align 8
  %84 = load double, double* %y1, align 8
  %85 = load double, double* %x2, align 8
  %86 = load double, double* %y2, align 8
  %87 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_w = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %87, i32 0, i32 19
  %88 = load i32, i32* %corner_handle_w, align 4
  %89 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_h = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %89, i32 0, i32 20
  %90 = load i32, i32* %corner_handle_h, align 4
  %call79 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_corner(%struct._GimpDrawTool* %80, i32 0, i32 %82, double %83, double %84, double %85, double %86, i32 %88, i32 %90, i32 2)
  %91 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %92 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %narrow_mode80 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %92, i32 0, i32 23
  %93 = load i32, i32* %narrow_mode80, align 4
  %94 = load double, double* %x1, align 8
  %95 = load double, double* %y1, align 8
  %96 = load double, double* %x2, align 8
  %97 = load double, double* %y2, align 8
  %98 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_w81 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %98, i32 0, i32 19
  %99 = load i32, i32* %corner_handle_w81, align 4
  %100 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_h82 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %100, i32 0, i32 20
  %101 = load i32, i32* %corner_handle_h82, align 4
  %call83 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_corner(%struct._GimpDrawTool* %91, i32 0, i32 %93, double %94, double %95, double %96, double %97, i32 %99, i32 %101, i32 3)
  %102 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %103 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %narrow_mode84 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %103, i32 0, i32 23
  %104 = load i32, i32* %narrow_mode84, align 4
  %105 = load double, double* %x1, align 8
  %106 = load double, double* %y1, align 8
  %107 = load double, double* %x2, align 8
  %108 = load double, double* %y2, align 8
  %109 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_w85 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %109, i32 0, i32 19
  %110 = load i32, i32* %corner_handle_w85, align 4
  %111 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_h86 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %111, i32 0, i32 20
  %112 = load i32, i32* %corner_handle_h86, align 4
  %call87 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_corner(%struct._GimpDrawTool* %102, i32 0, i32 %104, double %105, double %106, double %107, double %108, i32 %110, i32 %112, i32 5)
  %113 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %114 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %narrow_mode88 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %114, i32 0, i32 23
  %115 = load i32, i32* %narrow_mode88, align 4
  %116 = load double, double* %x1, align 8
  %117 = load double, double* %y1, align 8
  %118 = load double, double* %x2, align 8
  %119 = load double, double* %y2, align 8
  %120 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_w89 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %120, i32 0, i32 19
  %121 = load i32, i32* %corner_handle_w89, align 4
  %122 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_h90 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %122, i32 0, i32 20
  %123 = load i32, i32* %corner_handle_h90, align 4
  %call91 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_corner(%struct._GimpDrawTool* %113, i32 0, i32 %115, double %116, double %117, double %118, double %119, i32 %121, i32 %123, i32 6)
  %124 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  call void @gimp_draw_tool_pop_group(%struct._GimpDrawTool* %124)
  br label %sw.epilog

sw.bb.92:                                         ; preds = %if.end.63, %if.end.63
  %125 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control93 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %125, i32 0, i32 3
  %126 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control93, align 8
  %call94 = call i32 @gimp_tool_control_is_active(%struct._GimpToolControl* %126)
  %tobool95 = icmp ne i32 %call94, 0
  br i1 %tobool95, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %sw.bb.92
  %127 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %128 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %stroke_group.addr, align 8
  call void @gimp_draw_tool_push_group(%struct._GimpDrawTool* %127, %struct._GimpCanvasGroup* %128)
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.96, %sw.bb.92
  %129 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %130 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control98 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %130, i32 0, i32 3
  %131 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control98, align 8
  %call99 = call i32 @gimp_tool_control_is_active(%struct._GimpToolControl* %131)
  %tobool100 = icmp ne i32 %call99, 0
  %lnot = xor i1 %tobool100, true
  %lnot.ext = zext i1 %lnot to i32
  %132 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %narrow_mode101 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %132, i32 0, i32 23
  %133 = load i32, i32* %narrow_mode101, align 4
  %134 = load double, double* %x1, align 8
  %135 = load double, double* %y1, align 8
  %136 = load double, double* %x2, align 8
  %137 = load double, double* %y2, align 8
  %138 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %top_and_bottom_handle_w = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %138, i32 0, i32 21
  %139 = load i32, i32* %top_and_bottom_handle_w, align 4
  %140 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_h102 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %140, i32 0, i32 20
  %141 = load i32, i32* %corner_handle_h102, align 4
  %142 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %call103 = call i32 @gimp_rectangle_tool_get_anchor(%struct._GimpRectangleToolPrivate* %142)
  %call104 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_corner(%struct._GimpDrawTool* %129, i32 %lnot.ext, i32 %133, double %134, double %135, double %136, double %137, i32 %139, i32 %141, i32 %call103)
  %143 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control105 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %143, i32 0, i32 3
  %144 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control105, align 8
  %call106 = call i32 @gimp_tool_control_is_active(%struct._GimpToolControl* %144)
  %tobool107 = icmp ne i32 %call106, 0
  br i1 %tobool107, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %if.end.97
  %145 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  call void @gimp_draw_tool_pop_group(%struct._GimpDrawTool* %145)
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.108, %if.end.97
  br label %sw.epilog

sw.bb.110:                                        ; preds = %if.end.63, %if.end.63
  %146 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control111 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %146, i32 0, i32 3
  %147 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control111, align 8
  %call112 = call i32 @gimp_tool_control_is_active(%struct._GimpToolControl* %147)
  %tobool113 = icmp ne i32 %call112, 0
  br i1 %tobool113, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %sw.bb.110
  %148 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %149 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %stroke_group.addr, align 8
  call void @gimp_draw_tool_push_group(%struct._GimpDrawTool* %148, %struct._GimpCanvasGroup* %149)
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.114, %sw.bb.110
  %150 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %151 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control116 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %151, i32 0, i32 3
  %152 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control116, align 8
  %call117 = call i32 @gimp_tool_control_is_active(%struct._GimpToolControl* %152)
  %tobool118 = icmp ne i32 %call117, 0
  %lnot119 = xor i1 %tobool118, true
  %lnot.ext120 = zext i1 %lnot119 to i32
  %153 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %narrow_mode121 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %153, i32 0, i32 23
  %154 = load i32, i32* %narrow_mode121, align 4
  %155 = load double, double* %x1, align 8
  %156 = load double, double* %y1, align 8
  %157 = load double, double* %x2, align 8
  %158 = load double, double* %y2, align 8
  %159 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_w122 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %159, i32 0, i32 19
  %160 = load i32, i32* %corner_handle_w122, align 4
  %161 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %left_and_right_handle_h = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %161, i32 0, i32 22
  %162 = load i32, i32* %left_and_right_handle_h, align 4
  %163 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %call123 = call i32 @gimp_rectangle_tool_get_anchor(%struct._GimpRectangleToolPrivate* %163)
  %call124 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_corner(%struct._GimpDrawTool* %150, i32 %lnot.ext120, i32 %154, double %155, double %156, double %157, double %158, i32 %160, i32 %162, i32 %call123)
  %164 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control125 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %164, i32 0, i32 3
  %165 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control125, align 8
  %call126 = call i32 @gimp_tool_control_is_active(%struct._GimpToolControl* %165)
  %tobool127 = icmp ne i32 %call126, 0
  br i1 %tobool127, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %if.end.115
  %166 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  call void @gimp_draw_tool_pop_group(%struct._GimpDrawTool* %166)
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.128, %if.end.115
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.63
  %167 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control130 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %167, i32 0, i32 3
  %168 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control130, align 8
  %call131 = call i32 @gimp_tool_control_is_active(%struct._GimpToolControl* %168)
  %tobool132 = icmp ne i32 %call131, 0
  br i1 %tobool132, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %sw.default
  %169 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %170 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %stroke_group.addr, align 8
  call void @gimp_draw_tool_push_group(%struct._GimpDrawTool* %169, %struct._GimpCanvasGroup* %170)
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.133, %sw.default
  %171 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %172 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control135 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %172, i32 0, i32 3
  %173 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control135, align 8
  %call136 = call i32 @gimp_tool_control_is_active(%struct._GimpToolControl* %173)
  %tobool137 = icmp ne i32 %call136, 0
  %lnot138 = xor i1 %tobool137, true
  %lnot.ext139 = zext i1 %lnot138 to i32
  %174 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %narrow_mode140 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %174, i32 0, i32 23
  %175 = load i32, i32* %narrow_mode140, align 4
  %176 = load double, double* %x1, align 8
  %177 = load double, double* %y1, align 8
  %178 = load double, double* %x2, align 8
  %179 = load double, double* %y2, align 8
  %180 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_w141 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %180, i32 0, i32 19
  %181 = load i32, i32* %corner_handle_w141, align 4
  %182 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %corner_handle_h142 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %182, i32 0, i32 20
  %183 = load i32, i32* %corner_handle_h142, align 4
  %184 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %call143 = call i32 @gimp_rectangle_tool_get_anchor(%struct._GimpRectangleToolPrivate* %184)
  %call144 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_corner(%struct._GimpDrawTool* %171, i32 %lnot.ext139, i32 %175, double %176, double %177, double %178, double %179, i32 %181, i32 %183, i32 %call143)
  %185 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control145 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %185, i32 0, i32 3
  %186 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control145, align 8
  %call146 = call i32 @gimp_tool_control_is_active(%struct._GimpToolControl* %186)
  %tobool147 = icmp ne i32 %call146, 0
  br i1 %tobool147, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %if.end.134
  %187 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  call void @gimp_draw_tool_pop_group(%struct._GimpDrawTool* %187)
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.148, %if.end.134
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else.9, %if.else.37, %if.then.56, %if.end.149, %if.end.129, %if.end.109, %sw.bb.78, %if.then.72
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_canvas_group_get_type() #3

declare %struct._GimpCanvasGroup* @gimp_draw_tool_add_stroke_group(%struct._GimpDrawTool*) #2

declare void @gimp_draw_tool_push_group(%struct._GimpDrawTool*, %struct._GimpCanvasGroup*) #2

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_rectangle_guides(%struct._GimpDrawTool*, i32, double, double, double, double) #2

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_rectangle(%struct._GimpDrawTool*, i32, double, double, double, double) #2

declare void @gimp_draw_tool_pop_group(%struct._GimpDrawTool*) #2

declare i32 @gimp_tool_control_is_active(%struct._GimpToolControl*) #2

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool*, i32, double, double, i32, i32, i32) #2

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_corner(%struct._GimpDrawTool*, i32, i32, double, double, double, double, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @gimp_rectangle_tool_get_anchor(%struct._GimpRectangleToolPrivate* %private) #1 {
entry:
  %retval = alloca i32, align 4
  %private.addr = alloca %struct._GimpRectangleToolPrivate*, align 8
  store %struct._GimpRectangleToolPrivate* %private, %struct._GimpRectangleToolPrivate** %private.addr, align 8
  %0 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private.addr, align 8
  %function = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %0, i32 0, i32 14
  %1 = load i32, i32* %function, align 4
  switch i32 %1, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb.1
    i32 6, label %sw.bb.2
    i32 7, label %sw.bb.3
    i32 8, label %sw.bb.4
    i32 9, label %sw.bb.5
    i32 10, label %sw.bb.6
    i32 11, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry
  store i32 2, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i32 3, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i32 5, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i32 6, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  store i32 7, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  store i32 8, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  store i32 4, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %2 = load i32, i32* %retval
  ret i32 %2
}

declare i8* @g_type_interface_peek(i8*, i64) #2

; Function Attrs: nounwind uwtable
define i32 @gimp_rectangle_tool_get_function(%struct._GimpRectangleTool* %rect_tool) #1 {
entry:
  %retval = alloca i32, align 4
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_rectangle_tool_get_function, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %14 = bitcast %struct._GimpRectangleTool* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpRectangleTool*
  %call13 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %15)
  %function = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %call13, i32 0, i32 14
  %16 = load i32, i32* %function, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #2

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #2

declare void @g_object_interface_install_property(i8*, %struct._GParamSpec*) #2

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #2

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_rectangle_constraint_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_rectangle_precision_get_type() #3

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #2

declare i32 @g_quark_from_static_string(i8*) #2

declare i8* @g_object_get_qdata(%struct._GObject*, i32) #2

declare noalias i8* @g_slice_alloc0(i64) #2

declare void @g_object_set_qdata_full(%struct._GObject*, i32, i8*, void (i8*)*) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_tool_private_finalize(%struct._GimpRectangleToolPrivate* %private) #1 {
entry:
  %private.addr = alloca %struct._GimpRectangleToolPrivate*, align 8
  store %struct._GimpRectangleToolPrivate* %private, %struct._GimpRectangleToolPrivate** %private.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private.addr, align 8
  %1 = bitcast %struct._GimpRectangleToolPrivate* %0 to i8*
  call void @g_slice_free1(i64 208, i8* %1)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare void @g_slice_free1(i64, i8*) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare void @gimp_display_shell_scroll_get_scaled_viewport(%struct._GimpDisplayShell*, i32*, i32*, i32*, i32*) #2

declare i32 @gimp_rectangle_intersect(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_tool_shell_scrolled(%struct._GimpDisplayShell* %shell, %struct._GimpRectangleTool* %rect_tool) #1 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %draw_tool = alloca %struct._GimpDrawTool*, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_draw_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawTool*
  store %struct._GimpDrawTool* %2, %struct._GimpDrawTool** %draw_tool, align 8
  %3 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %3)
  %4 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  call void @gimp_rectangle_tool_update_handle_sizes(%struct._GimpRectangleTool* %4)
  %5 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %5)
  ret void
}

declare void @gimp_draw_tool_start(%struct._GimpDrawTool*, %struct._GimpDisplay*) #2

declare void @gimp_image_get_resolution(%struct._GimpImage*, double*, double*) #2

declare void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry*, i32, double, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_size_entry_get_type() #3

declare void @gimp_size_entry_set_size(%struct._GimpSizeEntry*, i32, double, double) #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_tool_auto_shrink(%struct._GimpRectangleTool* %rect_tool) #1 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %private = alloca %struct._GimpRectangleToolPrivate*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %shrunk_x1 = alloca i32, align 4
  %shrunk_y1 = alloca i32, align 4
  %shrunk_x2 = alloca i32, align 4
  %shrunk_y2 = alloca i32, align 4
  %shrink_merged = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %original_function = alloca i32, align 4
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpRectangleTool*
  %call4 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %5)
  store %struct._GimpRectangleToolPrivate* %call4, %struct._GimpRectangleToolPrivate** %private, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display5 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %6, i32 0, i32 4
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display5, align 8
  store %struct._GimpDisplay* %7, %struct._GimpDisplay** %display, align 8
  store i32 0, i32* %offset_x, align 4
  store i32 0, i32* %offset_y, align 4
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %8, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call6 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %9)
  store %struct._GimpImage* %call6, %struct._GimpImage** %image, align 8
  %10 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %call7 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %10)
  %11 = bitcast %struct._GimpToolOptions* %call7 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), i32* %shrink_merged, i8* null)
  %12 = load i32, i32* %shrink_merged, align 4
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end
  %13 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x110 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %13, i32 0, i32 6
  %14 = load double, double* %x110, align 8
  %cmp = fcmp ogt double %14, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.9
  %15 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x111 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %15, i32 0, i32 6
  %16 = load double, double* %x111, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %16, %cond.true ], [ 0.000000e+00, %cond.false ]
  %conv = fptosi double %cond to i32
  store i32 %conv, i32* %x1, align 4
  %17 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y112 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %17, i32 0, i32 7
  %18 = load double, double* %y112, align 8
  %cmp13 = fcmp ogt double %18, 0.000000e+00
  br i1 %cmp13, label %cond.true.15, label %cond.false.17

cond.true.15:                                     ; preds = %cond.end
  %19 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y116 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %19, i32 0, i32 7
  %20 = load double, double* %y116, align 8
  br label %cond.end.18

cond.false.17:                                    ; preds = %cond.end
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.17, %cond.true.15
  %cond19 = phi double [ %20, %cond.true.15 ], [ 0.000000e+00, %cond.false.17 ]
  %conv20 = fptosi double %cond19 to i32
  store i32 %conv20, i32* %y1, align 4
  %21 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x221 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %21, i32 0, i32 8
  %22 = load double, double* %x221, align 8
  %23 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call22 = call i32 @gimp_image_get_width(%struct._GimpImage* %23)
  %conv23 = sitofp i32 %call22 to double
  %cmp24 = fcmp olt double %22, %conv23
  br i1 %cmp24, label %cond.true.26, label %cond.false.28

cond.true.26:                                     ; preds = %cond.end.18
  %24 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x227 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %24, i32 0, i32 8
  %25 = load double, double* %x227, align 8
  br label %cond.end.31

cond.false.28:                                    ; preds = %cond.end.18
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call29 = call i32 @gimp_image_get_width(%struct._GimpImage* %26)
  %conv30 = sitofp i32 %call29 to double
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.28, %cond.true.26
  %cond32 = phi double [ %25, %cond.true.26 ], [ %conv30, %cond.false.28 ]
  %conv33 = fptosi double %cond32 to i32
  store i32 %conv33, i32* %x2, align 4
  %27 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y234 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %27, i32 0, i32 9
  %28 = load double, double* %y234, align 8
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call35 = call i32 @gimp_image_get_height(%struct._GimpImage* %29)
  %conv36 = sitofp i32 %call35 to double
  %cmp37 = fcmp olt double %28, %conv36
  br i1 %cmp37, label %cond.true.39, label %cond.false.41

cond.true.39:                                     ; preds = %cond.end.31
  %30 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y240 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %30, i32 0, i32 9
  %31 = load double, double* %y240, align 8
  br label %cond.end.44

cond.false.41:                                    ; preds = %cond.end.31
  %32 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call42 = call i32 @gimp_image_get_height(%struct._GimpImage* %32)
  %conv43 = sitofp i32 %call42 to double
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.41, %cond.true.39
  %cond45 = phi double [ %31, %cond.true.39 ], [ %conv43, %cond.false.41 ]
  %conv46 = fptosi double %cond45 to i32
  store i32 %conv46, i32* %y2, align 4
  br label %if.end.112

if.else:                                          ; preds = %if.end
  %33 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call47 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %33)
  store %struct._GimpDrawable* %call47, %struct._GimpDrawable** %drawable, align 8
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %35 = bitcast %struct._GimpDrawable* %34 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_item_get_type() #7
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call48)
  %36 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpItem*
  store %struct._GimpItem* %36, %struct._GimpItem** %item, align 8
  %37 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool50 = icmp ne %struct._GimpDrawable* %37, null
  br i1 %tobool50, label %if.end.52, label %if.then.51

if.then.51:                                       ; preds = %if.else
  br label %return

if.end.52:                                        ; preds = %if.else
  %38 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %38, i32* %offset_x, i32* %offset_y)
  %39 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x153 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %39, i32 0, i32 6
  %40 = load double, double* %x153, align 8
  %41 = load i32, i32* %offset_x, align 4
  %conv54 = sitofp i32 %41 to double
  %sub = fsub double %40, %conv54
  %cmp55 = fcmp ogt double %sub, 0.000000e+00
  br i1 %cmp55, label %cond.true.57, label %cond.false.61

cond.true.57:                                     ; preds = %if.end.52
  %42 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x158 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %42, i32 0, i32 6
  %43 = load double, double* %x158, align 8
  %44 = load i32, i32* %offset_x, align 4
  %conv59 = sitofp i32 %44 to double
  %sub60 = fsub double %43, %conv59
  br label %cond.end.62

cond.false.61:                                    ; preds = %if.end.52
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.61, %cond.true.57
  %cond63 = phi double [ %sub60, %cond.true.57 ], [ 0.000000e+00, %cond.false.61 ]
  %conv64 = fptosi double %cond63 to i32
  store i32 %conv64, i32* %x1, align 4
  %45 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y165 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %45, i32 0, i32 7
  %46 = load double, double* %y165, align 8
  %47 = load i32, i32* %offset_y, align 4
  %conv66 = sitofp i32 %47 to double
  %sub67 = fsub double %46, %conv66
  %cmp68 = fcmp ogt double %sub67, 0.000000e+00
  br i1 %cmp68, label %cond.true.70, label %cond.false.74

cond.true.70:                                     ; preds = %cond.end.62
  %48 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y171 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %48, i32 0, i32 7
  %49 = load double, double* %y171, align 8
  %50 = load i32, i32* %offset_y, align 4
  %conv72 = sitofp i32 %50 to double
  %sub73 = fsub double %49, %conv72
  br label %cond.end.75

cond.false.74:                                    ; preds = %cond.end.62
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.false.74, %cond.true.70
  %cond76 = phi double [ %sub73, %cond.true.70 ], [ 0.000000e+00, %cond.false.74 ]
  %conv77 = fptosi double %cond76 to i32
  store i32 %conv77, i32* %y1, align 4
  %51 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x278 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %51, i32 0, i32 8
  %52 = load double, double* %x278, align 8
  %53 = load i32, i32* %offset_x, align 4
  %conv79 = sitofp i32 %53 to double
  %sub80 = fsub double %52, %conv79
  %54 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call81 = call i32 @gimp_item_get_width(%struct._GimpItem* %54)
  %conv82 = sitofp i32 %call81 to double
  %cmp83 = fcmp olt double %sub80, %conv82
  br i1 %cmp83, label %cond.true.85, label %cond.false.89

cond.true.85:                                     ; preds = %cond.end.75
  %55 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x286 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %55, i32 0, i32 8
  %56 = load double, double* %x286, align 8
  %57 = load i32, i32* %offset_x, align 4
  %conv87 = sitofp i32 %57 to double
  %sub88 = fsub double %56, %conv87
  br label %cond.end.92

cond.false.89:                                    ; preds = %cond.end.75
  %58 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call90 = call i32 @gimp_item_get_width(%struct._GimpItem* %58)
  %conv91 = sitofp i32 %call90 to double
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.false.89, %cond.true.85
  %cond93 = phi double [ %sub88, %cond.true.85 ], [ %conv91, %cond.false.89 ]
  %conv94 = fptosi double %cond93 to i32
  store i32 %conv94, i32* %x2, align 4
  %59 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y295 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %59, i32 0, i32 9
  %60 = load double, double* %y295, align 8
  %61 = load i32, i32* %offset_y, align 4
  %conv96 = sitofp i32 %61 to double
  %sub97 = fsub double %60, %conv96
  %62 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call98 = call i32 @gimp_item_get_height(%struct._GimpItem* %62)
  %conv99 = sitofp i32 %call98 to double
  %cmp100 = fcmp olt double %sub97, %conv99
  br i1 %cmp100, label %cond.true.102, label %cond.false.106

cond.true.102:                                    ; preds = %cond.end.92
  %63 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y2103 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %63, i32 0, i32 9
  %64 = load double, double* %y2103, align 8
  %65 = load i32, i32* %offset_y, align 4
  %conv104 = sitofp i32 %65 to double
  %sub105 = fsub double %64, %conv104
  br label %cond.end.109

cond.false.106:                                   ; preds = %cond.end.92
  %66 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call107 = call i32 @gimp_item_get_height(%struct._GimpItem* %66)
  %conv108 = sitofp i32 %call107 to double
  br label %cond.end.109

cond.end.109:                                     ; preds = %cond.false.106, %cond.true.102
  %cond110 = phi double [ %sub105, %cond.true.102 ], [ %conv108, %cond.false.106 ]
  %conv111 = fptosi double %cond110 to i32
  store i32 %conv111, i32* %y2, align 4
  br label %if.end.112

if.end.112:                                       ; preds = %cond.end.109, %cond.end.44
  %67 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %68 = load i32, i32* %x1, align 4
  %69 = load i32, i32* %y1, align 4
  %70 = load i32, i32* %x2, align 4
  %71 = load i32, i32* %y2, align 4
  %72 = load i32, i32* %shrink_merged, align 4
  %tobool113 = icmp ne i32 %72, 0
  %lnot = xor i1 %tobool113, true
  %lnot.ext = zext i1 %lnot to i32
  %call114 = call i32 @gimp_image_crop_auto_shrink(%struct._GimpImage* %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 %lnot.ext, i32* %shrunk_x1, i32* %shrunk_y1, i32* %shrunk_x2, i32* %shrunk_y2)
  %tobool115 = icmp ne i32 %call114, 0
  br i1 %tobool115, label %if.then.116, label %if.end.134

if.then.116:                                      ; preds = %if.end.112
  %73 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %function = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %73, i32 0, i32 14
  %74 = load i32, i32* %function, align 4
  store i32 %74, i32* %original_function, align 4
  %75 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %76 = bitcast %struct._GimpRectangleTool* %75 to %struct._GTypeInstance*
  %call117 = call i64 @gimp_draw_tool_get_type() #7
  %call118 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call117)
  %77 = bitcast %struct._GTypeInstance* %call118 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %77)
  %78 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %function119 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %78, i32 0, i32 14
  store i32 12, i32* %function119, align 4
  %79 = load i32, i32* %offset_x, align 4
  %80 = load i32, i32* %shrunk_x1, align 4
  %add = add nsw i32 %79, %80
  %conv120 = sitofp i32 %add to double
  %81 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x1121 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %81, i32 0, i32 6
  store double %conv120, double* %x1121, align 8
  %82 = load i32, i32* %offset_y, align 4
  %83 = load i32, i32* %shrunk_y1, align 4
  %add122 = add nsw i32 %82, %83
  %conv123 = sitofp i32 %add122 to double
  %84 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y1124 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %84, i32 0, i32 7
  store double %conv123, double* %y1124, align 8
  %85 = load i32, i32* %offset_x, align 4
  %86 = load i32, i32* %shrunk_x2, align 4
  %add125 = add nsw i32 %85, %86
  %conv126 = sitofp i32 %add125 to double
  %87 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x2127 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %87, i32 0, i32 8
  store double %conv126, double* %x2127, align 8
  %88 = load i32, i32* %offset_y, align 4
  %89 = load i32, i32* %shrunk_y2, align 4
  %add128 = add nsw i32 %88, %89
  %conv129 = sitofp i32 %add128 to double
  %90 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y2130 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %90, i32 0, i32 9
  store double %conv129, double* %y2130, align 8
  %91 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  call void @gimp_rectangle_tool_update_int_rect(%struct._GimpRectangleTool* %91)
  %92 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  call void @gimp_rectangle_tool_rectangle_change_complete(%struct._GimpRectangleTool* %92)
  %93 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  call void @gimp_rectangle_tool_update_handle_sizes(%struct._GimpRectangleTool* %93)
  %94 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  call void @gimp_rectangle_tool_update_highlight(%struct._GimpRectangleTool* %94)
  %95 = load i32, i32* %original_function, align 4
  %96 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %function131 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %96, i32 0, i32 14
  store i32 %95, i32* %function131, align 4
  %97 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %98 = bitcast %struct._GimpRectangleTool* %97 to %struct._GTypeInstance*
  %call132 = call i64 @gimp_draw_tool_get_type() #7
  %call133 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call132)
  %99 = bitcast %struct._GTypeInstance* %call133 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %99)
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.116, %if.end.112
  %100 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %101 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display135 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %101, i32 0, i32 4
  %102 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display135, align 8
  call void @gimp_rectangle_tool_update_options(%struct._GimpRectangleTool* %100, %struct._GimpDisplay* %102)
  br label %return

return:                                           ; preds = %if.end.134, %if.then.51, %if.then
  ret void
}

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #2

declare void @g_object_get(i8*, i8*, ...) #2

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #2

declare i32 @gimp_image_crop_auto_shrink(%struct._GimpImage*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #2

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #2

declare void @g_object_freeze_notify(%struct._GObject*) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

declare void @g_object_thaw_notify(%struct._GObject*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_tool_synthesize_motion(%struct._GimpRectangleTool* %rect_tool, i32 %function, double %new_x, double %new_y) #1 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %function.addr = alloca i32, align 4
  %new_x.addr = alloca double, align 8
  %new_y.addr = alloca double, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %draw_tool = alloca %struct._GimpDrawTool*, align 8
  %private = alloca %struct._GimpRectangleToolPrivate*, align 8
  %old_function = alloca i32, align 4
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  store i32 %function, i32* %function.addr, align 4
  store double %new_x, double* %new_x.addr, align 8
  store double %new_y, double* %new_y.addr, align 8
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %4 = bitcast %struct._GimpRectangleTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_draw_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDrawTool*
  store %struct._GimpDrawTool* %5, %struct._GimpDrawTool** %draw_tool, align 8
  %6 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %7 = bitcast %struct._GimpRectangleTool* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpRectangleTool*
  %call6 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %8)
  store %struct._GimpRectangleToolPrivate* %call6, %struct._GimpRectangleToolPrivate** %private, align 8
  %9 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %9, i32 0, i32 3
  %10 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call7 = call i32 @gimp_tool_control_is_active(%struct._GimpToolControl* %10)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %11 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %11, i32 0, i32 4
  %12 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool8 = icmp ne %struct._GimpDisplay* %12, null
  br i1 %tobool8, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %13 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %function9 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %13, i32 0, i32 14
  %14 = load i32, i32* %function9, align 4
  store i32 %14, i32* %old_function, align 4
  %15 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %15)
  %16 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %17 = load i32, i32* %function.addr, align 4
  call void @gimp_rectangle_tool_set_function(%struct._GimpRectangleTool* %16, i32 %17)
  %18 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %19 = load double, double* %new_x.addr, align 8
  %20 = load double, double* %new_y.addr, align 8
  call void @gimp_rectangle_tool_update_with_coord(%struct._GimpRectangleTool* %18, double %19, double %20)
  %21 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x1 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %21, i32 0, i32 6
  %22 = load double, double* %x1, align 8
  %23 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x2 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %23, i32 0, i32 8
  %24 = load double, double* %x2, align 8
  %add = fadd double %22, %24
  %div = fdiv double %add, 2.000000e+00
  %25 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %center_x_on_fixed_center = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %25, i32 0, i32 3
  store double %div, double* %center_x_on_fixed_center, align 8
  %26 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y1 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %26, i32 0, i32 7
  %27 = load double, double* %y1, align 8
  %28 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y2 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %28, i32 0, i32 9
  %29 = load double, double* %y2, align 8
  %add10 = fadd double %27, %29
  %div11 = fdiv double %add10, 2.000000e+00
  %30 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %center_y_on_fixed_center = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %30, i32 0, i32 4
  store double %div11, double* %center_y_on_fixed_center, align 8
  %31 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %32 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display12 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %32, i32 0, i32 4
  %33 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display12, align 8
  call void @gimp_rectangle_tool_update_options(%struct._GimpRectangleTool* %31, %struct._GimpDisplay* %33)
  %34 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %35 = load i32, i32* %old_function, align 4
  call void @gimp_rectangle_tool_set_function(%struct._GimpRectangleTool* %34, i32 %35)
  %36 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  call void @gimp_rectangle_tool_update_highlight(%struct._GimpRectangleTool* %36)
  %37 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  call void @gimp_rectangle_tool_update_handle_sizes(%struct._GimpRectangleTool* %37)
  %38 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %38)
  %39 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  call void @gimp_rectangle_tool_rectangle_change_complete(%struct._GimpRectangleTool* %39)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @g_signal_emit(i8*, i32, i32, ...) #2

declare i32 @gimp_draw_tool_on_handle(%struct._GimpDrawTool*, %struct._GimpDisplay*, double, double, i32, double, double, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @gimp_rectangle_tool_rect_rubber_banding_func(%struct._GimpRectangleTool* %rect_tool) #1 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %private = alloca %struct._GimpRectangleToolPrivate*, align 8
  %rect_rubber_banding_func = alloca i32, align 4
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRectangleTool*
  %call2 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %2)
  store %struct._GimpRectangleToolPrivate* %call2, %struct._GimpRectangleToolPrivate** %private, align 8
  %3 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %function = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %3, i32 0, i32 14
  %4 = load i32, i32* %function, align 4
  switch i32 %4, label %sw.default [
    i32 2, label %sw.bb
    i32 8, label %sw.bb
    i32 9, label %sw.bb
    i32 10, label %sw.bb
    i32 11, label %sw.bb
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 7, label %sw.bb
    i32 12, label %sw.bb
    i32 3, label %sw.bb.3
    i32 0, label %sw.bb.3
    i32 1, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i32 1, i32* %rect_rubber_banding_func, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry, %entry, %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb.3
  store i32 0, i32* %rect_rubber_banding_func, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %5 = load i32, i32* %rect_rubber_banding_func, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_tool_get_other_side(%struct._GimpRectangleTool* %rect_tool, double** %other_x, double** %other_y) #1 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %other_x.addr = alloca double**, align 8
  %other_y.addr = alloca double**, align 8
  %private = alloca %struct._GimpRectangleToolPrivate*, align 8
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  store double** %other_x, double*** %other_x.addr, align 8
  store double** %other_y, double*** %other_y.addr, align 8
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRectangleTool*
  %call2 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %2)
  store %struct._GimpRectangleToolPrivate* %call2, %struct._GimpRectangleToolPrivate** %private, align 8
  %3 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %function = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %3, i32 0, i32 14
  %4 = load i32, i32* %function, align 4
  switch i32 %4, label %sw.default [
    i32 5, label %sw.bb
    i32 7, label %sw.bb
    i32 9, label %sw.bb
    i32 4, label %sw.bb.3
    i32 6, label %sw.bb.3
    i32 8, label %sw.bb.3
    i32 10, label %sw.bb.4
    i32 11, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  %5 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x1 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %5, i32 0, i32 6
  %6 = load double**, double*** %other_x.addr, align 8
  store double* %x1, double** %6, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry, %entry, %entry
  %7 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x2 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %7, i32 0, i32 8
  %8 = load double**, double*** %other_x.addr, align 8
  store double* %x2, double** %8, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry, %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb.4
  %9 = load double**, double*** %other_x.addr, align 8
  store double* null, double** %9, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.3, %sw.bb
  %10 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %function5 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %10, i32 0, i32 14
  %11 = load i32, i32* %function5, align 4
  switch i32 %11, label %sw.default.9 [
    i32 7, label %sw.bb.6
    i32 6, label %sw.bb.6
    i32 11, label %sw.bb.6
    i32 5, label %sw.bb.7
    i32 4, label %sw.bb.7
    i32 10, label %sw.bb.7
    i32 8, label %sw.bb.8
    i32 9, label %sw.bb.8
  ]

sw.bb.6:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  %12 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y1 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %12, i32 0, i32 7
  %13 = load double**, double*** %other_y.addr, align 8
  store double* %y1, double** %13, align 8
  br label %sw.epilog.10

sw.bb.7:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  %14 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y2 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %14, i32 0, i32 9
  %15 = load double**, double*** %other_y.addr, align 8
  store double* %y2, double** %15, align 8
  br label %sw.epilog.10

sw.bb.8:                                          ; preds = %sw.epilog, %sw.epilog
  br label %sw.default.9

sw.default.9:                                     ; preds = %sw.epilog, %sw.bb.8
  %16 = load double**, double*** %other_y.addr, align 8
  store double* null, double** %16, align 8
  br label %sw.epilog.10

sw.epilog.10:                                     ; preds = %sw.default.9, %sw.bb.7, %sw.bb.6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_tool_check_function(%struct._GimpRectangleTool* %rect_tool) #1 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %private = alloca %struct._GimpRectangleToolPrivate*, align 8
  %function = alloca i32, align 4
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRectangleTool*
  %call2 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %2)
  store %struct._GimpRectangleToolPrivate* %call2, %struct._GimpRectangleToolPrivate** %private, align 8
  %3 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %function3 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %3, i32 0, i32 14
  %4 = load i32, i32* %function3, align 4
  store i32 %4, i32* %function, align 4
  %5 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x2 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %5, i32 0, i32 8
  %6 = load double, double* %x2, align 8
  %7 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x1 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %7, i32 0, i32 6
  %8 = load double, double* %x1, align 8
  %cmp = fcmp olt double %6, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x14 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %9, i32 0, i32 6
  %10 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x25 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %10, i32 0, i32 8
  call void @swap_doubles(double* %x14, double* %x25)
  %11 = load i32, i32* %function, align 4
  switch i32 %11, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb.6
    i32 6, label %sw.bb.7
    i32 7, label %sw.bb.8
    i32 8, label %sw.bb.9
    i32 9, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %if.then
  store i32 5, i32* %function, align 4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.then
  store i32 4, i32* %function, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.then
  store i32 7, i32* %function, align 4
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.then
  store i32 6, i32* %function, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.then
  store i32 9, i32* %function, align 4
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.then
  store i32 8, i32* %function, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %entry
  %12 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y2 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %12, i32 0, i32 9
  %13 = load double, double* %y2, align 8
  %14 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y1 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %14, i32 0, i32 7
  %15 = load double, double* %y1, align 8
  %cmp11 = fcmp olt double %13, %15
  br i1 %cmp11, label %if.then.12, label %if.end.23

if.then.12:                                       ; preds = %if.end
  %16 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y113 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %16, i32 0, i32 7
  %17 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y214 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %17, i32 0, i32 9
  call void @swap_doubles(double* %y113, double* %y214)
  %18 = load i32, i32* %function, align 4
  switch i32 %18, label %sw.default.21 [
    i32 4, label %sw.bb.15
    i32 5, label %sw.bb.16
    i32 6, label %sw.bb.17
    i32 7, label %sw.bb.18
    i32 10, label %sw.bb.19
    i32 11, label %sw.bb.20
  ]

sw.bb.15:                                         ; preds = %if.then.12
  store i32 6, i32* %function, align 4
  br label %sw.epilog.22

sw.bb.16:                                         ; preds = %if.then.12
  store i32 7, i32* %function, align 4
  br label %sw.epilog.22

sw.bb.17:                                         ; preds = %if.then.12
  store i32 4, i32* %function, align 4
  br label %sw.epilog.22

sw.bb.18:                                         ; preds = %if.then.12
  store i32 5, i32* %function, align 4
  br label %sw.epilog.22

sw.bb.19:                                         ; preds = %if.then.12
  store i32 11, i32* %function, align 4
  br label %sw.epilog.22

sw.bb.20:                                         ; preds = %if.then.12
  store i32 10, i32* %function, align 4
  br label %sw.epilog.22

sw.default.21:                                    ; preds = %if.then.12
  br label %sw.epilog.22

sw.epilog.22:                                     ; preds = %sw.default.21, %sw.bb.20, %sw.bb.19, %sw.bb.18, %sw.bb.17, %sw.bb.16, %sw.bb.15
  br label %if.end.23

if.end.23:                                        ; preds = %sw.epilog.22, %if.end
  %19 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %20 = load i32, i32* %function, align 4
  call void @gimp_rectangle_tool_set_function(%struct._GimpRectangleTool* %19, i32 %20)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @swap_doubles(double* %i, double* %j) #1 {
entry:
  %i.addr = alloca double*, align 8
  %j.addr = alloca double*, align 8
  %tmp = alloca double, align 8
  store double* %i, double** %i.addr, align 8
  store double* %j, double** %j.addr, align 8
  %0 = load double*, double** %i.addr, align 8
  %1 = load double, double* %0, align 8
  store double %1, double* %tmp, align 8
  %2 = load double*, double** %j.addr, align 8
  %3 = load double, double* %2, align 8
  %4 = load double*, double** %i.addr, align 8
  store double %3, double* %4, align 8
  %5 = load double, double* %tmp, align 8
  %6 = load double*, double** %j.addr, align 8
  store double %5, double* %6, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_tool_adjust_coord(%struct._GimpRectangleTool* %rect_tool, double %coord_x_input, double %coord_y_input, double* %coord_x_output, double* %coord_y_output) #1 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %coord_x_input.addr = alloca double, align 8
  %coord_y_input.addr = alloca double, align 8
  %coord_x_output.addr = alloca double*, align 8
  %coord_y_output.addr = alloca double*, align 8
  %priv = alloca %struct._GimpRectangleToolPrivate*, align 8
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  store double %coord_x_input, double* %coord_x_input.addr, align 8
  store double %coord_y_input, double* %coord_y_input.addr, align 8
  store double* %coord_x_output, double** %coord_x_output.addr, align 8
  store double* %coord_y_output, double** %coord_y_output.addr, align 8
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRectangleTool*
  %call2 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %2)
  store %struct._GimpRectangleToolPrivate* %call2, %struct._GimpRectangleToolPrivate** %priv, align 8
  %3 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %priv, align 8
  %precision = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %3, i32 0, i32 16
  %4 = load i32, i32* %precision, align 4
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %5 = load double, double* %coord_x_input.addr, align 8
  %call3 = call double @rint(double %5) #7
  %6 = load double*, double** %coord_x_output.addr, align 8
  store double %call3, double* %6, align 8
  %7 = load double, double* %coord_y_input.addr, align 8
  %call4 = call double @rint(double %7) #7
  %8 = load double*, double** %coord_y_output.addr, align 8
  store double %call4, double* %8, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb.5
  %9 = load double, double* %coord_x_input.addr, align 8
  %10 = load double*, double** %coord_x_output.addr, align 8
  store double %9, double* %10, align 8
  %11 = load double, double* %coord_y_input.addr, align 8
  %12 = load double*, double** %coord_y_output.addr, align 8
  store double %11, double* %12, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret void
}

; Function Attrs: nounwind readnone
declare double @rint(double) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_tool_clamp_width(%struct._GimpRectangleTool* %rect_tool, i32* %clamped_sides, i32 %constraint, i32 %symmetrically) #1 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %clamped_sides.addr = alloca i32*, align 8
  %constraint.addr = alloca i32, align 4
  %symmetrically.addr = alloca i32, align 4
  %private = alloca %struct._GimpRectangleToolPrivate*, align 8
  %min_x = alloca i32, align 4
  %max_x = alloca i32, align 4
  %dx = alloca double, align 8
  %dx29 = alloca double, align 8
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  store i32* %clamped_sides, i32** %clamped_sides.addr, align 8
  store i32 %constraint, i32* %constraint.addr, align 4
  store i32 %symmetrically, i32* %symmetrically.addr, align 4
  %0 = load i32, i32* %constraint.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.52

if.end:                                           ; preds = %entry
  %1 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %2 = bitcast %struct._GimpRectangleTool* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRectangleTool*
  %call2 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %3)
  store %struct._GimpRectangleToolPrivate* %call2, %struct._GimpRectangleToolPrivate** %private, align 8
  %4 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %5 = load i32, i32* %constraint.addr, align 4
  call void @gimp_rectangle_tool_get_constraints(%struct._GimpRectangleTool* %4, i32* %min_x, i32* null, i32* %max_x, i32* null, i32 %5)
  %6 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x1 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %6, i32 0, i32 6
  %7 = load double, double* %x1, align 8
  %8 = load i32, i32* %min_x, align 4
  %conv = sitofp i32 %8 to double
  %cmp3 = fcmp olt double %7, %conv
  br i1 %cmp3, label %if.then.5, label %if.end.23

if.then.5:                                        ; preds = %if.end
  %9 = load i32, i32* %min_x, align 4
  %conv6 = sitofp i32 %9 to double
  %10 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x17 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %10, i32 0, i32 6
  %11 = load double, double* %x17, align 8
  %sub = fsub double %conv6, %11
  store double %sub, double* %dx, align 8
  %12 = load double, double* %dx, align 8
  %13 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x18 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %13, i32 0, i32 6
  %14 = load double, double* %x18, align 8
  %add = fadd double %14, %12
  store double %add, double* %x18, align 8
  %15 = load i32, i32* %symmetrically.addr, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.then.5
  %16 = load double, double* %dx, align 8
  %17 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x2 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %17, i32 0, i32 8
  %18 = load double, double* %x2, align 8
  %sub10 = fsub double %18, %16
  store double %sub10, double* %x2, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.then.5
  %19 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x212 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %19, i32 0, i32 8
  %20 = load double, double* %x212, align 8
  %21 = load i32, i32* %min_x, align 4
  %conv13 = sitofp i32 %21 to double
  %cmp14 = fcmp olt double %20, %conv13
  br i1 %cmp14, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.end.11
  %22 = load i32, i32* %min_x, align 4
  %conv17 = sitofp i32 %22 to double
  %23 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x218 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %23, i32 0, i32 8
  store double %conv17, double* %x218, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.end.11
  %24 = load i32*, i32** %clamped_sides.addr, align 8
  %tobool20 = icmp ne i32* %24, null
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.19
  %25 = load i32*, i32** %clamped_sides.addr, align 8
  %26 = load i32, i32* %25, align 4
  %or = or i32 %26, 1
  store i32 %or, i32* %25, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.19
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end
  %27 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x224 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %27, i32 0, i32 8
  %28 = load double, double* %x224, align 8
  %29 = load i32, i32* %max_x, align 4
  %conv25 = sitofp i32 %29 to double
  %cmp26 = fcmp ogt double %28, %conv25
  br i1 %cmp26, label %if.then.28, label %if.end.52

if.then.28:                                       ; preds = %if.end.23
  %30 = load i32, i32* %max_x, align 4
  %conv30 = sitofp i32 %30 to double
  %31 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x231 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %31, i32 0, i32 8
  %32 = load double, double* %x231, align 8
  %sub32 = fsub double %conv30, %32
  store double %sub32, double* %dx29, align 8
  %33 = load double, double* %dx29, align 8
  %34 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x233 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %34, i32 0, i32 8
  %35 = load double, double* %x233, align 8
  %add34 = fadd double %35, %33
  store double %add34, double* %x233, align 8
  %36 = load i32, i32* %symmetrically.addr, align 4
  %tobool35 = icmp ne i32 %36, 0
  br i1 %tobool35, label %if.then.36, label %if.end.39

if.then.36:                                       ; preds = %if.then.28
  %37 = load double, double* %dx29, align 8
  %38 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x137 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %38, i32 0, i32 6
  %39 = load double, double* %x137, align 8
  %sub38 = fsub double %39, %37
  store double %sub38, double* %x137, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.36, %if.then.28
  %40 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x140 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %40, i32 0, i32 6
  %41 = load double, double* %x140, align 8
  %42 = load i32, i32* %max_x, align 4
  %conv41 = sitofp i32 %42 to double
  %cmp42 = fcmp ogt double %41, %conv41
  br i1 %cmp42, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %if.end.39
  %43 = load i32, i32* %max_x, align 4
  %conv45 = sitofp i32 %43 to double
  %44 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x146 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %44, i32 0, i32 6
  store double %conv45, double* %x146, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.44, %if.end.39
  %45 = load i32*, i32** %clamped_sides.addr, align 8
  %tobool48 = icmp ne i32* %45, null
  br i1 %tobool48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.end.47
  %46 = load i32*, i32** %clamped_sides.addr, align 8
  %47 = load i32, i32* %46, align 4
  %or50 = or i32 %47, 2
  store i32 %or50, i32* %46, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.end.47
  br label %if.end.52

if.end.52:                                        ; preds = %if.then, %if.end.51, %if.end.23
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_tool_clamp_height(%struct._GimpRectangleTool* %rect_tool, i32* %clamped_sides, i32 %constraint, i32 %symmetrically) #1 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %clamped_sides.addr = alloca i32*, align 8
  %constraint.addr = alloca i32, align 4
  %symmetrically.addr = alloca i32, align 4
  %private = alloca %struct._GimpRectangleToolPrivate*, align 8
  %min_y = alloca i32, align 4
  %max_y = alloca i32, align 4
  %dy = alloca double, align 8
  %dy29 = alloca double, align 8
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  store i32* %clamped_sides, i32** %clamped_sides.addr, align 8
  store i32 %constraint, i32* %constraint.addr, align 4
  store i32 %symmetrically, i32* %symmetrically.addr, align 4
  %0 = load i32, i32* %constraint.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.52

if.end:                                           ; preds = %entry
  %1 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %2 = bitcast %struct._GimpRectangleTool* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRectangleTool*
  %call2 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %3)
  store %struct._GimpRectangleToolPrivate* %call2, %struct._GimpRectangleToolPrivate** %private, align 8
  %4 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %5 = load i32, i32* %constraint.addr, align 4
  call void @gimp_rectangle_tool_get_constraints(%struct._GimpRectangleTool* %4, i32* null, i32* %min_y, i32* null, i32* %max_y, i32 %5)
  %6 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y1 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %6, i32 0, i32 7
  %7 = load double, double* %y1, align 8
  %8 = load i32, i32* %min_y, align 4
  %conv = sitofp i32 %8 to double
  %cmp3 = fcmp olt double %7, %conv
  br i1 %cmp3, label %if.then.5, label %if.end.23

if.then.5:                                        ; preds = %if.end
  %9 = load i32, i32* %min_y, align 4
  %conv6 = sitofp i32 %9 to double
  %10 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y17 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %10, i32 0, i32 7
  %11 = load double, double* %y17, align 8
  %sub = fsub double %conv6, %11
  store double %sub, double* %dy, align 8
  %12 = load double, double* %dy, align 8
  %13 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y18 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %13, i32 0, i32 7
  %14 = load double, double* %y18, align 8
  %add = fadd double %14, %12
  store double %add, double* %y18, align 8
  %15 = load i32, i32* %symmetrically.addr, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.then.5
  %16 = load double, double* %dy, align 8
  %17 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y2 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %17, i32 0, i32 9
  %18 = load double, double* %y2, align 8
  %sub10 = fsub double %18, %16
  store double %sub10, double* %y2, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.then.5
  %19 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y212 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %19, i32 0, i32 9
  %20 = load double, double* %y212, align 8
  %21 = load i32, i32* %min_y, align 4
  %conv13 = sitofp i32 %21 to double
  %cmp14 = fcmp olt double %20, %conv13
  br i1 %cmp14, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.end.11
  %22 = load i32, i32* %min_y, align 4
  %conv17 = sitofp i32 %22 to double
  %23 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y218 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %23, i32 0, i32 9
  store double %conv17, double* %y218, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.end.11
  %24 = load i32*, i32** %clamped_sides.addr, align 8
  %tobool20 = icmp ne i32* %24, null
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.19
  %25 = load i32*, i32** %clamped_sides.addr, align 8
  %26 = load i32, i32* %25, align 4
  %or = or i32 %26, 4
  store i32 %or, i32* %25, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.19
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end
  %27 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y224 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %27, i32 0, i32 9
  %28 = load double, double* %y224, align 8
  %29 = load i32, i32* %max_y, align 4
  %conv25 = sitofp i32 %29 to double
  %cmp26 = fcmp ogt double %28, %conv25
  br i1 %cmp26, label %if.then.28, label %if.end.52

if.then.28:                                       ; preds = %if.end.23
  %30 = load i32, i32* %max_y, align 4
  %conv30 = sitofp i32 %30 to double
  %31 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y231 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %31, i32 0, i32 9
  %32 = load double, double* %y231, align 8
  %sub32 = fsub double %conv30, %32
  store double %sub32, double* %dy29, align 8
  %33 = load double, double* %dy29, align 8
  %34 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y233 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %34, i32 0, i32 9
  %35 = load double, double* %y233, align 8
  %add34 = fadd double %35, %33
  store double %add34, double* %y233, align 8
  %36 = load i32, i32* %symmetrically.addr, align 4
  %tobool35 = icmp ne i32 %36, 0
  br i1 %tobool35, label %if.then.36, label %if.end.39

if.then.36:                                       ; preds = %if.then.28
  %37 = load double, double* %dy29, align 8
  %38 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y137 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %38, i32 0, i32 7
  %39 = load double, double* %y137, align 8
  %sub38 = fsub double %39, %37
  store double %sub38, double* %y137, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.36, %if.then.28
  %40 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y140 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %40, i32 0, i32 7
  %41 = load double, double* %y140, align 8
  %42 = load i32, i32* %max_y, align 4
  %conv41 = sitofp i32 %42 to double
  %cmp42 = fcmp ogt double %41, %conv41
  br i1 %cmp42, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %if.end.39
  %43 = load i32, i32* %max_y, align 4
  %conv45 = sitofp i32 %43 to double
  %44 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y146 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %44, i32 0, i32 7
  store double %conv45, double* %y146, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.44, %if.end.39
  %45 = load i32*, i32** %clamped_sides.addr, align 8
  %tobool48 = icmp ne i32* %45, null
  br i1 %tobool48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.end.47
  %46 = load i32*, i32** %clamped_sides.addr, align 8
  %47 = load i32, i32* %46, align 4
  %or50 = or i32 %47, 8
  store i32 %or50, i32* %46, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.end.47
  br label %if.end.52

if.end.52:                                        ; preds = %if.then, %if.end.51, %if.end.23
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_tool_get_constraints(%struct._GimpRectangleTool* %rect_tool, i32* %min_x, i32* %min_y, i32* %max_x, i32* %max_y, i32 %constraint) #1 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %min_x.addr = alloca i32*, align 8
  %min_y.addr = alloca i32*, align 8
  %max_x.addr = alloca i32*, align 8
  %max_y.addr = alloca i32*, align 8
  %constraint.addr = alloca i32, align 4
  %tool = alloca %struct._GimpTool*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %min_x_dummy = alloca i32, align 4
  %min_y_dummy = alloca i32, align 4
  %max_x_dummy = alloca i32, align 4
  %max_y_dummy = alloca i32, align 4
  %item = alloca %struct._GimpItem*, align 8
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  store i32* %min_x, i32** %min_x.addr, align 8
  store i32* %min_y, i32** %min_y.addr, align 8
  store i32* %max_x, i32** %max_x.addr, align 8
  store i32* %max_y, i32** %max_y.addr, align 8
  store i32 %constraint, i32* %constraint.addr, align 4
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load i32*, i32** %min_x.addr, align 8
  %tobool = icmp ne i32* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32* %min_x_dummy, i32** %min_x.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32*, i32** %min_y.addr, align 8
  %tobool2 = icmp ne i32* %4, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32* %min_y_dummy, i32** %min_y.addr, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %5 = load i32*, i32** %max_x.addr, align 8
  %tobool5 = icmp ne i32* %5, null
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end.4
  store i32* %max_x_dummy, i32** %max_x.addr, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.4
  %6 = load i32*, i32** %max_y.addr, align 8
  %tobool8 = icmp ne i32* %6, null
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end.7
  store i32* %max_y_dummy, i32** %max_y.addr, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.7
  %7 = load i32*, i32** %min_x.addr, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32*, i32** %min_y.addr, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32*, i32** %max_x.addr, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32*, i32** %max_y.addr, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %11, i32 0, i32 4
  %12 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool11 = icmp ne %struct._GimpDisplay* %12, null
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end.10
  br label %sw.epilog

if.end.13:                                        ; preds = %if.end.10
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display14 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %13, i32 0, i32 4
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display14, align 8
  %call15 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %14)
  store %struct._GimpImage* %call15, %struct._GimpImage** %image, align 8
  %15 = load i32, i32* %constraint.addr, align 4
  switch i32 %15, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.18
  ]

sw.bb:                                            ; preds = %if.end.13
  %16 = load i32*, i32** %min_x.addr, align 8
  store i32 0, i32* %16, align 4
  %17 = load i32*, i32** %min_y.addr, align 8
  store i32 0, i32* %17, align 4
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call16 = call i32 @gimp_image_get_width(%struct._GimpImage* %18)
  %19 = load i32*, i32** %max_x.addr, align 8
  store i32 %call16, i32* %19, align 4
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call17 = call i32 @gimp_image_get_height(%struct._GimpImage* %20)
  %21 = load i32*, i32** %max_y.addr, align 8
  store i32 %call17, i32* %21, align 4
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.end.13
  %22 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %drawable = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %22, i32 0, i32 5
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %24 = bitcast %struct._GimpDrawable* %23 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_item_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call19)
  %25 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpItem*
  store %struct._GimpItem* %25, %struct._GimpItem** %item, align 8
  %26 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %27 = load i32*, i32** %min_x.addr, align 8
  %28 = load i32*, i32** %min_y.addr, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %26, i32* %27, i32* %28)
  %29 = load i32*, i32** %min_x.addr, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call21 = call i32 @gimp_item_get_width(%struct._GimpItem* %31)
  %add = add nsw i32 %30, %call21
  %32 = load i32*, i32** %max_x.addr, align 8
  store i32 %add, i32* %32, align 4
  %33 = load i32*, i32** %min_y.addr, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call22 = call i32 @gimp_item_get_height(%struct._GimpItem* %35)
  %add23 = add nsw i32 %34, %call22
  %36 = load i32*, i32** %max_y.addr, align 8
  store i32 %add23, i32* %36, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.13
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.43, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.12, %sw.default, %sw.bb.18, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_tool_apply_coord(%struct._GimpRectangleTool* %rect_tool, double %coord_x, double %coord_y) #1 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %coord_x.addr = alloca double, align 8
  %coord_y.addr = alloca double, align 8
  %private = alloca %struct._GimpRectangleToolPrivate*, align 8
  %options = alloca %struct._GimpRectangleOptions*, align 8
  %options_private = alloca %struct._GimpRectangleOptionsPrivate*, align 8
  %w = alloca double, align 8
  %h = alloca double, align 8
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  store double %coord_x, double* %coord_x.addr, align 8
  store double %coord_y, double* %coord_y.addr, align 8
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRectangleTool*
  %call2 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %2)
  store %struct._GimpRectangleToolPrivate* %call2, %struct._GimpRectangleToolPrivate** %private, align 8
  %3 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %4 = bitcast %struct._GimpRectangleTool* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_tool_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpTool*
  %call5 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call5 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_rectangle_options_interface_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call6)
  %7 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpRectangleOptions*
  store %struct._GimpRectangleOptions* %7, %struct._GimpRectangleOptions** %options, align 8
  %8 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %options, align 8
  %9 = bitcast %struct._GimpRectangleOptions* %8 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_rectangle_options_interface_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call8)
  %10 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpRectangleOptions*
  %call10 = call %struct._GimpRectangleOptionsPrivate* @gimp_rectangle_options_get_private(%struct._GimpRectangleOptions* %10)
  store %struct._GimpRectangleOptionsPrivate* %call10, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %11 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %function = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %11, i32 0, i32 14
  %12 = load i32, i32* %function, align 4
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.44, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %function11 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %13, i32 0, i32 14
  %14 = load i32, i32* %function11, align 4
  %cmp12 = icmp eq i32 %14, 3
  br i1 %cmp12, label %if.then.13, label %if.end.22

if.then.13:                                       ; preds = %if.end
  %15 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x2 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %15, i32 0, i32 8
  %16 = load double, double* %x2, align 8
  %17 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x1 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %17, i32 0, i32 6
  %18 = load double, double* %x1, align 8
  %sub = fsub double %16, %18
  store double %sub, double* %w, align 8
  %19 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y2 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %19, i32 0, i32 9
  %20 = load double, double* %y2, align 8
  %21 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y1 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %21, i32 0, i32 7
  %22 = load double, double* %y1, align 8
  %sub14 = fsub double %20, %22
  store double %sub14, double* %h, align 8
  %23 = load double, double* %coord_x.addr, align 8
  %24 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x115 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %24, i32 0, i32 6
  store double %23, double* %x115, align 8
  %25 = load double, double* %coord_y.addr, align 8
  %26 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y116 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %26, i32 0, i32 7
  store double %25, double* %y116, align 8
  %27 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x117 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %27, i32 0, i32 6
  %28 = load double, double* %x117, align 8
  %29 = load double, double* %w, align 8
  %add = fadd double %28, %29
  %30 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x218 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %30, i32 0, i32 8
  store double %add, double* %x218, align 8
  %31 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y119 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %31, i32 0, i32 7
  %32 = load double, double* %y119, align 8
  %33 = load double, double* %h, align 8
  %add20 = fadd double %32, %33
  %34 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y221 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %34, i32 0, i32 9
  store double %add20, double* %y221, align 8
  br label %sw.epilog.63

if.end.22:                                        ; preds = %if.end
  %35 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %function23 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %35, i32 0, i32 14
  %36 = load i32, i32* %function23, align 4
  switch i32 %36, label %sw.epilog [
    i32 4, label %sw.bb
    i32 6, label %sw.bb
    i32 8, label %sw.bb
    i32 5, label %sw.bb.30
    i32 7, label %sw.bb.30
    i32 9, label %sw.bb.30
  ]

sw.bb:                                            ; preds = %if.end.22, %if.end.22, %if.end.22
  %37 = load double, double* %coord_x.addr, align 8
  %38 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x124 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %38, i32 0, i32 6
  store double %37, double* %x124, align 8
  %39 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %fixed_center = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %39, i32 0, i32 24
  %40 = load i32, i32* %fixed_center, align 4
  %tobool = icmp ne i32 %40, 0
  br i1 %tobool, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %sw.bb
  %41 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %center_x_on_fixed_center = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %41, i32 0, i32 3
  %42 = load double, double* %center_x_on_fixed_center, align 8
  %mul = fmul double 2.000000e+00, %42
  %43 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x126 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %43, i32 0, i32 6
  %44 = load double, double* %x126, align 8
  %sub27 = fsub double %mul, %44
  %45 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x228 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %45, i32 0, i32 8
  store double %sub27, double* %x228, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.25, %sw.bb
  br label %sw.epilog

sw.bb.30:                                         ; preds = %if.end.22, %if.end.22, %if.end.22
  %46 = load double, double* %coord_x.addr, align 8
  %47 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x231 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %47, i32 0, i32 8
  store double %46, double* %x231, align 8
  %48 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %fixed_center32 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %48, i32 0, i32 24
  %49 = load i32, i32* %fixed_center32, align 4
  %tobool33 = icmp ne i32 %49, 0
  br i1 %tobool33, label %if.then.34, label %if.end.40

if.then.34:                                       ; preds = %sw.bb.30
  %50 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %center_x_on_fixed_center35 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %50, i32 0, i32 3
  %51 = load double, double* %center_x_on_fixed_center35, align 8
  %mul36 = fmul double 2.000000e+00, %51
  %52 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x237 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %52, i32 0, i32 8
  %53 = load double, double* %x237, align 8
  %sub38 = fsub double %mul36, %53
  %54 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x139 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %54, i32 0, i32 6
  store double %sub38, double* %x139, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.34, %sw.bb.30
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.22, %if.end.40, %if.end.29
  %55 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %function41 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %55, i32 0, i32 14
  %56 = load i32, i32* %function41, align 4
  switch i32 %56, label %sw.epilog.63 [
    i32 4, label %sw.bb.42
    i32 5, label %sw.bb.42
    i32 10, label %sw.bb.42
    i32 6, label %sw.bb.52
    i32 7, label %sw.bb.52
    i32 11, label %sw.bb.52
  ]

sw.bb.42:                                         ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  %57 = load double, double* %coord_y.addr, align 8
  %58 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y143 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %58, i32 0, i32 7
  store double %57, double* %y143, align 8
  %59 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %fixed_center44 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %59, i32 0, i32 24
  %60 = load i32, i32* %fixed_center44, align 4
  %tobool45 = icmp ne i32 %60, 0
  br i1 %tobool45, label %if.then.46, label %if.end.51

if.then.46:                                       ; preds = %sw.bb.42
  %61 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %center_y_on_fixed_center = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %61, i32 0, i32 4
  %62 = load double, double* %center_y_on_fixed_center, align 8
  %mul47 = fmul double 2.000000e+00, %62
  %63 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y148 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %63, i32 0, i32 7
  %64 = load double, double* %y148, align 8
  %sub49 = fsub double %mul47, %64
  %65 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y250 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %65, i32 0, i32 9
  store double %sub49, double* %y250, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.46, %sw.bb.42
  br label %sw.epilog.63

sw.bb.52:                                         ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  %66 = load double, double* %coord_y.addr, align 8
  %67 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y253 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %67, i32 0, i32 9
  store double %66, double* %y253, align 8
  %68 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %fixed_center54 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %68, i32 0, i32 24
  %69 = load i32, i32* %fixed_center54, align 4
  %tobool55 = icmp ne i32 %69, 0
  br i1 %tobool55, label %if.then.56, label %if.end.62

if.then.56:                                       ; preds = %sw.bb.52
  %70 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %center_y_on_fixed_center57 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %70, i32 0, i32 4
  %71 = load double, double* %center_y_on_fixed_center57, align 8
  %mul58 = fmul double 2.000000e+00, %71
  %72 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y259 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %72, i32 0, i32 9
  %73 = load double, double* %y259, align 8
  %sub60 = fsub double %mul58, %73
  %74 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y161 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %74, i32 0, i32 7
  store double %sub60, double* %y161, align 8
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.56, %sw.bb.52
  br label %sw.epilog.63

sw.epilog.63:                                     ; preds = %if.then.13, %sw.epilog, %if.end.62, %if.end.51
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_tool_handle_general_clamping(%struct._GimpRectangleTool* %rect_tool) #1 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %private = alloca %struct._GimpRectangleToolPrivate*, align 8
  %options = alloca %struct._GimpRectangleOptions*, align 8
  %options_private = alloca %struct._GimpRectangleOptionsPrivate*, align 8
  %constraint = alloca i32, align 4
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRectangleTool*
  %call2 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %2)
  store %struct._GimpRectangleToolPrivate* %call2, %struct._GimpRectangleToolPrivate** %private, align 8
  %3 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %4 = bitcast %struct._GimpRectangleTool* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_tool_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpTool*
  %call5 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call5 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_rectangle_options_interface_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call6)
  %7 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpRectangleOptions*
  store %struct._GimpRectangleOptions* %7, %struct._GimpRectangleOptions** %options, align 8
  %8 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %options, align 8
  %9 = bitcast %struct._GimpRectangleOptions* %8 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_rectangle_options_interface_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call8)
  %10 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpRectangleOptions*
  %call10 = call %struct._GimpRectangleOptionsPrivate* @gimp_rectangle_options_get_private(%struct._GimpRectangleOptions* %10)
  store %struct._GimpRectangleOptionsPrivate* %call10, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %11 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %call11 = call i32 @gimp_rectangle_tool_get_constraint(%struct._GimpRectangleTool* %11)
  store i32 %call11, i32* %constraint, align 4
  %12 = load i32, i32* %constraint, align 4
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.14

if.end:                                           ; preds = %entry
  %13 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %function = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %13, i32 0, i32 14
  %14 = load i32, i32* %function, align 4
  %cmp12 = icmp ne i32 %14, 3
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end
  %15 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %16 = load i32, i32* %constraint, align 4
  %17 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %fixed_center = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %17, i32 0, i32 24
  %18 = load i32, i32* %fixed_center, align 4
  call void @gimp_rectangle_tool_clamp(%struct._GimpRectangleTool* %15, i32* null, i32 %16, i32 %18)
  br label %if.end.14

if.else:                                          ; preds = %if.end
  %19 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %20 = load i32, i32* %constraint, align 4
  call void @gimp_rectangle_tool_keep_inside(%struct._GimpRectangleTool* %19, i32 %20)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then, %if.else, %if.then.13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_tool_apply_fixed_rule(%struct._GimpRectangleTool* %rect_tool) #1 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %private = alloca %struct._GimpRectangleToolPrivate*, align 8
  %options = alloca %struct._GimpRectangleOptions*, align 8
  %options_private = alloca %struct._GimpRectangleOptionsPrivate*, align 8
  %constraint_to_use = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %aspect = alloca double, align 8
  %clamped_sides = alloca i32, align 4
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpRectangleTool*
  %call4 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %5)
  store %struct._GimpRectangleToolPrivate* %call4, %struct._GimpRectangleToolPrivate** %private, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %7 = bitcast %struct._GimpTool* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_tool_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpTool*
  %call7 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %8)
  %9 = bitcast %struct._GimpToolOptions* %call7 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_rectangle_options_interface_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call8)
  %10 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpRectangleOptions*
  store %struct._GimpRectangleOptions* %10, %struct._GimpRectangleOptions** %options, align 8
  %11 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %options, align 8
  %12 = bitcast %struct._GimpRectangleOptions* %11 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_rectangle_options_interface_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call10)
  %13 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpRectangleOptions*
  %call12 = call %struct._GimpRectangleOptionsPrivate* @gimp_rectangle_options_get_private(%struct._GimpRectangleOptions* %13)
  store %struct._GimpRectangleOptionsPrivate* %call12, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %14 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %14, i32 0, i32 4
  %15 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call13 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %15)
  store %struct._GimpImage* %call13, %struct._GimpImage** %image, align 8
  %16 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %call14 = call i32 @gimp_rectangle_tool_get_constraint(%struct._GimpRectangleTool* %16)
  store i32 %call14, i32* %constraint_to_use, align 4
  %17 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %options, align 8
  %call15 = call i32 @gimp_rectangle_options_fixed_rule_active(%struct._GimpRectangleOptions* %17, i32 0)
  %tobool = icmp ne i32 %call15, 0
  br i1 %tobool, label %if.then, label %if.else.46

if.then:                                          ; preds = %entry
  %18 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %aspect_numerator = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %18, i32 0, i32 19
  %19 = load double, double* %aspect_numerator, align 8
  %20 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %aspect_denominator = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %20, i32 0, i32 20
  %21 = load double, double* %aspect_denominator, align 8
  %div = fdiv double %19, %21
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call16 = call i32 @gimp_image_get_width(%struct._GimpImage* %22)
  %conv = sitofp i32 %call16 to double
  %cmp = fcmp ogt double %div, %conv
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %23 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call18 = call i32 @gimp_image_get_width(%struct._GimpImage* %23)
  %conv19 = sitofp i32 %call18 to double
  br label %cond.end.36

cond.false:                                       ; preds = %if.then
  %24 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %aspect_numerator20 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %24, i32 0, i32 19
  %25 = load double, double* %aspect_numerator20, align 8
  %26 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %aspect_denominator21 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %26, i32 0, i32 20
  %27 = load double, double* %aspect_denominator21, align 8
  %div22 = fdiv double %25, %27
  %28 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call23 = call i32 @gimp_image_get_height(%struct._GimpImage* %28)
  %conv24 = sitofp i32 %call23 to double
  %div25 = fdiv double 1.000000e+00, %conv24
  %cmp26 = fcmp olt double %div22, %div25
  br i1 %cmp26, label %cond.true.28, label %cond.false.32

cond.true.28:                                     ; preds = %cond.false
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call29 = call i32 @gimp_image_get_height(%struct._GimpImage* %29)
  %conv30 = sitofp i32 %call29 to double
  %div31 = fdiv double 1.000000e+00, %conv30
  br label %cond.end

cond.false.32:                                    ; preds = %cond.false
  %30 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %aspect_numerator33 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %30, i32 0, i32 19
  %31 = load double, double* %aspect_numerator33, align 8
  %32 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %aspect_denominator34 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %32, i32 0, i32 20
  %33 = load double, double* %aspect_denominator34, align 8
  %div35 = fdiv double %31, %33
  br label %cond.end

cond.end:                                         ; preds = %cond.false.32, %cond.true.28
  %cond = phi double [ %div31, %cond.true.28 ], [ %div35, %cond.false.32 ]
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.end, %cond.true
  %cond37 = phi double [ %conv19, %cond.true ], [ %cond, %cond.end ]
  store double %cond37, double* %aspect, align 8
  %34 = load i32, i32* %constraint_to_use, align 4
  %cmp38 = icmp eq i32 %34, 0
  br i1 %cmp38, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %cond.end.36
  %35 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %36 = load double, double* %aspect, align 8
  call void @gimp_rectangle_tool_apply_aspect(%struct._GimpRectangleTool* %35, double %36, i32 0)
  br label %if.end.45

if.else:                                          ; preds = %cond.end.36
  %37 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %function = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %37, i32 0, i32 14
  %38 = load i32, i32* %function, align 4
  %cmp41 = icmp ne i32 %38, 3
  br i1 %cmp41, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %if.else
  store i32 0, i32* %clamped_sides, align 4
  %39 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %40 = load double, double* %aspect, align 8
  %41 = load i32, i32* %clamped_sides, align 4
  call void @gimp_rectangle_tool_apply_aspect(%struct._GimpRectangleTool* %39, double %40, i32 %41)
  %42 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %43 = load i32, i32* %constraint_to_use, align 4
  %44 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %fixed_center = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %44, i32 0, i32 24
  %45 = load i32, i32* %fixed_center, align 4
  call void @gimp_rectangle_tool_clamp(%struct._GimpRectangleTool* %42, i32* %clamped_sides, i32 %43, i32 %45)
  %46 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %47 = load double, double* %aspect, align 8
  %48 = load i32, i32* %clamped_sides, align 4
  call void @gimp_rectangle_tool_apply_aspect(%struct._GimpRectangleTool* %46, double %47, i32 %48)
  br label %if.end

if.else.44:                                       ; preds = %if.else
  %49 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %50 = load double, double* %aspect, align 8
  call void @gimp_rectangle_tool_apply_aspect(%struct._GimpRectangleTool* %49, double %50, i32 0)
  %51 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %52 = load i32, i32* %constraint_to_use, align 4
  call void @gimp_rectangle_tool_keep_inside(%struct._GimpRectangleTool* %51, i32 %52)
  br label %if.end

if.end:                                           ; preds = %if.else.44, %if.then.43
  br label %if.end.45

if.end.45:                                        ; preds = %if.end, %if.then.40
  br label %if.end.61

if.else.46:                                       ; preds = %entry
  %53 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %options, align 8
  %call47 = call i32 @gimp_rectangle_options_fixed_rule_active(%struct._GimpRectangleOptions* %53, i32 3)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %if.else.46
  %54 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %55 = load i32, i32* %constraint_to_use, align 4
  %56 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %desired_fixed_size_width = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %56, i32 0, i32 14
  %57 = load double, double* %desired_fixed_size_width, align 8
  call void @gimp_rectangle_tool_apply_fixed_width(%struct._GimpRectangleTool* %54, i32 %55, double %57)
  %58 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %59 = load i32, i32* %constraint_to_use, align 4
  %60 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %desired_fixed_size_height = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %60, i32 0, i32 15
  %61 = load double, double* %desired_fixed_size_height, align 8
  call void @gimp_rectangle_tool_apply_fixed_height(%struct._GimpRectangleTool* %58, i32 %59, double %61)
  br label %if.end.60

if.else.50:                                       ; preds = %if.else.46
  %62 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %options, align 8
  %call51 = call i32 @gimp_rectangle_options_fixed_rule_active(%struct._GimpRectangleOptions* %62, i32 1)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %if.else.50
  %63 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %64 = load i32, i32* %constraint_to_use, align 4
  %65 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %desired_fixed_width = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %65, i32 0, i32 12
  %66 = load double, double* %desired_fixed_width, align 8
  call void @gimp_rectangle_tool_apply_fixed_width(%struct._GimpRectangleTool* %63, i32 %64, double %66)
  br label %if.end.59

if.else.54:                                       ; preds = %if.else.50
  %67 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %options, align 8
  %call55 = call i32 @gimp_rectangle_options_fixed_rule_active(%struct._GimpRectangleOptions* %67, i32 2)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.else.54
  %68 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %69 = load i32, i32* %constraint_to_use, align 4
  %70 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %desired_fixed_height = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %70, i32 0, i32 13
  %71 = load double, double* %desired_fixed_height, align 8
  call void @gimp_rectangle_tool_apply_fixed_height(%struct._GimpRectangleTool* %68, i32 %69, double %71)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %if.else.54
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.53
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.49
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.end.45
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_tool_keep_inside(%struct._GimpRectangleTool* %rect_tool, i32 %constraint) #1 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %constraint.addr = alloca i32, align 4
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  store i32 %constraint, i32* %constraint.addr, align 4
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = load i32, i32* %constraint.addr, align 4
  call void @gimp_rectangle_tool_keep_inside_horizontally(%struct._GimpRectangleTool* %0, i32 %1)
  %2 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %3 = load i32, i32* %constraint.addr, align 4
  call void @gimp_rectangle_tool_keep_inside_vertically(%struct._GimpRectangleTool* %2, i32 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_tool_keep_inside_horizontally(%struct._GimpRectangleTool* %rect_tool, i32 %constraint) #1 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %constraint.addr = alloca i32, align 4
  %private = alloca %struct._GimpRectangleToolPrivate*, align 8
  %min_x = alloca i32, align 4
  %max_x = alloca i32, align 4
  %dx = alloca double, align 8
  %dx28 = alloca double, align 8
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  store i32 %constraint, i32* %constraint.addr, align 4
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRectangleTool*
  %call2 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %2)
  store %struct._GimpRectangleToolPrivate* %call2, %struct._GimpRectangleToolPrivate** %private, align 8
  %3 = load i32, i32* %constraint.addr, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.37

if.end:                                           ; preds = %entry
  %4 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %5 = load i32, i32* %constraint.addr, align 4
  call void @gimp_rectangle_tool_get_constraints(%struct._GimpRectangleTool* %4, i32* %min_x, i32* null, i32* %max_x, i32* null, i32 %5)
  %6 = load i32, i32* %max_x, align 4
  %7 = load i32, i32* %min_x, align 4
  %sub = sub nsw i32 %6, %7
  %conv = sitofp i32 %sub to double
  %8 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x2 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %8, i32 0, i32 8
  %9 = load double, double* %x2, align 8
  %10 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x1 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %10, i32 0, i32 6
  %11 = load double, double* %x1, align 8
  %sub3 = fsub double %9, %11
  %cmp4 = fcmp olt double %conv, %sub3
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %12 = load i32, i32* %min_x, align 4
  %conv7 = sitofp i32 %12 to double
  %13 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x18 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %13, i32 0, i32 6
  store double %conv7, double* %x18, align 8
  %14 = load i32, i32* %max_x, align 4
  %conv9 = sitofp i32 %14 to double
  %15 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x210 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %15, i32 0, i32 8
  store double %conv9, double* %x210, align 8
  br label %if.end.37

if.else:                                          ; preds = %if.end
  %16 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x111 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %16, i32 0, i32 6
  %17 = load double, double* %x111, align 8
  %18 = load i32, i32* %min_x, align 4
  %conv12 = sitofp i32 %18 to double
  %cmp13 = fcmp olt double %17, %conv12
  br i1 %cmp13, label %if.then.15, label %if.end.22

if.then.15:                                       ; preds = %if.else
  %19 = load i32, i32* %min_x, align 4
  %conv16 = sitofp i32 %19 to double
  %20 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x117 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %20, i32 0, i32 6
  %21 = load double, double* %x117, align 8
  %sub18 = fsub double %conv16, %21
  store double %sub18, double* %dx, align 8
  %22 = load double, double* %dx, align 8
  %23 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x119 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %23, i32 0, i32 6
  %24 = load double, double* %x119, align 8
  %add = fadd double %24, %22
  store double %add, double* %x119, align 8
  %25 = load double, double* %dx, align 8
  %26 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x220 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %26, i32 0, i32 8
  %27 = load double, double* %x220, align 8
  %add21 = fadd double %27, %25
  store double %add21, double* %x220, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.15, %if.else
  %28 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x223 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %28, i32 0, i32 8
  %29 = load double, double* %x223, align 8
  %30 = load i32, i32* %max_x, align 4
  %conv24 = sitofp i32 %30 to double
  %cmp25 = fcmp ogt double %29, %conv24
  br i1 %cmp25, label %if.then.27, label %if.end.36

if.then.27:                                       ; preds = %if.end.22
  %31 = load i32, i32* %max_x, align 4
  %conv29 = sitofp i32 %31 to double
  %32 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x230 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %32, i32 0, i32 8
  %33 = load double, double* %x230, align 8
  %sub31 = fsub double %conv29, %33
  store double %sub31, double* %dx28, align 8
  %34 = load double, double* %dx28, align 8
  %35 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x132 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %35, i32 0, i32 6
  %36 = load double, double* %x132, align 8
  %add33 = fadd double %36, %34
  store double %add33, double* %x132, align 8
  %37 = load double, double* %dx28, align 8
  %38 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x234 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %38, i32 0, i32 8
  %39 = load double, double* %x234, align 8
  %add35 = fadd double %39, %37
  store double %add35, double* %x234, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.27, %if.end.22
  br label %if.end.37

if.end.37:                                        ; preds = %if.then, %if.end.36, %if.then.6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_tool_keep_inside_vertically(%struct._GimpRectangleTool* %rect_tool, i32 %constraint) #1 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %constraint.addr = alloca i32, align 4
  %private = alloca %struct._GimpRectangleToolPrivate*, align 8
  %min_y = alloca i32, align 4
  %max_y = alloca i32, align 4
  %dy = alloca double, align 8
  %dy28 = alloca double, align 8
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  store i32 %constraint, i32* %constraint.addr, align 4
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRectangleTool*
  %call2 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %2)
  store %struct._GimpRectangleToolPrivate* %call2, %struct._GimpRectangleToolPrivate** %private, align 8
  %3 = load i32, i32* %constraint.addr, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.37

if.end:                                           ; preds = %entry
  %4 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %5 = load i32, i32* %constraint.addr, align 4
  call void @gimp_rectangle_tool_get_constraints(%struct._GimpRectangleTool* %4, i32* null, i32* %min_y, i32* null, i32* %max_y, i32 %5)
  %6 = load i32, i32* %max_y, align 4
  %7 = load i32, i32* %min_y, align 4
  %sub = sub nsw i32 %6, %7
  %conv = sitofp i32 %sub to double
  %8 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y2 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %8, i32 0, i32 9
  %9 = load double, double* %y2, align 8
  %10 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y1 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %10, i32 0, i32 7
  %11 = load double, double* %y1, align 8
  %sub3 = fsub double %9, %11
  %cmp4 = fcmp olt double %conv, %sub3
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %12 = load i32, i32* %min_y, align 4
  %conv7 = sitofp i32 %12 to double
  %13 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y18 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %13, i32 0, i32 7
  store double %conv7, double* %y18, align 8
  %14 = load i32, i32* %max_y, align 4
  %conv9 = sitofp i32 %14 to double
  %15 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y210 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %15, i32 0, i32 9
  store double %conv9, double* %y210, align 8
  br label %if.end.37

if.else:                                          ; preds = %if.end
  %16 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y111 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %16, i32 0, i32 7
  %17 = load double, double* %y111, align 8
  %18 = load i32, i32* %min_y, align 4
  %conv12 = sitofp i32 %18 to double
  %cmp13 = fcmp olt double %17, %conv12
  br i1 %cmp13, label %if.then.15, label %if.end.22

if.then.15:                                       ; preds = %if.else
  %19 = load i32, i32* %min_y, align 4
  %conv16 = sitofp i32 %19 to double
  %20 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y117 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %20, i32 0, i32 7
  %21 = load double, double* %y117, align 8
  %sub18 = fsub double %conv16, %21
  store double %sub18, double* %dy, align 8
  %22 = load double, double* %dy, align 8
  %23 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y119 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %23, i32 0, i32 7
  %24 = load double, double* %y119, align 8
  %add = fadd double %24, %22
  store double %add, double* %y119, align 8
  %25 = load double, double* %dy, align 8
  %26 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y220 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %26, i32 0, i32 9
  %27 = load double, double* %y220, align 8
  %add21 = fadd double %27, %25
  store double %add21, double* %y220, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.15, %if.else
  %28 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y223 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %28, i32 0, i32 9
  %29 = load double, double* %y223, align 8
  %30 = load i32, i32* %max_y, align 4
  %conv24 = sitofp i32 %30 to double
  %cmp25 = fcmp ogt double %29, %conv24
  br i1 %cmp25, label %if.then.27, label %if.end.36

if.then.27:                                       ; preds = %if.end.22
  %31 = load i32, i32* %max_y, align 4
  %conv29 = sitofp i32 %31 to double
  %32 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y230 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %32, i32 0, i32 9
  %33 = load double, double* %y230, align 8
  %sub31 = fsub double %conv29, %33
  store double %sub31, double* %dy28, align 8
  %34 = load double, double* %dy28, align 8
  %35 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y132 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %35, i32 0, i32 7
  %36 = load double, double* %y132, align 8
  %add33 = fadd double %36, %34
  store double %add33, double* %y132, align 8
  %37 = load double, double* %dy28, align 8
  %38 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y234 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %38, i32 0, i32 9
  %39 = load double, double* %y234, align 8
  %add35 = fadd double %39, %37
  store double %add35, double* %y234, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.27, %if.end.22
  br label %if.end.37

if.end.37:                                        ; preds = %if.then, %if.end.36, %if.then.6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_tool_apply_aspect(%struct._GimpRectangleTool* %rect_tool, double %aspect, i32 %clamped_sides) #1 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %aspect.addr = alloca double, align 8
  %clamped_sides.addr = alloca i32, align 4
  %private = alloca %struct._GimpRectangleToolPrivate*, align 8
  %options = alloca %struct._GimpRectangleOptions*, align 8
  %options_private = alloca %struct._GimpRectangleOptionsPrivate*, align 8
  %current_w = alloca double, align 8
  %current_h = alloca double, align 8
  %current_aspect = alloca double, align 8
  %side_to_resize = alloca i32, align 4
  %correct_h = alloca double, align 8
  %correct_w = alloca double, align 8
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  store double %aspect, double* %aspect.addr, align 8
  store i32 %clamped_sides, i32* %clamped_sides.addr, align 4
  store i32 0, i32* %side_to_resize, align 4
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRectangleTool*
  %call2 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %2)
  store %struct._GimpRectangleToolPrivate* %call2, %struct._GimpRectangleToolPrivate** %private, align 8
  %3 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %4 = bitcast %struct._GimpRectangleTool* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_tool_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpTool*
  %call5 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call5 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_rectangle_options_interface_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call6)
  %7 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpRectangleOptions*
  store %struct._GimpRectangleOptions* %7, %struct._GimpRectangleOptions** %options, align 8
  %8 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %options, align 8
  %9 = bitcast %struct._GimpRectangleOptions* %8 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_rectangle_options_interface_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call8)
  %10 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpRectangleOptions*
  %call10 = call %struct._GimpRectangleOptionsPrivate* @gimp_rectangle_options_get_private(%struct._GimpRectangleOptions* %10)
  store %struct._GimpRectangleOptionsPrivate* %call10, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %11 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x2 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %11, i32 0, i32 8
  %12 = load double, double* %x2, align 8
  %13 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x1 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %13, i32 0, i32 6
  %14 = load double, double* %x1, align 8
  %sub = fsub double %12, %14
  store double %sub, double* %current_w, align 8
  %15 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y2 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %15, i32 0, i32 9
  %16 = load double, double* %y2, align 8
  %17 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y1 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %17, i32 0, i32 7
  %18 = load double, double* %y1, align 8
  %sub11 = fsub double %16, %18
  store double %sub11, double* %current_h, align 8
  %19 = load double, double* %current_w, align 8
  %20 = load double, double* %current_h, align 8
  %div = fdiv double %19, %20
  store double %div, double* %current_aspect, align 8
  %21 = load double, double* %current_aspect, align 8
  %22 = load double, double* %aspect.addr, align 8
  %cmp = fcmp oeq double %21, %22
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %sw.epilog.209

if.end:                                           ; preds = %entry
  %23 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %options_private, align 8
  %fixed_center = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %23, i32 0, i32 24
  %24 = load i32, i32* %fixed_center, align 4
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %if.then.12, label %if.else.36

if.then.12:                                       ; preds = %if.end
  %25 = load double, double* %current_aspect, align 8
  %26 = load double, double* %aspect.addr, align 8
  %cmp13 = fcmp ogt double %25, %26
  br i1 %cmp13, label %if.then.14, label %if.else.21

if.then.14:                                       ; preds = %if.then.12
  %27 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %function = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %27, i32 0, i32 14
  %28 = load i32, i32* %function, align 4
  switch i32 %28, label %sw.default [
    i32 8, label %sw.bb
    i32 9, label %sw.bb
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 7, label %sw.bb
    i32 10, label %sw.bb.20
    i32 11, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %if.then.14, %if.then.14, %if.then.14, %if.then.14, %if.then.14, %if.then.14
  %29 = load i32, i32* %clamped_sides.addr, align 4
  %and = and i32 %29, 4
  %tobool15 = icmp ne i32 %and, 0
  br i1 %tobool15, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb
  %30 = load i32, i32* %clamped_sides.addr, align 4
  %and16 = and i32 %30, 8
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.else, label %if.then.18

if.then.18:                                       ; preds = %land.lhs.true
  store i32 6, i32* %side_to_resize, align 4
  br label %if.end.19

if.else:                                          ; preds = %land.lhs.true, %sw.bb
  store i32 5, i32* %side_to_resize, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.18
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.then.14, %if.then.14
  br label %sw.default

sw.default:                                       ; preds = %if.then.14, %sw.bb.20
  store i32 5, i32* %side_to_resize, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.19
  br label %if.end.35

if.else.21:                                       ; preds = %if.then.12
  %31 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %function22 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %31, i32 0, i32 14
  %32 = load i32, i32* %function22, align 4
  switch i32 %32, label %sw.default.33 [
    i32 10, label %sw.bb.23
    i32 11, label %sw.bb.23
    i32 4, label %sw.bb.23
    i32 5, label %sw.bb.23
    i32 6, label %sw.bb.23
    i32 7, label %sw.bb.23
    i32 8, label %sw.bb.32
    i32 9, label %sw.bb.32
  ]

sw.bb.23:                                         ; preds = %if.else.21, %if.else.21, %if.else.21, %if.else.21, %if.else.21, %if.else.21
  %33 = load i32, i32* %clamped_sides.addr, align 4
  %and24 = and i32 %33, 1
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.else.30, label %land.lhs.true.26

land.lhs.true.26:                                 ; preds = %sw.bb.23
  %34 = load i32, i32* %clamped_sides.addr, align 4
  %and27 = and i32 %34, 2
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %if.else.30, label %if.then.29

if.then.29:                                       ; preds = %land.lhs.true.26
  store i32 5, i32* %side_to_resize, align 4
  br label %if.end.31

if.else.30:                                       ; preds = %land.lhs.true.26, %sw.bb.23
  store i32 6, i32* %side_to_resize, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.30, %if.then.29
  br label %sw.epilog.34

sw.bb.32:                                         ; preds = %if.else.21, %if.else.21
  br label %sw.default.33

sw.default.33:                                    ; preds = %if.else.21, %sw.bb.32
  store i32 6, i32* %side_to_resize, align 4
  br label %sw.epilog.34

sw.epilog.34:                                     ; preds = %sw.default.33, %if.end.31
  br label %if.end.35

if.end.35:                                        ; preds = %sw.epilog.34, %sw.epilog
  br label %if.end.173

if.else.36:                                       ; preds = %if.end
  %35 = load double, double* %current_aspect, align 8
  %36 = load double, double* %aspect.addr, align 8
  %cmp37 = fcmp ogt double %35, %36
  br i1 %cmp37, label %if.then.38, label %if.else.105

if.then.38:                                       ; preds = %if.else.36
  %37 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %function39 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %37, i32 0, i32 14
  %38 = load i32, i32* %function39, align 4
  switch i32 %38, label %sw.default.84 [
    i32 4, label %sw.bb.40
    i32 5, label %sw.bb.46
    i32 6, label %sw.bb.52
    i32 7, label %sw.bb.58
    i32 8, label %sw.bb.64
    i32 9, label %sw.bb.73
    i32 11, label %sw.bb.82
    i32 10, label %sw.bb.82
    i32 3, label %sw.bb.83
  ]

sw.bb.40:                                         ; preds = %if.then.38
  %39 = load i32, i32* %clamped_sides.addr, align 4
  %and41 = and i32 %39, 4
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.else.44, label %if.then.43

if.then.43:                                       ; preds = %sw.bb.40
  store i32 3, i32* %side_to_resize, align 4
  br label %if.end.45

if.else.44:                                       ; preds = %sw.bb.40
  store i32 1, i32* %side_to_resize, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.44, %if.then.43
  br label %sw.epilog.104

sw.bb.46:                                         ; preds = %if.then.38
  %40 = load i32, i32* %clamped_sides.addr, align 4
  %and47 = and i32 %40, 4
  %tobool48 = icmp ne i32 %and47, 0
  br i1 %tobool48, label %if.else.50, label %if.then.49

if.then.49:                                       ; preds = %sw.bb.46
  store i32 3, i32* %side_to_resize, align 4
  br label %if.end.51

if.else.50:                                       ; preds = %sw.bb.46
  store i32 2, i32* %side_to_resize, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.50, %if.then.49
  br label %sw.epilog.104

sw.bb.52:                                         ; preds = %if.then.38
  %41 = load i32, i32* %clamped_sides.addr, align 4
  %and53 = and i32 %41, 8
  %tobool54 = icmp ne i32 %and53, 0
  br i1 %tobool54, label %if.else.56, label %if.then.55

if.then.55:                                       ; preds = %sw.bb.52
  store i32 4, i32* %side_to_resize, align 4
  br label %if.end.57

if.else.56:                                       ; preds = %sw.bb.52
  store i32 1, i32* %side_to_resize, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.56, %if.then.55
  br label %sw.epilog.104

sw.bb.58:                                         ; preds = %if.then.38
  %42 = load i32, i32* %clamped_sides.addr, align 4
  %and59 = and i32 %42, 8
  %tobool60 = icmp ne i32 %and59, 0
  br i1 %tobool60, label %if.else.62, label %if.then.61

if.then.61:                                       ; preds = %sw.bb.58
  store i32 4, i32* %side_to_resize, align 4
  br label %if.end.63

if.else.62:                                       ; preds = %sw.bb.58
  store i32 2, i32* %side_to_resize, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.62, %if.then.61
  br label %sw.epilog.104

sw.bb.64:                                         ; preds = %if.then.38
  %43 = load i32, i32* %clamped_sides.addr, align 4
  %and65 = and i32 %43, 4
  %tobool66 = icmp ne i32 %and65, 0
  br i1 %tobool66, label %if.else.71, label %land.lhs.true.67

land.lhs.true.67:                                 ; preds = %sw.bb.64
  %44 = load i32, i32* %clamped_sides.addr, align 4
  %and68 = and i32 %44, 8
  %tobool69 = icmp ne i32 %and68, 0
  br i1 %tobool69, label %if.else.71, label %if.then.70

if.then.70:                                       ; preds = %land.lhs.true.67
  store i32 6, i32* %side_to_resize, align 4
  br label %if.end.72

if.else.71:                                       ; preds = %land.lhs.true.67, %sw.bb.64
  store i32 1, i32* %side_to_resize, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.71, %if.then.70
  br label %sw.epilog.104

sw.bb.73:                                         ; preds = %if.then.38
  %45 = load i32, i32* %clamped_sides.addr, align 4
  %and74 = and i32 %45, 4
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %if.else.80, label %land.lhs.true.76

land.lhs.true.76:                                 ; preds = %sw.bb.73
  %46 = load i32, i32* %clamped_sides.addr, align 4
  %and77 = and i32 %46, 8
  %tobool78 = icmp ne i32 %and77, 0
  br i1 %tobool78, label %if.else.80, label %if.then.79

if.then.79:                                       ; preds = %land.lhs.true.76
  store i32 6, i32* %side_to_resize, align 4
  br label %if.end.81

if.else.80:                                       ; preds = %land.lhs.true.76, %sw.bb.73
  store i32 2, i32* %side_to_resize, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.80, %if.then.79
  br label %sw.epilog.104

sw.bb.82:                                         ; preds = %if.then.38, %if.then.38
  store i32 5, i32* %side_to_resize, align 4
  br label %sw.epilog.104

sw.bb.83:                                         ; preds = %if.then.38
  br label %sw.default.84

sw.default.84:                                    ; preds = %if.then.38, %sw.bb.83
  %47 = load i32, i32* %clamped_sides.addr, align 4
  %and85 = and i32 %47, 8
  %tobool86 = icmp ne i32 %and85, 0
  br i1 %tobool86, label %if.else.88, label %if.then.87

if.then.87:                                       ; preds = %sw.default.84
  store i32 4, i32* %side_to_resize, align 4
  br label %if.end.103

if.else.88:                                       ; preds = %sw.default.84
  %48 = load i32, i32* %clamped_sides.addr, align 4
  %and89 = and i32 %48, 2
  %tobool90 = icmp ne i32 %and89, 0
  br i1 %tobool90, label %if.else.92, label %if.then.91

if.then.91:                                       ; preds = %if.else.88
  store i32 2, i32* %side_to_resize, align 4
  br label %if.end.102

if.else.92:                                       ; preds = %if.else.88
  %49 = load i32, i32* %clamped_sides.addr, align 4
  %and93 = and i32 %49, 4
  %tobool94 = icmp ne i32 %and93, 0
  br i1 %tobool94, label %if.else.96, label %if.then.95

if.then.95:                                       ; preds = %if.else.92
  store i32 3, i32* %side_to_resize, align 4
  br label %if.end.101

if.else.96:                                       ; preds = %if.else.92
  %50 = load i32, i32* %clamped_sides.addr, align 4
  %and97 = and i32 %50, 1
  %tobool98 = icmp ne i32 %and97, 0
  br i1 %tobool98, label %if.end.100, label %if.then.99

if.then.99:                                       ; preds = %if.else.96
  store i32 1, i32* %side_to_resize, align 4
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.99, %if.else.96
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.then.95
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.then.91
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.then.87
  br label %sw.epilog.104

sw.epilog.104:                                    ; preds = %if.end.103, %sw.bb.82, %if.end.81, %if.end.72, %if.end.63, %if.end.57, %if.end.51, %if.end.45
  br label %if.end.172

if.else.105:                                      ; preds = %if.else.36
  %51 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %function106 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %51, i32 0, i32 14
  %52 = load i32, i32* %function106, align 4
  switch i32 %52, label %sw.default.151 [
    i32 4, label %sw.bb.107
    i32 5, label %sw.bb.113
    i32 6, label %sw.bb.119
    i32 7, label %sw.bb.125
    i32 10, label %sw.bb.131
    i32 11, label %sw.bb.140
    i32 8, label %sw.bb.149
    i32 9, label %sw.bb.149
    i32 3, label %sw.bb.150
  ]

sw.bb.107:                                        ; preds = %if.else.105
  %53 = load i32, i32* %clamped_sides.addr, align 4
  %and108 = and i32 %53, 1
  %tobool109 = icmp ne i32 %and108, 0
  br i1 %tobool109, label %if.else.111, label %if.then.110

if.then.110:                                      ; preds = %sw.bb.107
  store i32 1, i32* %side_to_resize, align 4
  br label %if.end.112

if.else.111:                                      ; preds = %sw.bb.107
  store i32 3, i32* %side_to_resize, align 4
  br label %if.end.112

if.end.112:                                       ; preds = %if.else.111, %if.then.110
  br label %sw.epilog.171

sw.bb.113:                                        ; preds = %if.else.105
  %54 = load i32, i32* %clamped_sides.addr, align 4
  %and114 = and i32 %54, 2
  %tobool115 = icmp ne i32 %and114, 0
  br i1 %tobool115, label %if.else.117, label %if.then.116

if.then.116:                                      ; preds = %sw.bb.113
  store i32 2, i32* %side_to_resize, align 4
  br label %if.end.118

if.else.117:                                      ; preds = %sw.bb.113
  store i32 3, i32* %side_to_resize, align 4
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.117, %if.then.116
  br label %sw.epilog.171

sw.bb.119:                                        ; preds = %if.else.105
  %55 = load i32, i32* %clamped_sides.addr, align 4
  %and120 = and i32 %55, 1
  %tobool121 = icmp ne i32 %and120, 0
  br i1 %tobool121, label %if.else.123, label %if.then.122

if.then.122:                                      ; preds = %sw.bb.119
  store i32 1, i32* %side_to_resize, align 4
  br label %if.end.124

if.else.123:                                      ; preds = %sw.bb.119
  store i32 4, i32* %side_to_resize, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.123, %if.then.122
  br label %sw.epilog.171

sw.bb.125:                                        ; preds = %if.else.105
  %56 = load i32, i32* %clamped_sides.addr, align 4
  %and126 = and i32 %56, 2
  %tobool127 = icmp ne i32 %and126, 0
  br i1 %tobool127, label %if.else.129, label %if.then.128

if.then.128:                                      ; preds = %sw.bb.125
  store i32 2, i32* %side_to_resize, align 4
  br label %if.end.130

if.else.129:                                      ; preds = %sw.bb.125
  store i32 4, i32* %side_to_resize, align 4
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.129, %if.then.128
  br label %sw.epilog.171

sw.bb.131:                                        ; preds = %if.else.105
  %57 = load i32, i32* %clamped_sides.addr, align 4
  %and132 = and i32 %57, 1
  %tobool133 = icmp ne i32 %and132, 0
  br i1 %tobool133, label %if.else.138, label %land.lhs.true.134

land.lhs.true.134:                                ; preds = %sw.bb.131
  %58 = load i32, i32* %clamped_sides.addr, align 4
  %and135 = and i32 %58, 2
  %tobool136 = icmp ne i32 %and135, 0
  br i1 %tobool136, label %if.else.138, label %if.then.137

if.then.137:                                      ; preds = %land.lhs.true.134
  store i32 5, i32* %side_to_resize, align 4
  br label %if.end.139

if.else.138:                                      ; preds = %land.lhs.true.134, %sw.bb.131
  store i32 3, i32* %side_to_resize, align 4
  br label %if.end.139

if.end.139:                                       ; preds = %if.else.138, %if.then.137
  br label %sw.epilog.171

sw.bb.140:                                        ; preds = %if.else.105
  %59 = load i32, i32* %clamped_sides.addr, align 4
  %and141 = and i32 %59, 1
  %tobool142 = icmp ne i32 %and141, 0
  br i1 %tobool142, label %if.else.147, label %land.lhs.true.143

land.lhs.true.143:                                ; preds = %sw.bb.140
  %60 = load i32, i32* %clamped_sides.addr, align 4
  %and144 = and i32 %60, 2
  %tobool145 = icmp ne i32 %and144, 0
  br i1 %tobool145, label %if.else.147, label %if.then.146

if.then.146:                                      ; preds = %land.lhs.true.143
  store i32 5, i32* %side_to_resize, align 4
  br label %if.end.148

if.else.147:                                      ; preds = %land.lhs.true.143, %sw.bb.140
  store i32 4, i32* %side_to_resize, align 4
  br label %if.end.148

if.end.148:                                       ; preds = %if.else.147, %if.then.146
  br label %sw.epilog.171

sw.bb.149:                                        ; preds = %if.else.105, %if.else.105
  store i32 6, i32* %side_to_resize, align 4
  br label %sw.epilog.171

sw.bb.150:                                        ; preds = %if.else.105
  br label %sw.default.151

sw.default.151:                                   ; preds = %if.else.105, %sw.bb.150
  %61 = load i32, i32* %clamped_sides.addr, align 4
  %and152 = and i32 %61, 8
  %tobool153 = icmp ne i32 %and152, 0
  br i1 %tobool153, label %if.else.155, label %if.then.154

if.then.154:                                      ; preds = %sw.default.151
  store i32 4, i32* %side_to_resize, align 4
  br label %if.end.170

if.else.155:                                      ; preds = %sw.default.151
  %62 = load i32, i32* %clamped_sides.addr, align 4
  %and156 = and i32 %62, 2
  %tobool157 = icmp ne i32 %and156, 0
  br i1 %tobool157, label %if.else.159, label %if.then.158

if.then.158:                                      ; preds = %if.else.155
  store i32 2, i32* %side_to_resize, align 4
  br label %if.end.169

if.else.159:                                      ; preds = %if.else.155
  %63 = load i32, i32* %clamped_sides.addr, align 4
  %and160 = and i32 %63, 4
  %tobool161 = icmp ne i32 %and160, 0
  br i1 %tobool161, label %if.else.163, label %if.then.162

if.then.162:                                      ; preds = %if.else.159
  store i32 3, i32* %side_to_resize, align 4
  br label %if.end.168

if.else.163:                                      ; preds = %if.else.159
  %64 = load i32, i32* %clamped_sides.addr, align 4
  %and164 = and i32 %64, 1
  %tobool165 = icmp ne i32 %and164, 0
  br i1 %tobool165, label %if.end.167, label %if.then.166

if.then.166:                                      ; preds = %if.else.163
  store i32 1, i32* %side_to_resize, align 4
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.166, %if.else.163
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %if.then.162
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %if.then.158
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %if.then.154
  br label %sw.epilog.171

sw.epilog.171:                                    ; preds = %if.end.170, %sw.bb.149, %if.end.148, %if.end.139, %if.end.130, %if.end.124, %if.end.118, %if.end.112
  br label %if.end.172

if.end.172:                                       ; preds = %sw.epilog.171, %sw.epilog.104
  br label %if.end.173

if.end.173:                                       ; preds = %if.end.172, %if.end.35
  %65 = load i32, i32* %side_to_resize, align 4
  switch i32 %65, label %sw.epilog.209 [
    i32 0, label %sw.bb.174
    i32 1, label %sw.bb.175
    i32 2, label %sw.bb.179
    i32 3, label %sw.bb.183
    i32 4, label %sw.bb.188
    i32 6, label %sw.bb.193
    i32 5, label %sw.bb.201
  ]

sw.bb.174:                                        ; preds = %if.end.173
  br label %sw.epilog.209

sw.bb.175:                                        ; preds = %if.end.173
  %66 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x2176 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %66, i32 0, i32 8
  %67 = load double, double* %x2176, align 8
  %68 = load double, double* %aspect.addr, align 8
  %69 = load double, double* %current_h, align 8
  %mul = fmul double %68, %69
  %sub177 = fsub double %67, %mul
  %70 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x1178 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %70, i32 0, i32 6
  store double %sub177, double* %x1178, align 8
  br label %sw.epilog.209

sw.bb.179:                                        ; preds = %if.end.173
  %71 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x1180 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %71, i32 0, i32 6
  %72 = load double, double* %x1180, align 8
  %73 = load double, double* %aspect.addr, align 8
  %74 = load double, double* %current_h, align 8
  %mul181 = fmul double %73, %74
  %add = fadd double %72, %mul181
  %75 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x2182 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %75, i32 0, i32 8
  store double %add, double* %x2182, align 8
  br label %sw.epilog.209

sw.bb.183:                                        ; preds = %if.end.173
  %76 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y2184 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %76, i32 0, i32 9
  %77 = load double, double* %y2184, align 8
  %78 = load double, double* %current_w, align 8
  %79 = load double, double* %aspect.addr, align 8
  %div185 = fdiv double %78, %79
  %sub186 = fsub double %77, %div185
  %80 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y1187 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %80, i32 0, i32 7
  store double %sub186, double* %y1187, align 8
  br label %sw.epilog.209

sw.bb.188:                                        ; preds = %if.end.173
  %81 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y1189 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %81, i32 0, i32 7
  %82 = load double, double* %y1189, align 8
  %83 = load double, double* %current_w, align 8
  %84 = load double, double* %aspect.addr, align 8
  %div190 = fdiv double %83, %84
  %add191 = fadd double %82, %div190
  %85 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y2192 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %85, i32 0, i32 9
  store double %add191, double* %y2192, align 8
  br label %sw.epilog.209

sw.bb.193:                                        ; preds = %if.end.173
  %86 = load double, double* %current_w, align 8
  %87 = load double, double* %aspect.addr, align 8
  %div194 = fdiv double %86, %87
  store double %div194, double* %correct_h, align 8
  %88 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %center_y_on_fixed_center = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %88, i32 0, i32 4
  %89 = load double, double* %center_y_on_fixed_center, align 8
  %90 = load double, double* %correct_h, align 8
  %div195 = fdiv double %90, 2.000000e+00
  %sub196 = fsub double %89, %div195
  %91 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y1197 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %91, i32 0, i32 7
  store double %sub196, double* %y1197, align 8
  %92 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y1198 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %92, i32 0, i32 7
  %93 = load double, double* %y1198, align 8
  %94 = load double, double* %correct_h, align 8
  %add199 = fadd double %93, %94
  %95 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y2200 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %95, i32 0, i32 9
  store double %add199, double* %y2200, align 8
  br label %sw.epilog.209

sw.bb.201:                                        ; preds = %if.end.173
  %96 = load double, double* %current_h, align 8
  %97 = load double, double* %aspect.addr, align 8
  %mul202 = fmul double %96, %97
  store double %mul202, double* %correct_w, align 8
  %98 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %center_x_on_fixed_center = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %98, i32 0, i32 3
  %99 = load double, double* %center_x_on_fixed_center, align 8
  %100 = load double, double* %correct_w, align 8
  %div203 = fdiv double %100, 2.000000e+00
  %sub204 = fsub double %99, %div203
  %101 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x1205 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %101, i32 0, i32 6
  store double %sub204, double* %x1205, align 8
  %102 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x1206 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %102, i32 0, i32 6
  %103 = load double, double* %x1206, align 8
  %104 = load double, double* %correct_w, align 8
  %add207 = fadd double %103, %104
  %105 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x2208 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %105, i32 0, i32 8
  store double %add207, double* %x2208, align 8
  br label %sw.epilog.209

sw.epilog.209:                                    ; preds = %if.then, %sw.bb.174, %if.end.173, %sw.bb.201, %sw.bb.193, %sw.bb.188, %sw.bb.183, %sw.bb.179, %sw.bb.175
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_tool_apply_fixed_width(%struct._GimpRectangleTool* %rect_tool, i32 %constraint, double %width) #1 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %constraint.addr = alloca i32, align 4
  %width.addr = alloca double, align 8
  %private = alloca %struct._GimpRectangleToolPrivate*, align 8
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  store i32 %constraint, i32* %constraint.addr, align 4
  store double %width, double* %width.addr, align 8
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRectangleTool*
  %call2 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %2)
  store %struct._GimpRectangleToolPrivate* %call2, %struct._GimpRectangleToolPrivate** %private, align 8
  %3 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %function = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %3, i32 0, i32 14
  %4 = load i32, i32* %function, align 4
  switch i32 %4, label %sw.epilog [
    i32 6, label %sw.bb
    i32 4, label %sw.bb
    i32 8, label %sw.bb
    i32 7, label %sw.bb.4
    i32 5, label %sw.bb.4
    i32 9, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  %5 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %center_x_on_fixed_center = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %5, i32 0, i32 3
  %6 = load double, double* %center_x_on_fixed_center, align 8
  %7 = load double, double* %width.addr, align 8
  %div = fdiv double %7, 2.000000e+00
  %sub = fsub double %6, %div
  %8 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x1 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %8, i32 0, i32 6
  store double %sub, double* %x1, align 8
  %9 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x13 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %9, i32 0, i32 6
  %10 = load double, double* %x13, align 8
  %11 = load double, double* %width.addr, align 8
  %add = fadd double %10, %11
  %12 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x2 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %12, i32 0, i32 8
  store double %add, double* %x2, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry, %entry, %entry
  %13 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %center_x_on_fixed_center5 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %13, i32 0, i32 3
  %14 = load double, double* %center_x_on_fixed_center5, align 8
  %15 = load double, double* %width.addr, align 8
  %div6 = fdiv double %15, 2.000000e+00
  %sub7 = fsub double %14, %div6
  %16 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x18 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %16, i32 0, i32 6
  store double %sub7, double* %x18, align 8
  %17 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x19 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %17, i32 0, i32 6
  %18 = load double, double* %x19, align 8
  %19 = load double, double* %width.addr, align 8
  %add10 = fadd double %18, %19
  %20 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %x211 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %20, i32 0, i32 8
  store double %add10, double* %x211, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.4, %sw.bb
  %21 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %22 = load i32, i32* %constraint.addr, align 4
  call void @gimp_rectangle_tool_keep_inside_horizontally(%struct._GimpRectangleTool* %21, i32 %22)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_tool_apply_fixed_height(%struct._GimpRectangleTool* %rect_tool, i32 %constraint, double %height) #1 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %constraint.addr = alloca i32, align 4
  %height.addr = alloca double, align 8
  %private = alloca %struct._GimpRectangleToolPrivate*, align 8
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  store i32 %constraint, i32* %constraint.addr, align 4
  store double %height, double* %height.addr, align 8
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRectangleTool*
  %call2 = call %struct._GimpRectangleToolPrivate* @gimp_rectangle_tool_get_private(%struct._GimpRectangleTool* %2)
  store %struct._GimpRectangleToolPrivate* %call2, %struct._GimpRectangleToolPrivate** %private, align 8
  %3 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %function = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %3, i32 0, i32 14
  %4 = load i32, i32* %function, align 4
  switch i32 %4, label %sw.epilog [
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 10, label %sw.bb
    i32 6, label %sw.bb.4
    i32 7, label %sw.bb.4
    i32 11, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  %5 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %center_y_on_fixed_center = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %5, i32 0, i32 4
  %6 = load double, double* %center_y_on_fixed_center, align 8
  %7 = load double, double* %height.addr, align 8
  %div = fdiv double %7, 2.000000e+00
  %sub = fsub double %6, %div
  %8 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y1 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %8, i32 0, i32 7
  store double %sub, double* %y1, align 8
  %9 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y13 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %9, i32 0, i32 7
  %10 = load double, double* %y13, align 8
  %11 = load double, double* %height.addr, align 8
  %add = fadd double %10, %11
  %12 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y2 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %12, i32 0, i32 9
  store double %add, double* %y2, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry, %entry, %entry
  %13 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %center_y_on_fixed_center5 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %13, i32 0, i32 4
  %14 = load double, double* %center_y_on_fixed_center5, align 8
  %15 = load double, double* %height.addr, align 8
  %div6 = fdiv double %15, 2.000000e+00
  %sub7 = fsub double %14, %div6
  %16 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y18 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %16, i32 0, i32 7
  store double %sub7, double* %y18, align 8
  %17 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y19 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %17, i32 0, i32 7
  %18 = load double, double* %y19, align 8
  %19 = load double, double* %height.addr, align 8
  %add10 = fadd double %18, %19
  %20 = load %struct._GimpRectangleToolPrivate*, %struct._GimpRectangleToolPrivate** %private, align 8
  %y211 = getelementptr inbounds %struct._GimpRectangleToolPrivate, %struct._GimpRectangleToolPrivate* %20, i32 0, i32 9
  store double %add10, double* %y211, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.4, %sw.bb
  %21 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %22 = load i32, i32* %constraint.addr, align 4
  call void @gimp_rectangle_tool_keep_inside_vertically(%struct._GimpRectangleTool* %21, i32 %22)
  ret void
}

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
