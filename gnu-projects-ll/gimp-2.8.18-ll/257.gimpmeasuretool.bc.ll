; ModuleID = './app/tools/gimpmeasuretool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpMeasureToolClass = type { %struct._GimpDrawToolClass }
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
%struct._GimpMeasureTool = type { %struct._GimpDrawTool, i32, double, double, i32, i32, i32, i32, [3 x i32], [3 x i32], double, double, i32, [3 x %struct._GimpCanvasItem*], %struct._GtkWidget*, [2 x %struct._GtkWidget*], [2 x %struct._GtkWidget*], [2 x %struct._GtkWidget*], [2 x %struct._GtkWidget*], [4 x %struct._GtkWidget*] }
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
%struct._GimpMeasureOptions = type { %struct._GimpToolOptions, i32 }
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
%struct._GimpGuide = type opaque
%struct._GimpViewableDialog = type { %struct._GimpDialog, %struct._GimpContext*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpToolDialog = type { %struct._GimpViewableDialog }
%struct._GimpCanvasGroup = type { %struct._GimpCanvasItem }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkLabelSelectionInfo = type opaque

@gimp_measure_tool_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"GimpMeasureTool\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"gimp-measure-tool\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Measure\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Measure Tool: Measure distances and angles\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"_Measure\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"<shift>M\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"gimp-tool-measure\00", align 1
@gimp_measure_tool_parent_class = internal global i8* null, align 8
@GimpMeasureTool_private_offset = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"Add Guides\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Drag to create a line\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Measure Distances and Angles\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"gtk-close\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"Distance:\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"0.0\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"pixels\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"Angle:\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"\C2\B0\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"Width:\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"Height:\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"%.1f %s, %.2f\C2\B0 (%d \C3\97 %d)\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"%%.%df %s, %%.2f\C2\B0 (%%.%df \C3\97 %%.%df)\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"%%.%df\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"%.1f\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"%.2f\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.25 = private unnamed_addr constant [46 x i8] c"Click to place vertical and horizontal guides\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"Click to place a horizontal guide\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"Click to place a vertical guide\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"Click-Drag to add a new point\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"Click-Drag to move this point\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"Click-Drag to move all points\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_measure_tool_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_measure_tool_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_measure_tool_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_draw_tool_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 288, void (i8*, i8*)* bitcast (void (i8*)* @gimp_measure_tool_class_intern_init to void (i8*, i8*)*), i32 464, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpMeasureTool*)* @gimp_measure_tool_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_measure_tool_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_measure_tool_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_draw_tool_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_measure_tool_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_measure_tool_parent_class, align 8
  %1 = load i32, i32* @GimpMeasureTool_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpMeasureTool_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpMeasureToolClass*
  call void @gimp_measure_tool_class_init(%struct._GimpMeasureToolClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_measure_tool_init(%struct._GimpMeasureTool* %measure) #3 {
entry:
  %measure.addr = alloca %struct._GimpMeasureTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  store %struct._GimpMeasureTool* %measure, %struct._GimpMeasureTool** %measure.addr, align 8
  %0 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %1 = bitcast %struct._GimpMeasureTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #5
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
  call void @gimp_tool_control_set_precision(%struct._GimpToolControl* %6, i32 1)
  %7 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control3 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %7, i32 0, i32 3
  %8 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control3, align 8
  call void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl* %8, i32 35)
  %9 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %function = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %9, i32 0, i32 1
  store i32 0, i32* %function, align 4
  %10 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %point = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %10, i32 0, i32 6
  store i32 -1, i32* %point, align 4
  %11 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %status_help = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %11, i32 0, i32 12
  store i32 1, i32* %status_help, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_measure_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, i8* %data) #3 {
entry:
  %callback.addr = alloca void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  %call = call i64 @gimp_measure_tool_get_type() #5
  %call1 = call i64 @gimp_measure_options_get_type() #5
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)) #6
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0)) #6
  %1 = load i8*, i8** %data.addr, align 8
  call void %0(i64 %call, i64 %call1, %struct._GtkWidget* (%struct._GimpToolOptions*)* @gimp_measure_options_gui, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i8* %call2, i8* %call3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i8* %1)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_measure_options_get_type() #2

declare %struct._GtkWidget* @gimp_measure_options_gui(%struct._GimpToolOptions*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_measure_tool_class_init(%struct._GimpMeasureToolClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpMeasureToolClass*, align 8
  %tool_class = alloca %struct._GimpToolClass*, align 8
  %draw_tool_class = alloca %struct._GimpDrawToolClass*, align 8
  store %struct._GimpMeasureToolClass* %klass, %struct._GimpMeasureToolClass** %klass.addr, align 8
  %0 = load %struct._GimpMeasureToolClass*, %struct._GimpMeasureToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpMeasureToolClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpToolClass*
  store %struct._GimpToolClass* %2, %struct._GimpToolClass** %tool_class, align 8
  %3 = load %struct._GimpMeasureToolClass*, %struct._GimpMeasureToolClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpMeasureToolClass* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_draw_tool_get_type() #5
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpDrawToolClass*
  store %struct._GimpDrawToolClass* %5, %struct._GimpDrawToolClass** %draw_tool_class, align 8
  %6 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %control = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %6, i32 0, i32 4
  store void (%struct._GimpTool*, i32, %struct._GimpDisplay*)* @gimp_measure_tool_control, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)** %control, align 8
  %7 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %7, i32 0, i32 5
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_measure_tool_button_press, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_press, align 8
  %8 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_release = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %8, i32 0, i32 6
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_measure_tool_button_release, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_release, align 8
  %9 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %motion = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %9, i32 0, i32 7
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_measure_tool_motion, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %motion, align 8
  %10 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %key_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %10, i32 0, i32 8
  store i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)* @gimp_measure_tool_key_press, i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)** %key_press, align 8
  %11 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %active_modifier_key = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %11, i32 0, i32 11
  store void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_measure_tool_active_modifier_key, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)** %active_modifier_key, align 8
  %12 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %oper_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %12, i32 0, i32 12
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_measure_tool_oper_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %oper_update, align 8
  %13 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %13, i32 0, i32 13
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)* @gimp_measure_tool_cursor_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %14 = load %struct._GimpDrawToolClass*, %struct._GimpDrawToolClass** %draw_tool_class, align 8
  %draw = getelementptr inbounds %struct._GimpDrawToolClass, %struct._GimpDrawToolClass* %14, i32 0, i32 1
  store void (%struct._GimpDrawTool*)* @gimp_measure_tool_draw, void (%struct._GimpDrawTool*)** %draw, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_measure_tool_control(%struct._GimpTool* %tool, i32 %action, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %action.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %measure = alloca %struct._GimpMeasureTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %action, i32* %action.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_measure_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpMeasureTool*
  store %struct._GimpMeasureTool* %2, %struct._GimpMeasureTool** %measure, align 8
  %3 = load i32, i32* %action.addr, align 4
  switch i32 %3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry, %entry
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %4 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %dialog = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %4, i32 0, i32 14
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.2
  %6 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %dialog3 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %6, i32 0, i32 14
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog3, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.2
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end, %sw.bb
  %8 = load i8*, i8** @gimp_measure_tool_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call4 = call i64 @gimp_tool_get_type() #5
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
define internal void @gimp_measure_tool_button_press(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %press_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %press_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %measure = alloca %struct._GimpMeasureTool*, align 8
  %options = alloca %struct._GimpMeasureOptions*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %toggle_mask = alloca i32, align 4
  %create_hguide = alloca i32, align 4
  %create_vguide = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %press_type, i32* %press_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_measure_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpMeasureTool*
  store %struct._GimpMeasureTool* %2, %struct._GimpMeasureTool** %measure, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_measure_options_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpMeasureOptions*
  store %struct._GimpMeasureOptions* %7, %struct._GimpMeasureOptions** %options, align 8
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call7 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %8)
  store %struct._GimpDisplayShell* %call7, %struct._GimpDisplayShell** %shell, align 8
  %9 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call8 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %9)
  store %struct._GimpImage* %call8, %struct._GimpImage** %image, align 8
  %10 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %11 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display9 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %11, i32 0, i32 4
  %12 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display9, align 8
  %cmp = icmp ne %struct._GimpDisplay* %10, %12
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display10 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %13, i32 0, i32 4
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display10, align 8
  %tobool = icmp ne %struct._GimpDisplay* %14, null
  br i1 %tobool, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  %15 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %16 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display12 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %16, i32 0, i32 4
  %17 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display12, align 8
  call void @gimp_tool_pop_status(%struct._GimpTool* %15, %struct._GimpDisplay* %17)
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %entry
  %18 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %function = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %18, i32 0, i32 1
  store i32 0, i32* %function, align 4
  %19 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %19, i32 0, i32 0
  %20 = load double, double* %x, align 8
  %21 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %mouse_x = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %21, i32 0, i32 2
  store double %20, double* %mouse_x, align 8
  %22 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %22, i32 0, i32 1
  %23 = load double, double* %y, align 8
  %24 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %mouse_y = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %24, i32 0, i32 3
  store double %23, double* %mouse_y, align 8
  %25 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %26 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display14 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %26, i32 0, i32 4
  %27 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display14, align 8
  %cmp15 = icmp eq %struct._GimpDisplay* %25, %27
  br i1 %cmp15, label %if.then.16, label %if.end.148

if.then.16:                                       ; preds = %if.end.13
  %28 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %point = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %28, i32 0, i32 6
  %29 = load i32, i32* %point, align 4
  %cmp17 = icmp ne i32 %29, -1
  br i1 %cmp17, label %if.then.18, label %if.end.122

if.then.18:                                       ; preds = %if.then.16
  %call19 = call i32 @gimp_get_toggle_behavior_mask()
  store i32 %call19, i32* %toggle_mask, align 4
  %30 = load i32, i32* %state.addr, align 4
  %31 = load i32, i32* %toggle_mask, align 4
  %or = or i32 %31, 8
  %and = and i32 %30, %or
  %tobool20 = icmp ne i32 %and, 0
  br i1 %tobool20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.then.18
  %32 = load i32, i32* %state.addr, align 4
  %33 = load i32, i32* %toggle_mask, align 4
  %and22 = and i32 %32, %33
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.21
  %34 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %point24 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %34, i32 0, i32 6
  %35 = load i32, i32* %point24, align 4
  %idxprom = sext i32 %35 to i64
  %36 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %y25 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %36, i32 0, i32 9
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %y25, i32 0, i64 %idxprom
  %37 = load i32, i32* %arrayidx, align 4
  %38 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %point26 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %38, i32 0, i32 6
  %39 = load i32, i32* %point26, align 4
  %idxprom27 = sext i32 %39 to i64
  %40 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %y28 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %40, i32 0, i32 9
  %arrayidx29 = getelementptr inbounds [3 x i32], [3 x i32]* %y28, i32 0, i64 %idxprom27
  %41 = load i32, i32* %arrayidx29, align 4
  %42 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call30 = call i32 @gimp_image_get_height(%struct._GimpImage* %42)
  %cmp31 = icmp sgt i32 %41, %call30
  br i1 %cmp31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.rhs
  %43 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call32 = call i32 @gimp_image_get_height(%struct._GimpImage* %43)
  br label %cond.end.44

cond.false:                                       ; preds = %land.rhs
  %44 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %point33 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %44, i32 0, i32 6
  %45 = load i32, i32* %point33, align 4
  %idxprom34 = sext i32 %45 to i64
  %46 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %y35 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %46, i32 0, i32 9
  %arrayidx36 = getelementptr inbounds [3 x i32], [3 x i32]* %y35, i32 0, i64 %idxprom34
  %47 = load i32, i32* %arrayidx36, align 4
  %cmp37 = icmp slt i32 %47, 0
  br i1 %cmp37, label %cond.true.38, label %cond.false.39

cond.true.38:                                     ; preds = %cond.false
  br label %cond.end

cond.false.39:                                    ; preds = %cond.false
  %48 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %point40 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %48, i32 0, i32 6
  %49 = load i32, i32* %point40, align 4
  %idxprom41 = sext i32 %49 to i64
  %50 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %y42 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %50, i32 0, i32 9
  %arrayidx43 = getelementptr inbounds [3 x i32], [3 x i32]* %y42, i32 0, i64 %idxprom41
  %51 = load i32, i32* %arrayidx43, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.39, %cond.true.38
  %cond = phi i32 [ 0, %cond.true.38 ], [ %51, %cond.false.39 ]
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.end, %cond.true
  %cond45 = phi i32 [ %call32, %cond.true ], [ %cond, %cond.end ]
  %cmp46 = icmp eq i32 %37, %cond45
  br label %land.end

land.end:                                         ; preds = %cond.end.44, %if.then.21
  %52 = phi i1 [ false, %if.then.21 ], [ %cmp46, %cond.end.44 ]
  %land.ext = zext i1 %52 to i32
  store i32 %land.ext, i32* %create_hguide, align 4
  %53 = load i32, i32* %state.addr, align 4
  %and47 = and i32 %53, 8
  %tobool48 = icmp ne i32 %and47, 0
  br i1 %tobool48, label %land.rhs.49, label %land.end.79

land.rhs.49:                                      ; preds = %land.end
  %54 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %point50 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %54, i32 0, i32 6
  %55 = load i32, i32* %point50, align 4
  %idxprom51 = sext i32 %55 to i64
  %56 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %x52 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %56, i32 0, i32 8
  %arrayidx53 = getelementptr inbounds [3 x i32], [3 x i32]* %x52, i32 0, i64 %idxprom51
  %57 = load i32, i32* %arrayidx53, align 4
  %58 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %point54 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %58, i32 0, i32 6
  %59 = load i32, i32* %point54, align 4
  %idxprom55 = sext i32 %59 to i64
  %60 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %x56 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %60, i32 0, i32 8
  %arrayidx57 = getelementptr inbounds [3 x i32], [3 x i32]* %x56, i32 0, i64 %idxprom55
  %61 = load i32, i32* %arrayidx57, align 4
  %62 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call58 = call i32 @gimp_image_get_width(%struct._GimpImage* %62)
  %cmp59 = icmp sgt i32 %61, %call58
  br i1 %cmp59, label %cond.true.60, label %cond.false.62

cond.true.60:                                     ; preds = %land.rhs.49
  %63 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call61 = call i32 @gimp_image_get_width(%struct._GimpImage* %63)
  br label %cond.end.76

cond.false.62:                                    ; preds = %land.rhs.49
  %64 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %point63 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %64, i32 0, i32 6
  %65 = load i32, i32* %point63, align 4
  %idxprom64 = sext i32 %65 to i64
  %66 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %x65 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %66, i32 0, i32 8
  %arrayidx66 = getelementptr inbounds [3 x i32], [3 x i32]* %x65, i32 0, i64 %idxprom64
  %67 = load i32, i32* %arrayidx66, align 4
  %cmp67 = icmp slt i32 %67, 0
  br i1 %cmp67, label %cond.true.68, label %cond.false.69

cond.true.68:                                     ; preds = %cond.false.62
  br label %cond.end.74

cond.false.69:                                    ; preds = %cond.false.62
  %68 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %point70 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %68, i32 0, i32 6
  %69 = load i32, i32* %point70, align 4
  %idxprom71 = sext i32 %69 to i64
  %70 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %x72 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %70, i32 0, i32 8
  %arrayidx73 = getelementptr inbounds [3 x i32], [3 x i32]* %x72, i32 0, i64 %idxprom71
  %71 = load i32, i32* %arrayidx73, align 4
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.false.69, %cond.true.68
  %cond75 = phi i32 [ 0, %cond.true.68 ], [ %71, %cond.false.69 ]
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.end.74, %cond.true.60
  %cond77 = phi i32 [ %call61, %cond.true.60 ], [ %cond75, %cond.end.74 ]
  %cmp78 = icmp eq i32 %57, %cond77
  br label %land.end.79

land.end.79:                                      ; preds = %cond.end.76, %land.end
  %72 = phi i1 [ false, %land.end ], [ %cmp78, %cond.end.76 ]
  %land.ext80 = zext i1 %72 to i32
  store i32 %land.ext80, i32* %create_vguide, align 4
  %73 = load i32, i32* %create_hguide, align 4
  %tobool81 = icmp ne i32 %73, 0
  br i1 %tobool81, label %if.then.83, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.end.79
  %74 = load i32, i32* %create_vguide, align 4
  %tobool82 = icmp ne i32 %74, 0
  br i1 %tobool82, label %if.then.83, label %if.end.112

if.then.83:                                       ; preds = %lor.lhs.false, %land.end.79
  %75 = load i32, i32* %create_hguide, align 4
  %tobool84 = icmp ne i32 %75, 0
  br i1 %tobool84, label %land.lhs.true, label %if.end.89

land.lhs.true:                                    ; preds = %if.then.83
  %76 = load i32, i32* %create_vguide, align 4
  %tobool85 = icmp ne i32 %76, 0
  br i1 %tobool85, label %if.then.86, label %if.end.89

if.then.86:                                       ; preds = %land.lhs.true
  %77 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call87 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0)) #6
  %call88 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %77, i32 12, i8* %call87)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.86, %land.lhs.true, %if.then.83
  %78 = load i32, i32* %create_hguide, align 4
  %tobool90 = icmp ne i32 %78, 0
  br i1 %tobool90, label %if.then.91, label %if.end.97

if.then.91:                                       ; preds = %if.end.89
  %79 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %80 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %point92 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %80, i32 0, i32 6
  %81 = load i32, i32* %point92, align 4
  %idxprom93 = sext i32 %81 to i64
  %82 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %y94 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %82, i32 0, i32 9
  %arrayidx95 = getelementptr inbounds [3 x i32], [3 x i32]* %y94, i32 0, i64 %idxprom93
  %83 = load i32, i32* %arrayidx95, align 4
  %call96 = call %struct._GimpGuide* @gimp_image_add_hguide(%struct._GimpImage* %79, i32 %83, i32 1)
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.91, %if.end.89
  %84 = load i32, i32* %create_vguide, align 4
  %tobool98 = icmp ne i32 %84, 0
  br i1 %tobool98, label %if.then.99, label %if.end.105

if.then.99:                                       ; preds = %if.end.97
  %85 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %86 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %point100 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %86, i32 0, i32 6
  %87 = load i32, i32* %point100, align 4
  %idxprom101 = sext i32 %87 to i64
  %88 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %x102 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %88, i32 0, i32 8
  %arrayidx103 = getelementptr inbounds [3 x i32], [3 x i32]* %x102, i32 0, i64 %idxprom101
  %89 = load i32, i32* %arrayidx103, align 4
  %call104 = call %struct._GimpGuide* @gimp_image_add_vguide(%struct._GimpImage* %85, i32 %89, i32 1)
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.99, %if.end.97
  %90 = load i32, i32* %create_hguide, align 4
  %tobool106 = icmp ne i32 %90, 0
  br i1 %tobool106, label %land.lhs.true.107, label %if.end.111

