; ModuleID = './app/tools/gimpbrushtool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
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
%struct._GimpToolInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GimpToolOptions*, %struct._GimpPaintInfo*, %struct._GimpContainer* }
%struct._GimpViewable = type { %struct._GimpObject }
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
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpBrush = type { %struct._GimpData, %struct._TempBuf*, %struct._TempBuf*, i32, %struct._GimpVector2, %struct._GimpVector2, i32, %struct._GimpBrushCache*, %struct._GimpBrushCache*, %struct._GimpBrushCache* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._TempBuf = type opaque
%struct._GimpVector2 = type { double, double }
%struct._GimpBrushCache = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GimpPaintInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpToolControl = type { %struct._GimpObject, i32, i32, i32, %struct._GSList*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._GimpDrawable = type opaque
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpCanvasItem = type { %struct._GimpObject }
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayOptions = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GdkEventKey = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32, i8*, i16, i8, i8 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpUIManager = type opaque
%struct._GimpDrawTool = type { %struct._GimpTool, %struct._GimpDisplay*, i32, i32, i64, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GList* }
%struct._GimpColorTool = type { %struct._GimpDrawTool, i32, i32, i32, i32, %struct._GimpColorOptions*, %struct._GimpSamplePoint*, i32, i32, i32 }
%struct._GimpColorOptions = type opaque
%struct._GimpSamplePoint = type opaque
%struct._GimpBrushTool = type { %struct._GimpPaintTool, i32, i32, double, double }
%struct._GimpPaintTool = type { %struct._GimpColorTool, i32, i32, i8*, i8*, i8*, %struct._GimpPaintCore* }
%struct._GimpPaintCore = type { %struct._GimpObject, i32, i8*, %struct._GimpCoords, %struct._GimpCoords, %struct._GimpCoords, %struct._GimpVector2, double, double, i32, i32, i32, i32, i32, %struct._TileManager*, %struct._TileManager*, %struct._TileManager*, %struct._TempBuf*, %struct._TempBuf*, %struct._TempBuf*, %struct._GArray* }
%struct._TileManager = type opaque
%struct._GArray = type { i8*, i32 }
%struct._GimpBrushCore = type { %struct._GimpPaintCore, %struct._GimpBrush*, %struct._GimpBrush*, %struct._GimpDynamics*, double, double, double, double, double, %struct._TempBuf*, [2 x [2 x %struct._TempBuf*]], %struct._TempBuf*, i32, %struct._TempBuf*, %struct._TempBuf*, [5 x [5 x %struct._TempBuf*]], %struct._TempBuf*, i32, double, [360 x double], [360 x double], %struct._GRand* }
%struct._GRand = type opaque
%struct._GimpPaintOptions = type { %struct._GimpToolOptions, %struct._GimpPaintInfo*, double, double, double, i32, i32, i32, %struct._GimpJitterOptions*, i32, %struct._GimpFadeOptions*, %struct._GimpGradientOptions*, %struct._GimpSmoothingOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpJitterOptions = type { i32, double }
%struct._GimpFadeOptions = type { i32, double, i32, i32 }
%struct._GimpGradientOptions = type { i32, i32 }
%struct._GimpSmoothingOptions = type { i32, i32, double }
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
%struct.cairo_path = type { i32, %union._cairo_path_data_t*, i32 }
%union._cairo_path_data_t = type { %struct.anon.0 }
%struct.anon.0 = type { double, double }
%struct._GimpBrushCoreClass = type { %struct._GimpPaintCoreClass, i32, i32, i32, void (%struct._GimpBrushCore*, %struct._GimpBrush*)*, void (%struct._GimpBrushCore*, %struct._GimpDynamics*)* }
%struct._GimpPaintCoreClass = type { %struct._GimpObjectClass, i32 (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, %struct._GError**)*, i32 (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, i32, i32)*, void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, i32, i32)*, void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, i32, i32)*, void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, i32)*, %struct._TempBuf* (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*)*, %struct._GimpUndo* (%struct._GimpPaintCore*, %struct._GimpImage*, i8*)* }
%struct._GimpUndo = type opaque

@gimp_brush_tool_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"GimpBrushTool\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Gimp-Tools\00", align 1
@__func__.gimp_brush_tool_create_outline = private unnamed_addr constant [31 x i8] c"gimp_brush_tool_create_outline\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"GIMP_IS_BRUSH_TOOL (brush_tool)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"GIMP_IS_DISPLAY (display)\00", align 1
@gimp_brush_tool_parent_class = internal global i8* null, align 8
@GimpBrushTool_private_offset = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"gimpbrushtool.c\00", align 1
@__func__.gimp_brush_tool_constructed = private unnamed_addr constant [28 x i8] c"gimp_brush_tool_constructed\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"GIMP_IS_BRUSH_CORE (paint_tool->core)\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"notify::show-paint-tool-cursor\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"notify::show-brush-outline\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"brush-changed\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"set-brush\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"brush-size\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"brush-angle\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"brush-aspect-ratio\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"tools/tools-paint-brush-size-set\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"context/context-brush-aspect-set\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"context/context-brush-angle-set\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"context/context-brush-select-set\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_brush_tool_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_brush_tool_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_brush_tool_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_paint_tool_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 304, void (i8*, i8*)* bitcast (void (i8*)* @gimp_brush_tool_class_intern_init to void (i8*, i8*)*), i32 360, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpBrushTool*)* @gimp_brush_tool_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_brush_tool_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_brush_tool_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_tool_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_tool_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_brush_tool_parent_class, align 8
  %1 = load i32, i32* @GimpBrushTool_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpBrushTool_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpBrushToolClass*
  call void @gimp_brush_tool_class_init(%struct._GimpBrushToolClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_tool_init(%struct._GimpBrushTool* %brush_tool) #3 {
entry:
  %brush_tool.addr = alloca %struct._GimpBrushTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  store %struct._GimpBrushTool* %brush_tool, %struct._GimpBrushTool** %brush_tool.addr, align 8
  %0 = load %struct._GimpBrushTool*, %struct._GimpBrushTool** %brush_tool.addr, align 8
  %1 = bitcast %struct._GimpBrushTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 3
  %4 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_set_action_value_2(%struct._GimpToolControl* %4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i32 0, i32 0))
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control2 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 3
  %6 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control2, align 8
  call void @gimp_tool_control_set_action_value_3(%struct._GimpToolControl* %6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i32 0, i32 0))
  %7 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control3 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %7, i32 0, i32 3
  %8 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control3, align 8
  call void @gimp_tool_control_set_action_value_4(%struct._GimpToolControl* %8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i32 0, i32 0))
  %9 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control4 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %9, i32 0, i32 3
  %10 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control4, align 8
  call void @gimp_tool_control_set_action_object_1(%struct._GimpToolControl* %10, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i32 0, i32 0))
  %11 = load %struct._GimpBrushTool*, %struct._GimpBrushTool** %brush_tool.addr, align 8
  %show_cursor = getelementptr inbounds %struct._GimpBrushTool, %struct._GimpBrushTool* %11, i32 0, i32 1
  store i32 1, i32* %show_cursor, align 4
  %12 = load %struct._GimpBrushTool*, %struct._GimpBrushTool** %brush_tool.addr, align 8
  %draw_brush = getelementptr inbounds %struct._GimpBrushTool, %struct._GimpBrushTool* %12, i32 0, i32 2
  store i32 1, i32* %draw_brush, align 4
  %13 = load %struct._GimpBrushTool*, %struct._GimpBrushTool** %brush_tool.addr, align 8
  %brush_x = getelementptr inbounds %struct._GimpBrushTool, %struct._GimpBrushTool* %13, i32 0, i32 3
  store double 0.000000e+00, double* %brush_x, align 8
  %14 = load %struct._GimpBrushTool*, %struct._GimpBrushTool** %brush_tool.addr, align 8
  %brush_y = getelementptr inbounds %struct._GimpBrushTool, %struct._GimpBrushTool* %14, i32 0, i32 4
  store double 0.000000e+00, double* %brush_y, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpCanvasItem* @gimp_brush_tool_create_outline(%struct._GimpBrushTool* %brush_tool, %struct._GimpDisplay* %display, double %x, double %y) #3 {
