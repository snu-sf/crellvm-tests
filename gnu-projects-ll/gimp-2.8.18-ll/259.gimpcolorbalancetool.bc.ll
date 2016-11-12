; ModuleID = './app/tools/gimpcolorbalancetool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpColorBalanceToolClass = type { %struct._GimpImageMapToolClass }
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
%struct._GimpColorOptions = type opaque
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
%struct._GimpColorBalanceTool = type { %struct._GimpImageMapTool, %struct._GimpColorBalanceConfig*, %struct._ColorBalance*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget* }
%struct._GimpColorBalanceConfig = type { %struct._GimpImageMapConfig, i32, [3 x double], [3 x double], [3 x double], i32 }
%struct._GimpImageMapConfig = type { %struct._GimpViewable, i32 }
%struct._ColorBalance = type { i32, [3 x double], [3 x double], [3 x double], [256 x i8], [256 x i8], [256 x i8] }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GimpConfig = type opaque
%struct._GtkRadioButton = type { %struct._GtkCheckButton, %struct._GSList* }
%struct._GtkCheckButton = type { %struct._GtkToggleButton }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GtkScale = type { %struct._GtkRange, i32, i8 }
%struct._GtkRange = type { %struct._GtkWidget, %struct._GtkAdjustment*, i32, i8, i32, i32, %struct._GdkRectangle, i32, i32, i32, i8, %struct._GtkRangeLayout*, %struct._GtkRangeStepTimer*, i32, i32, i32, %struct._GdkDrawable* }
%struct._GtkRangeLayout = type opaque
%struct._GtkRangeStepTimer = type opaque

@gimp_color_balance_tool_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"GimpColorBalanceTool\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"gimp-color-balance-tool\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Color Balance\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Color Balance Tool: Adjust color distribution\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Color _Balance...\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"gimp-tool-color-balance\00", align 1
@gimp_color_balance_tool_parent_class = internal global i8* null, align 8
@GimpColorBalanceTool_private_offset = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"Adjust Color Balance\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"color-balance\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Import Color Balance Settings\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Export Color Balance Settings\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"Color Balance operates only on RGB color layers.\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"gimp:color-balance\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"notify\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"cyan-red\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"magenta-green\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"yellow-blue\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"preserve-luminosity\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"Select Range to Adjust\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"Adjust Color Levels\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"Cyan\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"Red\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"Magenta\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"Green\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"Yellow\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"Blue\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"R_eset Range\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"Preserve _luminosity\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_color_balance_tool_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_color_balance_tool_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_color_balance_tool_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_image_map_tool_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 392, void (i8*, i8*)* bitcast (void (i8*)* @gimp_color_balance_tool_class_intern_init to void (i8*, i8*)*), i32 448, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpColorBalanceTool*)* @gimp_color_balance_tool_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_color_balance_tool_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_color_balance_tool_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_map_tool_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_balance_tool_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_color_balance_tool_parent_class, align 8
  %1 = load i32, i32* @GimpColorBalanceTool_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpColorBalanceTool_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpColorBalanceToolClass*
  call void @gimp_color_balance_tool_class_init(%struct._GimpColorBalanceToolClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_balance_tool_init(%struct._GimpColorBalanceTool* %cb_tool) #3 {
entry:
  %cb_tool.addr = alloca %struct._GimpColorBalanceTool*, align 8
  %im_tool = alloca %struct._GimpImageMapTool*, align 8
  store %struct._GimpColorBalanceTool* %cb_tool, %struct._GimpColorBalanceTool** %cb_tool.addr, align 8
  %0 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool.addr, align 8
  %1 = bitcast %struct._GimpColorBalanceTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_map_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageMapTool*
  store %struct._GimpImageMapTool* %2, %struct._GimpImageMapTool** %im_tool, align 8
  %call2 = call noalias i8* @g_slice_alloc0(i64 848)
  %3 = bitcast i8* %call2 to %struct._ColorBalance*
  %4 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool.addr, align 8
  %color_balance = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %4, i32 0, i32 2
  store %struct._ColorBalance* %3, %struct._ColorBalance** %color_balance, align 8
  %5 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool.addr, align 8
  %color_balance3 = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %5, i32 0, i32 2
  %6 = load %struct._ColorBalance*, %struct._ColorBalance** %color_balance3, align 8
  call void @color_balance_init(%struct._ColorBalance* %6)
  %7 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %im_tool, align 8
  %apply_func = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %7, i32 0, i32 5
  store void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)* bitcast (void (%struct._ColorBalance*, %struct._PixelRegion*, %struct._PixelRegion*)* @color_balance to void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)*), void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)** %apply_func, align 8
  %8 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool.addr, align 8
  %color_balance4 = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %8, i32 0, i32 2
  %9 = load %struct._ColorBalance*, %struct._ColorBalance** %color_balance4, align 8
  %10 = bitcast %struct._ColorBalance* %9 to i8*
  %11 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %im_tool, align 8
  %apply_data = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %11, i32 0, i32 6
  store i8* %10, i8** %apply_data, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_color_balance_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, i8* %data) #3 {
