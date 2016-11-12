; ModuleID = './app/tools/gimphuesaturationtool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpRGB = type { double, double, double, double }
%struct.anon = type { i8*, i8*, i32, i32, i32, i32 }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpHueSaturationToolClass = type { %struct._GimpImageMapToolClass }
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
%struct._GimpHueSaturationTool = type { %struct._GimpImageMapTool, %struct._GimpHueSaturationConfig*, %struct._HueSaturation*, %struct._GtkWidget*, [6 x %struct._GtkWidget*], %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkAdjustment* }
%struct._GimpHueSaturationConfig = type { %struct._GimpImageMapConfig, i32, [7 x double], [7 x double], [7 x double], double }
%struct._GimpImageMapConfig = type { %struct._GimpViewable, i32 }
%struct._HueSaturation = type { [7 x double], [7 x double], [7 x double], double, [6 x [256 x i32]], [6 x [256 x i32]], [6 x [256 x i32]] }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GimpConfig = type opaque
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkRadioButton = type { %struct._GtkCheckButton, %struct._GSList* }
%struct._GtkCheckButton = type { %struct._GtkToggleButton }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpColorArea = type { %struct._GtkDrawingArea, i8*, i32, i32, i32, i32, %struct._GimpRGB, i8 }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }

@gimp_hue_saturation_tool_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"GimpHueSaturationTool\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"gimp-hue-saturation-tool\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Hue-Saturation\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"Hue-Saturation Tool: Adjust hue, saturation, and lightness\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Hue-_Saturation...\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"gimp-tool-hue-saturation\00", align 1
@gimp_hue_saturation_tool_parent_class = internal global i8* null, align 8
@GimpHueSaturationTool_private_offset = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"Adjust Hue / Lightness / Saturation\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"hue-saturation\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Import Hue-Saturation Settings\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Export Hue-Saturation Settings\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"Hue-Saturation operates only on RGB color layers.\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"gimp:hue-saturation\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"notify\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"hue\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"lightness\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"saturation\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"overlap\00", align 1
@hue_saturation_update_color_areas.default_colors = internal global [6 x %struct._GimpRGB] [%struct._GimpRGB { double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00 }, %struct._GimpRGB { double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00 }, %struct._GimpRGB { double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00 }, %struct._GimpRGB { double 0.000000e+00, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00 }, %struct._GimpRGB { double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00 }, %struct._GimpRGB { double 1.000000e+00, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00 }], align 16
@gimp_hue_saturation_tool_dialog.hue_range_table = internal constant [7 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), i32 2, i32 3, i32 0, i32 0 }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i32 2, i32 1, i32 2, i32 0 }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 1, i32 2, i32 0, i32 2 }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 1, i32 4, i32 0, i32 4 }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i32 2, i32 5, i32 2, i32 6 }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 3, i32 4, i32 4, i32 4 }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i32 3, i32 2, i32 4, i32 2 }], align 16
@.str.20 = private unnamed_addr constant [8 x i8] c"M_aster\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"Adjust all colors\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"_R\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"Red\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"_Y\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"Yellow\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"_G\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"Green\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"_C\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"Cyan\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"_B\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"Blue\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"_M\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"Magenta\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"Select Primary Color to Adjust\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"gimp-item-data\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"_Overlap:\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"spinbutton\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"Adjust Selected Color\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"_Hue:\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"_Lightness:\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"_Saturation:\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"R_eset Color\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_hue_saturation_tool_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_hue_saturation_tool_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_hue_saturation_tool_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_image_map_tool_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 392, void (i8*, i8*)* bitcast (void (i8*)* @gimp_hue_saturation_tool_class_intern_init to void (i8*, i8*)*), i32 496, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpHueSaturationTool*)* @gimp_hue_saturation_tool_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_hue_saturation_tool_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_hue_saturation_tool_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_map_tool_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_hue_saturation_tool_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_hue_saturation_tool_parent_class, align 8
  %1 = load i32, i32* @GimpHueSaturationTool_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpHueSaturationTool_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpHueSaturationToolClass*
  call void @gimp_hue_saturation_tool_class_init(%struct._GimpHueSaturationToolClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_hue_saturation_tool_init(%struct._GimpHueSaturationTool* %hs_tool) #3 {
entry:
  %hs_tool.addr = alloca %struct._GimpHueSaturationTool*, align 8
  %im_tool = alloca %struct._GimpImageMapTool*, align 8
  store %struct._GimpHueSaturationTool* %hs_tool, %struct._GimpHueSaturationTool** %hs_tool.addr, align 8
  %0 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool.addr, align 8
  %1 = bitcast %struct._GimpHueSaturationTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_map_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageMapTool*
  store %struct._GimpImageMapTool* %2, %struct._GimpImageMapTool** %im_tool, align 8
  %call2 = call noalias i8* @g_slice_alloc0(i64 18608)
  %3 = bitcast i8* %call2 to %struct._HueSaturation*
  %4 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool.addr, align 8
  %hue_saturation = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %4, i32 0, i32 2
  store %struct._HueSaturation* %3, %struct._HueSaturation** %hue_saturation, align 8
  %5 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool.addr, align 8
  %hue_saturation3 = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %5, i32 0, i32 2
  %6 = load %struct._HueSaturation*, %struct._HueSaturation** %hue_saturation3, align 8
  call void @hue_saturation_init(%struct._HueSaturation* %6)
  %7 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %im_tool, align 8
  %apply_func = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %7, i32 0, i32 5
  store void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)* bitcast (void (%struct._HueSaturation*, %struct._PixelRegion*, %struct._PixelRegion*)* @hue_saturation to void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)*), void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)** %apply_func, align 8
  %8 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool.addr, align 8
  %hue_saturation4 = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %8, i32 0, i32 2
  %9 = load %struct._HueSaturation*, %struct._HueSaturation** %hue_saturation4, align 8
  %10 = bitcast %struct._HueSaturation* %9 to i8*
  %11 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %im_tool, align 8
  %apply_data = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %11, i32 0, i32 6
  store i8* %10, i8** %apply_data, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_hue_saturation_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, i8* %data) #3 {
