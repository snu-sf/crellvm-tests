; ModuleID = './app/tools/gimpthresholdtool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpThresholdToolClass = type { %struct._GimpImageMapToolClass }
%struct._GimpImageMapToolClass = type { %struct._GimpColorToolClass, i8*, i8*, i8*, i8*, %struct._GimpContainer*, %struct._GeglNode* (%struct._GimpImageMapTool*, %struct._GObject**)*, void (%struct._GimpImageMapTool*)*, void (%struct._GimpImageMapTool*)*, void (%struct._GimpImageMapTool*)*, i32 (%struct._GimpImageMapTool*, i8*, %struct._GError**)*, i32 (%struct._GimpImageMapTool*, i8*, %struct._GError**)* }
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
%struct._GimpToolInfo = type opaque
%struct._GimpToolControl = type opaque
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpCanvasItem = type opaque
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._Gimp = type opaque
%struct._GimpDisplayConfig = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
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
%struct._GimpColorTool = type { %struct._GimpDrawTool, i32, i32, i32, i32, %struct._GimpColorOptions*, %struct._GimpSamplePoint*, i32, i32, i32 }
%struct._GimpColorOptions = type { %struct._GimpImageMapOptions, i32, i32, double }
%struct._GimpImageMapOptions = type { %struct._GimpToolOptions, i32, i8* }
%struct._GimpSamplePoint = type opaque
%struct._GimpContainer = type opaque
%struct._GeglNode = type opaque
%struct._GimpImageMapTool = type { %struct._GimpColorTool, %struct._GimpDrawable*, %struct._GeglNode*, %struct._GObject*, %struct._GObject*, void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)*, i8*, %struct._GimpImageMap*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkSizeGroup* }
%struct._PixelRegion = type opaque
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
%struct._GArray = type { i8*, i32 }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GtkSizeGroup = type { %struct._GObject, %struct._GSList*, i8, i8, %struct._GtkRequisition }
%struct._GimpThresholdTool = type { %struct._GimpImageMapTool, %struct._GimpThresholdConfig*, %struct._Threshold*, %struct._GimpHistogram*, %struct._GimpHistogramBox* }
%struct._GimpThresholdConfig = type { %struct._GimpImageMapConfig, double, double }
%struct._GimpImageMapConfig = type { %struct._GimpViewable, i32 }
%struct._Threshold = type { i32, i32, i32 }
%struct._GimpHistogram = type opaque
%struct._GimpHistogramBox = type { %struct._GtkBox, %struct._GimpHistogramView*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GimpHistogramView = type { %struct._GtkDrawingArea, %struct._GimpHistogram*, %struct._GimpHistogram*, i32, i32, i32, i32, i32, i32 }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GimpConfig = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpHistogramOptions = type { %struct._GimpColorOptions, i32 }

@gimp_threshold_tool_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"GimpThresholdTool\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"gimp-threshold-tool\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Threshold\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"Threshold Tool: Reduce image to two colors using a threshold\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"_Threshold...\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"gimp-tool-threshold\00", align 1
@gimp_threshold_tool_parent_class = internal global i8* null, align 8
@GimpThresholdTool_private_offset = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"Apply Threshold\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"threshold\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Import Threshold Settings\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Export Threshold Settings\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"Threshold does not operate on indexed layers.\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"gimp:threshold\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"notify\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"histogram-scale\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"gimp-histogram\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"range-changed\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"_Auto\00", align 1
@.str.19 = private unnamed_addr constant [55 x i8] c"Automatically adjust to optimal binarization threshold\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"high\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_threshold_tool_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_threshold_tool_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_threshold_tool_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_image_map_tool_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 392, void (i8*, i8*)* bitcast (void (i8*)* @gimp_threshold_tool_class_intern_init to void (i8*, i8*)*), i32 424, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpThresholdTool*)* @gimp_threshold_tool_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_threshold_tool_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_threshold_tool_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_map_tool_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_threshold_tool_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_threshold_tool_parent_class, align 8
  %1 = load i32, i32* @GimpThresholdTool_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpThresholdTool_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpThresholdToolClass*
  call void @gimp_threshold_tool_class_init(%struct._GimpThresholdToolClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_threshold_tool_init(%struct._GimpThresholdTool* %t_tool) #3 {
entry:
  %t_tool.addr = alloca %struct._GimpThresholdTool*, align 8
  %im_tool = alloca %struct._GimpImageMapTool*, align 8
  store %struct._GimpThresholdTool* %t_tool, %struct._GimpThresholdTool** %t_tool.addr, align 8
  %0 = load %struct._GimpThresholdTool*, %struct._GimpThresholdTool** %t_tool.addr, align 8
  %1 = bitcast %struct._GimpThresholdTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_map_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageMapTool*
  store %struct._GimpImageMapTool* %2, %struct._GimpImageMapTool** %im_tool, align 8
  %call2 = call noalias i8* @g_slice_alloc0(i64 12)
  %3 = bitcast i8* %call2 to %struct._Threshold*
  %4 = load %struct._GimpThresholdTool*, %struct._GimpThresholdTool** %t_tool.addr, align 8
  %threshold = getelementptr inbounds %struct._GimpThresholdTool, %struct._GimpThresholdTool* %4, i32 0, i32 2
  store %struct._Threshold* %3, %struct._Threshold** %threshold, align 8
  %call3 = call %struct._GimpHistogram* @gimp_histogram_new()
  %5 = load %struct._GimpThresholdTool*, %struct._GimpThresholdTool** %t_tool.addr, align 8
  %histogram = getelementptr inbounds %struct._GimpThresholdTool, %struct._GimpThresholdTool* %5, i32 0, i32 3
  store %struct._GimpHistogram* %call3, %struct._GimpHistogram** %histogram, align 8
  %6 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %im_tool, align 8
  %apply_func = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %6, i32 0, i32 5
  store void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)* bitcast (void (%struct._Threshold*, %struct._PixelRegion*, %struct._PixelRegion*)* @threshold to void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)*), void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)** %apply_func, align 8
  %7 = load %struct._GimpThresholdTool*, %struct._GimpThresholdTool** %t_tool.addr, align 8
  %threshold4 = getelementptr inbounds %struct._GimpThresholdTool, %struct._GimpThresholdTool* %7, i32 0, i32 2
  %8 = load %struct._Threshold*, %struct._Threshold** %threshold4, align 8
  %9 = bitcast %struct._Threshold* %8 to i8*
  %10 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %im_tool, align 8
  %apply_data = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %10, i32 0, i32 6
  store i8* %9, i8** %apply_data, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_threshold_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, i8* %data) #3 {