entry:
  %callback.addr = alloca void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  %call = call i64 @gimp_color_balance_tool_get_type() #6
  %call1 = call i64 @gimp_image_map_options_get_type() #6
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0)) #7
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i32 0, i32 0)) #7
  %1 = load i8*, i8** %data.addr, align 8
  call void %0(i64 %call, i64 %call1, %struct._GtkWidget* (%struct._GimpToolOptions*)* null, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8* %call2, i8* %call3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i8* %1)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_map_options_get_type() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_balance_tool_class_init(%struct._GimpColorBalanceToolClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpColorBalanceToolClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %tool_class = alloca %struct._GimpToolClass*, align 8
  %im_tool_class = alloca %struct._GimpImageMapToolClass*, align 8
  store %struct._GimpColorBalanceToolClass* %klass, %struct._GimpColorBalanceToolClass** %klass.addr, align 8
  %0 = load %struct._GimpColorBalanceToolClass*, %struct._GimpColorBalanceToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpColorBalanceToolClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpColorBalanceToolClass*, %struct._GimpColorBalanceToolClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpColorBalanceToolClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_tool_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpToolClass*
  store %struct._GimpToolClass* %5, %struct._GimpToolClass** %tool_class, align 8
  %6 = load %struct._GimpColorBalanceToolClass*, %struct._GimpColorBalanceToolClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpColorBalanceToolClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_image_map_tool_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpImageMapToolClass*
  store %struct._GimpImageMapToolClass* %8, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_color_balance_tool_finalize, void (%struct._GObject*)** %finalize, align 8
  %10 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %initialize = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %10, i32 0, i32 3
  store i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)* @gimp_color_balance_tool_initialize, i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)** %initialize, align 8
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0)) #7
  %11 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %dialog_desc = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %11, i32 0, i32 1
  store i8* %call5, i8** %dialog_desc, align 8
  %12 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %settings_name = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %12, i32 0, i32 2
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i8** %settings_name, align 8
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0)) #7
  %13 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %import_dialog_title = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %13, i32 0, i32 3
  store i8* %call6, i8** %import_dialog_title, align 8
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0)) #7
  %14 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %export_dialog_title = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %14, i32 0, i32 4
  store i8* %call7, i8** %export_dialog_title, align 8
  %15 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %get_operation = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %15, i32 0, i32 6
  store %struct._GeglNode* (%struct._GimpImageMapTool*, %struct._GObject**)* @gimp_color_balance_tool_get_operation, %struct._GeglNode* (%struct._GimpImageMapTool*, %struct._GObject**)** %get_operation, align 8
  %16 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %map = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %16, i32 0, i32 7
  store void (%struct._GimpImageMapTool*)* @gimp_color_balance_tool_map, void (%struct._GimpImageMapTool*)** %map, align 8
  %17 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %dialog = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %17, i32 0, i32 8
  store void (%struct._GimpImageMapTool*)* @gimp_color_balance_tool_dialog, void (%struct._GimpImageMapTool*)** %dialog, align 8
  %18 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %reset = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %18, i32 0, i32 9
  store void (%struct._GimpImageMapTool*)* @gimp_color_balance_tool_reset, void (%struct._GimpImageMapTool*)** %reset, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_color_balance_tool_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %cb_tool = alloca %struct._GimpColorBalanceTool*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_balance_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorBalanceTool*
  store %struct._GimpColorBalanceTool* %2, %struct._GimpColorBalanceTool** %cb_tool, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool, align 8
  %color_balance = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %3, i32 0, i32 2
  %4 = load %struct._ColorBalance*, %struct._ColorBalance** %color_balance, align 8
  %5 = bitcast %struct._ColorBalance* %4 to i8*
  call void @g_slice_free1(i64 848, i8* %5)
  br label %do.end

do.end:                                           ; preds = %do.body
  %6 = load i8*, i8** @gimp_color_balance_tool_parent_class, align 8
  %7 = bitcast i8* %6 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 80)
  %8 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 6
  %9 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %10 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %9(%struct._GObject* %10)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_color_balance_tool_initialize(%struct._GimpTool* %tool, %struct._GimpDisplay* %display, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %tool.addr = alloca %struct._GimpTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %cb_tool = alloca %struct._GimpColorBalanceTool*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_balance_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorBalanceTool*
  store %struct._GimpColorBalanceTool* %2, %struct._GimpColorBalanceTool** %cb_tool, align 8
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
  %call4 = call i32 @gimp_drawable_is_rgb(%struct._GimpDrawable* %6)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.9, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call7 = call i32 @gimp_error_quark() #6
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i32 0, i32 0)) #7
  call void @g_set_error_literal(%struct._GError** %7, i32 %call7, i32 0, i8* %call8)
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %8 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool, align 8
  %config = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %8, i32 0, i32 1
  %9 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config, align 8
  %10 = bitcast %struct._GimpColorBalanceConfig* %9 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_config_interface_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call10)
  %11 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpConfig*
  call void @gimp_config_reset(%struct._GimpConfig* %11)
  %12 = load i8*, i8** @gimp_color_balance_tool_parent_class, align 8
  %13 = bitcast i8* %12 to %struct._GTypeClass*
  %call12 = call i64 @gimp_tool_get_type() #6
  %call13 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %13, i64 %call12)
  %14 = bitcast %struct._GTypeClass* %call13 to %struct._GimpToolClass*
  %initialize = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %14, i32 0, i32 3
  %15 = load i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)*, i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)** %initialize, align 8
  %16 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %17 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call14 = call i32 %15(%struct._GimpTool* %16, %struct._GimpDisplay* %17, %struct._GError** %18)
  store i32 %call14, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.6, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal %struct._GeglNode* @gimp_color_balance_tool_get_operation(%struct._GimpImageMapTool* %im_tool, %struct._GObject** %config) #3 {
