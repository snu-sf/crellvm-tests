; ModuleID = './app/tools/gimppainttool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
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
%struct._GimpPaintInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i8*, %struct._GimpPaintOptions* }
%struct._GimpPaintOptions = type { %struct._GimpToolOptions, %struct._GimpPaintInfo*, double, double, double, i32, i32, i32, %struct._GimpJitterOptions*, i32, %struct._GimpFadeOptions*, %struct._GimpGradientOptions*, %struct._GimpSmoothingOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpJitterOptions = type { i32, double }
%struct._GimpFadeOptions = type { i32, double, i32, i32 }
%struct._GimpGradientOptions = type { i32, i32 }
%struct._GimpSmoothingOptions = type { i32, i32, double }
%struct._GimpContainer = type opaque
%struct._GimpToolControl = type { %struct._GimpObject, i32, i32, i32, %struct._GSList*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpCanvasItem = type opaque
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpDisplayConfig = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GdkEventKey = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32, i8*, i16, i8, i8 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpUIManager = type opaque
%struct._GimpDrawTool = type { %struct._GimpTool, %struct._GimpDisplay*, i32, i32, i64, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GList* }
%struct._GimpColorTool = type { %struct._GimpDrawTool, i32, i32, i32, i32, %struct._GimpColorOptions*, %struct._GimpSamplePoint*, i32, i32, i32 }
%struct._GimpColorOptions = type { %struct._GimpImageMapOptions, i32, i32, double }
%struct._GimpImageMapOptions = type { %struct._GimpToolOptions, i32, i8* }
%struct._GimpSamplePoint = type opaque
%struct._GimpPaintTool = type { %struct._GimpColorTool, i32, i32, i8*, i8*, i8*, %struct._GimpPaintCore* }
%struct._GimpPaintCore = type { %struct._GimpObject, i32, i8*, %struct._GimpCoords, %struct._GimpCoords, %struct._GimpCoords, %struct._GimpVector2, double, double, i32, i32, i32, i32, i32, %struct._TileManager*, %struct._TileManager*, %struct._TileManager*, %struct._TempBuf*, %struct._TempBuf*, %struct._TempBuf*, %struct._GArray* }
%struct._GimpVector2 = type { double, double }
%struct._TileManager = type opaque
%struct._TempBuf = type opaque
%struct._GArray = type { i8*, i32 }
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
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GimpDisplayOptions = type opaque
%struct._GimpZoomModel = type opaque
%struct._Selection = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpColorDisplayStack = type opaque
%struct._GimpTreeHandler = type opaque
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._GimpProjection = type { %struct._GimpObject, %struct._GimpProjectable*, %struct._TilePyramid*, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglProcessor*, %struct._GSList*, %struct._GimpProjectionIdleRender, i32, i32, i32 }
%struct._GimpProjectable = type opaque
%struct._TilePyramid = type opaque
%struct._GeglNode = type opaque
%struct._GeglProcessor = type opaque
%struct._GimpProjectionIdleRender = type { i32, i32, i32, i32, i32, i32, i32, %struct._GSList* }

@gimp_paint_tool_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"GimpPaintTool\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Gimp-Tools\00", align 1
@__func__.gimp_paint_tool_enable_color_picker = private unnamed_addr constant [36 x i8] c"gimp_paint_tool_enable_color_picker\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"GIMP_IS_PAINT_TOOL (tool)\00", align 1
@gimp_paint_tool_parent_class = internal global i8* null, align 8
@GimpPaintTool_private_offset = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"gimppainttool.c\00", align 1
@__func__.gimp_paint_tool_constructed = private unnamed_addr constant [28 x i8] c"gimp_paint_tool_constructed\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"GIMP_IS_TOOL_INFO (tool->tool_info)\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"GIMP_IS_PAINT_INFO (tool->tool_info->paint_info)\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"g_type_is_a (paint_info->paint_type, GIMP_TYPE_PAINT_CORE)\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"undo-desc\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"notify::hard\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Cannot paint on layer groups.\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"The active layer's pixels are locked.\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"gimp-color-picker-tool\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"Click in any image to pick the foreground color\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"Click in any image to pick the background color\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"%s for constrained angles\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"%.1f %s.  %s\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"pixels\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"%%.%df %s.  %%s\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"%s for a straight line\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"context/context-opacity-set\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"Click to paint\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"Click to draw the line\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"%s to pick a color\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_paint_tool_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_paint_tool_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_paint_tool_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_color_tool_get_type() #8
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 304, void (i8*, i8*)* bitcast (void (i8*)* @gimp_paint_tool_class_intern_init to void (i8*, i8*)*), i32 336, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpPaintTool*)* @gimp_paint_tool_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_paint_tool_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_paint_tool_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_tool_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_paint_tool_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_paint_tool_parent_class, align 8
  %1 = load i32, i32* @GimpPaintTool_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpPaintTool_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpPaintToolClass*
  call void @gimp_paint_tool_class_init(%struct._GimpPaintToolClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_paint_tool_init(%struct._GimpPaintTool* %paint_tool) #3 {
entry:
  %paint_tool.addr = alloca %struct._GimpPaintTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  store %struct._GimpPaintTool* %paint_tool, %struct._GimpPaintTool** %paint_tool.addr, align 8
  %0 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool.addr, align 8
  %1 = bitcast %struct._GimpPaintTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 3
  %4 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_set_motion_mode(%struct._GimpToolControl* %4, i32 0)
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control2 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 3
  %6 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control2, align 8
  call void @gimp_tool_control_set_scroll_lock(%struct._GimpToolControl* %6, i32 1)
  %7 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control3 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %7, i32 0, i32 3
  %8 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control3, align 8
  call void @gimp_tool_control_set_action_value_1(%struct._GimpToolControl* %8, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i32 0, i32 0))
  %9 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool.addr, align 8
  %pick_colors = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %9, i32 0, i32 1
  store i32 0, i32* %pick_colors, align 4
  %10 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool.addr, align 8
  %draw_line = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %10, i32 0, i32 2
  store i32 0, i32* %draw_line, align 4
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0)) #7
  %11 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool.addr, align 8
  %status = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %11, i32 0, i32 3
  store i8* %call4, i8** %status, align 8
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i32 0, i32 0)) #7
  %12 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool.addr, align 8
  %status_line = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %12, i32 0, i32 4
  store i8* %call5, i8** %status_line, align 8
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0)) #7
  %13 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool.addr, align 8
  %status_ctrl = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %13, i32 0, i32 5
  store i8* %call6, i8** %status_ctrl, align 8
  %14 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool.addr, align 8
  %core = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %14, i32 0, i32 6
  store %struct._GimpPaintCore* null, %struct._GimpPaintCore** %core, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_paint_tool_enable_color_picker(%struct._GimpPaintTool* %tool, i32 %mode) #3 {
entry:
  %tool.addr = alloca %struct._GimpPaintTool*, align 8
  %mode.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPaintTool* %tool, %struct._GimpPaintTool** %tool.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpPaintTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_paint_tool_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_paint_tool_enable_color_picker, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %tool.addr, align 8
  %pick_colors = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %13, i32 0, i32 1
  store i32 1, i32* %pick_colors, align 4
  %14 = load i32, i32* %mode.addr, align 4
  %15 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %tool.addr, align 8
  %16 = bitcast %struct._GimpPaintTool* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_color_tool_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpColorTool*
  %pick_mode = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %17, i32 0, i32 4
  store i32 %14, i32* %pick_mode, align 4
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_paint_tool_class_init(%struct._GimpPaintToolClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpPaintToolClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %tool_class = alloca %struct._GimpToolClass*, align 8
  %draw_tool_class = alloca %struct._GimpDrawToolClass*, align 8
  store %struct._GimpPaintToolClass* %klass, %struct._GimpPaintToolClass** %klass.addr, align 8
  %0 = load %struct._GimpPaintToolClass*, %struct._GimpPaintToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpPaintToolClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpPaintToolClass*, %struct._GimpPaintToolClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpPaintToolClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_tool_get_type() #8
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpToolClass*
  store %struct._GimpToolClass* %5, %struct._GimpToolClass** %tool_class, align 8
  %6 = load %struct._GimpPaintToolClass*, %struct._GimpPaintToolClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpPaintToolClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_draw_tool_get_type() #8
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpDrawToolClass*
  store %struct._GimpDrawToolClass* %8, %struct._GimpDrawToolClass** %draw_tool_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_paint_tool_constructed, void (%struct._GObject*)** %constructed, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_paint_tool_finalize, void (%struct._GObject*)** %finalize, align 8
  %11 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %control = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %11, i32 0, i32 4
  store void (%struct._GimpTool*, i32, %struct._GimpDisplay*)* @gimp_paint_tool_control, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)** %control, align 8
  %12 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %12, i32 0, i32 5
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_paint_tool_button_press, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_press, align 8
  %13 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_release = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %13, i32 0, i32 6
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_paint_tool_button_release, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_release, align 8
  %14 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %motion = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %14, i32 0, i32 7
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_paint_tool_motion, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %motion, align 8
  %15 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %modifier_key = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %15, i32 0, i32 10
  store void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_paint_tool_modifier_key, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)** %modifier_key, align 8
  %16 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %16, i32 0, i32 13
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)* @gimp_paint_tool_cursor_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %17 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %oper_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %17, i32 0, i32 12
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_paint_tool_oper_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %oper_update, align 8
  %18 = load %struct._GimpDrawToolClass*, %struct._GimpDrawToolClass** %draw_tool_class, align 8
  %draw = getelementptr inbounds %struct._GimpDrawToolClass, %struct._GimpDrawToolClass* %18, i32 0, i32 1
  store void (%struct._GimpDrawTool*)* @gimp_paint_tool_draw, void (%struct._GimpDrawTool*)** %draw, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_draw_tool_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_paint_tool_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %paint_tool = alloca %struct._GimpPaintTool*, align 8
  %options = alloca %struct._GimpPaintOptions*, align 8
  %paint_info = alloca %struct._GimpPaintInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst28 = alloca %struct._GTypeInstance*, align 8
  %__t32 = alloca i64, align 8
  %__r35 = alloca i32, align 4
  %tmp50 = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %4 = bitcast %struct._GObject* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_paint_tool_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpPaintTool*
  store %struct._GimpPaintTool* %5, %struct._GimpPaintTool** %paint_tool, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %7 = bitcast %struct._GimpTool* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_tool_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpTool*
  %call6 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %8)
  %9 = bitcast %struct._GimpToolOptions* %call6 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_paint_options_get_type() #8
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpPaintOptions*
  store %struct._GimpPaintOptions* %10, %struct._GimpPaintOptions** %options, align 8
  %11 = load i8*, i8** @gimp_paint_tool_parent_class, align 8
  %12 = bitcast i8* %11 to %struct._GTypeClass*
  %call9 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %12, i64 80)
  %13 = bitcast %struct._GTypeClass* %call9 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %13, i32 0, i32 9
  %14 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %14, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load i8*, i8** @gimp_paint_tool_parent_class, align 8
  %16 = bitcast i8* %15 to %struct._GTypeClass*
  %call10 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %16, i64 80)
  %17 = bitcast %struct._GTypeClass* %call10 to %struct._GObjectClass*
  %constructed11 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %17, i32 0, i32 9
  %18 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed11, align 8
  %19 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %18(%struct._GObject* %19)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %20 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %tool_info = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %20, i32 0, i32 1
  %21 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %22 = bitcast %struct._GimpToolInfo* %21 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %22, %struct._GTypeInstance** %__inst, align 8
  %call12 = call i64 @gimp_tool_info_get_type() #8
  store i64 %call12, i64* %__t, align 8
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool13 = icmp ne %struct._GTypeInstance* %23, null
  br i1 %tobool13, label %if.else, label %if.then.14

