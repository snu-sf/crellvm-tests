; ModuleID = './app/tools/gimpbrightnesscontrasttool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpBrightnessContrastToolClass = type { %struct._GimpImageMapToolClass }
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
%struct._GimpToolControl = type { %struct._GimpObject, i32, i32, i32, %struct._GSList*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8* }
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
%struct._GimpBrightnessContrastTool = type { %struct._GimpImageMapTool, %struct._GimpBrightnessContrastConfig*, %struct._GimpLut*, double, double, double, double, %struct._GtkAdjustment*, %struct._GtkAdjustment* }
%struct._GimpBrightnessContrastConfig = type { %struct._GimpImageMapConfig, double, double }
%struct._GimpImageMapConfig = type { %struct._GimpViewable, i32 }
%struct._GimpLut = type { i8**, i32 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GimpConfig = type opaque
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpLevelsConfig = type opaque

@gimp_brightness_contrast_tool_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"GimpBrightnessContrastTool\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"gimp-brightness-contrast-tool\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Brightness-Contrast\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"Brightness/Contrast Tool: Adjust brightness and contrast\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"B_rightness-Contrast...\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"gimp-tool-brightness-contrast\00", align 1
@gimp_brightness_contrast_tool_parent_class = internal global i8* null, align 8
@GimpBrightnessContrastTool_private_offset = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"Adjust Brightness and Contrast\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"brightness-contrast\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Import Brightness-Contrast settings\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Export Brightness-Contrast settings\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"Brightness-Contrast does not operate on indexed layers.\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"brightness\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"contrast\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"gimp:brightness-contrast\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"notify\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"_Brightness:\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"Con_trast:\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"gimp-tool-levels\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"Edit these Settings as Levels\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"gimp-levels-tool\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_brightness_contrast_tool_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_brightness_contrast_tool_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_brightness_contrast_tool_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 392, void (i8*, i8*)* bitcast (void (i8*)* @gimp_brightness_contrast_tool_class_intern_init to void (i8*, i8*)*), i32 456, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpBrightnessContrastTool*)* @gimp_brightness_contrast_tool_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_brightness_contrast_tool_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_brightness_contrast_tool_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_map_tool_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brightness_contrast_tool_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_brightness_contrast_tool_parent_class, align 8
  %1 = load i32, i32* @GimpBrightnessContrastTool_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpBrightnessContrastTool_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpBrightnessContrastToolClass*
  call void @gimp_brightness_contrast_tool_class_init(%struct._GimpBrightnessContrastToolClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brightness_contrast_tool_init(%struct._GimpBrightnessContrastTool* %bc_tool) #3 {
entry:
  %bc_tool.addr = alloca %struct._GimpBrightnessContrastTool*, align 8
  %im_tool = alloca %struct._GimpImageMapTool*, align 8
  store %struct._GimpBrightnessContrastTool* %bc_tool, %struct._GimpBrightnessContrastTool** %bc_tool.addr, align 8
  %0 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool.addr, align 8
  %1 = bitcast %struct._GimpBrightnessContrastTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_map_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageMapTool*
  store %struct._GimpImageMapTool* %2, %struct._GimpImageMapTool** %im_tool, align 8
  %call2 = call %struct._GimpLut* @gimp_lut_new()
  %3 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool.addr, align 8
  %lut = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %3, i32 0, i32 2
  store %struct._GimpLut* %call2, %struct._GimpLut** %lut, align 8
  %4 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %im_tool, align 8
  %apply_func = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %4, i32 0, i32 5
  store void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)* bitcast (void (%struct._GimpLut*, %struct._PixelRegion*, %struct._PixelRegion*)* @gimp_lut_process to void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)*), void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)** %apply_func, align 8
  %5 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool.addr, align 8
  %lut3 = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %5, i32 0, i32 2
  %6 = load %struct._GimpLut*, %struct._GimpLut** %lut3, align 8
  %7 = bitcast %struct._GimpLut* %6 to i8*
  %8 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %im_tool, align 8
  %apply_data = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %8, i32 0, i32 6
  store i8* %7, i8** %apply_data, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_brightness_contrast_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, i8* %data) #3 {
