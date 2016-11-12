; ModuleID = './app/tools/gimpaligntool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpAlignToolClass = type { %struct._GimpDrawToolClass }
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
%struct._GimpAlignTool = type { %struct._GimpDrawTool, i32, %struct._GList*, i32, i32, i32, i32, i32 }
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
%struct._GimpAlignOptions = type { %struct._GimpToolOptions, i32, double, double, [12 x %struct._GtkWidget*] }
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
%struct._GimpVectors = type { %struct._GimpItem, %struct._GList*, i32, i32, double, %struct.cairo_path*, i32, i32, double, double, double, double }
%struct.cairo_path = type { i32, %union._cairo_path_data_t*, i32 }
%union._cairo_path_data_t = type { %struct.anon.1 }
%struct.anon.1 = type { double, double }
%struct._GimpGuide = type { %struct._GObject, i32, i32, i32 }
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpLayerMask = type opaque
%struct._GeglNode = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._BoundSeg = type opaque
%struct._GimpAnchor = type opaque
%struct._GimpStroke = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GimpChannel = type opaque

@gimp_align_tool_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"GimpAlignTool\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"gimp-align-tool\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Align\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"Alignment Tool: Align or arrange layers and other objects\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"_Align\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"gimp-tool-align\00", align 1
@gimp_align_tool_parent_class = internal global i8* null, align 8
@GimpAlignTool_private_offset = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"align-button-clicked\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"reference = active path not yet handled.\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"removed\00", align 1
@.str.10 = private unnamed_addr constant [70 x i8] c"Click on a layer, path or guide, or Click-Drag to pick several layers\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"Click to pick this layer as first item\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"Click to add this layer to the list\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"Click to pick this guide as first item\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"Click to add this guide to the list\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"Click to pick this path as first item\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"Click to add this path to the list\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_align_tool_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_align_tool_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_align_tool_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_draw_tool_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 288, void (i8*, i8*)* bitcast (void (i8*)* @gimp_align_tool_class_intern_init to void (i8*, i8*)*), i32 288, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpAlignTool*)* @gimp_align_tool_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_align_tool_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_align_tool_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_draw_tool_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_align_tool_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_align_tool_parent_class, align 8
  %1 = load i32, i32* @GimpAlignTool_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpAlignTool_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpAlignToolClass*
  call void @gimp_align_tool_class_init(%struct._GimpAlignToolClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_align_tool_init(%struct._GimpAlignTool* %align_tool) #3 {
entry:
  %align_tool.addr = alloca %struct._GimpAlignTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  store %struct._GimpAlignTool* %align_tool, %struct._GimpAlignTool** %align_tool.addr, align 8
  %0 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool.addr, align 8
  %1 = bitcast %struct._GimpAlignTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 3
  %4 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_set_snap_to(%struct._GimpToolControl* %4, i32 0)
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control2 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 3
  %6 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control2, align 8
  call void @gimp_tool_control_set_precision(%struct._GimpToolControl* %6, i32 1)
  %7 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control3 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %7, i32 0, i32 3
  %8 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control3, align 8
  call void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl* %8, i32 11)
  %9 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool.addr, align 8
  %function = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %9, i32 0, i32 1
  store i32 0, i32* %function, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_align_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, i8* %data) #3 {
entry:
  %callback.addr = alloca void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  %call = call i64 @gimp_align_tool_get_type() #6
  %call1 = call i64 @gimp_align_options_get_type() #6
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)) #7
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i32 0, i32 0)) #7
  %1 = load i8*, i8** %data.addr, align 8
  call void %0(i64 %call, i64 %call1, %struct._GtkWidget* (%struct._GimpToolOptions*)* @gimp_align_options_gui, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i8* %call2, i8* %call3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* %1)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_align_options_get_type() #2

declare %struct._GtkWidget* @gimp_align_options_gui(%struct._GimpToolOptions*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_align_tool_class_init(%struct._GimpAlignToolClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpAlignToolClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %tool_class = alloca %struct._GimpToolClass*, align 8
  %draw_tool_class = alloca %struct._GimpDrawToolClass*, align 8
  store %struct._GimpAlignToolClass* %klass, %struct._GimpAlignToolClass** %klass.addr, align 8
  %0 = load %struct._GimpAlignToolClass*, %struct._GimpAlignToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpAlignToolClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpAlignToolClass*, %struct._GimpAlignToolClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpAlignToolClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_tool_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpToolClass*
  store %struct._GimpToolClass* %5, %struct._GimpToolClass** %tool_class, align 8
  %6 = load %struct._GimpAlignToolClass*, %struct._GimpAlignToolClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpAlignToolClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_draw_tool_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpDrawToolClass*
  store %struct._GimpDrawToolClass* %8, %struct._GimpDrawToolClass** %draw_tool_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_align_tool_constructed, void (%struct._GObject*)** %constructed, align 8
  %10 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %control = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %10, i32 0, i32 4
  store void (%struct._GimpTool*, i32, %struct._GimpDisplay*)* @gimp_align_tool_control, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)** %control, align 8
  %11 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %11, i32 0, i32 5
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_align_tool_button_press, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_press, align 8
  %12 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_release = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %12, i32 0, i32 6
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_align_tool_button_release, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_release, align 8
  %13 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %motion = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %13, i32 0, i32 7
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_align_tool_motion, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %motion, align 8
  %14 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %key_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %14, i32 0, i32 8
  store i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)* @gimp_align_tool_key_press, i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)** %key_press, align 8
  %15 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %oper_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %15, i32 0, i32 12
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_align_tool_oper_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %oper_update, align 8
  %16 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %16, i32 0, i32 13
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)* @gimp_align_tool_cursor_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %17 = load %struct._GimpDrawToolClass*, %struct._GimpDrawToolClass** %draw_tool_class, align 8
  %draw = getelementptr inbounds %struct._GimpDrawToolClass, %struct._GimpDrawToolClass* %17, i32 0, i32 1
  store void (%struct._GimpDrawTool*)* @gimp_align_tool_draw, void (%struct._GimpDrawTool*)** %draw, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_align_tool_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %align_tool = alloca %struct._GimpAlignTool*, align 8
  %options = alloca %struct._GimpAlignOptions*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_align_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpAlignTool*
  store %struct._GimpAlignTool* %2, %struct._GimpAlignTool** %align_tool, align 8
  %3 = load i8*, i8** @gimp_align_tool_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_align_tool_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed4 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed4, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %13 = bitcast %struct._GimpAlignTool* %12 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_tool_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call5)
  %14 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpTool*
  %call7 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %14)
  %15 = bitcast %struct._GimpToolOptions* %call7 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_align_options_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call8)
  %16 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpAlignOptions*
  store %struct._GimpAlignOptions* %16, %struct._GimpAlignOptions** %options, align 8
  %17 = load %struct._GimpAlignOptions*, %struct._GimpAlignOptions** %options, align 8
  %18 = bitcast %struct._GimpAlignOptions* %17 to i8*
  %19 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %20 = bitcast %struct._GimpAlignTool* %19 to i8*
  %call10 = call i64 @g_signal_connect_object(i8* %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GimpAlignTool*, i32)* @gimp_align_tool_align to void ()*), i8* %20, i32 2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_align_tool_control(%struct._GimpTool* %tool, i32 %action, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %action.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %align_tool = alloca %struct._GimpAlignTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %action, i32* %action.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_align_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpAlignTool*
  store %struct._GimpAlignTool* %2, %struct._GimpAlignTool** %align_tool, align 8
  %3 = load i32, i32* %action.addr, align 4
  switch i32 %3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry, %entry
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %4 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  call void @gimp_align_tool_clear_selected(%struct._GimpAlignTool* %4)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.2, %sw.bb
  %5 = load i8*, i8** @gimp_align_tool_parent_class, align 8
  %6 = bitcast i8* %5 to %struct._GTypeClass*
  %call3 = call i64 @gimp_tool_get_type() #6
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
define internal void @gimp_align_tool_button_press(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %press_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %press_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %align_tool = alloca %struct._GimpAlignTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %press_type, i32* %press_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_align_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpAlignTool*
  store %struct._GimpAlignTool* %2, %struct._GimpAlignTool** %align_tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_draw_tool_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %5)
  %6 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %7 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display4 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %7, i32 0, i32 4
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display4, align 8
  %cmp = icmp ne %struct._GimpDisplay* %6, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %10 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_control(%struct._GimpTool* %9, i32 2, %struct._GimpDisplay* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %12 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display5 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %12, i32 0, i32 4
  store %struct._GimpDisplay* %11, %struct._GimpDisplay** %display5, align 8
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %13, i32 0, i32 3
  %14 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_activate(%struct._GimpToolControl* %14)
  %15 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %15, i32 0, i32 0
  %16 = load double, double* %x, align 8
  %conv = fptosi double %16 to i32
  %17 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %x1 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %17, i32 0, i32 3
  store i32 %conv, i32* %x1, align 4
  %18 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %x2 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %18, i32 0, i32 5
  store i32 %conv, i32* %x2, align 4
  %19 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %19, i32 0, i32 1
  %20 = load double, double* %y, align 8
  %conv6 = fptosi double %20 to i32
  %21 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %y1 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %21, i32 0, i32 4
  store i32 %conv6, i32* %y1, align 4
  %22 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %y2 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %22, i32 0, i32 6
  store i32 %conv6, i32* %y2, align 4
  %23 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %24 = bitcast %struct._GimpTool* %23 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_draw_tool_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call7)
  %25 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpDrawTool*
  %call9 = call i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool* %25)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.end.13, label %if.then.10