entry:
  %retval = alloca %struct._GimpCanvasItem*, align 8
  %brush_tool.addr = alloca %struct._GimpBrushTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %brush_core = alloca %struct._GimpBrushCore*, align 8
  %options = alloca %struct._GimpPaintOptions*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %boundary = alloca %struct.cairo_path*, align 8
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
  store %struct._GimpBrushTool* %brush_tool, %struct._GimpBrushTool** %brush_tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store %struct.cairo_path* null, %struct.cairo_path** %boundary, align 8
  store i32 0, i32* %width, align 4
  store i32 0, i32* %height, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBrushTool*, %struct._GimpBrushTool** %brush_tool.addr, align 8
  %1 = bitcast %struct._GimpBrushTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_brush_tool_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_brush_tool_create_outline, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpDisplay* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_display_get_type() #6
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_brush_tool_create_outline, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpBrushTool*, %struct._GimpBrushTool** %brush_tool.addr, align 8
  %draw_brush = getelementptr inbounds %struct._GimpBrushTool, %struct._GimpBrushTool* %26, i32 0, i32 2
  %27 = load i32, i32* %draw_brush, align 4
  %tobool39 = icmp ne i32 %27, 0
  br i1 %tobool39, label %if.end.41, label %if.then.40

if.then.40:                                       ; preds = %do.end.38
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.41:                                        ; preds = %do.end.38
  %28 = load %struct._GimpBrushTool*, %struct._GimpBrushTool** %brush_tool.addr, align 8
  %29 = bitcast %struct._GimpBrushTool* %28 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_paint_tool_get_type() #6
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call42)
  %30 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpPaintTool*
  %core = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %30, i32 0, i32 6
  %31 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %32 = bitcast %struct._GimpPaintCore* %31 to %struct._GTypeInstance*
  %call44 = call i64 @gimp_brush_core_get_type() #6
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call44)
  %33 = bitcast %struct._GTypeInstance* %call45 to %struct._GimpBrushCore*
  store %struct._GimpBrushCore* %33, %struct._GimpBrushCore** %brush_core, align 8
  %34 = load %struct._GimpBrushTool*, %struct._GimpBrushTool** %brush_tool.addr, align 8
  %35 = bitcast %struct._GimpBrushTool* %34 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_tool_get_type() #6
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call46)
  %36 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpTool*
  %call48 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %36)
  %37 = bitcast %struct._GimpToolOptions* %call48 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_paint_options_get_type() #6
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call49)
  %38 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpPaintOptions*
  store %struct._GimpPaintOptions* %38, %struct._GimpPaintOptions** %options, align 8
  %39 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call51 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %39)
  store %struct._GimpDisplayShell* %call51, %struct._GimpDisplayShell** %shell, align 8
  %40 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %brush_core, align 8
  %main_brush = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %40, i32 0, i32 1
  %41 = load %struct._GimpBrush*, %struct._GimpBrush** %main_brush, align 8
  %tobool52 = icmp ne %struct._GimpBrush* %41, null
  br i1 %tobool52, label %lor.lhs.false, label %if.then.54

lor.lhs.false:                                    ; preds = %if.end.41
  %42 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %brush_core, align 8
  %dynamics = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %42, i32 0, i32 3
  %43 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  %tobool53 = icmp ne %struct._GimpDynamics* %43, null
  br i1 %tobool53, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %lor.lhs.false, %if.end.41
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.55:                                        ; preds = %lor.lhs.false
  %44 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %brush_core, align 8
  %scale = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %44, i32 0, i32 5
  %45 = load double, double* %scale, align 8
  %cmp56 = fcmp ogt double %45, 0.000000e+00
  br i1 %cmp56, label %if.then.57, label %if.end.61

if.then.57:                                       ; preds = %if.end.55
  %46 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %brush_core, align 8
  %main_brush58 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %46, i32 0, i32 1
  %47 = load %struct._GimpBrush*, %struct._GimpBrush** %main_brush58, align 8
  %48 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %brush_core, align 8
  %scale59 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %48, i32 0, i32 5
  %49 = load double, double* %scale59, align 8
  %50 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %brush_core, align 8
  %aspect_ratio = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %50, i32 0, i32 8
  %51 = load double, double* %aspect_ratio, align 8
  %52 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %brush_core, align 8
  %angle = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %52, i32 0, i32 6
  %53 = load double, double* %angle, align 8
  %54 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %brush_core, align 8
  %hardness = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %54, i32 0, i32 7
  %55 = load double, double* %hardness, align 8
  %call60 = call %struct.cairo_path* @gimp_brush_transform_boundary(%struct._GimpBrush* %47, double %49, double %51, double %53, double %55, i32* %width, i32* %height)
  store %struct.cairo_path* %call60, %struct.cairo_path** %boundary, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.57, %if.end.55
  %56 = load %struct.cairo_path*, %struct.cairo_path** %boundary, align 8
  %tobool62 = icmp ne %struct.cairo_path* %56, null
  br i1 %tobool62, label %land.lhs.true.63, label %if.end.89