entry:
  %callback.addr = alloca void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  %call = call i64 @gimp_brightness_contrast_tool_get_type() #6
  %call1 = call i64 @gimp_image_map_options_get_type() #6
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0)) #7
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i32 0, i32 0)) #7
  %1 = load i8*, i8** %data.addr, align 8
  call void %0(i64 %call, i64 %call1, %struct._GtkWidget* (%struct._GimpToolOptions*)* null, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0), i8* %call2, i8* %call3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0), i8* %1)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_map_options_get_type() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brightness_contrast_tool_class_init(%struct._GimpBrightnessContrastToolClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpBrightnessContrastToolClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %tool_class = alloca %struct._GimpToolClass*, align 8
  %im_tool_class = alloca %struct._GimpImageMapToolClass*, align 8
  store %struct._GimpBrightnessContrastToolClass* %klass, %struct._GimpBrightnessContrastToolClass** %klass.addr, align 8
  %0 = load %struct._GimpBrightnessContrastToolClass*, %struct._GimpBrightnessContrastToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpBrightnessContrastToolClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpBrightnessContrastToolClass*, %struct._GimpBrightnessContrastToolClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpBrightnessContrastToolClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_tool_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpToolClass*
  store %struct._GimpToolClass* %5, %struct._GimpToolClass** %tool_class, align 8
  %6 = load %struct._GimpBrightnessContrastToolClass*, %struct._GimpBrightnessContrastToolClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpBrightnessContrastToolClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_image_map_tool_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpImageMapToolClass*
  store %struct._GimpImageMapToolClass* %8, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_brightness_contrast_tool_finalize, void (%struct._GObject*)** %finalize, align 8
  %10 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %initialize = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %10, i32 0, i32 3
  store i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)* @gimp_brightness_contrast_tool_initialize, i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)** %initialize, align 8
  %11 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %11, i32 0, i32 5
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_brightness_contrast_tool_button_press, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_press, align 8
  %12 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_release = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %12, i32 0, i32 6
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_brightness_contrast_tool_button_release, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_release, align 8
  %13 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %motion = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %13, i32 0, i32 7
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_brightness_contrast_tool_motion, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %motion, align 8
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0)) #7
  %14 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %dialog_desc = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %14, i32 0, i32 1
  store i8* %call5, i8** %dialog_desc, align 8
  %15 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %settings_name = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %15, i32 0, i32 2
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i8** %settings_name, align 8
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i32 0, i32 0)) #7
  %16 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %import_dialog_title = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %16, i32 0, i32 3
  store i8* %call6, i8** %import_dialog_title, align 8
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0)) #7
  %17 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %export_dialog_title = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %17, i32 0, i32 4
  store i8* %call7, i8** %export_dialog_title, align 8
  %18 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %get_operation = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %18, i32 0, i32 6
  store %struct._GeglNode* (%struct._GimpImageMapTool*, %struct._GObject**)* @gimp_brightness_contrast_tool_get_operation, %struct._GeglNode* (%struct._GimpImageMapTool*, %struct._GObject**)** %get_operation, align 8
  %19 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %map = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %19, i32 0, i32 7
  store void (%struct._GimpImageMapTool*)* @gimp_brightness_contrast_tool_map, void (%struct._GimpImageMapTool*)** %map, align 8
  %20 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %dialog = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %20, i32 0, i32 8
  store void (%struct._GimpImageMapTool*)* @gimp_brightness_contrast_tool_dialog, void (%struct._GimpImageMapTool*)** %dialog, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_brightness_contrast_tool_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %bc_tool = alloca %struct._GimpBrightnessContrastTool*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brightness_contrast_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrightnessContrastTool*
  store %struct._GimpBrightnessContrastTool* %2, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %3 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %lut = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %3, i32 0, i32 2
  %4 = load %struct._GimpLut*, %struct._GimpLut** %lut, align 8
  %tobool = icmp ne %struct._GimpLut* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %lut2 = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %5, i32 0, i32 2
  %6 = load %struct._GimpLut*, %struct._GimpLut** %lut2, align 8
  call void @gimp_lut_free(%struct._GimpLut* %6)
  %7 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %lut3 = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %7, i32 0, i32 2
  store %struct._GimpLut* null, %struct._GimpLut** %lut3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_brightness_contrast_tool_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 80)
  %10 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 6
  %11 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %11(%struct._GObject* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_brightness_contrast_tool_initialize(%struct._GimpTool* %tool, %struct._GimpDisplay* %display, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %tool.addr = alloca %struct._GimpTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %bc_tool = alloca %struct._GimpBrightnessContrastTool*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brightness_contrast_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrightnessContrastTool*
  store %struct._GimpBrightnessContrastTool* %2, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
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
  %call7 = call i32 @gimp_error_quark() #6
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i32 0, i32 0)) #7
  call void @g_set_error_literal(%struct._GError** %7, i32 %call7, i32 0, i8* %call8)
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %8 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %config = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %8, i32 0, i32 1
  %9 = load %struct._GimpBrightnessContrastConfig*, %struct._GimpBrightnessContrastConfig** %config, align 8
  %10 = bitcast %struct._GimpBrightnessContrastConfig* %9 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_config_interface_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call10)
  %11 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpConfig*
  call void @gimp_config_reset(%struct._GimpConfig* %11)
  %12 = load i8*, i8** @gimp_brightness_contrast_tool_parent_class, align 8
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
define internal void @gimp_brightness_contrast_tool_button_press(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %press_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %press_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %bc_tool = alloca %struct._GimpBrightnessContrastTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %press_type, i32* %press_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brightness_contrast_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrightnessContrastTool*
  store %struct._GimpBrightnessContrastTool* %2, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %3 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %3, i32 0, i32 0
  %4 = load double, double* %x, align 8
  %5 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %config = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %5, i32 0, i32 1
  %6 = load %struct._GimpBrightnessContrastConfig*, %struct._GimpBrightnessContrastConfig** %config, align 8
  %contrast = getelementptr inbounds %struct._GimpBrightnessContrastConfig, %struct._GimpBrightnessContrastConfig* %6, i32 0, i32 2
  %7 = load double, double* %contrast, align 8
  %mul = fmul double %7, 1.270000e+02
  %sub = fsub double %4, %mul
  %8 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %x2 = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %8, i32 0, i32 3
  store double %sub, double* %x2, align 8
  %9 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %9, i32 0, i32 1
  %10 = load double, double* %y, align 8
  %11 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %config3 = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %11, i32 0, i32 1
  %12 = load %struct._GimpBrightnessContrastConfig*, %struct._GimpBrightnessContrastConfig** %config3, align 8
  %brightness = getelementptr inbounds %struct._GimpBrightnessContrastConfig, %struct._GimpBrightnessContrastConfig* %12, i32 0, i32 1
  %13 = load double, double* %brightness, align 8
  %mul4 = fmul double %13, 1.270000e+02
  %add = fadd double %10, %mul4
  %14 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %y5 = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %14, i32 0, i32 4
  store double %add, double* %y5, align 8
  %15 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %config6 = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %15, i32 0, i32 1
  %16 = load %struct._GimpBrightnessContrastConfig*, %struct._GimpBrightnessContrastConfig** %config6, align 8
  %contrast7 = getelementptr inbounds %struct._GimpBrightnessContrastConfig, %struct._GimpBrightnessContrastConfig* %16, i32 0, i32 2
  %17 = load double, double* %contrast7, align 8
  %mul8 = fmul double %17, 1.270000e+02
  %18 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %dx = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %18, i32 0, i32 5
  store double %mul8, double* %dx, align 8
  %19 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %config9 = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %19, i32 0, i32 1
  %20 = load %struct._GimpBrightnessContrastConfig*, %struct._GimpBrightnessContrastConfig** %config9, align 8
  %brightness10 = getelementptr inbounds %struct._GimpBrightnessContrastConfig, %struct._GimpBrightnessContrastConfig* %20, i32 0, i32 1
  %21 = load double, double* %brightness10, align 8
  %sub11 = fsub double -0.000000e+00, %21
  %mul12 = fmul double %sub11, 1.270000e+02
  %22 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %dy = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %22, i32 0, i32 6
  store double %mul12, double* %dy, align 8
  %23 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %23, i32 0, i32 3
  %24 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_activate(%struct._GimpToolControl* %24)
  %25 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %26 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display13 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %26, i32 0, i32 4
  store %struct._GimpDisplay* %25, %struct._GimpDisplay** %display13, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brightness_contrast_tool_button_release(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %release_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %release_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %bc_tool = alloca %struct._GimpBrightnessContrastTool*, align 8
  %im_tool = alloca %struct._GimpImageMapTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %release_type, i32* %release_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brightness_contrast_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrightnessContrastTool*
  store %struct._GimpBrightnessContrastTool* %2, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_image_map_tool_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpImageMapTool*
  store %struct._GimpImageMapTool* %5, %struct._GimpImageMapTool** %im_tool, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %6, i32 0, i32 3
  %7 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_halt(%struct._GimpToolControl* %7)
  %8 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %dx = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %8, i32 0, i32 5
  %9 = load double, double* %dx, align 8
  %cmp = fcmp oeq double %9, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %10 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %dy = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %10, i32 0, i32 6
  %11 = load double, double* %dy, align 8
  %cmp4 = fcmp oeq double %11, 0.000000e+00
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %12 = load i32, i32* %release_type.addr, align 4
  %cmp5 = icmp eq i32 %12, 1
  br i1 %cmp5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end
  %13 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %config = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %13, i32 0, i32 1
  %14 = load %struct._GimpBrightnessContrastConfig*, %struct._GimpBrightnessContrastConfig** %config, align 8
  %15 = bitcast %struct._GimpBrightnessContrastConfig* %14 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_config_interface_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call7)
  %16 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpConfig*
  call void @gimp_config_reset(%struct._GimpConfig* %16)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end
  %17 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %im_tool, align 8
  call void @gimp_image_map_tool_preview(%struct._GimpImageMapTool* %17)
  br label %return

return:                                           ; preds = %if.end.9, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brightness_contrast_tool_motion(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %bc_tool = alloca %struct._GimpBrightnessContrastTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brightness_contrast_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrightnessContrastTool*
  store %struct._GimpBrightnessContrastTool* %2, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %3 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %3, i32 0, i32 0
  %4 = load double, double* %x, align 8
  %5 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %x2 = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %5, i32 0, i32 3
  %6 = load double, double* %x2, align 8
  %sub = fsub double %4, %6
  %7 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %dx = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %7, i32 0, i32 5
  store double %sub, double* %dx, align 8
  %8 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %8, i32 0, i32 1
  %9 = load double, double* %y, align 8
  %10 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %y3 = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %10, i32 0, i32 4
  %11 = load double, double* %y3, align 8
  %sub4 = fsub double %9, %11
  %sub5 = fsub double -0.000000e+00, %sub4
  %12 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %dy = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %12, i32 0, i32 6
  store double %sub5, double* %dy, align 8
  %13 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %config = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %13, i32 0, i32 1
  %14 = load %struct._GimpBrightnessContrastConfig*, %struct._GimpBrightnessContrastConfig** %config, align 8
  %15 = bitcast %struct._GimpBrightnessContrastConfig* %14 to i8*
  %16 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %dy6 = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %16, i32 0, i32 6
  %17 = load double, double* %dy6, align 8
  %cmp = fcmp ogt double %17, 1.270000e+02
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.12

cond.false:                                       ; preds = %entry
  %18 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %dy7 = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %18, i32 0, i32 6
  %19 = load double, double* %dy7, align 8
  %cmp8 = fcmp olt double %19, -1.270000e+02
  br i1 %cmp8, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %cond.false
  br label %cond.end

cond.false.10:                                    ; preds = %cond.false
  %20 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %dy11 = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %20, i32 0, i32 6
  %21 = load double, double* %dy11, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.10, %cond.true.9
  %cond = phi double [ -1.270000e+02, %cond.true.9 ], [ %21, %cond.false.10 ]
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.end, %cond.true
  %cond13 = phi double [ 1.270000e+02, %cond.true ], [ %cond, %cond.end ]
  %div = fdiv double %cond13, 1.270000e+02
  %22 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %dx14 = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %22, i32 0, i32 5
  %23 = load double, double* %dx14, align 8
  %cmp15 = fcmp ogt double %23, 1.270000e+02
  br i1 %cmp15, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %cond.end.12
  br label %cond.end.25

cond.false.17:                                    ; preds = %cond.end.12
  %24 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %dx18 = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %24, i32 0, i32 5
  %25 = load double, double* %dx18, align 8
  %cmp19 = fcmp olt double %25, -1.270000e+02
  br i1 %cmp19, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %cond.false.17
  br label %cond.end.23

cond.false.21:                                    ; preds = %cond.false.17
  %26 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %dx22 = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %26, i32 0, i32 5
  %27 = load double, double* %dx22, align 8
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.21, %cond.true.20
  %cond24 = phi double [ -1.270000e+02, %cond.true.20 ], [ %27, %cond.false.21 ]
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.end.23, %cond.true.16
  %cond26 = phi double [ 1.270000e+02, %cond.true.16 ], [ %cond24, %cond.end.23 ]
  %div27 = fdiv double %cond26, 1.270000e+02
  call void (i8*, i8*, ...) @g_object_set(i8* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), double %div, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), double %div27, i8* null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GeglNode* @gimp_brightness_contrast_tool_get_operation(%struct._GimpImageMapTool* %im_tool, %struct._GObject** %config) #3 {
entry:
  %im_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %config.addr = alloca %struct._GObject**, align 8
  %bc_tool = alloca %struct._GimpBrightnessContrastTool*, align 8
  %node = alloca %struct._GeglNode*, align 8
  store %struct._GimpImageMapTool* %im_tool, %struct._GimpImageMapTool** %im_tool.addr, align 8
  store %struct._GObject** %config, %struct._GObject*** %config.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %im_tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brightness_contrast_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrightnessContrastTool*
  store %struct._GimpBrightnessContrastTool* %2, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %call2 = call i64 @gegl_node_get_type() #6
  %call3 = call i8* (i64, i8*, ...) @g_object_new(i64 %call2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %3 = bitcast i8* %call3 to %struct._GeglNode*
  store %struct._GeglNode* %3, %struct._GeglNode** %node, align 8
  %call4 = call i64 @gimp_brightness_contrast_config_get_type() #6
  %call5 = call i8* (i64, i8*, ...) @g_object_new(i64 %call4, i8* null)
  %4 = bitcast i8* %call5 to %struct._GimpBrightnessContrastConfig*
  %5 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %config6 = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %5, i32 0, i32 1
  store %struct._GimpBrightnessContrastConfig* %4, %struct._GimpBrightnessContrastConfig** %config6, align 8
  %6 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %config7 = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %6, i32 0, i32 1
  %7 = load %struct._GimpBrightnessContrastConfig*, %struct._GimpBrightnessContrastConfig** %config7, align 8
  %8 = bitcast %struct._GimpBrightnessContrastConfig* %7 to %struct._GTypeInstance*
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 80)
  %9 = bitcast %struct._GTypeInstance* %call8 to %struct._GObject*
  %10 = load %struct._GObject**, %struct._GObject*** %config.addr, align 8
  store %struct._GObject* %9, %struct._GObject** %10, align 8
  %11 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %config9 = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %11, i32 0, i32 1
  %12 = load %struct._GimpBrightnessContrastConfig*, %struct._GimpBrightnessContrastConfig** %config9, align 8
  %13 = bitcast %struct._GimpBrightnessContrastConfig* %12 to i8*
  %14 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %15 = bitcast %struct._GimpBrightnessContrastTool* %14 to %struct._GTypeInstance*
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 80)
  %16 = bitcast %struct._GTypeInstance* %call10 to %struct._GObject*
  %17 = bitcast %struct._GObject* %16 to i8*
  %call11 = call i64 @g_signal_connect_object(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpBrightnessContrastTool*)* @brightness_contrast_config_notify to void ()*), i8* %17, i32 0)
  %18 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  %19 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %config12 = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %19, i32 0, i32 1
  %20 = load %struct._GimpBrightnessContrastConfig*, %struct._GimpBrightnessContrastConfig** %config12, align 8
  call void (%struct._GeglNode*, i8*, ...) @gegl_node_set(%struct._GeglNode* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), %struct._GimpBrightnessContrastConfig* %20, i8* null)
  %21 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  ret %struct._GeglNode* %21
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brightness_contrast_tool_map(%struct._GimpImageMapTool* %im_tool) #3 {
entry:
  %im_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %bc_tool = alloca %struct._GimpBrightnessContrastTool*, align 8
  store %struct._GimpImageMapTool* %im_tool, %struct._GimpImageMapTool** %im_tool.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %im_tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brightness_contrast_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrightnessContrastTool*
  store %struct._GimpBrightnessContrastTool* %2, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %3 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %lut = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %3, i32 0, i32 2
  %4 = load %struct._GimpLut*, %struct._GimpLut** %lut, align 8
  %5 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %config = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %5, i32 0, i32 1
  %6 = load %struct._GimpBrightnessContrastConfig*, %struct._GimpBrightnessContrastConfig** %config, align 8
  %brightness = getelementptr inbounds %struct._GimpBrightnessContrastConfig, %struct._GimpBrightnessContrastConfig* %6, i32 0, i32 1
  %7 = load double, double* %brightness, align 8
  %div = fdiv double %7, 2.000000e+00
  %8 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %config2 = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %8, i32 0, i32 1
  %9 = load %struct._GimpBrightnessContrastConfig*, %struct._GimpBrightnessContrastConfig** %config2, align 8
  %contrast = getelementptr inbounds %struct._GimpBrightnessContrastConfig, %struct._GimpBrightnessContrastConfig* %9, i32 0, i32 2
  %10 = load double, double* %contrast, align 8
  %11 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %im_tool.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %11, i32 0, i32 1
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call3 = call i32 @gimp_drawable_bytes(%struct._GimpDrawable* %12)
  call void @brightness_contrast_lut_setup(%struct._GimpLut* %4, double %div, double %10, i32 %call3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brightness_contrast_tool_dialog(%struct._GimpImageMapTool* %image_map_tool) #3 {
entry:
  %image_map_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %bc_tool = alloca %struct._GimpBrightnessContrastTool*, align 8
  %config = alloca %struct._GimpBrightnessContrastConfig*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %data = alloca %struct._GtkObject*, align 8
  store %struct._GimpImageMapTool* %image_map_tool, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brightness_contrast_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrightnessContrastTool*
  store %struct._GimpBrightnessContrastTool* %2, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %3 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %config2 = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %3, i32 0, i32 1
  %4 = load %struct._GimpBrightnessContrastConfig*, %struct._GimpBrightnessContrastConfig** %config2, align 8
  store %struct._GimpBrightnessContrastConfig* %4, %struct._GimpBrightnessContrastConfig** %config, align 8
  %5 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %call3 = call %struct._GtkWidget* @gimp_image_map_tool_dialog_get_vbox(%struct._GimpImageMapTool* %5)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %main_vbox, align 8
  %call4 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 3, i32 0)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %table, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_table_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %8, i32 4)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_table_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %11, i32 2)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_box_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call9)
  %14 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkBox*
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %14, %struct._GtkWidget* %15, i32 0, i32 0, i32 0)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %16)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_table_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call11)
  %19 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTable*
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0)) #7
  %20 = load %struct._GimpBrightnessContrastConfig*, %struct._GimpBrightnessContrastConfig** %config, align 8
  %brightness = getelementptr inbounds %struct._GimpBrightnessContrastConfig, %struct._GimpBrightnessContrastConfig* %20, i32 0, i32 1
  %21 = load double, double* %brightness, align 8
  %mul = fmul double %21, 1.270000e+02
  %call14 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %19, i32 0, i32 0, i8* %call13, i32 200, i32 -1, double %mul, double -1.270000e+02, double 1.270000e+02, double 1.000000e+00, double 1.000000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call14, %struct._GtkObject** %data, align 8
  %22 = load %struct._GtkObject*, %struct._GtkObject** %data, align 8
  %23 = bitcast %struct._GtkObject* %22 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_adjustment_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call15)
  %24 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkAdjustment*
  %25 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %brightness_data = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %25, i32 0, i32 7
  store %struct._GtkAdjustment* %24, %struct._GtkAdjustment** %brightness_data, align 8
  %26 = load %struct._GtkObject*, %struct._GtkObject** %data, align 8
  %27 = bitcast %struct._GtkObject* %26 to i8*
  %28 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %29 = bitcast %struct._GimpBrightnessContrastTool* %28 to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpBrightnessContrastTool*)* @brightness_contrast_brightness_changed to void ()*), i8* %29, void (i8*, %struct._GClosure*)* null, i32 0)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_table_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call18)
  %32 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkTable*
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0)) #7
  %33 = load %struct._GimpBrightnessContrastConfig*, %struct._GimpBrightnessContrastConfig** %config, align 8
  %contrast = getelementptr inbounds %struct._GimpBrightnessContrastConfig, %struct._GimpBrightnessContrastConfig* %33, i32 0, i32 2
  %34 = load double, double* %contrast, align 8
  %mul21 = fmul double %34, 1.270000e+02
  %call22 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %32, i32 0, i32 1, i8* %call20, i32 200, i32 -1, double %mul21, double -1.270000e+02, double 1.270000e+02, double 1.000000e+00, double 1.000000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call22, %struct._GtkObject** %data, align 8
  %35 = load %struct._GtkObject*, %struct._GtkObject** %data, align 8
  %36 = bitcast %struct._GtkObject* %35 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_adjustment_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call23)
  %37 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkAdjustment*
  %38 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %contrast_data = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %38, i32 0, i32 8
  store %struct._GtkAdjustment* %37, %struct._GtkAdjustment** %contrast_data, align 8
  %39 = load %struct._GtkObject*, %struct._GtkObject** %data, align 8
  %40 = bitcast %struct._GtkObject* %39 to i8*
  %41 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %42 = bitcast %struct._GimpBrightnessContrastTool* %41 to i8*
  %call25 = call i64 @g_signal_connect_data(i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpBrightnessContrastTool*)* @brightness_contrast_contrast_changed to void ()*), i8* %42, void (i8*, %struct._GClosure*)* null, i32 0)
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i32 0, i32 0)) #7
  %call27 = call %struct._GtkWidget* @gimp_stock_button_new(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i8* %call26)
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %button, align 8
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_box_get_type() #6
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call28)
  %45 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkBox*
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %45, %struct._GtkWidget* %46, i32 0, i32 0, i32 0)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %47)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %49 = bitcast %struct._GtkWidget* %48 to i8*
  %50 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool, align 8
  %51 = bitcast %struct._GimpBrightnessContrastTool* %50 to i8*
  %call30 = call i64 @g_signal_connect_data(i8* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpBrightnessContrastTool*)* @brightness_contrast_to_levels_callback to void ()*), i8* %51, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @gimp_lut_free(%struct._GimpLut*) #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #1