entry:
  %callback.addr = alloca void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  %call = call i64 @gimp_hue_saturation_tool_get_type() #7
  %call1 = call i64 @gimp_image_map_options_get_type() #7
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)) #6
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i32 0, i32 0)) #6
  %1 = load i8*, i8** %data.addr, align 8
  call void %0(i64 %call, i64 %call1, %struct._GtkWidget* (%struct._GimpToolOptions*)* null, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i8* %call2, i8* %call3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i8* %1)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_map_options_get_type() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_hue_saturation_tool_class_init(%struct._GimpHueSaturationToolClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpHueSaturationToolClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %tool_class = alloca %struct._GimpToolClass*, align 8
  %im_tool_class = alloca %struct._GimpImageMapToolClass*, align 8
  store %struct._GimpHueSaturationToolClass* %klass, %struct._GimpHueSaturationToolClass** %klass.addr, align 8
  %0 = load %struct._GimpHueSaturationToolClass*, %struct._GimpHueSaturationToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpHueSaturationToolClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpHueSaturationToolClass*, %struct._GimpHueSaturationToolClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpHueSaturationToolClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_tool_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpToolClass*
  store %struct._GimpToolClass* %5, %struct._GimpToolClass** %tool_class, align 8
  %6 = load %struct._GimpHueSaturationToolClass*, %struct._GimpHueSaturationToolClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpHueSaturationToolClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_image_map_tool_get_type() #7
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpImageMapToolClass*
  store %struct._GimpImageMapToolClass* %8, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_hue_saturation_tool_finalize, void (%struct._GObject*)** %finalize, align 8
  %10 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %initialize = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %10, i32 0, i32 3
  store i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)* @gimp_hue_saturation_tool_initialize, i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)** %initialize, align 8
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0)) #6
  %11 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %dialog_desc = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %11, i32 0, i32 1
  store i8* %call5, i8** %dialog_desc, align 8
  %12 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %settings_name = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %12, i32 0, i32 2
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8** %settings_name, align 8
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0)) #6
  %13 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %import_dialog_title = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %13, i32 0, i32 3
  store i8* %call6, i8** %import_dialog_title, align 8
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i32 0, i32 0)) #6
  %14 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %export_dialog_title = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %14, i32 0, i32 4
  store i8* %call7, i8** %export_dialog_title, align 8
  %15 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %get_operation = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %15, i32 0, i32 6
  store %struct._GeglNode* (%struct._GimpImageMapTool*, %struct._GObject**)* @gimp_hue_saturation_tool_get_operation, %struct._GeglNode* (%struct._GimpImageMapTool*, %struct._GObject**)** %get_operation, align 8
  %16 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %map = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %16, i32 0, i32 7
  store void (%struct._GimpImageMapTool*)* @gimp_hue_saturation_tool_map, void (%struct._GimpImageMapTool*)** %map, align 8
  %17 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %dialog = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %17, i32 0, i32 8
  store void (%struct._GimpImageMapTool*)* @gimp_hue_saturation_tool_dialog, void (%struct._GimpImageMapTool*)** %dialog, align 8
  %18 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %reset = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %18, i32 0, i32 9
  store void (%struct._GimpImageMapTool*)* @gimp_hue_saturation_tool_reset, void (%struct._GimpImageMapTool*)** %reset, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_hue_saturation_tool_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %hs_tool = alloca %struct._GimpHueSaturationTool*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_hue_saturation_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpHueSaturationTool*
  store %struct._GimpHueSaturationTool* %2, %struct._GimpHueSaturationTool** %hs_tool, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool, align 8
  %hue_saturation = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %3, i32 0, i32 2
  %4 = load %struct._HueSaturation*, %struct._HueSaturation** %hue_saturation, align 8
  %5 = bitcast %struct._HueSaturation* %4 to i8*
  call void @g_slice_free1(i64 18608, i8* %5)
  br label %do.end

do.end:                                           ; preds = %do.body
  %6 = load i8*, i8** @gimp_hue_saturation_tool_parent_class, align 8
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
define internal i32 @gimp_hue_saturation_tool_initialize(%struct._GimpTool* %tool, %struct._GimpDisplay* %display, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %tool.addr = alloca %struct._GimpTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %hs_tool = alloca %struct._GimpHueSaturationTool*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_hue_saturation_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpHueSaturationTool*
  store %struct._GimpHueSaturationTool* %2, %struct._GimpHueSaturationTool** %hs_tool, align 8
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
  %call7 = call i32 @gimp_error_quark() #7
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i32 0, i32 0)) #6
  call void @g_set_error_literal(%struct._GError** %7, i32 %call7, i32 0, i8* %call8)
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %8 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool, align 8
  %config = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %8, i32 0, i32 1
  %9 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config, align 8
  %10 = bitcast %struct._GimpHueSaturationConfig* %9 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_config_interface_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call10)
  %11 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpConfig*
  call void @gimp_config_reset(%struct._GimpConfig* %11)
  %12 = load i8*, i8** @gimp_hue_saturation_tool_parent_class, align 8
  %13 = bitcast i8* %12 to %struct._GTypeClass*
  %call12 = call i64 @gimp_tool_get_type() #7
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
define internal %struct._GeglNode* @gimp_hue_saturation_tool_get_operation(%struct._GimpImageMapTool* %im_tool, %struct._GObject** %config) #3 {
entry:
  %im_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %config.addr = alloca %struct._GObject**, align 8
  %hs_tool = alloca %struct._GimpHueSaturationTool*, align 8
  %node = alloca %struct._GeglNode*, align 8
  store %struct._GimpImageMapTool* %im_tool, %struct._GimpImageMapTool** %im_tool.addr, align 8
  store %struct._GObject** %config, %struct._GObject*** %config.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %im_tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_hue_saturation_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpHueSaturationTool*
  store %struct._GimpHueSaturationTool* %2, %struct._GimpHueSaturationTool** %hs_tool, align 8
  %call2 = call i64 @gegl_node_get_type() #7
  %call3 = call i8* (i64, i8*, ...) @g_object_new(i64 %call2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i8* null)
  %3 = bitcast i8* %call3 to %struct._GeglNode*
  store %struct._GeglNode* %3, %struct._GeglNode** %node, align 8
  %call4 = call i64 @gimp_hue_saturation_config_get_type() #7
  %call5 = call i8* (i64, i8*, ...) @g_object_new(i64 %call4, i8* null)
  %4 = bitcast i8* %call5 to %struct._GimpHueSaturationConfig*
  %5 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool, align 8
  %config6 = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %5, i32 0, i32 1
  store %struct._GimpHueSaturationConfig* %4, %struct._GimpHueSaturationConfig** %config6, align 8
  %6 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool, align 8
  %config7 = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %6, i32 0, i32 1
  %7 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config7, align 8
  %8 = bitcast %struct._GimpHueSaturationConfig* %7 to %struct._GTypeInstance*
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 80)
  %9 = bitcast %struct._GTypeInstance* %call8 to %struct._GObject*
  %10 = load %struct._GObject**, %struct._GObject*** %config.addr, align 8
  store %struct._GObject* %9, %struct._GObject** %10, align 8
  %11 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool, align 8
  %config9 = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %11, i32 0, i32 1
  %12 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config9, align 8
  %13 = bitcast %struct._GimpHueSaturationConfig* %12 to i8*
  %14 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool, align 8
  %15 = bitcast %struct._GimpHueSaturationTool* %14 to %struct._GTypeInstance*
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 80)
  %16 = bitcast %struct._GTypeInstance* %call10 to %struct._GObject*
  %17 = bitcast %struct._GObject* %16 to i8*
  %call11 = call i64 @g_signal_connect_object(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpHueSaturationTool*)* @hue_saturation_config_notify to void ()*), i8* %17, i32 0)
  %18 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  %19 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool, align 8
  %config12 = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %19, i32 0, i32 1
  %20 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config12, align 8
  call void (%struct._GeglNode*, i8*, ...) @gegl_node_set(%struct._GeglNode* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), %struct._GimpHueSaturationConfig* %20, i8* null)
  %21 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  ret %struct._GeglNode* %21
}