entry:
  %callback.addr = alloca void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  %call = call i64 @gimp_threshold_tool_get_type() #5
  %call1 = call i64 @gimp_histogram_options_get_type() #5
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0)) #6
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i32 0, i32 0)) #6
  %1 = load i8*, i8** %data.addr, align 8
  call void %0(i64 %call, i64 %call1, %struct._GtkWidget* (%struct._GimpToolOptions*)* @gimp_histogram_options_gui, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i8* %call2, i8* %call3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i8* %1)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_histogram_options_get_type() #2

declare %struct._GtkWidget* @gimp_histogram_options_gui(%struct._GimpToolOptions*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_threshold_tool_class_init(%struct._GimpThresholdToolClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpThresholdToolClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %tool_class = alloca %struct._GimpToolClass*, align 8
  %im_tool_class = alloca %struct._GimpImageMapToolClass*, align 8
  store %struct._GimpThresholdToolClass* %klass, %struct._GimpThresholdToolClass** %klass.addr, align 8
  %0 = load %struct._GimpThresholdToolClass*, %struct._GimpThresholdToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpThresholdToolClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpThresholdToolClass*, %struct._GimpThresholdToolClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpThresholdToolClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_tool_get_type() #5
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpToolClass*
  store %struct._GimpToolClass* %5, %struct._GimpToolClass** %tool_class, align 8
  %6 = load %struct._GimpThresholdToolClass*, %struct._GimpThresholdToolClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpThresholdToolClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_image_map_tool_get_type() #5
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpImageMapToolClass*
  store %struct._GimpImageMapToolClass* %8, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_threshold_tool_finalize, void (%struct._GObject*)** %finalize, align 8
  %10 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %initialize = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %10, i32 0, i32 3
  store i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)* @gimp_threshold_tool_initialize, i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)** %initialize, align 8
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)) #6
  %11 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %dialog_desc = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %11, i32 0, i32 1
  store i8* %call5, i8** %dialog_desc, align 8
  %12 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %settings_name = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %12, i32 0, i32 2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8** %settings_name, align 8
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0)) #6
  %13 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %import_dialog_title = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %13, i32 0, i32 3
  store i8* %call6, i8** %import_dialog_title, align 8
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0)) #6
  %14 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %export_dialog_title = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %14, i32 0, i32 4
  store i8* %call7, i8** %export_dialog_title, align 8
  %15 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %get_operation = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %15, i32 0, i32 6
  store %struct._GeglNode* (%struct._GimpImageMapTool*, %struct._GObject**)* @gimp_threshold_tool_get_operation, %struct._GeglNode* (%struct._GimpImageMapTool*, %struct._GObject**)** %get_operation, align 8
  %16 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %map = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %16, i32 0, i32 7
  store void (%struct._GimpImageMapTool*)* @gimp_threshold_tool_map, void (%struct._GimpImageMapTool*)** %map, align 8
  %17 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %dialog = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %17, i32 0, i32 8
  store void (%struct._GimpImageMapTool*)* @gimp_threshold_tool_dialog, void (%struct._GimpImageMapTool*)** %dialog, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_threshold_tool_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %t_tool = alloca %struct._GimpThresholdTool*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_threshold_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpThresholdTool*
  store %struct._GimpThresholdTool* %2, %struct._GimpThresholdTool** %t_tool, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct._GimpThresholdTool*, %struct._GimpThresholdTool** %t_tool, align 8
  %threshold = getelementptr inbounds %struct._GimpThresholdTool, %struct._GimpThresholdTool* %3, i32 0, i32 2
  %4 = load %struct._Threshold*, %struct._Threshold** %threshold, align 8
  %5 = bitcast %struct._Threshold* %4 to i8*
  call void @g_slice_free1(i64 12, i8* %5)
  br label %do.end