if.then.10:                                       ; preds = %if.end
  %26 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %27 = bitcast %struct._GimpTool* %26 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_draw_tool_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call11)
  %28 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpDrawTool*
  %29 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_draw_tool_start(%struct._GimpDrawTool* %28, %struct._GimpDisplay* %29)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end
  %30 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %31 = bitcast %struct._GimpTool* %30 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_draw_tool_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call14)
  %32 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %32)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_align_tool_button_release(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %release_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %release_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %align_tool = alloca %struct._GimpAlignTool*, align 8
  %options = alloca %struct._GimpAlignOptions*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %object = alloca %struct._GObject*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %extend_mask = alloca i32, align 4
  %i = alloca i32, align 4
  %vectors = alloca %struct._GimpVectors*, align 8
  %guide = alloca %struct._GimpGuide*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %snap_distance = alloca i32, align 4
  %X0 = alloca i32, align 4
  %X1 = alloca i32, align 4
  %Y0 = alloca i32, align 4
  %Y1 = alloca i32, align 4
  %all_layers = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %layer121 = alloca %struct._GimpLayer*, align 8
  %x0 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %x1122 = alloca i32, align 4
  %y1123 = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %release_type, i32* %release_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_align_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpAlignTool*
  store %struct._GimpAlignTool* %2, %struct._GimpAlignTool** %align_tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_align_options_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpAlignOptions*
  store %struct._GimpAlignOptions* %7, %struct._GimpAlignOptions** %options, align 8
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call7 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %8)
  store %struct._GimpDisplayShell* %call7, %struct._GimpDisplayShell** %shell, align 8
  store %struct._GObject* null, %struct._GObject** %object, align 8
  %9 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call8 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %9)
  store %struct._GimpImage* %call8, %struct._GimpImage** %image, align 8
  %call9 = call i32 @gimp_get_extend_selection_mask()
  store i32 %call9, i32* %extend_mask, align 4
  %10 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %11 = bitcast %struct._GimpTool* %10 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_draw_tool_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call10)
  %12 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %12)
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %13, i32 0, i32 3
  %14 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_halt(%struct._GimpToolControl* %14)
  %15 = load i32, i32* %release_type.addr, align 4
  %cmp = icmp eq i32 %15, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %x1 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %16, i32 0, i32 3
  %17 = load i32, i32* %x1, align 4
  %18 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %x2 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %18, i32 0, i32 5
  store i32 %17, i32* %x2, align 4
  %19 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %y1 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %19, i32 0, i32 4
  %20 = load i32, i32* %y1, align 4
  %21 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %y2 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %21, i32 0, i32 6
  store i32 %20, i32* %y2, align 4
  %22 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %23 = bitcast %struct._GimpTool* %22 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_draw_tool_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call12)
  %24 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %24)
  br label %return

if.end:                                           ; preds = %entry
  %25 = load i32, i32* %state.addr, align 4
  %26 = load i32, i32* %extend_mask, align 4
  %and = and i32 %25, %26
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.end
  %27 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  call void @gimp_align_tool_clear_selected(%struct._GimpAlignTool* %27)
  %28 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %set_reference = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %28, i32 0, i32 7
  store i32 0, i32* %set_reference, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end
  %29 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %29, i32 0, i32 0
  %30 = load double, double* %x, align 8
  %31 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %x116 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %31, i32 0, i32 3
  %32 = load i32, i32* %x116, align 4
  %conv = sitofp i32 %32 to double
  %sub = fsub double %30, %conv
  %33 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %33, i32 0, i32 1
  %34 = load double, double* %y, align 8
  %35 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %y117 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %35, i32 0, i32 4
  %36 = load i32, i32* %y117, align 4
  %conv18 = sitofp i32 %36 to double
  %sub19 = fsub double %34, %conv18
  %call20 = call double @hypot(double %sub, double %sub19) #7
  %cmp21 = fcmp olt double %call20, 3.000000e+00
  br i1 %cmp21, label %if.then.23, label %if.else.70

if.then.23:                                       ; preds = %if.end.15
  %37 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %config = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %37, i32 0, i32 2
  %38 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config, align 8
  %snap_distance24 = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %38, i32 0, i32 3
  %39 = load i32, i32* %snap_distance24, align 4
  store i32 %39, i32* %snap_distance, align 4
  %40 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %41 = bitcast %struct._GimpTool* %40 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_draw_tool_get_type() #6
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call25)
  %42 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpDrawTool*
  %43 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %44 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %45 = load i32, i32* %snap_distance, align 4
  %46 = load i32, i32* %snap_distance, align 4
  %call27 = call i32 @gimp_draw_tool_on_vectors(%struct._GimpDrawTool* %42, %struct._GimpDisplay* %43, %struct._GimpCoords* %44, i32 %45, i32 %46, %struct._GimpCoords* null, double* null, %struct._GimpAnchor** null, %struct._GimpAnchor** null, %struct._GimpStroke** null, %struct._GimpVectors** %vectors)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %if.then.23
  %47 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %48 = bitcast %struct._GimpVectors* %47 to %struct._GTypeInstance*
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 80)
  %49 = bitcast %struct._GTypeInstance* %call30 to %struct._GObject*
  store %struct._GObject* %49, %struct._GObject** %object, align 8
  br label %if.end.53

if.else:                                          ; preds = %if.then.23
  %50 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call31 = call i32 @gimp_display_shell_get_show_guides(%struct._GimpDisplayShell* %50)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %land.lhs.true, label %if.else.42

land.lhs.true:                                    ; preds = %if.else
  %51 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %52 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x33 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %52, i32 0, i32 0
  %53 = load double, double* %x33, align 8
  %54 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y34 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %54, i32 0, i32 1
  %55 = load double, double* %y34, align 8
  %56 = load i32, i32* %snap_distance, align 4
  %conv35 = sitofp i32 %56 to double
  %57 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %57, i32 0, i32 13
  %58 = load double, double* %scale_x, align 8
  %div = fdiv double %conv35, %58
  %59 = load i32, i32* %snap_distance, align 4
  %conv36 = sitofp i32 %59 to double
  %60 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %60, i32 0, i32 14
  %61 = load double, double* %scale_y, align 8
  %div37 = fdiv double %conv36, %61
  %call38 = call %struct._GimpGuide* @gimp_image_find_guide(%struct._GimpImage* %51, double %53, double %55, double %div, double %div37)
  store %struct._GimpGuide* %call38, %struct._GimpGuide** %guide, align 8
  %tobool39 = icmp ne %struct._GimpGuide* %call38, null
  br i1 %tobool39, label %if.then.40, label %if.else.42

if.then.40:                                       ; preds = %land.lhs.true
  %62 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %63 = bitcast %struct._GimpGuide* %62 to %struct._GTypeInstance*
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 80)
  %64 = bitcast %struct._GTypeInstance* %call41 to %struct._GObject*
  store %struct._GObject* %64, %struct._GObject** %object, align 8
  br label %if.end.52

if.else.42:                                       ; preds = %land.lhs.true, %if.else
  %65 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %66 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x43 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %66, i32 0, i32 0
  %67 = load double, double* %x43, align 8
  %conv44 = fptosi double %67 to i32
  %68 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y45 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %68, i32 0, i32 1
  %69 = load double, double* %y45, align 8
  %conv46 = fptosi double %69 to i32
  %call47 = call %struct._GimpLayer* @gimp_image_pick_layer_by_bounds(%struct._GimpImage* %65, i32 %conv44, i32 %conv46)
  store %struct._GimpLayer* %call47, %struct._GimpLayer** %layer, align 8
  %tobool48 = icmp ne %struct._GimpLayer* %call47, null
  br i1 %tobool48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.else.42
  %70 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %71 = bitcast %struct._GimpLayer* %70 to %struct._GTypeInstance*
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 80)
  %72 = bitcast %struct._GTypeInstance* %call50 to %struct._GObject*
  store %struct._GObject* %72, %struct._GObject** %object, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.else.42
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.40
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then.29
  %73 = load %struct._GObject*, %struct._GObject** %object, align 8
  %tobool54 = icmp ne %struct._GObject* %73, null
  br i1 %tobool54, label %if.then.55, label %if.end.69

if.then.55:                                       ; preds = %if.end.53
  %74 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %selected_objects = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %74, i32 0, i32 2
  %75 = load %struct._GList*, %struct._GList** %selected_objects, align 8
  %76 = load %struct._GObject*, %struct._GObject** %object, align 8
  %77 = bitcast %struct._GObject* %76 to i8*
  %call56 = call %struct._GList* @g_list_find(%struct._GList* %75, i8* %77)
  %tobool57 = icmp ne %struct._GList* %call56, null
  br i1 %tobool57, label %if.end.68, label %if.then.58

if.then.58:                                       ; preds = %if.then.55
  %78 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %selected_objects59 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %78, i32 0, i32 2
  %79 = load %struct._GList*, %struct._GList** %selected_objects59, align 8
  %80 = load %struct._GObject*, %struct._GObject** %object, align 8
  %81 = bitcast %struct._GObject* %80 to i8*
  %call60 = call %struct._GList* @g_list_append(%struct._GList* %79, i8* %81)
  %82 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %selected_objects61 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %82, i32 0, i32 2
  store %struct._GList* %call60, %struct._GList** %selected_objects61, align 8
  %83 = load %struct._GObject*, %struct._GObject** %object, align 8
  %84 = bitcast %struct._GObject* %83 to i8*
  %85 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %86 = bitcast %struct._GimpAlignTool* %85 to i8*
  %call62 = call i64 @g_signal_connect_data(i8* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*, %struct._GimpAlignTool*)* @gimp_align_tool_object_removed to void ()*), i8* %86, void (i8*, %struct._GClosure*)* null, i32 0)
  %87 = load i32, i32* %state.addr, align 4
  %88 = load i32, i32* %extend_mask, align 4
  %and63 = and i32 %87, %88
  %tobool64 = icmp ne i32 %and63, 0
  br i1 %tobool64, label %if.end.67, label %if.then.65

if.then.65:                                       ; preds = %if.then.58
  %89 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %set_reference66 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %89, i32 0, i32 7
  store i32 1, i32* %set_reference66, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.65, %if.then.58
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.then.55
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.end.53
  br label %if.end.165