; Function Attrs: nounwind uwtable
define internal void @gimp_hue_saturation_tool_map(%struct._GimpImageMapTool* %image_map_tool) #3 {
entry:
  %image_map_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %hs_tool = alloca %struct._GimpHueSaturationTool*, align 8
  store %struct._GimpImageMapTool* %image_map_tool, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_hue_saturation_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpHueSaturationTool*
  store %struct._GimpHueSaturationTool* %2, %struct._GimpHueSaturationTool** %hs_tool, align 8
  %3 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool, align 8
  %config = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %3, i32 0, i32 1
  %4 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config, align 8
  %5 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool, align 8
  %hue_saturation = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %5, i32 0, i32 2
  %6 = load %struct._HueSaturation*, %struct._HueSaturation** %hue_saturation, align 8
  call void @gimp_hue_saturation_config_to_cruft(%struct._GimpHueSaturationConfig* %4, %struct._HueSaturation* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_hue_saturation_tool_dialog(%struct._GimpImageMapTool* %image_map_tool) #3 {
entry:
  %image_map_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %hs_tool = alloca %struct._GimpHueSaturationTool*, align 8
  %config = alloca %struct._GimpHueSaturationConfig*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %abox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %data = alloca %struct._GtkObject*, align 8
  %label_group = alloca %struct._GtkSizeGroup*, align 8
  %spinner_group = alloca %struct._GtkSizeGroup*, align 8
  %group = alloca %struct._GSList*, align 8
  %i = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GimpImageMapTool* %image_map_tool, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_hue_saturation_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpHueSaturationTool*
  store %struct._GimpHueSaturationTool* %2, %struct._GimpHueSaturationTool** %hs_tool, align 8
  %3 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool, align 8
  %config2 = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %3, i32 0, i32 1
  %4 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config2, align 8
  store %struct._GimpHueSaturationConfig* %4, %struct._GimpHueSaturationConfig** %config, align 8
  store %struct._GSList* null, %struct._GSList** %group, align 8
  %5 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %call3 = call %struct._GtkWidget* @gimp_image_map_tool_dialog_get_vbox(%struct._GimpImageMapTool* %5)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %main_vbox, align 8
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i32 0, i32 0)) #6
  %call5 = call %struct._GtkWidget* @gimp_frame_new(i8* %call4)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %frame, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_box_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call6)
  %8 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkBox*
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %8, %struct._GtkWidget* %9, i32 1, i32 1, i32 0)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %10)
  %call8 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %vbox, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_container_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call9)
  %13 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkContainer*
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %13, %struct._GtkWidget* %14)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %call11 = call %struct._GtkWidget* @gtk_alignment_new(float 5.000000e-01, float 5.000000e-01, float 0.000000e+00, float 0.000000e+00)
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %abox, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_box_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call12)
  %18 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkBox*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %18, %struct._GtkWidget* %19, i32 1, i32 1, i32 0)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  %call14 = call %struct._GtkWidget* @gtk_table_new(i32 7, i32 5, i32 0)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %table, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_table_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call15)
  %23 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %23, i32 0, i32 4)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_table_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call17)
  %26 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %26, i32 3, i32 4)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_table_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call19)
  %29 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %29, i32 0, i32 2)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_table_get_type() #7
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call21)
  %32 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %32, i32 5, i32 2)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_container_get_type() #7
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call23)
  %35 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkContainer*
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %35, %struct._GtkWidget* %36)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %37 = load i32, i32* %i, align 4
  %conv = sext i32 %37 to i64
  %cmp = icmp ult i64 %conv, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load %struct._GSList*, %struct._GSList** %group, align 8
  %39 = load i32, i32* %i, align 4
  %idxprom = sext i32 %39 to i64
  %arrayidx = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @gimp_hue_saturation_tool_dialog.hue_range_table, i32 0, i64 %idxprom
  %label = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 0
  %40 = load i8*, i8** %label, align 8
  %call26 = call i8* @gettext(i8* %40) #6
  %call27 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList* %38, i8* %call26)
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %button, align 8
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_radio_button_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call28)
  %43 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkRadioButton*
  %call30 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %43)
  store %struct._GSList* %call30, %struct._GSList** %group, align 8
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 80)
  %46 = bitcast %struct._GTypeInstance* %call31 to %struct._GObject*
  %47 = load i32, i32* %i, align 4
  %conv32 = sext i32 %47 to i64
  %48 = inttoptr i64 %conv32 to i8*
  call void @g_object_set_data(%struct._GObject* %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0), i8* %48)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %50 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %50 to i64
  %arrayidx34 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @gimp_hue_saturation_tool_dialog.hue_range_table, i32 0, i64 %idxprom33
  %tooltip = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx34, i32 0, i32 1
  %51 = load i8*, i8** %tooltip, align 8
  %call35 = call i8* @gettext(i8* %51) #6
  call void @gimp_help_set_help_data(%struct._GtkWidget* %49, i8* %call35, i8* null)
  %52 = load i32, i32* %i, align 4
  %cmp36 = icmp eq i32 %52, 0
  br i1 %cmp36, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_toggle_button_get_type() #7
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call38)
  %55 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_mode(%struct._GtkToggleButton* %55, i32 0)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %57 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool, align 8
  %range_radio = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %57, i32 0, i32 3
  store %struct._GtkWidget* %56, %struct._GtkWidget** %range_radio, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_table_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call40)
  %60 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkTable*
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %62 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %62 to i64
  %arrayidx43 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @gimp_hue_saturation_tool_dialog.hue_range_table, i32 0, i64 %idxprom42
  %label_col = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx43, i32 0, i32 2
  %63 = load i32, i32* %label_col, align 4
  %64 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %64 to i64
  %arrayidx45 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @gimp_hue_saturation_tool_dialog.hue_range_table, i32 0, i64 %idxprom44
  %label_col46 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx45, i32 0, i32 2
  %65 = load i32, i32* %label_col46, align 4
  %add = add nsw i32 %65, 1
  %66 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %66 to i64
  %arrayidx48 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @gimp_hue_saturation_tool_dialog.hue_range_table, i32 0, i64 %idxprom47
  %label_row = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx48, i32 0, i32 3
  %67 = load i32, i32* %label_row, align 4
  %68 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %68 to i64
  %arrayidx50 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @gimp_hue_saturation_tool_dialog.hue_range_table, i32 0, i64 %idxprom49
  %label_row51 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx50, i32 0, i32 3
  %69 = load i32, i32* %label_row51, align 4
  %add52 = add nsw i32 %69, 1
  call void @gtk_table_attach(%struct._GtkTable* %60, %struct._GtkWidget* %61, i32 %63, i32 %add, i32 %67, i32 %add52, i32 6, i32 6, i32 0, i32 0)
  %70 = load i32, i32* %i, align 4
  %cmp53 = icmp sgt i32 %70, 0
  br i1 %cmp53, label %if.then.55, label %if.end.90