entry:
  %im_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %config.addr = alloca %struct._GObject**, align 8
  %cb_tool = alloca %struct._GimpColorBalanceTool*, align 8
  %node = alloca %struct._GeglNode*, align 8
  store %struct._GimpImageMapTool* %im_tool, %struct._GimpImageMapTool** %im_tool.addr, align 8
  store %struct._GObject** %config, %struct._GObject*** %config.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %im_tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_balance_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorBalanceTool*
  store %struct._GimpColorBalanceTool* %2, %struct._GimpColorBalanceTool** %cb_tool, align 8
  %call2 = call i64 @gegl_node_get_type() #6
  %call3 = call i8* (i64, i8*, ...) @g_object_new(i64 %call2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0), i8* null)
  %3 = bitcast i8* %call3 to %struct._GeglNode*
  store %struct._GeglNode* %3, %struct._GeglNode** %node, align 8
  %call4 = call i64 @gimp_color_balance_config_get_type() #6
  %call5 = call i8* (i64, i8*, ...) @g_object_new(i64 %call4, i8* null)
  %4 = bitcast i8* %call5 to %struct._GimpColorBalanceConfig*
  %5 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool, align 8
  %config6 = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %5, i32 0, i32 1
  store %struct._GimpColorBalanceConfig* %4, %struct._GimpColorBalanceConfig** %config6, align 8
  %6 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool, align 8
  %config7 = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %6, i32 0, i32 1
  %7 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config7, align 8
  %8 = bitcast %struct._GimpColorBalanceConfig* %7 to %struct._GTypeInstance*
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 80)
  %9 = bitcast %struct._GTypeInstance* %call8 to %struct._GObject*
  %10 = load %struct._GObject**, %struct._GObject*** %config.addr, align 8
  store %struct._GObject* %9, %struct._GObject** %10, align 8
  %11 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool, align 8
  %config9 = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %11, i32 0, i32 1
  %12 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config9, align 8
  %13 = bitcast %struct._GimpColorBalanceConfig* %12 to i8*
  %14 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool, align 8
  %15 = bitcast %struct._GimpColorBalanceTool* %14 to %struct._GTypeInstance*
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 80)
  %16 = bitcast %struct._GTypeInstance* %call10 to %struct._GObject*
  %17 = bitcast %struct._GObject* %16 to i8*
  %call11 = call i64 @g_signal_connect_object(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpColorBalanceTool*)* @color_balance_config_notify to void ()*), i8* %17, i32 0)
  %18 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  %19 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool, align 8
  %config12 = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %19, i32 0, i32 1
  %20 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config12, align 8
  call void (%struct._GeglNode*, i8*, ...) @gegl_node_set(%struct._GeglNode* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), %struct._GimpColorBalanceConfig* %20, i8* null)
  %21 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  ret %struct._GeglNode* %21
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_balance_tool_map(%struct._GimpImageMapTool* %image_map_tool) #3 {
entry:
  %image_map_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %cb_tool = alloca %struct._GimpColorBalanceTool*, align 8
  store %struct._GimpImageMapTool* %image_map_tool, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_balance_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorBalanceTool*
  store %struct._GimpColorBalanceTool* %2, %struct._GimpColorBalanceTool** %cb_tool, align 8
  %3 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool, align 8
  %config = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %3, i32 0, i32 1
  %4 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config, align 8
  %5 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool, align 8
  %color_balance = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %5, i32 0, i32 2
  %6 = load %struct._ColorBalance*, %struct._ColorBalance** %color_balance, align 8
  call void @gimp_color_balance_config_to_cruft(%struct._GimpColorBalanceConfig* %4, %struct._ColorBalance* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_balance_tool_dialog(%struct._GimpImageMapTool* %image_map_tool) #3 {
entry:
  %image_map_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %cb_tool = alloca %struct._GimpColorBalanceTool*, align 8
  %config = alloca %struct._GimpColorBalanceConfig*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  store %struct._GimpImageMapTool* %image_map_tool, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_balance_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorBalanceTool*
  store %struct._GimpColorBalanceTool* %2, %struct._GimpColorBalanceTool** %cb_tool, align 8
  %3 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool, align 8
  %config2 = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %3, i32 0, i32 1
  %4 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config2, align 8
  store %struct._GimpColorBalanceConfig* %4, %struct._GimpColorBalanceConfig** %config, align 8
  %5 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %call3 = call %struct._GtkWidget* @gimp_image_map_tool_dialog_get_vbox(%struct._GimpImageMapTool* %5)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %main_vbox, align 8
  %call4 = call i64 @gimp_transfer_mode_get_type() #6
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i32 0, i32 0)) #7
  %call6 = call %struct._GtkWidget* @gtk_label_new(i8* %call5)
  %6 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool, align 8
  %7 = bitcast %struct._GimpColorBalanceTool* %6 to i8*
  %8 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool, align 8
  %range_radio = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %8, i32 0, i32 3
  %call7 = call %struct._GtkWidget* @gimp_enum_radio_frame_new(i64 %call4, %struct._GtkWidget* %call6, void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpColorBalanceTool*)* @color_balance_range_callback to void ()*), i8* %7, %struct._GtkWidget** %range_radio)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %frame, align 8
  %9 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool, align 8
  %range_radio8 = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %9, i32 0, i32 3
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %range_radio8, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_radio_button_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call9)
  %12 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkRadioButton*
  %13 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config, align 8
  %range = getelementptr inbounds %struct._GimpColorBalanceConfig, %struct._GimpColorBalanceConfig* %13, i32 0, i32 1
  %14 = load i32, i32* %range, align 4
  call void @gimp_int_radio_group_set_active(%struct._GtkRadioButton* %12, i32 %14)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_box_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkBox*
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %17, %struct._GtkWidget* %18, i32 0, i32 0, i32 0)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %19)
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0)) #7
  %call14 = call %struct._GtkWidget* @gimp_frame_new(i8* %call13)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %frame, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call15)
  %22 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %22, %struct._GtkWidget* %23, i32 0, i32 0, i32 0)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %24)
  %call17 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 4)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %vbox, align 8
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_container_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call18)
  %27 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkContainer*
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %27, %struct._GtkWidget* %28)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %29)
  %call20 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 4, i32 0)
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %table, align 8
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_table_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call21)
  %32 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %32, i32 4)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_table_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call23)
  %35 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %35, i32 2)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_box_get_type() #6
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call25)
  %38 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkBox*
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %38, %struct._GtkWidget* %39, i32 0, i32 0, i32 0)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %40)
  %41 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config, align 8
  %range27 = getelementptr inbounds %struct._GimpColorBalanceConfig, %struct._GimpColorBalanceConfig* %41, i32 0, i32 1
  %42 = load i32, i32* %range27, align 4
  %idxprom = zext i32 %42 to i64
  %43 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config, align 8
  %cyan_red = getelementptr inbounds %struct._GimpColorBalanceConfig, %struct._GimpColorBalanceConfig* %43, i32 0, i32 2
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %cyan_red, i32 0, i64 %idxprom
  %44 = load double, double* %arrayidx, align 8
  %mul = fmul double %44, 1.000000e+02
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0)) #7
  %call29 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0)) #7
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call30 = call %struct._GtkAdjustment* @create_levels_scale(double %mul, i8* %call28, i8* %call29, %struct._GtkWidget* %45, i32 0)
  %46 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool, align 8
  %cyan_red_adj = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %46, i32 0, i32 4
  store %struct._GtkAdjustment* %call30, %struct._GtkAdjustment** %cyan_red_adj, align 8
  %47 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool, align 8
  %cyan_red_adj31 = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %47, i32 0, i32 4
  %48 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %cyan_red_adj31, align 8
  %49 = bitcast %struct._GtkAdjustment* %48 to i8*
  %50 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool, align 8
  %51 = bitcast %struct._GimpColorBalanceTool* %50 to i8*
  %call32 = call i64 @g_signal_connect_data(i8* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpColorBalanceTool*)* @color_balance_cr_changed to void ()*), i8* %51, void (i8*, %struct._GClosure*)* null, i32 0)
  %52 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config, align 8
  %range33 = getelementptr inbounds %struct._GimpColorBalanceConfig, %struct._GimpColorBalanceConfig* %52, i32 0, i32 1
  %53 = load i32, i32* %range33, align 4
  %idxprom34 = zext i32 %53 to i64
  %54 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config, align 8
  %magenta_green = getelementptr inbounds %struct._GimpColorBalanceConfig, %struct._GimpColorBalanceConfig* %54, i32 0, i32 3
  %arrayidx35 = getelementptr inbounds [3 x double], [3 x double]* %magenta_green, i32 0, i64 %idxprom34
  %55 = load double, double* %arrayidx35, align 8
  %mul36 = fmul double %55, 1.000000e+02
  %call37 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0)) #7
  %call38 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0)) #7
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call39 = call %struct._GtkAdjustment* @create_levels_scale(double %mul36, i8* %call37, i8* %call38, %struct._GtkWidget* %56, i32 1)
  %57 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool, align 8
  %magenta_green_adj = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %57, i32 0, i32 5
  store %struct._GtkAdjustment* %call39, %struct._GtkAdjustment** %magenta_green_adj, align 8
  %58 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool, align 8
  %magenta_green_adj40 = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %58, i32 0, i32 5
  %59 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %magenta_green_adj40, align 8
  %60 = bitcast %struct._GtkAdjustment* %59 to i8*
  %61 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool, align 8
  %62 = bitcast %struct._GimpColorBalanceTool* %61 to i8*
  %call41 = call i64 @g_signal_connect_data(i8* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpColorBalanceTool*)* @color_balance_mg_changed to void ()*), i8* %62, void (i8*, %struct._GClosure*)* null, i32 0)
  %63 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config, align 8
  %range42 = getelementptr inbounds %struct._GimpColorBalanceConfig, %struct._GimpColorBalanceConfig* %63, i32 0, i32 1
  %64 = load i32, i32* %range42, align 4
  %idxprom43 = zext i32 %64 to i64
  %65 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config, align 8
  %yellow_blue = getelementptr inbounds %struct._GimpColorBalanceConfig, %struct._GimpColorBalanceConfig* %65, i32 0, i32 4
  %arrayidx44 = getelementptr inbounds [3 x double], [3 x double]* %yellow_blue, i32 0, i64 %idxprom43
  %66 = load double, double* %arrayidx44, align 8
  %mul45 = fmul double %66, 1.000000e+02
  %call46 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0)) #7
  %call47 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0)) #7
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call48 = call %struct._GtkAdjustment* @create_levels_scale(double %mul45, i8* %call46, i8* %call47, %struct._GtkWidget* %67, i32 2)
  %68 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool, align 8
  %yellow_blue_adj = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %68, i32 0, i32 6
  store %struct._GtkAdjustment* %call48, %struct._GtkAdjustment** %yellow_blue_adj, align 8
  %69 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool, align 8
  %yellow_blue_adj49 = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %69, i32 0, i32 6
  %70 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %yellow_blue_adj49, align 8
  %71 = bitcast %struct._GtkAdjustment* %70 to i8*
  %72 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool, align 8
  %73 = bitcast %struct._GimpColorBalanceTool* %72 to i8*
  %call50 = call i64 @g_signal_connect_data(i8* %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpColorBalanceTool*)* @color_balance_yb_changed to void ()*), i8* %73, void (i8*, %struct._GClosure*)* null, i32 0)
  %call51 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call51, %struct._GtkWidget** %hbox, align 8
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %75 = bitcast %struct._GtkWidget* %74 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_box_get_type() #6
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call52)
  %76 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkBox*
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %76, %struct._GtkWidget* %77, i32 0, i32 0, i32 0)
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %78)
  %call54 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0)) #7
  %call55 = call %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8* %call54)
  store %struct._GtkWidget* %call55, %struct._GtkWidget** %button, align 8
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %80 = bitcast %struct._GtkWidget* %79 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_box_get_type() #6
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 %call56)
  %81 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkBox*
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %81, %struct._GtkWidget* %82, i32 0, i32 0, i32 0)
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %83)
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %85 = bitcast %struct._GtkWidget* %84 to i8*
  %86 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool, align 8
  %87 = bitcast %struct._GimpColorBalanceTool* %86 to i8*
  %call58 = call i64 @g_signal_connect_data(i8* %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpColorBalanceTool*)* @color_balance_range_reset_callback to void ()*), i8* %87, void (i8*, %struct._GClosure*)* null, i32 0)
  %call59 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i32 0, i32 0)) #7
  %call60 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call59)
  %88 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool, align 8
  %preserve_toggle = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %88, i32 0, i32 7
  store %struct._GtkWidget* %call60, %struct._GtkWidget** %preserve_toggle, align 8
  %89 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool, align 8
  %preserve_toggle61 = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %89, i32 0, i32 7
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %preserve_toggle61, align 8
  %91 = bitcast %struct._GtkWidget* %90 to %struct._GTypeInstance*
  %call62 = call i64 @gtk_toggle_button_get_type() #6
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 %call62)
  %92 = bitcast %struct._GTypeInstance* %call63 to %struct._GtkToggleButton*
  %93 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config, align 8
  %preserve_luminosity = getelementptr inbounds %struct._GimpColorBalanceConfig, %struct._GimpColorBalanceConfig* %93, i32 0, i32 5
  %94 = load i32, i32* %preserve_luminosity, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %92, i32 %94)
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %96 = bitcast %struct._GtkWidget* %95 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_box_get_type() #6
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 %call64)
  %97 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkBox*
  %98 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool, align 8
  %preserve_toggle66 = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %98, i32 0, i32 7
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %preserve_toggle66, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %97, %struct._GtkWidget* %99, i32 0, i32 0, i32 0)
  %100 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool, align 8
  %preserve_toggle67 = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %100, i32 0, i32 7
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %preserve_toggle67, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %101)
  %102 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool, align 8
  %preserve_toggle68 = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %102, i32 0, i32 7
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %preserve_toggle68, align 8
  %104 = bitcast %struct._GtkWidget* %103 to i8*
  %105 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool, align 8
  %106 = bitcast %struct._GimpColorBalanceTool* %105 to i8*
  %call69 = call i64 @g_signal_connect_data(i8* %104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpColorBalanceTool*)* @color_balance_preserve_toggled to void ()*), i8* %106, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_balance_tool_reset(%struct._GimpImageMapTool* %im_tool) #3 {