if.else.70:                                       ; preds = %if.end.15
  %90 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x71 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %90, i32 0, i32 0
  %91 = load double, double* %x71, align 8
  %92 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %x172 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %92, i32 0, i32 3
  %93 = load i32, i32* %x172, align 4
  %conv73 = sitofp i32 %93 to double
  %cmp74 = fcmp olt double %91, %conv73
  br i1 %cmp74, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.70
  %94 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x76 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %94, i32 0, i32 0
  %95 = load double, double* %x76, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else.70
  %96 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %x177 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %96, i32 0, i32 3
  %97 = load i32, i32* %x177, align 4
  %conv78 = sitofp i32 %97 to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %95, %cond.true ], [ %conv78, %cond.false ]
  %conv79 = fptosi double %cond to i32
  store i32 %conv79, i32* %X0, align 4
  %98 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x80 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %98, i32 0, i32 0
  %99 = load double, double* %x80, align 8
  %100 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %x181 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %100, i32 0, i32 3
  %101 = load i32, i32* %x181, align 4
  %conv82 = sitofp i32 %101 to double
  %cmp83 = fcmp ogt double %99, %conv82
  br i1 %cmp83, label %cond.true.85, label %cond.false.87

cond.true.85:                                     ; preds = %cond.end
  %102 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x86 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %102, i32 0, i32 0
  %103 = load double, double* %x86, align 8
  br label %cond.end.90

cond.false.87:                                    ; preds = %cond.end
  %104 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %x188 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %104, i32 0, i32 3
  %105 = load i32, i32* %x188, align 4
  %conv89 = sitofp i32 %105 to double
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.false.87, %cond.true.85
  %cond91 = phi double [ %103, %cond.true.85 ], [ %conv89, %cond.false.87 ]
  %conv92 = fptosi double %cond91 to i32
  store i32 %conv92, i32* %X1, align 4
  %106 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y93 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %106, i32 0, i32 1
  %107 = load double, double* %y93, align 8
  %108 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %y194 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %108, i32 0, i32 4
  %109 = load i32, i32* %y194, align 4
  %conv95 = sitofp i32 %109 to double
  %cmp96 = fcmp olt double %107, %conv95
  br i1 %cmp96, label %cond.true.98, label %cond.false.100

cond.true.98:                                     ; preds = %cond.end.90
  %110 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y99 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %110, i32 0, i32 1
  %111 = load double, double* %y99, align 8
  br label %cond.end.103

cond.false.100:                                   ; preds = %cond.end.90
  %112 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %y1101 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %112, i32 0, i32 4
  %113 = load i32, i32* %y1101, align 4
  %conv102 = sitofp i32 %113 to double
  br label %cond.end.103

cond.end.103:                                     ; preds = %cond.false.100, %cond.true.98
  %cond104 = phi double [ %111, %cond.true.98 ], [ %conv102, %cond.false.100 ]
  %conv105 = fptosi double %cond104 to i32
  store i32 %conv105, i32* %Y0, align 4
  %114 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y106 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %114, i32 0, i32 1
  %115 = load double, double* %y106, align 8
  %116 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %y1107 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %116, i32 0, i32 4
  %117 = load i32, i32* %y1107, align 4
  %conv108 = sitofp i32 %117 to double
  %cmp109 = fcmp ogt double %115, %conv108
  br i1 %cmp109, label %cond.true.111, label %cond.false.113

cond.true.111:                                    ; preds = %cond.end.103
  %118 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y112 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %118, i32 0, i32 1
  %119 = load double, double* %y112, align 8
  br label %cond.end.116

cond.false.113:                                   ; preds = %cond.end.103
  %120 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %y1114 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %120, i32 0, i32 4
  %121 = load i32, i32* %y1114, align 4
  %conv115 = sitofp i32 %121 to double
  br label %cond.end.116

cond.end.116:                                     ; preds = %cond.false.113, %cond.true.111
  %cond117 = phi double [ %119, %cond.true.111 ], [ %conv115, %cond.false.113 ]
  %conv118 = fptosi double %cond117 to i32
  store i32 %conv118, i32* %Y1, align 4
  %122 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call119 = call %struct._GList* @gimp_image_get_layer_list(%struct._GimpImage* %122)
  store %struct._GList* %call119, %struct._GList** %all_layers, align 8
  %123 = load %struct._GList*, %struct._GList** %all_layers, align 8
  store %struct._GList* %123, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.163, %cond.end.116
  %124 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool120 = icmp ne %struct._GList* %124, null
  br i1 %tobool120, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %125 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %125, i32 0, i32 0
  %126 = load i8*, i8** %data, align 8
  %127 = bitcast i8* %126 to %struct._GimpLayer*
  store %struct._GimpLayer* %127, %struct._GimpLayer** %layer121, align 8
  %128 = load %struct._GimpLayer*, %struct._GimpLayer** %layer121, align 8
  %129 = bitcast %struct._GimpLayer* %128 to %struct._GTypeInstance*
  %call124 = call i64 @gimp_item_get_type() #6
  %call125 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %129, i64 %call124)
  %130 = bitcast %struct._GTypeInstance* %call125 to %struct._GimpItem*
  %call126 = call i32 @gimp_item_get_visible(%struct._GimpItem* %130)
  %tobool127 = icmp ne i32 %call126, 0
  br i1 %tobool127, label %if.end.129, label %if.then.128

if.then.128:                                      ; preds = %for.body
  br label %for.inc

if.end.129:                                       ; preds = %for.body
  %131 = load %struct._GimpLayer*, %struct._GimpLayer** %layer121, align 8
  %132 = bitcast %struct._GimpLayer* %131 to %struct._GTypeInstance*
  %call130 = call i64 @gimp_item_get_type() #6
  %call131 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %132, i64 %call130)
  %133 = bitcast %struct._GTypeInstance* %call131 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %133, i32* %x0, i32* %y0)
  %134 = load i32, i32* %x0, align 4
  %135 = load %struct._GimpLayer*, %struct._GimpLayer** %layer121, align 8
  %136 = bitcast %struct._GimpLayer* %135 to %struct._GTypeInstance*
  %call132 = call i64 @gimp_item_get_type() #6
  %call133 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %136, i64 %call132)
  %137 = bitcast %struct._GTypeInstance* %call133 to %struct._GimpItem*
  %call134 = call i32 @gimp_item_get_width(%struct._GimpItem* %137)
  %add = add nsw i32 %134, %call134
  store i32 %add, i32* %x1122, align 4
  %138 = load i32, i32* %y0, align 4
  %139 = load %struct._GimpLayer*, %struct._GimpLayer** %layer121, align 8
  %140 = bitcast %struct._GimpLayer* %139 to %struct._GTypeInstance*
  %call135 = call i64 @gimp_item_get_type() #6
  %call136 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %140, i64 %call135)
  %141 = bitcast %struct._GTypeInstance* %call136 to %struct._GimpItem*
  %call137 = call i32 @gimp_item_get_height(%struct._GimpItem* %141)
  %add138 = add nsw i32 %138, %call137
  store i32 %add138, i32* %y1123, align 4
  %142 = load i32, i32* %x0, align 4
  %143 = load i32, i32* %X0, align 4
  %cmp139 = icmp slt i32 %142, %143
  br i1 %cmp139, label %if.then.149, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.129
  %144 = load i32, i32* %y0, align 4
  %145 = load i32, i32* %Y0, align 4
  %cmp141 = icmp slt i32 %144, %145
  br i1 %cmp141, label %if.then.149, label %lor.lhs.false.143

lor.lhs.false.143:                                ; preds = %lor.lhs.false
  %146 = load i32, i32* %x1122, align 4
  %147 = load i32, i32* %X1, align 4
  %cmp144 = icmp sgt i32 %146, %147
  br i1 %cmp144, label %if.then.149, label %lor.lhs.false.146

lor.lhs.false.146:                                ; preds = %lor.lhs.false.143
  %148 = load i32, i32* %y1123, align 4
  %149 = load i32, i32* %Y1, align 4
  %cmp147 = icmp sgt i32 %148, %149
  br i1 %cmp147, label %if.then.149, label %if.end.150

if.then.149:                                      ; preds = %lor.lhs.false.146, %lor.lhs.false.143, %lor.lhs.false, %if.end.129
  br label %for.inc

if.end.150:                                       ; preds = %lor.lhs.false.146
  %150 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %selected_objects151 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %150, i32 0, i32 2
  %151 = load %struct._GList*, %struct._GList** %selected_objects151, align 8
  %152 = load %struct._GimpLayer*, %struct._GimpLayer** %layer121, align 8
  %153 = bitcast %struct._GimpLayer* %152 to i8*
  %call152 = call %struct._GList* @g_list_find(%struct._GList* %151, i8* %153)
  %tobool153 = icmp ne %struct._GList* %call152, null
  br i1 %tobool153, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %if.end.150
  br label %for.inc

if.end.155:                                       ; preds = %if.end.150
  %154 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %selected_objects156 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %154, i32 0, i32 2
  %155 = load %struct._GList*, %struct._GList** %selected_objects156, align 8
  %156 = load %struct._GimpLayer*, %struct._GimpLayer** %layer121, align 8
  %157 = bitcast %struct._GimpLayer* %156 to i8*
  %call157 = call %struct._GList* @g_list_append(%struct._GList* %155, i8* %157)
  %158 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %selected_objects158 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %158, i32 0, i32 2
  store %struct._GList* %call157, %struct._GList** %selected_objects158, align 8
  %159 = load %struct._GimpLayer*, %struct._GimpLayer** %layer121, align 8
  %160 = bitcast %struct._GimpLayer* %159 to i8*
  %161 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %162 = bitcast %struct._GimpAlignTool* %161 to i8*
  %call159 = call i64 @g_signal_connect_data(i8* %160, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*, %struct._GimpAlignTool*)* @gimp_align_tool_object_removed to void ()*), i8* %162, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %if.end.155, %if.then.154, %if.then.149, %if.then.128
  %163 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool160 = icmp ne %struct._GList* %163, null
  br i1 %tobool160, label %cond.true.161, label %cond.false.162

cond.true.161:                                    ; preds = %for.inc
  %164 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %164, i32 0, i32 1
  %165 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end.163

cond.false.162:                                   ; preds = %for.inc
  br label %cond.end.163

cond.end.163:                                     ; preds = %cond.false.162, %cond.true.161
  %cond164 = phi %struct._GList* [ %165, %cond.true.161 ], [ null, %cond.false.162 ]
  store %struct._GList* %cond164, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %166 = load %struct._GList*, %struct._GList** %all_layers, align 8
  call void @g_list_free(%struct._GList* %166)
  br label %if.end.165