if.then.55:                                       ; preds = %if.end
  %71 = bitcast %struct._GimpRGB* %color to i8*
  call void @llvm.memset.p0i8.i64(i8* %71, i8 0, i64 32, i32 8, i1 false)
  %call56 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call56, %struct._GtkWidget** %frame, align 8
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_frame_get_type() #7
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call57)
  %74 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %74, i32 1)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %76 = bitcast %struct._GtkWidget* %75 to %struct._GTypeInstance*
  %call59 = call i64 @gtk_table_get_type() #7
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call59)
  %77 = bitcast %struct._GTypeInstance* %call60 to %struct._GtkTable*
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %79 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %79 to i64
  %arrayidx62 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @gimp_hue_saturation_tool_dialog.hue_range_table, i32 0, i64 %idxprom61
  %frame_col = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx62, i32 0, i32 4
  %80 = load i32, i32* %frame_col, align 4
  %81 = load i32, i32* %i, align 4
  %idxprom63 = sext i32 %81 to i64
  %arrayidx64 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @gimp_hue_saturation_tool_dialog.hue_range_table, i32 0, i64 %idxprom63
  %frame_col65 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx64, i32 0, i32 4
  %82 = load i32, i32* %frame_col65, align 4
  %add66 = add nsw i32 %82, 1
  %83 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %83 to i64
  %arrayidx68 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @gimp_hue_saturation_tool_dialog.hue_range_table, i32 0, i64 %idxprom67
  %frame_row = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx68, i32 0, i32 5
  %84 = load i32, i32* %frame_row, align 4
  %85 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %85 to i64
  %arrayidx70 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @gimp_hue_saturation_tool_dialog.hue_range_table, i32 0, i64 %idxprom69
  %frame_row71 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx70, i32 0, i32 5
  %86 = load i32, i32* %frame_row71, align 4
  %add72 = add nsw i32 %86, 1
  call void @gtk_table_attach(%struct._GtkTable* %77, %struct._GtkWidget* %78, i32 %80, i32 %add66, i32 %84, i32 %add72, i32 6, i32 6, i32 0, i32 0)
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %87)
  %call73 = call %struct._GtkWidget* @gimp_color_area_new(%struct._GimpRGB* %color, i32 0, i32 0)
  %88 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %88, 1
  %idxprom74 = sext i32 %sub to i64
  %89 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool, align 8
  %hue_range_color_area = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %89, i32 0, i32 4
  %arrayidx75 = getelementptr inbounds [6 x %struct._GtkWidget*], [6 x %struct._GtkWidget*]* %hue_range_color_area, i32 0, i64 %idxprom74
  store %struct._GtkWidget* %call73, %struct._GtkWidget** %arrayidx75, align 8
  %90 = load i32, i32* %i, align 4
  %sub76 = sub nsw i32 %90, 1
  %idxprom77 = sext i32 %sub76 to i64
  %91 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool, align 8
  %hue_range_color_area78 = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %91, i32 0, i32 4
  %arrayidx79 = getelementptr inbounds [6 x %struct._GtkWidget*], [6 x %struct._GtkWidget*]* %hue_range_color_area78, i32 0, i64 %idxprom77
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx79, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %92, i32 40, i32 20)
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %94 = bitcast %struct._GtkWidget* %93 to %struct._GTypeInstance*
  %call80 = call i64 @gtk_container_get_type() #7
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 %call80)
  %95 = bitcast %struct._GTypeInstance* %call81 to %struct._GtkContainer*
  %96 = load i32, i32* %i, align 4
  %sub82 = sub nsw i32 %96, 1
  %idxprom83 = sext i32 %sub82 to i64
  %97 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool, align 8
  %hue_range_color_area84 = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %97, i32 0, i32 4
  %arrayidx85 = getelementptr inbounds [6 x %struct._GtkWidget*], [6 x %struct._GtkWidget*]* %hue_range_color_area84, i32 0, i64 %idxprom83
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx85, align 8
  call void @gtk_container_add(%struct._GtkContainer* %95, %struct._GtkWidget* %98)
  %99 = load i32, i32* %i, align 4
  %sub86 = sub nsw i32 %99, 1
  %idxprom87 = sext i32 %sub86 to i64
  %100 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool, align 8
  %hue_range_color_area88 = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %100, i32 0, i32 4
  %arrayidx89 = getelementptr inbounds [6 x %struct._GtkWidget*], [6 x %struct._GtkWidget*]* %hue_range_color_area88, i32 0, i64 %idxprom87
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx89, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %101)
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.55, %if.end
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %103 = bitcast %struct._GtkWidget* %102 to i8*
  %104 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool, align 8
  %105 = bitcast %struct._GimpHueSaturationTool* %104 to i8*
  %call91 = call i64 @g_signal_connect_data(i8* %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpHueSaturationTool*)* @hue_saturation_range_callback to void ()*), i8* %105, void (i8*, %struct._GClosure*)* null, i32 0)
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %106)
  br label %for.inc