if.then.14:                                       ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.21

if.else:                                          ; preds = %do.body
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool15 = icmp ne %struct._GTypeClass* %25, null
  br i1 %tobool15, label %land.lhs.true, label %if.else.18

land.lhs.true:                                    ; preds = %if.else
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class16 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %26, i32 0, i32 0
  %27 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class16, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %27, i32 0, i32 0
  %28 = load i64, i64* %g_type, align 8
  %29 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %28, %29
  br i1 %cmp, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.20

if.else.18:                                       ; preds = %land.lhs.true, %if.else
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %31 = load i64, i64* %__t, align 8
  %call19 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %30, i64 %31) #9
  store i32 %call19, i32* %__r, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.18, %if.then.17
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.14
  %32 = load i32, i32* %__r, align 4
  store i32 %32, i32* %tmp
  %33 = load i32, i32* %tmp
  %tobool22 = icmp ne i32 %33, 0
  br i1 %tobool22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.end.21
  br label %if.end.25

if.else.24:                                       ; preds = %if.end.21
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i32 156, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_paint_tool_constructed, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0)) #10
  unreachable

if.end.25:                                        ; preds = %if.then.23
  br label %do.end

do.end:                                           ; preds = %if.end.25
  br label %do.body.26

do.body.26:                                       ; preds = %do.end
  %34 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %tool_info29 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %34, i32 0, i32 1
  %35 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info29, align 8
  %paint_info30 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %35, i32 0, i32 13
  %36 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info30, align 8
  %37 = bitcast %struct._GimpPaintInfo* %36 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %37, %struct._GTypeInstance** %__inst28, align 8
  %call33 = call i64 @gimp_paint_info_get_type() #8
  store i64 %call33, i64* %__t32, align 8
  %38 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst28, align 8
  %tobool36 = icmp ne %struct._GTypeInstance* %38, null
  br i1 %tobool36, label %if.else.38, label %if.then.37

if.then.37:                                       ; preds = %do.body.26
  store i32 0, i32* %__r35, align 4
  br label %if.end.49

if.else.38:                                       ; preds = %do.body.26
  %39 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst28, align 8
  %g_class39 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %39, i32 0, i32 0
  %40 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class39, align 8
  %tobool40 = icmp ne %struct._GTypeClass* %40, null
  br i1 %tobool40, label %land.lhs.true.41, label %if.else.46

land.lhs.true.41:                                 ; preds = %if.else.38
  %41 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst28, align 8
  %g_class42 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %41, i32 0, i32 0
  %42 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class42, align 8
  %g_type43 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %42, i32 0, i32 0
  %43 = load i64, i64* %g_type43, align 8
  %44 = load i64, i64* %__t32, align 8
  %cmp44 = icmp eq i64 %43, %44
  br i1 %cmp44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %land.lhs.true.41
  store i32 1, i32* %__r35, align 4
  br label %if.end.48

if.else.46:                                       ; preds = %land.lhs.true.41, %if.else.38
  %45 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst28, align 8
  %46 = load i64, i64* %__t32, align 8
  %call47 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %45, i64 %46) #9
  store i32 %call47, i32* %__r35, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.46, %if.then.45
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.37
  %47 = load i32, i32* %__r35, align 4
  store i32 %47, i32* %tmp50
  %48 = load i32, i32* %tmp50
  %tobool51 = icmp ne i32 %48, 0
  br i1 %tobool51, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %if.end.49
  br label %if.end.54

if.else.53:                                       ; preds = %if.end.49
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i32 157, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_paint_tool_constructed, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i32 0, i32 0)) #10
  unreachable

if.end.54:                                        ; preds = %if.then.52
  br label %do.end.55

do.end.55:                                        ; preds = %if.end.54
  %49 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %tool_info56 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %49, i32 0, i32 1
  %50 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info56, align 8
  %paint_info57 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %50, i32 0, i32 13
  %51 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info57, align 8
  store %struct._GimpPaintInfo* %51, %struct._GimpPaintInfo** %paint_info, align 8
  br label %do.body.58

do.body.58:                                       ; preds = %do.end.55
  %52 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %paint_type = getelementptr inbounds %struct._GimpPaintInfo, %struct._GimpPaintInfo* %52, i32 0, i32 2
  %53 = load i64, i64* %paint_type, align 8
  %call59 = call i64 @gimp_paint_core_get_type() #8
  %call60 = call i32 @g_type_is_a(i64 %53, i64 %call59)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then.62, label %if.else.63

if.then.62:                                       ; preds = %do.body.58
  br label %if.end.64

if.else.63:                                       ; preds = %do.body.58
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i32 161, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_paint_tool_constructed, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i32 0, i32 0)) #10
  unreachable

if.end.64:                                        ; preds = %if.then.62
  br label %do.end.65