if.end.165:                                       ; preds = %for.end, %if.end.69
  store i32 0, i32* %i, align 4
  br label %for.cond.166

for.cond.166:                                     ; preds = %for.inc.179, %if.end.165
  %167 = load i32, i32* %i, align 4
  %cmp167 = icmp slt i32 %167, 12
  br i1 %cmp167, label %for.body.169, label %for.end.180

for.body.169:                                     ; preds = %for.cond.166
  %168 = load i32, i32* %i, align 4
  %idxprom = sext i32 %168 to i64
  %169 = load %struct._GimpAlignOptions*, %struct._GimpAlignOptions** %options, align 8
  %button = getelementptr inbounds %struct._GimpAlignOptions, %struct._GimpAlignOptions* %169, i32 0, i32 4
  %arrayidx = getelementptr inbounds [12 x %struct._GtkWidget*], [12 x %struct._GtkWidget*]* %button, i32 0, i64 %idxprom
  %170 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx, align 8
  %tobool170 = icmp ne %struct._GtkWidget* %170, null
  br i1 %tobool170, label %if.then.171, label %if.end.178

if.then.171:                                      ; preds = %for.body.169
  %171 = load i32, i32* %i, align 4
  %idxprom172 = sext i32 %171 to i64
  %172 = load %struct._GimpAlignOptions*, %struct._GimpAlignOptions** %options, align 8
  %button173 = getelementptr inbounds %struct._GimpAlignOptions, %struct._GimpAlignOptions* %172, i32 0, i32 4
  %arrayidx174 = getelementptr inbounds [12 x %struct._GtkWidget*], [12 x %struct._GtkWidget*]* %button173, i32 0, i64 %idxprom172
  %173 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx174, align 8
  %174 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %selected_objects175 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %174, i32 0, i32 2
  %175 = load %struct._GList*, %struct._GList** %selected_objects175, align 8
  %cmp176 = icmp ne %struct._GList* %175, null
  %conv177 = zext i1 %cmp176 to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %173, i32 %conv177)
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.171, %for.body.169
  br label %for.inc.179

for.inc.179:                                      ; preds = %if.end.178
  %176 = load i32, i32* %i, align 4
  %inc = add nsw i32 %176, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.166

for.end.180:                                      ; preds = %for.cond.166
  %177 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %x1181 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %177, i32 0, i32 3
  %178 = load i32, i32* %x1181, align 4
  %179 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %x2182 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %179, i32 0, i32 5
  store i32 %178, i32* %x2182, align 4
  %180 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %y1183 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %180, i32 0, i32 4
  %181 = load i32, i32* %y1183, align 4
  %182 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %y2184 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %182, i32 0, i32 6
  store i32 %181, i32* %y2184, align 4
  %183 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %184 = bitcast %struct._GimpTool* %183 to %struct._GTypeInstance*
  %call185 = call i64 @gimp_draw_tool_get_type() #6
  %call186 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %184, i64 %call185)
  %185 = bitcast %struct._GTypeInstance* %call186 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %185)
  br label %return

return:                                           ; preds = %for.end.180, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_align_tool_motion(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %align_tool = alloca %struct._GimpAlignTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_align_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpAlignTool*
  store %struct._GimpAlignTool* %2, %struct._GimpAlignTool** %align_tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_draw_tool_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %5)
  %6 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %6, i32 0, i32 0
  %7 = load double, double* %x, align 8
  %conv = fptosi double %7 to i32
  %8 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %x2 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %8, i32 0, i32 5
  store i32 %conv, i32* %x2, align 4
  %9 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %9, i32 0, i32 1
  %10 = load double, double* %y, align 8
  %conv4 = fptosi double %10 to i32
  %11 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %y2 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %11, i32 0, i32 6
  store i32 %conv4, i32* %y2, align 4
  %12 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %13 = bitcast %struct._GimpTool* %12 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_draw_tool_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call5)
  %14 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %14)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_align_tool_key_press(%struct._GimpTool* %tool, %struct._GdkEventKey* %kevent, %struct._GimpDisplay* %display) #3 {
entry:
  %retval = alloca i32, align 4
  %tool.addr = alloca %struct._GimpTool*, align 8
  %kevent.addr = alloca %struct._GdkEventKey*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GdkEventKey* %kevent, %struct._GdkEventKey** %kevent.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %1 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display1 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %1, i32 0, i32 4
  %2 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display1, align 8
  %cmp = icmp eq %struct._GimpDisplay* %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %keyval = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %3, i32 0, i32 5
  %4 = load i32, i32* %keyval, align 4
  switch i32 %4, label %sw.default [
    i32 65307, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %6 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_control(%struct._GimpTool* %5, i32 2, %struct._GimpDisplay* %6)
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %sw.bb
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal void @gimp_align_tool_oper_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, i32 %proximity, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %proximity.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %align_tool = alloca %struct._GimpAlignTool*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %snap_distance = alloca i32, align 4
  %add = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store i32 %proximity, i32* %proximity.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_align_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpAlignTool*
  store %struct._GimpAlignTool* %2, %struct._GimpAlignTool** %align_tool, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call2 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %3)
  store %struct._GimpDisplayShell* %call2, %struct._GimpDisplayShell** %shell, align 8
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call3 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %4)
  store %struct._GimpImage* %call3, %struct._GimpImage** %image, align 8
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %config = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %5, i32 0, i32 2
  %6 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config, align 8
  %snap_distance4 = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %6, i32 0, i32 3
  %7 = load i32, i32* %snap_distance4, align 4
  store i32 %7, i32* %snap_distance, align 4
  %8 = load i32, i32* %state.addr, align 4
  %call5 = call i32 @gimp_get_extend_selection_mask()
  %and = and i32 %8, %call5
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %9 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %selected_objects = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %9, i32 0, i32 2
  %10 = load %struct._GList*, %struct._GList** %selected_objects, align 8
  %tobool6 = icmp ne %struct._GList* %10, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %11 = phi i1 [ false, %entry ], [ %tobool6, %land.rhs ]
  %land.ext = zext i1 %11 to i32
  store i32 %land.ext, i32* %add, align 4
  %12 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %13 = bitcast %struct._GimpTool* %12 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_draw_tool_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call7)
  %14 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpDrawTool*
  %15 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %16 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %17 = load i32, i32* %snap_distance, align 4
  %18 = load i32, i32* %snap_distance, align 4
  %call9 = call i32 @gimp_draw_tool_on_vectors(%struct._GimpDrawTool* %14, %struct._GimpDisplay* %15, %struct._GimpCoords* %16, i32 %17, i32 %18, %struct._GimpCoords* null, double* null, %struct._GimpAnchor** null, %struct._GimpAnchor** null, %struct._GimpStroke** null, %struct._GimpVectors** null)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then, label %if.else.14

if.then:                                          ; preds = %land.end
  %19 = load i32, i32* %add, align 4
  %tobool11 = icmp ne i32 %19, 0
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then
  %20 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %function = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %20, i32 0, i32 1
  store i32 6, i32* %function, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %21 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %function13 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %21, i32 0, i32 1
  store i32 5, i32* %function13, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.12
  br label %if.end.46

if.else.14:                                       ; preds = %land.end
  %22 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call15 = call i32 @gimp_display_shell_get_show_guides(%struct._GimpDisplayShell* %22)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %land.lhs.true, label %if.else.28

land.lhs.true:                                    ; preds = %if.else.14
  %23 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %24 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %24, i32 0, i32 0
  %25 = load double, double* %x, align 8
  %26 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %26, i32 0, i32 1
  %27 = load double, double* %y, align 8
  %28 = load i32, i32* %snap_distance, align 4
  %conv = sitofp i32 %28 to double
  %29 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %29, i32 0, i32 13
  %30 = load double, double* %scale_x, align 8
  %div = fdiv double %conv, %30
  %31 = load i32, i32* %snap_distance, align 4
  %conv17 = sitofp i32 %31 to double
  %32 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %32, i32 0, i32 14
  %33 = load double, double* %scale_y, align 8
  %div18 = fdiv double %conv17, %33
  %call19 = call %struct._GimpGuide* @gimp_image_find_guide(%struct._GimpImage* %23, double %25, double %27, double %div, double %div18)
  %tobool20 = icmp ne %struct._GimpGuide* %call19, null
  br i1 %tobool20, label %if.then.21, label %if.else.28

if.then.21:                                       ; preds = %land.lhs.true
  %34 = load i32, i32* %add, align 4
  %tobool22 = icmp ne i32 %34, 0
  br i1 %tobool22, label %if.then.23, label %if.else.25

if.then.23:                                       ; preds = %if.then.21
  %35 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %function24 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %35, i32 0, i32 1
  store i32 4, i32* %function24, align 4
  br label %if.end.27

if.else.25:                                       ; preds = %if.then.21
  %36 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %function26 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %36, i32 0, i32 1
  store i32 3, i32* %function26, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.25, %if.then.23
  br label %if.end.45

if.else.28:                                       ; preds = %land.lhs.true, %if.else.14
  %37 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %38 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x29 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %38, i32 0, i32 0
  %39 = load double, double* %x29, align 8
  %conv30 = fptosi double %39 to i32
  %40 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y31 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %40, i32 0, i32 1
  %41 = load double, double* %y31, align 8
  %conv32 = fptosi double %41 to i32
  %call33 = call %struct._GimpLayer* @gimp_image_pick_layer_by_bounds(%struct._GimpImage* %37, i32 %conv30, i32 %conv32)
  store %struct._GimpLayer* %call33, %struct._GimpLayer** %layer, align 8
  %42 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool34 = icmp ne %struct._GimpLayer* %42, null
  br i1 %tobool34, label %if.then.35, label %if.else.42

if.then.35:                                       ; preds = %if.else.28
  %43 = load i32, i32* %add, align 4
  %tobool36 = icmp ne i32 %43, 0
  br i1 %tobool36, label %if.then.37, label %if.else.39