for.inc:                                          ; preds = %if.end.90
  %107 = load i32, i32* %i, align 4
  %inc = add nsw i32 %107, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %108)
  %call92 = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 1)
  store %struct._GtkSizeGroup* %call92, %struct._GtkSizeGroup** %label_group, align 8
  %call93 = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 1)
  store %struct._GtkSizeGroup* %call93, %struct._GtkSizeGroup** %spinner_group, align 8
  %call94 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 1, i32 0)
  store %struct._GtkWidget* %call94, %struct._GtkWidget** %table, align 8
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %110 = bitcast %struct._GtkWidget* %109 to %struct._GTypeInstance*
  %call95 = call i64 @gtk_table_get_type() #7
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %110, i64 %call95)
  %111 = bitcast %struct._GTypeInstance* %call96 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %111, i32 4)
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %113 = bitcast %struct._GtkWidget* %112 to %struct._GTypeInstance*
  %call97 = call i64 @gtk_table_get_type() #7
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %113, i64 %call97)
  %114 = bitcast %struct._GTypeInstance* %call98 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %114, i32 2)
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %116 = bitcast %struct._GtkWidget* %115 to %struct._GTypeInstance*
  %call99 = call i64 @gtk_box_get_type() #7
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %116, i64 %call99)
  %117 = bitcast %struct._GTypeInstance* %call100 to %struct._GtkBox*
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %117, %struct._GtkWidget* %118, i32 0, i32 0, i32 0)
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %119)
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %121 = bitcast %struct._GtkWidget* %120 to %struct._GTypeInstance*
  %call101 = call i64 @gtk_table_get_type() #7
  %call102 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 %call101)
  %122 = bitcast %struct._GTypeInstance* %call102 to %struct._GtkTable*
  %call103 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0)) #6
  %123 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config, align 8
  %overlap = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %123, i32 0, i32 5
  %124 = load double, double* %overlap, align 8
  %mul = fmul double %124, 1.000000e+02
  %call104 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %122, i32 0, i32 0, i8* %call103, i32 200, i32 -1, double %mul, double 0.000000e+00, double 1.000000e+02, double 1.000000e+00, double 1.500000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call104, %struct._GtkObject** %data, align 8
  %125 = load %struct._GtkObject*, %struct._GtkObject** %data, align 8
  %126 = bitcast %struct._GtkObject* %125 to %struct._GTypeInstance*
  %call105 = call i64 @gtk_adjustment_get_type() #7
  %call106 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %126, i64 %call105)
  %127 = bitcast %struct._GTypeInstance* %call106 to %struct._GtkAdjustment*
  %128 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool, align 8
  %overlap_data = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %128, i32 0, i32 5
  store %struct._GtkAdjustment* %127, %struct._GtkAdjustment** %overlap_data, align 8
  %129 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %label_group, align 8
  %130 = load %struct._GtkObject*, %struct._GtkObject** %data, align 8
  %131 = bitcast %struct._GtkObject* %130 to %struct._GTypeInstance*
  %call107 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %131, i64 80)
  %132 = bitcast %struct._GTypeInstance* %call107 to %struct._GObject*
  %call108 = call i8* @g_object_get_data(%struct._GObject* %132, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0))
  %133 = bitcast i8* %call108 to %struct._GtkWidget*
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %129, %struct._GtkWidget* %133)
  %134 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %spinner_group, align 8
  %135 = load %struct._GtkObject*, %struct._GtkObject** %data, align 8
  %136 = bitcast %struct._GtkObject* %135 to %struct._GTypeInstance*
  %call109 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %136, i64 80)
  %137 = bitcast %struct._GTypeInstance* %call109 to %struct._GObject*
  %call110 = call i8* @g_object_get_data(%struct._GObject* %137, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0))
  %138 = bitcast i8* %call110 to %struct._GtkWidget*
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %134, %struct._GtkWidget* %138)
  %139 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %label_group, align 8
  %140 = bitcast %struct._GtkSizeGroup* %139 to i8*
  call void @g_object_unref(i8* %140)
  %141 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %spinner_group, align 8
  %142 = bitcast %struct._GtkSizeGroup* %141 to i8*
  call void @g_object_unref(i8* %142)
  %143 = load %struct._GtkObject*, %struct._GtkObject** %data, align 8
  %144 = bitcast %struct._GtkObject* %143 to i8*
  %145 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool, align 8
  %146 = bitcast %struct._GimpHueSaturationTool* %145 to i8*
  %call111 = call i64 @g_signal_connect_data(i8* %144, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpHueSaturationTool*)* @hue_saturation_overlap_changed to void ()*), i8* %146, void (i8*, %struct._GClosure*)* null, i32 0)
  %call112 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i32 0, i32 0)) #6
  %call113 = call %struct._GtkWidget* @gimp_frame_new(i8* %call112)
  store %struct._GtkWidget* %call113, %struct._GtkWidget** %frame, align 8
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %148 = bitcast %struct._GtkWidget* %147 to %struct._GTypeInstance*
  %call114 = call i64 @gtk_box_get_type() #7
  %call115 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %148, i64 %call114)
  %149 = bitcast %struct._GTypeInstance* %call115 to %struct._GtkBox*
  %150 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %149, %struct._GtkWidget* %150, i32 0, i32 0, i32 0)
  %151 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %151)
  %call116 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 4)
  store %struct._GtkWidget* %call116, %struct._GtkWidget** %vbox, align 8
  %152 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %153 = bitcast %struct._GtkWidget* %152 to %struct._GTypeInstance*
  %call117 = call i64 @gtk_container_get_type() #7
  %call118 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %153, i64 %call117)
  %154 = bitcast %struct._GTypeInstance* %call118 to %struct._GtkContainer*
  %155 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %154, %struct._GtkWidget* %155)
  %156 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %156)
  %call119 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call119, %struct._GtkWidget** %table, align 8
  %157 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %158 = bitcast %struct._GtkWidget* %157 to %struct._GTypeInstance*
  %call120 = call i64 @gtk_table_get_type() #7
  %call121 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %158, i64 %call120)
  %159 = bitcast %struct._GTypeInstance* %call121 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %159, i32 4)
  %160 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %161 = bitcast %struct._GtkWidget* %160 to %struct._GTypeInstance*
  %call122 = call i64 @gtk_table_get_type() #7
  %call123 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %161, i64 %call122)
  %162 = bitcast %struct._GTypeInstance* %call123 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %162, i32 2)
  %163 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %164 = bitcast %struct._GtkWidget* %163 to %struct._GTypeInstance*
  %call124 = call i64 @gtk_box_get_type() #7
  %call125 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %164, i64 %call124)
  %165 = bitcast %struct._GTypeInstance* %call125 to %struct._GtkBox*
  %166 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %165, %struct._GtkWidget* %166, i32 0, i32 0, i32 0)
  %167 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %167)
  %168 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %169 = bitcast %struct._GtkWidget* %168 to %struct._GTypeInstance*
  %call126 = call i64 @gtk_table_get_type() #7
  %call127 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %169, i64 %call126)
  %170 = bitcast %struct._GTypeInstance* %call127 to %struct._GtkTable*
  %call128 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0)) #6
  %171 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config, align 8
  %range = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %171, i32 0, i32 1
  %172 = load i32, i32* %range, align 4
  %idxprom129 = zext i32 %172 to i64
  %173 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config, align 8
  %hue = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %173, i32 0, i32 2
  %arrayidx130 = getelementptr inbounds [7 x double], [7 x double]* %hue, i32 0, i64 %idxprom129
  %174 = load double, double* %arrayidx130, align 8
  %mul131 = fmul double %174, 1.800000e+02
  %call132 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %170, i32 0, i32 0, i8* %call128, i32 200, i32 -1, double %mul131, double -1.800000e+02, double 1.800000e+02, double 1.000000e+00, double 1.500000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call132, %struct._GtkObject** %data, align 8
  %175 = load %struct._GtkObject*, %struct._GtkObject** %data, align 8
  %176 = bitcast %struct._GtkObject* %175 to %struct._GTypeInstance*
  %call133 = call i64 @gtk_adjustment_get_type() #7
  %call134 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %176, i64 %call133)
  %177 = bitcast %struct._GTypeInstance* %call134 to %struct._GtkAdjustment*
  %178 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool, align 8
  %hue_data = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %178, i32 0, i32 6
  store %struct._GtkAdjustment* %177, %struct._GtkAdjustment** %hue_data, align 8
  %179 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %label_group, align 8
  %180 = load %struct._GtkObject*, %struct._GtkObject** %data, align 8
  %181 = bitcast %struct._GtkObject* %180 to %struct._GTypeInstance*
  %call135 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %181, i64 80)
  %182 = bitcast %struct._GTypeInstance* %call135 to %struct._GObject*
  %call136 = call i8* @g_object_get_data(%struct._GObject* %182, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0))
  %183 = bitcast i8* %call136 to %struct._GtkWidget*
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %179, %struct._GtkWidget* %183)
  %184 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %spinner_group, align 8
  %185 = load %struct._GtkObject*, %struct._GtkObject** %data, align 8
  %186 = bitcast %struct._GtkObject* %185 to %struct._GTypeInstance*
  %call137 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %186, i64 80)
  %187 = bitcast %struct._GTypeInstance* %call137 to %struct._GObject*
  %call138 = call i8* @g_object_get_data(%struct._GObject* %187, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0))
  %188 = bitcast i8* %call138 to %struct._GtkWidget*
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %184, %struct._GtkWidget* %188)
  %189 = load %struct._GtkObject*, %struct._GtkObject** %data, align 8
  %190 = bitcast %struct._GtkObject* %189 to i8*
  %191 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool, align 8
  %192 = bitcast %struct._GimpHueSaturationTool* %191 to i8*
  %call139 = call i64 @g_signal_connect_data(i8* %190, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpHueSaturationTool*)* @hue_saturation_hue_changed to void ()*), i8* %192, void (i8*, %struct._GClosure*)* null, i32 0)
  %193 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %194 = bitcast %struct._GtkWidget* %193 to %struct._GTypeInstance*
  %call140 = call i64 @gtk_table_get_type() #7
  %call141 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %194, i64 %call140)
  %195 = bitcast %struct._GTypeInstance* %call141 to %struct._GtkTable*
  %call142 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i32 0, i32 0)) #6
  %196 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config, align 8
  %range143 = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %196, i32 0, i32 1
  %197 = load i32, i32* %range143, align 4
  %idxprom144 = zext i32 %197 to i64
  %198 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config, align 8
  %lightness = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %198, i32 0, i32 4
  %arrayidx145 = getelementptr inbounds [7 x double], [7 x double]* %lightness, i32 0, i64 %idxprom144
  %199 = load double, double* %arrayidx145, align 8
  %mul146 = fmul double %199, 1.000000e+02
  %call147 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %195, i32 0, i32 1, i8* %call142, i32 200, i32 -1, double %mul146, double -1.000000e+02, double 1.000000e+02, double 1.000000e+00, double 1.000000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call147, %struct._GtkObject** %data, align 8
  %200 = load %struct._GtkObject*, %struct._GtkObject** %data, align 8
  %201 = bitcast %struct._GtkObject* %200 to %struct._GTypeInstance*
  %call148 = call i64 @gtk_adjustment_get_type() #7
  %call149 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %201, i64 %call148)
  %202 = bitcast %struct._GTypeInstance* %call149 to %struct._GtkAdjustment*
  %203 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool, align 8
  %lightness_data = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %203, i32 0, i32 7
  store %struct._GtkAdjustment* %202, %struct._GtkAdjustment** %lightness_data, align 8
  %204 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %label_group, align 8
  %205 = load %struct._GtkObject*, %struct._GtkObject** %data, align 8
  %206 = bitcast %struct._GtkObject* %205 to %struct._GTypeInstance*
  %call150 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %206, i64 80)
  %207 = bitcast %struct._GTypeInstance* %call150 to %struct._GObject*
  %call151 = call i8* @g_object_get_data(%struct._GObject* %207, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0))
  %208 = bitcast i8* %call151 to %struct._GtkWidget*
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %204, %struct._GtkWidget* %208)
  %209 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %spinner_group, align 8
  %210 = load %struct._GtkObject*, %struct._GtkObject** %data, align 8
  %211 = bitcast %struct._GtkObject* %210 to %struct._GTypeInstance*
  %call152 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %211, i64 80)
  %212 = bitcast %struct._GTypeInstance* %call152 to %struct._GObject*
  %call153 = call i8* @g_object_get_data(%struct._GObject* %212, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0))
  %213 = bitcast i8* %call153 to %struct._GtkWidget*
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %209, %struct._GtkWidget* %213)
  %214 = load %struct._GtkObject*, %struct._GtkObject** %data, align 8
  %215 = bitcast %struct._GtkObject* %214 to i8*
  %216 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool, align 8
  %217 = bitcast %struct._GimpHueSaturationTool* %216 to i8*
  %call154 = call i64 @g_signal_connect_data(i8* %215, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpHueSaturationTool*)* @hue_saturation_lightness_changed to void ()*), i8* %217, void (i8*, %struct._GClosure*)* null, i32 0)
  %218 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %219 = bitcast %struct._GtkWidget* %218 to %struct._GTypeInstance*
  %call155 = call i64 @gtk_table_get_type() #7
  %call156 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %219, i64 %call155)
  %220 = bitcast %struct._GTypeInstance* %call156 to %struct._GtkTable*
  %call157 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i32 0, i32 0)) #6
  %221 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config, align 8
  %range158 = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %221, i32 0, i32 1
  %222 = load i32, i32* %range158, align 4
  %idxprom159 = zext i32 %222 to i64
  %223 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config, align 8
  %saturation = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %223, i32 0, i32 3
  %arrayidx160 = getelementptr inbounds [7 x double], [7 x double]* %saturation, i32 0, i64 %idxprom159
  %224 = load double, double* %arrayidx160, align 8
  %mul161 = fmul double %224, 1.000000e+02
  %call162 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %220, i32 0, i32 2, i8* %call157, i32 200, i32 -1, double %mul161, double -1.000000e+02, double 1.000000e+02, double 1.000000e+00, double 1.000000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call162, %struct._GtkObject** %data, align 8
  %225 = load %struct._GtkObject*, %struct._GtkObject** %data, align 8
  %226 = bitcast %struct._GtkObject* %225 to %struct._GTypeInstance*
  %call163 = call i64 @gtk_adjustment_get_type() #7
  %call164 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %226, i64 %call163)
  %227 = bitcast %struct._GTypeInstance* %call164 to %struct._GtkAdjustment*
  %228 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool, align 8
  %saturation_data = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %228, i32 0, i32 8
  store %struct._GtkAdjustment* %227, %struct._GtkAdjustment** %saturation_data, align 8
  %229 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %label_group, align 8
  %230 = load %struct._GtkObject*, %struct._GtkObject** %data, align 8
  %231 = bitcast %struct._GtkObject* %230 to %struct._GTypeInstance*
  %call165 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %231, i64 80)
  %232 = bitcast %struct._GTypeInstance* %call165 to %struct._GObject*
  %call166 = call i8* @g_object_get_data(%struct._GObject* %232, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0))
  %233 = bitcast i8* %call166 to %struct._GtkWidget*
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %229, %struct._GtkWidget* %233)
  %234 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %spinner_group, align 8
  %235 = load %struct._GtkObject*, %struct._GtkObject** %data, align 8
  %236 = bitcast %struct._GtkObject* %235 to %struct._GTypeInstance*
  %call167 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %236, i64 80)
  %237 = bitcast %struct._GTypeInstance* %call167 to %struct._GObject*
  %call168 = call i8* @g_object_get_data(%struct._GObject* %237, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0))
  %238 = bitcast i8* %call168 to %struct._GtkWidget*
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %234, %struct._GtkWidget* %238)
  %239 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool, align 8
  %saturation_data169 = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %239, i32 0, i32 8
  %240 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %saturation_data169, align 8
  %241 = bitcast %struct._GtkAdjustment* %240 to i8*
  %242 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool, align 8
  %243 = bitcast %struct._GimpHueSaturationTool* %242 to i8*
  %call170 = call i64 @g_signal_connect_data(i8* %241, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpHueSaturationTool*)* @hue_saturation_saturation_changed to void ()*), i8* %243, void (i8*, %struct._GClosure*)* null, i32 0)
  %call171 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call171, %struct._GtkWidget** %hbox, align 8
  %244 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %245 = bitcast %struct._GtkWidget* %244 to %struct._GTypeInstance*
  %call172 = call i64 @gtk_box_get_type() #7
  %call173 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %245, i64 %call172)
  %246 = bitcast %struct._GTypeInstance* %call173 to %struct._GtkBox*
  %247 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %246, %struct._GtkWidget* %247, i32 0, i32 0, i32 0)
  %248 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %248)
  %call174 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i32 0, i32 0)) #6
  %call175 = call %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8* %call174)
  store %struct._GtkWidget* %call175, %struct._GtkWidget** %button, align 8
  %249 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %250 = bitcast %struct._GtkWidget* %249 to %struct._GTypeInstance*
  %call176 = call i64 @gtk_box_get_type() #7
  %call177 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %250, i64 %call176)
  %251 = bitcast %struct._GTypeInstance* %call177 to %struct._GtkBox*
  %252 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %251, %struct._GtkWidget* %252, i32 0, i32 0, i32 0)
  %253 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %253)
  %254 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %255 = bitcast %struct._GtkWidget* %254 to i8*
  %256 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool, align 8
  %257 = bitcast %struct._GimpHueSaturationTool* %256 to i8*
  %call178 = call i64 @g_signal_connect_data(i8* %255, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpHueSaturationTool*)* @hue_saturation_range_reset_callback to void ()*), i8* %257, void (i8*, %struct._GClosure*)* null, i32 0)
  %258 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool, align 8
  %range_radio179 = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %258, i32 0, i32 3
  %259 = load %struct._GtkWidget*, %struct._GtkWidget** %range_radio179, align 8
  %260 = bitcast %struct._GtkWidget* %259 to %struct._GTypeInstance*
  %call180 = call i64 @gtk_radio_button_get_type() #7
  %call181 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %260, i64 %call180)
  %261 = bitcast %struct._GTypeInstance* %call181 to %struct._GtkRadioButton*
  %262 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config, align 8
  %range182 = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %262, i32 0, i32 1
  %263 = load i32, i32* %range182, align 4
  call void @gimp_int_radio_group_set_active(%struct._GtkRadioButton* %261, i32 %263)
  %264 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool, align 8
  call void @hue_saturation_update_color_areas(%struct._GimpHueSaturationTool* %264)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_hue_saturation_tool_reset(%struct._GimpImageMapTool* %image_map_tool) #3 {