land.lhs.true.63:                                 ; preds = %if.end.61
  %57 = load i32, i32* %width, align 4
  %conv = sitofp i32 %57 to double
  %58 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %58, i32 0, i32 13
  %59 = load double, double* %scale_x, align 8
  %mul = fmul double %conv, %59
  %call64 = call double @rint(double %mul) #6
  %conv65 = fptosi double %call64 to i32
  %cmp66 = icmp sgt i32 %conv65, 4
  br i1 %cmp66, label %land.lhs.true.68, label %if.end.89

land.lhs.true.68:                                 ; preds = %land.lhs.true.63
  %60 = load i32, i32* %height, align 4
  %conv69 = sitofp i32 %60 to double
  %61 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %61, i32 0, i32 14
  %62 = load double, double* %scale_y, align 8
  %mul70 = fmul double %conv69, %62
  %call71 = call double @rint(double %mul70) #6
  %conv72 = fptosi double %call71 to i32
  %cmp73 = icmp sgt i32 %conv72, 4
  br i1 %cmp73, label %if.then.75, label %if.end.89

if.then.75:                                       ; preds = %land.lhs.true.68
  %63 = load i32, i32* %width, align 4
  %conv76 = sitofp i32 %63 to double
  %div = fdiv double %conv76, 2.000000e+00
  %64 = load double, double* %x.addr, align 8
  %sub = fsub double %64, %div
  store double %sub, double* %x.addr, align 8
  %65 = load i32, i32* %height, align 4
  %conv77 = sitofp i32 %65 to double
  %div78 = fdiv double %conv77, 2.000000e+00
  %66 = load double, double* %y.addr, align 8
  %sub79 = fsub double %66, %div78
  store double %sub79, double* %y.addr, align 8
  %67 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %call80 = call i32 @gimp_paint_options_get_brush_mode(%struct._GimpPaintOptions* %67)
  %cmp81 = icmp eq i32 %call80, 0
  br i1 %cmp81, label %if.then.83, label %if.end.87

if.then.83:                                       ; preds = %if.then.75
  %68 = load double, double* %x.addr, align 8
  %add = fadd double %68, 1.000000e-06
  %call84 = call double @rint(double %add) #6
  store double %call84, double* %x.addr, align 8
  %69 = load double, double* %y.addr, align 8
  %add85 = fadd double %69, 1.000000e-06
  %call86 = call double @rint(double %add85) #6
  store double %call86, double* %y.addr, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.83, %if.then.75
  %70 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %71 = load %struct.cairo_path*, %struct.cairo_path** %boundary, align 8
  %72 = load double, double* %x.addr, align 8
  %73 = load double, double* %y.addr, align 8
  %call88 = call %struct._GimpCanvasItem* @gimp_canvas_path_new(%struct._GimpDisplayShell* %70, %struct.cairo_path* %71, double %72, double %73, i32 0, i32 2)
  store %struct._GimpCanvasItem* %call88, %struct._GimpCanvasItem** %retval
  br label %return

if.end.89:                                        ; preds = %land.lhs.true.68, %land.lhs.true.63, %if.end.61
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

return:                                           ; preds = %if.end.89, %if.end.87, %if.then.54, %if.then.40, %if.else.36, %if.else.9
  %74 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %retval
  ret %struct._GimpCanvasItem* %74
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_display_get_type() #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_core_get_type() #2

declare %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_options_get_type() #2

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

declare %struct.cairo_path* @gimp_brush_transform_boundary(%struct._GimpBrush*, double, double, double, double, i32*, i32*) #1

; Function Attrs: nounwind readnone
declare double @rint(double) #2

declare i32 @gimp_paint_options_get_brush_mode(%struct._GimpPaintOptions*) #1

declare %struct._GimpCanvasItem* @gimp_canvas_path_new(%struct._GimpDisplayShell*, %struct.cairo_path*, double, double, i32, i32) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_tool_class_init(%struct._GimpBrushToolClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpBrushToolClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %tool_class = alloca %struct._GimpToolClass*, align 8
  %draw_tool_class = alloca %struct._GimpDrawToolClass*, align 8
  store %struct._GimpBrushToolClass* %klass, %struct._GimpBrushToolClass** %klass.addr, align 8
  %0 = load %struct._GimpBrushToolClass*, %struct._GimpBrushToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpBrushToolClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpBrushToolClass*, %struct._GimpBrushToolClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpBrushToolClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_tool_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpToolClass*
  store %struct._GimpToolClass* %5, %struct._GimpToolClass** %tool_class, align 8
  %6 = load %struct._GimpBrushToolClass*, %struct._GimpBrushToolClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpBrushToolClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_draw_tool_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpDrawToolClass*
  store %struct._GimpDrawToolClass* %8, %struct._GimpDrawToolClass** %draw_tool_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_brush_tool_constructed, void (%struct._GObject*)** %constructed, align 8
  %10 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %motion = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %10, i32 0, i32 7
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_brush_tool_motion, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %motion, align 8
  %11 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %oper_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %11, i32 0, i32 12
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_brush_tool_oper_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %oper_update, align 8
  %12 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %12, i32 0, i32 13
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)* @gimp_brush_tool_cursor_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %13 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %options_notify = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %13, i32 0, i32 15
  store void (%struct._GimpTool*, %struct._GimpToolOptions*, %struct._GParamSpec*)* @gimp_brush_tool_options_notify, void (%struct._GimpTool*, %struct._GimpToolOptions*, %struct._GParamSpec*)** %options_notify, align 8
  %14 = load %struct._GimpDrawToolClass*, %struct._GimpDrawToolClass** %draw_tool_class, align 8
  %draw = getelementptr inbounds %struct._GimpDrawToolClass, %struct._GimpDrawToolClass* %14, i32 0, i32 1
  store void (%struct._GimpDrawTool*)* @gimp_brush_tool_draw, void (%struct._GimpDrawTool*)** %draw, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_draw_tool_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_tool_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %paint_tool = alloca %struct._GimpPaintTool*, align 8
  %brush_tool = alloca %struct._GimpBrushTool*, align 8
  %display_config = alloca %struct._GimpDisplayConfig*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %4 = bitcast %struct._GObject* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_paint_tool_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpPaintTool*
  store %struct._GimpPaintTool* %5, %struct._GimpPaintTool** %paint_tool, align 8
  %6 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %7 = bitcast %struct._GObject* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_brush_tool_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpBrushTool*
  store %struct._GimpBrushTool* %8, %struct._GimpBrushTool** %brush_tool, align 8
  %9 = load i8*, i8** @gimp_brush_tool_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 80)
  %11 = bitcast %struct._GTypeClass* %call6 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 9
  %12 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %12, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load i8*, i8** @gimp_brush_tool_parent_class, align 8
  %14 = bitcast i8* %13 to %struct._GTypeClass*
  %call7 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %14, i64 80)
  %15 = bitcast %struct._GTypeClass* %call7 to %struct._GObjectClass*
  %constructed8 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %15, i32 0, i32 9
  %16 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed8, align 8
  %17 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %16(%struct._GObject* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %18 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %core = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %18, i32 0, i32 6
  %19 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %20 = bitcast %struct._GimpPaintCore* %19 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %20, %struct._GTypeInstance** %__inst, align 8
  %call9 = call i64 @gimp_brush_core_get_type() #6
  store i64 %call9, i64* %__t, align 8
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool10 = icmp ne %struct._GTypeInstance* %21, null
  br i1 %tobool10, label %if.else, label %if.then.11

if.then.11:                                       ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.18

if.else:                                          ; preds = %do.body
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool12 = icmp ne %struct._GTypeClass* %23, null
  br i1 %tobool12, label %land.lhs.true, label %if.else.15

land.lhs.true:                                    ; preds = %if.else
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class13 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class13, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type, align 8
  %27 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %26, %27
  br i1 %cmp, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.17

if.else.15:                                       ; preds = %land.lhs.true, %if.else
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %29 = load i64, i64* %__t, align 8
  %call16 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %28, i64 %29) #7
  store i32 %call16, i32* %__r, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.14
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.11
  %30 = load i32, i32* %__r, align 4
  store i32 %30, i32* %tmp
  %31 = load i32, i32* %tmp
  %tobool19 = icmp ne i32 %31, 0
  br i1 %tobool19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.end.18
  br label %if.end.22