declare i32 @gimp_drawable_is_indexed(%struct._GimpDrawable*) #1

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_error_quark() #2

declare void @gimp_config_reset(%struct._GimpConfig*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare void @gimp_tool_control_activate(%struct._GimpToolControl*) #1

declare void @gimp_tool_control_halt(%struct._GimpToolControl*) #1

declare void @gimp_image_map_tool_preview(%struct._GimpImageMapTool*) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gegl_node_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_brightness_contrast_config_get_type() #2

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @brightness_contrast_config_notify(%struct._GObject* %object, %struct._GParamSpec* %pspec, %struct._GimpBrightnessContrastTool* %bc_tool) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %bc_tool.addr = alloca %struct._GimpBrightnessContrastTool*, align 8
  %config = alloca %struct._GimpBrightnessContrastConfig*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpBrightnessContrastTool* %bc_tool, %struct._GimpBrightnessContrastTool** %bc_tool.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brightness_contrast_config_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrightnessContrastConfig*
  store %struct._GimpBrightnessContrastConfig* %2, %struct._GimpBrightnessContrastConfig** %config, align 8
  %3 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool.addr, align 8
  %brightness_data = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %3, i32 0, i32 7
  %4 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %brightness_data, align 8
  %tobool = icmp ne %struct._GtkAdjustment* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %5, i32 0, i32 1
  %6 = load i8*, i8** %name, align 8
  %call2 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0)) #8
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.else, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %7 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool.addr, align 8
  %brightness_data5 = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %7, i32 0, i32 7
  %8 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %brightness_data5, align 8
  %9 = load %struct._GimpBrightnessContrastConfig*, %struct._GimpBrightnessContrastConfig** %config, align 8
  %brightness = getelementptr inbounds %struct._GimpBrightnessContrastConfig, %struct._GimpBrightnessContrastConfig* %9, i32 0, i32 1
  %10 = load double, double* %brightness, align 8
  %mul = fmul double %10, 1.270000e+02
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %8, double %mul)
  br label %if.end.12

