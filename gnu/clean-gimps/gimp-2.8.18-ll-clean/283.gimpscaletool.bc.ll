; ModuleID = './app/tools/gimpscaletool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpScaleToolClass = type { %struct._GimpTransformToolClass }
%struct._GimpTransformToolClass = type { %struct._GimpDrawToolClass, void (%struct._GimpTransformTool*)*, void (%struct._GimpTransformTool*)*, void (%struct._GimpTransformTool*)*, void (%struct._GimpTransformTool*)*, void (%struct._GimpTransformTool*)*, i8* (%struct._GimpTransformTool*)*, %struct._TileManager* (%struct._GimpTransformTool*, %struct._GimpItem*, %struct._TileManager*, i32, i32, i32*, i32*)* }
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
%struct._GimpCanvasItem = type opaque
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
%struct._GimpTransformTool = type { %struct._GimpDrawTool, double, double, double, double, i32, i32, i32, i32, double, double, double, double, double, double, double, double, double, double, double, double, double, %struct._GimpMatrix3, [8 x double], [8 x double], [8 x double], i32, i32, i32, i32, i32, [11 x %struct._GimpCanvasItem*], i8*, %struct._GtkWidget* }
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
%struct._GArray = type { i8*, i32 }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GimpItem = type opaque
%struct._TileManager = type opaque
%struct._GimpScaleTool = type { %struct._GimpTransformTool, %struct._GtkWidget* }
%struct._GimpTransformOptions = type { %struct._GimpToolOptions, i32, i32, i32, i32, i32, i32, double, i32, i32, i32 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
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
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque

@gimp_scale_tool_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"GimpScaleTool\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"gimp-scale-tool\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Scale\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Scale Tool: Scale the layer, selection or path\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"_Scale\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"<shift>T\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"gimp-tool-scale\00", align 1
@gimp_scale_tool_parent_class = internal global i8* null, align 8
@GimpScaleTool_private_offset = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"keep-aspect\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"unit\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"xresolution\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"yresolution\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"notify\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"constrain\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"undo-type\04Scale to %d x %d\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"Scaling\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_scale_tool_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_scale_tool_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_scale_tool_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_transform_tool_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 344, void (i8*, i8*)* bitcast (void (i8*)* @gimp_scale_tool_class_intern_init to void (i8*, i8*)*), i32 800, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpScaleTool*)* @gimp_scale_tool_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_scale_tool_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_scale_tool_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_transform_tool_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_scale_tool_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_scale_tool_parent_class, align 8
  %1 = load i32, i32* @GimpScaleTool_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpScaleTool_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpScaleToolClass*
  call void @gimp_scale_tool_class_init(%struct._GimpScaleToolClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_scale_tool_init(%struct._GimpScaleTool* %scale_tool) #3 {
entry:
  %scale_tool.addr = alloca %struct._GimpScaleTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %tr_tool = alloca %struct._GimpTransformTool*, align 8
  store %struct._GimpScaleTool* %scale_tool, %struct._GimpScaleTool** %scale_tool.addr, align 8
  %0 = load %struct._GimpScaleTool*, %struct._GimpScaleTool** %scale_tool.addr, align 8
  %1 = bitcast %struct._GimpScaleTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpScaleTool*, %struct._GimpScaleTool** %scale_tool.addr, align 8
  %4 = bitcast %struct._GimpScaleTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_transform_tool_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTransformTool*
  store %struct._GimpTransformTool* %5, %struct._GimpTransformTool** %tr_tool, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %6, i32 0, i32 3
  %7 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl* %7, i32 14)
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0)) #7
  %8 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %progress_text = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %8, i32 0, i32 32
  store i8* %call4, i8** %progress_text, align 8
  %9 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %use_grid = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %9, i32 0, i32 27
  store i32 1, i32* %use_grid, align 4
  %10 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %use_handles = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %10, i32 0, i32 28
  store i32 1, i32* %use_handles, align 4
  %11 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %use_center = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %11, i32 0, i32 29
  store i32 1, i32* %use_center, align 4
  %12 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %use_mid_handles = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %12, i32 0, i32 30
  store i32 1, i32* %use_mid_handles, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_scale_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, i8* %data) #3 {
entry:
  %callback.addr = alloca void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  %call = call i64 @gimp_scale_tool_get_type() #6
  %call1 = call i64 @gimp_transform_options_get_type() #6
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)) #7
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i32 0, i32 0)) #7
  %1 = load i8*, i8** %data.addr, align 8
  call void %0(i64 %call, i64 %call1, %struct._GtkWidget* (%struct._GimpToolOptions*)* @gimp_transform_options_gui, i32 128, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i8* %call2, i8* %call3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* %1)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_transform_options_get_type() #2