do.end.65:                                        ; preds = %if.end.64
  %54 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %paint_type66 = getelementptr inbounds %struct._GimpPaintInfo, %struct._GimpPaintInfo* %54, i32 0, i32 2
  %55 = load i64, i64* %paint_type66, align 8
  %56 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %blurb = getelementptr inbounds %struct._GimpPaintInfo, %struct._GimpPaintInfo* %56, i32 0, i32 4
  %57 = load i8*, i8** %blurb, align 8
  %call67 = call i8* (i64, i8*, ...) @g_object_new(i64 %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* %57, i8* null)
  %58 = bitcast i8* %call67 to %struct._GimpPaintCore*
  %59 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %core = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %59, i32 0, i32 6
  store %struct._GimpPaintCore* %58, %struct._GimpPaintCore** %core, align 8
  %60 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %61 = bitcast %struct._GimpPaintOptions* %60 to i8*
  %62 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %63 = bitcast %struct._GimpTool* %62 to i8*
  %call68 = call i64 @g_signal_connect_object(i8* %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPaintOptions*, %struct._GParamSpec*, %struct._GimpTool*)* @gimp_paint_tool_hard_notify to void ()*), i8* %63, i32 0)
  %64 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %65 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  call void @gimp_paint_tool_hard_notify(%struct._GimpPaintOptions* %64, %struct._GParamSpec* null, %struct._GimpTool* %65)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_paint_tool_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %paint_tool = alloca %struct._GimpPaintTool*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_paint_tool_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaintTool*
  store %struct._GimpPaintTool* %2, %struct._GimpPaintTool** %paint_tool, align 8
  %3 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %core = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %3, i32 0, i32 6
  %4 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %tobool = icmp ne %struct._GimpPaintCore* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %core2 = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %5, i32 0, i32 6
  %6 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core2, align 8
  %7 = bitcast %struct._GimpPaintCore* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %core3 = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %8, i32 0, i32 6
  store %struct._GimpPaintCore* null, %struct._GimpPaintCore** %core3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** @gimp_paint_tool_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 80)
  %11 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 6
  %12 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %12(%struct._GObject* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_paint_tool_control(%struct._GimpTool* %tool, i32 %action, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %action.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %paint_tool = alloca %struct._GimpPaintTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %action, i32* %action.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_paint_tool_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaintTool*
  store %struct._GimpPaintTool* %2, %struct._GimpPaintTool** %paint_tool, align 8
  %3 = load i32, i32* %action.addr, align 4
  switch i32 %3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry, %entry
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %4 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %core = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %4, i32 0, i32 6
  %5 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  call void @gimp_paint_core_cleanup(%struct._GimpPaintCore* %5)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.2, %sw.bb
  %6 = load i8*, i8** @gimp_paint_tool_parent_class, align 8
  %7 = bitcast i8* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_tool_get_type() #8
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpToolClass*
  %control = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %8, i32 0, i32 4
  %9 = load void (%struct._GimpTool*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)** %control, align 8
  %10 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %11 = load i32, i32* %action.addr, align 4
  %12 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %9(%struct._GimpTool* %10, i32 %11, %struct._GimpDisplay* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_paint_tool_button_press(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %press_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %press_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %draw_tool = alloca %struct._GimpDrawTool*, align 8
  %paint_tool = alloca %struct._GimpPaintTool*, align 8
  %paint_options = alloca %struct._GimpPaintOptions*, align 8
  %core = alloca %struct._GimpPaintCore*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %curr_coords = alloca %struct._GimpCoords, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  %constrain = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %press_type, i32* %press_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_draw_tool_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawTool*
  store %struct._GimpDrawTool* %2, %struct._GimpDrawTool** %draw_tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_paint_tool_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpPaintTool*
  store %struct._GimpPaintTool* %5, %struct._GimpPaintTool** %paint_tool, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %7 = bitcast %struct._GimpTool* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_tool_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpTool*
  %call6 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %8)
  %9 = bitcast %struct._GimpToolOptions* %call6 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_paint_options_get_type() #8
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpPaintOptions*
  store %struct._GimpPaintOptions* %10, %struct._GimpPaintOptions** %paint_options, align 8
  %11 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %core9 = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %11, i32 0, i32 6
  %12 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core9, align 8
  store %struct._GimpPaintCore* %12, %struct._GimpPaintCore** %core, align 8
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call10 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %13)
  store %struct._GimpDisplayShell* %call10, %struct._GimpDisplayShell** %shell, align 8
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call11 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %14)
  store %struct._GimpImage* %call11, %struct._GimpImage** %image, align 8
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call12 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %15)
  store %struct._GimpDrawable* %call12, %struct._GimpDrawable** %drawable, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %16 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %17 = bitcast %struct._GimpTool* %16 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_color_tool_get_type() #8
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call13)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpColorTool*
  %call15 = call i32 @gimp_color_tool_is_enabled(%struct._GimpColorTool* %18)
  %tobool = icmp ne i32 %call15, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %19 = load i8*, i8** @gimp_paint_tool_parent_class, align 8
  %20 = bitcast i8* %19 to %struct._GTypeClass*
  %call16 = call i64 @gimp_tool_get_type() #8
  %call17 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %20, i64 %call16)
  %21 = bitcast %struct._GTypeClass* %call17 to %struct._GimpToolClass*
  %button_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %21, i32 0, i32 5
  %22 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_press, align 8
  %23 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %24 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %25 = load i32, i32* %time.addr, align 4
  %26 = load i32, i32* %state.addr, align 4
  %27 = load i32, i32* %press_type.addr, align 4
  %28 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %22(%struct._GimpTool* %23, %struct._GimpCoords* %24, i32 %25, i32 %26, i32 %27, %struct._GimpDisplay* %28)
  br label %return

if.end:                                           ; preds = %entry
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %30 = bitcast %struct._GimpDrawable* %29 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_viewable_get_type() #8
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call18)
  %31 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpViewable*
  %call20 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %31)
  %tobool21 = icmp ne %struct._GimpContainer* %call20, null
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end
  %32 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %33 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call23 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0)) #7
  call void @gimp_tool_message_literal(%struct._GimpTool* %32, %struct._GimpDisplay* %33, i8* %call23)
  br label %return

if.end.24:                                        ; preds = %if.end
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %35 = bitcast %struct._GimpDrawable* %34 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_item_get_type() #8
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call25)
  %36 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpItem*
  %call27 = call i32 @gimp_item_is_content_locked(%struct._GimpItem* %36)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.end.24
  %37 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %38 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i32 0, i32 0)) #7
  call void @gimp_tool_message_literal(%struct._GimpTool* %37, %struct._GimpDisplay* %38, i8* %call30)
  br label %return

if.end.31:                                        ; preds = %if.end.24
  %39 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %40 = bitcast %struct._GimpCoords* %curr_coords to i8*
  %41 = bitcast %struct._GimpCoords* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 64, i32 8, i1 false)
  %42 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %43 = bitcast %struct._GimpDrawable* %42 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_item_get_type() #8
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call32)
  %44 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %44, i32* %off_x, i32* %off_y)
  %45 = load i32, i32* %off_x, align 4
  %conv = sitofp i32 %45 to double
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %curr_coords, i32 0, i32 0
  %46 = load double, double* %x, align 8
  %sub = fsub double %46, %conv
  store double %sub, double* %x, align 8
  %47 = load i32, i32* %off_y, align 4
  %conv34 = sitofp i32 %47 to double
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %curr_coords, i32 0, i32 1
  %48 = load double, double* %y, align 8
  %sub35 = fsub double %48, %conv34
  store double %sub35, double* %y, align 8
  %49 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %call36 = call i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool* %49)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.31
  %50 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_stop(%struct._GimpDrawTool* %50)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.end.31
  %51 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display40 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %51, i32 0, i32 4
  %52 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display40, align 8
  %tobool41 = icmp ne %struct._GimpDisplay* %52, null
  br i1 %tobool41, label %land.lhs.true, label %if.end.51

land.lhs.true:                                    ; preds = %if.end.39
  %53 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display42 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %53, i32 0, i32 4
  %54 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display42, align 8
  %55 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %cmp = icmp ne %struct._GimpDisplay* %54, %55
  br i1 %cmp, label %land.lhs.true.44, label %if.end.51

land.lhs.true.44:                                 ; preds = %land.lhs.true
  %56 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display45 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %56, i32 0, i32 4
  %57 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display45, align 8
  %call46 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %57)
  %58 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp47 = icmp eq %struct._GimpImage* %call46, %58
  br i1 %cmp47, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %land.lhs.true.44
  %59 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %60 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display50 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %60, i32 0, i32 4
  store %struct._GimpDisplay* %59, %struct._GimpDisplay** %display50, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %land.lhs.true.44, %land.lhs.true, %if.end.39
  %61 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %62 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %63 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options, align 8
  %call52 = call i32 @gimp_paint_core_start(%struct._GimpPaintCore* %61, %struct._GimpDrawable* %62, %struct._GimpPaintOptions* %63, %struct._GimpCoords* %curr_coords, %struct._GError** %error)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %if.end.51
  %64 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %65 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %66 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %66, i32 0, i32 2
  %67 = load i8*, i8** %message, align 8
  call void @gimp_tool_message_literal(%struct._GimpTool* %64, %struct._GimpDisplay* %65, i8* %67)
  call void @g_clear_error(%struct._GError** %error)
  br label %return

if.end.55:                                        ; preds = %if.end.51
  %68 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %69 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display56 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %69, i32 0, i32 4
  %70 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display56, align 8
  %cmp57 = icmp ne %struct._GimpDisplay* %68, %70
  br i1 %cmp57, label %if.then.60, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.55
  %71 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %draw_line = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %71, i32 0, i32 2
  %72 = load i32, i32* %draw_line, align 4
  %tobool59 = icmp ne i32 %72, 0
  br i1 %tobool59, label %if.else, label %if.then.60

if.then.60:                                       ; preds = %lor.lhs.false, %if.end.55
  %73 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %74 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display61 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %74, i32 0, i32 4
  %75 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display61, align 8
  %cmp62 = icmp ne %struct._GimpDisplay* %73, %75
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.then.60
  %76 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %start_coords = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %76, i32 0, i32 3
  %77 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %cur_coords = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %77, i32 0, i32 4
  %78 = bitcast %struct._GimpCoords* %start_coords to i8*
  %79 = bitcast %struct._GimpCoords* %cur_coords to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* %79, i64 64, i32 8, i1 false)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %if.then.60
  %80 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %last_coords = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %80, i32 0, i32 5
  %81 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %cur_coords66 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %81, i32 0, i32 4
  %82 = bitcast %struct._GimpCoords* %last_coords to i8*
  %83 = bitcast %struct._GimpCoords* %cur_coords66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %82, i8* %83, i64 64, i32 8, i1 false)
  %84 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %distance = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %84, i32 0, i32 7
  store double 0.000000e+00, double* %distance, align 8
  %85 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %pixel_dist = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %85, i32 0, i32 8
  store double 0.000000e+00, double* %pixel_dist, align 8
  br label %if.end.74

if.else:                                          ; preds = %lor.lhs.false
  %86 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %draw_line67 = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %86, i32 0, i32 2
  %87 = load i32, i32* %draw_line67, align 4
  %tobool68 = icmp ne i32 %87, 0
  br i1 %tobool68, label %if.then.69, label %if.end.73