land.lhs.true.107:                                ; preds = %if.end.105
  %91 = load i32, i32* %create_vguide, align 4
  %tobool108 = icmp ne i32 %91, 0
  br i1 %tobool108, label %if.then.109, label %if.end.111

if.then.109:                                      ; preds = %land.lhs.true.107
  %92 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call110 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %92)
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.109, %land.lhs.true.107, %if.end.105
  %93 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %93)
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %lor.lhs.false
  %94 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %function113 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %94, i32 0, i32 1
  store i32 4, i32* %function113, align 4
  br label %if.end.121

if.else:                                          ; preds = %if.then.18
  %95 = load i32, i32* %state.addr, align 4
  %and114 = and i32 %95, 1
  %tobool115 = icmp ne i32 %and114, 0
  br i1 %tobool115, label %if.then.116, label %if.else.118

if.then.116:                                      ; preds = %if.else
  %96 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %function117 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %96, i32 0, i32 1
  store i32 1, i32* %function117, align 4
  br label %if.end.120

if.else.118:                                      ; preds = %if.else
  %97 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %function119 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %97, i32 0, i32 1
  store i32 2, i32* %function119, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.else.118, %if.then.116
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %if.end.112
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.then.16
  %98 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %point123 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %98, i32 0, i32 6
  %99 = load i32, i32* %point123, align 4
  %cmp124 = icmp eq i32 %99, 0
  br i1 %cmp124, label %land.lhs.true.125, label %if.end.132

land.lhs.true.125:                                ; preds = %if.end.122
  %100 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %function126 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %100, i32 0, i32 1
  %101 = load i32, i32* %function126, align 4
  %cmp127 = icmp eq i32 %101, 1
  br i1 %cmp127, label %land.lhs.true.128, label %if.end.132

land.lhs.true.128:                                ; preds = %land.lhs.true.125
  %102 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %num_points = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %102, i32 0, i32 7
  %103 = load i32, i32* %num_points, align 4
  %cmp129 = icmp eq i32 %103, 3
  br i1 %cmp129, label %if.then.130, label %if.end.132

if.then.130:                                      ; preds = %land.lhs.true.128
  %104 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %function131 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %104, i32 0, i32 1
  store i32 2, i32* %function131, align 4
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.130, %land.lhs.true.128, %land.lhs.true.125, %if.end.122
  %105 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %function133 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %105, i32 0, i32 1
  %106 = load i32, i32* %function133, align 4
  %cmp134 = icmp eq i32 %106, 0
  br i1 %cmp134, label %if.then.135, label %if.end.147

if.then.135:                                      ; preds = %if.end.132
  %107 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %num_points136 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %107, i32 0, i32 7
  %108 = load i32, i32* %num_points136, align 4
  %cmp137 = icmp sgt i32 %108, 1
  br i1 %cmp137, label %land.lhs.true.138, label %if.end.146

land.lhs.true.138:                                ; preds = %if.then.135
  %109 = load i32, i32* %state.addr, align 4
  %and139 = and i32 %109, 8
  %tobool140 = icmp ne i32 %and139, 0
  br i1 %tobool140, label %if.then.141, label %if.end.146

if.then.141:                                      ; preds = %land.lhs.true.138
  %110 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %function142 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %110, i32 0, i32 1
  store i32 3, i32* %function142, align 4
  %111 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x143 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %111, i32 0, i32 0
  %112 = load double, double* %x143, align 8
  %conv = fptosi double %112 to i32
  %113 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %last_x = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %113, i32 0, i32 4
  store i32 %conv, i32* %last_x, align 4
  %114 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y144 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %114, i32 0, i32 1
  %115 = load double, double* %y144, align 8
  %conv145 = fptosi double %115 to i32
  %116 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %last_y = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %116, i32 0, i32 5
  store i32 %conv145, i32* %last_y, align 4
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.141, %land.lhs.true.138, %if.then.135
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %if.end.132
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %if.end.13
  %117 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %function149 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %117, i32 0, i32 1
  %118 = load i32, i32* %function149, align 4
  %cmp150 = icmp eq i32 %118, 0
  br i1 %cmp150, label %if.then.152, label %if.end.189

if.then.152:                                      ; preds = %if.end.148
  %119 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %120 = bitcast %struct._GimpMeasureTool* %119 to %struct._GTypeInstance*
  %call153 = call i64 @gimp_draw_tool_get_type() #5
  %call154 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %120, i64 %call153)
  %121 = bitcast %struct._GTypeInstance* %call154 to %struct._GimpDrawTool*
  %call155 = call i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool* %121)
  %tobool156 = icmp ne i32 %call155, 0
  br i1 %tobool156, label %if.then.157, label %if.end.160

if.then.157:                                      ; preds = %if.then.152
  %122 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %123 = bitcast %struct._GimpMeasureTool* %122 to %struct._GTypeInstance*
  %call158 = call i64 @gimp_draw_tool_get_type() #5
  %call159 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %123, i64 %call158)
  %124 = bitcast %struct._GTypeInstance* %call159 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_stop(%struct._GimpDrawTool* %124)
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.157, %if.then.152
  %125 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %x161 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %125, i32 0, i32 8
  %arrayidx162 = getelementptr inbounds [3 x i32], [3 x i32]* %x161, i32 0, i64 2
  store i32 0, i32* %arrayidx162, align 4
  %126 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %x163 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %126, i32 0, i32 8
  %arrayidx164 = getelementptr inbounds [3 x i32], [3 x i32]* %x163, i32 0, i64 1
  store i32 0, i32* %arrayidx164, align 4
  %127 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %x165 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %127, i32 0, i32 8
  %arrayidx166 = getelementptr inbounds [3 x i32], [3 x i32]* %x165, i32 0, i64 0
  store i32 0, i32* %arrayidx166, align 4
  %128 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %y167 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %128, i32 0, i32 9
  %arrayidx168 = getelementptr inbounds [3 x i32], [3 x i32]* %y167, i32 0, i64 2
  store i32 0, i32* %arrayidx168, align 4
  %129 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %y169 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %129, i32 0, i32 9
  %arrayidx170 = getelementptr inbounds [3 x i32], [3 x i32]* %y169, i32 0, i64 1
  store i32 0, i32* %arrayidx170, align 4
  %130 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %y171 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %130, i32 0, i32 9
  %arrayidx172 = getelementptr inbounds [3 x i32], [3 x i32]* %y171, i32 0, i64 0
  store i32 0, i32* %arrayidx172, align 4
  %131 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x173 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %131, i32 0, i32 0
  %132 = load double, double* %x173, align 8
  %add = fadd double %132, 5.000000e-01
  %conv174 = fptosi double %add to i32
  %133 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %x175 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %133, i32 0, i32 8
  %arrayidx176 = getelementptr inbounds [3 x i32], [3 x i32]* %x175, i32 0, i64 0
  store i32 %conv174, i32* %arrayidx176, align 4
  %134 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y177 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %134, i32 0, i32 1
  %135 = load double, double* %y177, align 8
  %add178 = fadd double %135, 5.000000e-01
  %conv179 = fptosi double %add178 to i32
  %136 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %y180 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %136, i32 0, i32 9
  %arrayidx181 = getelementptr inbounds [3 x i32], [3 x i32]* %y180, i32 0, i64 0
  store i32 %conv179, i32* %arrayidx181, align 4
  %137 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %point182 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %137, i32 0, i32 6
  store i32 0, i32* %point182, align 4
  %138 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %num_points183 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %138, i32 0, i32 7
  store i32 1, i32* %num_points183, align 4
  %139 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %function184 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %139, i32 0, i32 1
  store i32 1, i32* %function184, align 4
  %140 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %141 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display185 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %141, i32 0, i32 4
  store %struct._GimpDisplay* %140, %struct._GimpDisplay** %display185, align 8
  %142 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %143 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call186 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0)) #6
  call void (%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) @gimp_tool_replace_status(%struct._GimpTool* %142, %struct._GimpDisplay* %143, i8* %call186)
  %144 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %145 = bitcast %struct._GimpTool* %144 to %struct._GTypeInstance*
  %call187 = call i64 @gimp_draw_tool_get_type() #5
  %call188 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %145, i64 %call187)
  %146 = bitcast %struct._GTypeInstance* %call188 to %struct._GimpDrawTool*
  %147 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_draw_tool_start(%struct._GimpDrawTool* %146, %struct._GimpDisplay* %147)
  br label %if.end.189

if.end.189:                                       ; preds = %if.end.160, %if.end.148
  %148 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %148, i32 0, i32 3
  %149 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_activate(%struct._GimpToolControl* %149)
  %150 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %dialog = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %150, i32 0, i32 14
  %151 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool190 = icmp ne %struct._GtkWidget* %151, null
  br i1 %tobool190, label %if.end.203, label %if.then.191

if.then.191:                                      ; preds = %if.end.189
  %152 = load %struct._GimpMeasureOptions*, %struct._GimpMeasureOptions** %options, align 8
  %use_info_window = getelementptr inbounds %struct._GimpMeasureOptions, %struct._GimpMeasureOptions* %152, i32 0, i32 1
  %153 = load i32, i32* %use_info_window, align 4
  %tobool192 = icmp ne i32 %153, 0
  br i1 %tobool192, label %if.then.196, label %lor.lhs.false.193

lor.lhs.false.193:                                ; preds = %if.then.191
  %154 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call194 = call i32 @gimp_display_shell_get_show_statusbar(%struct._GimpDisplayShell* %154)
  %tobool195 = icmp ne i32 %call194, 0
  br i1 %tobool195, label %if.end.202, label %if.then.196

if.then.196:                                      ; preds = %lor.lhs.false.193, %if.then.191
  %155 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %call197 = call %struct._GtkWidget* @gimp_measure_tool_dialog_new(%struct._GimpMeasureTool* %155)
  %156 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %dialog198 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %156, i32 0, i32 14
  store %struct._GtkWidget* %call197, %struct._GtkWidget** %dialog198, align 8
  %157 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %dialog199 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %157, i32 0, i32 14
  %158 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog199, align 8
  %159 = bitcast %struct._GtkWidget* %158 to %struct._GTypeInstance*
  %call200 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %159, i64 80)
  %160 = bitcast %struct._GTypeInstance* %call200 to %struct._GObject*
  %161 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %dialog201 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %161, i32 0, i32 14
  %162 = bitcast %struct._GtkWidget** %dialog201 to i8*
  %163 = bitcast i8* %162 to i8**
  call void @g_object_add_weak_pointer(%struct._GObject* %160, i8** %163)
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.196, %lor.lhs.false.193
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.202, %if.end.189
  %164 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %dialog204 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %164, i32 0, i32 14
  %165 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog204, align 8
  %tobool205 = icmp ne %struct._GtkWidget* %165, null
  br i1 %tobool205, label %if.then.206, label %if.end.217

if.then.206:                                      ; preds = %if.end.203
  %166 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %dialog207 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %166, i32 0, i32 14
  %167 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog207, align 8
  %168 = bitcast %struct._GtkWidget* %167 to %struct._GTypeInstance*
  %call208 = call i64 @gimp_viewable_dialog_get_type() #5
  %call209 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %168, i64 %call208)
  %169 = bitcast %struct._GTypeInstance* %call209 to %struct._GimpViewableDialog*
  %170 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %171 = bitcast %struct._GimpImage* %170 to %struct._GTypeInstance*
  %call210 = call i64 @gimp_viewable_get_type() #5
  %call211 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %171, i64 %call210)
  %172 = bitcast %struct._GTypeInstance* %call211 to %struct._GimpViewable*
  %173 = load %struct._GimpMeasureOptions*, %struct._GimpMeasureOptions** %options, align 8
  %174 = bitcast %struct._GimpMeasureOptions* %173 to %struct._GTypeInstance*
  %call212 = call i64 @gimp_context_get_type() #5
  %call213 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %174, i64 %call212)
  %175 = bitcast %struct._GTypeInstance* %call213 to %struct._GimpContext*
  call void @gimp_viewable_dialog_set_viewable(%struct._GimpViewableDialog* %169, %struct._GimpViewable* %172, %struct._GimpContext* %175)
  %176 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %dialog214 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %176, i32 0, i32 14
  %177 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog214, align 8
  %178 = bitcast %struct._GtkWidget* %177 to %struct._GTypeInstance*
  %call215 = call i64 @gimp_tool_dialog_get_type() #5
  %call216 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %178, i64 %call215)
  %179 = bitcast %struct._GTypeInstance* %call216 to %struct._GimpToolDialog*
  %180 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_tool_dialog_set_shell(%struct._GimpToolDialog* %179, %struct._GimpDisplayShell* %180)
  %181 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %182 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_measure_tool_dialog_update(%struct._GimpMeasureTool* %181, %struct._GimpDisplay* %182)
  br label %if.end.217

if.end.217:                                       ; preds = %if.then.206, %if.end.203
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_measure_tool_button_release(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %release_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %release_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %measure = alloca %struct._GimpMeasureTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %release_type, i32* %release_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_measure_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpMeasureTool*
  store %struct._GimpMeasureTool* %2, %struct._GimpMeasureTool** %measure, align 8
  %3 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %function = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %3, i32 0, i32 1
  store i32 5, i32* %function, align 4
  %4 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %4, i32 0, i32 3
  %5 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_halt(%struct._GimpToolControl* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_measure_tool_motion(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %measure = alloca %struct._GimpMeasureTool*, align 8
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %x81 = alloca double, align 8
  %y88 = alloca double, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_measure_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpMeasureTool*
  store %struct._GimpMeasureTool* %2, %struct._GimpMeasureTool** %measure, align 8
  %3 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %4 = bitcast %struct._GimpMeasureTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_draw_tool_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %5)
  %6 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %6, i32 0, i32 0
  %7 = load double, double* %x, align 8
  %8 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %mouse_x = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %8, i32 0, i32 2
  store double %7, double* %mouse_x, align 8
  %9 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %9, i32 0, i32 1
  %10 = load double, double* %y, align 8
  %11 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %mouse_y = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %11, i32 0, i32 3
  store double %10, double* %mouse_y, align 8
  %12 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %function = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %12, i32 0, i32 1
  %13 = load i32, i32* %function, align 4
  switch i32 %13, label %sw.default.141 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.44
    i32 3, label %sw.bb.113
  ]

sw.bb:                                            ; preds = %entry
  %14 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %point = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %14, i32 0, i32 6
  %15 = load i32, i32* %point, align 4
  switch i32 %15, label %sw.default [
    i32 0, label %sw.bb.4
    i32 1, label %sw.bb.5
    i32 2, label %sw.bb.21
  ]

sw.bb.4:                                          ; preds = %sw.bb
  br label %sw.epilog

sw.bb.5:                                          ; preds = %sw.bb
  %16 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %x6 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %16, i32 0, i32 8
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %x6, i32 0, i64 0
  %17 = load i32, i32* %arrayidx, align 4
  store i32 %17, i32* %tmp, align 4
  %18 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %x7 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %18, i32 0, i32 8
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %x7, i32 0, i64 1
  %19 = load i32, i32* %arrayidx8, align 4
  %20 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %x9 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %20, i32 0, i32 8
  %arrayidx10 = getelementptr inbounds [3 x i32], [3 x i32]* %x9, i32 0, i64 0
  store i32 %19, i32* %arrayidx10, align 4
  %21 = load i32, i32* %tmp, align 4
  %22 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %x11 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %22, i32 0, i32 8
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %x11, i32 0, i64 1
  store i32 %21, i32* %arrayidx12, align 4
  %23 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %y13 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %23, i32 0, i32 9
  %arrayidx14 = getelementptr inbounds [3 x i32], [3 x i32]* %y13, i32 0, i64 0
  %24 = load i32, i32* %arrayidx14, align 4
  store i32 %24, i32* %tmp, align 4
  %25 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %y15 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %25, i32 0, i32 9
  %arrayidx16 = getelementptr inbounds [3 x i32], [3 x i32]* %y15, i32 0, i64 1
  %26 = load i32, i32* %arrayidx16, align 4
  %27 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %y17 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %27, i32 0, i32 9
  %arrayidx18 = getelementptr inbounds [3 x i32], [3 x i32]* %y17, i32 0, i64 0
  store i32 %26, i32* %arrayidx18, align 4
  %28 = load i32, i32* %tmp, align 4
  %29 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %y19 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %29, i32 0, i32 9
  %arrayidx20 = getelementptr inbounds [3 x i32], [3 x i32]* %y19, i32 0, i64 1
  store i32 %28, i32* %arrayidx20, align 4
  br label %sw.epilog

sw.bb.21:                                         ; preds = %sw.bb
  %30 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %x22 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %30, i32 0, i32 8
  %arrayidx23 = getelementptr inbounds [3 x i32], [3 x i32]* %x22, i32 0, i64 0
  %31 = load i32, i32* %arrayidx23, align 4
  %32 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %x24 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %32, i32 0, i32 8
  %arrayidx25 = getelementptr inbounds [3 x i32], [3 x i32]* %x24, i32 0, i64 1
  store i32 %31, i32* %arrayidx25, align 4
  %33 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %y26 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %33, i32 0, i32 9
  %arrayidx27 = getelementptr inbounds [3 x i32], [3 x i32]* %y26, i32 0, i64 0
  %34 = load i32, i32* %arrayidx27, align 4
  %35 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %y28 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %35, i32 0, i32 9
  %arrayidx29 = getelementptr inbounds [3 x i32], [3 x i32]* %y28, i32 0, i64 1
  store i32 %34, i32* %arrayidx29, align 4
  %36 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %x30 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %36, i32 0, i32 8
  %arrayidx31 = getelementptr inbounds [3 x i32], [3 x i32]* %x30, i32 0, i64 2
  %37 = load i32, i32* %arrayidx31, align 4
  %38 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %x32 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %38, i32 0, i32 8
  %arrayidx33 = getelementptr inbounds [3 x i32], [3 x i32]* %x32, i32 0, i64 0
  store i32 %37, i32* %arrayidx33, align 4
  %39 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %y34 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %39, i32 0, i32 9
  %arrayidx35 = getelementptr inbounds [3 x i32], [3 x i32]* %y34, i32 0, i64 2
  %40 = load i32, i32* %arrayidx35, align 4
  %41 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %y36 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %41, i32 0, i32 9
  %arrayidx37 = getelementptr inbounds [3 x i32], [3 x i32]* %y36, i32 0, i64 0
  store i32 %40, i32* %arrayidx37, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.21, %sw.bb.5, %sw.bb.4
  %42 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %num_points = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %42, i32 0, i32 7
  %43 = load i32, i32* %num_points, align 4
  %add = add nsw i32 %43, 1
  %cmp = icmp slt i32 %add, 3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog
  %44 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %num_points38 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %44, i32 0, i32 7
  %45 = load i32, i32* %num_points38, align 4
  %add39 = add nsw i32 %45, 1
  br label %cond.end

cond.false:                                       ; preds = %sw.epilog
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add39, %cond.true ], [ 3, %cond.false ]
  %46 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %num_points40 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %46, i32 0, i32 7
  store i32 %cond, i32* %num_points40, align 4
  %47 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %num_points41 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %47, i32 0, i32 7
  %48 = load i32, i32* %num_points41, align 4
  %sub = sub nsw i32 %48, 1
  %49 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %point42 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %49, i32 0, i32 6
  store i32 %sub, i32* %point42, align 4
  %50 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %function43 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %50, i32 0, i32 1
  store i32 2, i32* %function43, align 4
  br label %sw.bb.44