entry:
  %im_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %cb_tool = alloca %struct._GimpColorBalanceTool*, align 8
  %range = alloca i32, align 4
  store %struct._GimpImageMapTool* %im_tool, %struct._GimpImageMapTool** %im_tool.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %im_tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_balance_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorBalanceTool*
  store %struct._GimpColorBalanceTool* %2, %struct._GimpColorBalanceTool** %cb_tool, align 8
  %3 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool, align 8
  %config = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %3, i32 0, i32 1
  %4 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config, align 8
  %range2 = getelementptr inbounds %struct._GimpColorBalanceConfig, %struct._GimpColorBalanceConfig* %4, i32 0, i32 1
  %5 = load i32, i32* %range2, align 4
  store i32 %5, i32* %range, align 4
  %6 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %im_tool.addr, align 8
  %config3 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %6, i32 0, i32 3
  %7 = load %struct._GObject*, %struct._GObject** %config3, align 8
  call void @g_object_freeze_notify(%struct._GObject* %7)
  %8 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %im_tool.addr, align 8
  %default_config = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %8, i32 0, i32 4
  %9 = load %struct._GObject*, %struct._GObject** %default_config, align 8
  %tobool = icmp ne %struct._GObject* %9, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %im_tool.addr, align 8
  %default_config4 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %10, i32 0, i32 4
  %11 = load %struct._GObject*, %struct._GObject** %default_config4, align 8
  %12 = bitcast %struct._GObject* %11 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_config_interface_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call5)
  %13 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpConfig*
  %14 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %im_tool.addr, align 8
  %config7 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %14, i32 0, i32 3
  %15 = load %struct._GObject*, %struct._GObject** %config7, align 8
  %16 = bitcast %struct._GObject* %15 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_config_interface_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call8)
  %17 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpConfig*
  %call10 = call i32 @gimp_config_copy(%struct._GimpConfig* %13, %struct._GimpConfig* %17, i32 0)
  br label %if.end