if.then.69:                                       ; preds = %if.else
  %88 = load i32, i32* %state.addr, align 4
  %call70 = call i32 @gimp_get_constrain_behavior_mask()
  %and = and i32 %88, %call70
  %cmp71 = icmp ne i32 %and, 0
  %conv72 = zext i1 %cmp71 to i32
  store i32 %conv72, i32* %constrain, align 4
  %89 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %90 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options, align 8
  %91 = load i32, i32* %constrain, align 4
  call void @gimp_paint_core_round_line(%struct._GimpPaintCore* %89, %struct._GimpPaintOptions* %90, i32 %91)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.69, %if.else
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.end.65
  %92 = load i8*, i8** @gimp_paint_tool_parent_class, align 8
  %93 = bitcast i8* %92 to %struct._GTypeClass*
  %call75 = call i64 @gimp_tool_get_type() #8
  %call76 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %93, i64 %call75)
  %94 = bitcast %struct._GTypeClass* %call76 to %struct._GimpToolClass*
  %button_press77 = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %94, i32 0, i32 5
  %95 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_press77, align 8
  %96 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %97 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %98 = load i32, i32* %time.addr, align 4
  %99 = load i32, i32* %state.addr, align 4
  %100 = load i32, i32* %press_type.addr, align 4
  %101 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %95(%struct._GimpTool* %96, %struct._GimpCoords* %97, i32 %98, i32 %99, i32 %100, %struct._GimpDisplay* %101)
  %102 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_selection_pause(%struct._GimpDisplayShell* %102)
  %103 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %104 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %105 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options, align 8
  %106 = load i32, i32* %time.addr, align 4
  call void @gimp_paint_core_paint(%struct._GimpPaintCore* %103, %struct._GimpDrawable* %104, %struct._GimpPaintOptions* %105, i32 0, i32 %106)
  %107 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %draw_line78 = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %107, i32 0, i32 2
  %108 = load i32, i32* %draw_line78, align 4
  %tobool79 = icmp ne i32 %108, 0
  br i1 %tobool79, label %if.then.80, label %if.else.82

if.then.80:                                       ; preds = %if.end.74
  %109 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %110 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %111 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options, align 8
  %112 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %cur_coords81 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %112, i32 0, i32 4
  %113 = load i32, i32* %time.addr, align 4
  call void @gimp_paint_core_interpolate(%struct._GimpPaintCore* %109, %struct._GimpDrawable* %110, %struct._GimpPaintOptions* %111, %struct._GimpCoords* %cur_coords81, i32 %113)
  br label %if.end.83

if.else.82:                                       ; preds = %if.end.74
  %114 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %115 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %116 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options, align 8
  %117 = load i32, i32* %time.addr, align 4
  call void @gimp_paint_core_paint(%struct._GimpPaintCore* %114, %struct._GimpDrawable* %115, %struct._GimpPaintOptions* %116, i32 1, i32 %117)
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.82, %if.then.80
  %118 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call84 = call %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage* %118)
  call void @gimp_projection_flush_now(%struct._GimpProjection* %call84)
  %119 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_display_flush_now(%struct._GimpDisplay* %119)
  %120 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %121 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_draw_tool_start(%struct._GimpDrawTool* %120, %struct._GimpDisplay* %121)
  br label %return

return:                                           ; preds = %if.end.83, %if.then.54, %if.then.29, %if.then.22, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_paint_tool_button_release(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %release_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %release_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %paint_tool = alloca %struct._GimpPaintTool*, align 8
  %paint_options = alloca %struct._GimpPaintOptions*, align 8
  %core = alloca %struct._GimpPaintCore*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %release_type, i32* %release_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_paint_tool_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaintTool*
  store %struct._GimpPaintTool* %2, %struct._GimpPaintTool** %paint_tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_paint_options_get_type() #8
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpPaintOptions*
  store %struct._GimpPaintOptions* %7, %struct._GimpPaintOptions** %paint_options, align 8
  %8 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %core7 = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %8, i32 0, i32 6
  %9 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core7, align 8
  store %struct._GimpPaintCore* %9, %struct._GimpPaintCore** %core, align 8
  %10 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call8 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %10)
  store %struct._GimpDisplayShell* %call8, %struct._GimpDisplayShell** %shell, align 8
  %11 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call9 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %11)
  store %struct._GimpImage* %call9, %struct._GimpImage** %image, align 8
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call10 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %12)
  store %struct._GimpDrawable* %call10, %struct._GimpDrawable** %drawable, align 8
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %14 = bitcast %struct._GimpTool* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_color_tool_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpColorTool*
  %call13 = call i32 @gimp_color_tool_is_enabled(%struct._GimpColorTool* %15)
  %tobool = icmp ne i32 %call13, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load i8*, i8** @gimp_paint_tool_parent_class, align 8
  %17 = bitcast i8* %16 to %struct._GTypeClass*
  %call14 = call i64 @gimp_tool_get_type() #8
  %call15 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %17, i64 %call14)
  %18 = bitcast %struct._GTypeClass* %call15 to %struct._GimpToolClass*
  %button_release = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %18, i32 0, i32 6
  %19 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_release, align 8
  %20 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %21 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %22 = load i32, i32* %time.addr, align 4
  %23 = load i32, i32* %state.addr, align 4
  %24 = load i32, i32* %release_type.addr, align 4
  %25 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %19(%struct._GimpTool* %20, %struct._GimpCoords* %21, i32 %22, i32 %23, i32 %24, %struct._GimpDisplay* %25)
  br label %return

if.end:                                           ; preds = %entry
  %26 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %27 = bitcast %struct._GimpTool* %26 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_draw_tool_get_type() #8
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call16)
  %28 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %28)
  %29 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %31 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options, align 8
  %32 = load i32, i32* %time.addr, align 4
  call void @gimp_paint_core_paint(%struct._GimpPaintCore* %29, %struct._GimpDrawable* %30, %struct._GimpPaintOptions* %31, i32 2, i32 %32)
  %33 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_selection_resume(%struct._GimpDisplayShell* %33)
  %34 = load i8*, i8** @gimp_paint_tool_parent_class, align 8
  %35 = bitcast i8* %34 to %struct._GTypeClass*
  %call18 = call i64 @gimp_tool_get_type() #8
  %call19 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %35, i64 %call18)
  %36 = bitcast %struct._GTypeClass* %call19 to %struct._GimpToolClass*
  %button_release20 = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %36, i32 0, i32 6
  %37 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_release20, align 8
  %38 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %39 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %40 = load i32, i32* %time.addr, align 4
  %41 = load i32, i32* %state.addr, align 4
  %42 = load i32, i32* %release_type.addr, align 4
  %43 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %37(%struct._GimpTool* %38, %struct._GimpCoords* %39, i32 %40, i32 %41, i32 %42, %struct._GimpDisplay* %43)
  %44 = load i32, i32* %release_type.addr, align 4
  %cmp = icmp eq i32 %44, 1
  br i1 %cmp, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.end
  %45 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %46 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_paint_core_cancel(%struct._GimpPaintCore* %45, %struct._GimpDrawable* %46)
  br label %if.end.22

if.else:                                          ; preds = %if.end
  %47 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %48 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_paint_core_finish(%struct._GimpPaintCore* %47, %struct._GimpDrawable* %48, i32 1)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.21
  %49 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %49)
  %50 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %51 = bitcast %struct._GimpTool* %50 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_draw_tool_get_type() #8
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call23)
  %52 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %52)
  br label %return

return:                                           ; preds = %if.end.22, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_paint_tool_motion(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %paint_tool = alloca %struct._GimpPaintTool*, align 8
  %paint_options = alloca %struct._GimpPaintOptions*, align 8
  %core = alloca %struct._GimpPaintCore*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %curr_coords = alloca %struct._GimpCoords, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_paint_tool_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaintTool*
  store %struct._GimpPaintTool* %2, %struct._GimpPaintTool** %paint_tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_paint_options_get_type() #8
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpPaintOptions*
  store %struct._GimpPaintOptions* %7, %struct._GimpPaintOptions** %paint_options, align 8
  %8 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %core7 = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %8, i32 0, i32 6
  %9 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core7, align 8
  store %struct._GimpPaintCore* %9, %struct._GimpPaintCore** %core, align 8
  %10 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call8 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %10)
  store %struct._GimpImage* %call8, %struct._GimpImage** %image, align 8
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call9 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %11)
  store %struct._GimpDrawable* %call9, %struct._GimpDrawable** %drawable, align 8
  %12 = load i8*, i8** @gimp_paint_tool_parent_class, align 8
  %13 = bitcast i8* %12 to %struct._GTypeClass*
  %call10 = call i64 @gimp_tool_get_type() #8
  %call11 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %13, i64 %call10)
  %14 = bitcast %struct._GTypeClass* %call11 to %struct._GimpToolClass*
  %motion = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %14, i32 0, i32 7
  %15 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %motion, align 8
  %16 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %17 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %18 = load i32, i32* %time.addr, align 4
  %19 = load i32, i32* %state.addr, align 4
  %20 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %15(%struct._GimpTool* %16, %struct._GimpCoords* %17, i32 %18, i32 %19, %struct._GimpDisplay* %20)
  %21 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %22 = bitcast %struct._GimpTool* %21 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_color_tool_get_type() #8
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call12)
  %23 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpColorTool*
  %call14 = call i32 @gimp_color_tool_is_enabled(%struct._GimpColorTool* %23)
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %24 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %25 = bitcast %struct._GimpCoords* %curr_coords to i8*
  %26 = bitcast %struct._GimpCoords* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 64, i32 8, i1 false)
  %27 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %28 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options, align 8
  call void @gimp_paint_core_smooth_coords(%struct._GimpPaintCore* %27, %struct._GimpPaintOptions* %28, %struct._GimpCoords* %curr_coords)
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %30 = bitcast %struct._GimpDrawable* %29 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_item_get_type() #8
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call15)
  %31 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %31, i32* %off_x, i32* %off_y)
  %32 = load i32, i32* %off_x, align 4
  %conv = sitofp i32 %32 to double
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %curr_coords, i32 0, i32 0
  %33 = load double, double* %x, align 8
  %sub = fsub double %33, %conv
  store double %sub, double* %x, align 8
  %34 = load i32, i32* %off_y, align 4
  %conv17 = sitofp i32 %34 to double
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %curr_coords, i32 0, i32 1
  %35 = load double, double* %y, align 8
  %sub18 = fsub double %35, %conv17
  store double %sub18, double* %y, align 8
  %36 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %draw_line = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %36, i32 0, i32 2
  %37 = load i32, i32* %draw_line, align 4
  %tobool19 = icmp ne i32 %37, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end
  %38 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  call void @gimp_paint_core_set_current_coords(%struct._GimpPaintCore* %38, %struct._GimpCoords* %curr_coords)
  br label %return