sw.bb.44:                                         ; preds = %entry, %cond.end
  %51 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %num_points45 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %51, i32 0, i32 7
  %52 = load i32, i32* %num_points45, align 4
  %cmp46 = icmp eq i32 %52, 2
  br i1 %cmp46, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb.44
  %53 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %point47 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %53, i32 0, i32 6
  %54 = load i32, i32* %point47, align 4
  %cmp48 = icmp eq i32 %54, 0
  br i1 %cmp48, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %55 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %x49 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %55, i32 0, i32 8
  %arrayidx50 = getelementptr inbounds [3 x i32], [3 x i32]* %x49, i32 0, i64 0
  %56 = load i32, i32* %arrayidx50, align 4
  store i32 %56, i32* %tmp, align 4
  %57 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %x51 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %57, i32 0, i32 8
  %arrayidx52 = getelementptr inbounds [3 x i32], [3 x i32]* %x51, i32 0, i64 1
  %58 = load i32, i32* %arrayidx52, align 4
  %59 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %x53 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %59, i32 0, i32 8
  %arrayidx54 = getelementptr inbounds [3 x i32], [3 x i32]* %x53, i32 0, i64 0
  store i32 %58, i32* %arrayidx54, align 4
  %60 = load i32, i32* %tmp, align 4
  %61 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %x55 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %61, i32 0, i32 8
  %arrayidx56 = getelementptr inbounds [3 x i32], [3 x i32]* %x55, i32 0, i64 1
  store i32 %60, i32* %arrayidx56, align 4
  %62 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %y57 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %62, i32 0, i32 9
  %arrayidx58 = getelementptr inbounds [3 x i32], [3 x i32]* %y57, i32 0, i64 0
  %63 = load i32, i32* %arrayidx58, align 4
  store i32 %63, i32* %tmp, align 4
  %64 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %y59 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %64, i32 0, i32 9
  %arrayidx60 = getelementptr inbounds [3 x i32], [3 x i32]* %y59, i32 0, i64 1
  %65 = load i32, i32* %arrayidx60, align 4
  %66 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %y61 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %66, i32 0, i32 9
  %arrayidx62 = getelementptr inbounds [3 x i32], [3 x i32]* %y61, i32 0, i64 0
  store i32 %65, i32* %arrayidx62, align 4
  %67 = load i32, i32* %tmp, align 4
  %68 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %y63 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %68, i32 0, i32 9
  %arrayidx64 = getelementptr inbounds [3 x i32], [3 x i32]* %y63, i32 0, i64 1
  store i32 %67, i32* %arrayidx64, align 4
  %69 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %point65 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %69, i32 0, i32 6
  store i32 1, i32* %point65, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.bb.44
  %70 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x66 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %70, i32 0, i32 0
  %71 = load double, double* %x66, align 8
  %add67 = fadd double %71, 5.000000e-01
  %conv = fptosi double %add67 to i32
  %72 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %point68 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %72, i32 0, i32 6
  %73 = load i32, i32* %point68, align 4
  %idxprom = sext i32 %73 to i64
  %74 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %x69 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %74, i32 0, i32 8
  %arrayidx70 = getelementptr inbounds [3 x i32], [3 x i32]* %x69, i32 0, i64 %idxprom
  store i32 %conv, i32* %arrayidx70, align 4
  %75 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y71 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %75, i32 0, i32 1
  %76 = load double, double* %y71, align 8
  %add72 = fadd double %76, 5.000000e-01
  %conv73 = fptosi double %add72 to i32
  %77 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %point74 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %77, i32 0, i32 6
  %78 = load i32, i32* %point74, align 4
  %idxprom75 = sext i32 %78 to i64
  %79 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %y76 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %79, i32 0, i32 9
  %arrayidx77 = getelementptr inbounds [3 x i32], [3 x i32]* %y76, i32 0, i64 %idxprom75
  store i32 %conv73, i32* %arrayidx77, align 4
  %80 = load i32, i32* %state.addr, align 4
  %call78 = call i32 @gimp_get_constrain_behavior_mask()
  %and = and i32 %80, %call78
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.79, label %if.end.112

if.then.79:                                       ; preds = %if.end
  %81 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %point82 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %81, i32 0, i32 6
  %82 = load i32, i32* %point82, align 4
  %idxprom83 = sext i32 %82 to i64
  %83 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %x84 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %83, i32 0, i32 8
  %arrayidx85 = getelementptr inbounds [3 x i32], [3 x i32]* %x84, i32 0, i64 %idxprom83
  %84 = load i32, i32* %arrayidx85, align 4
  %conv86 = sitofp i32 %84 to double
  store double %conv86, double* %x81, align 8
  %85 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %point89 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %85, i32 0, i32 6
  %86 = load i32, i32* %point89, align 4
  %idxprom90 = sext i32 %86 to i64
  %87 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %y91 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %87, i32 0, i32 9
  %arrayidx92 = getelementptr inbounds [3 x i32], [3 x i32]* %y91, i32 0, i64 %idxprom90
  %88 = load i32, i32* %arrayidx92, align 4
  %conv93 = sitofp i32 %88 to double
  store double %conv93, double* %y88, align 8
  %89 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %x94 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %89, i32 0, i32 8
  %arrayidx95 = getelementptr inbounds [3 x i32], [3 x i32]* %x94, i32 0, i64 0
  %90 = load i32, i32* %arrayidx95, align 4
  %conv96 = sitofp i32 %90 to double
  %91 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %y97 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %91, i32 0, i32 9
  %arrayidx98 = getelementptr inbounds [3 x i32], [3 x i32]* %y97, i32 0, i64 0
  %92 = load i32, i32* %arrayidx98, align 4
  %conv99 = sitofp i32 %92 to double
  call void @gimp_constrain_line(double %conv96, double %conv99, double* %x81, double* %y88, i32 12)
  %93 = load double, double* %x81, align 8
  %add100 = fadd double %93, 5.000000e-01
  %conv101 = fptosi double %add100 to i32
  %94 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %point102 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %94, i32 0, i32 6
  %95 = load i32, i32* %point102, align 4
  %idxprom103 = sext i32 %95 to i64
  %96 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %x104 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %96, i32 0, i32 8
  %arrayidx105 = getelementptr inbounds [3 x i32], [3 x i32]* %x104, i32 0, i64 %idxprom103
  store i32 %conv101, i32* %arrayidx105, align 4
  %97 = load double, double* %y88, align 8
  %add106 = fadd double %97, 5.000000e-01
  %conv107 = fptosi double %add106 to i32
  %98 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %point108 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %98, i32 0, i32 6
  %99 = load i32, i32* %point108, align 4
  %idxprom109 = sext i32 %99 to i64
  %100 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %y110 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %100, i32 0, i32 9
  %arrayidx111 = getelementptr inbounds [3 x i32], [3 x i32]* %y110, i32 0, i64 %idxprom109
  store i32 %conv107, i32* %arrayidx111, align 4
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.79, %if.end
  br label %sw.epilog.142

sw.bb.113:                                        ; preds = %entry
  %101 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x114 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %101, i32 0, i32 0
  %102 = load double, double* %x114, align 8
  %add115 = fadd double %102, 5.000000e-01
  %conv116 = fptosi double %add115 to i32
  %103 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %last_x = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %103, i32 0, i32 4
  %104 = load i32, i32* %last_x, align 4
  %sub117 = sub nsw i32 %conv116, %104
  store i32 %sub117, i32* %dx, align 4
  %105 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y118 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %105, i32 0, i32 1
  %106 = load double, double* %y118, align 8
  %add119 = fadd double %106, 5.000000e-01
  %conv120 = fptosi double %add119 to i32
  %107 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %last_y = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %107, i32 0, i32 5
  %108 = load i32, i32* %last_y, align 4
  %sub121 = sub nsw i32 %conv120, %108
  store i32 %sub121, i32* %dy, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.113
  %109 = load i32, i32* %i, align 4
  %110 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %num_points122 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %110, i32 0, i32 7
  %111 = load i32, i32* %num_points122, align 4
  %cmp123 = icmp slt i32 %109, %111
  br i1 %cmp123, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %112 = load i32, i32* %dx, align 4
  %113 = load i32, i32* %i, align 4
  %idxprom125 = sext i32 %113 to i64
  %114 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %x126 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %114, i32 0, i32 8
  %arrayidx127 = getelementptr inbounds [3 x i32], [3 x i32]* %x126, i32 0, i64 %idxprom125
  %115 = load i32, i32* %arrayidx127, align 4
  %add128 = add nsw i32 %115, %112
  store i32 %add128, i32* %arrayidx127, align 4
  %116 = load i32, i32* %dy, align 4
  %117 = load i32, i32* %i, align 4
  %idxprom129 = sext i32 %117 to i64
  %118 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %y130 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %118, i32 0, i32 9
  %arrayidx131 = getelementptr inbounds [3 x i32], [3 x i32]* %y130, i32 0, i64 %idxprom129
  %119 = load i32, i32* %arrayidx131, align 4
  %add132 = add nsw i32 %119, %116
  store i32 %add132, i32* %arrayidx131, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %120 = load i32, i32* %i, align 4
  %inc = add nsw i32 %120, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %121 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x133 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %121, i32 0, i32 0
  %122 = load double, double* %x133, align 8
  %add134 = fadd double %122, 5.000000e-01
  %conv135 = fptosi double %add134 to i32
  %123 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %last_x136 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %123, i32 0, i32 4
  store i32 %conv135, i32* %last_x136, align 4
  %124 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y137 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %124, i32 0, i32 1
  %125 = load double, double* %y137, align 8
  %add138 = fadd double %125, 5.000000e-01
  %conv139 = fptosi double %add138 to i32
  %126 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %last_y140 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %126, i32 0, i32 5
  store i32 %conv139, i32* %last_y140, align 4
  br label %sw.epilog.142

sw.default.141:                                   ; preds = %entry
  br label %sw.epilog.142

sw.epilog.142:                                    ; preds = %sw.default.141, %for.end, %if.end.112
  %127 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %function143 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %127, i32 0, i32 1
  %128 = load i32, i32* %function143, align 4
  %cmp144 = icmp eq i32 %128, 2
  br i1 %cmp144, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %sw.epilog.142
  %129 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %130 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_measure_tool_dialog_update(%struct._GimpMeasureTool* %129, %struct._GimpDisplay* %130)
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.146, %sw.epilog.142
  %131 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %132 = bitcast %struct._GimpMeasureTool* %131 to %struct._GTypeInstance*
  %call148 = call i64 @gimp_draw_tool_get_type() #5
  %call149 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %132, i64 %call148)
  %133 = bitcast %struct._GTypeInstance* %call149 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %133)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_measure_tool_key_press(%struct._GimpTool* %tool, %struct._GdkEventKey* %kevent, %struct._GimpDisplay* %display) #3 {
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
define internal void @gimp_measure_tool_active_modifier_key(%struct._GimpTool* %tool, i32 %key, i32 %press, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %key.addr = alloca i32, align 4
  %press.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %measure = alloca %struct._GimpMeasureTool*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %press, i32* %press.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_measure_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpMeasureTool*
  store %struct._GimpMeasureTool* %2, %struct._GimpMeasureTool** %measure, align 8
  %3 = load i32, i32* %key.addr, align 4
  %call2 = call i32 @gimp_get_constrain_behavior_mask()
  %cmp = icmp eq i32 %3, %call2
  br i1 %cmp, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %function = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %4, i32 0, i32 1
  %5 = load i32, i32* %function, align 4
  %cmp3 = icmp eq i32 %5, 2
  br i1 %cmp3, label %if.then, label %if.end.22

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %7 = bitcast %struct._GimpTool* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_draw_tool_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %8)
  %9 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %mouse_x = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %9, i32 0, i32 2
  %10 = load double, double* %mouse_x, align 8
  store double %10, double* %x, align 8
  %11 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %mouse_y = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %11, i32 0, i32 3
  %12 = load double, double* %mouse_y, align 8
  store double %12, double* %y, align 8
  %13 = load i32, i32* %press.addr, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %14 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %x7 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %14, i32 0, i32 8
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %x7, i32 0, i64 0
  %15 = load i32, i32* %arrayidx, align 4
  %conv = sitofp i32 %15 to double
  %16 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %y8 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %16, i32 0, i32 9
  %arrayidx9 = getelementptr inbounds [3 x i32], [3 x i32]* %y8, i32 0, i64 0
  %17 = load i32, i32* %arrayidx9, align 4
  %conv10 = sitofp i32 %17 to double
  call void @gimp_constrain_line(double %conv, double %conv10, double* %x, double* %y, i32 12)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  %18 = load double, double* %x, align 8
  %add = fadd double %18, 5.000000e-01
  %conv11 = fptosi double %add to i32
  %19 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %point = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %19, i32 0, i32 6
  %20 = load i32, i32* %point, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %x12 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %21, i32 0, i32 8
  %arrayidx13 = getelementptr inbounds [3 x i32], [3 x i32]* %x12, i32 0, i64 %idxprom
  store i32 %conv11, i32* %arrayidx13, align 4
  %22 = load double, double* %y, align 8
  %add14 = fadd double %22, 5.000000e-01
  %conv15 = fptosi double %add14 to i32
  %23 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %point16 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %23, i32 0, i32 6
  %24 = load i32, i32* %point16, align 4
  %idxprom17 = sext i32 %24 to i64
  %25 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %y18 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %25, i32 0, i32 9
  %arrayidx19 = getelementptr inbounds [3 x i32], [3 x i32]* %y18, i32 0, i64 %idxprom17
  store i32 %conv15, i32* %arrayidx19, align 4
  %26 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %27 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_measure_tool_dialog_update(%struct._GimpMeasureTool* %26, %struct._GimpDisplay* %27)
  %28 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %29 = bitcast %struct._GimpTool* %28 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_draw_tool_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call20)
  %30 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %30)
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_measure_tool_oper_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, i32 %proximity, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %proximity.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %measure = alloca %struct._GimpMeasureTool*, align 8
  %status = alloca i8*, align 8
  %i = alloca i32, align 4
  %point = alloca i32, align 4
  %toggle_mask = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store i32 %proximity, i32* %proximity.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_measure_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpMeasureTool*
  store %struct._GimpMeasureTool* %2, %struct._GimpMeasureTool** %measure, align 8
  store i8* null, i8** %status, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display2 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 4
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display2, align 8
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %cmp = icmp eq %struct._GimpDisplay* %4, %5
  br i1 %cmp, label %if.then, label %if.end.110

if.then:                                          ; preds = %entry
  store i32 -1, i32* %point, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %i, align 4
  %7 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %num_points = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %7, i32 0, i32 7
  %8 = load i32, i32* %num_points, align 4
  %cmp3 = icmp slt i32 %6, %8
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %handles = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %10, i32 0, i32 13
  %arrayidx = getelementptr inbounds [3 x %struct._GimpCanvasItem*], [3 x %struct._GimpCanvasItem*]* %handles, i32 0, i64 %idxprom
  %11 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %arrayidx, align 8
  %12 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %12, i32 0, i32 0
  %13 = load double, double* %x, align 8
  %14 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %14, i32 0, i32 1
  %15 = load double, double* %y, align 8
  %call4 = call i32 @gimp_canvas_item_hit(%struct._GimpCanvasItem* %11, double %13, double %15)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then.5, label %if.end.54

if.then.5:                                        ; preds = %for.body
  %call6 = call i32 @gimp_get_toggle_behavior_mask()
  store i32 %call6, i32* %toggle_mask, align 4
  %16 = load i32, i32* %i, align 4
  store i32 %16, i32* %point, align 4
  %17 = load i32, i32* %state.addr, align 4
  %18 = load i32, i32* %toggle_mask, align 4
  %and = and i32 %17, %18
  %tobool7 = icmp ne i32 %and, 0
  br i1 %tobool7, label %if.then.8, label %if.end.17

if.then.8:                                        ; preds = %if.then.5
  %19 = load i32, i32* %state.addr, align 4
  %and9 = and i32 %19, 8
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then.8
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.25, i32 0, i32 0)) #6
  %call13 = call i8* @gimp_suggest_modifiers(i8* %call12, i32 0, i8* null, i8* null, i8* null)
  store i8* %call13, i8** %status, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.8
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i32 0, i32 0)) #6
  %20 = load i32, i32* %state.addr, align 4
  %neg = xor i32 %20, -1
  %and15 = and i32 8, %neg
  %call16 = call i8* @gimp_suggest_modifiers(i8* %call14, i32 %and15, i8* null, i8* null, i8* null)
  store i8* %call16, i8** %status, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.11
  %21 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %22 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %23 = load i8*, i8** %status, align 8
  call void (%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) @gimp_tool_replace_status(%struct._GimpTool* %21, %struct._GimpDisplay* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i8* %23)
  %24 = load i8*, i8** %status, align 8
  call void @g_free(i8* %24)
  %25 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %status_help = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %25, i32 0, i32 12
  store i32 1, i32* %status_help, align 4
  br label %for.end

if.end.17:                                        ; preds = %if.then.5
  %26 = load i32, i32* %state.addr, align 4
  %and18 = and i32 %26, 8
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.26