if.then.37:                                       ; preds = %if.then.35
  %44 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %function38 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %44, i32 0, i32 1
  store i32 2, i32* %function38, align 4
  br label %if.end.41

if.else.39:                                       ; preds = %if.then.35
  %45 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %function40 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %45, i32 0, i32 1
  store i32 1, i32* %function40, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.39, %if.then.37
  br label %if.end.44

if.else.42:                                       ; preds = %if.else.28
  %46 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %function43 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %46, i32 0, i32 1
  store i32 0, i32* %function43, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.42, %if.end.41
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end.27
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.end
  %47 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %48 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %49 = load i32, i32* %state.addr, align 4
  %50 = load i32, i32* %proximity.addr, align 4
  call void @gimp_align_tool_status_update(%struct._GimpTool* %47, %struct._GimpDisplay* %48, i32 %49, i32 %50)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_align_tool_cursor_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %align_tool = alloca %struct._GimpAlignTool*, align 8
  %tool_cursor = alloca i32, align 4
  %modifier = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_align_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpAlignTool*
  store %struct._GimpAlignTool* %2, %struct._GimpAlignTool** %align_tool, align 8
  store i32 0, i32* %tool_cursor, align 4
  store i32 0, i32* %modifier, align 4
  %3 = load i32, i32* %state.addr, align 4
  %call2 = call i32 @gimp_get_extend_selection_mask()
  %and = and i32 %3, %call2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, i32* %modifier, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %function = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %4, i32 0, i32 1
  %5 = load i32, i32* %function, align 4
  switch i32 %5, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.3
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.4
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.5
    i32 6, label %sw.bb.5
    i32 7, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %if.end
  store i32 1, i32* %tool_cursor, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %if.end, %if.end
  store i32 36, i32* %tool_cursor, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.end, %if.end
  store i32 11, i32* %tool_cursor, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.end, %if.end
  store i32 6, i32* %tool_cursor, align 4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %6, i32 0, i32 3
  %7 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_set_cursor(%struct._GimpToolControl* %7, i32 1025)
  %8 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control7 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %8, i32 0, i32 3
  %9 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control7, align 8
  %10 = load i32, i32* %tool_cursor, align 4
  call void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl* %9, i32 %10)
  %11 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control8 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %11, i32 0, i32 3
  %12 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control8, align 8
  %13 = load i32, i32* %modifier, align 4
  call void @gimp_tool_control_set_cursor_modifier(%struct._GimpToolControl* %12, i32 %13)
  %14 = load i8*, i8** @gimp_align_tool_parent_class, align 8
  %15 = bitcast i8* %14 to %struct._GTypeClass*
  %call9 = call i64 @gimp_tool_get_type() #6
  %call10 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %15, i64 %call9)
  %16 = bitcast %struct._GTypeClass* %call10 to %struct._GimpToolClass*
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %16, i32 0, i32 13
  %17 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %18 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %19 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %20 = load i32, i32* %state.addr, align 4
  %21 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %17(%struct._GimpTool* %18, %struct._GimpCoords* %19, i32 %20, %struct._GimpDisplay* %21)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_align_tool_draw(%struct._GimpDrawTool* %draw_tool) #3 {
entry:
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %align_tool = alloca %struct._GimpAlignTool*, align 8
  %list = alloca %struct._GList*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %item = alloca %struct._GimpItem*, align 8
  %__inst49 = alloca %struct._GTypeInstance*, align 8
  %__t51 = alloca i64, align 8
  %__r54 = alloca i32, align 4
  %tmp70 = alloca i32, align 4
  %x1_f = alloca double, align 8
  %y1_f = alloca double, align 8
  %x2_f = alloca double, align 8
  %y2_f = alloca double, align 8
  %__inst111 = alloca %struct._GTypeInstance*, align 8
  %__t114 = alloca i64, align 8
  %__r117 = alloca i32, align 4
  %tmp133 = alloca i32, align 4
  %guide = alloca %struct._GimpGuide*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %x143 = alloca i32, align 4
  %y145 = alloca i32, align 4
  %w147 = alloca i32, align 4
  %h149 = alloca i32, align 4
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_align_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpAlignTool*
  store %struct._GimpAlignTool* %2, %struct._GimpAlignTool** %align_tool, align 8
  %3 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %x2 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %3, i32 0, i32 5
  %4 = load i32, i32* %x2, align 4
  %5 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %x1 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %5, i32 0, i32 3
  %6 = load i32, i32* %x1, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %x22 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %7, i32 0, i32 5
  %8 = load i32, i32* %x22, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %x13 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %9, i32 0, i32 3
  %10 = load i32, i32* %x13, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %10, %cond.false ]
  store i32 %cond, i32* %x, align 4
  %11 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %y2 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %11, i32 0, i32 6
  %12 = load i32, i32* %y2, align 4
  %13 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %y1 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %13, i32 0, i32 4
  %14 = load i32, i32* %y1, align 4
  %cmp4 = icmp slt i32 %12, %14
  br i1 %cmp4, label %cond.true.5, label %cond.false.7

cond.true.5:                                      ; preds = %cond.end
  %15 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %y26 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %15, i32 0, i32 6
  %16 = load i32, i32* %y26, align 4
  br label %cond.end.9

cond.false.7:                                     ; preds = %cond.end
  %17 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %y18 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %17, i32 0, i32 4
  %18 = load i32, i32* %y18, align 4
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.7, %cond.true.5
  %cond10 = phi i32 [ %16, %cond.true.5 ], [ %18, %cond.false.7 ]
  store i32 %cond10, i32* %y, align 4
  %19 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %x211 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %19, i32 0, i32 5
  %20 = load i32, i32* %x211, align 4
  %21 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %x112 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %21, i32 0, i32 3
  %22 = load i32, i32* %x112, align 4
  %cmp13 = icmp sgt i32 %20, %22
  br i1 %cmp13, label %cond.true.14, label %cond.false.16

cond.true.14:                                     ; preds = %cond.end.9
  %23 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %x215 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %23, i32 0, i32 5
  %24 = load i32, i32* %x215, align 4
  br label %cond.end.18

cond.false.16:                                    ; preds = %cond.end.9
  %25 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %x117 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %25, i32 0, i32 3
  %26 = load i32, i32* %x117, align 4
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.16, %cond.true.14
  %cond19 = phi i32 [ %24, %cond.true.14 ], [ %26, %cond.false.16 ]
  %27 = load i32, i32* %x, align 4
  %sub = sub nsw i32 %cond19, %27
  store i32 %sub, i32* %w, align 4
  %28 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %y220 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %28, i32 0, i32 6
  %29 = load i32, i32* %y220, align 4
  %30 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %y121 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %30, i32 0, i32 4
  %31 = load i32, i32* %y121, align 4
  %cmp22 = icmp sgt i32 %29, %31
  br i1 %cmp22, label %cond.true.23, label %cond.false.25

cond.true.23:                                     ; preds = %cond.end.18
  %32 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %y224 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %32, i32 0, i32 6
  %33 = load i32, i32* %y224, align 4
  br label %cond.end.27

cond.false.25:                                    ; preds = %cond.end.18
  %34 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %y126 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %34, i32 0, i32 4
  %35 = load i32, i32* %y126, align 4
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.25, %cond.true.23
  %cond28 = phi i32 [ %33, %cond.true.23 ], [ %35, %cond.false.25 ]
  %36 = load i32, i32* %y, align 4
  %sub29 = sub nsw i32 %cond28, %36
  store i32 %sub29, i32* %h, align 4
  %37 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %38 = load i32, i32* %x, align 4
  %conv = sitofp i32 %38 to double
  %39 = load i32, i32* %y, align 4
  %conv30 = sitofp i32 %39 to double
  %40 = load i32, i32* %w, align 4
  %conv31 = sitofp i32 %40 to double
  %41 = load i32, i32* %h, align 4
  %conv32 = sitofp i32 %41 to double
  %call33 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_rectangle(%struct._GimpDrawTool* %37, i32 0, double %conv, double %conv30, double %conv31, double %conv32)
  %42 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %selected_objects = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %42, i32 0, i32 2
  %43 = load %struct._GList*, %struct._GList** %selected_objects, align 8
  store %struct._GList* %43, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.171, %cond.end.27
  %44 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %44, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %45 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %45, i32 0, i32 0
  %46 = load i8*, i8** %data, align 8
  %47 = bitcast i8* %46 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %47, %struct._GTypeInstance** %__inst, align 8
  %call34 = call i64 @gimp_item_get_type() #6
  store i64 %call34, i64* %__t, align 8
  %48 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool35 = icmp ne %struct._GTypeInstance* %48, null
  br i1 %tobool35, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  store i32 0, i32* %__r, align 4
  br label %if.end.43

if.else:                                          ; preds = %for.body
  %49 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %49, i32 0, i32 0
  %50 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool36 = icmp ne %struct._GTypeClass* %50, null
  br i1 %tobool36, label %land.lhs.true, label %if.else.41

land.lhs.true:                                    ; preds = %if.else
  %51 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class37 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %51, i32 0, i32 0
  %52 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class37, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %52, i32 0, i32 0
  %53 = load i64, i64* %g_type, align 8
  %54 = load i64, i64* %__t, align 8
  %cmp38 = icmp eq i64 %53, %54
  br i1 %cmp38, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.41:                                       ; preds = %land.lhs.true, %if.else
  %55 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %56 = load i64, i64* %__t, align 8
  %call42 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %55, i64 %56) #8
  store i32 %call42, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.41, %if.then.40
  br label %if.end.43

if.end.43:                                        ; preds = %if.end, %if.then
  %57 = load i32, i32* %__r, align 4
  store i32 %57, i32* %tmp
  %58 = load i32, i32* %tmp
  %tobool44 = icmp ne i32 %58, 0
  br i1 %tobool44, label %if.then.45, label %if.else.109