if.else:                                          ; preds = %entry
  %18 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %im_tool.addr, align 8
  %config11 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %18, i32 0, i32 3
  %19 = load %struct._GObject*, %struct._GObject** %config11, align 8
  %20 = bitcast %struct._GObject* %19 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_config_interface_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call12)
  %21 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpConfig*
  call void @gimp_config_reset(%struct._GimpConfig* %21)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %22 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool, align 8
  %config14 = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %22, i32 0, i32 1
  %23 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config14, align 8
  %24 = bitcast %struct._GimpColorBalanceConfig* %23 to i8*
  %25 = load i32, i32* %range, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %25, i8* null)
  %26 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %im_tool.addr, align 8
  %config15 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %26, i32 0, i32 3
  %27 = load %struct._GObject*, %struct._GObject** %config15, align 8
  call void @g_object_thaw_notify(%struct._GObject* %27)
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @g_slice_free1(i64, i8*) #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #1

declare i32 @gimp_drawable_is_rgb(%struct._GimpDrawable*) #1

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_error_quark() #2

declare void @gimp_config_reset(%struct._GimpConfig*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gegl_node_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_color_balance_config_get_type() #2

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @color_balance_config_notify(%struct._GObject* %object, %struct._GParamSpec* %pspec, %struct._GimpColorBalanceTool* %cb_tool) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %cb_tool.addr = alloca %struct._GimpColorBalanceTool*, align 8
  %config = alloca %struct._GimpColorBalanceConfig*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpColorBalanceTool* %cb_tool, %struct._GimpColorBalanceTool** %cb_tool.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_balance_config_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorBalanceConfig*
  store %struct._GimpColorBalanceConfig* %2, %struct._GimpColorBalanceConfig** %config, align 8
  %3 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool.addr, align 8
  %cyan_red_adj = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %3, i32 0, i32 4
  %4 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %cyan_red_adj, align 8
  %tobool = icmp ne %struct._GtkAdjustment* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %5, i32 0, i32 1
  %6 = load i8*, i8** %name, align 8
  %call2 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0)) #8
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.else, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %7 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool.addr, align 8
  %range_radio = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %7, i32 0, i32 3
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %range_radio, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_radio_button_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkRadioButton*
  %11 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config, align 8
  %range = getelementptr inbounds %struct._GimpColorBalanceConfig, %struct._GimpColorBalanceConfig* %11, i32 0, i32 1
  %12 = load i32, i32* %range, align 4
  call void @gimp_int_radio_group_set_active(%struct._GtkRadioButton* %10, i32 %12)
  br label %if.end.42