if.then.20:                                       ; preds = %if.end.17
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.28, i32 0, i32 0)) #6
  %27 = load i32, i32* %toggle_mask, align 4
  %28 = load i32, i32* %state.addr, align 4
  %neg22 = xor i32 %28, -1
  %and23 = and i32 %27, %neg22
  %call24 = call i8* @gimp_suggest_modifiers(i8* %call21, i32 %and23, i8* null, i8* null, i8* null)
  store i8* %call24, i8** %status, align 8
  %29 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %30 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %31 = load i8*, i8** %status, align 8
  call void (%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) @gimp_tool_replace_status(%struct._GimpTool* %29, %struct._GimpDisplay* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i8* %31)
  %32 = load i8*, i8** %status, align 8
  call void @g_free(i8* %32)
  %33 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %status_help25 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %33, i32 0, i32 12
  store i32 1, i32* %status_help25, align 4
  br label %for.end

if.end.26:                                        ; preds = %if.end.17
  %34 = load i32, i32* %state.addr, align 4
  %and27 = and i32 %34, 1
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %land.lhs.true, label %if.else.38

land.lhs.true:                                    ; preds = %if.end.26
  %35 = load i32, i32* %i, align 4
  %cmp29 = icmp eq i32 %35, 0
  br i1 %cmp29, label %land.lhs.true.30, label %if.then.33

land.lhs.true.30:                                 ; preds = %land.lhs.true
  %36 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %num_points31 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %36, i32 0, i32 7
  %37 = load i32, i32* %num_points31, align 4
  %cmp32 = icmp eq i32 %37, 3
  br i1 %cmp32, label %if.else.38, label %if.then.33

if.then.33:                                       ; preds = %land.lhs.true.30, %land.lhs.true
  %call34 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i32 0, i32 0)) #6
  %38 = load i32, i32* %toggle_mask, align 4
  %or = or i32 %38, 8
  %39 = load i32, i32* %state.addr, align 4
  %neg35 = xor i32 %39, -1
  %and36 = and i32 %or, %neg35
  %call37 = call i8* @gimp_suggest_modifiers(i8* %call34, i32 %and36, i8* null, i8* null, i8* null)
  store i8* %call37, i8** %status, align 8
  br label %if.end.52

if.else.38:                                       ; preds = %land.lhs.true.30, %if.end.26
  %40 = load i32, i32* %i, align 4
  %cmp39 = icmp eq i32 %40, 0
  br i1 %cmp39, label %land.lhs.true.40, label %if.end.45

land.lhs.true.40:                                 ; preds = %if.else.38
  %41 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %num_points41 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %41, i32 0, i32 7
  %42 = load i32, i32* %num_points41, align 4
  %cmp42 = icmp eq i32 %42, 3
  br i1 %cmp42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %land.lhs.true.40
  %43 = load i32, i32* %state.addr, align 4
  %or44 = or i32 %43, 1
  store i32 %or44, i32* %state.addr, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %land.lhs.true.40, %if.else.38
  %call46 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.30, i32 0, i32 0)) #6
  %44 = load i32, i32* %toggle_mask, align 4
  %or47 = or i32 1, %44
  %or48 = or i32 %or47, 8
  %45 = load i32, i32* %state.addr, align 4
  %neg49 = xor i32 %45, -1
  %and50 = and i32 %or48, %neg49
  %call51 = call i8* @gimp_suggest_modifiers(i8* %call46, i32 %and50, i8* null, i8* null, i8* null)
  store i8* %call51, i8** %status, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.45, %if.then.33
  %46 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %47 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %48 = load i8*, i8** %status, align 8
  call void (%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) @gimp_tool_replace_status(%struct._GimpTool* %46, %struct._GimpDisplay* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i8* %48)
  %49 = load i8*, i8** %status, align 8
  call void @g_free(i8* %49)
  %50 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %status_help53 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %50, i32 0, i32 12
  store i32 1, i32* %status_help53, align 4
  br label %for.end

if.end.54:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.54
  %51 = load i32, i32* %i, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.end.52, %if.then.20, %if.end, %for.cond
  %52 = load i32, i32* %point, align 4
  %cmp55 = icmp eq i32 %52, -1
  br i1 %cmp55, label %if.then.56, label %if.end.76

if.then.56:                                       ; preds = %for.end
  %53 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %num_points57 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %53, i32 0, i32 7
  %54 = load i32, i32* %num_points57, align 4
  %cmp58 = icmp sgt i32 %54, 1
  br i1 %cmp58, label %land.lhs.true.59, label %if.else.65

land.lhs.true.59:                                 ; preds = %if.then.56
  %55 = load i32, i32* %state.addr, align 4
  %and60 = and i32 %55, 8
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %if.then.62, label %if.else.65

if.then.62:                                       ; preds = %land.lhs.true.59
  %56 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %57 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call63 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i32 0, i32 0)) #6
  call void (%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) @gimp_tool_replace_status(%struct._GimpTool* %56, %struct._GimpDisplay* %57, i8* %call63)
  %58 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %status_help64 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %58, i32 0, i32 12
  store i32 1, i32* %status_help64, align 4
  br label %if.end.75

if.else.65:                                       ; preds = %land.lhs.true.59, %if.then.56
  %59 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %status_help66 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %59, i32 0, i32 12
  %60 = load i32, i32* %status_help66, align 4
  %tobool67 = icmp ne i32 %60, 0
  br i1 %tobool67, label %if.then.68, label %if.end.74

if.then.68:                                       ; preds = %if.else.65
  %61 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %num_points69 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %61, i32 0, i32 7
  %62 = load i32, i32* %num_points69, align 4
  %cmp70 = icmp sgt i32 %62, 1
  br i1 %cmp70, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %if.then.68
  %63 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %64 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_measure_tool_dialog_update(%struct._GimpMeasureTool* %63, %struct._GimpDisplay* %64)
  br label %if.end.73

if.else.72:                                       ; preds = %if.then.68
  %65 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %66 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void (%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) @gimp_tool_replace_status(%struct._GimpTool* %65, %struct._GimpDisplay* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.72, %if.then.71
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.else.65
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.62
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %for.end
  %67 = load i32, i32* %point, align 4
  %68 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %point77 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %68, i32 0, i32 6
  %69 = load i32, i32* %point77, align 4
  %cmp78 = icmp ne i32 %67, %69
  br i1 %cmp78, label %if.then.79, label %if.end.109

if.then.79:                                       ; preds = %if.end.76
  %70 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %point80 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %70, i32 0, i32 6
  %71 = load i32, i32* %point80, align 4
  %cmp81 = icmp ne i32 %71, -1
  br i1 %cmp81, label %land.lhs.true.82, label %if.end.93

land.lhs.true.82:                                 ; preds = %if.then.79
  %72 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %point83 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %72, i32 0, i32 6
  %73 = load i32, i32* %point83, align 4
  %idxprom84 = sext i32 %73 to i64
  %74 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %handles85 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %74, i32 0, i32 13
  %arrayidx86 = getelementptr inbounds [3 x %struct._GimpCanvasItem*], [3 x %struct._GimpCanvasItem*]* %handles85, i32 0, i64 %idxprom84
  %75 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %arrayidx86, align 8
  %tobool87 = icmp ne %struct._GimpCanvasItem* %75, null
  br i1 %tobool87, label %if.then.88, label %if.end.93

if.then.88:                                       ; preds = %land.lhs.true.82
  %76 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %point89 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %76, i32 0, i32 6
  %77 = load i32, i32* %point89, align 4
  %idxprom90 = sext i32 %77 to i64
  %78 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %handles91 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %78, i32 0, i32 13
  %arrayidx92 = getelementptr inbounds [3 x %struct._GimpCanvasItem*], [3 x %struct._GimpCanvasItem*]* %handles91, i32 0, i64 %idxprom90
  %79 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %arrayidx92, align 8
  call void @gimp_canvas_item_set_highlight(%struct._GimpCanvasItem* %79, i32 0)
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.88, %land.lhs.true.82, %if.then.79
  %80 = load i32, i32* %point, align 4
  %81 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %point94 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %81, i32 0, i32 6
  store i32 %80, i32* %point94, align 4
  %82 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %point95 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %82, i32 0, i32 6
  %83 = load i32, i32* %point95, align 4
  %cmp96 = icmp ne i32 %83, -1
  br i1 %cmp96, label %land.lhs.true.97, label %if.end.108

land.lhs.true.97:                                 ; preds = %if.end.93
  %84 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %point98 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %84, i32 0, i32 6
  %85 = load i32, i32* %point98, align 4
  %idxprom99 = sext i32 %85 to i64
  %86 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %handles100 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %86, i32 0, i32 13
  %arrayidx101 = getelementptr inbounds [3 x %struct._GimpCanvasItem*], [3 x %struct._GimpCanvasItem*]* %handles100, i32 0, i64 %idxprom99
  %87 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %arrayidx101, align 8
  %tobool102 = icmp ne %struct._GimpCanvasItem* %87, null
  br i1 %tobool102, label %if.then.103, label %if.end.108

if.then.103:                                      ; preds = %land.lhs.true.97
  %88 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %point104 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %88, i32 0, i32 6
  %89 = load i32, i32* %point104, align 4
  %idxprom105 = sext i32 %89 to i64
  %90 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %handles106 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %90, i32 0, i32 13
  %arrayidx107 = getelementptr inbounds [3 x %struct._GimpCanvasItem*], [3 x %struct._GimpCanvasItem*]* %handles106, i32 0, i64 %idxprom105
  %91 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %arrayidx107, align 8
  call void @gimp_canvas_item_set_highlight(%struct._GimpCanvasItem* %91, i32 1)
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.103, %land.lhs.true.97, %if.end.93
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.end.76
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_measure_tool_cursor_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %measure = alloca %struct._GimpMeasureTool*, align 8
  %cursor = alloca i32, align 4
  %modifier = alloca i32, align 4
  %toggle_mask = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_measure_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpMeasureTool*
  store %struct._GimpMeasureTool* %2, %struct._GimpMeasureTool** %measure, align 8
  store i32 1027, i32* %cursor, align 4
  store i32 0, i32* %modifier, align 4
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display2 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 4
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display2, align 8
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %cmp = icmp eq %struct._GimpDisplay* %4, %5
  br i1 %cmp, label %if.then, label %if.end.35

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %point = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %6, i32 0, i32 6
  %7 = load i32, i32* %point, align 4
  %cmp3 = icmp ne i32 %7, -1
  br i1 %cmp3, label %if.then.4, label %if.else.26

if.then.4:                                        ; preds = %if.then
  %call5 = call i32 @gimp_get_toggle_behavior_mask()
  store i32 %call5, i32* %toggle_mask, align 4
  %8 = load i32, i32* %state.addr, align 4
  %9 = load i32, i32* %toggle_mask, align 4
  %and = and i32 %8, %9
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.6, label %if.else.10

if.then.6:                                        ; preds = %if.then.4
  %10 = load i32, i32* %state.addr, align 4
  %and7 = and i32 %10, 8
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.6
  store i32 1035, i32* %cursor, align 4
  br label %if.end

if.else:                                          ; preds = %if.then.6
  store i32 1039, i32* %cursor, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  br label %if.end.25

if.else.10:                                       ; preds = %if.then.4
  %11 = load i32, i32* %state.addr, align 4
  %and11 = and i32 %11, 8
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.else.10
  store i32 1038, i32* %cursor, align 4
  br label %if.end.24

if.else.14:                                       ; preds = %if.else.10
  %12 = load i32, i32* %state.addr, align 4
  %and15 = and i32 %12, 1
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %land.lhs.true, label %if.else.22

land.lhs.true:                                    ; preds = %if.else.14
  %13 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %point17 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %13, i32 0, i32 6
  %14 = load i32, i32* %point17, align 4
  %cmp18 = icmp eq i32 %14, 0
  br i1 %cmp18, label %land.lhs.true.19, label %if.then.21

land.lhs.true.19:                                 ; preds = %land.lhs.true
  %15 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %num_points = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %15, i32 0, i32 7
  %16 = load i32, i32* %num_points, align 4
  %cmp20 = icmp eq i32 %16, 3
  br i1 %cmp20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %land.lhs.true.19, %land.lhs.true
  store i32 2, i32* %modifier, align 4
  br label %if.end.23

if.else.22:                                       ; preds = %land.lhs.true.19, %if.else.14
  store i32 5, i32* %modifier, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.22, %if.then.21
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.13
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end
  br label %if.end.34

if.else.26:                                       ; preds = %if.then
  %17 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %num_points27 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %17, i32 0, i32 7
  %18 = load i32, i32* %num_points27, align 4
  %cmp28 = icmp sgt i32 %18, 1
  br i1 %cmp28, label %land.lhs.true.29, label %if.end.33

land.lhs.true.29:                                 ; preds = %if.else.26
  %19 = load i32, i32* %state.addr, align 4
  %and30 = and i32 %19, 8
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %land.lhs.true.29
  store i32 5, i32* %modifier, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %land.lhs.true.29, %if.else.26
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end.25
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %entry
  %20 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %20, i32 0, i32 3
  %21 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %22 = load i32, i32* %cursor, align 4
  call void @gimp_tool_control_set_cursor(%struct._GimpToolControl* %21, i32 %22)
  %23 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control36 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %23, i32 0, i32 3
  %24 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control36, align 8
  %25 = load i32, i32* %modifier, align 4
  call void @gimp_tool_control_set_cursor_modifier(%struct._GimpToolControl* %24, i32 %25)
  %26 = load i8*, i8** @gimp_measure_tool_parent_class, align 8
  %27 = bitcast i8* %26 to %struct._GTypeClass*
  %call37 = call i64 @gimp_tool_get_type() #5
  %call38 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %27, i64 %call37)
  %28 = bitcast %struct._GTypeClass* %call38 to %struct._GimpToolClass*
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %28, i32 0, i32 13
  %29 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %30 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %31 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %32 = load i32, i32* %state.addr, align 4
  %33 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %29(%struct._GimpTool* %30, %struct._GimpCoords* %31, i32 %32, %struct._GimpDisplay* %33)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_measure_tool_draw(%struct._GimpDrawTool* %draw_tool) #3 {
entry:
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %measure = alloca %struct._GimpMeasureTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %stroke_group = alloca %struct._GimpCanvasGroup*, align 8
  %i = alloca i32, align 4
  %draw_arc = alloca i32, align 4
  %angle1 = alloca double, align 8
  %angle295 = alloca double, align 8
  %item = alloca %struct._GimpCanvasItem*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %target = alloca double, align 8
  %arc_radius = alloca double, align 8
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_measure_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpMeasureTool*
  store %struct._GimpMeasureTool* %2, %struct._GimpMeasureTool** %measure, align 8
  %3 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %4 = bitcast %struct._GimpDrawTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  store %struct._GimpTool* %5, %struct._GimpTool** %tool, align 8
  store i32 0, i32* %draw_arc, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %6, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %handles = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %8, i32 0, i32 13
  %arrayidx = getelementptr inbounds [3 x %struct._GimpCanvasItem*], [3 x %struct._GimpCanvasItem*]* %handles, i32 0, i64 %idxprom
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %call4 = call %struct._GimpCanvasGroup* @gimp_draw_tool_add_stroke_group(%struct._GimpDrawTool* %10)
  store %struct._GimpCanvasGroup* %call4, %struct._GimpCanvasGroup** %stroke_group, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.71, %for.end
  %11 = load i32, i32* %i, align 4
  %12 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %num_points = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %12, i32 0, i32 7
  %13 = load i32, i32* %num_points, align 4
  %cmp6 = icmp slt i32 %11, %13
  br i1 %cmp6, label %for.body.7, label %for.end.73

for.body.7:                                       ; preds = %for.cond.5
  %14 = load i32, i32* %i, align 4
  %cmp8 = icmp eq i32 %14, 0
  br i1 %cmp8, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body.7
  %15 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %num_points9 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %15, i32 0, i32 7
  %16 = load i32, i32* %num_points9, align 4
  %cmp10 = icmp eq i32 %16, 3
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %17 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %18 to i64
  %19 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %x = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %19, i32 0, i32 8
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %x, i32 0, i64 %idxprom11
  %20 = load i32, i32* %arrayidx12, align 4
  %conv = sitofp i32 %20 to double
  %21 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %21 to i64
  %22 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %y = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %22, i32 0, i32 9
  %arrayidx14 = getelementptr inbounds [3 x i32], [3 x i32]* %y, i32 0, i64 %idxprom13
  %23 = load i32, i32* %arrayidx14, align 4
  %conv15 = sitofp i32 %23 to double
  %call16 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %17, i32 2, double %conv, double %conv15, i32 15, i32 15, i32 0)
  %24 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %24 to i64
  %25 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %handles18 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %25, i32 0, i32 13
  %arrayidx19 = getelementptr inbounds [3 x %struct._GimpCanvasItem*], [3 x %struct._GimpCanvasItem*]* %handles18, i32 0, i64 %idxprom17
  store %struct._GimpCanvasItem* %call16, %struct._GimpCanvasItem** %arrayidx19, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %for.body.7
  %26 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %27 to i64
  %28 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %x21 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %28, i32 0, i32 8
  %arrayidx22 = getelementptr inbounds [3 x i32], [3 x i32]* %x21, i32 0, i64 %idxprom20
  %29 = load i32, i32* %arrayidx22, align 4
  %conv23 = sitofp i32 %29 to double
  %30 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %30 to i64
  %31 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %y25 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %31, i32 0, i32 9
  %arrayidx26 = getelementptr inbounds [3 x i32], [3 x i32]* %y25, i32 0, i64 %idxprom24
  %32 = load i32, i32* %arrayidx26, align 4
  %conv27 = sitofp i32 %32 to double
  %call28 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %26, i32 4, double %conv23, double %conv27, i32 15, i32 15, i32 0)
  %33 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %33 to i64
  %34 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %handles30 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %34, i32 0, i32 13
  %arrayidx31 = getelementptr inbounds [3 x %struct._GimpCanvasItem*], [3 x %struct._GimpCanvasItem*]* %handles30, i32 0, i64 %idxprom29
  store %struct._GimpCanvasItem* %call28, %struct._GimpCanvasItem** %arrayidx31, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %35 = load i32, i32* %i, align 4
  %cmp32 = icmp sgt i32 %35, 0
  br i1 %cmp32, label %if.then.34, label %if.end.70