declare %struct._GtkWidget* @gimp_transform_options_gui(%struct._GimpToolOptions*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_scale_tool_class_init(%struct._GimpScaleToolClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpScaleToolClass*, align 8
  %trans_class = alloca %struct._GimpTransformToolClass*, align 8
  store %struct._GimpScaleToolClass* %klass, %struct._GimpScaleToolClass** %klass.addr, align 8
  %0 = load %struct._GimpScaleToolClass*, %struct._GimpScaleToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpScaleToolClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_transform_tool_get_type() #6
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpTransformToolClass*
  store %struct._GimpTransformToolClass* %2, %struct._GimpTransformToolClass** %trans_class, align 8
  %3 = load %struct._GimpTransformToolClass*, %struct._GimpTransformToolClass** %trans_class, align 8
  %dialog = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %3, i32 0, i32 1
  store void (%struct._GimpTransformTool*)* @gimp_scale_tool_dialog, void (%struct._GimpTransformTool*)** %dialog, align 8
  %4 = load %struct._GimpTransformToolClass*, %struct._GimpTransformToolClass** %trans_class, align 8
  %dialog_update = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %4, i32 0, i32 2
  store void (%struct._GimpTransformTool*)* @gimp_scale_tool_dialog_update, void (%struct._GimpTransformTool*)** %dialog_update, align 8
  %5 = load %struct._GimpTransformToolClass*, %struct._GimpTransformToolClass** %trans_class, align 8
  %prepare = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %5, i32 0, i32 3
  store void (%struct._GimpTransformTool*)* @gimp_scale_tool_prepare, void (%struct._GimpTransformTool*)** %prepare, align 8
  %6 = load %struct._GimpTransformToolClass*, %struct._GimpTransformToolClass** %trans_class, align 8
  %motion = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %6, i32 0, i32 4
  store void (%struct._GimpTransformTool*)* @gimp_scale_tool_motion, void (%struct._GimpTransformTool*)** %motion, align 8
  %7 = load %struct._GimpTransformToolClass*, %struct._GimpTransformToolClass** %trans_class, align 8
  %recalc_matrix = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %7, i32 0, i32 5
  store void (%struct._GimpTransformTool*)* @gimp_scale_tool_recalc_matrix, void (%struct._GimpTransformTool*)** %recalc_matrix, align 8
  %8 = load %struct._GimpTransformToolClass*, %struct._GimpTransformToolClass** %trans_class, align 8
  %get_undo_desc = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %8, i32 0, i32 6
  store i8* (%struct._GimpTransformTool*)* @gimp_scale_tool_get_undo_desc, i8* (%struct._GimpTransformTool*)** %get_undo_desc, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_scale_tool_dialog(%struct._GimpTransformTool* %tr_tool) #3 {
entry:
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_scale_tool_dialog_update(%struct._GimpTransformTool* %tr_tool) #3 {
entry:
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  %options = alloca %struct._GimpTransformOptions*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %0 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %1 = bitcast %struct._GimpTransformTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  %call2 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %2)
  %3 = bitcast %struct._GimpToolOptions* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_transform_options_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpTransformOptions*
  store %struct._GimpTransformOptions* %4, %struct._GimpTransformOptions** %options, align 8
  %5 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %5, i32 0, i32 23
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* %trans_info, i32 0, i64 2
  %6 = load double, double* %arrayidx, align 8
  %7 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info5 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %7, i32 0, i32 23
  %arrayidx6 = getelementptr inbounds [8 x double], [8 x double]* %trans_info5, i32 0, i64 0
  %8 = load double, double* %arrayidx6, align 8
  %sub = fsub double %6, %8
  %add = fadd double %sub, 5.000000e-01
  %conv = fptosi double %add to i32
  store i32 %conv, i32* %width, align 4
  %9 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info7 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %9, i32 0, i32 23
  %arrayidx8 = getelementptr inbounds [8 x double], [8 x double]* %trans_info7, i32 0, i64 3
  %10 = load double, double* %arrayidx8, align 8
  %11 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info9 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %11, i32 0, i32 23
  %arrayidx10 = getelementptr inbounds [8 x double], [8 x double]* %trans_info9, i32 0, i64 1
  %12 = load double, double* %arrayidx10, align 8
  %sub11 = fsub double %10, %12
  %add12 = fadd double %sub11, 5.000000e-01
  %conv13 = fptosi double %add12 to i32
  store i32 %conv13, i32* %height, align 4
  %13 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %14 = bitcast %struct._GimpTransformTool* %13 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_scale_tool_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call14)
  %15 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpScaleTool*
  %box = getelementptr inbounds %struct._GimpScaleTool, %struct._GimpScaleTool* %15, i32 0, i32 1
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %17 = bitcast %struct._GtkWidget* %16 to i8*
  %18 = load i32, i32* %width, align 4
  %19 = load i32, i32* %height, align 4
  %20 = load %struct._GimpTransformOptions*, %struct._GimpTransformOptions** %options, align 8
  %constrain = getelementptr inbounds %struct._GimpTransformOptions, %struct._GimpTransformOptions* %20, i32 0, i32 10
  %21 = load i32, i32* %constrain, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i32 %21, i8* null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_scale_tool_prepare(%struct._GimpTransformTool* %tr_tool) #3 {