if.end.21:                                        ; preds = %if.end
  %39 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %40 = bitcast %struct._GimpTool* %39 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_draw_tool_get_type() #8
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call22)
  %41 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %41)
  %42 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %43 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %44 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options, align 8
  %45 = load i32, i32* %time.addr, align 4
  call void @gimp_paint_core_interpolate(%struct._GimpPaintCore* %42, %struct._GimpDrawable* %43, %struct._GimpPaintOptions* %44, %struct._GimpCoords* %curr_coords, i32 %45)
  %46 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call24 = call %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage* %46)
  call void @gimp_projection_flush_now(%struct._GimpProjection* %call24)
  %47 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_display_flush_now(%struct._GimpDisplay* %47)
  %48 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %49 = bitcast %struct._GimpTool* %48 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_draw_tool_get_type() #8
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call25)
  %50 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %50)
  br label %return

return:                                           ; preds = %if.end.21, %if.then.20, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_paint_tool_modifier_key(%struct._GimpTool* %tool, i32 %key, i32 %press, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %key.addr = alloca i32, align 4
  %press.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %paint_tool = alloca %struct._GimpPaintTool*, align 8
  %draw_tool = alloca %struct._GimpDrawTool*, align 8
  %info = alloca %struct._GimpToolInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %press, i32* %press.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_paint_tool_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaintTool*
  store %struct._GimpPaintTool* %2, %struct._GimpPaintTool** %paint_tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_draw_tool_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDrawTool*
  store %struct._GimpDrawTool* %5, %struct._GimpDrawTool** %draw_tool, align 8
  %6 = load i32, i32* %key.addr, align 4
  %call4 = call i32 @gimp_get_constrain_behavior_mask()
  %cmp = icmp ne i32 %6, %call4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.48

if.end:                                           ; preds = %entry
  %7 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %pick_colors = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %7, i32 0, i32 1
  %8 = load i32, i32* %pick_colors, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.48

land.lhs.true:                                    ; preds = %if.end
  %9 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %draw_line = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %9, i32 0, i32 2
  %10 = load i32, i32* %draw_line, align 4
  %tobool5 = icmp ne i32 %10, 0
  br i1 %tobool5, label %if.end.48, label %if.then.6

if.then.6:                                        ; preds = %land.lhs.true
  %11 = load i32, i32* %press.addr, align 4
  %tobool7 = icmp ne i32 %11, 0
  br i1 %tobool7, label %if.then.8, label %if.else.38

if.then.8:                                        ; preds = %if.then.6
  %12 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %12, i32 0, i32 1
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call9 = call %struct._GimpToolInfo* @gimp_get_tool_info(%struct._Gimp* %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0))
  store %struct._GimpToolInfo* %call9, %struct._GimpToolInfo** %info, align 8
  %14 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %info, align 8
  %15 = bitcast %struct._GimpToolInfo* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst, align 8
  %call10 = call i64 @gimp_tool_info_get_type() #8
  store i64 %call10, i64* %__t, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool11 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool11, label %if.else, label %if.then.12

if.then.12:                                       ; preds = %if.then.8
  store i32 0, i32* %__r, align 4
  br label %if.end.21

if.else:                                          ; preds = %if.then.8
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool13 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool13, label %land.lhs.true.14, label %if.else.18

land.lhs.true.14:                                 ; preds = %if.else
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class15 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class15, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type, align 8
  %22 = load i64, i64* %__t, align 8
  %cmp16 = icmp eq i64 %21, %22
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %land.lhs.true.14
  store i32 1, i32* %__r, align 4
  br label %if.end.20

if.else.18:                                       ; preds = %land.lhs.true.14, %if.else
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %24 = load i64, i64* %__t, align 8
  %call19 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #9
  store i32 %call19, i32* %__r, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.18, %if.then.17
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.12
  %25 = load i32, i32* %__r, align 4
  store i32 %25, i32* %tmp
  %26 = load i32, i32* %tmp
  %tobool22 = icmp ne i32 %26, 0
  br i1 %tobool22, label %if.then.23, label %if.end.37

if.then.23:                                       ; preds = %if.end.21
  %27 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %call24 = call i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool* %27)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.23
  %28 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_stop(%struct._GimpDrawTool* %28)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.then.23
  %29 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %30 = bitcast %struct._GimpTool* %29 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_color_tool_get_type() #8
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call28)
  %31 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpColorTool*
  %32 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %info, align 8
  %tool_options = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %32, i32 0, i32 12
  %33 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  %34 = bitcast %struct._GimpToolOptions* %33 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_color_options_get_type() #8
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call30)
  %35 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpColorOptions*
  call void @gimp_color_tool_enable(%struct._GimpColorTool* %31, %struct._GimpColorOptions* %35)
  %36 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %37 = bitcast %struct._GimpTool* %36 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_color_tool_get_type() #8
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call32)
  %38 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpColorTool*
  %pick_mode = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %38, i32 0, i32 4
  %39 = load i32, i32* %pick_mode, align 4
  switch i32 %39, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.35
  ]

sw.bb:                                            ; preds = %if.end.27
  %40 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %41 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call34 = call i8* @gettext(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i32 0, i32 0)) #7
  call void (%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) @gimp_tool_push_status(%struct._GimpTool* %40, %struct._GimpDisplay* %41, i8* %call34)
  br label %sw.epilog

sw.bb.35:                                         ; preds = %if.end.27
  %42 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %43 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call36 = call i8* @gettext(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i32 0, i32 0)) #7
  call void (%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) @gimp_tool_push_status(%struct._GimpTool* %42, %struct._GimpDisplay* %43, i8* %call36)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.27
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.35, %sw.bb
  br label %if.end.37

if.end.37:                                        ; preds = %sw.epilog, %if.end.21
  br label %if.end.47

if.else.38:                                       ; preds = %if.then.6
  %44 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %45 = bitcast %struct._GimpTool* %44 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_color_tool_get_type() #8
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call39)
  %46 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpColorTool*
  %call41 = call i32 @gimp_color_tool_is_enabled(%struct._GimpColorTool* %46)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.43, label %if.end.46

if.then.43:                                       ; preds = %if.else.38
  %47 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %48 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_pop_status(%struct._GimpTool* %47, %struct._GimpDisplay* %48)
  %49 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %50 = bitcast %struct._GimpTool* %49 to %struct._GTypeInstance*
  %call44 = call i64 @gimp_color_tool_get_type() #8
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call44)
  %51 = bitcast %struct._GTypeInstance* %call45 to %struct._GimpColorTool*
  call void @gimp_color_tool_disable(%struct._GimpColorTool* %51)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.43, %if.else.38
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end.37
  br label %if.end.48

if.end.48:                                        ; preds = %if.then, %if.end.47, %land.lhs.true, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_paint_tool_cursor_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %modifier = alloca i32, align 4
  %toggle_modifier = alloca i32, align 4
  %old_modifier = alloca i32, align 4
  %old_toggle_modifier = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %0, i32 0, i32 3
  %1 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %cursor_modifier = getelementptr inbounds %struct._GimpToolControl, %struct._GimpToolControl* %1, i32 0, i32 22
  %2 = load i32, i32* %cursor_modifier, align 4
  store i32 %2, i32* %modifier, align 4
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control1 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 3
  %4 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control1, align 8
  %toggle_cursor_modifier = getelementptr inbounds %struct._GimpToolControl, %struct._GimpToolControl* %4, i32 0, i32 25
  %5 = load i32, i32* %toggle_cursor_modifier, align 4
  store i32 %5, i32* %toggle_modifier, align 4
  %6 = load i32, i32* %modifier, align 4
  store i32 %6, i32* %old_modifier, align 4
  %7 = load i32, i32* %toggle_modifier, align 4
  store i32 %7, i32* %old_toggle_modifier, align 4
  %8 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %9 = bitcast %struct._GimpTool* %8 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_tool_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call)
  %10 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpColorTool*
  %call3 = call i32 @gimp_color_tool_is_enabled(%struct._GimpColorTool* %10)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end.17, label %if.then