if.then.45:                                       ; preds = %if.end.43
  %59 = load %struct._GList*, %struct._GList** %list, align 8
  %data47 = getelementptr inbounds %struct._GList, %struct._GList* %59, i32 0, i32 0
  %60 = load i8*, i8** %data47, align 8
  %61 = bitcast i8* %60 to %struct._GimpItem*
  store %struct._GimpItem* %61, %struct._GimpItem** %item, align 8
  %62 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %63 = bitcast %struct._GimpItem* %62 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %63, %struct._GTypeInstance** %__inst49, align 8
  %call52 = call i64 @gimp_vectors_get_type() #6
  store i64 %call52, i64* %__t51, align 8
  %64 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst49, align 8
  %tobool55 = icmp ne %struct._GTypeInstance* %64, null
  br i1 %tobool55, label %if.else.57, label %if.then.56

if.then.56:                                       ; preds = %if.then.45
  store i32 0, i32* %__r54, align 4
  br label %if.end.69

if.else.57:                                       ; preds = %if.then.45
  %65 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst49, align 8
  %g_class58 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %65, i32 0, i32 0
  %66 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class58, align 8
  %tobool59 = icmp ne %struct._GTypeClass* %66, null
  br i1 %tobool59, label %land.lhs.true.60, label %if.else.66

land.lhs.true.60:                                 ; preds = %if.else.57
  %67 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst49, align 8
  %g_class61 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %67, i32 0, i32 0
  %68 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class61, align 8
  %g_type62 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %68, i32 0, i32 0
  %69 = load i64, i64* %g_type62, align 8
  %70 = load i64, i64* %__t51, align 8
  %cmp63 = icmp eq i64 %69, %70
  br i1 %cmp63, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %land.lhs.true.60
  store i32 1, i32* %__r54, align 4
  br label %if.end.68

if.else.66:                                       ; preds = %land.lhs.true.60, %if.else.57
  %71 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst49, align 8
  %72 = load i64, i64* %__t51, align 8
  %call67 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %71, i64 %72) #8
  store i32 %call67, i32* %__r54, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.66, %if.then.65
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then.56
  %73 = load i32, i32* %__r54, align 4
  store i32 %73, i32* %tmp70
  %74 = load i32, i32* %tmp70
  %tobool71 = icmp ne i32 %74, 0
  br i1 %tobool71, label %if.then.72, label %if.else.89

if.then.72:                                       ; preds = %if.end.69
  %75 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %76 = bitcast %struct._GimpItem* %75 to %struct._GTypeInstance*
  %call77 = call i64 @gimp_vectors_get_type() #6
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call77)
  %77 = bitcast %struct._GTypeInstance* %call78 to %struct._GimpVectors*
  %call79 = call i32 @gimp_vectors_bounds(%struct._GimpVectors* %77, double* %x1_f, double* %y1_f, double* %x2_f, double* %y2_f)
  %78 = load double, double* %x1_f, align 8
  %add = fadd double %78, 5.000000e-01
  %conv80 = fptosi double %add to i32
  store i32 %conv80, i32* %x, align 4
  %79 = load double, double* %y1_f, align 8
  %add81 = fadd double %79, 5.000000e-01
  %conv82 = fptosi double %add81 to i32
  store i32 %conv82, i32* %y, align 4
  %80 = load double, double* %x2_f, align 8
  %81 = load double, double* %x1_f, align 8
  %sub83 = fsub double %80, %81
  %add84 = fadd double %sub83, 5.000000e-01
  %conv85 = fptosi double %add84 to i32
  store i32 %conv85, i32* %w, align 4
  %82 = load double, double* %y2_f, align 8
  %83 = load double, double* %y1_f, align 8
  %sub86 = fsub double %82, %83
  %add87 = fadd double %sub86, 5.000000e-01
  %conv88 = fptosi double %add87 to i32
  store i32 %conv88, i32* %h, align 4
  br label %if.end.92

if.else.89:                                       ; preds = %if.end.69
  %84 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %84, i32* %x, i32* %y)
  %85 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call90 = call i32 @gimp_item_get_width(%struct._GimpItem* %85)
  store i32 %call90, i32* %w, align 4
  %86 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call91 = call i32 @gimp_item_get_height(%struct._GimpItem* %86)
  store i32 %call91, i32* %h, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.89, %if.then.72
  %87 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %88 = load i32, i32* %x, align 4
  %conv93 = sitofp i32 %88 to double
  %89 = load i32, i32* %y, align 4
  %conv94 = sitofp i32 %89 to double
  %call95 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %87, i32 1, double %conv93, double %conv94, i32 7, i32 7, i32 2)
  %90 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %91 = load i32, i32* %x, align 4
  %92 = load i32, i32* %w, align 4
  %add96 = add nsw i32 %91, %92
  %conv97 = sitofp i32 %add96 to double
  %93 = load i32, i32* %y, align 4
  %conv98 = sitofp i32 %93 to double
  %call99 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %90, i32 1, double %conv97, double %conv98, i32 7, i32 7, i32 3)
  %94 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %95 = load i32, i32* %x, align 4
  %conv100 = sitofp i32 %95 to double
  %96 = load i32, i32* %y, align 4
  %97 = load i32, i32* %h, align 4
  %add101 = add nsw i32 %96, %97
  %conv102 = sitofp i32 %add101 to double
  %call103 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %94, i32 1, double %conv100, double %conv102, i32 7, i32 7, i32 5)
  %98 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %99 = load i32, i32* %x, align 4
  %100 = load i32, i32* %w, align 4
  %add104 = add nsw i32 %99, %100
  %conv105 = sitofp i32 %add104 to double
  %101 = load i32, i32* %y, align 4
  %102 = load i32, i32* %h, align 4
  %add106 = add nsw i32 %101, %102
  %conv107 = sitofp i32 %add106 to double
  %call108 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %98, i32 1, double %conv105, double %conv107, i32 7, i32 7, i32 6)
  br label %if.end.167

if.else.109:                                      ; preds = %if.end.43
  %103 = load %struct._GList*, %struct._GList** %list, align 8
  %data112 = getelementptr inbounds %struct._GList, %struct._GList* %103, i32 0, i32 0
  %104 = load i8*, i8** %data112, align 8
  %105 = bitcast i8* %104 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %105, %struct._GTypeInstance** %__inst111, align 8
  %call115 = call i64 @gimp_guide_get_type() #6
  store i64 %call115, i64* %__t114, align 8
  %106 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst111, align 8
  %tobool118 = icmp ne %struct._GTypeInstance* %106, null
  br i1 %tobool118, label %if.else.120, label %if.then.119

if.then.119:                                      ; preds = %if.else.109
  store i32 0, i32* %__r117, align 4
  br label %if.end.132

if.else.120:                                      ; preds = %if.else.109
  %107 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst111, align 8
  %g_class121 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %107, i32 0, i32 0
  %108 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class121, align 8
  %tobool122 = icmp ne %struct._GTypeClass* %108, null
  br i1 %tobool122, label %land.lhs.true.123, label %if.else.129

land.lhs.true.123:                                ; preds = %if.else.120
  %109 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst111, align 8
  %g_class124 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %109, i32 0, i32 0
  %110 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class124, align 8
  %g_type125 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %110, i32 0, i32 0
  %111 = load i64, i64* %g_type125, align 8
  %112 = load i64, i64* %__t114, align 8
  %cmp126 = icmp eq i64 %111, %112
  br i1 %cmp126, label %if.then.128, label %if.else.129

if.then.128:                                      ; preds = %land.lhs.true.123
  store i32 1, i32* %__r117, align 4
  br label %if.end.131

if.else.129:                                      ; preds = %land.lhs.true.123, %if.else.120
  %113 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst111, align 8
  %114 = load i64, i64* %__t114, align 8
  %call130 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %113, i64 %114) #8
  store i32 %call130, i32* %__r117, align 4
  br label %if.end.131

if.end.131:                                       ; preds = %if.else.129, %if.then.128
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.then.119
  %115 = load i32, i32* %__r117, align 4
  store i32 %115, i32* %tmp133
  %116 = load i32, i32* %tmp133
  %tobool134 = icmp ne i32 %116, 0
  br i1 %tobool134, label %if.then.135, label %if.end.166

if.then.135:                                      ; preds = %if.end.132
  %117 = load %struct._GList*, %struct._GList** %list, align 8
  %data137 = getelementptr inbounds %struct._GList, %struct._GList* %117, i32 0, i32 0
  %118 = load i8*, i8** %data137, align 8
  %119 = bitcast i8* %118 to %struct._GimpGuide*
  store %struct._GimpGuide* %119, %struct._GimpGuide** %guide, align 8
  %120 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %121 = bitcast %struct._GimpDrawTool* %120 to %struct._GTypeInstance*
  %call139 = call i64 @gimp_tool_get_type() #6
  %call140 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 %call139)
  %122 = bitcast %struct._GTypeInstance* %call140 to %struct._GimpTool*
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %122, i32 0, i32 4
  %123 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call141 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %123)
  store %struct._GimpImage* %call141, %struct._GimpImage** %image, align 8
  %124 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %call150 = call i32 @gimp_guide_get_orientation(%struct._GimpGuide* %124)
  switch i32 %call150, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.158
  ]

sw.bb:                                            ; preds = %if.then.135
  %125 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %call151 = call i32 @gimp_guide_get_position(%struct._GimpGuide* %125)
  store i32 %call151, i32* %x143, align 4
  %126 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call152 = call i32 @gimp_image_get_height(%struct._GimpImage* %126)
  store i32 %call152, i32* %h149, align 4
  %127 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %128 = load i32, i32* %x143, align 4
  %conv153 = sitofp i32 %128 to double
  %129 = load i32, i32* %h149, align 4
  %conv154 = sitofp i32 %129 to double
  %call155 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %127, i32 1, double %conv153, double %conv154, i32 7, i32 7, i32 4)
  %130 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %131 = load i32, i32* %x143, align 4
  %conv156 = sitofp i32 %131 to double
  %call157 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %130, i32 1, double %conv156, double 0.000000e+00, i32 7, i32 7, i32 1)
  br label %sw.epilog