if.else.21:                                       ; preds = %if.end.18
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i32 135, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_brush_tool_constructed, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0)) #8
  unreachable

if.end.22:                                        ; preds = %if.then.20
  br label %do.end

do.end:                                           ; preds = %if.end.22
  %32 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %tool_info = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %32, i32 0, i32 1
  %33 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %gimp = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %33, i32 0, i32 1
  %34 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %34, i32 0, i32 1
  %35 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %36 = bitcast %struct._GimpCoreConfig* %35 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_display_config_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call23)
  %37 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpDisplayConfig*
  store %struct._GimpDisplayConfig* %37, %struct._GimpDisplayConfig** %display_config, align 8
  %38 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %show_paint_tool_cursor = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %38, i32 0, i32 13
  %39 = load i32, i32* %show_paint_tool_cursor, align 4
  %40 = load %struct._GimpBrushTool*, %struct._GimpBrushTool** %brush_tool, align 8
  %show_cursor = getelementptr inbounds %struct._GimpBrushTool, %struct._GimpBrushTool* %40, i32 0, i32 1
  store i32 %39, i32* %show_cursor, align 4
  %41 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %show_brush_outline = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %41, i32 0, i32 12
  %42 = load i32, i32* %show_brush_outline, align 4
  %43 = load %struct._GimpBrushTool*, %struct._GimpBrushTool** %brush_tool, align 8
  %draw_brush = getelementptr inbounds %struct._GimpBrushTool, %struct._GimpBrushTool* %43, i32 0, i32 2
  store i32 %42, i32* %draw_brush, align 4
  %44 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %45 = bitcast %struct._GimpDisplayConfig* %44 to i8*
  %46 = load %struct._GimpBrushTool*, %struct._GimpBrushTool** %brush_tool, align 8
  %47 = bitcast %struct._GimpBrushTool* %46 to i8*
  %call25 = call i64 @g_signal_connect_object(i8* %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDisplayConfig*, %struct._GParamSpec*, %struct._GimpBrushTool*)* @gimp_brush_tool_notify_brush to void ()*), i8* %47, i32 0)
  %48 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %49 = bitcast %struct._GimpDisplayConfig* %48 to i8*
  %50 = load %struct._GimpBrushTool*, %struct._GimpBrushTool** %brush_tool, align 8
  %51 = bitcast %struct._GimpBrushTool* %50 to i8*
  %call26 = call i64 @g_signal_connect_object(i8* %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDisplayConfig*, %struct._GParamSpec*, %struct._GimpBrushTool*)* @gimp_brush_tool_notify_brush to void ()*), i8* %51, i32 0)
  %52 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %call27 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %52)
  %53 = bitcast %struct._GimpToolOptions* %call27 to i8*
  %54 = load %struct._GimpBrushTool*, %struct._GimpBrushTool** %brush_tool, align 8
  %55 = bitcast %struct._GimpBrushTool* %54 to i8*
  %call28 = call i64 @g_signal_connect_object(i8* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContext*, %struct._GimpBrush*, %struct._GimpBrushTool*)* @gimp_brush_tool_brush_changed to void ()*), i8* %55, i32 0)
  %56 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %core29 = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %56, i32 0, i32 6
  %57 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core29, align 8
  %58 = bitcast %struct._GimpPaintCore* %57 to i8*
  %59 = load %struct._GimpBrushTool*, %struct._GimpBrushTool** %brush_tool, align 8
  %60 = bitcast %struct._GimpBrushTool* %59 to i8*
  %call30 = call i64 @g_signal_connect_object(i8* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GimpBrushCore*, %struct._GimpBrush*, %struct._GimpBrushTool*)* @gimp_brush_tool_set_brush to void ()*), i8* %60, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_tool_motion(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %brush_tool = alloca %struct._GimpBrushTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrushTool*
  store %struct._GimpBrushTool* %2, %struct._GimpBrushTool** %brush_tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_draw_tool_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %5)
  %6 = load i8*, i8** @gimp_brush_tool_parent_class, align 8
  %7 = bitcast i8* %6 to %struct._GTypeClass*
  %call4 = call i64 @gimp_tool_get_type() #6
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call4)
  %8 = bitcast %struct._GTypeClass* %call5 to %struct._GimpToolClass*
  %motion = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %8, i32 0, i32 7
  %9 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %motion, align 8
  %10 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %11 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %12 = load i32, i32* %time.addr, align 4
  %13 = load i32, i32* %state.addr, align 4
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %9(%struct._GimpTool* %10, %struct._GimpCoords* %11, i32 %12, i32 %13, %struct._GimpDisplay* %14)
  %15 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %16 = bitcast %struct._GimpTool* %15 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_color_tool_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call6)
  %17 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpColorTool*
  %call8 = call i32 @gimp_color_tool_is_enabled(%struct._GimpColorTool* %17)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %18 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %18, i32 0, i32 0
  %19 = load double, double* %x, align 8
  %20 = load %struct._GimpBrushTool*, %struct._GimpBrushTool** %brush_tool, align 8
  %brush_x = getelementptr inbounds %struct._GimpBrushTool, %struct._GimpBrushTool* %20, i32 0, i32 3
  store double %19, double* %brush_x, align 8
  %21 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %21, i32 0, i32 1
  %22 = load double, double* %y, align 8
  %23 = load %struct._GimpBrushTool*, %struct._GimpBrushTool** %brush_tool, align 8
  %brush_y = getelementptr inbounds %struct._GimpBrushTool, %struct._GimpBrushTool* %23, i32 0, i32 4
  store double %22, double* %brush_y, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %24 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %25 = bitcast %struct._GimpTool* %24 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_draw_tool_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call9)
  %26 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %26)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_tool_oper_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, i32 %proximity, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %proximity.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %brush_tool = alloca %struct._GimpBrushTool*, align 8
  %paint_options = alloca %struct._GimpPaintOptions*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %paint_tool = alloca %struct._GimpPaintTool*, align 8
  %brush_core = alloca %struct._GimpBrushCore*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store i32 %proximity, i32* %proximity.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrushTool*
  store %struct._GimpBrushTool* %2, %struct._GimpBrushTool** %brush_tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_paint_options_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpPaintOptions*
  store %struct._GimpPaintOptions* %7, %struct._GimpPaintOptions** %paint_options, align 8
  %8 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %9 = bitcast %struct._GimpTool* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_draw_tool_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %10)
  %11 = load i8*, i8** @gimp_brush_tool_parent_class, align 8
  %12 = bitcast i8* %11 to %struct._GTypeClass*
  %call9 = call i64 @gimp_tool_get_type() #6
  %call10 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %12, i64 %call9)
  %13 = bitcast %struct._GTypeClass* %call10 to %struct._GimpToolClass*
  %oper_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %13, i32 0, i32 12
  %14 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %oper_update, align 8
  %15 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %16 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %17 = load i32, i32* %state.addr, align 4
  %18 = load i32, i32* %proximity.addr, align 4
  %19 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %14(%struct._GimpTool* %15, %struct._GimpCoords* %16, i32 %17, i32 %18, %struct._GimpDisplay* %19)
  %20 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call11 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %20)
  %call12 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %call11)
  store %struct._GimpDrawable* %call12, %struct._GimpDrawable** %drawable, align 8
  %21 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %22 = bitcast %struct._GimpTool* %21 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_color_tool_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call13)
  %23 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpColorTool*
  %call15 = call i32 @gimp_color_tool_is_enabled(%struct._GimpColorTool* %23)
  %tobool = icmp ne i32 %call15, 0
  br i1 %tobool, label %if.end.29, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool16 = icmp ne %struct._GimpDrawable* %24, null
  br i1 %tobool16, label %land.lhs.true.17, label %if.end.29