do.end:                                           ; preds = %do.body
  %6 = load %struct._GimpThresholdTool*, %struct._GimpThresholdTool** %t_tool, align 8
  %histogram = getelementptr inbounds %struct._GimpThresholdTool, %struct._GimpThresholdTool* %6, i32 0, i32 3
  %7 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram, align 8
  %tobool = icmp ne %struct._GimpHistogram* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %8 = load %struct._GimpThresholdTool*, %struct._GimpThresholdTool** %t_tool, align 8
  %histogram2 = getelementptr inbounds %struct._GimpThresholdTool, %struct._GimpThresholdTool* %8, i32 0, i32 3
  %9 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram2, align 8
  call void @gimp_histogram_unref(%struct._GimpHistogram* %9)
  %10 = load %struct._GimpThresholdTool*, %struct._GimpThresholdTool** %t_tool, align 8
  %histogram3 = getelementptr inbounds %struct._GimpThresholdTool, %struct._GimpThresholdTool* %10, i32 0, i32 3
  store %struct._GimpHistogram* null, %struct._GimpHistogram** %histogram3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %11 = load i8*, i8** @gimp_threshold_tool_parent_class, align 8
  %12 = bitcast i8* %11 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %12, i64 80)
  %13 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %13, i32 0, i32 6
  %14 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %15 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %14(%struct._GObject* %15)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_threshold_tool_initialize(%struct._GimpTool* %tool, %struct._GimpDisplay* %display, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %tool.addr = alloca %struct._GimpTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %t_tool = alloca %struct._GimpThresholdTool*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_threshold_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpThresholdTool*
  store %struct._GimpThresholdTool* %2, %struct._GimpThresholdTool** %t_tool, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call2 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %3)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call3 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %4)
  store %struct._GimpDrawable* %call3, %struct._GimpDrawable** %drawable, align 8
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool = icmp ne %struct._GimpDrawable* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call4 = call i32 @gimp_drawable_is_indexed(%struct._GimpDrawable* %6)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call7 = call i32 @gimp_error_quark() #5
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i32 0, i32 0)) #6
  call void @g_set_error_literal(%struct._GError** %7, i32 %call7, i32 0, i8* %call8)
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %8 = load %struct._GimpThresholdTool*, %struct._GimpThresholdTool** %t_tool, align 8
  %config = getelementptr inbounds %struct._GimpThresholdTool, %struct._GimpThresholdTool* %8, i32 0, i32 1
  %9 = load %struct._GimpThresholdConfig*, %struct._GimpThresholdConfig** %config, align 8
  %10 = bitcast %struct._GimpThresholdConfig* %9 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_config_interface_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call10)
  %11 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpConfig*
  call void @gimp_config_reset(%struct._GimpConfig* %11)
  %12 = load i8*, i8** @gimp_threshold_tool_parent_class, align 8
  %13 = bitcast i8* %12 to %struct._GTypeClass*
  %call12 = call i64 @gimp_tool_get_type() #5
  %call13 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %13, i64 %call12)
  %14 = bitcast %struct._GTypeClass* %call13 to %struct._GimpToolClass*
  %initialize = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %14, i32 0, i32 3
  %15 = load i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)*, i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)** %initialize, align 8
  %16 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %17 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call14 = call i32 %15(%struct._GimpTool* %16, %struct._GimpDisplay* %17, %struct._GError** %18)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.end.9
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.9
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %20 = load %struct._GimpThresholdTool*, %struct._GimpThresholdTool** %t_tool, align 8
  %histogram = getelementptr inbounds %struct._GimpThresholdTool, %struct._GimpThresholdTool* %20, i32 0, i32 3
  %21 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram, align 8
  call void @gimp_drawable_calculate_histogram(%struct._GimpDrawable* %19, %struct._GimpHistogram* %21)
  %22 = load %struct._GimpThresholdTool*, %struct._GimpThresholdTool** %t_tool, align 8
  %histogram_box = getelementptr inbounds %struct._GimpThresholdTool, %struct._GimpThresholdTool* %22, i32 0, i32 4
  %23 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %histogram_box, align 8
  %view = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %23, i32 0, i32 1
  %24 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %25 = load %struct._GimpThresholdTool*, %struct._GimpThresholdTool** %t_tool, align 8
  %histogram18 = getelementptr inbounds %struct._GimpThresholdTool, %struct._GimpThresholdTool* %25, i32 0, i32 3
  %26 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram18, align 8
  call void @gimp_histogram_view_set_histogram(%struct._GimpHistogramView* %24, %struct._GimpHistogram* %26)
  %27 = load %struct._GimpThresholdTool*, %struct._GimpThresholdTool** %t_tool, align 8
  %28 = bitcast %struct._GimpThresholdTool* %27 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_image_map_tool_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call19)
  %29 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpImageMapTool*
  call void @gimp_image_map_tool_preview(%struct._GimpImageMapTool* %29)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.16, %if.then.6, %if.then
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal %struct._GeglNode* @gimp_threshold_tool_get_operation(%struct._GimpImageMapTool* %image_map_tool, %struct._GObject** %config) #3 {
entry:
  %image_map_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %config.addr = alloca %struct._GObject**, align 8
  %t_tool = alloca %struct._GimpThresholdTool*, align 8
  %node = alloca %struct._GeglNode*, align 8
  store %struct._GimpImageMapTool* %image_map_tool, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  store %struct._GObject** %config, %struct._GObject*** %config.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_threshold_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpThresholdTool*
  store %struct._GimpThresholdTool* %2, %struct._GimpThresholdTool** %t_tool, align 8
  %call2 = call i64 @gegl_node_get_type() #5
  %call3 = call i8* (i64, i8*, ...) @g_object_new(i64 %call2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i8* null)
  %3 = bitcast i8* %call3 to %struct._GeglNode*
  store %struct._GeglNode* %3, %struct._GeglNode** %node, align 8
  %call4 = call i64 @gimp_threshold_config_get_type() #5
  %call5 = call i8* (i64, i8*, ...) @g_object_new(i64 %call4, i8* null)
  %4 = bitcast i8* %call5 to %struct._GimpThresholdConfig*
  %5 = load %struct._GimpThresholdTool*, %struct._GimpThresholdTool** %t_tool, align 8
  %config6 = getelementptr inbounds %struct._GimpThresholdTool, %struct._GimpThresholdTool* %5, i32 0, i32 1
  store %struct._GimpThresholdConfig* %4, %struct._GimpThresholdConfig** %config6, align 8
  %6 = load %struct._GimpThresholdTool*, %struct._GimpThresholdTool** %t_tool, align 8
  %config7 = getelementptr inbounds %struct._GimpThresholdTool, %struct._GimpThresholdTool* %6, i32 0, i32 1
  %7 = load %struct._GimpThresholdConfig*, %struct._GimpThresholdConfig** %config7, align 8
  %8 = bitcast %struct._GimpThresholdConfig* %7 to %struct._GTypeInstance*
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 80)
  %9 = bitcast %struct._GTypeInstance* %call8 to %struct._GObject*
  %10 = load %struct._GObject**, %struct._GObject*** %config.addr, align 8
  store %struct._GObject* %9, %struct._GObject** %10, align 8
  %11 = load %struct._GimpThresholdTool*, %struct._GimpThresholdTool** %t_tool, align 8
  %config9 = getelementptr inbounds %struct._GimpThresholdTool, %struct._GimpThresholdTool* %11, i32 0, i32 1
  %12 = load %struct._GimpThresholdConfig*, %struct._GimpThresholdConfig** %config9, align 8
  %13 = bitcast %struct._GimpThresholdConfig* %12 to i8*
  %14 = load %struct._GimpThresholdTool*, %struct._GimpThresholdTool** %t_tool, align 8
  %15 = bitcast %struct._GimpThresholdTool* %14 to %struct._GTypeInstance*
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 80)
  %16 = bitcast %struct._GTypeInstance* %call10 to %struct._GObject*
  %17 = bitcast %struct._GObject* %16 to i8*
  %call11 = call i64 @g_signal_connect_object(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpThresholdTool*)* @gimp_threshold_tool_config_notify to void ()*), i8* %17, i32 0)
  %18 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  %19 = load %struct._GimpThresholdTool*, %struct._GimpThresholdTool** %t_tool, align 8
  %config12 = getelementptr inbounds %struct._GimpThresholdTool, %struct._GimpThresholdTool* %19, i32 0, i32 1
  %20 = load %struct._GimpThresholdConfig*, %struct._GimpThresholdConfig** %config12, align 8
  call void (%struct._GeglNode*, i8*, ...) @gegl_node_set(%struct._GeglNode* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), %struct._GimpThresholdConfig* %20, i8* null)
  %21 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  ret %struct._GeglNode* %21
}