entry:
  %image_map_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %hs_tool = alloca %struct._GimpHueSaturationTool*, align 8
  %range = alloca i32, align 4
  store %struct._GimpImageMapTool* %image_map_tool, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_hue_saturation_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpHueSaturationTool*
  store %struct._GimpHueSaturationTool* %2, %struct._GimpHueSaturationTool** %hs_tool, align 8
  %3 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool, align 8
  %config = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %3, i32 0, i32 1
  %4 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config, align 8
  %range2 = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %4, i32 0, i32 1
  %5 = load i32, i32* %range2, align 4
  store i32 %5, i32* %range, align 4
  %6 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %config3 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %6, i32 0, i32 3
  %7 = load %struct._GObject*, %struct._GObject** %config3, align 8
  call void @g_object_freeze_notify(%struct._GObject* %7)
  %8 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %default_config = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %8, i32 0, i32 4
  %9 = load %struct._GObject*, %struct._GObject** %default_config, align 8
  %tobool = icmp ne %struct._GObject* %9, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %default_config4 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %10, i32 0, i32 4
  %11 = load %struct._GObject*, %struct._GObject** %default_config4, align 8
  %12 = bitcast %struct._GObject* %11 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_config_interface_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call5)
  %13 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpConfig*
  %14 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %config7 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %14, i32 0, i32 3
  %15 = load %struct._GObject*, %struct._GObject** %config7, align 8
  %16 = bitcast %struct._GObject* %15 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_config_interface_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call8)
  %17 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpConfig*
  %call10 = call i32 @gimp_config_copy(%struct._GimpConfig* %13, %struct._GimpConfig* %17, i32 0)
  br label %if.end