entry:
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  %scale = alloca %struct._GimpScaleTool*, align 8
  %options = alloca %struct._GimpTransformOptions*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %0 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %1 = bitcast %struct._GimpTransformTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_scale_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpScaleTool*
  store %struct._GimpScaleTool* %2, %struct._GimpScaleTool** %scale, align 8
  %3 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %4 = bitcast %struct._GimpTransformTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_transform_options_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpTransformOptions*
  store %struct._GimpTransformOptions* %7, %struct._GimpTransformOptions** %options, align 8
  %8 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %9 = bitcast %struct._GimpTransformTool* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_tool_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpTool*
  %display9 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %10, i32 0, i32 4
  %11 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display9, align 8
  store %struct._GimpDisplay* %11, %struct._GimpDisplay** %display, align 8
  %12 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %12, i32 0, i32 5
  %13 = load i32, i32* %x1, align 4
  %conv = sitofp i32 %13 to double
  %14 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %14, i32 0, i32 23
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* %trans_info, i32 0, i64 0
  store double %conv, double* %arrayidx, align 8
  %15 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %y1 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %15, i32 0, i32 6
  %16 = load i32, i32* %y1, align 4
  %conv10 = sitofp i32 %16 to double
  %17 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info11 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %17, i32 0, i32 23
  %arrayidx12 = getelementptr inbounds [8 x double], [8 x double]* %trans_info11, i32 0, i64 1
  store double %conv10, double* %arrayidx12, align 8
  %18 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %18, i32 0, i32 7
  %19 = load i32, i32* %x2, align 4
  %conv13 = sitofp i32 %19 to double
  %20 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info14 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %20, i32 0, i32 23
  %arrayidx15 = getelementptr inbounds [8 x double], [8 x double]* %trans_info14, i32 0, i64 2
  store double %conv13, double* %arrayidx15, align 8
  %21 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %21, i32 0, i32 8
  %22 = load i32, i32* %y2, align 4
  %conv16 = sitofp i32 %22 to double
  %23 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info17 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %23, i32 0, i32 23
  %arrayidx18 = getelementptr inbounds [8 x double], [8 x double]* %trans_info17, i32 0, i64 3
  store double %conv16, double* %arrayidx18, align 8
  %24 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call19 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %24)
  call void @gimp_image_get_resolution(%struct._GimpImage* %call19, double* %xres, double* %yres)
  %25 = load %struct._GimpScaleTool*, %struct._GimpScaleTool** %scale, align 8
  %box = getelementptr inbounds %struct._GimpScaleTool, %struct._GimpScaleTool* %25, i32 0, i32 1
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %tobool = icmp ne %struct._GtkWidget* %26, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %27 = load %struct._GimpScaleTool*, %struct._GimpScaleTool** %scale, align 8
  %box20 = getelementptr inbounds %struct._GimpScaleTool, %struct._GimpScaleTool* %27, i32 0, i32 1
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %box20, align 8
  %29 = bitcast %struct._GtkWidget* %28 to i8*
  %30 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %31 = bitcast %struct._GimpTransformTool* %30 to i8*
  %call21 = call i32 @g_signal_handlers_disconnect_matched(i8* %29, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GParamSpec*, %struct._GimpTransformTool*)* @gimp_scale_tool_size_notify to i8*), i8* %31)
  %32 = load %struct._GimpScaleTool*, %struct._GimpScaleTool** %scale, align 8
  %box22 = getelementptr inbounds %struct._GimpScaleTool, %struct._GimpScaleTool* %32, i32 0, i32 1
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %box22, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %33)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call23 = call i64 @gimp_size_box_get_type() #6
  %34 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %x224 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %34, i32 0, i32 7
  %35 = load i32, i32* %x224, align 4
  %36 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %x125 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %36, i32 0, i32 5
  %37 = load i32, i32* %x125, align 4
  %sub = sub nsw i32 %35, %37
  %38 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %y226 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %38, i32 0, i32 8
  %39 = load i32, i32* %y226, align 4
  %40 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %y127 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %40, i32 0, i32 6
  %41 = load i32, i32* %y127, align 4
  %sub28 = sub nsw i32 %39, %41
  %42 = load %struct._GimpTransformOptions*, %struct._GimpTransformOptions** %options, align 8
  %constrain = getelementptr inbounds %struct._GimpTransformOptions, %struct._GimpTransformOptions* %42, i32 0, i32 10
  %43 = load i32, i32* %constrain, align 4
  %44 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call29 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %44)
  %unit = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %call29, i32 0, i32 10
  %45 = load i32, i32* %unit, align 4
  %46 = load double, double* %xres, align 8
  %47 = load double, double* %yres, align 8
  %call30 = call i8* (i64, i8*, ...) @g_object_new(i64 %call23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 %sub, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 %sub28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i32 %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), double %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), double %47, i8* null)
  %48 = bitcast i8* %call30 to %struct._GtkWidget*
  %49 = load %struct._GimpScaleTool*, %struct._GimpScaleTool** %scale, align 8
  %box31 = getelementptr inbounds %struct._GimpScaleTool, %struct._GimpScaleTool* %49, i32 0, i32 1
  store %struct._GtkWidget* %48, %struct._GtkWidget** %box31, align 8
  %50 = load %struct._GimpScaleTool*, %struct._GimpScaleTool** %scale, align 8
  %box32 = getelementptr inbounds %struct._GimpScaleTool, %struct._GimpScaleTool* %50, i32 0, i32 1
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %box32, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_container_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call33)
  %53 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %53, i32 6)
  %54 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %dialog = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %54, i32 0, i32 33
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_dialog_get_type() #6
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call35)
  %57 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkDialog*
  %call37 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %57)
  %58 = bitcast %struct._GtkWidget* %call37 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_box_get_type() #6
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call38)
  %59 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkBox*
  %60 = load %struct._GimpScaleTool*, %struct._GimpScaleTool** %scale, align 8
  %box40 = getelementptr inbounds %struct._GimpScaleTool, %struct._GimpScaleTool* %60, i32 0, i32 1
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %box40, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %59, %struct._GtkWidget* %61, i32 0, i32 0, i32 0)
  %62 = load %struct._GimpScaleTool*, %struct._GimpScaleTool** %scale, align 8
  %box41 = getelementptr inbounds %struct._GimpScaleTool, %struct._GimpScaleTool* %62, i32 0, i32 1
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %box41, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %63)
  %64 = load %struct._GimpScaleTool*, %struct._GimpScaleTool** %scale, align 8
  %box42 = getelementptr inbounds %struct._GimpScaleTool, %struct._GimpScaleTool* %64, i32 0, i32 1
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %box42, align 8
  %66 = bitcast %struct._GtkWidget* %65 to i8*
  %67 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %68 = bitcast %struct._GimpTransformTool* %67 to i8*
  %call43 = call i64 @g_signal_connect_data(i8* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GParamSpec*, %struct._GimpTransformTool*)* @gimp_scale_tool_size_notify to void ()*), i8* %68, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_scale_tool_motion(%struct._GimpTransformTool* %tr_tool) #3 {