land.lhs.true.17:                                 ; preds = %land.lhs.true
  %25 = load i32, i32* %proximity.addr, align 4
  %tobool18 = icmp ne i32 %25, 0
  br i1 %tobool18, label %if.then, label %if.end.29

if.then:                                          ; preds = %land.lhs.true.17
  %26 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options, align 8
  %27 = bitcast %struct._GimpPaintOptions* %26 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_context_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call19)
  %28 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpContext*
  store %struct._GimpContext* %28, %struct._GimpContext** %context, align 8
  %29 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %30 = bitcast %struct._GimpTool* %29 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_paint_tool_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call21)
  %31 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpPaintTool*
  store %struct._GimpPaintTool* %31, %struct._GimpPaintTool** %paint_tool, align 8
  %32 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %core = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %32, i32 0, i32 6
  %33 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %34 = bitcast %struct._GimpPaintCore* %33 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_brush_core_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call23)
  %35 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpBrushCore*
  store %struct._GimpBrushCore* %35, %struct._GimpBrushCore** %brush_core, align 8
  %36 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %36, i32 0, i32 0
  %37 = load double, double* %x, align 8
  %38 = load %struct._GimpBrushTool*, %struct._GimpBrushTool** %brush_tool, align 8
  %brush_x = getelementptr inbounds %struct._GimpBrushTool, %struct._GimpBrushTool* %38, i32 0, i32 3
  store double %37, double* %brush_x, align 8
  %39 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %39, i32 0, i32 1
  %40 = load double, double* %y, align 8
  %41 = load %struct._GimpBrushTool*, %struct._GimpBrushTool** %brush_tool, align 8
  %brush_y = getelementptr inbounds %struct._GimpBrushTool, %struct._GimpBrushTool* %41, i32 0, i32 4
  store double %40, double* %brush_y, align 8
  %42 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %brush_core, align 8
  %43 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call25 = call %struct._GimpBrush* @gimp_context_get_brush(%struct._GimpContext* %43)
  call void @gimp_brush_core_set_brush(%struct._GimpBrushCore* %42, %struct._GimpBrush* %call25)
  %44 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %brush_core, align 8
  %45 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call26 = call %struct._GimpDynamics* @gimp_context_get_dynamics(%struct._GimpContext* %45)
  call void @gimp_brush_core_set_dynamics(%struct._GimpBrushCore* %44, %struct._GimpDynamics* %call26)
  %46 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %brush_core, align 8
  %47 = bitcast %struct._GimpBrushCore* %46 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %47, i32 0, i32 0
  %48 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %49 = bitcast %struct._GTypeClass* %48 to %struct._GimpBrushCoreClass*
  %handles_transforming_brush = getelementptr inbounds %struct._GimpBrushCoreClass, %struct._GimpBrushCoreClass* %49, i32 0, i32 2
  %50 = load i32, i32* %handles_transforming_brush, align 4
  %tobool27 = icmp ne i32 %50, 0
  br i1 %tobool27, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %if.then
  %51 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %brush_core, align 8
  %52 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %53 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options, align 8
  %54 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  call void @gimp_brush_core_eval_transform_dynamics(%struct._GimpBrushCore* %51, %struct._GimpDrawable* %52, %struct._GimpPaintOptions* %53, %struct._GimpCoords* %54)
  br label %if.end