; Function Attrs: nounwind uwtable
define internal void @gimp_threshold_tool_map(%struct._GimpImageMapTool* %image_map_tool) #3 {
entry:
  %image_map_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %t_tool = alloca %struct._GimpThresholdTool*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpImageMapTool* %image_map_tool, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_threshold_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpThresholdTool*
  store %struct._GimpThresholdTool* %2, %struct._GimpThresholdTool** %t_tool, align 8
  %3 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %drawable2 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %3, i32 0, i32 1
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable2, align 8
  store %struct._GimpDrawable* %4, %struct._GimpDrawable** %drawable, align 8
  %5 = load %struct._GimpThresholdTool*, %struct._GimpThresholdTool** %t_tool, align 8
  %config = getelementptr inbounds %struct._GimpThresholdTool, %struct._GimpThresholdTool* %5, i32 0, i32 1
  %6 = load %struct._GimpThresholdConfig*, %struct._GimpThresholdConfig** %config, align 8
  %7 = load %struct._GimpThresholdTool*, %struct._GimpThresholdTool** %t_tool, align 8
  %threshold = getelementptr inbounds %struct._GimpThresholdTool, %struct._GimpThresholdTool* %7, i32 0, i32 2
  %8 = load %struct._Threshold*, %struct._Threshold** %threshold, align 8
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call3 = call i32 @gimp_drawable_is_rgb(%struct._GimpDrawable* %9)
  call void @gimp_threshold_config_to_cruft(%struct._GimpThresholdConfig* %6, %struct._Threshold* %8, i32 %call3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_threshold_tool_dialog(%struct._GimpImageMapTool* %image_map_tool) #3 {
entry:
  %image_map_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %t_tool = alloca %struct._GimpThresholdTool*, align 8
  %tool_options = alloca %struct._GimpToolOptions*, align 8
  %config = alloca %struct._GimpThresholdConfig*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %menu = alloca %struct._GtkWidget*, align 8
  %box = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  store %struct._GimpImageMapTool* %image_map_tool, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_threshold_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpThresholdTool*
  store %struct._GimpThresholdTool* %2, %struct._GimpThresholdTool** %t_tool, align 8
  %3 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %4 = bitcast %struct._GimpImageMapTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  store %struct._GimpToolOptions* %call4, %struct._GimpToolOptions** %tool_options, align 8
  %6 = load %struct._GimpThresholdTool*, %struct._GimpThresholdTool** %t_tool, align 8
  %config5 = getelementptr inbounds %struct._GimpThresholdTool, %struct._GimpThresholdTool* %6, i32 0, i32 1
  %7 = load %struct._GimpThresholdConfig*, %struct._GimpThresholdConfig** %config5, align 8
  store %struct._GimpThresholdConfig* %7, %struct._GimpThresholdConfig** %config, align 8
  %8 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %call6 = call %struct._GtkWidget* @gimp_image_map_tool_dialog_get_vbox(%struct._GimpImageMapTool* %8)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %main_vbox, align 8
  %call7 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %hbox, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_box_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call8)
  %11 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkBox*
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %11, %struct._GtkWidget* %12, i32 0, i32 0, i32 0)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %13)
  %14 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  %15 = bitcast %struct._GimpToolOptions* %14 to %struct._GTypeInstance*
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 80)
  %16 = bitcast %struct._GTypeInstance* %call10 to %struct._GObject*
  %call11 = call %struct._GtkWidget* @gimp_prop_enum_stock_box_new(%struct._GObject* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i32 0, i32 0)
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %menu, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_box_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call12)
  %19 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkBox*
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %19, %struct._GtkWidget* %20, i32 0, i32 0, i32 0)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %21)
  %call14 = call %struct._GtkWidget* @gimp_histogram_box_new()
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %box, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call15)
  %24 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %24, %struct._GtkWidget* %25, i32 1, i32 1, i32 0)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %26)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_histogram_box_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call17)
  %29 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpHistogramBox*
  %30 = load %struct._GimpThresholdTool*, %struct._GimpThresholdTool** %t_tool, align 8
  %histogram_box = getelementptr inbounds %struct._GimpThresholdTool, %struct._GimpThresholdTool* %30, i32 0, i32 4
  store %struct._GimpHistogramBox* %29, %struct._GimpHistogramBox** %histogram_box, align 8
  %31 = load %struct._GimpThresholdTool*, %struct._GimpThresholdTool** %t_tool, align 8
  %histogram_box19 = getelementptr inbounds %struct._GimpThresholdTool, %struct._GimpThresholdTool* %31, i32 0, i32 4
  %32 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %histogram_box19, align 8
  %view = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %32, i32 0, i32 1
  %33 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %34 = load %struct._GimpThresholdConfig*, %struct._GimpThresholdConfig** %config, align 8
  %low = getelementptr inbounds %struct._GimpThresholdConfig, %struct._GimpThresholdConfig* %34, i32 0, i32 1
  %35 = load double, double* %low, align 8
  %mul = fmul double %35, 2.559990e+02
  %conv = fptosi double %mul to i32
  %36 = load %struct._GimpThresholdConfig*, %struct._GimpThresholdConfig** %config, align 8
  %high = getelementptr inbounds %struct._GimpThresholdConfig, %struct._GimpThresholdConfig* %36, i32 0, i32 2
  %37 = load double, double* %high, align 8
  %mul20 = fmul double %37, 2.559990e+02
  %conv21 = fptosi double %mul20 to i32
  call void @gimp_histogram_view_set_range(%struct._GimpHistogramView* %33, i32 %conv, i32 %conv21)
  %38 = load %struct._GimpThresholdTool*, %struct._GimpThresholdTool** %t_tool, align 8
  %histogram_box22 = getelementptr inbounds %struct._GimpThresholdTool, %struct._GimpThresholdTool* %38, i32 0, i32 4
  %39 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %histogram_box22, align 8
  %view23 = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %39, i32 0, i32 1
  %40 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view23, align 8
  %41 = bitcast %struct._GimpHistogramView* %40 to i8*
  %42 = load %struct._GimpThresholdTool*, %struct._GimpThresholdTool** %t_tool, align 8
  %43 = bitcast %struct._GimpThresholdTool* %42 to i8*
  %call24 = call i64 @g_signal_connect_data(i8* %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GimpHistogramView*, i32, i32, %struct._GimpThresholdTool*)* @gimp_threshold_tool_histogram_range to void ()*), i8* %43, void (i8*, %struct._GClosure*)* null, i32 0)
  %44 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  %45 = bitcast %struct._GimpToolOptions* %44 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_histogram_options_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call25)
  %46 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpHistogramOptions*
  %47 = load %struct._GimpThresholdTool*, %struct._GimpThresholdTool** %t_tool, align 8
  %histogram_box27 = getelementptr inbounds %struct._GimpThresholdTool, %struct._GimpThresholdTool* %47, i32 0, i32 4
  %48 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %histogram_box27, align 8
  %view28 = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %48, i32 0, i32 1
  %49 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view28, align 8
  call void @gimp_histogram_options_connect_view(%struct._GimpHistogramOptions* %46, %struct._GimpHistogramView* %49)
  %call29 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %hbox, align 8
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_box_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call30)
  %52 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkBox*
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %52, %struct._GtkWidget* %53, i32 0, i32 0, i32 0)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %54)
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0)) #6
  %call33 = call %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8* %call32)
  store %struct._GtkWidget* %call33, %struct._GtkWidget** %button, align 8
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_box_get_type() #5
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call34)
  %57 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkBox*
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %57, %struct._GtkWidget* %58, i32 0, i32 0, i32 0)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call36 = call i8* @gettext(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.19, i32 0, i32 0)) #6
  call void @gimp_help_set_help_data(%struct._GtkWidget* %59, i8* %call36, i8* null)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %60)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %62 = bitcast %struct._GtkWidget* %61 to i8*
  %63 = load %struct._GimpThresholdTool*, %struct._GimpThresholdTool** %t_tool, align 8
  %64 = bitcast %struct._GimpThresholdTool* %63 to i8*
  %call37 = call i64 @g_signal_connect_data(i8* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpThresholdTool*)* @gimp_threshold_tool_auto_clicked to void ()*), i8* %64, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @g_slice_free1(i64, i8*) #1