entry:
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  %options = alloca %struct._GimpTransformOptions*, align 8
  %x1 = alloca double*, align 8
  %y1 = alloca double*, align 8
  %x2 = alloca double*, align 8
  %y2 = alloca double*, align 8
  %dir_x = alloca i32, align 4
  %dir_y = alloca i32, align 4
  %diff_x = alloca double, align 8
  %diff_y = alloca double, align 8
  %h = alloca double, align 8
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %0 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %1 = bitcast %struct._GimpTransformTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  %call2 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %2)
  %3 = bitcast %struct._GimpToolOptions* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_transform_options_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpTransformOptions*
  store %struct._GimpTransformOptions* %4, %struct._GimpTransformOptions** %options, align 8
  %5 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %curx = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %5, i32 0, i32 1
  %6 = load double, double* %curx, align 8
  %7 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %lastx = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %7, i32 0, i32 3
  %8 = load double, double* %lastx, align 8
  %sub = fsub double %6, %8
  store double %sub, double* %diff_x, align 8
  %9 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %cury = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %9, i32 0, i32 2
  %10 = load double, double* %cury, align 8
  %11 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %lasty = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %11, i32 0, i32 4
  %12 = load double, double* %lasty, align 8
  %sub5 = fsub double %10, %12
  store double %sub5, double* %diff_y, align 8
  %13 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %function = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %13, i32 0, i32 26
  %14 = load i32, i32* %function, align 4
  switch i32 %14, label %sw.default [
    i32 6, label %sw.bb
    i32 2, label %sw.bb.6
    i32 8, label %sw.bb.13
    i32 3, label %sw.bb.14
    i32 9, label %sw.bb.23
    i32 4, label %sw.bb.24
    i32 7, label %sw.bb.33
    i32 5, label %sw.bb.34
    i32 10, label %sw.bb.43
  ]

sw.bb:                                            ; preds = %entry
  store double 0.000000e+00, double* %diff_x, align 8
  br label %sw.bb.6

sw.bb.6:                                          ; preds = %entry, %sw.bb
  %15 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %15, i32 0, i32 23
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* %trans_info, i32 0, i64 0
  store double* %arrayidx, double** %x1, align 8
  %16 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info7 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %16, i32 0, i32 23
  %arrayidx8 = getelementptr inbounds [8 x double], [8 x double]* %trans_info7, i32 0, i64 1
  store double* %arrayidx8, double** %y1, align 8
  %17 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info9 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %17, i32 0, i32 23
  %arrayidx10 = getelementptr inbounds [8 x double], [8 x double]* %trans_info9, i32 0, i64 2
  store double* %arrayidx10, double** %x2, align 8
  %18 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info11 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %18, i32 0, i32 23
  %arrayidx12 = getelementptr inbounds [8 x double], [8 x double]* %trans_info11, i32 0, i64 3
  store double* %arrayidx12, double** %y2, align 8
  store i32 1, i32* %dir_y, align 4
  store i32 1, i32* %dir_x, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  store double 0.000000e+00, double* %diff_y, align 8
  br label %sw.bb.14

sw.bb.14:                                         ; preds = %entry, %sw.bb.13
  %19 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info15 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %19, i32 0, i32 23
  %arrayidx16 = getelementptr inbounds [8 x double], [8 x double]* %trans_info15, i32 0, i64 2
  store double* %arrayidx16, double** %x1, align 8
  %20 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info17 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %20, i32 0, i32 23
  %arrayidx18 = getelementptr inbounds [8 x double], [8 x double]* %trans_info17, i32 0, i64 1
  store double* %arrayidx18, double** %y1, align 8
  %21 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info19 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %21, i32 0, i32 23
  %arrayidx20 = getelementptr inbounds [8 x double], [8 x double]* %trans_info19, i32 0, i64 0
  store double* %arrayidx20, double** %x2, align 8
  %22 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info21 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %22, i32 0, i32 23
  %arrayidx22 = getelementptr inbounds [8 x double], [8 x double]* %trans_info21, i32 0, i64 3
  store double* %arrayidx22, double** %y2, align 8
  store i32 -1, i32* %dir_x, align 4
  store i32 1, i32* %dir_y, align 4
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry
  store double 0.000000e+00, double* %diff_y, align 8
  br label %sw.bb.24

sw.bb.24:                                         ; preds = %entry, %sw.bb.23
  %23 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info25 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %23, i32 0, i32 23
  %arrayidx26 = getelementptr inbounds [8 x double], [8 x double]* %trans_info25, i32 0, i64 0
  store double* %arrayidx26, double** %x1, align 8
  %24 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info27 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %24, i32 0, i32 23
  %arrayidx28 = getelementptr inbounds [8 x double], [8 x double]* %trans_info27, i32 0, i64 3
  store double* %arrayidx28, double** %y1, align 8
  %25 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info29 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %25, i32 0, i32 23
  %arrayidx30 = getelementptr inbounds [8 x double], [8 x double]* %trans_info29, i32 0, i64 2
  store double* %arrayidx30, double** %x2, align 8
  %26 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info31 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %26, i32 0, i32 23
  %arrayidx32 = getelementptr inbounds [8 x double], [8 x double]* %trans_info31, i32 0, i64 1
  store double* %arrayidx32, double** %y2, align 8
  store i32 1, i32* %dir_x, align 4
  store i32 -1, i32* %dir_y, align 4
  br label %sw.epilog