if.then:                                          ; preds = %entry
  %11 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call4 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %11)
  store %struct._GimpImage* %call4, %struct._GimpImage** %image, align 8
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call5 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %12)
  store %struct._GimpDrawable* %call5, %struct._GimpDrawable** %drawable, align 8
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_viewable_get_type() #8
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call6)
  %15 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpViewable*
  %call8 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %15)
  %tobool9 = icmp ne %struct._GimpContainer* %call8, null
  br i1 %tobool9, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %17 = bitcast %struct._GimpDrawable* %16 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_item_get_type() #8
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call10)
  %18 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpItem*
  %call12 = call i32 @gimp_item_is_content_locked(%struct._GimpItem* %18)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %lor.lhs.false, %if.then
  store i32 1, i32* %modifier, align 4
  store i32 1, i32* %toggle_modifier, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.14, %lor.lhs.false
  %19 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control15 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %19, i32 0, i32 3
  %20 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control15, align 8
  %21 = load i32, i32* %modifier, align 4
  call void @gimp_tool_control_set_cursor_modifier(%struct._GimpToolControl* %20, i32 %21)
  %22 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control16 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %22, i32 0, i32 3
  %23 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control16, align 8
  %24 = load i32, i32* %toggle_modifier, align 4
  call void @gimp_tool_control_set_toggle_cursor_modifier(%struct._GimpToolControl* %23, i32 %24)
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %entry
  %25 = load i8*, i8** @gimp_paint_tool_parent_class, align 8
  %26 = bitcast i8* %25 to %struct._GTypeClass*
  %call18 = call i64 @gimp_tool_get_type() #8
  %call19 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %26, i64 %call18)
  %27 = bitcast %struct._GTypeClass* %call19 to %struct._GimpToolClass*
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %27, i32 0, i32 13
  %28 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %29 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %30 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %31 = load i32, i32* %state.addr, align 4
  %32 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %28(%struct._GimpTool* %29, %struct._GimpCoords* %30, i32 %31, %struct._GimpDisplay* %32)
  %33 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control20 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %33, i32 0, i32 3
  %34 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control20, align 8
  %35 = load i32, i32* %old_modifier, align 4
  call void @gimp_tool_control_set_cursor_modifier(%struct._GimpToolControl* %34, i32 %35)
  %36 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control21 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %36, i32 0, i32 3
  %37 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control21, align 8
  %38 = load i32, i32* %old_toggle_modifier, align 4
  call void @gimp_tool_control_set_toggle_cursor_modifier(%struct._GimpToolControl* %37, i32 %38)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_paint_tool_oper_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, i32 %proximity, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %proximity.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %paint_tool = alloca %struct._GimpPaintTool*, align 8
  %draw_tool = alloca %struct._GimpDrawTool*, align 8
  %paint_options = alloca %struct._GimpPaintOptions*, align 8
  %core = alloca %struct._GimpPaintCore*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %constrain_mask = alloca i32, align 4
  %status_help = alloca i8*, align 8
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %dist = alloca double, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %format_str = alloca [64 x i8], align 16
  %status = alloca i8*, align 8
  %modifiers = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store i32 %proximity, i32* %proximity.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_paint_tool_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaintTool*
  store %struct._GimpPaintTool* %2, %struct._GimpPaintTool** %paint_tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_draw_tool_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDrawTool*
  store %struct._GimpDrawTool* %5, %struct._GimpDrawTool** %draw_tool, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %7 = bitcast %struct._GimpTool* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_tool_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpTool*
  %call6 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %8)
  %9 = bitcast %struct._GimpToolOptions* %call6 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_paint_options_get_type() #8
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpPaintOptions*
  store %struct._GimpPaintOptions* %10, %struct._GimpPaintOptions** %paint_options, align 8
  %11 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %core9 = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %11, i32 0, i32 6
  %12 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core9, align 8
  store %struct._GimpPaintCore* %12, %struct._GimpPaintCore** %core, align 8
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call10 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %13)
  store %struct._GimpDisplayShell* %call10, %struct._GimpDisplayShell** %shell, align 8
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call11 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %14)
  store %struct._GimpImage* %call11, %struct._GimpImage** %image, align 8
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call12 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %15)
  store %struct._GimpDrawable* %call12, %struct._GimpDrawable** %drawable, align 8
  %16 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %17 = bitcast %struct._GimpTool* %16 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_color_tool_get_type() #8
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call13)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpColorTool*
  %call15 = call i32 @gimp_color_tool_is_enabled(%struct._GimpColorTool* %18)
  %tobool = icmp ne i32 %call15, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %19 = load i8*, i8** @gimp_paint_tool_parent_class, align 8
  %20 = bitcast i8* %19 to %struct._GTypeClass*
  %call16 = call i64 @gimp_tool_get_type() #8
  %call17 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %20, i64 %call16)
  %21 = bitcast %struct._GTypeClass* %call17 to %struct._GimpToolClass*
  %oper_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %21, i32 0, i32 12
  %22 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %oper_update, align 8
  %23 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %24 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %25 = load i32, i32* %state.addr, align 4
  %26 = load i32, i32* %proximity.addr, align 4
  %27 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %22(%struct._GimpTool* %23, %struct._GimpCoords* %24, i32 %25, i32 %26, %struct._GimpDisplay* %27)
  br label %return

if.end:                                           ; preds = %entry
  %28 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %28)
  %29 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %call18 = call i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool* %29)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.end
  %30 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %display20 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %30, i32 0, i32 1
  %31 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display20, align 8
  %32 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %cmp = icmp ne %struct._GimpDisplay* %31, %32
  br i1 %cmp, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %land.lhs.true
  %33 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_stop(%struct._GimpDrawTool* %33)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %land.lhs.true, %if.end
  %34 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %35 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_pop_status(%struct._GimpTool* %34, %struct._GimpDisplay* %35)
  %36 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display23 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %36, i32 0, i32 4
  %37 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display23, align 8
  %tobool24 = icmp ne %struct._GimpDisplay* %37, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.end.34

land.lhs.true.25:                                 ; preds = %if.end.22
  %38 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display26 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %38, i32 0, i32 4
  %39 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display26, align 8
  %40 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %cmp27 = icmp ne %struct._GimpDisplay* %39, %40
  br i1 %cmp27, label %land.lhs.true.28, label %if.end.34

land.lhs.true.28:                                 ; preds = %land.lhs.true.25
  %41 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display29 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %41, i32 0, i32 4
  %42 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display29, align 8
  %call30 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %42)
  %43 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp31 = icmp eq %struct._GimpImage* %call30, %43
  br i1 %cmp31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %land.lhs.true.28
  %44 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %45 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display33 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %45, i32 0, i32 4
  store %struct._GimpDisplay* %44, %struct._GimpDisplay** %display33, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %land.lhs.true.28, %land.lhs.true.25, %if.end.22
  %46 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool35 = icmp ne %struct._GimpDrawable* %46, null
  br i1 %tobool35, label %land.lhs.true.36, label %if.else.112

land.lhs.true.36:                                 ; preds = %if.end.34
  %47 = load i32, i32* %proximity.addr, align 4
  %tobool37 = icmp ne i32 %47, 0
  br i1 %tobool37, label %if.then.38, label %if.else.112

if.then.38:                                       ; preds = %land.lhs.true.36
  %call39 = call i32 @gimp_get_constrain_behavior_mask()
  store i32 %call39, i32* %constrain_mask, align 4
  %48 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %49 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display40 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %49, i32 0, i32 4
  %50 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display40, align 8
  %cmp41 = icmp eq %struct._GimpDisplay* %48, %50
  br i1 %cmp41, label %land.lhs.true.42, label %if.else.89

land.lhs.true.42:                                 ; preds = %if.then.38
  %51 = load i32, i32* %state.addr, align 4
  %and = and i32 %51, 1
  %tobool43 = icmp ne i32 %and, 0
  br i1 %tobool43, label %if.then.44, label %if.else.89