if.end:                                           ; preds = %if.then.28, %if.then
  br label %if.end.29

if.end.29:                                        ; preds = %if.end, %land.lhs.true.17, %land.lhs.true, %entry
  %55 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %56 = bitcast %struct._GimpTool* %55 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_draw_tool_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call30)
  %57 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %57)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_tool_cursor_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %brush_tool = alloca %struct._GimpBrushTool*, align 8
  %brush_core = alloca %struct._GimpBrushCore*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrushTool*
  store %struct._GimpBrushTool* %2, %struct._GimpBrushTool** %brush_tool, align 8
  %3 = load %struct._GimpBrushTool*, %struct._GimpBrushTool** %brush_tool, align 8
  %4 = bitcast %struct._GimpBrushTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_paint_tool_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpPaintTool*
  %core = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %5, i32 0, i32 6
  %6 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %7 = bitcast %struct._GimpPaintCore* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_brush_core_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpBrushCore*
  store %struct._GimpBrushCore* %8, %struct._GimpBrushCore** %brush_core, align 8
  %9 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %10 = bitcast %struct._GimpTool* %9 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_color_tool_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call6)
  %11 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpColorTool*
  %call8 = call i32 @gimp_color_tool_is_enabled(%struct._GimpColorTool* %11)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end.20, label %if.then

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %brush_core, align 8
  %main_brush = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %12, i32 0, i32 1
  %13 = load %struct._GimpBrush*, %struct._GimpBrush** %main_brush, align 8
  %tobool9 = icmp ne %struct._GimpBrush* %13, null
  br i1 %tobool9, label %lor.lhs.false, label %if.then.11

lor.lhs.false:                                    ; preds = %if.then
  %14 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %brush_core, align 8
  %dynamics = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %14, i32 0, i32 3
  %15 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  %tobool10 = icmp ne %struct._GimpDynamics* %15, null
  br i1 %tobool10, label %if.else, label %if.then.11

if.then.11:                                       ; preds = %lor.lhs.false, %if.then
  %16 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %17 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %18 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %18, i32 0, i32 3
  %19 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call12 = call i32 @gimp_tool_control_get_cursor(%struct._GimpToolControl* %19)
  %20 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control13 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %20, i32 0, i32 3
  %21 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control13, align 8
  %call14 = call i32 @gimp_tool_control_get_tool_cursor(%struct._GimpToolControl* %21)
  call void @gimp_tool_set_cursor(%struct._GimpTool* %16, %struct._GimpDisplay* %17, i32 %call12, i32 %call14, i32 1)
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %22 = load %struct._GimpBrushTool*, %struct._GimpBrushTool** %brush_tool, align 8
  %show_cursor = getelementptr inbounds %struct._GimpBrushTool, %struct._GimpBrushTool* %22, i32 0, i32 1
  %23 = load i32, i32* %show_cursor, align 4
  %tobool15 = icmp ne i32 %23, 0
  br i1 %tobool15, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %24 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control16 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %24, i32 0, i32 3
  %25 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control16, align 8
  %call17 = call i32 @gimp_tool_control_get_cursor_modifier(%struct._GimpToolControl* %25)
  %cmp = icmp ne i32 %call17, 1
  br i1 %cmp, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %land.lhs.true
  %26 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %27 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_set_cursor(%struct._GimpTool* %26, %struct._GimpDisplay* %27, i32 1024, i32 0, i32 0)
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %entry
  %28 = load i8*, i8** @gimp_brush_tool_parent_class, align 8
  %29 = bitcast i8* %28 to %struct._GTypeClass*
  %call21 = call i64 @gimp_tool_get_type() #6
  %call22 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %29, i64 %call21)
  %30 = bitcast %struct._GTypeClass* %call22 to %struct._GimpToolClass*
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %30, i32 0, i32 13
  %31 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %32 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %33 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %34 = load i32, i32* %state.addr, align 4
  %35 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %31(%struct._GimpTool* %32, %struct._GimpCoords* %33, i32 %34, %struct._GimpDisplay* %35)
  br label %return

return:                                           ; preds = %if.end.20, %if.then.18, %if.then.11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_tool_options_notify(%struct._GimpTool* %tool, %struct._GimpToolOptions* %options, %struct._GParamSpec* %pspec) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %options.addr = alloca %struct._GimpToolOptions*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %paint_tool = alloca %struct._GimpPaintTool*, align 8
  %brush_core = alloca %struct._GimpBrushCore*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpToolOptions* %options, %struct._GimpToolOptions** %options.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load i8*, i8** @gimp_brush_tool_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_tool_get_type() #6
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpToolClass*
  %options_notify = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %2, i32 0, i32 15
  %3 = load void (%struct._GimpTool*, %struct._GimpToolOptions*, %struct._GParamSpec*)*, void (%struct._GimpTool*, %struct._GimpToolOptions*, %struct._GParamSpec*)** %options_notify, align 8
  %4 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %5 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %options.addr, align 8
  %6 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  call void %3(%struct._GimpTool* %4, %struct._GimpToolOptions* %5, %struct._GParamSpec* %6)
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %7, i32 0, i32 1
  %8 = load i8*, i8** %name, align 8
  %call2 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0)) #7
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name3 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %9, i32 0, i32 1
  %10 = load i8*, i8** %name3, align 8
  %call4 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0)) #7
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %lor.lhs.false.6, label %if.then

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name7 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %11, i32 0, i32 1
  %12 = load i8*, i8** %name7, align 8
  %call8 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0)) #7
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.6, %lor.lhs.false, %entry
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %14 = bitcast %struct._GimpTool* %13 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_paint_tool_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call10)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpPaintTool*
  store %struct._GimpPaintTool* %15, %struct._GimpPaintTool** %paint_tool, align 8
  %16 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %core = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %16, i32 0, i32 6
  %17 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %18 = bitcast %struct._GimpPaintCore* %17 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_brush_core_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call12)
  %19 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpBrushCore*
  store %struct._GimpBrushCore* %19, %struct._GimpBrushCore** %brush_core, align 8
  %20 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %brush_core, align 8
  %21 = bitcast %struct._GimpBrushCore* %20 to i8*
  %22 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %brush_core, align 8
  %main_brush = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %22, i32 0, i32 1
  %23 = load %struct._GimpBrush*, %struct._GimpBrush** %main_brush, align 8
  call void (i8*, i8*, ...) @g_signal_emit_by_name(i8* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), %struct._GimpBrush* %23)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_tool_draw(%struct._GimpDrawTool* %draw_tool) #3 {