sw.bb.33:                                         ; preds = %entry
  store double 0.000000e+00, double* %diff_x, align 8
  br label %sw.bb.34

sw.bb.34:                                         ; preds = %entry, %sw.bb.33
  %27 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info35 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %27, i32 0, i32 23
  %arrayidx36 = getelementptr inbounds [8 x double], [8 x double]* %trans_info35, i32 0, i64 2
  store double* %arrayidx36, double** %x1, align 8
  %28 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info37 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %28, i32 0, i32 23
  %arrayidx38 = getelementptr inbounds [8 x double], [8 x double]* %trans_info37, i32 0, i64 3
  store double* %arrayidx38, double** %y1, align 8
  %29 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info39 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %29, i32 0, i32 23
  %arrayidx40 = getelementptr inbounds [8 x double], [8 x double]* %trans_info39, i32 0, i64 0
  store double* %arrayidx40, double** %x2, align 8
  %30 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info41 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %30, i32 0, i32 23
  %arrayidx42 = getelementptr inbounds [8 x double], [8 x double]* %trans_info41, i32 0, i64 1
  store double* %arrayidx42, double** %y2, align 8
  store i32 -1, i32* %dir_y, align 4
  store i32 -1, i32* %dir_x, align 4
  br label %sw.epilog

sw.bb.43:                                         ; preds = %entry
  %31 = load double, double* %diff_x, align 8
  %32 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info44 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %32, i32 0, i32 23
  %arrayidx45 = getelementptr inbounds [8 x double], [8 x double]* %trans_info44, i32 0, i64 0
  %33 = load double, double* %arrayidx45, align 8
  %add = fadd double %33, %31
  store double %add, double* %arrayidx45, align 8
  %34 = load double, double* %diff_y, align 8
  %35 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info46 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %35, i32 0, i32 23
  %arrayidx47 = getelementptr inbounds [8 x double], [8 x double]* %trans_info46, i32 0, i64 1
  %36 = load double, double* %arrayidx47, align 8
  %add48 = fadd double %36, %34
  store double %add48, double* %arrayidx47, align 8
  %37 = load double, double* %diff_x, align 8
  %38 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info49 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %38, i32 0, i32 23
  %arrayidx50 = getelementptr inbounds [8 x double], [8 x double]* %trans_info49, i32 0, i64 2
  %39 = load double, double* %arrayidx50, align 8
  %add51 = fadd double %39, %37
  store double %add51, double* %arrayidx50, align 8
  %40 = load double, double* %diff_y, align 8
  %41 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info52 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %41, i32 0, i32 23
  %arrayidx53 = getelementptr inbounds [8 x double], [8 x double]* %trans_info52, i32 0, i64 3
  %42 = load double, double* %arrayidx53, align 8
  %add54 = fadd double %42, %40
  store double %add54, double* %arrayidx53, align 8
  %43 = load double, double* %diff_x, align 8
  %44 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info55 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %44, i32 0, i32 23
  %arrayidx56 = getelementptr inbounds [8 x double], [8 x double]* %trans_info55, i32 0, i64 4
  %45 = load double, double* %arrayidx56, align 8
  %add57 = fadd double %45, %43
  store double %add57, double* %arrayidx56, align 8
  %46 = load double, double* %diff_y, align 8
  %47 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info58 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %47, i32 0, i32 23
  %arrayidx59 = getelementptr inbounds [8 x double], [8 x double]* %trans_info58, i32 0, i64 5
  %48 = load double, double* %arrayidx59, align 8
  %add60 = fadd double %48, %46
  store double %add60, double* %arrayidx59, align 8
  %49 = load double, double* %diff_x, align 8
  %50 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info61 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %50, i32 0, i32 23
  %arrayidx62 = getelementptr inbounds [8 x double], [8 x double]* %trans_info61, i32 0, i64 6
  %51 = load double, double* %arrayidx62, align 8
  %add63 = fadd double %51, %49
  store double %add63, double* %arrayidx62, align 8
  %52 = load double, double* %diff_y, align 8
  %53 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info64 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %53, i32 0, i32 23
  %arrayidx65 = getelementptr inbounds [8 x double], [8 x double]* %trans_info64, i32 0, i64 7
  %54 = load double, double* %arrayidx65, align 8
  %add66 = fadd double %54, %52
  store double %add66, double* %arrayidx65, align 8
  br label %if.end.112

sw.default:                                       ; preds = %entry
  br label %if.end.112

sw.epilog:                                        ; preds = %sw.bb.34, %sw.bb.24, %sw.bb.14, %sw.bb.6
  %55 = load double, double* %diff_x, align 8
  %56 = load double*, double** %x1, align 8
  %57 = load double, double* %56, align 8
  %add67 = fadd double %57, %55
  store double %add67, double* %56, align 8
  %58 = load double, double* %diff_y, align 8
  %59 = load double*, double** %y1, align 8
  %60 = load double, double* %59, align 8
  %add68 = fadd double %60, %58
  store double %add68, double* %59, align 8
  %61 = load %struct._GimpTransformOptions*, %struct._GimpTransformOptions** %options, align 8
  %constrain = getelementptr inbounds %struct._GimpTransformOptions, %struct._GimpTransformOptions* %61, i32 0, i32 10
  %62 = load i32, i32* %constrain, align 4
  %tobool = icmp ne i32 %62, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %63 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info69 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %63, i32 0, i32 23
  %arrayidx70 = getelementptr inbounds [8 x double], [8 x double]* %trans_info69, i32 0, i64 3
  %64 = load double, double* %arrayidx70, align 8
  %65 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info71 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %65, i32 0, i32 23
  %arrayidx72 = getelementptr inbounds [8 x double], [8 x double]* %trans_info71, i32 0, i64 1
  %66 = load double, double* %arrayidx72, align 8
  %sub73 = fsub double %64, %66
  store double %sub73, double* %h, align 8
  %67 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %function74 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %67, i32 0, i32 26
  %68 = load i32, i32* %function74, align 4
  switch i32 %68, label %sw.default.89 [
    i32 2, label %sw.bb.75
    i32 4, label %sw.bb.75
    i32 3, label %sw.bb.81
    i32 5, label %sw.bb.81
  ]