sw.bb.158:                                        ; preds = %if.then.135
  %132 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %call159 = call i32 @gimp_guide_get_position(%struct._GimpGuide* %132)
  store i32 %call159, i32* %y145, align 4
  %133 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call160 = call i32 @gimp_image_get_width(%struct._GimpImage* %133)
  store i32 %call160, i32* %w147, align 4
  %134 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %135 = load i32, i32* %w147, align 4
  %conv161 = sitofp i32 %135 to double
  %136 = load i32, i32* %y145, align 4
  %conv162 = sitofp i32 %136 to double
  %call163 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %134, i32 1, double %conv161, double %conv162, i32 7, i32 7, i32 8)
  %137 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %138 = load i32, i32* %y145, align 4
  %conv164 = sitofp i32 %138 to double
  %call165 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %137, i32 1, double 0.000000e+00, double %conv164, i32 7, i32 7, i32 7)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.135
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.158, %sw.bb
  br label %if.end.166

if.end.166:                                       ; preds = %sw.epilog, %if.end.132
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %if.end.92
  br label %for.inc

for.inc:                                          ; preds = %if.end.167
  %139 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool168 = icmp ne %struct._GList* %139, null
  br i1 %tobool168, label %cond.true.169, label %cond.false.170

cond.true.169:                                    ; preds = %for.inc
  %140 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %140, i32 0, i32 1
  %141 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end.171

cond.false.170:                                   ; preds = %for.inc
  br label %cond.end.171

cond.end.171:                                     ; preds = %cond.false.170, %cond.true.169
  %cond172 = phi %struct._GList* [ %141, %cond.true.169 ], [ null, %cond.false.170 ]
  store %struct._GList* %cond172, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool*) #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_align_tool_align(%struct._GimpAlignTool* %align_tool, i32 %align_type) #3 {
entry:
  %align_tool.addr = alloca %struct._GimpAlignTool*, align 8
  %align_type.addr = alloca i32, align 4
  %options = alloca %struct._GimpAlignOptions*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %reference_object = alloca %struct._GObject*, align 8
  %list = alloca %struct._GList*, align 8
  %offset = alloca i32, align 4
  store %struct._GimpAlignTool* %align_tool, %struct._GimpAlignTool** %align_tool.addr, align 8
  store i32 %align_type, i32* %align_type.addr, align 4
  %0 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool.addr, align 8
  %1 = bitcast %struct._GimpAlignTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  %call2 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %2)
  %3 = bitcast %struct._GimpToolOptions* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_align_options_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpAlignOptions*
  store %struct._GimpAlignOptions* %4, %struct._GimpAlignOptions** %options, align 8
  store %struct._GObject* null, %struct._GObject** %reference_object, align 8
  store i32 0, i32* %offset, align 4
  %5 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool.addr, align 8
  %selected_objects = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %5, i32 0, i32 2
  %6 = load %struct._GList*, %struct._GList** %selected_objects, align 8
  %tobool = icmp ne %struct._GList* %6, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool.addr, align 8
  %8 = bitcast %struct._GimpAlignTool* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_tool_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpTool*
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %9, i32 0, i32 4
  %10 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call7 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %10)
  store %struct._GimpImage* %call7, %struct._GimpImage** %image, align 8
  %11 = load i32, i32* %align_type.addr, align 4
  switch i32 %11, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb.8
    i32 7, label %sw.bb.8
    i32 8, label %sw.bb.8
    i32 9, label %sw.bb.8
    i32 10, label %sw.bb.8
    i32 11, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  store i32 0, i32* %offset, align 4
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %12 = load %struct._GimpAlignOptions*, %struct._GimpAlignOptions** %options, align 8
  %offset_x = getelementptr inbounds %struct._GimpAlignOptions, %struct._GimpAlignOptions* %12, i32 0, i32 2
  %13 = load double, double* %offset_x, align 8
  %conv = fptosi double %13 to i32
  store i32 %conv, i32* %offset, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.8, %sw.bb
  %14 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool.addr, align 8
  %selected_objects9 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %14, i32 0, i32 2
  %15 = load %struct._GList*, %struct._GList** %selected_objects9, align 8
  store %struct._GList* %15, %struct._GList** %list, align 8
  %16 = load %struct._GimpAlignOptions*, %struct._GimpAlignOptions** %options, align 8
  %align_reference = getelementptr inbounds %struct._GimpAlignOptions, %struct._GimpAlignOptions* %16, i32 0, i32 1
  %17 = load i32, i32* %align_reference, align 4
  switch i32 %17, label %sw.epilog.34 [
    i32 1, label %sw.bb.10
    i32 0, label %sw.bb.12
    i32 2, label %sw.bb.24
    i32 3, label %sw.bb.27
    i32 4, label %sw.bb.30
    i32 5, label %sw.bb.33
  ]

sw.bb.10:                                         ; preds = %sw.epilog
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %19 = bitcast %struct._GimpImage* %18 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 80)
  %20 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  store %struct._GObject* %20, %struct._GObject** %reference_object, align 8
  br label %sw.epilog.34

sw.bb.12:                                         ; preds = %sw.epilog
  %21 = load %struct._GList*, %struct._GList** %list, align 8
  %call13 = call i32 @g_list_length(%struct._GList* %21)
  %cmp = icmp eq i32 %call13, 1
  br i1 %cmp, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %sw.bb.12
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %23 = bitcast %struct._GimpImage* %22 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 80)
  %24 = bitcast %struct._GTypeInstance* %call16 to %struct._GObject*
  store %struct._GObject* %24, %struct._GObject** %reference_object, align 8
  br label %if.end.23

if.else:                                          ; preds = %sw.bb.12
  %25 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool.addr, align 8
  %set_reference = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %25, i32 0, i32 7
  %26 = load i32, i32* %set_reference, align 4
  %tobool17 = icmp ne i32 %26, 0
  br i1 %tobool17, label %if.then.18, label %if.else.21

if.then.18:                                       ; preds = %if.else
  %27 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %27, i32 0, i32 0
  %28 = load i8*, i8** %data, align 8
  %29 = bitcast i8* %28 to %struct._GTypeInstance*
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 80)
  %30 = bitcast %struct._GTypeInstance* %call19 to %struct._GObject*
  store %struct._GObject* %30, %struct._GObject** %reference_object, align 8
  %31 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool20 = icmp ne %struct._GList* %31, null
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.18
  %32 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %32, i32 0, i32 1
  %33 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %33, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %if.end.22

if.else.21:                                       ; preds = %if.else
  store %struct._GObject* null, %struct._GObject** %reference_object, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.21, %cond.end
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.15
  br label %sw.epilog.34

sw.bb.24:                                         ; preds = %sw.epilog
  %34 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call25 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %34)
  %35 = bitcast %struct._GimpChannel* %call25 to %struct._GTypeInstance*
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 80)
  %36 = bitcast %struct._GTypeInstance* %call26 to %struct._GObject*
  store %struct._GObject* %36, %struct._GObject** %reference_object, align 8
  br label %sw.epilog.34

sw.bb.27:                                         ; preds = %sw.epilog
  %37 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call28 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %37)
  %38 = bitcast %struct._GimpLayer* %call28 to %struct._GTypeInstance*
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 80)
  %39 = bitcast %struct._GTypeInstance* %call29 to %struct._GObject*
  store %struct._GObject* %39, %struct._GObject** %reference_object, align 8
  br label %sw.epilog.34

sw.bb.30:                                         ; preds = %sw.epilog
  %40 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call31 = call %struct._GimpChannel* @gimp_image_get_active_channel(%struct._GimpImage* %40)
  %41 = bitcast %struct._GimpChannel* %call31 to %struct._GTypeInstance*
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 80)
  %42 = bitcast %struct._GTypeInstance* %call32 to %struct._GObject*
  store %struct._GObject* %42, %struct._GObject** %reference_object, align 8
  br label %sw.epilog.34

sw.bb.33:                                         ; preds = %sw.epilog
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i32 0, i32 0))
  br label %sw.epilog.34

sw.epilog.34:                                     ; preds = %sw.epilog, %sw.bb.33, %sw.bb.30, %sw.bb.27, %sw.bb.24, %if.end.23, %sw.bb.10
  %43 = load %struct._GObject*, %struct._GObject** %reference_object, align 8
  %tobool35 = icmp ne %struct._GObject* %43, null
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %sw.epilog.34
  br label %return

if.end.37:                                        ; preds = %sw.epilog.34
  %44 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool.addr, align 8
  %45 = bitcast %struct._GimpAlignTool* %44 to %struct._GTypeInstance*
  %call38 = call i64 @gimp_draw_tool_get_type() #6
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call38)
  %46 = bitcast %struct._GTypeInstance* %call39 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %46)
  %47 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %48 = load %struct._GList*, %struct._GList** %list, align 8
  %49 = load i32, i32* %align_type.addr, align 4
  %50 = load %struct._GObject*, %struct._GObject** %reference_object, align 8
  %51 = load i32, i32* %align_type.addr, align 4
  %52 = load i32, i32* %offset, align 4
  call void @gimp_image_arrange_objects(%struct._GimpImage* %47, %struct._GList* %48, i32 %49, %struct._GObject* %50, i32 %51, i32 %52)
  %53 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool.addr, align 8
  %54 = bitcast %struct._GimpAlignTool* %53 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_draw_tool_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call40)
  %55 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %55)
  %56 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %56)
  br label %return

return:                                           ; preds = %if.end.37, %if.then.36, %if.then
  ret void
}

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare i32 @g_list_length(%struct._GList*) #1

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #1

declare %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage*) #1

declare %struct._GimpChannel* @gimp_image_get_active_channel(%struct._GimpImage*) #1

declare void @g_print(i8*, ...) #1

declare void @gimp_draw_tool_pause(%struct._GimpDrawTool*) #1

declare void @gimp_image_arrange_objects(%struct._GimpImage*, %struct._GList*, i32, %struct._GObject*, i32, i32) #1

declare void @gimp_draw_tool_resume(%struct._GimpDrawTool*) #1