if.then.34:                                       ; preds = %if.end
  %36 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %37 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %stroke_group, align 8
  call void @gimp_draw_tool_push_group(%struct._GimpDrawTool* %36, %struct._GimpCanvasGroup* %37)
  %38 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %39 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %x35 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %39, i32 0, i32 8
  %arrayidx36 = getelementptr inbounds [3 x i32], [3 x i32]* %x35, i32 0, i64 0
  %40 = load i32, i32* %arrayidx36, align 4
  %conv37 = sitofp i32 %40 to double
  %41 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %y38 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %41, i32 0, i32 9
  %arrayidx39 = getelementptr inbounds [3 x i32], [3 x i32]* %y38, i32 0, i64 0
  %42 = load i32, i32* %arrayidx39, align 4
  %conv40 = sitofp i32 %42 to double
  %43 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %43 to i64
  %44 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %x42 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %44, i32 0, i32 8
  %arrayidx43 = getelementptr inbounds [3 x i32], [3 x i32]* %x42, i32 0, i64 %idxprom41
  %45 = load i32, i32* %arrayidx43, align 4
  %conv44 = sitofp i32 %45 to double
  %46 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %46 to i64
  %47 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %y46 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %47, i32 0, i32 9
  %arrayidx47 = getelementptr inbounds [3 x i32], [3 x i32]* %y46, i32 0, i64 %idxprom45
  %48 = load i32, i32* %arrayidx47, align 4
  %conv48 = sitofp i32 %48 to double
  %call49 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_line(%struct._GimpDrawTool* %38, double %conv37, double %conv40, double %conv44, double %conv48)
  %49 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  call void @gimp_draw_tool_pop_group(%struct._GimpDrawTool* %49)
  %50 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %51 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %51, i32 0, i32 4
  %52 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %53 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %x50 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %53, i32 0, i32 8
  %arrayidx51 = getelementptr inbounds [3 x i32], [3 x i32]* %x50, i32 0, i64 0
  %54 = load i32, i32* %arrayidx51, align 4
  %conv52 = sitofp i32 %54 to double
  %55 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %y53 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %55, i32 0, i32 9
  %arrayidx54 = getelementptr inbounds [3 x i32], [3 x i32]* %y53, i32 0, i64 0
  %56 = load i32, i32* %arrayidx54, align 4
  %conv55 = sitofp i32 %56 to double
  %57 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %57 to i64
  %58 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %x57 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %58, i32 0, i32 8
  %arrayidx58 = getelementptr inbounds [3 x i32], [3 x i32]* %x57, i32 0, i64 %idxprom56
  %59 = load i32, i32* %arrayidx58, align 4
  %conv59 = sitofp i32 %59 to double
  %60 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %60 to i64
  %61 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %y61 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %61, i32 0, i32 9
  %arrayidx62 = getelementptr inbounds [3 x i32], [3 x i32]* %y61, i32 0, i64 %idxprom60
  %62 = load i32, i32* %arrayidx62, align 4
  %conv63 = sitofp i32 %62 to double
  %call64 = call double @gimp_draw_tool_calc_distance(%struct._GimpDrawTool* %50, %struct._GimpDisplay* %52, double %conv52, double %conv55, double %conv59, double %conv63)
  %cmp65 = fcmp ogt double %call64, 3.000000e+01
  br i1 %cmp65, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %if.then.34
  %63 = load i32, i32* %draw_arc, align 4
  %inc68 = add nsw i32 %63, 1
  store i32 %inc68, i32* %draw_arc, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %if.then.34
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.end
  br label %for.inc.71

for.inc.71:                                       ; preds = %if.end.70
  %64 = load i32, i32* %i, align 4
  %inc72 = add nsw i32 %64, 1
  store i32 %inc72, i32* %i, align 4
  br label %for.cond.5

for.end.73:                                       ; preds = %for.cond.5
  %65 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %point = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %65, i32 0, i32 6
  %66 = load i32, i32* %point, align 4
  %cmp74 = icmp ne i32 %66, -1
  br i1 %cmp74, label %land.lhs.true.76, label %if.end.86

land.lhs.true.76:                                 ; preds = %for.end.73
  %67 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %point77 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %67, i32 0, i32 6
  %68 = load i32, i32* %point77, align 4
  %idxprom78 = sext i32 %68 to i64
  %69 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %handles79 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %69, i32 0, i32 13
  %arrayidx80 = getelementptr inbounds [3 x %struct._GimpCanvasItem*], [3 x %struct._GimpCanvasItem*]* %handles79, i32 0, i64 %idxprom78
  %70 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %arrayidx80, align 8
  %tobool = icmp ne %struct._GimpCanvasItem* %70, null
  br i1 %tobool, label %if.then.81, label %if.end.86

if.then.81:                                       ; preds = %land.lhs.true.76
  %71 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %point82 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %71, i32 0, i32 6
  %72 = load i32, i32* %point82, align 4
  %idxprom83 = sext i32 %72 to i64
  %73 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %handles84 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %73, i32 0, i32 13
  %arrayidx85 = getelementptr inbounds [3 x %struct._GimpCanvasItem*], [3 x %struct._GimpCanvasItem*]* %handles84, i32 0, i64 %idxprom83
  %74 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %arrayidx85, align 8
  call void @gimp_canvas_item_set_highlight(%struct._GimpCanvasItem* %74, i32 1)
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.81, %land.lhs.true.76, %for.end.73
  %75 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %num_points87 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %75, i32 0, i32 7
  %76 = load i32, i32* %num_points87, align 4
  %cmp88 = icmp sgt i32 %76, 1
  br i1 %cmp88, label %land.lhs.true.90, label %if.end.157

land.lhs.true.90:                                 ; preds = %if.end.86
  %77 = load i32, i32* %draw_arc, align 4
  %78 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %num_points91 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %78, i32 0, i32 7
  %79 = load i32, i32* %num_points91, align 4
  %sub = sub nsw i32 %79, 1
  %cmp92 = icmp eq i32 %77, %sub
  br i1 %cmp92, label %if.then.94, label %if.end.157

if.then.94:                                       ; preds = %land.lhs.true.90
  %80 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %angle2 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %80, i32 0, i32 11
  %81 = load double, double* %angle2, align 8
  %div = fdiv double %81, 1.800000e+02
  %mul = fmul double %div, 0x400921FB54442D18
  store double %mul, double* %angle1, align 8
  %82 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %angle196 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %82, i32 0, i32 10
  %83 = load double, double* %angle196, align 8
  %84 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %angle297 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %84, i32 0, i32 11
  %85 = load double, double* %angle297, align 8
  %sub98 = fsub double %83, %85
  %div99 = fdiv double %sub98, 1.800000e+02
  %mul100 = fmul double %div99, 0x400921FB54442D18
  store double %mul100, double* %angle295, align 8
  %86 = load double, double* %angle295, align 8
  %cmp101 = fcmp ogt double %86, 0x400921FB54442D18
  br i1 %cmp101, label %if.then.103, label %if.end.105

if.then.103:                                      ; preds = %if.then.94
  %87 = load double, double* %angle295, align 8
  %sub104 = fsub double %87, 0x401921FB54442D18
  store double %sub104, double* %angle295, align 8
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.103, %if.then.94
  %88 = load double, double* %angle295, align 8
  %cmp106 = fcmp olt double %88, 0xC00921FB54442D18
  br i1 %cmp106, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %if.end.105
  %89 = load double, double* %angle295, align 8
  %add = fadd double %89, 0x401921FB54442D18
  store double %add, double* %angle295, align 8
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.108, %if.end.105
  %90 = load double, double* %angle295, align 8
  %cmp110 = fcmp une double %90, 0.000000e+00
  br i1 %cmp110, label %if.then.112, label %if.end.156

if.then.112:                                      ; preds = %if.end.109
  %91 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %92 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %stroke_group, align 8
  call void @gimp_draw_tool_push_group(%struct._GimpDrawTool* %91, %struct._GimpCanvasGroup* %92)
  %93 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %94 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %x113 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %94, i32 0, i32 8
  %arrayidx114 = getelementptr inbounds [3 x i32], [3 x i32]* %x113, i32 0, i64 0
  %95 = load i32, i32* %arrayidx114, align 4
  %conv115 = sitofp i32 %95 to double
  %96 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %y116 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %96, i32 0, i32 9
  %arrayidx117 = getelementptr inbounds [3 x i32], [3 x i32]* %y116, i32 0, i64 0
  %97 = load i32, i32* %arrayidx117, align 4
  %conv118 = sitofp i32 %97 to double
  %call119 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %93, i32 2, double %conv115, double %conv118, i32 61, i32 61, i32 0)
  store %struct._GimpCanvasItem* %call119, %struct._GimpCanvasItem** %item, align 8
  %98 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %99 = load double, double* %angle1, align 8
  %100 = load double, double* %angle295, align 8
  call void @gimp_canvas_handle_set_angles(%struct._GimpCanvasItem* %98, double %99, double %100)
  %101 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %num_points120 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %101, i32 0, i32 7
  %102 = load i32, i32* %num_points120, align 4
  %cmp121 = icmp eq i32 %102, 2
  br i1 %cmp121, label %if.then.123, label %if.end.155

if.then.123:                                      ; preds = %if.then.112
  %103 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display124 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %103, i32 0, i32 4
  %104 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display124, align 8
  %call125 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %104)
  store %struct._GimpDisplayShell* %call125, %struct._GimpDisplayShell** %shell, align 8
  %105 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %105, i32 0, i32 13
  %106 = load double, double* %scale_x, align 8
  %div126 = fdiv double 7.000000e+00, %106
  store double %div126, double* %target, align 8
  %107 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_x127 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %107, i32 0, i32 13
  %108 = load double, double* %scale_x127, align 8
  %div128 = fdiv double 3.000000e+01, %108
  store double %div128, double* %arc_radius, align 8
  %109 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %110 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %x129 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %110, i32 0, i32 8
  %arrayidx130 = getelementptr inbounds [3 x i32], [3 x i32]* %x129, i32 0, i64 0
  %111 = load i32, i32* %arrayidx130, align 4
  %conv131 = sitofp i32 %111 to double
  %112 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %y132 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %112, i32 0, i32 9
  %arrayidx133 = getelementptr inbounds [3 x i32], [3 x i32]* %y132, i32 0, i64 0
  %113 = load i32, i32* %arrayidx133, align 4
  %conv134 = sitofp i32 %113 to double
  %114 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %x135 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %114, i32 0, i32 8
  %arrayidx136 = getelementptr inbounds [3 x i32], [3 x i32]* %x135, i32 0, i64 1
  %115 = load i32, i32* %arrayidx136, align 4
  %116 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %x137 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %116, i32 0, i32 8
  %arrayidx138 = getelementptr inbounds [3 x i32], [3 x i32]* %x137, i32 0, i64 0
  %117 = load i32, i32* %arrayidx138, align 4
  %cmp139 = icmp sge i32 %115, %117
  br i1 %cmp139, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.123
  %118 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %x141 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %118, i32 0, i32 8
  %arrayidx142 = getelementptr inbounds [3 x i32], [3 x i32]* %x141, i32 0, i64 0
  %119 = load i32, i32* %arrayidx142, align 4
  %conv143 = sitofp i32 %119 to double
  %120 = load double, double* %arc_radius, align 8
  %add144 = fadd double %conv143, %120
  %121 = load double, double* %target, align 8
  %add145 = fadd double %add144, %121
  br label %cond.end

cond.false:                                       ; preds = %if.then.123
  %122 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %x146 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %122, i32 0, i32 8
  %arrayidx147 = getelementptr inbounds [3 x i32], [3 x i32]* %x146, i32 0, i64 0
  %123 = load i32, i32* %arrayidx147, align 4
  %conv148 = sitofp i32 %123 to double
  %124 = load double, double* %arc_radius, align 8
  %sub149 = fsub double %conv148, %124
  %125 = load double, double* %target, align 8
  %sub150 = fsub double %sub149, %125
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %add145, %cond.true ], [ %sub150, %cond.false ]
  %126 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure, align 8
  %y151 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %126, i32 0, i32 9
  %arrayidx152 = getelementptr inbounds [3 x i32], [3 x i32]* %y151, i32 0, i64 0
  %127 = load i32, i32* %arrayidx152, align 4
  %conv153 = sitofp i32 %127 to double
  %call154 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_line(%struct._GimpDrawTool* %109, double %conv131, double %conv134, double %cond, double %conv153)
  br label %if.end.155

if.end.155:                                       ; preds = %cond.end, %if.then.112
  %128 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  call void @gimp_draw_tool_pop_group(%struct._GimpDrawTool* %128)
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.155, %if.end.109
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.156, %land.lhs.true.90, %if.end.86
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool*) #1

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare void @gimp_tool_pop_status(%struct._GimpTool*, %struct._GimpDisplay*) #1

declare i32 @gimp_get_toggle_behavior_mask() #1

declare i32 @gimp_image_get_height(%struct._GimpImage*) #1

declare i32 @gimp_image_get_width(%struct._GimpImage*) #1

declare i32 @gimp_image_undo_group_start(%struct._GimpImage*, i32, i8*) #1

declare %struct._GimpGuide* @gimp_image_add_hguide(%struct._GimpImage*, i32, i32) #1

declare %struct._GimpGuide* @gimp_image_add_vguide(%struct._GimpImage*, i32, i32) #1

declare i32 @gimp_image_undo_group_end(%struct._GimpImage*) #1

declare void @gimp_image_flush(%struct._GimpImage*) #1

declare i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool*) #1

declare void @gimp_draw_tool_stop(%struct._GimpDrawTool*) #1

declare void @gimp_tool_replace_status(%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) #1

declare void @gimp_draw_tool_start(%struct._GimpDrawTool*, %struct._GimpDisplay*) #1

declare void @gimp_tool_control_activate(%struct._GimpToolControl*) #1