sw.bb.75:                                         ; preds = %if.then, %if.then
  %69 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info76 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %69, i32 0, i32 23
  %arrayidx77 = getelementptr inbounds [8 x double], [8 x double]* %trans_info76, i32 0, i64 2
  %70 = load double, double* %arrayidx77, align 8
  %71 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %aspect = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %71, i32 0, i32 11
  %72 = load double, double* %aspect, align 8
  %73 = load double, double* %h, align 8
  %mul = fmul double %72, %73
  %sub78 = fsub double %70, %mul
  %74 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info79 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %74, i32 0, i32 23
  %arrayidx80 = getelementptr inbounds [8 x double], [8 x double]* %trans_info79, i32 0, i64 0
  store double %sub78, double* %arrayidx80, align 8
  br label %sw.epilog.90

sw.bb.81:                                         ; preds = %if.then, %if.then
  %75 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info82 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %75, i32 0, i32 23
  %arrayidx83 = getelementptr inbounds [8 x double], [8 x double]* %trans_info82, i32 0, i64 0
  %76 = load double, double* %arrayidx83, align 8
  %77 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %aspect84 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %77, i32 0, i32 11
  %78 = load double, double* %aspect84, align 8
  %79 = load double, double* %h, align 8
  %mul85 = fmul double %78, %79
  %add86 = fadd double %76, %mul85
  %80 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info87 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %80, i32 0, i32 23
  %arrayidx88 = getelementptr inbounds [8 x double], [8 x double]* %trans_info87, i32 0, i64 2
  store double %add86, double* %arrayidx88, align 8
  br label %sw.epilog.90

sw.default.89:                                    ; preds = %if.then
  br label %sw.epilog.90

sw.epilog.90:                                     ; preds = %sw.default.89, %sw.bb.81, %sw.bb.75
  br label %if.end

if.end:                                           ; preds = %sw.epilog.90, %sw.epilog
  %81 = load i32, i32* %dir_x, align 4
  %cmp = icmp sgt i32 %81, 0
  br i1 %cmp, label %if.then.91, label %if.else

if.then.91:                                       ; preds = %if.end
  %82 = load double*, double** %x1, align 8
  %83 = load double, double* %82, align 8
  %84 = load double*, double** %x2, align 8
  %85 = load double, double* %84, align 8
  %cmp92 = fcmp oge double %83, %85
  br i1 %cmp92, label %if.then.93, label %if.end.95

if.then.93:                                       ; preds = %if.then.91
  %86 = load double*, double** %x2, align 8
  %87 = load double, double* %86, align 8
  %sub94 = fsub double %87, 1.000000e+00
  %88 = load double*, double** %x1, align 8
  store double %sub94, double* %88, align 8
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.93, %if.then.91
  br label %if.end.100

if.else:                                          ; preds = %if.end
  %89 = load double*, double** %x1, align 8
  %90 = load double, double* %89, align 8
  %91 = load double*, double** %x2, align 8
  %92 = load double, double* %91, align 8
  %cmp96 = fcmp ole double %90, %92
  br i1 %cmp96, label %if.then.97, label %if.end.99

if.then.97:                                       ; preds = %if.else
  %93 = load double*, double** %x2, align 8
  %94 = load double, double* %93, align 8
  %add98 = fadd double %94, 1.000000e+00
  %95 = load double*, double** %x1, align 8
  store double %add98, double* %95, align 8
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.97, %if.else
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.end.95
  %96 = load i32, i32* %dir_y, align 4
  %cmp101 = icmp sgt i32 %96, 0
  br i1 %cmp101, label %if.then.102, label %if.else.107

if.then.102:                                      ; preds = %if.end.100
  %97 = load double*, double** %y1, align 8
  %98 = load double, double* %97, align 8
  %99 = load double*, double** %y2, align 8
  %100 = load double, double* %99, align 8
  %cmp103 = fcmp oge double %98, %100
  br i1 %cmp103, label %if.then.104, label %if.end.106

if.then.104:                                      ; preds = %if.then.102
  %101 = load double*, double** %y2, align 8
  %102 = load double, double* %101, align 8
  %sub105 = fsub double %102, 1.000000e+00
  %103 = load double*, double** %y1, align 8
  store double %sub105, double* %103, align 8
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.104, %if.then.102
  br label %if.end.112

if.else.107:                                      ; preds = %if.end.100
  %104 = load double*, double** %y1, align 8
  %105 = load double, double* %104, align 8
  %106 = load double*, double** %y2, align 8
  %107 = load double, double* %106, align 8
  %cmp108 = fcmp ole double %105, %107
  br i1 %cmp108, label %if.then.109, label %if.end.111

if.then.109:                                      ; preds = %if.else.107
  %108 = load double*, double** %y2, align 8
  %109 = load double, double* %108, align 8
  %add110 = fadd double %109, 1.000000e+00
  %110 = load double*, double** %y1, align 8
  store double %add110, double* %110, align 8
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.109, %if.else.107
  br label %if.end.112