if.then.44:                                       ; preds = %land.lhs.true.42
  %52 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %cur_coords = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %52, i32 0, i32 4
  %53 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %54 = bitcast %struct._GimpCoords* %cur_coords to i8*
  %55 = bitcast %struct._GimpCoords* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 64, i32 8, i1 false)
  %56 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %57 = bitcast %struct._GimpDrawable* %56 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_item_get_type() #8
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call45)
  %58 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %58, i32* %off_x, i32* %off_y)
  %59 = load i32, i32* %off_x, align 4
  %conv = sitofp i32 %59 to double
  %60 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %cur_coords47 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %60, i32 0, i32 4
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %cur_coords47, i32 0, i32 0
  %61 = load double, double* %x, align 8
  %sub = fsub double %61, %conv
  store double %sub, double* %x, align 8
  %62 = load i32, i32* %off_y, align 4
  %conv48 = sitofp i32 %62 to double
  %63 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %cur_coords49 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %63, i32 0, i32 4
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %cur_coords49, i32 0, i32 1
  %64 = load double, double* %y, align 8
  %sub50 = fsub double %64, %conv48
  store double %sub50, double* %y, align 8
  %65 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %66 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options, align 8
  %67 = load i32, i32* %state.addr, align 4
  %68 = load i32, i32* %constrain_mask, align 4
  %and51 = and i32 %67, %68
  %cmp52 = icmp ne i32 %and51, 0
  %conv53 = zext i1 %cmp52 to i32
  call void @gimp_paint_core_round_line(%struct._GimpPaintCore* %65, %struct._GimpPaintOptions* %66, i32 %conv53)
  %69 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %cur_coords54 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %69, i32 0, i32 4
  %x55 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %cur_coords54, i32 0, i32 0
  %70 = load double, double* %x55, align 8
  %71 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %last_coords = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %71, i32 0, i32 5
  %x56 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords, i32 0, i32 0
  %72 = load double, double* %x56, align 8
  %sub57 = fsub double %70, %72
  store double %sub57, double* %dx, align 8
  %73 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %cur_coords58 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %73, i32 0, i32 4
  %y59 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %cur_coords58, i32 0, i32 1
  %74 = load double, double* %y59, align 8
  %75 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %last_coords60 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %75, i32 0, i32 5
  %y61 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords60, i32 0, i32 1
  %76 = load double, double* %y61, align 8
  %sub62 = fsub double %74, %76
  store double %sub62, double* %dy, align 8
  %77 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %status_line = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %77, i32 0, i32 4
  %78 = load i8*, i8** %status_line, align 8
  %79 = load i32, i32* %constrain_mask, align 4
  %80 = load i32, i32* %state.addr, align 4
  %neg = xor i32 %80, -1
  %and63 = and i32 %79, %neg
  %call64 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i32 0, i32 0)) #7
  %call65 = call i8* @gimp_suggest_modifiers(i8* %78, i32 %and63, i8* null, i8* %call64, i8* null)
  store i8* %call65, i8** %status_help, align 8
  %81 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %unit = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %81, i32 0, i32 10
  %82 = load i32, i32* %unit, align 4
  %cmp66 = icmp eq i32 %82, 0
  br i1 %cmp66, label %if.then.68, label %if.else

if.then.68:                                       ; preds = %if.then.44
  %83 = load double, double* %dx, align 8
  %84 = load double, double* %dx, align 8
  %mul = fmul double %83, %84
  %85 = load double, double* %dy, align 8
  %86 = load double, double* %dy, align 8
  %mul69 = fmul double %85, %86
  %add = fadd double %mul, %mul69
  %call70 = call double @sqrt(double %add) #7
  store double %call70, double* %dist, align 8
  %87 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %88 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %89 = load double, double* %dist, align 8
  %call71 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0)) #7
  %90 = load i8*, i8** %status_help, align 8
  call void (%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) @gimp_tool_push_status(%struct._GimpTool* %87, %struct._GimpDisplay* %88, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), double %89, i8* %call71, i8* %90)
  br label %if.end.88

if.else:                                          ; preds = %if.then.44
  %91 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %91, double* %xres, double* %yres)
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %format_str, i32 0, i32 0
  %92 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %unit72 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %92, i32 0, i32 10
  %93 = load i32, i32* %unit72, align 4
  %call73 = call i32 @gimp_unit_get_digits(i32 %93)
  %94 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %unit74 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %94, i32 0, i32 10
  %95 = load i32, i32* %unit74, align 4
  %call75 = call i8* @gimp_unit_get_symbol(i32 %95)
  %call76 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0), i32 %call73, i8* %call75)
  %96 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %unit77 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %96, i32 0, i32 10
  %97 = load i32, i32* %unit77, align 4
  %call78 = call double @gimp_unit_get_factor(i32 %97)
  %98 = load double, double* %dx, align 8
  %99 = load double, double* %xres, align 8
  %div = fdiv double %98, %99
  %100 = load double, double* %dx, align 8
  %101 = load double, double* %xres, align 8
  %div79 = fdiv double %100, %101
  %mul80 = fmul double %div, %div79
  %102 = load double, double* %dy, align 8
  %103 = load double, double* %yres, align 8
  %div81 = fdiv double %102, %103
  %104 = load double, double* %dy, align 8
  %105 = load double, double* %yres, align 8
  %div82 = fdiv double %104, %105
  %mul83 = fmul double %div81, %div82
  %add84 = fadd double %mul80, %mul83
  %call85 = call double @sqrt(double %add84) #7
  %mul86 = fmul double %call78, %call85
  store double %mul86, double* %dist, align 8
  %106 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %107 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %arraydecay87 = getelementptr inbounds [64 x i8], [64 x i8]* %format_str, i32 0, i32 0
  %108 = load double, double* %dist, align 8
  %109 = load i8*, i8** %status_help, align 8
  call void (%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) @gimp_tool_push_status(%struct._GimpTool* %106, %struct._GimpDisplay* %107, i8* %arraydecay87, double %108, i8* %109)
  br label %if.end.88

if.end.88:                                        ; preds = %if.else, %if.then.68
  %110 = load i8*, i8** %status_help, align 8
  call void @g_free(i8* %110)
  %111 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %draw_line = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %111, i32 0, i32 2
  store i32 1, i32* %draw_line, align 4
  br label %if.end.107

if.else.89:                                       ; preds = %land.lhs.true.42, %if.then.38
  store i32 0, i32* %modifiers, align 4
  %112 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %status_ctrl = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %112, i32 0, i32 5
  %113 = load i8*, i8** %status_ctrl, align 8
  %cmp90 = icmp ne i8* %113, null
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.else.89
  %114 = load i32, i32* %constrain_mask, align 4
  %115 = load i32, i32* %modifiers, align 4
  %or = or i32 %115, %114
  store i32 %or, i32* %modifiers, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.92, %if.else.89
  %116 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %117 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display94 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %117, i32 0, i32 4
  %118 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display94, align 8
  %cmp95 = icmp eq %struct._GimpDisplay* %116, %118
  br i1 %cmp95, label %if.then.97, label %if.end.99

if.then.97:                                       ; preds = %if.end.93
  %119 = load i32, i32* %modifiers, align 4
  %or98 = or i32 %119, 1
  store i32 %or98, i32* %modifiers, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.97, %if.end.93
  %120 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %status100 = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %120, i32 0, i32 3
  %121 = load i8*, i8** %status100, align 8
  %122 = load i32, i32* %modifiers, align 4
  %123 = load i32, i32* %state.addr, align 4
  %neg101 = xor i32 %123, -1
  %and102 = and i32 %122, %neg101
  %call103 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0)) #7
  %124 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %status_ctrl104 = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %124, i32 0, i32 5
  %125 = load i8*, i8** %status_ctrl104, align 8
  %call105 = call i8* @gimp_suggest_modifiers(i8* %121, i32 %and102, i8* %call103, i8* %125, i8* null)
  store i8* %call105, i8** %status, align 8
  %126 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %127 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %128 = load i8*, i8** %status, align 8
  call void (%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) @gimp_tool_push_status(%struct._GimpTool* %126, %struct._GimpDisplay* %127, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i8* %128)
  %129 = load i8*, i8** %status, align 8
  call void @g_free(i8* %129)
  %130 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %draw_line106 = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %130, i32 0, i32 2
  store i32 0, i32* %draw_line106, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.99, %if.end.88
  %131 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %call108 = call i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool* %131)
  %tobool109 = icmp ne i32 %call108, 0
  br i1 %tobool109, label %if.end.111, label %if.then.110

if.then.110:                                      ; preds = %if.end.107
  %132 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %133 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_draw_tool_start(%struct._GimpDrawTool* %132, %struct._GimpDisplay* %133)
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.110, %if.end.107
  br label %if.end.117

if.else.112:                                      ; preds = %land.lhs.true.36, %if.end.34
  %134 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %call113 = call i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool* %134)
  %tobool114 = icmp ne i32 %call113, 0
  br i1 %tobool114, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %if.else.112
  %135 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_stop(%struct._GimpDrawTool* %135)
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.115, %if.else.112
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.end.111
  %136 = load i8*, i8** @gimp_paint_tool_parent_class, align 8
  %137 = bitcast i8* %136 to %struct._GTypeClass*
  %call118 = call i64 @gimp_tool_get_type() #8
  %call119 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %137, i64 %call118)
  %138 = bitcast %struct._GTypeClass* %call119 to %struct._GimpToolClass*
  %oper_update120 = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %138, i32 0, i32 12
  %139 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %oper_update120, align 8
  %140 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %141 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %142 = load i32, i32* %state.addr, align 4
  %143 = load i32, i32* %proximity.addr, align 4
  %144 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %139(%struct._GimpTool* %140, %struct._GimpCoords* %141, i32 %142, i32 %143, %struct._GimpDisplay* %144)
  %145 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %145)
  br label %return

return:                                           ; preds = %if.end.117, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_paint_tool_draw(%struct._GimpDrawTool* %draw_tool) #3 {
entry:
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %paint_tool = alloca %struct._GimpPaintTool*, align 8
  %core = alloca %struct._GimpPaintCore*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_tool_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorTool*
  %call2 = call i32 @gimp_color_tool_is_enabled(%struct._GimpColorTool* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end.45, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %4 = bitcast %struct._GimpDrawTool* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_paint_tool_get_type() #8
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpPaintTool*
  store %struct._GimpPaintTool* %5, %struct._GimpPaintTool** %paint_tool, align 8
  %6 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %draw_line = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %6, i32 0, i32 2
  %7 = load i32, i32* %draw_line, align 4
  %tobool5 = icmp ne i32 %7, 0
  br i1 %tobool5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %8 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %9 = bitcast %struct._GimpDrawTool* %8 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_tool_get_type() #8
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call6)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpTool*
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %10, i32 0, i32 3
  %11 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call8 = call i32 @gimp_tool_control_is_active(%struct._GimpToolControl* %11)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end, label %if.then.10