declare void @gimp_histogram_unref(%struct._GimpHistogram*) #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #1

declare i32 @gimp_drawable_is_indexed(%struct._GimpDrawable*) #1

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_error_quark() #2

declare void @gimp_config_reset(%struct._GimpConfig*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare void @gimp_drawable_calculate_histogram(%struct._GimpDrawable*, %struct._GimpHistogram*) #1

declare void @gimp_histogram_view_set_histogram(%struct._GimpHistogramView*, %struct._GimpHistogram*) #1

declare void @gimp_image_map_tool_preview(%struct._GimpImageMapTool*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gegl_node_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_threshold_config_get_type() #2

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_threshold_tool_config_notify(%struct._GObject* %object, %struct._GParamSpec* %pspec, %struct._GimpThresholdTool* %t_tool) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %t_tool.addr = alloca %struct._GimpThresholdTool*, align 8
  %config = alloca %struct._GimpThresholdConfig*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpThresholdTool* %t_tool, %struct._GimpThresholdTool** %t_tool.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_threshold_config_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpThresholdConfig*
  store %struct._GimpThresholdConfig* %2, %struct._GimpThresholdConfig** %config, align 8
  %3 = load %struct._GimpThresholdTool*, %struct._GimpThresholdTool** %t_tool.addr, align 8
  %histogram_box = getelementptr inbounds %struct._GimpThresholdTool, %struct._GimpThresholdTool* %3, i32 0, i32 4
  %4 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %histogram_box, align 8
  %tobool = icmp ne %struct._GimpHistogramBox* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpThresholdTool*, %struct._GimpThresholdTool** %t_tool.addr, align 8
  %histogram_box2 = getelementptr inbounds %struct._GimpThresholdTool, %struct._GimpThresholdTool* %5, i32 0, i32 4
  %6 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %histogram_box2, align 8
  %view = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %6, i32 0, i32 1
  %7 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %8 = load %struct._GimpThresholdConfig*, %struct._GimpThresholdConfig** %config, align 8
  %low = getelementptr inbounds %struct._GimpThresholdConfig, %struct._GimpThresholdConfig* %8, i32 0, i32 1
  %9 = load double, double* %low, align 8
  %mul = fmul double %9, 2.559990e+02
  %conv = fptosi double %mul to i32
  %10 = load %struct._GimpThresholdConfig*, %struct._GimpThresholdConfig** %config, align 8
  %high = getelementptr inbounds %struct._GimpThresholdConfig, %struct._GimpThresholdConfig* %10, i32 0, i32 2
  %11 = load double, double* %high, align 8
  %mul3 = fmul double %11, 2.559990e+02
  %conv4 = fptosi double %mul3 to i32
  call void @gimp_histogram_view_set_range(%struct._GimpHistogramView* %7, i32 %conv, i32 %conv4)
  %12 = load %struct._GimpThresholdTool*, %struct._GimpThresholdTool** %t_tool.addr, align 8
  %13 = bitcast %struct._GimpThresholdTool* %12 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_image_map_tool_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call5)
  %14 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpImageMapTool*
  call void @gimp_image_map_tool_preview(%struct._GimpImageMapTool* %14)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @gegl_node_set(%struct._GeglNode*, i8*, ...) #1

declare void @gimp_histogram_view_set_range(%struct._GimpHistogramView*, i32, i32) #1

declare void @gimp_threshold_config_to_cruft(%struct._GimpThresholdConfig*, %struct._Threshold*, i32) #1

declare i32 @gimp_drawable_is_rgb(%struct._GimpDrawable*) #1

declare %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool*) #1