declare i32 @gimp_display_shell_get_show_statusbar(%struct._GimpDisplayShell*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_measure_tool_dialog_new(%struct._GimpMeasureTool* %measure) #3 {
entry:
  %measure.addr = alloca %struct._GimpMeasureTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  store %struct._GimpMeasureTool* %measure, %struct._GimpMeasureTool** %measure.addr, align 8
  %0 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %1 = bitcast %struct._GimpMeasureTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %tool_info = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 1
  %4 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 4
  %6 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call2 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %6)
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0)) #6
  %call4 = call %struct._GtkWidget* (%struct._GimpToolInfo*, %struct._GimpDisplayShell*, i8*, ...) @gimp_tool_dialog_new(%struct._GimpToolInfo* %4, %struct._GimpDisplayShell* %call2, i8* %call3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 -7, i8* null)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %dialog, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_window_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkWindow*
  call void @gtk_window_set_focus_on_map(%struct._GtkWindow* %9, i32 0)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %11 = bitcast %struct._GtkWidget* %10 to i8*
  %call7 = call i64 @g_signal_connect_data(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @gtk_widget_destroy to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call8 = call %struct._GtkWidget* @gtk_table_new(i32 4, i32 5, i32 1)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %table, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_table_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call9)
  %14 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %14, i32 6)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_table_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %17, i32 6)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_container_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call13)
  %20 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %20, i32 6)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_dialog_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call15)
  %23 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkDialog*
  %call17 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %23)
  %24 = bitcast %struct._GtkWidget* %call17 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_box_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call18)
  %25 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkBox*
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %25, %struct._GtkWidget* %26, i32 1, i32 1, i32 0)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %27)
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0)) #6
  %call21 = call %struct._GtkWidget* @gtk_label_new(i8* %call20)
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %label, align 8
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_misc_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call22)
  %30 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %30, float 0.000000e+00, float 5.000000e-01)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_table_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call24)
  %33 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkTable*
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %33, %struct._GtkWidget* %34, i32 0, i32 1, i32 0, i32 1)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %35)
  %call26 = call %struct._GtkWidget* @gtk_label_new(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0))
  store %struct._GtkWidget* %call26, %struct._GtkWidget** %label, align 8
  %36 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %distance_label = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %36, i32 0, i32 15
  %arrayidx = getelementptr inbounds [2 x %struct._GtkWidget*], [2 x %struct._GtkWidget*]* %distance_label, i32 0, i64 0
  store %struct._GtkWidget* %call26, %struct._GtkWidget** %arrayidx, align 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_label_get_type() #5
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call27)
  %39 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkLabel*
  call void @gtk_label_set_selectable(%struct._GtkLabel* %39, i32 1)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_misc_get_type() #5
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call29)
  %42 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %42, float 1.000000e+00, float 5.000000e-01)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_table_get_type() #5
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call31)
  %45 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkTable*
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %45, %struct._GtkWidget* %46, i32 1, i32 2, i32 0, i32 1)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %47)
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0)) #6
  %call34 = call %struct._GtkWidget* @gtk_label_new(i8* %call33)
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %label, align 8
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_misc_get_type() #5
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call35)
  %50 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %50, float 0.000000e+00, float 5.000000e-01)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_table_get_type() #5
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call37)
  %53 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkTable*
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %53, %struct._GtkWidget* %54, i32 2, i32 3, i32 0, i32 1)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %55)
  %call39 = call %struct._GtkWidget* @gtk_label_new(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0))
  store %struct._GtkWidget* %call39, %struct._GtkWidget** %label, align 8
  %56 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %distance_label40 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %56, i32 0, i32 15
  %arrayidx41 = getelementptr inbounds [2 x %struct._GtkWidget*], [2 x %struct._GtkWidget*]* %distance_label40, i32 0, i64 1
  store %struct._GtkWidget* %call39, %struct._GtkWidget** %arrayidx41, align 8
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_label_get_type() #5
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call42)
  %59 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkLabel*
  call void @gtk_label_set_selectable(%struct._GtkLabel* %59, i32 1)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_misc_get_type() #5
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call44)
  %62 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %62, float 1.000000e+00, float 5.000000e-01)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_table_get_type() #5
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call46)
  %65 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkTable*
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %65, %struct._GtkWidget* %66, i32 3, i32 4, i32 0, i32 1)
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %67)
  %call48 = call %struct._GtkWidget* @gtk_label_new(i8* null)
  store %struct._GtkWidget* %call48, %struct._GtkWidget** %label, align 8
  %68 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %unit_label = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %68, i32 0, i32 19
  %arrayidx49 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* %unit_label, i32 0, i64 0
  store %struct._GtkWidget* %call48, %struct._GtkWidget** %arrayidx49, align 8
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %70 = bitcast %struct._GtkWidget* %69 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_misc_get_type() #5
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call50)
  %71 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %71, float 0.000000e+00, float 5.000000e-01)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_table_get_type() #5
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call52)
  %74 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkTable*
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %74, %struct._GtkWidget* %75, i32 4, i32 5, i32 0, i32 1)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %76)
  %call54 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0)) #6
  %call55 = call %struct._GtkWidget* @gtk_label_new(i8* %call54)
  store %struct._GtkWidget* %call55, %struct._GtkWidget** %label, align 8
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %78 = bitcast %struct._GtkWidget* %77 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_misc_get_type() #5
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call56)
  %79 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %79, float 0.000000e+00, float 5.000000e-01)
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_table_get_type() #5
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call58)
  %82 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkTable*
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %82, %struct._GtkWidget* %83, i32 0, i32 1, i32 1, i32 2)
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %84)
  %call60 = call %struct._GtkWidget* @gtk_label_new(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0))
  store %struct._GtkWidget* %call60, %struct._GtkWidget** %label, align 8
  %85 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %angle_label = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %85, i32 0, i32 16
  %arrayidx61 = getelementptr inbounds [2 x %struct._GtkWidget*], [2 x %struct._GtkWidget*]* %angle_label, i32 0, i64 0
  store %struct._GtkWidget* %call60, %struct._GtkWidget** %arrayidx61, align 8
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %87 = bitcast %struct._GtkWidget* %86 to %struct._GTypeInstance*
  %call62 = call i64 @gtk_label_get_type() #5
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call62)
  %88 = bitcast %struct._GTypeInstance* %call63 to %struct._GtkLabel*
  call void @gtk_label_set_selectable(%struct._GtkLabel* %88, i32 1)
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %90 = bitcast %struct._GtkWidget* %89 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_misc_get_type() #5
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call64)
  %91 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %91, float 1.000000e+00, float 5.000000e-01)
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %93 = bitcast %struct._GtkWidget* %92 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_table_get_type() #5
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 %call66)
  %94 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkTable*
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %94, %struct._GtkWidget* %95, i32 1, i32 2, i32 1, i32 2)
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %96)
  %call68 = call %struct._GtkWidget* @gtk_label_new(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0))
  store %struct._GtkWidget* %call68, %struct._GtkWidget** %label, align 8
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %98 = bitcast %struct._GtkWidget* %97 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_misc_get_type() #5
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call69)
  %99 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %99, float 0.000000e+00, float 5.000000e-01)
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %101 = bitcast %struct._GtkWidget* %100 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_table_get_type() #5
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 %call71)
  %102 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkTable*
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %102, %struct._GtkWidget* %103, i32 2, i32 3, i32 1, i32 2)
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %104)
  %call73 = call %struct._GtkWidget* @gtk_label_new(i8* null)
  store %struct._GtkWidget* %call73, %struct._GtkWidget** %label, align 8
  %105 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %angle_label74 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %105, i32 0, i32 16
  %arrayidx75 = getelementptr inbounds [2 x %struct._GtkWidget*], [2 x %struct._GtkWidget*]* %angle_label74, i32 0, i64 1
  store %struct._GtkWidget* %call73, %struct._GtkWidget** %arrayidx75, align 8
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %107 = bitcast %struct._GtkWidget* %106 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_label_get_type() #5
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %107, i64 %call76)
  %108 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkLabel*
  call void @gtk_label_set_selectable(%struct._GtkLabel* %108, i32 1)
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %110 = bitcast %struct._GtkWidget* %109 to %struct._GTypeInstance*
  %call78 = call i64 @gtk_misc_get_type() #5
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %110, i64 %call78)
  %111 = bitcast %struct._GTypeInstance* %call79 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %111, float 1.000000e+00, float 5.000000e-01)
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %113 = bitcast %struct._GtkWidget* %112 to %struct._GTypeInstance*
  %call80 = call i64 @gtk_table_get_type() #5
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %113, i64 %call80)
  %114 = bitcast %struct._GTypeInstance* %call81 to %struct._GtkTable*
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %114, %struct._GtkWidget* %115, i32 3, i32 4, i32 1, i32 2)
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %116)
  %call82 = call %struct._GtkWidget* @gtk_label_new(i8* null)
  store %struct._GtkWidget* %call82, %struct._GtkWidget** %label, align 8
  %117 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %unit_label83 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %117, i32 0, i32 19
  %arrayidx84 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* %unit_label83, i32 0, i64 1
  store %struct._GtkWidget* %call82, %struct._GtkWidget** %arrayidx84, align 8
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %119 = bitcast %struct._GtkWidget* %118 to %struct._GTypeInstance*
  %call85 = call i64 @gtk_misc_get_type() #5
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %119, i64 %call85)
  %120 = bitcast %struct._GTypeInstance* %call86 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %120, float 0.000000e+00, float 5.000000e-01)
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %122 = bitcast %struct._GtkWidget* %121 to %struct._GTypeInstance*
  %call87 = call i64 @gtk_table_get_type() #5
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %122, i64 %call87)
  %123 = bitcast %struct._GTypeInstance* %call88 to %struct._GtkTable*
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %123, %struct._GtkWidget* %124, i32 4, i32 5, i32 1, i32 2)
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %125)
  %call89 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)) #6
  %call90 = call %struct._GtkWidget* @gtk_label_new(i8* %call89)
  store %struct._GtkWidget* %call90, %struct._GtkWidget** %label, align 8
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %127 = bitcast %struct._GtkWidget* %126 to %struct._GTypeInstance*
  %call91 = call i64 @gtk_misc_get_type() #5
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %127, i64 %call91)
  %128 = bitcast %struct._GTypeInstance* %call92 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %128, float 0.000000e+00, float 5.000000e-01)
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %130 = bitcast %struct._GtkWidget* %129 to %struct._GTypeInstance*
  %call93 = call i64 @gtk_table_get_type() #5
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %130, i64 %call93)
  %131 = bitcast %struct._GTypeInstance* %call94 to %struct._GtkTable*
  %132 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %131, %struct._GtkWidget* %132, i32 0, i32 1, i32 2, i32 3)
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %133)
  %call95 = call %struct._GtkWidget* @gtk_label_new(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0))
  store %struct._GtkWidget* %call95, %struct._GtkWidget** %label, align 8
  %134 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %width_label = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %134, i32 0, i32 17
  %arrayidx96 = getelementptr inbounds [2 x %struct._GtkWidget*], [2 x %struct._GtkWidget*]* %width_label, i32 0, i64 0
  store %struct._GtkWidget* %call95, %struct._GtkWidget** %arrayidx96, align 8
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %136 = bitcast %struct._GtkWidget* %135 to %struct._GTypeInstance*
  %call97 = call i64 @gtk_label_get_type() #5
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %136, i64 %call97)
  %137 = bitcast %struct._GTypeInstance* %call98 to %struct._GtkLabel*
  call void @gtk_label_set_selectable(%struct._GtkLabel* %137, i32 1)
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %139 = bitcast %struct._GtkWidget* %138 to %struct._GTypeInstance*
  %call99 = call i64 @gtk_misc_get_type() #5
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %139, i64 %call99)
  %140 = bitcast %struct._GTypeInstance* %call100 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %140, float 1.000000e+00, float 5.000000e-01)
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %142 = bitcast %struct._GtkWidget* %141 to %struct._GTypeInstance*
  %call101 = call i64 @gtk_table_get_type() #5
  %call102 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %142, i64 %call101)
  %143 = bitcast %struct._GTypeInstance* %call102 to %struct._GtkTable*
  %144 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %143, %struct._GtkWidget* %144, i32 1, i32 2, i32 2, i32 3)
  %145 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %145)
  %call103 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0)) #6
  %call104 = call %struct._GtkWidget* @gtk_label_new(i8* %call103)
  store %struct._GtkWidget* %call104, %struct._GtkWidget** %label, align 8
  %146 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %147 = bitcast %struct._GtkWidget* %146 to %struct._GTypeInstance*
  %call105 = call i64 @gtk_misc_get_type() #5
  %call106 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %147, i64 %call105)
  %148 = bitcast %struct._GTypeInstance* %call106 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %148, float 0.000000e+00, float 5.000000e-01)
  %149 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %150 = bitcast %struct._GtkWidget* %149 to %struct._GTypeInstance*
  %call107 = call i64 @gtk_table_get_type() #5
  %call108 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %150, i64 %call107)
  %151 = bitcast %struct._GTypeInstance* %call108 to %struct._GtkTable*
  %152 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %151, %struct._GtkWidget* %152, i32 2, i32 3, i32 2, i32 3)
  %153 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %153)
  %call109 = call %struct._GtkWidget* @gtk_label_new(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0))
  store %struct._GtkWidget* %call109, %struct._GtkWidget** %label, align 8
  %154 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %width_label110 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %154, i32 0, i32 17
  %arrayidx111 = getelementptr inbounds [2 x %struct._GtkWidget*], [2 x %struct._GtkWidget*]* %width_label110, i32 0, i64 1
  store %struct._GtkWidget* %call109, %struct._GtkWidget** %arrayidx111, align 8
  %155 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %156 = bitcast %struct._GtkWidget* %155 to %struct._GTypeInstance*
  %call112 = call i64 @gtk_label_get_type() #5
  %call113 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %156, i64 %call112)
  %157 = bitcast %struct._GTypeInstance* %call113 to %struct._GtkLabel*
  call void @gtk_label_set_selectable(%struct._GtkLabel* %157, i32 1)
  %158 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %159 = bitcast %struct._GtkWidget* %158 to %struct._GTypeInstance*
  %call114 = call i64 @gtk_misc_get_type() #5
  %call115 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %159, i64 %call114)
  %160 = bitcast %struct._GTypeInstance* %call115 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %160, float 1.000000e+00, float 5.000000e-01)
  %161 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %162 = bitcast %struct._GtkWidget* %161 to %struct._GTypeInstance*
  %call116 = call i64 @gtk_table_get_type() #5
  %call117 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %162, i64 %call116)
  %163 = bitcast %struct._GTypeInstance* %call117 to %struct._GtkTable*
  %164 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %163, %struct._GtkWidget* %164, i32 3, i32 4, i32 2, i32 3)
  %165 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %165)
  %call118 = call %struct._GtkWidget* @gtk_label_new(i8* null)
  store %struct._GtkWidget* %call118, %struct._GtkWidget** %label, align 8
  %166 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %unit_label119 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %166, i32 0, i32 19
  %arrayidx120 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* %unit_label119, i32 0, i64 2
  store %struct._GtkWidget* %call118, %struct._GtkWidget** %arrayidx120, align 8
  %167 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %168 = bitcast %struct._GtkWidget* %167 to %struct._GTypeInstance*
  %call121 = call i64 @gtk_misc_get_type() #5
  %call122 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %168, i64 %call121)
  %169 = bitcast %struct._GTypeInstance* %call122 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %169, float 0.000000e+00, float 5.000000e-01)
  %170 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %171 = bitcast %struct._GtkWidget* %170 to %struct._GTypeInstance*
  %call123 = call i64 @gtk_table_get_type() #5
  %call124 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %171, i64 %call123)
  %172 = bitcast %struct._GTypeInstance* %call124 to %struct._GtkTable*
  %173 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %172, %struct._GtkWidget* %173, i32 4, i32 5, i32 2, i32 3)
  %174 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %174)
  %call125 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0)) #6
  %call126 = call %struct._GtkWidget* @gtk_label_new(i8* %call125)
  store %struct._GtkWidget* %call126, %struct._GtkWidget** %label, align 8
  %175 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %176 = bitcast %struct._GtkWidget* %175 to %struct._GTypeInstance*
  %call127 = call i64 @gtk_misc_get_type() #5
  %call128 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %176, i64 %call127)
  %177 = bitcast %struct._GTypeInstance* %call128 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %177, float 0.000000e+00, float 5.000000e-01)
  %178 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %179 = bitcast %struct._GtkWidget* %178 to %struct._GTypeInstance*
  %call129 = call i64 @gtk_table_get_type() #5
  %call130 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %179, i64 %call129)
  %180 = bitcast %struct._GTypeInstance* %call130 to %struct._GtkTable*
  %181 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %180, %struct._GtkWidget* %181, i32 0, i32 1, i32 3, i32 4)
  %182 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %182)
  %call131 = call %struct._GtkWidget* @gtk_label_new(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0))
  store %struct._GtkWidget* %call131, %struct._GtkWidget** %label, align 8
  %183 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %height_label = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %183, i32 0, i32 18
  %arrayidx132 = getelementptr inbounds [2 x %struct._GtkWidget*], [2 x %struct._GtkWidget*]* %height_label, i32 0, i64 0
  store %struct._GtkWidget* %call131, %struct._GtkWidget** %arrayidx132, align 8
  %184 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %185 = bitcast %struct._GtkWidget* %184 to %struct._GTypeInstance*
  %call133 = call i64 @gtk_label_get_type() #5
  %call134 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %185, i64 %call133)
  %186 = bitcast %struct._GTypeInstance* %call134 to %struct._GtkLabel*
  call void @gtk_label_set_selectable(%struct._GtkLabel* %186, i32 1)
  %187 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %188 = bitcast %struct._GtkWidget* %187 to %struct._GTypeInstance*
  %call135 = call i64 @gtk_misc_get_type() #5
  %call136 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %188, i64 %call135)
  %189 = bitcast %struct._GTypeInstance* %call136 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %189, float 1.000000e+00, float 5.000000e-01)
  %190 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %191 = bitcast %struct._GtkWidget* %190 to %struct._GTypeInstance*
  %call137 = call i64 @gtk_table_get_type() #5
  %call138 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %191, i64 %call137)
  %192 = bitcast %struct._GTypeInstance* %call138 to %struct._GtkTable*
  %193 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %192, %struct._GtkWidget* %193, i32 1, i32 2, i32 3, i32 4)
  %194 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %194)
  %call139 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0)) #6
  %call140 = call %struct._GtkWidget* @gtk_label_new(i8* %call139)
  store %struct._GtkWidget* %call140, %struct._GtkWidget** %label, align 8
  %195 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %196 = bitcast %struct._GtkWidget* %195 to %struct._GTypeInstance*
  %call141 = call i64 @gtk_misc_get_type() #5
  %call142 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %196, i64 %call141)
  %197 = bitcast %struct._GTypeInstance* %call142 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %197, float 0.000000e+00, float 5.000000e-01)
  %198 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %199 = bitcast %struct._GtkWidget* %198 to %struct._GTypeInstance*
  %call143 = call i64 @gtk_table_get_type() #5
  %call144 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %199, i64 %call143)
  %200 = bitcast %struct._GTypeInstance* %call144 to %struct._GtkTable*
  %201 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %200, %struct._GtkWidget* %201, i32 2, i32 3, i32 3, i32 4)
  %202 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %202)
  %call145 = call %struct._GtkWidget* @gtk_label_new(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0))
  store %struct._GtkWidget* %call145, %struct._GtkWidget** %label, align 8
  %203 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %height_label146 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %203, i32 0, i32 18
  %arrayidx147 = getelementptr inbounds [2 x %struct._GtkWidget*], [2 x %struct._GtkWidget*]* %height_label146, i32 0, i64 1
  store %struct._GtkWidget* %call145, %struct._GtkWidget** %arrayidx147, align 8
  %204 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %205 = bitcast %struct._GtkWidget* %204 to %struct._GTypeInstance*
  %call148 = call i64 @gtk_label_get_type() #5
  %call149 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %205, i64 %call148)
  %206 = bitcast %struct._GTypeInstance* %call149 to %struct._GtkLabel*
  call void @gtk_label_set_selectable(%struct._GtkLabel* %206, i32 1)
  %207 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %208 = bitcast %struct._GtkWidget* %207 to %struct._GTypeInstance*
  %call150 = call i64 @gtk_misc_get_type() #5
  %call151 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %208, i64 %call150)
  %209 = bitcast %struct._GTypeInstance* %call151 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %209, float 1.000000e+00, float 5.000000e-01)
  %210 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %211 = bitcast %struct._GtkWidget* %210 to %struct._GTypeInstance*
  %call152 = call i64 @gtk_table_get_type() #5
  %call153 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %211, i64 %call152)
  %212 = bitcast %struct._GTypeInstance* %call153 to %struct._GtkTable*
  %213 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %212, %struct._GtkWidget* %213, i32 3, i32 4, i32 3, i32 4)
  %214 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %214)
  %call154 = call %struct._GtkWidget* @gtk_label_new(i8* null)
  store %struct._GtkWidget* %call154, %struct._GtkWidget** %label, align 8
  %215 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %unit_label155 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %215, i32 0, i32 19
  %arrayidx156 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* %unit_label155, i32 0, i64 3
  store %struct._GtkWidget* %call154, %struct._GtkWidget** %arrayidx156, align 8
  %216 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %217 = bitcast %struct._GtkWidget* %216 to %struct._GTypeInstance*
  %call157 = call i64 @gtk_misc_get_type() #5
  %call158 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %217, i64 %call157)
  %218 = bitcast %struct._GTypeInstance* %call158 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %218, float 0.000000e+00, float 5.000000e-01)
  %219 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %220 = bitcast %struct._GtkWidget* %219 to %struct._GTypeInstance*
  %call159 = call i64 @gtk_table_get_type() #5
  %call160 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %220, i64 %call159)
  %221 = bitcast %struct._GTypeInstance* %call160 to %struct._GtkTable*
  %222 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %221, %struct._GtkWidget* %222, i32 4, i32 5, i32 3, i32 4)
  %223 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %223)
  %224 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  ret %struct._GtkWidget* %224
}

declare void @g_object_add_weak_pointer(%struct._GObject*, i8**) #1