if.else:                                          ; preds = %entry
  %18 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %config11 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %18, i32 0, i32 3
  %19 = load %struct._GObject*, %struct._GObject** %config11, align 8
  %20 = bitcast %struct._GObject* %19 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_config_interface_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call12)
  %21 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpConfig*
  call void @gimp_config_reset(%struct._GimpConfig* %21)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %22 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool, align 8
  %config14 = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %22, i32 0, i32 1
  %23 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config14, align 8
  %24 = bitcast %struct._GimpHueSaturationConfig* %23 to i8*
  %25 = load i32, i32* %range, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %25, i8* null)
  %26 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
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
declare i64 @gimp_hue_saturation_config_get_type() #2

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @hue_saturation_config_notify(%struct._GObject* %object, %struct._GParamSpec* %pspec, %struct._GimpHueSaturationTool* %hs_tool) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %hs_tool.addr = alloca %struct._GimpHueSaturationTool*, align 8
  %config = alloca %struct._GimpHueSaturationConfig*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpHueSaturationTool* %hs_tool, %struct._GimpHueSaturationTool** %hs_tool.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_hue_saturation_config_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpHueSaturationConfig*
  store %struct._GimpHueSaturationConfig* %2, %struct._GimpHueSaturationConfig** %config, align 8
  %3 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool.addr, align 8
  %hue_data = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %3, i32 0, i32 6
  %4 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hue_data, align 8
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
  %7 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool.addr, align 8
  %range_radio = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %7, i32 0, i32 3
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %range_radio, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_radio_button_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkRadioButton*
  %11 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config, align 8
  %range = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %11, i32 0, i32 1
  %12 = load i32, i32* %range, align 4
  call void @gimp_int_radio_group_set_active(%struct._GtkRadioButton* %10, i32 %12)
  br label %if.end.41

if.else:                                          ; preds = %if.end
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name7 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %13, i32 0, i32 1
  %14 = load i8*, i8** %name7, align 8
  %call8 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0)) #8
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.else.13, label %if.then.10

if.then.10:                                       ; preds = %if.else
  %15 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool.addr, align 8
  %hue_data11 = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %15, i32 0, i32 6
  %16 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hue_data11, align 8
  %17 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config, align 8
  %range12 = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %17, i32 0, i32 1
  %18 = load i32, i32* %range12, align 4
  %idxprom = zext i32 %18 to i64
  %19 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config, align 8
  %hue = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %19, i32 0, i32 2
  %arrayidx = getelementptr inbounds [7 x double], [7 x double]* %hue, i32 0, i64 %idxprom
  %20 = load double, double* %arrayidx, align 8
  %mul = fmul double %20, 1.800000e+02
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %16, double %mul)
  br label %if.end.40

if.else.13:                                       ; preds = %if.else
  %21 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name14 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %21, i32 0, i32 1
  %22 = load i8*, i8** %name14, align 8
  %call15 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0)) #8
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.else.22, label %if.then.17

if.then.17:                                       ; preds = %if.else.13
  %23 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool.addr, align 8
  %lightness_data = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %23, i32 0, i32 7
  %24 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %lightness_data, align 8
  %25 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config, align 8
  %range18 = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %25, i32 0, i32 1
  %26 = load i32, i32* %range18, align 4
  %idxprom19 = zext i32 %26 to i64
  %27 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config, align 8
  %lightness = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %27, i32 0, i32 4
  %arrayidx20 = getelementptr inbounds [7 x double], [7 x double]* %lightness, i32 0, i64 %idxprom19
  %28 = load double, double* %arrayidx20, align 8
  %mul21 = fmul double %28, 1.000000e+02
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %24, double %mul21)
  br label %if.end.39

if.else.22:                                       ; preds = %if.else.13
  %29 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name23 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %29, i32 0, i32 1
  %30 = load i8*, i8** %name23, align 8
  %call24 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0)) #8
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.else.31, label %if.then.26

if.then.26:                                       ; preds = %if.else.22
  %31 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool.addr, align 8
  %saturation_data = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %31, i32 0, i32 8
  %32 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %saturation_data, align 8
  %33 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config, align 8
  %range27 = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %33, i32 0, i32 1
  %34 = load i32, i32* %range27, align 4
  %idxprom28 = zext i32 %34 to i64
  %35 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config, align 8
  %saturation = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %35, i32 0, i32 3
  %arrayidx29 = getelementptr inbounds [7 x double], [7 x double]* %saturation, i32 0, i64 %idxprom28
  %36 = load double, double* %arrayidx29, align 8
  %mul30 = fmul double %36, 1.000000e+02
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %32, double %mul30)
  br label %if.end.38

if.else.31:                                       ; preds = %if.else.22
  %37 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name32 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %37, i32 0, i32 1
  %38 = load i8*, i8** %name32, align 8
  %call33 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0)) #8
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end.37, label %if.then.35

if.then.35:                                       ; preds = %if.else.31
  %39 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool.addr, align 8
  %overlap_data = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %39, i32 0, i32 5
  %40 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %overlap_data, align 8
  %41 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config, align 8
  %overlap = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %41, i32 0, i32 5
  %42 = load double, double* %overlap, align 8
  %mul36 = fmul double %42, 1.000000e+02
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %40, double %mul36)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.else.31
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.26
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.17
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.10
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.4
  %43 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool.addr, align 8
  call void @hue_saturation_update_color_areas(%struct._GimpHueSaturationTool* %43)
  %44 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool.addr, align 8
  %45 = bitcast %struct._GimpHueSaturationTool* %44 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_image_map_tool_get_type() #7
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call42)
  %46 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpImageMapTool*
  call void @gimp_image_map_tool_preview(%struct._GimpImageMapTool* %46)
  br label %return

return:                                           ; preds = %if.end.41, %if.then
  ret void
}