if.else:                                          ; preds = %if.end
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name7 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %13, i32 0, i32 1
  %14 = load i8*, i8** %name7, align 8
  %call8 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0)) #8
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.else.13, label %if.then.10

if.then.10:                                       ; preds = %if.else
  %15 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool.addr, align 8
  %cyan_red_adj11 = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %15, i32 0, i32 4
  %16 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %cyan_red_adj11, align 8
  %17 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config, align 8
  %range12 = getelementptr inbounds %struct._GimpColorBalanceConfig, %struct._GimpColorBalanceConfig* %17, i32 0, i32 1
  %18 = load i32, i32* %range12, align 4
  %idxprom = zext i32 %18 to i64
  %19 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config, align 8
  %cyan_red = getelementptr inbounds %struct._GimpColorBalanceConfig, %struct._GimpColorBalanceConfig* %19, i32 0, i32 2
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %cyan_red, i32 0, i64 %idxprom
  %20 = load double, double* %arrayidx, align 8
  %mul = fmul double %20, 1.000000e+02
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %16, double %mul)
  br label %if.end.41

if.else.13:                                       ; preds = %if.else
  %21 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name14 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %21, i32 0, i32 1
  %22 = load i8*, i8** %name14, align 8
  %call15 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0)) #8
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.else.22, label %if.then.17

if.then.17:                                       ; preds = %if.else.13
  %23 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool.addr, align 8
  %magenta_green_adj = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %23, i32 0, i32 5
  %24 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %magenta_green_adj, align 8
  %25 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config, align 8
  %range18 = getelementptr inbounds %struct._GimpColorBalanceConfig, %struct._GimpColorBalanceConfig* %25, i32 0, i32 1
  %26 = load i32, i32* %range18, align 4
  %idxprom19 = zext i32 %26 to i64
  %27 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config, align 8
  %magenta_green = getelementptr inbounds %struct._GimpColorBalanceConfig, %struct._GimpColorBalanceConfig* %27, i32 0, i32 3
  %arrayidx20 = getelementptr inbounds [3 x double], [3 x double]* %magenta_green, i32 0, i64 %idxprom19
  %28 = load double, double* %arrayidx20, align 8
  %mul21 = fmul double %28, 1.000000e+02
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %24, double %mul21)
  br label %if.end.40

if.else.22:                                       ; preds = %if.else.13
  %29 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name23 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %29, i32 0, i32 1
  %30 = load i8*, i8** %name23, align 8
  %call24 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0)) #8
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.else.31, label %if.then.26

if.then.26:                                       ; preds = %if.else.22
  %31 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool.addr, align 8
  %yellow_blue_adj = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %31, i32 0, i32 6
  %32 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %yellow_blue_adj, align 8
  %33 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config, align 8
  %range27 = getelementptr inbounds %struct._GimpColorBalanceConfig, %struct._GimpColorBalanceConfig* %33, i32 0, i32 1
  %34 = load i32, i32* %range27, align 4
  %idxprom28 = zext i32 %34 to i64
  %35 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config, align 8
  %yellow_blue = getelementptr inbounds %struct._GimpColorBalanceConfig, %struct._GimpColorBalanceConfig* %35, i32 0, i32 4
  %arrayidx29 = getelementptr inbounds [3 x double], [3 x double]* %yellow_blue, i32 0, i64 %idxprom28
  %36 = load double, double* %arrayidx29, align 8
  %mul30 = fmul double %36, 1.000000e+02
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %32, double %mul30)
  br label %if.end.39

if.else.31:                                       ; preds = %if.else.22
  %37 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name32 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %37, i32 0, i32 1
  %38 = load i8*, i8** %name32, align 8
  %call33 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0)) #8
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end.38, label %if.then.35

if.then.35:                                       ; preds = %if.else.31
  %39 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool.addr, align 8
  %preserve_toggle = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %39, i32 0, i32 7
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %preserve_toggle, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_toggle_button_get_type() #6
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call36)
  %42 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkToggleButton*
  %43 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config, align 8
  %preserve_luminosity = getelementptr inbounds %struct._GimpColorBalanceConfig, %struct._GimpColorBalanceConfig* %43, i32 0, i32 5
  %44 = load i32, i32* %preserve_luminosity, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %42, i32 %44)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %if.else.31
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.26
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.17
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.10
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.4
  %45 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool.addr, align 8
  %46 = bitcast %struct._GimpColorBalanceTool* %45 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_image_map_tool_get_type() #6
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call43)
  %47 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpImageMapTool*
  call void @gimp_image_map_tool_preview(%struct._GimpImageMapTool* %47)
  br label %return

return:                                           ; preds = %if.end.42, %if.then
  ret void
}