if.end.112:                                       ; preds = %sw.bb.43, %sw.default, %if.end.111, %if.end.106
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_scale_tool_recalc_matrix(%struct._GimpTransformTool* %tr_tool) #3 {
entry:
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %0 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %transform = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %0, i32 0, i32 22
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %transform)
  %1 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %transform1 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %1, i32 0, i32 22
  %2 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %2, i32 0, i32 5
  %3 = load i32, i32* %x1, align 4
  %4 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %y1 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %4, i32 0, i32 6
  %5 = load i32, i32* %y1, align 4
  %6 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %6, i32 0, i32 7
  %7 = load i32, i32* %x2, align 4
  %8 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %x12 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %8, i32 0, i32 5
  %9 = load i32, i32* %x12, align 4
  %sub = sub nsw i32 %7, %9
  %10 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %10, i32 0, i32 8
  %11 = load i32, i32* %y2, align 4
  %12 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %y13 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %12, i32 0, i32 6
  %13 = load i32, i32* %y13, align 4
  %sub4 = sub nsw i32 %11, %13
  %14 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %14, i32 0, i32 23
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* %trans_info, i32 0, i64 0
  %15 = load double, double* %arrayidx, align 8
  %16 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info5 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %16, i32 0, i32 23
  %arrayidx6 = getelementptr inbounds [8 x double], [8 x double]* %trans_info5, i32 0, i64 1
  %17 = load double, double* %arrayidx6, align 8
  %18 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info7 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %18, i32 0, i32 23
  %arrayidx8 = getelementptr inbounds [8 x double], [8 x double]* %trans_info7, i32 0, i64 2
  %19 = load double, double* %arrayidx8, align 8
  %20 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info9 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %20, i32 0, i32 23
  %arrayidx10 = getelementptr inbounds [8 x double], [8 x double]* %trans_info9, i32 0, i64 0
  %21 = load double, double* %arrayidx10, align 8
  %sub11 = fsub double %19, %21
  %22 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info12 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %22, i32 0, i32 23
  %arrayidx13 = getelementptr inbounds [8 x double], [8 x double]* %trans_info12, i32 0, i64 3
  %23 = load double, double* %arrayidx13, align 8
  %24 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info14 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %24, i32 0, i32 23
  %arrayidx15 = getelementptr inbounds [8 x double], [8 x double]* %trans_info14, i32 0, i64 1
  %25 = load double, double* %arrayidx15, align 8
  %sub16 = fsub double %23, %25
  call void @gimp_transform_matrix_scale(%struct._GimpMatrix3* %transform1, i32 %3, i32 %5, i32 %sub, i32 %sub4, double %15, double %17, double %sub11, double %sub16)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_scale_tool_get_undo_desc(%struct._GimpTransformTool* %tr_tool) #3 {
entry:
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %0 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %0, i32 0, i32 23
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* %trans_info, i32 0, i64 2
  %1 = load double, double* %arrayidx, align 8
  %2 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info1 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %2, i32 0, i32 23
  %arrayidx2 = getelementptr inbounds [8 x double], [8 x double]* %trans_info1, i32 0, i64 0
  %3 = load double, double* %arrayidx2, align 8
  %sub = fsub double %1, %3
  %add = fadd double %sub, 5.000000e-01
  %conv = fptosi double %add to i32
  store i32 %conv, i32* %width, align 4
  %4 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info3 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %4, i32 0, i32 23
  %arrayidx4 = getelementptr inbounds [8 x double], [8 x double]* %trans_info3, i32 0, i64 3
  %5 = load double, double* %arrayidx4, align 8
  %6 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info5 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %6, i32 0, i32 23
  %arrayidx6 = getelementptr inbounds [8 x double], [8 x double]* %trans_info5, i32 0, i64 1
  %7 = load double, double* %arrayidx6, align 8
  %sub7 = fsub double %5, %7
  %add8 = fadd double %sub7, 5.000000e-01
  %conv9 = fptosi double %add8 to i32
  store i32 %conv9, i32* %height, align 4
  %call = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i32 0, i32 0), i64 10)
  %8 = load i32, i32* %width, align 4
  %9 = load i32, i32* %height, align 4
  %call10 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call, i32 %8, i32 %9)
  ret i8* %call10
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

declare void @g_object_set(i8*, i8*, ...) #1