declare void @gimp_viewable_dialog_set_viewable(%struct._GimpViewableDialog*, %struct._GimpViewable*, %struct._GimpContext*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_dialog_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare void @gimp_tool_dialog_set_shell(%struct._GimpToolDialog*, %struct._GimpDisplayShell*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_dialog_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_measure_tool_dialog_update(%struct._GimpMeasureTool* %measure, %struct._GimpDisplay* %display) #3 {
entry:
  %measure.addr = alloca %struct._GimpMeasureTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %ax = alloca i32, align 4
  %ay = alloca i32, align 4
  %bx = alloca i32, align 4
  %by = alloca i32, align 4
  %pixel_width = alloca i32, align 4
  %pixel_height = alloca i32, align 4
  %unit_width = alloca double, align 8
  %unit_height = alloca double, align 8
  %pixel_distance = alloca double, align 8
  %unit_distance = alloca double, align 8
  %theta1 = alloca double, align 8
  %theta2 = alloca double, align 8
  %pixel_angle = alloca double, align 8
  %unit_angle = alloca double, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %format = alloca [128 x i8], align 16
  %buf = alloca [128 x i8], align 16
  store %struct._GimpMeasureTool* %measure, %struct._GimpMeasureTool** %measure.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %0)
  store %struct._GimpDisplayShell* %call, %struct._GimpDisplayShell** %shell, align 8
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call1 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %1)
  store %struct._GimpImage* %call1, %struct._GimpImage** %image, align 8
  %2 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %x = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %2, i32 0, i32 8
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %x, i32 0, i64 1
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %4, i32 0, i32 8
  %arrayidx3 = getelementptr inbounds [3 x i32], [3 x i32]* %x2, i32 0, i64 0
  %5 = load i32, i32* %arrayidx3, align 4
  %sub = sub nsw i32 %3, %5
  store i32 %sub, i32* %ax, align 4
  %6 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %y = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %6, i32 0, i32 9
  %arrayidx4 = getelementptr inbounds [3 x i32], [3 x i32]* %y, i32 0, i64 1
  %7 = load i32, i32* %arrayidx4, align 4
  %8 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %y5 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %8, i32 0, i32 9
  %arrayidx6 = getelementptr inbounds [3 x i32], [3 x i32]* %y5, i32 0, i64 0
  %9 = load i32, i32* %arrayidx6, align 4
  %sub7 = sub nsw i32 %7, %9
  store i32 %sub7, i32* %ay, align 4
  %10 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %num_points = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %10, i32 0, i32 7
  %11 = load i32, i32* %num_points, align 4
  %cmp = icmp eq i32 %11, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %x8 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %12, i32 0, i32 8
  %arrayidx9 = getelementptr inbounds [3 x i32], [3 x i32]* %x8, i32 0, i64 2
  %13 = load i32, i32* %arrayidx9, align 4
  %14 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %x10 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %14, i32 0, i32 8
  %arrayidx11 = getelementptr inbounds [3 x i32], [3 x i32]* %x10, i32 0, i64 0
  %15 = load i32, i32* %arrayidx11, align 4
  %sub12 = sub nsw i32 %13, %15
  store i32 %sub12, i32* %bx, align 4
  %16 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %y13 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %16, i32 0, i32 9
  %arrayidx14 = getelementptr inbounds [3 x i32], [3 x i32]* %y13, i32 0, i64 2
  %17 = load i32, i32* %arrayidx14, align 4
  %18 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %y15 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %18, i32 0, i32 9
  %arrayidx16 = getelementptr inbounds [3 x i32], [3 x i32]* %y15, i32 0, i64 0
  %19 = load i32, i32* %arrayidx16, align 4
  %sub17 = sub nsw i32 %17, %19
  store i32 %sub17, i32* %by, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %bx, align 4
  store i32 0, i32* %by, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = load i32, i32* %ax, align 4
  %21 = load i32, i32* %bx, align 4
  %sub18 = sub nsw i32 %20, %21
  %cmp19 = icmp slt i32 %sub18, 0
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %22 = load i32, i32* %ax, align 4
  %23 = load i32, i32* %bx, align 4
  %sub20 = sub nsw i32 %22, %23
  %sub21 = sub nsw i32 0, %sub20
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %24 = load i32, i32* %ax, align 4
  %25 = load i32, i32* %bx, align 4
  %sub22 = sub nsw i32 %24, %25
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub21, %cond.true ], [ %sub22, %cond.false ]
  store i32 %cond, i32* %pixel_width, align 4
  %26 = load i32, i32* %ay, align 4
  %27 = load i32, i32* %by, align 4
  %sub23 = sub nsw i32 %26, %27
  %cmp24 = icmp slt i32 %sub23, 0
  br i1 %cmp24, label %cond.true.25, label %cond.false.28

cond.true.25:                                     ; preds = %cond.end
  %28 = load i32, i32* %ay, align 4
  %29 = load i32, i32* %by, align 4
  %sub26 = sub nsw i32 %28, %29
  %sub27 = sub nsw i32 0, %sub26
  br label %cond.end.30

cond.false.28:                                    ; preds = %cond.end
  %30 = load i32, i32* %ay, align 4
  %31 = load i32, i32* %by, align 4
  %sub29 = sub nsw i32 %30, %31
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.28, %cond.true.25
  %cond31 = phi i32 [ %sub27, %cond.true.25 ], [ %sub29, %cond.false.28 ]
  store i32 %cond31, i32* %pixel_height, align 4
  %32 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %32, double* %xres, double* %yres)
  %33 = load i32, i32* %pixel_width, align 4
  %conv = sitofp i32 %33 to double
  %34 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %unit = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %34, i32 0, i32 10
  %35 = load i32, i32* %unit, align 4
  %36 = load double, double* %xres, align 8
  %call32 = call double @gimp_pixels_to_units(double %conv, i32 %35, double %36)
  store double %call32, double* %unit_width, align 8
  %37 = load i32, i32* %pixel_height, align 4
  %conv33 = sitofp i32 %37 to double
  %38 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %unit34 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %38, i32 0, i32 10
  %39 = load i32, i32* %unit34, align 4
  %40 = load double, double* %yres, align 8
  %call35 = call double @gimp_pixels_to_units(double %conv33, i32 %39, double %40)
  store double %call35, double* %unit_height, align 8
  %41 = load i32, i32* %ax, align 4
  %42 = load i32, i32* %bx, align 4
  %sub36 = sub nsw i32 %41, %42
  %43 = load i32, i32* %ax, align 4
  %44 = load i32, i32* %bx, align 4
  %sub37 = sub nsw i32 %43, %44
  %mul = mul nsw i32 %sub36, %sub37
  %45 = load i32, i32* %ay, align 4
  %46 = load i32, i32* %by, align 4
  %sub38 = sub nsw i32 %45, %46
  %47 = load i32, i32* %ay, align 4
  %48 = load i32, i32* %by, align 4
  %sub39 = sub nsw i32 %47, %48
  %mul40 = mul nsw i32 %sub38, %sub39
  %add = add nsw i32 %mul, %mul40
  %conv41 = sitofp i32 %add to double
  %call42 = call double @sqrt(double %conv41) #6
  store double %call42, double* %pixel_distance, align 8
  %49 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %unit43 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %49, i32 0, i32 10
  %50 = load i32, i32* %unit43, align 4
  %call44 = call double @gimp_unit_get_factor(i32 %50)
  %51 = load i32, i32* %ax, align 4
  %52 = load i32, i32* %bx, align 4
  %sub45 = sub nsw i32 %51, %52
  %conv46 = sitofp i32 %sub45 to double
  %53 = load double, double* %xres, align 8
  %div = fdiv double %conv46, %53
  %54 = load i32, i32* %ax, align 4
  %55 = load i32, i32* %bx, align 4
  %sub47 = sub nsw i32 %54, %55
  %conv48 = sitofp i32 %sub47 to double
  %56 = load double, double* %xres, align 8
  %div49 = fdiv double %conv48, %56
  %mul50 = fmul double %div, %div49
  %57 = load i32, i32* %ay, align 4
  %58 = load i32, i32* %by, align 4
  %sub51 = sub nsw i32 %57, %58
  %conv52 = sitofp i32 %sub51 to double
  %59 = load double, double* %yres, align 8
  %div53 = fdiv double %conv52, %59
  %60 = load i32, i32* %ay, align 4
  %61 = load i32, i32* %by, align 4
  %sub54 = sub nsw i32 %60, %61
  %conv55 = sitofp i32 %sub54 to double
  %62 = load double, double* %yres, align 8
  %div56 = fdiv double %conv55, %62
  %mul57 = fmul double %div53, %div56
  %add58 = fadd double %mul50, %mul57
  %call59 = call double @sqrt(double %add58) #6
  %mul60 = fmul double %call44, %call59
  store double %mul60, double* %unit_distance, align 8
  %63 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %num_points61 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %63, i32 0, i32 7
  %64 = load i32, i32* %num_points61, align 4
  %cmp62 = icmp ne i32 %64, 3
  br i1 %cmp62, label %if.then.64, label %if.end.68

if.then.64:                                       ; preds = %cond.end.30
  %65 = load i32, i32* %ax, align 4
  %cmp65 = icmp sgt i32 %65, 0
  %cond67 = select i1 %cmp65, i32 1, i32 -1
  store i32 %cond67, i32* %bx, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.64, %cond.end.30
  %66 = load i32, i32* %ax, align 4
  %67 = load i32, i32* %ay, align 4
  %call69 = call double @gimp_measure_tool_get_angle(i32 %66, i32 %67, double 1.000000e+00, double 1.000000e+00)
  store double %call69, double* %theta1, align 8
  %68 = load i32, i32* %bx, align 4
  %69 = load i32, i32* %by, align 4
  %call70 = call double @gimp_measure_tool_get_angle(i32 %68, i32 %69, double 1.000000e+00, double 1.000000e+00)
  store double %call70, double* %theta2, align 8
  %70 = load double, double* %theta1, align 8
  %71 = load double, double* %theta2, align 8
  %sub71 = fsub double %70, %71
  %call72 = call double @fabs(double %sub71) #5
  store double %call72, double* %pixel_angle, align 8
  %72 = load double, double* %pixel_angle, align 8
  %cmp73 = fcmp ogt double %72, 1.800000e+02
  br i1 %cmp73, label %if.then.75, label %if.end.78

if.then.75:                                       ; preds = %if.end.68
  %73 = load double, double* %pixel_angle, align 8
  %sub76 = fsub double 3.600000e+02, %73
  %call77 = call double @fabs(double %sub76) #5
  store double %call77, double* %pixel_angle, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.75, %if.end.68
  %74 = load i32, i32* %ax, align 4
  %75 = load i32, i32* %ay, align 4
  %76 = load double, double* %xres, align 8
  %77 = load double, double* %yres, align 8
  %call79 = call double @gimp_measure_tool_get_angle(i32 %74, i32 %75, double %76, double %77)
  store double %call79, double* %theta1, align 8
  %78 = load i32, i32* %bx, align 4
  %79 = load i32, i32* %by, align 4
  %80 = load double, double* %xres, align 8
  %81 = load double, double* %yres, align 8
  %call80 = call double @gimp_measure_tool_get_angle(i32 %78, i32 %79, double %80, double %81)
  store double %call80, double* %theta2, align 8
  %82 = load double, double* %theta1, align 8
  %83 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %angle1 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %83, i32 0, i32 10
  store double %82, double* %angle1, align 8
  %84 = load double, double* %theta2, align 8
  %85 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %angle2 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %85, i32 0, i32 11
  store double %84, double* %angle2, align 8
  %86 = load double, double* %theta1, align 8
  %87 = load double, double* %theta2, align 8
  %sub81 = fsub double %86, %87
  %call82 = call double @fabs(double %sub81) #5
  store double %call82, double* %unit_angle, align 8
  %88 = load double, double* %unit_angle, align 8
  %cmp83 = fcmp ogt double %88, 1.800000e+02
  br i1 %cmp83, label %if.then.85, label %if.end.88

if.then.85:                                       ; preds = %if.end.78
  %89 = load double, double* %unit_angle, align 8
  %sub86 = fsub double 3.600000e+02, %89
  %call87 = call double @fabs(double %sub86) #5
  store double %call87, double* %unit_angle, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.85, %if.end.78
  %90 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %unit89 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %90, i32 0, i32 10
  %91 = load i32, i32* %unit89, align 4
  %cmp90 = icmp eq i32 %91, 0
  br i1 %cmp90, label %if.then.92, label %if.else.96

if.then.92:                                       ; preds = %if.end.88
  %92 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %93 = bitcast %struct._GimpMeasureTool* %92 to %struct._GTypeInstance*
  %call93 = call i64 @gimp_tool_get_type() #5
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 %call93)
  %94 = bitcast %struct._GTypeInstance* %call94 to %struct._GimpTool*
  %95 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %96 = load double, double* %pixel_distance, align 8
  %call95 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0)) #6
  %97 = load double, double* %pixel_angle, align 8
  %98 = load i32, i32* %pixel_width, align 4
  %99 = load i32, i32* %pixel_height, align 4
  call void (%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) @gimp_tool_replace_status(%struct._GimpTool* %94, %struct._GimpDisplay* %95, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i32 0, i32 0), double %96, i8* %call95, double %97, i32 %98, i32 %99)
  br label %if.end.109

if.else.96:                                       ; preds = %if.end.88
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %format, i32 0, i32 0
  %100 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %unit97 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %100, i32 0, i32 10
  %101 = load i32, i32* %unit97, align 4
  %call98 = call i32 @gimp_unit_get_digits(i32 %101)
  %102 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %unit99 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %102, i32 0, i32 10
  %103 = load i32, i32* %unit99, align 4
  %call100 = call i8* @gimp_unit_get_plural(i32 %103)
  %104 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %unit101 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %104, i32 0, i32 10
  %105 = load i32, i32* %unit101, align 4
  %call102 = call i32 @gimp_unit_get_digits(i32 %105)
  %106 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %unit103 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %106, i32 0, i32 10
  %107 = load i32, i32* %unit103, align 4
  %call104 = call i32 @gimp_unit_get_digits(i32 %107)
  %call105 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 128, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i32 0, i32 0), i32 %call98, i8* %call100, i32 %call102, i32 %call104)
  %108 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %109 = bitcast %struct._GimpMeasureTool* %108 to %struct._GTypeInstance*
  %call106 = call i64 @gimp_tool_get_type() #5
  %call107 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %109, i64 %call106)
  %110 = bitcast %struct._GTypeInstance* %call107 to %struct._GimpTool*
  %111 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %arraydecay108 = getelementptr inbounds [128 x i8], [128 x i8]* %format, i32 0, i32 0
  %112 = load double, double* %unit_distance, align 8
  %113 = load double, double* %unit_angle, align 8
  %114 = load double, double* %unit_width, align 8
  %115 = load double, double* %unit_height, align 8
  call void (%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) @gimp_tool_replace_status(%struct._GimpTool* %110, %struct._GimpDisplay* %111, i8* %arraydecay108, double %112, double %113, double %114, double %115)
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.96, %if.then.92
  %116 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %status_help = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %116, i32 0, i32 12
  store i32 0, i32* %status_help, align 4
  %117 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %dialog = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %117, i32 0, i32 14
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %118, null
  br i1 %tobool, label %if.then.110, label %if.end.257

if.then.110:                                      ; preds = %if.end.109
  %arraydecay111 = getelementptr inbounds [128 x i8], [128 x i8]* %format, i32 0, i32 0
  %119 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %unit112 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %119, i32 0, i32 10
  %120 = load i32, i32* %unit112, align 4
  %call113 = call i32 @gimp_unit_get_digits(i32 %120)
  %call114 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay111, i64 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i32 %call113)
  %arraydecay115 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  %121 = load double, double* %pixel_distance, align 8
  %call116 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay115, i64 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), double %121)
  %122 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %distance_label = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %122, i32 0, i32 15
  %arrayidx117 = getelementptr inbounds [2 x %struct._GtkWidget*], [2 x %struct._GtkWidget*]* %distance_label, i32 0, i64 0
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx117, align 8
  %124 = bitcast %struct._GtkWidget* %123 to %struct._GTypeInstance*
  %call118 = call i64 @gtk_label_get_type() #5
  %call119 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %124, i64 %call118)
  %125 = bitcast %struct._GTypeInstance* %call119 to %struct._GtkLabel*
  %arraydecay120 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  call void @gtk_label_set_text(%struct._GtkLabel* %125, i8* %arraydecay120)
  %126 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %unit121 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %126, i32 0, i32 10
  %127 = load i32, i32* %unit121, align 4
  %cmp122 = icmp ne i32 %127, 0
  br i1 %cmp122, label %if.then.124, label %if.else.138

if.then.124:                                      ; preds = %if.then.110
  %arraydecay125 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  %arraydecay126 = getelementptr inbounds [128 x i8], [128 x i8]* %format, i32 0, i32 0
  %128 = load double, double* %unit_distance, align 8
  %call127 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay125, i64 128, i8* %arraydecay126, double %128)
  %129 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %distance_label128 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %129, i32 0, i32 15
  %arrayidx129 = getelementptr inbounds [2 x %struct._GtkWidget*], [2 x %struct._GtkWidget*]* %distance_label128, i32 0, i64 1
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx129, align 8
  %131 = bitcast %struct._GtkWidget* %130 to %struct._GTypeInstance*
  %call130 = call i64 @gtk_label_get_type() #5
  %call131 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %131, i64 %call130)
  %132 = bitcast %struct._GTypeInstance* %call131 to %struct._GtkLabel*
  %arraydecay132 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  call void @gtk_label_set_text(%struct._GtkLabel* %132, i8* %arraydecay132)
  %133 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %unit_label = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %133, i32 0, i32 19
  %arrayidx133 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* %unit_label, i32 0, i64 0
  %134 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx133, align 8
  %135 = bitcast %struct._GtkWidget* %134 to %struct._GTypeInstance*
  %call134 = call i64 @gtk_label_get_type() #5
  %call135 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %135, i64 %call134)
  %136 = bitcast %struct._GTypeInstance* %call135 to %struct._GtkLabel*
  %137 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %unit136 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %137, i32 0, i32 10
  %138 = load i32, i32* %unit136, align 4
  %call137 = call i8* @gimp_unit_get_plural(i32 %138)
  call void @gtk_label_set_text(%struct._GtkLabel* %136, i8* %call137)
  br label %if.end.147

if.else.138:                                      ; preds = %if.then.110
  %139 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %distance_label139 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %139, i32 0, i32 15
  %arrayidx140 = getelementptr inbounds [2 x %struct._GtkWidget*], [2 x %struct._GtkWidget*]* %distance_label139, i32 0, i64 1
  %140 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx140, align 8
  %141 = bitcast %struct._GtkWidget* %140 to %struct._GTypeInstance*
  %call141 = call i64 @gtk_label_get_type() #5
  %call142 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %141, i64 %call141)
  %142 = bitcast %struct._GTypeInstance* %call142 to %struct._GtkLabel*
  call void @gtk_label_set_text(%struct._GtkLabel* %142, i8* null)
  %143 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %unit_label143 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %143, i32 0, i32 19
  %arrayidx144 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* %unit_label143, i32 0, i64 0
  %144 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx144, align 8
  %145 = bitcast %struct._GtkWidget* %144 to %struct._GTypeInstance*
  %call145 = call i64 @gtk_label_get_type() #5
  %call146 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %145, i64 %call145)
  %146 = bitcast %struct._GTypeInstance* %call146 to %struct._GtkLabel*
  call void @gtk_label_set_text(%struct._GtkLabel* %146, i8* null)
  br label %if.end.147