declare void @gegl_node_set(%struct._GeglNode*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare void @gimp_int_radio_group_set_active(%struct._GtkRadioButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_button_get_type() #2

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #2

declare void @gimp_image_map_tool_preview(%struct._GimpImageMapTool*) #1

declare void @gimp_color_balance_config_to_cruft(%struct._GimpColorBalanceConfig*, %struct._ColorBalance*) #1

declare %struct._GtkWidget* @gimp_image_map_tool_dialog_get_vbox(%struct._GimpImageMapTool*) #1

declare %struct._GtkWidget* @gimp_enum_radio_frame_new(i64, %struct._GtkWidget*, void ()*, i8*, %struct._GtkWidget**) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_transfer_mode_get_type() #2

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @color_balance_range_callback(%struct._GtkWidget* %widget, %struct._GimpColorBalanceTool* %cb_tool) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %cb_tool.addr = alloca %struct._GimpColorBalanceTool*, align 8
  %range = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpColorBalanceTool* %cb_tool, %struct._GimpColorBalanceTool** %cb_tool.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast i32* %range to i8*
  call void @gimp_radio_button_update(%struct._GtkWidget* %3, i8* %4)
  %5 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool.addr, align 8
  %config = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %5, i32 0, i32 1
  %6 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config, align 8
  %7 = bitcast %struct._GimpColorBalanceConfig* %6 to i8*
  %8 = load i32, i32* %range, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %8, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkAdjustment* @create_levels_scale(double %value, i8* %left, i8* %right, %struct._GtkWidget* %table, i32 %col) #3 {
entry:
  %value.addr = alloca double, align 8
  %left.addr = alloca i8*, align 8
  %right.addr = alloca i8*, align 8
  %table.addr = alloca %struct._GtkWidget*, align 8
  %col.addr = alloca i32, align 4
  %label = alloca %struct._GtkWidget*, align 8
  %slider = alloca %struct._GtkWidget*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkAdjustment*, align 8
  store double %value, double* %value.addr, align 8
  store i8* %left, i8** %left.addr, align 8
  store i8* %right, i8** %right.addr, align 8
  store %struct._GtkWidget* %table, %struct._GtkWidget** %table.addr, align 8
  store i32 %col, i32* %col.addr, align 4
  %0 = load i8*, i8** %left.addr, align 8
  %call = call %struct._GtkWidget* @gtk_label_new(i8* %0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %label, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_misc_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %3, float 1.000000e+00, float 5.000000e-01)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %table.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_table_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkTable*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %8 = load i32, i32* %col.addr, align 4
  %9 = load i32, i32* %col.addr, align 4
  %add = add nsw i32 %9, 1
  call void @gtk_table_attach(%struct._GtkTable* %6, %struct._GtkWidget* %7, i32 0, i32 1, i32 %8, i32 %add, i32 6, i32 6, i32 0, i32 0)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %10)
  %11 = bitcast %struct._GtkAdjustment** %adj to %struct._GtkObject**
  %12 = load double, double* %value.addr, align 8
  %call5 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %11, double %12, double -1.000000e+02, double 1.000000e+02, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %spinbutton, align 8
  %13 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call6 = call %struct._GtkWidget* @gtk_scale_new(i32 0, %struct._GtkAdjustment* %13)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %slider, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %slider, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_scale_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call7)
  %16 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkScale*
  call void @gtk_scale_set_draw_value(%struct._GtkScale* %16, i32 0)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %slider, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %17, i32 100, i32 -1)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %table.addr, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_table_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call9)
  %20 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkTable*
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %slider, align 8
  %22 = load i32, i32* %col.addr, align 4
  %23 = load i32, i32* %col.addr, align 4
  %add11 = add nsw i32 %23, 1
  call void @gtk_table_attach_defaults(%struct._GtkTable* %20, %struct._GtkWidget* %21, i32 1, i32 2, i32 %22, i32 %add11)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %slider, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %24)
  %25 = load i8*, i8** %right.addr, align 8
  %call12 = call %struct._GtkWidget* @gtk_label_new(i8* %25)
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %label, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_misc_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call13)
  %28 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %28, float 0.000000e+00, float 5.000000e-01)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %table.addr, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_table_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call15)
  %31 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkTable*
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %33 = load i32, i32* %col.addr, align 4
  %34 = load i32, i32* %col.addr, align 4
  %add17 = add nsw i32 %34, 1
  call void @gtk_table_attach(%struct._GtkTable* %31, %struct._GtkWidget* %32, i32 2, i32 3, i32 %33, i32 %add17, i32 6, i32 6, i32 0, i32 0)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %35)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %table.addr, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_table_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call18)
  %38 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkTable*
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %40 = load i32, i32* %col.addr, align 4
  %41 = load i32, i32* %col.addr, align 4
  %add20 = add nsw i32 %41, 1
  call void @gtk_table_attach(%struct._GtkTable* %38, %struct._GtkWidget* %39, i32 3, i32 4, i32 %40, i32 %add20, i32 6, i32 6, i32 0, i32 0)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %42)
  %43 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  ret %struct._GtkAdjustment* %43
}

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @color_balance_cr_changed(%struct._GtkAdjustment* %adjustment, %struct._GimpColorBalanceTool* %cb_tool) #3 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %cb_tool.addr = alloca %struct._GimpColorBalanceTool*, align 8
  %value = alloca double, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store %struct._GimpColorBalanceTool* %cb_tool, %struct._GimpColorBalanceTool** %cb_tool.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %0)
  %div = fdiv double %call, 1.000000e+02
  store double %div, double* %value, align 8
  %1 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool.addr, align 8
  %config = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %1, i32 0, i32 1
  %2 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config, align 8
  %range = getelementptr inbounds %struct._GimpColorBalanceConfig, %struct._GimpColorBalanceConfig* %2, i32 0, i32 1
  %3 = load i32, i32* %range, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool.addr, align 8
  %config1 = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %4, i32 0, i32 1
  %5 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config1, align 8
  %cyan_red = getelementptr inbounds %struct._GimpColorBalanceConfig, %struct._GimpColorBalanceConfig* %5, i32 0, i32 2
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %cyan_red, i32 0, i64 %idxprom
  %6 = load double, double* %arrayidx, align 8
  %7 = load double, double* %value, align 8
  %cmp = fcmp une double %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool.addr, align 8
  %config2 = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %8, i32 0, i32 1
  %9 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config2, align 8
  %10 = bitcast %struct._GimpColorBalanceConfig* %9 to i8*
  %11 = load double, double* %value, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), double %11, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @color_balance_mg_changed(%struct._GtkAdjustment* %adjustment, %struct._GimpColorBalanceTool* %cb_tool) #3 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %cb_tool.addr = alloca %struct._GimpColorBalanceTool*, align 8
  %value = alloca double, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store %struct._GimpColorBalanceTool* %cb_tool, %struct._GimpColorBalanceTool** %cb_tool.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %0)
  %div = fdiv double %call, 1.000000e+02
  store double %div, double* %value, align 8
  %1 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool.addr, align 8
  %config = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %1, i32 0, i32 1
  %2 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config, align 8
  %range = getelementptr inbounds %struct._GimpColorBalanceConfig, %struct._GimpColorBalanceConfig* %2, i32 0, i32 1
  %3 = load i32, i32* %range, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool.addr, align 8
  %config1 = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %4, i32 0, i32 1
  %5 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config1, align 8
  %magenta_green = getelementptr inbounds %struct._GimpColorBalanceConfig, %struct._GimpColorBalanceConfig* %5, i32 0, i32 3
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %magenta_green, i32 0, i64 %idxprom
  %6 = load double, double* %arrayidx, align 8
  %7 = load double, double* %value, align 8
  %cmp = fcmp une double %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool.addr, align 8
  %config2 = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %8, i32 0, i32 1
  %9 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config2, align 8
  %10 = bitcast %struct._GimpColorBalanceConfig* %9 to i8*
  %11 = load double, double* %value, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), double %11, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @color_balance_yb_changed(%struct._GtkAdjustment* %adjustment, %struct._GimpColorBalanceTool* %cb_tool) #3 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %cb_tool.addr = alloca %struct._GimpColorBalanceTool*, align 8
  %value = alloca double, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store %struct._GimpColorBalanceTool* %cb_tool, %struct._GimpColorBalanceTool** %cb_tool.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %0)
  %div = fdiv double %call, 1.000000e+02
  store double %div, double* %value, align 8
  %1 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool.addr, align 8
  %config = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %1, i32 0, i32 1
  %2 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config, align 8
  %range = getelementptr inbounds %struct._GimpColorBalanceConfig, %struct._GimpColorBalanceConfig* %2, i32 0, i32 1
  %3 = load i32, i32* %range, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool.addr, align 8
  %config1 = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %4, i32 0, i32 1
  %5 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config1, align 8
  %yellow_blue = getelementptr inbounds %struct._GimpColorBalanceConfig, %struct._GimpColorBalanceConfig* %5, i32 0, i32 4
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %yellow_blue, i32 0, i64 %idxprom
  %6 = load double, double* %arrayidx, align 8
  %7 = load double, double* %value, align 8
  %cmp = fcmp une double %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool.addr, align 8
  %config2 = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %8, i32 0, i32 1
  %9 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config2, align 8
  %10 = bitcast %struct._GimpColorBalanceConfig* %9 to i8*
  %11 = load double, double* %value, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), double %11, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8*) #1

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @color_balance_range_reset_callback(%struct._GtkWidget* %widget, %struct._GimpColorBalanceTool* %cb_tool) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %cb_tool.addr = alloca %struct._GimpColorBalanceTool*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpColorBalanceTool* %cb_tool, %struct._GimpColorBalanceTool** %cb_tool.addr, align 8
  %0 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool.addr, align 8
  %config = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %0, i32 0, i32 1
  %1 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config, align 8
  call void @gimp_color_balance_config_reset_range(%struct._GimpColorBalanceConfig* %1)
  ret void
}

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @color_balance_preserve_toggled(%struct._GtkWidget* %widget, %struct._GimpColorBalanceTool* %cb_tool) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %cb_tool.addr = alloca %struct._GimpColorBalanceTool*, align 8
  %active = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpColorBalanceTool* %cb_tool, %struct._GimpColorBalanceTool** %cb_tool.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %2)
  store i32 %call2, i32* %active, align 4
  %3 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool.addr, align 8
  %config = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %3, i32 0, i32 1
  %4 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config, align 8
  %preserve_luminosity = getelementptr inbounds %struct._GimpColorBalanceConfig, %struct._GimpColorBalanceConfig* %4, i32 0, i32 5
  %5 = load i32, i32* %preserve_luminosity, align 4
  %6 = load i32, i32* %active, align 4
  %cmp = icmp ne i32 %5, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpColorBalanceTool*, %struct._GimpColorBalanceTool** %cb_tool.addr, align 8
  %config3 = getelementptr inbounds %struct._GimpColorBalanceTool, %struct._GimpColorBalanceTool* %7, i32 0, i32 1
  %8 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config3, align 8
  %9 = bitcast %struct._GimpColorBalanceConfig* %8 to i8*
  %10 = load i32, i32* %active, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i32 %10, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #2

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #1

declare %struct._GtkWidget* @gtk_scale_new(i32, %struct._GtkAdjustment*) #1

declare void @gtk_scale_set_draw_value(%struct._GtkScale*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scale_get_type() #2

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_table_attach_defaults(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32) #1

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare void @gimp_color_balance_config_reset_range(%struct._GimpColorBalanceConfig*) #1

declare void @g_object_freeze_notify(%struct._GObject*) #1

declare i32 @gimp_config_copy(%struct._GimpConfig*, %struct._GimpConfig*, i32) #1

declare void @g_object_thaw_notify(%struct._GObject*) #1

declare noalias i8* @g_slice_alloc0(i64) #1

declare void @color_balance_init(%struct._ColorBalance*) #1

declare void @color_balance(%struct._ColorBalance*, %struct._PixelRegion*, %struct._PixelRegion*) #1

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