entry:
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %brush_tool = alloca %struct._GimpBrushTool*, align 8
  %item = alloca %struct._GimpCanvasItem*, align 8
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrushTool*
  store %struct._GimpBrushTool* %2, %struct._GimpBrushTool** %brush_tool, align 8
  %3 = load i8*, i8** @gimp_brush_tool_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_draw_tool_get_type() #6
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpDrawToolClass*
  %draw = getelementptr inbounds %struct._GimpDrawToolClass, %struct._GimpDrawToolClass* %5, i32 0, i32 1
  %6 = load void (%struct._GimpDrawTool*)*, void (%struct._GimpDrawTool*)** %draw, align 8
  %7 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  call void %6(%struct._GimpDrawTool* %7)
  %8 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %9 = bitcast %struct._GimpDrawTool* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_color_tool_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpColorTool*
  %call6 = call i32 @gimp_color_tool_is_enabled(%struct._GimpColorTool* %10)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.19

if.end:                                           ; preds = %entry
  %11 = load %struct._GimpBrushTool*, %struct._GimpBrushTool** %brush_tool, align 8
  %12 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %display = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %12, i32 0, i32 1
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %14 = load %struct._GimpBrushTool*, %struct._GimpBrushTool** %brush_tool, align 8
  %brush_x = getelementptr inbounds %struct._GimpBrushTool, %struct._GimpBrushTool* %14, i32 0, i32 3
  %15 = load double, double* %brush_x, align 8
  %16 = load %struct._GimpBrushTool*, %struct._GimpBrushTool** %brush_tool, align 8
  %brush_y = getelementptr inbounds %struct._GimpBrushTool, %struct._GimpBrushTool* %16, i32 0, i32 4
  %17 = load double, double* %brush_y, align 8
  %call7 = call %struct._GimpCanvasItem* @gimp_brush_tool_create_outline(%struct._GimpBrushTool* %11, %struct._GimpDisplay* %13, double %15, double %17)
  store %struct._GimpCanvasItem* %call7, %struct._GimpCanvasItem** %item, align 8
  %18 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %tobool8 = icmp ne %struct._GimpCanvasItem* %18, null
  br i1 %tobool8, label %if.end.16, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %19 = load %struct._GimpBrushTool*, %struct._GimpBrushTool** %brush_tool, align 8
  %show_cursor = getelementptr inbounds %struct._GimpBrushTool, %struct._GimpBrushTool* %19, i32 0, i32 1
  %20 = load i32, i32* %show_cursor, align 4
  %tobool9 = icmp ne i32 %20, 0
  br i1 %tobool9, label %if.end.16, label %if.then.10

if.then.10:                                       ; preds = %land.lhs.true
  %21 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %display11 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %21, i32 0, i32 1
  %22 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display11, align 8
  %call12 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %22)
  %23 = load %struct._GimpBrushTool*, %struct._GimpBrushTool** %brush_tool, align 8
  %brush_x13 = getelementptr inbounds %struct._GimpBrushTool, %struct._GimpBrushTool* %23, i32 0, i32 3
  %24 = load double, double* %brush_x13, align 8
  %25 = load %struct._GimpBrushTool*, %struct._GimpBrushTool** %brush_tool, align 8
  %brush_y14 = getelementptr inbounds %struct._GimpBrushTool, %struct._GimpBrushTool* %25, i32 0, i32 4
  %26 = load double, double* %brush_y14, align 8
  %call15 = call %struct._GimpCanvasItem* @gimp_canvas_handle_new(%struct._GimpDisplayShell* %call12, i32 4, i32 0, double %24, double %26, i32 7, i32 7)
  store %struct._GimpCanvasItem* %call15, %struct._GimpCanvasItem** %item, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.10, %land.lhs.true, %if.end
  %27 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %tobool17 = icmp ne %struct._GimpCanvasItem* %27, null
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.16
  %28 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %29 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  call void @gimp_draw_tool_add_item(%struct._GimpDrawTool* %28, %struct._GimpCanvasItem* %29)
  %30 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %31 = bitcast %struct._GimpCanvasItem* %30 to i8*
  call void @g_object_unref(i8* %31)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then, %if.then.18, %if.end.16
  ret void
}

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