declare %struct._GtkWidget* @gimp_image_map_tool_dialog_get_vbox(%struct._GimpImageMapTool*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_prop_enum_stock_box_new(%struct._GObject*, i8*, i8*, i32, i32) #1

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gimp_histogram_box_new() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_histogram_box_get_type() #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_threshold_tool_histogram_range(%struct._GimpHistogramView* %widget, i32 %start, i32 %end, %struct._GimpThresholdTool* %t_tool) #3 {
entry:
  %widget.addr = alloca %struct._GimpHistogramView*, align 8
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %t_tool.addr = alloca %struct._GimpThresholdTool*, align 8
  %low = alloca double, align 8
  %high = alloca double, align 8
  store %struct._GimpHistogramView* %widget, %struct._GimpHistogramView** %widget.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  store %struct._GimpThresholdTool* %t_tool, %struct._GimpThresholdTool** %t_tool.addr, align 8
  %0 = load i32, i32* %start.addr, align 4
  %conv = sitofp i32 %0 to double
  %div = fdiv double %conv, 2.550000e+02
  store double %div, double* %low, align 8
  %1 = load i32, i32* %end.addr, align 4
  %conv1 = sitofp i32 %1 to double
  %div2 = fdiv double %conv1, 2.550000e+02
  store double %div2, double* %high, align 8
  %2 = load double, double* %low, align 8
  %3 = load %struct._GimpThresholdTool*, %struct._GimpThresholdTool** %t_tool.addr, align 8
  %config = getelementptr inbounds %struct._GimpThresholdTool, %struct._GimpThresholdTool* %3, i32 0, i32 1
  %4 = load %struct._GimpThresholdConfig*, %struct._GimpThresholdConfig** %config, align 8
  %low3 = getelementptr inbounds %struct._GimpThresholdConfig, %struct._GimpThresholdConfig* %4, i32 0, i32 1
  %5 = load double, double* %low3, align 8
  %cmp = fcmp une double %2, %5
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load double, double* %high, align 8
  %7 = load %struct._GimpThresholdTool*, %struct._GimpThresholdTool** %t_tool.addr, align 8
  %config5 = getelementptr inbounds %struct._GimpThresholdTool, %struct._GimpThresholdTool* %7, i32 0, i32 1
  %8 = load %struct._GimpThresholdConfig*, %struct._GimpThresholdConfig** %config5, align 8
  %high6 = getelementptr inbounds %struct._GimpThresholdConfig, %struct._GimpThresholdConfig* %8, i32 0, i32 2
  %9 = load double, double* %high6, align 8
  %cmp7 = fcmp une double %6, %9
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %10 = load %struct._GimpThresholdTool*, %struct._GimpThresholdTool** %t_tool.addr, align 8
  %config9 = getelementptr inbounds %struct._GimpThresholdTool, %struct._GimpThresholdTool* %10, i32 0, i32 1
  %11 = load %struct._GimpThresholdConfig*, %struct._GimpThresholdConfig** %config9, align 8
  %12 = bitcast %struct._GimpThresholdConfig* %11 to i8*
  %13 = load double, double* %low, align 8
  %14 = load double, double* %high, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), double %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), double %14, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  ret void
}