if.else:                                          ; preds = %if.end
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name6 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %11, i32 0, i32 1
  %12 = load i8*, i8** %name6, align 8
  %call7 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0)) #8
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.11, label %if.then.9

if.then.9:                                        ; preds = %if.else
  %13 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool.addr, align 8
  %contrast_data = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %13, i32 0, i32 8
  %14 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %contrast_data, align 8
  %15 = load %struct._GimpBrightnessContrastConfig*, %struct._GimpBrightnessContrastConfig** %config, align 8
  %contrast = getelementptr inbounds %struct._GimpBrightnessContrastConfig, %struct._GimpBrightnessContrastConfig* %15, i32 0, i32 2
  %16 = load double, double* %contrast, align 8
  %mul10 = fmul double %16, 1.270000e+02
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %14, double %mul10)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then.4
  %17 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool.addr, align 8
  %18 = bitcast %struct._GimpBrightnessContrastTool* %17 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_image_map_tool_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call13)
  %19 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpImageMapTool*
  call void @gimp_image_map_tool_preview(%struct._GimpImageMapTool* %19)
  br label %return

return:                                           ; preds = %if.end.12, %if.then
  ret void
}

declare void @gegl_node_set(%struct._GeglNode*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

declare void @brightness_contrast_lut_setup(%struct._GimpLut*, double, double, i32) #1

declare i32 @gimp_drawable_bytes(%struct._GimpDrawable*) #1

declare %struct._GtkWidget* @gimp_image_map_tool_dialog_get_vbox(%struct._GimpImageMapTool*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @brightness_contrast_brightness_changed(%struct._GtkAdjustment* %adjustment, %struct._GimpBrightnessContrastTool* %bc_tool) #3 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %bc_tool.addr = alloca %struct._GimpBrightnessContrastTool*, align 8
  %config = alloca %struct._GimpBrightnessContrastConfig*, align 8
  %value = alloca double, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store %struct._GimpBrightnessContrastTool* %bc_tool, %struct._GimpBrightnessContrastTool** %bc_tool.addr, align 8
  %0 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool.addr, align 8
  %config1 = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %0, i32 0, i32 1
  %1 = load %struct._GimpBrightnessContrastConfig*, %struct._GimpBrightnessContrastConfig** %config1, align 8
  store %struct._GimpBrightnessContrastConfig* %1, %struct._GimpBrightnessContrastConfig** %config, align 8
  %2 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %2)
  %div = fdiv double %call, 1.270000e+02
  store double %div, double* %value, align 8
  %3 = load %struct._GimpBrightnessContrastConfig*, %struct._GimpBrightnessContrastConfig** %config, align 8
  %brightness = getelementptr inbounds %struct._GimpBrightnessContrastConfig, %struct._GimpBrightnessContrastConfig* %3, i32 0, i32 1
  %4 = load double, double* %brightness, align 8
  %5 = load double, double* %value, align 8
  %cmp = fcmp une double %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpBrightnessContrastConfig*, %struct._GimpBrightnessContrastConfig** %config, align 8
  %7 = bitcast %struct._GimpBrightnessContrastConfig* %6 to i8*
  %8 = load double, double* %value, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), double %8, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @brightness_contrast_contrast_changed(%struct._GtkAdjustment* %adjustment, %struct._GimpBrightnessContrastTool* %bc_tool) #3 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %bc_tool.addr = alloca %struct._GimpBrightnessContrastTool*, align 8
  %config = alloca %struct._GimpBrightnessContrastConfig*, align 8
  %value = alloca double, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store %struct._GimpBrightnessContrastTool* %bc_tool, %struct._GimpBrightnessContrastTool** %bc_tool.addr, align 8
  %0 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool.addr, align 8
  %config1 = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %0, i32 0, i32 1
  %1 = load %struct._GimpBrightnessContrastConfig*, %struct._GimpBrightnessContrastConfig** %config1, align 8
  store %struct._GimpBrightnessContrastConfig* %1, %struct._GimpBrightnessContrastConfig** %config, align 8
  %2 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %2)
  %div = fdiv double %call, 1.270000e+02
  store double %div, double* %value, align 8
  %3 = load %struct._GimpBrightnessContrastConfig*, %struct._GimpBrightnessContrastConfig** %config, align 8
  %contrast = getelementptr inbounds %struct._GimpBrightnessContrastConfig, %struct._GimpBrightnessContrastConfig* %3, i32 0, i32 2
  %4 = load double, double* %contrast, align 8
  %5 = load double, double* %value, align 8
  %cmp = fcmp une double %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpBrightnessContrastConfig*, %struct._GimpBrightnessContrastConfig** %config, align 8
  %7 = bitcast %struct._GimpBrightnessContrastConfig* %6 to i8*
  %8 = load double, double* %value, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), double %8, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GtkWidget* @gimp_stock_button_new(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @brightness_contrast_to_levels_callback(%struct._GtkWidget* %widget, %struct._GimpBrightnessContrastTool* %bc_tool) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %bc_tool.addr = alloca %struct._GimpBrightnessContrastTool*, align 8
  %levels = alloca %struct._GimpLevelsConfig*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpBrightnessContrastTool* %bc_tool, %struct._GimpBrightnessContrastTool** %bc_tool.addr, align 8
  %0 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool.addr, align 8
  %config = getelementptr inbounds %struct._GimpBrightnessContrastTool, %struct._GimpBrightnessContrastTool* %0, i32 0, i32 1
  %1 = load %struct._GimpBrightnessContrastConfig*, %struct._GimpBrightnessContrastConfig** %config, align 8
  %call = call %struct._GimpLevelsConfig* @gimp_brightness_contrast_config_to_levels_config(%struct._GimpBrightnessContrastConfig* %1)
  store %struct._GimpLevelsConfig* %call, %struct._GimpLevelsConfig** %levels, align 8
  %2 = load %struct._GimpBrightnessContrastTool*, %struct._GimpBrightnessContrastTool** %bc_tool.addr, align 8
  %3 = bitcast %struct._GimpBrightnessContrastTool* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_image_map_tool_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpImageMapTool*
  %5 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %levels, align 8
  %6 = bitcast %struct._GimpLevelsConfig* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_config_interface_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpConfig*
  call void @gimp_image_map_tool_edit_as(%struct._GimpImageMapTool* %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0), %struct._GimpConfig* %7)
  %8 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %levels, align 8
  %9 = bitcast %struct._GimpLevelsConfig* %8 to i8*
  call void @g_object_unref(i8* %9)
  ret void
}

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare %struct._GimpLevelsConfig* @gimp_brightness_contrast_config_to_levels_config(%struct._GimpBrightnessContrastConfig*) #1

declare void @gimp_image_map_tool_edit_as(%struct._GimpImageMapTool*, i8*, %struct._GimpConfig*) #1

declare void @g_object_unref(i8*) #1

declare %struct._GimpLut* @gimp_lut_new() #1

declare void @gimp_lut_process(%struct._GimpLut*, %struct._PixelRegion*, %struct._PixelRegion*) #1

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