if.end.147:                                       ; preds = %if.else.138, %if.then.124
  %arraydecay148 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  %147 = load double, double* %pixel_angle, align 8
  %call149 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay148, i64 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), double %147)
  %148 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %angle_label = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %148, i32 0, i32 16
  %arrayidx150 = getelementptr inbounds [2 x %struct._GtkWidget*], [2 x %struct._GtkWidget*]* %angle_label, i32 0, i64 0
  %149 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx150, align 8
  %150 = bitcast %struct._GtkWidget* %149 to %struct._GTypeInstance*
  %call151 = call i64 @gtk_label_get_type() #5
  %call152 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %150, i64 %call151)
  %151 = bitcast %struct._GTypeInstance* %call152 to %struct._GtkLabel*
  %arraydecay153 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  call void @gtk_label_set_text(%struct._GtkLabel* %151, i8* %arraydecay153)
  %152 = load double, double* %unit_angle, align 8
  %153 = load double, double* %pixel_angle, align 8
  %sub154 = fsub double %152, %153
  %call155 = call double @fabs(double %sub154) #5
  %cmp156 = fcmp ogt double %call155, 1.000000e-02
  br i1 %cmp156, label %if.then.158, label %if.else.170

if.then.158:                                      ; preds = %if.end.147
  %arraydecay159 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  %154 = load double, double* %unit_angle, align 8
  %call160 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay159, i64 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), double %154)
  %155 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %angle_label161 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %155, i32 0, i32 16
  %arrayidx162 = getelementptr inbounds [2 x %struct._GtkWidget*], [2 x %struct._GtkWidget*]* %angle_label161, i32 0, i64 1
  %156 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx162, align 8
  %157 = bitcast %struct._GtkWidget* %156 to %struct._GTypeInstance*
  %call163 = call i64 @gtk_label_get_type() #5
  %call164 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %157, i64 %call163)
  %158 = bitcast %struct._GTypeInstance* %call164 to %struct._GtkLabel*
  %arraydecay165 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  call void @gtk_label_set_text(%struct._GtkLabel* %158, i8* %arraydecay165)
  %159 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %unit_label166 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %159, i32 0, i32 19
  %arrayidx167 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* %unit_label166, i32 0, i64 1
  %160 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx167, align 8
  %161 = bitcast %struct._GtkWidget* %160 to %struct._GTypeInstance*
  %call168 = call i64 @gtk_label_get_type() #5
  %call169 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %161, i64 %call168)
  %162 = bitcast %struct._GTypeInstance* %call169 to %struct._GtkLabel*
  call void @gtk_label_set_text(%struct._GtkLabel* %162, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.179

if.else.170:                                      ; preds = %if.end.147
  %163 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %angle_label171 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %163, i32 0, i32 16
  %arrayidx172 = getelementptr inbounds [2 x %struct._GtkWidget*], [2 x %struct._GtkWidget*]* %angle_label171, i32 0, i64 1
  %164 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx172, align 8
  %165 = bitcast %struct._GtkWidget* %164 to %struct._GTypeInstance*
  %call173 = call i64 @gtk_label_get_type() #5
  %call174 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %165, i64 %call173)
  %166 = bitcast %struct._GTypeInstance* %call174 to %struct._GtkLabel*
  call void @gtk_label_set_text(%struct._GtkLabel* %166, i8* null)
  %167 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %unit_label175 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %167, i32 0, i32 19
  %arrayidx176 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* %unit_label175, i32 0, i64 1
  %168 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx176, align 8
  %169 = bitcast %struct._GtkWidget* %168 to %struct._GTypeInstance*
  %call177 = call i64 @gtk_label_get_type() #5
  %call178 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %169, i64 %call177)
  %170 = bitcast %struct._GTypeInstance* %call178 to %struct._GtkLabel*
  call void @gtk_label_set_text(%struct._GtkLabel* %170, i8* null)
  br label %if.end.179

if.end.179:                                       ; preds = %if.else.170, %if.then.158
  %arraydecay180 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  %171 = load i32, i32* %pixel_width, align 4
  %call181 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay180, i64 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i32 %171)
  %172 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %width_label = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %172, i32 0, i32 17
  %arrayidx182 = getelementptr inbounds [2 x %struct._GtkWidget*], [2 x %struct._GtkWidget*]* %width_label, i32 0, i64 0
  %173 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx182, align 8
  %174 = bitcast %struct._GtkWidget* %173 to %struct._GTypeInstance*
  %call183 = call i64 @gtk_label_get_type() #5
  %call184 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %174, i64 %call183)
  %175 = bitcast %struct._GTypeInstance* %call184 to %struct._GtkLabel*
  %arraydecay185 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  call void @gtk_label_set_text(%struct._GtkLabel* %175, i8* %arraydecay185)
  %176 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %unit186 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %176, i32 0, i32 10
  %177 = load i32, i32* %unit186, align 4
  %cmp187 = icmp ne i32 %177, 0
  br i1 %cmp187, label %if.then.189, label %if.else.204

if.then.189:                                      ; preds = %if.end.179
  %arraydecay190 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  %arraydecay191 = getelementptr inbounds [128 x i8], [128 x i8]* %format, i32 0, i32 0
  %178 = load double, double* %unit_width, align 8
  %call192 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay190, i64 128, i8* %arraydecay191, double %178)
  %179 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %width_label193 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %179, i32 0, i32 17
  %arrayidx194 = getelementptr inbounds [2 x %struct._GtkWidget*], [2 x %struct._GtkWidget*]* %width_label193, i32 0, i64 1
  %180 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx194, align 8
  %181 = bitcast %struct._GtkWidget* %180 to %struct._GTypeInstance*
  %call195 = call i64 @gtk_label_get_type() #5
  %call196 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %181, i64 %call195)
  %182 = bitcast %struct._GTypeInstance* %call196 to %struct._GtkLabel*
  %arraydecay197 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  call void @gtk_label_set_text(%struct._GtkLabel* %182, i8* %arraydecay197)
  %183 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %unit_label198 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %183, i32 0, i32 19
  %arrayidx199 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* %unit_label198, i32 0, i64 2
  %184 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx199, align 8
  %185 = bitcast %struct._GtkWidget* %184 to %struct._GTypeInstance*
  %call200 = call i64 @gtk_label_get_type() #5
  %call201 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %185, i64 %call200)
  %186 = bitcast %struct._GTypeInstance* %call201 to %struct._GtkLabel*
  %187 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %unit202 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %187, i32 0, i32 10
  %188 = load i32, i32* %unit202, align 4
  %call203 = call i8* @gimp_unit_get_plural(i32 %188)
  call void @gtk_label_set_text(%struct._GtkLabel* %186, i8* %call203)
  br label %if.end.213

if.else.204:                                      ; preds = %if.end.179
  %189 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %width_label205 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %189, i32 0, i32 17
  %arrayidx206 = getelementptr inbounds [2 x %struct._GtkWidget*], [2 x %struct._GtkWidget*]* %width_label205, i32 0, i64 1
  %190 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx206, align 8
  %191 = bitcast %struct._GtkWidget* %190 to %struct._GTypeInstance*
  %call207 = call i64 @gtk_label_get_type() #5
  %call208 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %191, i64 %call207)
  %192 = bitcast %struct._GTypeInstance* %call208 to %struct._GtkLabel*
  call void @gtk_label_set_text(%struct._GtkLabel* %192, i8* null)
  %193 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %unit_label209 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %193, i32 0, i32 19
  %arrayidx210 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* %unit_label209, i32 0, i64 2
  %194 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx210, align 8
  %195 = bitcast %struct._GtkWidget* %194 to %struct._GTypeInstance*
  %call211 = call i64 @gtk_label_get_type() #5
  %call212 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %195, i64 %call211)
  %196 = bitcast %struct._GTypeInstance* %call212 to %struct._GtkLabel*
  call void @gtk_label_set_text(%struct._GtkLabel* %196, i8* null)
  br label %if.end.213

if.end.213:                                       ; preds = %if.else.204, %if.then.189
  %arraydecay214 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  %197 = load i32, i32* %pixel_height, align 4
  %call215 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay214, i64 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i32 %197)
  %198 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %height_label = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %198, i32 0, i32 18
  %arrayidx216 = getelementptr inbounds [2 x %struct._GtkWidget*], [2 x %struct._GtkWidget*]* %height_label, i32 0, i64 0
  %199 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx216, align 8
  %200 = bitcast %struct._GtkWidget* %199 to %struct._GTypeInstance*
  %call217 = call i64 @gtk_label_get_type() #5
  %call218 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %200, i64 %call217)
  %201 = bitcast %struct._GTypeInstance* %call218 to %struct._GtkLabel*
  %arraydecay219 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  call void @gtk_label_set_text(%struct._GtkLabel* %201, i8* %arraydecay219)
  %202 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %unit220 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %202, i32 0, i32 10
  %203 = load i32, i32* %unit220, align 4
  %cmp221 = icmp ne i32 %203, 0
  br i1 %cmp221, label %if.then.223, label %if.else.238

if.then.223:                                      ; preds = %if.end.213
  %arraydecay224 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  %arraydecay225 = getelementptr inbounds [128 x i8], [128 x i8]* %format, i32 0, i32 0
  %204 = load double, double* %unit_height, align 8
  %call226 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay224, i64 128, i8* %arraydecay225, double %204)
  %205 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %height_label227 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %205, i32 0, i32 18
  %arrayidx228 = getelementptr inbounds [2 x %struct._GtkWidget*], [2 x %struct._GtkWidget*]* %height_label227, i32 0, i64 1
  %206 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx228, align 8
  %207 = bitcast %struct._GtkWidget* %206 to %struct._GTypeInstance*
  %call229 = call i64 @gtk_label_get_type() #5
  %call230 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %207, i64 %call229)
  %208 = bitcast %struct._GTypeInstance* %call230 to %struct._GtkLabel*
  %arraydecay231 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  call void @gtk_label_set_text(%struct._GtkLabel* %208, i8* %arraydecay231)
  %209 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %unit_label232 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %209, i32 0, i32 19
  %arrayidx233 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* %unit_label232, i32 0, i64 3
  %210 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx233, align 8
  %211 = bitcast %struct._GtkWidget* %210 to %struct._GTypeInstance*
  %call234 = call i64 @gtk_label_get_type() #5
  %call235 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %211, i64 %call234)
  %212 = bitcast %struct._GTypeInstance* %call235 to %struct._GtkLabel*
  %213 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %unit236 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %213, i32 0, i32 10
  %214 = load i32, i32* %unit236, align 4
  %call237 = call i8* @gimp_unit_get_plural(i32 %214)
  call void @gtk_label_set_text(%struct._GtkLabel* %212, i8* %call237)
  br label %if.end.247

if.else.238:                                      ; preds = %if.end.213
  %215 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %height_label239 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %215, i32 0, i32 18
  %arrayidx240 = getelementptr inbounds [2 x %struct._GtkWidget*], [2 x %struct._GtkWidget*]* %height_label239, i32 0, i64 1
  %216 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx240, align 8
  %217 = bitcast %struct._GtkWidget* %216 to %struct._GTypeInstance*
  %call241 = call i64 @gtk_label_get_type() #5
  %call242 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %217, i64 %call241)
  %218 = bitcast %struct._GTypeInstance* %call242 to %struct._GtkLabel*
  call void @gtk_label_set_text(%struct._GtkLabel* %218, i8* null)
  %219 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %unit_label243 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %219, i32 0, i32 19
  %arrayidx244 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* %unit_label243, i32 0, i64 3
  %220 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx244, align 8
  %221 = bitcast %struct._GtkWidget* %220 to %struct._GTypeInstance*
  %call245 = call i64 @gtk_label_get_type() #5
  %call246 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %221, i64 %call245)
  %222 = bitcast %struct._GTypeInstance* %call246 to %struct._GtkLabel*
  call void @gtk_label_set_text(%struct._GtkLabel* %222, i8* null)
  br label %if.end.247

if.end.247:                                       ; preds = %if.else.238, %if.then.223
  %223 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %dialog248 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %223, i32 0, i32 14
  %224 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog248, align 8
  %call249 = call i32 @gtk_widget_get_visible(%struct._GtkWidget* %224)
  %tobool250 = icmp ne i32 %call249, 0
  br i1 %tobool250, label %if.then.251, label %if.else.254

if.then.251:                                      ; preds = %if.end.247
  %225 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %dialog252 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %225, i32 0, i32 14
  %226 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog252, align 8
  %call253 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %226)
  call void @gdk_window_show(%struct._GdkDrawable* %call253)
  br label %if.end.256

if.else.254:                                      ; preds = %if.end.247
  %227 = load %struct._GimpMeasureTool*, %struct._GimpMeasureTool** %measure.addr, align 8
  %dialog255 = getelementptr inbounds %struct._GimpMeasureTool, %struct._GimpMeasureTool* %227, i32 0, i32 14
  %228 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog255, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %228)
  br label %if.end.256

if.end.256:                                       ; preds = %if.else.254, %if.then.251
  br label %if.end.257

if.end.257:                                       ; preds = %if.end.256, %if.end.109
  ret void
}

declare %struct._GtkWidget* @gimp_tool_dialog_new(%struct._GimpToolInfo*, %struct._GimpDisplayShell*, i8*, ...) #1

declare void @gtk_window_set_focus_on_map(%struct._GtkWindow*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

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

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #2

declare void @gtk_table_attach_defaults(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32) #1

declare void @gtk_label_set_selectable(%struct._GtkLabel*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

declare void @gimp_image_get_resolution(%struct._GimpImage*, double*, double*) #1

declare double @gimp_pixels_to_units(double, i32, double) #1

; Function Attrs: nounwind
declare double @sqrt(double) #4

declare double @gimp_unit_get_factor(i32) #1

; Function Attrs: nounwind uwtable
define internal double @gimp_measure_tool_get_angle(i32 %dx, i32 %dy, double %xres, double %yres) #3 {
entry:
  %dx.addr = alloca i32, align 4
  %dy.addr = alloca i32, align 4
  %xres.addr = alloca double, align 8
  %yres.addr = alloca double, align 8
  %angle = alloca double, align 8
  store i32 %dx, i32* %dx.addr, align 4
  store i32 %dy, i32* %dy.addr, align 4
  store double %xres, double* %xres.addr, align 8
  store double %yres, double* %yres.addr, align 8
  %0 = load i32, i32* %dx.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %dy.addr, align 4
  %conv = sitofp i32 %1 to double
  %2 = load double, double* %yres.addr, align 8
  %div = fdiv double %conv, %2
  %3 = load i32, i32* %dx.addr, align 4
  %conv1 = sitofp i32 %3 to double
  %4 = load double, double* %xres.addr, align 8
  %div2 = fdiv double %conv1, %4
  %div3 = fdiv double %div, %div2
  %call = call double @atan(double %div3) #6
  %mul = fmul double %call, 3.600000e+02
  %div4 = fdiv double %mul, 0x401921FB54442D18
  store double %div4, double* %angle, align 8
  br label %if.end.9

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %dy.addr, align 4
  %tobool5 = icmp ne i32 %5, 0
  br i1 %tobool5, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %if.else
  %6 = load i32, i32* %dy.addr, align 4
  %cmp = icmp sgt i32 %6, 0
  %cond = select i1 %cmp, double 2.700000e+02, double 9.000000e+01
  store double %cond, double* %angle, align 8
  br label %if.end

if.else.8:                                        ; preds = %if.else
  store double 1.800000e+02, double* %angle, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.6
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %dx.addr, align 4
  %cmp10 = icmp sgt i32 %7, 0
  br i1 %cmp10, label %if.then.12, label %if.else.19

if.then.12:                                       ; preds = %if.end.9
  %8 = load i32, i32* %dy.addr, align 4
  %cmp13 = icmp sgt i32 %8, 0
  br i1 %cmp13, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.then.12
  %9 = load double, double* %angle, align 8
  %sub = fsub double 3.600000e+02, %9
  store double %sub, double* %angle, align 8
  br label %if.end.18

if.else.16:                                       ; preds = %if.then.12
  %10 = load double, double* %angle, align 8
  %sub17 = fsub double -0.000000e+00, %10
  store double %sub17, double* %angle, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.then.15
  br label %if.end.21

if.else.19:                                       ; preds = %if.end.9
  %11 = load double, double* %angle, align 8
  %sub20 = fsub double 1.800000e+02, %11
  store double %sub20, double* %angle, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.19, %if.end.18
  %12 = load double, double* %angle, align 8
  ret double %12
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

declare i32 @gimp_unit_get_digits(i32) #1

declare i8* @gimp_unit_get_plural(i32) #1

declare void @gtk_label_set_text(%struct._GtkLabel*, i8*) #1

declare i32 @gtk_widget_get_visible(%struct._GtkWidget*) #1

declare void @gdk_window_show(%struct._GdkDrawable*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

; Function Attrs: nounwind
declare double @atan(double) #4

declare void @gimp_tool_control_halt(%struct._GimpToolControl*) #1

declare void @gimp_draw_tool_pause(%struct._GimpDrawTool*) #1

declare i32 @gimp_get_constrain_behavior_mask() #1

declare void @gimp_constrain_line(double, double, double*, double*, i32) #1

declare void @gimp_draw_tool_resume(%struct._GimpDrawTool*) #1

declare void @gimp_tool_control(%struct._GimpTool*, i32, %struct._GimpDisplay*) #1

declare i32 @gimp_canvas_item_hit(%struct._GimpCanvasItem*, double, double) #1

declare i8* @gimp_suggest_modifiers(i8*, i32, i8*, i8*, i8*) #1

declare void @g_free(i8*) #1

declare void @gimp_canvas_item_set_highlight(%struct._GimpCanvasItem*, i32) #1

declare void @gimp_tool_control_set_cursor(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_cursor_modifier(%struct._GimpToolControl*, i32) #1

declare %struct._GimpCanvasGroup* @gimp_draw_tool_add_stroke_group(%struct._GimpDrawTool*) #1

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool*, i32, double, double, i32, i32, i32) #1

declare void @gimp_draw_tool_push_group(%struct._GimpDrawTool*, %struct._GimpCanvasGroup*) #1

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_line(%struct._GimpDrawTool*, double, double, double, double) #1

declare void @gimp_draw_tool_pop_group(%struct._GimpDrawTool*) #1

declare double @gimp_draw_tool_calc_distance(%struct._GimpDrawTool*, %struct._GimpDisplay*, double, double, double, double) #1

declare void @gimp_canvas_handle_set_angles(%struct._GimpCanvasItem*, double, double) #1

declare void @gimp_tool_control_set_handle_empty_image(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_precision(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl*, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