declare void @gimp_histogram_options_connect_view(%struct._GimpHistogramOptions*, %struct._GimpHistogramView*) #1

declare %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8*) #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_threshold_tool_auto_clicked(%struct._GtkWidget* %button, %struct._GimpThresholdTool* %t_tool) #3 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %t_tool.addr = alloca %struct._GimpThresholdTool*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %low = alloca double, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store %struct._GimpThresholdTool* %t_tool, %struct._GimpThresholdTool** %t_tool.addr, align 8
  %0 = load %struct._GimpThresholdTool*, %struct._GimpThresholdTool** %t_tool.addr, align 8
  %1 = bitcast %struct._GimpThresholdTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_map_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageMapTool*
  %drawable2 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %2, i32 0, i32 1
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable2, align 8
  store %struct._GimpDrawable* %3, %struct._GimpDrawable** %drawable, align 8
  %4 = load %struct._GimpThresholdTool*, %struct._GimpThresholdTool** %t_tool.addr, align 8
  %histogram = getelementptr inbounds %struct._GimpThresholdTool, %struct._GimpThresholdTool* %4, i32 0, i32 3
  %5 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram, align 8
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call3 = call i32 @gimp_drawable_is_rgb(%struct._GimpDrawable* %6)
  %tobool = icmp ne i32 %call3, 0
  %cond = select i1 %tobool, i32 5, i32 0
  %call4 = call double @gimp_histogram_get_threshold(%struct._GimpHistogram* %5, i32 %cond, i32 0, i32 255)
  store double %call4, double* %low, align 8
  %7 = load %struct._GimpThresholdTool*, %struct._GimpThresholdTool** %t_tool.addr, align 8
  %histogram_box = getelementptr inbounds %struct._GimpThresholdTool, %struct._GimpThresholdTool* %7, i32 0, i32 4
  %8 = load %struct._GimpHistogramBox*, %struct._GimpHistogramBox** %histogram_box, align 8
  %view = getelementptr inbounds %struct._GimpHistogramBox, %struct._GimpHistogramBox* %8, i32 0, i32 1
  %9 = load %struct._GimpHistogramView*, %struct._GimpHistogramView** %view, align 8
  %10 = load double, double* %low, align 8
  %conv = fptosi double %10 to i32
  call void @gimp_histogram_view_set_range(%struct._GimpHistogramView* %9, i32 %conv, i32 255)
  ret void
}

declare void @g_object_set(i8*, i8*, ...) #1

declare double @gimp_histogram_get_threshold(%struct._GimpHistogram*, i32, i32, i32) #1

declare noalias i8* @g_slice_alloc0(i64) #1

declare %struct._GimpHistogram* @gimp_histogram_new() #1

declare void @threshold(%struct._Threshold*, %struct._PixelRegion*, %struct._PixelRegion*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