declare void @gimp_image_get_resolution(%struct._GimpImage*, double*, double*) #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_scale_tool_size_notify(%struct._GtkWidget* %box, %struct._GParamSpec* %pspec, %struct._GimpTransformTool* %tr_tool) #3 {
entry:
  %box.addr = alloca %struct._GtkWidget*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  %options = alloca %struct._GimpTransformOptions*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %old_width = alloca i32, align 4
  %old_height = alloca i32, align 4
  %constrain = alloca i32, align 4
  %width47 = alloca i32, align 4
  %height48 = alloca i32, align 4
  store %struct._GtkWidget* %box, %struct._GtkWidget** %box.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %0 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %1 = bitcast %struct._GimpTransformTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  %call2 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %2)
  %3 = bitcast %struct._GimpToolOptions* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_transform_options_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpTransformOptions*
  store %struct._GimpTransformOptions* %4, %struct._GimpTransformOptions** %options, align 8
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %5, i32 0, i32 1
  %6 = load i8*, i8** %name, align 8
  %call5 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0)) #8
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name6 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %7, i32 0, i32 1
  %8 = load i8*, i8** %name6, align 8
  %call7 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0)) #8
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %box.addr, align 8
  %10 = bitcast %struct._GtkWidget* %9 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32* %width, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32* %height, i8* null)
  %11 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %11, i32 0, i32 23
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* %trans_info, i32 0, i64 2
  %12 = load double, double* %arrayidx, align 8
  %13 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info9 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %13, i32 0, i32 23
  %arrayidx10 = getelementptr inbounds [8 x double], [8 x double]* %trans_info9, i32 0, i64 0
  %14 = load double, double* %arrayidx10, align 8
  %sub = fsub double %12, %14
  %add = fadd double %sub, 5.000000e-01
  %conv = fptosi double %add to i32
  store i32 %conv, i32* %old_width, align 4
  %15 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info11 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %15, i32 0, i32 23
  %arrayidx12 = getelementptr inbounds [8 x double], [8 x double]* %trans_info11, i32 0, i64 3
  %16 = load double, double* %arrayidx12, align 8
  %17 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info13 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %17, i32 0, i32 23
  %arrayidx14 = getelementptr inbounds [8 x double], [8 x double]* %trans_info13, i32 0, i64 1
  %18 = load double, double* %arrayidx14, align 8
  %sub15 = fsub double %16, %18
  %add16 = fadd double %sub15, 5.000000e-01
  %conv17 = fptosi double %add16 to i32
  store i32 %conv17, i32* %old_height, align 4
  %19 = load i32, i32* %width, align 4
  %20 = load i32, i32* %old_width, align 4
  %cmp = icmp ne i32 %19, %20
  br i1 %cmp, label %if.then.22, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %if.then
  %21 = load i32, i32* %height, align 4
  %22 = load i32, i32* %old_height, align 4
  %cmp20 = icmp ne i32 %21, %22
  br i1 %cmp20, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %lor.lhs.false.19, %if.then
  %23 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %24 = bitcast %struct._GimpTransformTool* %23 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_draw_tool_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call23)
  %25 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %25)
  %26 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info25 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %26, i32 0, i32 23
  %arrayidx26 = getelementptr inbounds [8 x double], [8 x double]* %trans_info25, i32 0, i64 0
  %27 = load double, double* %arrayidx26, align 8
  %28 = load i32, i32* %width, align 4
  %conv27 = sitofp i32 %28 to double
  %add28 = fadd double %27, %conv27
  %29 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info29 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %29, i32 0, i32 23
  %arrayidx30 = getelementptr inbounds [8 x double], [8 x double]* %trans_info29, i32 0, i64 2
  store double %add28, double* %arrayidx30, align 8
  %30 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info31 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %30, i32 0, i32 23
  %arrayidx32 = getelementptr inbounds [8 x double], [8 x double]* %trans_info31, i32 0, i64 1
  %31 = load double, double* %arrayidx32, align 8
  %32 = load i32, i32* %height, align 4
  %conv33 = sitofp i32 %32 to double
  %add34 = fadd double %31, %conv33
  %33 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info35 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %33, i32 0, i32 23
  %arrayidx36 = getelementptr inbounds [8 x double], [8 x double]* %trans_info35, i32 0, i64 3
  store double %add34, double* %arrayidx36, align 8
  %34 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  call void @gimp_transform_tool_recalc_matrix(%struct._GimpTransformTool* %34)
  %35 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %36 = bitcast %struct._GimpTransformTool* %35 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_draw_tool_get_type() #6
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call37)
  %37 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %37)
  br label %if.end

if.end:                                           ; preds = %if.then.22, %lor.lhs.false.19
  br label %if.end.53

if.else:                                          ; preds = %lor.lhs.false
  %38 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name39 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %38, i32 0, i32 1
  %39 = load i8*, i8** %name39, align 8
  %call40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0)) #8
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.end.52, label %if.then.42

if.then.42:                                       ; preds = %if.else
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %box.addr, align 8
  %41 = bitcast %struct._GtkWidget* %40 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i32* %constrain, i8* null)
  %42 = load i32, i32* %constrain, align 4
  %43 = load %struct._GimpTransformOptions*, %struct._GimpTransformOptions** %options, align 8
  %constrain43 = getelementptr inbounds %struct._GimpTransformOptions, %struct._GimpTransformOptions* %43, i32 0, i32 10
  %44 = load i32, i32* %constrain43, align 4
  %cmp44 = icmp ne i32 %42, %44
  br i1 %cmp44, label %if.then.46, label %if.end.51

if.then.46:                                       ; preds = %if.then.42
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %box.addr, align 8
  %46 = bitcast %struct._GtkWidget* %45 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32* %width47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32* %height48, i8* null)
  %47 = load i32, i32* %width47, align 4
  %conv49 = sitofp i32 %47 to double
  %48 = load i32, i32* %height48, align 4
  %conv50 = sitofp i32 %48 to double
  %div = fdiv double %conv49, %conv50
  %49 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %aspect = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %49, i32 0, i32 11
  store double %div, double* %aspect, align 8
  %50 = load %struct._GimpTransformOptions*, %struct._GimpTransformOptions** %options, align 8
  %51 = bitcast %struct._GimpTransformOptions* %50 to i8*
  %52 = load i32, i32* %constrain, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i32 %52, i8* null)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.46, %if.then.42
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.else
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.end
  ret void
}

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_size_box_get_type() #2

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare void @g_object_get(i8*, i8*, ...) #1

declare void @gimp_draw_tool_pause(%struct._GimpDrawTool*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_draw_tool_get_type() #2

declare void @gimp_transform_tool_recalc_matrix(%struct._GimpTransformTool*) #1

declare void @gimp_draw_tool_resume(%struct._GimpDrawTool*) #1

declare void @gimp_matrix3_identity(%struct._GimpMatrix3*) #1

declare void @gimp_transform_matrix_scale(%struct._GimpMatrix3*, i32, i32, i32, i32, double, double, double, double) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i8* @g_dpgettext(i8*, i8*, i64) #1

declare void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl*, i32) #1

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