declare void @gegl_node_set(%struct._GeglNode*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare void @gimp_int_radio_group_set_active(%struct._GtkRadioButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_button_get_type() #2

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

; Function Attrs: nounwind uwtable
define internal void @hue_saturation_update_color_areas(%struct._GimpHueSaturationTool* %hs_tool) #3 {
entry:
  %hs_tool.addr = alloca %struct._GimpHueSaturationTool*, align 8
  %i = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GimpHueSaturationTool* %hs_tool, %struct._GimpHueSaturationTool** %hs_tool.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [6 x %struct._GimpRGB], [6 x %struct._GimpRGB]* @hue_saturation_update_color_areas.default_colors, i32 0, i64 %idxprom
  %2 = bitcast %struct._GimpRGB* %color to i8*
  %3 = bitcast %struct._GimpRGB* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 32, i32 8, i1 false)
  %4 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool.addr, align 8
  %config = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %4, i32 0, i32 1
  %5 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config, align 8
  %6 = load i32, i32* %i, align 4
  %add = add nsw i32 %6, 1
  call void @gimp_operation_hue_saturation_map(%struct._GimpHueSaturationConfig* %5, %struct._GimpRGB* %color, i32 %add, %struct._GimpRGB* %color)
  %7 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool.addr, align 8
  %hue_range_color_area = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %8, i32 0, i32 4
  %arrayidx2 = getelementptr inbounds [6 x %struct._GtkWidget*], [6 x %struct._GtkWidget*]* %hue_range_color_area, i32 0, i64 %idxprom1
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx2, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_area_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call)
  %11 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpColorArea*
  call void @gimp_color_area_set_color(%struct._GimpColorArea* %11, %struct._GimpRGB* %color)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @gimp_image_map_tool_preview(%struct._GimpImageMapTool*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

declare void @gimp_operation_hue_saturation_map(%struct._GimpHueSaturationConfig*, %struct._GimpRGB*, i32, %struct._GimpRGB*) #1

declare void @gimp_color_area_set_color(%struct._GimpColorArea*, %struct._GimpRGB*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_area_get_type() #2

declare void @gimp_hue_saturation_config_to_cruft(%struct._GimpHueSaturationConfig*, %struct._HueSaturation*) #1

declare %struct._GtkWidget* @gimp_image_map_tool_dialog_get_vbox(%struct._GimpImageMapTool*) #1

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare %struct._GtkWidget* @gtk_alignment_new(float, float, float, float) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacing(%struct._GtkTable*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare void @gtk_table_set_row_spacing(%struct._GtkTable*, i32, i32) #1

declare %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList*, i8*) #1

declare %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton*) #1

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare void @gtk_toggle_button_set_mode(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #2

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #2

declare %struct._GtkWidget* @gimp_color_area_new(%struct._GimpRGB*, i32, i32) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @hue_saturation_range_callback(%struct._GtkWidget* %widget, %struct._GimpHueSaturationTool* %hs_tool) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %hs_tool.addr = alloca %struct._GimpHueSaturationTool*, align 8
  %range = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpHueSaturationTool* %hs_tool, %struct._GimpHueSaturationTool** %hs_tool.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast i32* %range to i8*
  call void @gimp_radio_button_update(%struct._GtkWidget* %3, i8* %4)
  %5 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool.addr, align 8
  %config = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %5, i32 0, i32 1
  %6 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config, align 8
  %7 = bitcast %struct._GimpHueSaturationConfig* %6 to i8*
  %8 = load i32, i32* %range, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %8, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GtkSizeGroup* @gtk_size_group_new(i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #2

declare void @gtk_size_group_add_widget(%struct._GtkSizeGroup*, %struct._GtkWidget*) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @hue_saturation_overlap_changed(%struct._GtkAdjustment* %adjustment, %struct._GimpHueSaturationTool* %hs_tool) #3 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %hs_tool.addr = alloca %struct._GimpHueSaturationTool*, align 8
  %value = alloca double, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store %struct._GimpHueSaturationTool* %hs_tool, %struct._GimpHueSaturationTool** %hs_tool.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %0)
  %div = fdiv double %call, 1.000000e+02
  store double %div, double* %value, align 8
  %1 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool.addr, align 8
  %config = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %1, i32 0, i32 1
  %2 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config, align 8
  %overlap = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %2, i32 0, i32 5
  %3 = load double, double* %overlap, align 8
  %4 = load double, double* %value, align 8
  %cmp = fcmp une double %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool.addr, align 8
  %config1 = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %5, i32 0, i32 1
  %6 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config1, align 8
  %7 = bitcast %struct._GimpHueSaturationConfig* %6 to i8*
  %8 = load double, double* %value, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), double %8, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @hue_saturation_hue_changed(%struct._GtkAdjustment* %adjustment, %struct._GimpHueSaturationTool* %hs_tool) #3 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %hs_tool.addr = alloca %struct._GimpHueSaturationTool*, align 8
  %value = alloca double, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store %struct._GimpHueSaturationTool* %hs_tool, %struct._GimpHueSaturationTool** %hs_tool.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %0)
  %div = fdiv double %call, 1.800000e+02
  store double %div, double* %value, align 8
  %1 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool.addr, align 8
  %config = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %1, i32 0, i32 1
  %2 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config, align 8
  %range = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %2, i32 0, i32 1
  %3 = load i32, i32* %range, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool.addr, align 8
  %config1 = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %4, i32 0, i32 1
  %5 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config1, align 8
  %hue = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %5, i32 0, i32 2
  %arrayidx = getelementptr inbounds [7 x double], [7 x double]* %hue, i32 0, i64 %idxprom
  %6 = load double, double* %arrayidx, align 8
  %7 = load double, double* %value, align 8
  %cmp = fcmp une double %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool.addr, align 8
  %config2 = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %8, i32 0, i32 1
  %9 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config2, align 8
  %10 = bitcast %struct._GimpHueSaturationConfig* %9 to i8*
  %11 = load double, double* %value, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), double %11, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @hue_saturation_lightness_changed(%struct._GtkAdjustment* %adjustment, %struct._GimpHueSaturationTool* %hs_tool) #3 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %hs_tool.addr = alloca %struct._GimpHueSaturationTool*, align 8
  %value = alloca double, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store %struct._GimpHueSaturationTool* %hs_tool, %struct._GimpHueSaturationTool** %hs_tool.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %0)
  %div = fdiv double %call, 1.000000e+02
  store double %div, double* %value, align 8
  %1 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool.addr, align 8
  %config = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %1, i32 0, i32 1
  %2 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config, align 8
  %range = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %2, i32 0, i32 1
  %3 = load i32, i32* %range, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool.addr, align 8
  %config1 = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %4, i32 0, i32 1
  %5 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config1, align 8
  %lightness = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %5, i32 0, i32 4
  %arrayidx = getelementptr inbounds [7 x double], [7 x double]* %lightness, i32 0, i64 %idxprom
  %6 = load double, double* %arrayidx, align 8
  %7 = load double, double* %value, align 8
  %cmp = fcmp une double %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool.addr, align 8
  %config2 = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %8, i32 0, i32 1
  %9 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config2, align 8
  %10 = bitcast %struct._GimpHueSaturationConfig* %9 to i8*
  %11 = load double, double* %value, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), double %11, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @hue_saturation_saturation_changed(%struct._GtkAdjustment* %adjustment, %struct._GimpHueSaturationTool* %hs_tool) #3 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %hs_tool.addr = alloca %struct._GimpHueSaturationTool*, align 8
  %value = alloca double, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store %struct._GimpHueSaturationTool* %hs_tool, %struct._GimpHueSaturationTool** %hs_tool.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %0)
  %div = fdiv double %call, 1.000000e+02
  store double %div, double* %value, align 8
  %1 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool.addr, align 8
  %config = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %1, i32 0, i32 1
  %2 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config, align 8
  %range = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %2, i32 0, i32 1
  %3 = load i32, i32* %range, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool.addr, align 8
  %config1 = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %4, i32 0, i32 1
  %5 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config1, align 8
  %saturation = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %5, i32 0, i32 3
  %arrayidx = getelementptr inbounds [7 x double], [7 x double]* %saturation, i32 0, i64 %idxprom
  %6 = load double, double* %arrayidx, align 8
  %7 = load double, double* %value, align 8
  %cmp = fcmp une double %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool.addr, align 8
  %config2 = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %8, i32 0, i32 1
  %9 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config2, align 8
  %10 = bitcast %struct._GimpHueSaturationConfig* %9 to i8*
  %11 = load double, double* %value, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), double %11, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8*) #1

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @hue_saturation_range_reset_callback(%struct._GtkWidget* %widget, %struct._GimpHueSaturationTool* %hs_tool) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %hs_tool.addr = alloca %struct._GimpHueSaturationTool*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpHueSaturationTool* %hs_tool, %struct._GimpHueSaturationTool** %hs_tool.addr, align 8
  %0 = load %struct._GimpHueSaturationTool*, %struct._GimpHueSaturationTool** %hs_tool.addr, align 8
  %config = getelementptr inbounds %struct._GimpHueSaturationTool, %struct._GimpHueSaturationTool* %0, i32 0, i32 1
  %1 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config, align 8
  call void @gimp_hue_saturation_config_reset_range(%struct._GimpHueSaturationConfig* %1)
  ret void
}

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare void @gimp_hue_saturation_config_reset_range(%struct._GimpHueSaturationConfig*) #1

declare void @g_object_freeze_notify(%struct._GObject*) #1

declare i32 @gimp_config_copy(%struct._GimpConfig*, %struct._GimpConfig*, i32) #1

declare void @g_object_thaw_notify(%struct._GObject*) #1

declare noalias i8* @g_slice_alloc0(i64) #1

declare void @hue_saturation_init(%struct._HueSaturation*) #1

declare void @hue_saturation(%struct._HueSaturation*, %struct._PixelRegion*, %struct._PixelRegion*) #1

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