; Function Attrs: nounwind readnone
declare i64 @gimp_display_config_get_type() #2

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_tool_notify_brush(%struct._GimpDisplayConfig* %config, %struct._GParamSpec* %pspec, %struct._GimpBrushTool* %brush_tool) #3 {
entry:
  %config.addr = alloca %struct._GimpDisplayConfig*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %brush_tool.addr = alloca %struct._GimpBrushTool*, align 8
  store %struct._GimpDisplayConfig* %config, %struct._GimpDisplayConfig** %config.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpBrushTool* %brush_tool, %struct._GimpBrushTool** %brush_tool.addr, align 8
  %0 = load %struct._GimpBrushTool*, %struct._GimpBrushTool** %brush_tool.addr, align 8
  %1 = bitcast %struct._GimpBrushTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_draw_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %2)
  %3 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config.addr, align 8
  %show_paint_tool_cursor = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %3, i32 0, i32 13
  %4 = load i32, i32* %show_paint_tool_cursor, align 4
  %5 = load %struct._GimpBrushTool*, %struct._GimpBrushTool** %brush_tool.addr, align 8
  %show_cursor = getelementptr inbounds %struct._GimpBrushTool, %struct._GimpBrushTool* %5, i32 0, i32 1
  store i32 %4, i32* %show_cursor, align 4
  %6 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config.addr, align 8
  %show_brush_outline = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %6, i32 0, i32 12
  %7 = load i32, i32* %show_brush_outline, align 4
  %8 = load %struct._GimpBrushTool*, %struct._GimpBrushTool** %brush_tool.addr, align 8
  %draw_brush = getelementptr inbounds %struct._GimpBrushTool, %struct._GimpBrushTool* %8, i32 0, i32 2
  store i32 %7, i32* %draw_brush, align 4
  %9 = load %struct._GimpBrushTool*, %struct._GimpBrushTool** %brush_tool.addr, align 8
  %10 = bitcast %struct._GimpBrushTool* %9 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_draw_tool_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call2)
  %11 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %11)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_tool_brush_changed(%struct._GimpContext* %context, %struct._GimpBrush* %brush, %struct._GimpBrushTool* %brush_tool) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %brush.addr = alloca %struct._GimpBrush*, align 8
  %brush_tool.addr = alloca %struct._GimpBrushTool*, align 8
  %paint_tool = alloca %struct._GimpPaintTool*, align 8
  %brush_core = alloca %struct._GimpBrushCore*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpBrush* %brush, %struct._GimpBrush** %brush.addr, align 8
  store %struct._GimpBrushTool* %brush_tool, %struct._GimpBrushTool** %brush_tool.addr, align 8
  %0 = load %struct._GimpBrushTool*, %struct._GimpBrushTool** %brush_tool.addr, align 8
  %1 = bitcast %struct._GimpBrushTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_paint_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaintTool*
  store %struct._GimpPaintTool* %2, %struct._GimpPaintTool** %paint_tool, align 8
  %3 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %core = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %3, i32 0, i32 6
  %4 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %5 = bitcast %struct._GimpPaintCore* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_brush_core_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpBrushCore*
  store %struct._GimpBrushCore* %6, %struct._GimpBrushCore** %brush_core, align 8
  %7 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %brush_core, align 8
  %8 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  call void @gimp_brush_core_set_brush(%struct._GimpBrushCore* %7, %struct._GimpBrush* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_tool_set_brush(%struct._GimpBrushCore* %brush_core, %struct._GimpBrush* %brush, %struct._GimpBrushTool* %brush_tool) #3 {
entry:
  %brush_core.addr = alloca %struct._GimpBrushCore*, align 8
  %brush.addr = alloca %struct._GimpBrush*, align 8
  %brush_tool.addr = alloca %struct._GimpBrushTool*, align 8
  %paint_core = alloca %struct._GimpPaintCore*, align 8
  store %struct._GimpBrushCore* %brush_core, %struct._GimpBrushCore** %brush_core.addr, align 8
  store %struct._GimpBrush* %brush, %struct._GimpBrush** %brush.addr, align 8
  store %struct._GimpBrushTool* %brush_tool, %struct._GimpBrushTool** %brush_tool.addr, align 8
  %0 = load %struct._GimpBrushTool*, %struct._GimpBrushTool** %brush_tool.addr, align 8
  %1 = bitcast %struct._GimpBrushTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_draw_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %2)
  %3 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %brush_core.addr, align 8
  %4 = bitcast %struct._GimpBrushCore* %3 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %6 = bitcast %struct._GTypeClass* %5 to %struct._GimpBrushCoreClass*
  %handles_transforming_brush = getelementptr inbounds %struct._GimpBrushCoreClass, %struct._GimpBrushCoreClass* %6, i32 0, i32 2
  %7 = load i32, i32* %handles_transforming_brush, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %brush_core.addr, align 8
  %9 = bitcast %struct._GimpBrushCore* %8 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_paint_core_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call2)
  %10 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpPaintCore*
  store %struct._GimpPaintCore* %10, %struct._GimpPaintCore** %paint_core, align 8
  %11 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %brush_core.addr, align 8
  %12 = load %struct._GimpBrushTool*, %struct._GimpBrushTool** %brush_tool.addr, align 8
  %13 = bitcast %struct._GimpBrushTool* %12 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_tool_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call4)
  %14 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpTool*
  %call6 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %14)
  %15 = bitcast %struct._GimpToolOptions* %call6 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_paint_options_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call7)
  %16 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpPaintOptions*
  %17 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core, align 8
  %cur_coords = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %17, i32 0, i32 4
  call void @gimp_brush_core_eval_transform_dynamics(%struct._GimpBrushCore* %11, %struct._GimpDrawable* null, %struct._GimpPaintOptions* %16, %struct._GimpCoords* %cur_coords)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct._GimpBrushTool*, %struct._GimpBrushTool** %brush_tool.addr, align 8
  %19 = bitcast %struct._GimpBrushTool* %18 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_draw_tool_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call9)
  %20 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %20)
  ret void
}

declare void @gimp_draw_tool_pause(%struct._GimpDrawTool*) #1

declare void @gimp_draw_tool_resume(%struct._GimpDrawTool*) #1

declare void @gimp_brush_core_set_brush(%struct._GimpBrushCore*, %struct._GimpBrush*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_core_get_type() #2

declare void @gimp_brush_core_eval_transform_dynamics(%struct._GimpBrushCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*) #1

declare i32 @gimp_color_tool_is_enabled(%struct._GimpColorTool*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_tool_get_type() #2

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare %struct._GimpBrush* @gimp_context_get_brush(%struct._GimpContext*) #1

declare void @gimp_brush_core_set_dynamics(%struct._GimpBrushCore*, %struct._GimpDynamics*) #1

declare %struct._GimpDynamics* @gimp_context_get_dynamics(%struct._GimpContext*) #1

declare void @gimp_tool_set_cursor(%struct._GimpTool*, %struct._GimpDisplay*, i32, i32, i32) #1

declare i32 @gimp_tool_control_get_cursor(%struct._GimpToolControl*) #1

declare i32 @gimp_tool_control_get_tool_cursor(%struct._GimpToolControl*) #1

declare i32 @gimp_tool_control_get_cursor_modifier(%struct._GimpToolControl*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare void @g_signal_emit_by_name(i8*, i8*, ...) #1

declare %struct._GimpCanvasItem* @gimp_canvas_handle_new(%struct._GimpDisplayShell*, i32, i32, double, double, i32, i32) #1

declare void @gimp_draw_tool_add_item(%struct._GimpDrawTool*, %struct._GimpCanvasItem*) #1

declare void @g_object_unref(i8*) #1

declare void @gimp_tool_control_set_action_value_2(%struct._GimpToolControl*, i8*) #1

declare void @gimp_tool_control_set_action_value_3(%struct._GimpToolControl*, i8*) #1

declare void @gimp_tool_control_set_action_value_4(%struct._GimpToolControl*, i8*) #1

declare void @gimp_tool_control_set_action_object_1(%struct._GimpToolControl*, i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