declare void @gimp_image_flush(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_align_tool_clear_selected(%struct._GimpAlignTool* %align_tool) #3 {
entry:
  %align_tool.addr = alloca %struct._GimpAlignTool*, align 8
  store %struct._GimpAlignTool* %align_tool, %struct._GimpAlignTool** %align_tool.addr, align 8
  %0 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool.addr, align 8
  %1 = bitcast %struct._GimpAlignTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_draw_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %2)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool.addr, align 8
  %selected_objects = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %3, i32 0, i32 2
  %4 = load %struct._GList*, %struct._GList** %selected_objects, align 8
  %tobool = icmp ne %struct._GList* %4, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool.addr, align 8
  %selected_objects2 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %5, i32 0, i32 2
  %6 = load %struct._GList*, %struct._GList** %selected_objects2, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %6, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8
  %8 = bitcast i8* %7 to %struct._GObject*
  %9 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool.addr, align 8
  call void @gimp_align_tool_object_removed(%struct._GObject* %8, %struct._GimpAlignTool* %9)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool.addr, align 8
  %11 = bitcast %struct._GimpAlignTool* %10 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_draw_tool_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call3)
  %12 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_align_tool_object_removed(%struct._GObject* %object, %struct._GimpAlignTool* %align_tool) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %align_tool.addr = alloca %struct._GimpAlignTool*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store %struct._GimpAlignTool* %align_tool, %struct._GimpAlignTool** %align_tool.addr, align 8
  %0 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool.addr, align 8
  %1 = bitcast %struct._GimpAlignTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_draw_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %2)
  %3 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool.addr, align 8
  %selected_objects = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %3, i32 0, i32 2
  %4 = load %struct._GList*, %struct._GList** %selected_objects, align 8
  %tobool = icmp ne %struct._GList* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %6 = bitcast %struct._GObject* %5 to i8*
  %7 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool.addr, align 8
  %8 = bitcast %struct._GimpAlignTool* %7 to i8*
  %call2 = call i32 @g_signal_handlers_disconnect_matched(i8* %6, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GimpAlignTool*)* @gimp_align_tool_object_removed to i8*), i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool.addr, align 8
  %selected_objects3 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %9, i32 0, i32 2
  %10 = load %struct._GList*, %struct._GList** %selected_objects3, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %12 = bitcast %struct._GObject* %11 to i8*
  %call4 = call %struct._GList* @g_list_remove(%struct._GList* %10, i8* %12)
  %13 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool.addr, align 8
  %selected_objects5 = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %13, i32 0, i32 2
  store %struct._GList* %call4, %struct._GList** %selected_objects5, align 8
  %14 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool.addr, align 8
  %15 = bitcast %struct._GimpAlignTool* %14 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_draw_tool_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call6)
  %16 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %16)
  ret void
}

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #1

declare void @gimp_tool_control(%struct._GimpTool*, i32, %struct._GimpDisplay*) #1

declare void @gimp_tool_control_activate(%struct._GimpToolControl*) #1

declare i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool*) #1

declare void @gimp_draw_tool_start(%struct._GimpDrawTool*, %struct._GimpDisplay*) #1

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

declare i32 @gimp_get_extend_selection_mask() #1

declare void @gimp_tool_control_halt(%struct._GimpToolControl*) #1

; Function Attrs: nounwind
declare double @hypot(double, double) #4

declare i32 @gimp_draw_tool_on_vectors(%struct._GimpDrawTool*, %struct._GimpDisplay*, %struct._GimpCoords*, i32, i32, %struct._GimpCoords*, double*, %struct._GimpAnchor**, %struct._GimpAnchor**, %struct._GimpStroke**, %struct._GimpVectors**) #1

declare i32 @gimp_display_shell_get_show_guides(%struct._GimpDisplayShell*) #1

declare %struct._GimpGuide* @gimp_image_find_guide(%struct._GimpImage*, double, double, double, double) #1

declare %struct._GimpLayer* @gimp_image_pick_layer_by_bounds(%struct._GimpImage*, i32, i32) #1

declare %struct._GList* @g_list_find(%struct._GList*, i8*) #1

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare %struct._GList* @gimp_image_get_layer_list(%struct._GimpImage*) #1

declare i32 @gimp_item_get_visible(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #1

declare i32 @gimp_item_get_width(%struct._GimpItem*) #1

declare i32 @gimp_item_get_height(%struct._GimpItem*) #1

declare void @g_list_free(%struct._GList*) #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_align_tool_status_update(%struct._GimpTool* %tool, %struct._GimpDisplay* %display, i32 %state, i32 %proximity) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %state.addr = alloca i32, align 4
  %proximity.addr = alloca i32, align 4
  %align_tool = alloca %struct._GimpAlignTool*, align 8
  %extend_mask = alloca i32, align 4
  %status = alloca i8*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store i32 %proximity, i32* %proximity.addr, align 4
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_align_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpAlignTool*
  store %struct._GimpAlignTool* %2, %struct._GimpAlignTool** %align_tool, align 8
  %call2 = call i32 @gimp_get_extend_selection_mask()
  store i32 %call2, i32* %extend_mask, align 4
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_pop_status(%struct._GimpTool* %3, %struct._GimpDisplay* %4)
  %5 = load i32, i32* %proximity.addr, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.35

if.then:                                          ; preds = %entry
  store i8* null, i8** %status, align 8
  %6 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %selected_objects = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %6, i32 0, i32 2
  %7 = load %struct._GList*, %struct._GList** %selected_objects, align 8
  %tobool3 = icmp ne %struct._GList* %7, null
  br i1 %tobool3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  %8 = load i32, i32* %extend_mask, align 4
  %9 = load i32, i32* %state.addr, align 4
  %or = or i32 %9, %8
  store i32 %or, i32* %state.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %10 = load %struct._GimpAlignTool*, %struct._GimpAlignTool** %align_tool, align 8
  %function = getelementptr inbounds %struct._GimpAlignTool, %struct._GimpAlignTool* %10, i32 0, i32 1
  %11 = load i32, i32* %function, align 4
  switch i32 %11, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.7
    i32 2, label %sw.bb.12
    i32 3, label %sw.bb.15
    i32 4, label %sw.bb.20
    i32 5, label %sw.bb.23
    i32 6, label %sw.bb.28
    i32 7, label %sw.bb.31
  ]

sw.bb:                                            ; preds = %if.end
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.10, i32 0, i32 0)) #7
  %12 = load i32, i32* %extend_mask, align 4
  %13 = load i32, i32* %state.addr, align 4
  %neg = xor i32 %13, -1
  %and = and i32 %12, %neg
  %call6 = call i8* @gimp_suggest_modifiers(i8* %call5, i32 %and, i8* null, i8* null, i8* null)
  store i8* %call6, i8** %status, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.end
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i32 0, i32 0)) #7
  %14 = load i32, i32* %extend_mask, align 4
  %15 = load i32, i32* %state.addr, align 4
  %neg9 = xor i32 %15, -1
  %and10 = and i32 %14, %neg9
  %call11 = call i8* @gimp_suggest_modifiers(i8* %call8, i32 %and10, i8* null, i8* null, i8* null)
  store i8* %call11, i8** %status, align 8
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.end
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i32 0, i32 0)) #7
  %call14 = call noalias i8* @g_strdup(i8* %call13)
  store i8* %call14, i8** %status, align 8
  br label %sw.epilog

sw.bb.15:                                         ; preds = %if.end
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i32 0, i32 0)) #7
  %16 = load i32, i32* %extend_mask, align 4
  %17 = load i32, i32* %state.addr, align 4
  %neg17 = xor i32 %17, -1
  %and18 = and i32 %16, %neg17
  %call19 = call i8* @gimp_suggest_modifiers(i8* %call16, i32 %and18, i8* null, i8* null, i8* null)
  store i8* %call19, i8** %status, align 8
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.end
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i32 0, i32 0)) #7
  %call22 = call noalias i8* @g_strdup(i8* %call21)
  store i8* %call22, i8** %status, align 8
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.end
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i32 0, i32 0)) #7
  %18 = load i32, i32* %extend_mask, align 4
  %19 = load i32, i32* %state.addr, align 4
  %neg25 = xor i32 %19, -1
  %and26 = and i32 %18, %neg25
  %call27 = call i8* @gimp_suggest_modifiers(i8* %call24, i32 %and26, i8* null, i8* null, i8* null)
  store i8* %call27, i8** %status, align 8
  br label %sw.epilog

sw.bb.28:                                         ; preds = %if.end
  %call29 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i32 0, i32 0)) #7
  %call30 = call noalias i8* @g_strdup(i8* %call29)
  store i8* %call30, i8** %status, align 8
  br label %sw.epilog

sw.bb.31:                                         ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.31, %sw.bb.28, %sw.bb.23, %sw.bb.20, %sw.bb.15, %sw.bb.12, %sw.bb.7, %sw.bb
  %20 = load i8*, i8** %status, align 8
  %tobool32 = icmp ne i8* %20, null
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %sw.epilog
  %21 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %22 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %23 = load i8*, i8** %status, align 8
  call void (%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) @gimp_tool_push_status(%struct._GimpTool* %21, %struct._GimpDisplay* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* %23)
  %24 = load i8*, i8** %status, align 8
  call void @g_free(i8* %24)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %sw.epilog
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %entry
  ret void
}

declare void @gimp_tool_pop_status(%struct._GimpTool*, %struct._GimpDisplay*) #1

declare i8* @gimp_suggest_modifiers(i8*, i32, i8*, i8*, i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare void @gimp_tool_push_status(%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) #1

declare void @g_free(i8*) #1

declare void @gimp_tool_control_set_cursor(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_cursor_modifier(%struct._GimpToolControl*, i32) #1

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_rectangle(%struct._GimpDrawTool*, i32, double, double, double, double) #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #5

; Function Attrs: nounwind readnone
declare i64 @gimp_vectors_get_type() #2

declare i32 @gimp_vectors_bounds(%struct._GimpVectors*, double*, double*, double*, double*) #1

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool*, i32, double, double, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_guide_get_type() #2

declare i32 @gimp_guide_get_orientation(%struct._GimpGuide*) #1

declare i32 @gimp_guide_get_position(%struct._GimpGuide*) #1

declare i32 @gimp_image_get_height(%struct._GimpImage*) #1

declare i32 @gimp_image_get_width(%struct._GimpImage*) #1

declare void @gimp_tool_control_set_snap_to(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_precision(%struct._GimpToolControl*, i32) #1

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