if.then.10:                                       ; preds = %land.lhs.true
  %12 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %core11 = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %12, i32 0, i32 6
  %13 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core11, align 8
  store %struct._GimpPaintCore* %13, %struct._GimpPaintCore** %core, align 8
  %14 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %display = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %14, i32 0, i32 1
  %15 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call12 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %15)
  store %struct._GimpImage* %call12, %struct._GimpImage** %image, align 8
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call13 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %16)
  store %struct._GimpDrawable* %call13, %struct._GimpDrawable** %drawable, align 8
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %18 = bitcast %struct._GimpDrawable* %17 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_item_get_type() #8
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call14)
  %19 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %19, i32* %off_x, i32* %off_y)
  %20 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %21 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %last_coords = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %21, i32 0, i32 5
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords, i32 0, i32 0
  %22 = load double, double* %x, align 8
  %23 = load i32, i32* %off_x, align 4
  %conv = sitofp i32 %23 to double
  %add = fadd double %22, %conv
  %24 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %last_coords16 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %24, i32 0, i32 5
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords16, i32 0, i32 1
  %25 = load double, double* %y, align 8
  %26 = load i32, i32* %off_y, align 4
  %conv17 = sitofp i32 %26 to double
  %add18 = fadd double %25, %conv17
  %27 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %cur_coords = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %27, i32 0, i32 4
  %x19 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %cur_coords, i32 0, i32 0
  %28 = load double, double* %x19, align 8
  %29 = load i32, i32* %off_x, align 4
  %conv20 = sitofp i32 %29 to double
  %add21 = fadd double %28, %conv20
  %30 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %cur_coords22 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %30, i32 0, i32 4
  %y23 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %cur_coords22, i32 0, i32 1
  %31 = load double, double* %y23, align 8
  %32 = load i32, i32* %off_y, align 4
  %conv24 = sitofp i32 %32 to double
  %add25 = fadd double %31, %conv24
  %call26 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_line(%struct._GimpDrawTool* %20, double %add, double %add18, double %add21, double %add25)
  %33 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %34 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %last_coords27 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %34, i32 0, i32 5
  %x28 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords27, i32 0, i32 0
  %35 = load double, double* %x28, align 8
  %36 = load i32, i32* %off_x, align 4
  %conv29 = sitofp i32 %36 to double
  %add30 = fadd double %35, %conv29
  %37 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %last_coords31 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %37, i32 0, i32 5
  %y32 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords31, i32 0, i32 1
  %38 = load double, double* %y32, align 8
  %39 = load i32, i32* %off_y, align 4
  %conv33 = sitofp i32 %39 to double
  %add34 = fadd double %38, %conv33
  %call35 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %33, i32 4, double %add30, double %add34, i32 15, i32 15, i32 0)
  %40 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %41 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %cur_coords36 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %41, i32 0, i32 4
  %x37 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %cur_coords36, i32 0, i32 0
  %42 = load double, double* %x37, align 8
  %43 = load i32, i32* %off_x, align 4
  %conv38 = sitofp i32 %43 to double
  %add39 = fadd double %42, %conv38
  %44 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %cur_coords40 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %44, i32 0, i32 4
  %y41 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %cur_coords40, i32 0, i32 1
  %45 = load double, double* %y41, align 8
  %46 = load i32, i32* %off_y, align 4
  %conv42 = sitofp i32 %46 to double
  %add43 = fadd double %45, %conv42
  %call44 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %40, i32 4, double %add39, double %add43, i32 15, i32 15, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.10, %land.lhs.true, %if.then
  br label %if.end.45

if.end.45:                                        ; preds = %if.end, %entry
  %47 = load i8*, i8** @gimp_paint_tool_parent_class, align 8
  %48 = bitcast i8* %47 to %struct._GTypeClass*
  %call46 = call i64 @gimp_draw_tool_get_type() #8
  %call47 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %48, i64 %call46)
  %49 = bitcast %struct._GTypeClass* %call47 to %struct._GimpDrawToolClass*
  %draw = getelementptr inbounds %struct._GimpDrawToolClass, %struct._GimpDrawToolClass* %49, i32 0, i32 1
  %50 = load void (%struct._GimpDrawTool*)*, void (%struct._GimpDrawTool*)** %draw, align 8
  %51 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  call void %50(%struct._GimpDrawTool* %51)
  ret void
}

declare %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_options_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_info_get_type() #2

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_info_get_type() #2

declare i32 @g_type_is_a(i64, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_core_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_paint_tool_hard_notify(%struct._GimpPaintOptions* %options, %struct._GParamSpec* %pspec, %struct._GimpTool* %tool) #3 {
entry:
  %options.addr = alloca %struct._GimpPaintOptions*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %tool.addr = alloca %struct._GimpTool*, align 8
  store %struct._GimpPaintOptions* %options, %struct._GimpPaintOptions** %options.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %0, i32 0, i32 3
  %1 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %2 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options.addr, align 8
  %hard = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %2, i32 0, i32 7
  %3 = load i32, i32* %hard, align 4
  %tobool = icmp ne i32 %3, 0
  %cond = select i1 %tobool, i32 0, i32 2
  call void @gimp_tool_control_set_precision(%struct._GimpToolControl* %1, i32 %cond)
  ret void
}

declare void @gimp_tool_control_set_precision(%struct._GimpToolControl*, i32) #1

declare void @g_object_unref(i8*) #1

declare void @gimp_paint_core_cleanup(%struct._GimpPaintCore*) #1

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #1

declare i32 @gimp_color_tool_is_enabled(%struct._GimpColorTool*) #1

declare %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare void @gimp_tool_message_literal(%struct._GimpTool*, %struct._GimpDisplay*, i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #6

declare i32 @gimp_item_is_content_locked(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #1

declare i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool*) #1

declare void @gimp_draw_tool_stop(%struct._GimpDrawTool*) #1

declare i32 @gimp_paint_core_start(%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, %struct._GError**) #1

declare void @g_clear_error(%struct._GError**) #1

declare i32 @gimp_get_constrain_behavior_mask() #1

declare void @gimp_paint_core_round_line(%struct._GimpPaintCore*, %struct._GimpPaintOptions*, i32) #1

declare void @gimp_display_shell_selection_pause(%struct._GimpDisplayShell*) #1

declare void @gimp_paint_core_paint(%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, i32, i32) #1

declare void @gimp_paint_core_interpolate(%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, i32) #1

declare void @gimp_projection_flush_now(%struct._GimpProjection*) #1

declare %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage*) #1

declare void @gimp_display_flush_now(%struct._GimpDisplay*) #1

declare void @gimp_draw_tool_start(%struct._GimpDrawTool*, %struct._GimpDisplay*) #1

declare void @gimp_draw_tool_pause(%struct._GimpDrawTool*) #1

declare void @gimp_display_shell_selection_resume(%struct._GimpDisplayShell*) #1

declare void @gimp_paint_core_cancel(%struct._GimpPaintCore*, %struct._GimpDrawable*) #1

declare void @gimp_paint_core_finish(%struct._GimpPaintCore*, %struct._GimpDrawable*, i32) #1

declare void @gimp_image_flush(%struct._GimpImage*) #1

declare void @gimp_draw_tool_resume(%struct._GimpDrawTool*) #1

declare void @gimp_paint_core_smooth_coords(%struct._GimpPaintCore*, %struct._GimpPaintOptions*, %struct._GimpCoords*) #1

declare void @gimp_paint_core_set_current_coords(%struct._GimpPaintCore*, %struct._GimpCoords*) #1

declare %struct._GimpToolInfo* @gimp_get_tool_info(%struct._Gimp*, i8*) #1

declare void @gimp_color_tool_enable(%struct._GimpColorTool*, %struct._GimpColorOptions*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_options_get_type() #2

declare void @gimp_tool_push_status(%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) #1

declare void @gimp_tool_pop_status(%struct._GimpTool*, %struct._GimpDisplay*) #1

declare void @gimp_color_tool_disable(%struct._GimpColorTool*) #1

declare void @gimp_tool_control_set_cursor_modifier(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_toggle_cursor_modifier(%struct._GimpToolControl*, i32) #1

declare i8* @gimp_suggest_modifiers(i8*, i32, i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare double @sqrt(double) #6

declare void @gimp_image_get_resolution(%struct._GimpImage*, double*, double*) #1

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

declare i32 @gimp_unit_get_digits(i32) #1

declare i8* @gimp_unit_get_symbol(i32) #1

declare double @gimp_unit_get_factor(i32) #1

declare void @g_free(i8*) #1

declare i32 @gimp_tool_control_is_active(%struct._GimpToolControl*) #1

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_line(%struct._GimpDrawTool*, double, double, double, double) #1

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool*, i32, double, double, i32, i32, i32) #1

declare void @gimp_tool_control_set_motion_mode(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_scroll_lock(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_action_value_1(%struct._GimpToolControl*, i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
