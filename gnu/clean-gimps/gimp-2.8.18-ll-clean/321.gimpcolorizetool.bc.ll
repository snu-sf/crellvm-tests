; ModuleID = './app/tools/gimpcolorizetool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpColorizeToolClass = type { %struct._GimpImageMapToolClass }
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
%struct._GimpColorizeTool = type { %struct._GimpImageMapTool, %struct._GimpColorizeConfig*, %struct._Colorize*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkAdjustment* }
%struct._GimpColorizeConfig = type { %struct._GimpImageMapConfig, double, double, double }
%struct._GimpImageMapConfig = type { %struct._GimpViewable, i32 }
%struct._Colorize = type { double, double, double, [256 x i32], [256 x i32], [256 x i32], [256 x i32], [256 x i32], [256 x i32] }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GimpConfig = type opaque
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }

@gimp_colorize_tool_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"GimpColorizeTool\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"gimp-colorize-tool\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Colorize\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Colorize Tool: Colorize the image\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Colori_ze...\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"gimp-tool-colorize\00", align 1
@gimp_colorize_tool_parent_class = internal global i8* null, align 8
@GimpColorizeTool_private_offset = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"Colorize the Image\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"colorize\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Import Colorize Settings\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Export Colorize Settings\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"Colorize operates only on RGB color layers.\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"gimp:colorize\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"notify\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"hue\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"saturation\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"lightness\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"Select Color\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"_Hue:\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"_Saturation:\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"_Lightness:\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_colorize_tool_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_colorize_tool_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_colorize_tool_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 392, void (i8*, i8*)* bitcast (void (i8*)* @gimp_colorize_tool_class_intern_init to void (i8*, i8*)*), i32 432, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpColorizeTool*)* @gimp_colorize_tool_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_colorize_tool_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_colorize_tool_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_map_tool_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_colorize_tool_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_colorize_tool_parent_class, align 8
  %1 = load i32, i32* @GimpColorizeTool_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpColorizeTool_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpColorizeToolClass*
  call void @gimp_colorize_tool_class_init(%struct._GimpColorizeToolClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_colorize_tool_init(%struct._GimpColorizeTool* %col_tool) #3 {
entry:
  %col_tool.addr = alloca %struct._GimpColorizeTool*, align 8
  %im_tool = alloca %struct._GimpImageMapTool*, align 8
  store %struct._GimpColorizeTool* %col_tool, %struct._GimpColorizeTool** %col_tool.addr, align 8
  %0 = load %struct._GimpColorizeTool*, %struct._GimpColorizeTool** %col_tool.addr, align 8
  %1 = bitcast %struct._GimpColorizeTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_map_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageMapTool*
  store %struct._GimpImageMapTool* %2, %struct._GimpImageMapTool** %im_tool, align 8
  %call2 = call noalias i8* @g_slice_alloc0(i64 6168)
  %3 = bitcast i8* %call2 to %struct._Colorize*
  %4 = load %struct._GimpColorizeTool*, %struct._GimpColorizeTool** %col_tool.addr, align 8
  %colorize = getelementptr inbounds %struct._GimpColorizeTool, %struct._GimpColorizeTool* %4, i32 0, i32 2
  store %struct._Colorize* %3, %struct._Colorize** %colorize, align 8
  %5 = load %struct._GimpColorizeTool*, %struct._GimpColorizeTool** %col_tool.addr, align 8
  %colorize3 = getelementptr inbounds %struct._GimpColorizeTool, %struct._GimpColorizeTool* %5, i32 0, i32 2
  %6 = load %struct._Colorize*, %struct._Colorize** %colorize3, align 8
  call void @colorize_init(%struct._Colorize* %6)
  %7 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %im_tool, align 8
  %apply_func = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %7, i32 0, i32 5
  store void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)* bitcast (void (%struct._Colorize*, %struct._PixelRegion*, %struct._PixelRegion*)* @colorize to void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)*), void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)** %apply_func, align 8
  %8 = load %struct._GimpColorizeTool*, %struct._GimpColorizeTool** %col_tool.addr, align 8
  %colorize4 = getelementptr inbounds %struct._GimpColorizeTool, %struct._GimpColorizeTool* %8, i32 0, i32 2
  %9 = load %struct._Colorize*, %struct._Colorize** %colorize4, align 8
  %10 = bitcast %struct._Colorize* %9 to i8*
  %11 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %im_tool, align 8
  %apply_data = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %11, i32 0, i32 6
  store i8* %10, i8** %apply_data, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_colorize_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, i8* %data) #3 {
entry:
  %callback.addr = alloca void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  %call = call i64 @gimp_colorize_tool_get_type() #6
  %call1 = call i64 @gimp_image_map_options_get_type() #6
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0)) #7
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0)) #7
  %1 = load i8*, i8** %data.addr, align 8
  call void %0(i64 %call, i64 %call1, %struct._GtkWidget* (%struct._GimpToolOptions*)* null, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i8* %call2, i8* %call3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), i8* %1)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_map_options_get_type() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_colorize_tool_class_init(%struct._GimpColorizeToolClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpColorizeToolClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %tool_class = alloca %struct._GimpToolClass*, align 8
  %im_tool_class = alloca %struct._GimpImageMapToolClass*, align 8
  store %struct._GimpColorizeToolClass* %klass, %struct._GimpColorizeToolClass** %klass.addr, align 8
  %0 = load %struct._GimpColorizeToolClass*, %struct._GimpColorizeToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpColorizeToolClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpColorizeToolClass*, %struct._GimpColorizeToolClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpColorizeToolClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_tool_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpToolClass*
  store %struct._GimpToolClass* %5, %struct._GimpToolClass** %tool_class, align 8
  %6 = load %struct._GimpColorizeToolClass*, %struct._GimpColorizeToolClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpColorizeToolClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_image_map_tool_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpImageMapToolClass*
  store %struct._GimpImageMapToolClass* %8, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_colorize_tool_finalize, void (%struct._GObject*)** %finalize, align 8
  %10 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %initialize = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %10, i32 0, i32 3
  store i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)* @gimp_colorize_tool_initialize, i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)** %initialize, align 8
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0)) #7
  %11 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %dialog_desc = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %11, i32 0, i32 1
  store i8* %call5, i8** %dialog_desc, align 8
  %12 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %settings_name = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %12, i32 0, i32 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8** %settings_name, align 8
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0)) #7
  %13 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %import_dialog_title = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %13, i32 0, i32 3
  store i8* %call6, i8** %import_dialog_title, align 8
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0)) #7
  %14 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %export_dialog_title = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %14, i32 0, i32 4
  store i8* %call7, i8** %export_dialog_title, align 8
  %15 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %get_operation = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %15, i32 0, i32 6
  store %struct._GeglNode* (%struct._GimpImageMapTool*, %struct._GObject**)* @gimp_colorize_tool_get_operation, %struct._GeglNode* (%struct._GimpImageMapTool*, %struct._GObject**)** %get_operation, align 8
  %16 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %map = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %16, i32 0, i32 7
  store void (%struct._GimpImageMapTool*)* @gimp_colorize_tool_map, void (%struct._GimpImageMapTool*)** %map, align 8
  %17 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %dialog = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %17, i32 0, i32 8
  store void (%struct._GimpImageMapTool*)* @gimp_colorize_tool_dialog, void (%struct._GimpImageMapTool*)** %dialog, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_colorize_tool_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %col_tool = alloca %struct._GimpColorizeTool*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_colorize_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorizeTool*
  store %struct._GimpColorizeTool* %2, %struct._GimpColorizeTool** %col_tool, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct._GimpColorizeTool*, %struct._GimpColorizeTool** %col_tool, align 8
  %colorize = getelementptr inbounds %struct._GimpColorizeTool, %struct._GimpColorizeTool* %3, i32 0, i32 2
  %4 = load %struct._Colorize*, %struct._Colorize** %colorize, align 8
  %5 = bitcast %struct._Colorize* %4 to i8*
  call void @g_slice_free1(i64 6168, i8* %5)
  br label %do.end

do.end:                                           ; preds = %do.body
  %6 = load i8*, i8** @gimp_colorize_tool_parent_class, align 8
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
define internal i32 @gimp_colorize_tool_initialize(%struct._GimpTool* %tool, %struct._GimpDisplay* %display, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %tool.addr = alloca %struct._GimpTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %col_tool = alloca %struct._GimpColorizeTool*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_colorize_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorizeTool*
  store %struct._GimpColorizeTool* %2, %struct._GimpColorizeTool** %col_tool, align 8
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
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i32 0, i32 0)) #7
  call void @g_set_error_literal(%struct._GError** %7, i32 %call7, i32 0, i8* %call8)
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %8 = load %struct._GimpColorizeTool*, %struct._GimpColorizeTool** %col_tool, align 8
  %config = getelementptr inbounds %struct._GimpColorizeTool, %struct._GimpColorizeTool* %8, i32 0, i32 1
  %9 = load %struct._GimpColorizeConfig*, %struct._GimpColorizeConfig** %config, align 8
  %10 = bitcast %struct._GimpColorizeConfig* %9 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_config_interface_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call10)
  %11 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpConfig*
  call void @gimp_config_reset(%struct._GimpConfig* %11)
  %12 = load i8*, i8** @gimp_colorize_tool_parent_class, align 8
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
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.end.9
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.9
  %19 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %20 = bitcast %struct._GimpTool* %19 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_image_map_tool_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call18)
  %21 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpImageMapTool*
  call void @gimp_image_map_tool_preview(%struct._GimpImageMapTool* %21)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.16, %if.then.6, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal %struct._GeglNode* @gimp_colorize_tool_get_operation(%struct._GimpImageMapTool* %im_tool, %struct._GObject** %config) #3 {
entry:
  %im_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %config.addr = alloca %struct._GObject**, align 8
  %col_tool = alloca %struct._GimpColorizeTool*, align 8
  %node = alloca %struct._GeglNode*, align 8
  store %struct._GimpImageMapTool* %im_tool, %struct._GimpImageMapTool** %im_tool.addr, align 8
  store %struct._GObject** %config, %struct._GObject*** %config.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %im_tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_colorize_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorizeTool*
  store %struct._GimpColorizeTool* %2, %struct._GimpColorizeTool** %col_tool, align 8
  %call2 = call i64 @gegl_node_get_type() #6
  %call3 = call i8* (i64, i8*, ...) @g_object_new(i64 %call2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* null)
  %3 = bitcast i8* %call3 to %struct._GeglNode*
  store %struct._GeglNode* %3, %struct._GeglNode** %node, align 8
  %call4 = call i64 @gimp_colorize_config_get_type() #6
  %call5 = call i8* (i64, i8*, ...) @g_object_new(i64 %call4, i8* null)
  %4 = bitcast i8* %call5 to %struct._GimpColorizeConfig*
  %5 = load %struct._GimpColorizeTool*, %struct._GimpColorizeTool** %col_tool, align 8
  %config6 = getelementptr inbounds %struct._GimpColorizeTool, %struct._GimpColorizeTool* %5, i32 0, i32 1
  store %struct._GimpColorizeConfig* %4, %struct._GimpColorizeConfig** %config6, align 8
  %6 = load %struct._GimpColorizeTool*, %struct._GimpColorizeTool** %col_tool, align 8
  %config7 = getelementptr inbounds %struct._GimpColorizeTool, %struct._GimpColorizeTool* %6, i32 0, i32 1
  %7 = load %struct._GimpColorizeConfig*, %struct._GimpColorizeConfig** %config7, align 8
  %8 = bitcast %struct._GimpColorizeConfig* %7 to %struct._GTypeInstance*
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 80)
  %9 = bitcast %struct._GTypeInstance* %call8 to %struct._GObject*
  %10 = load %struct._GObject**, %struct._GObject*** %config.addr, align 8
  store %struct._GObject* %9, %struct._GObject** %10, align 8
  %11 = load %struct._GimpColorizeTool*, %struct._GimpColorizeTool** %col_tool, align 8
  %config9 = getelementptr inbounds %struct._GimpColorizeTool, %struct._GimpColorizeTool* %11, i32 0, i32 1
  %12 = load %struct._GimpColorizeConfig*, %struct._GimpColorizeConfig** %config9, align 8
  %13 = bitcast %struct._GimpColorizeConfig* %12 to i8*
  %14 = load %struct._GimpColorizeTool*, %struct._GimpColorizeTool** %col_tool, align 8
  %15 = bitcast %struct._GimpColorizeTool* %14 to %struct._GTypeInstance*
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 80)
  %16 = bitcast %struct._GTypeInstance* %call10 to %struct._GObject*
  %17 = bitcast %struct._GObject* %16 to i8*
  %call11 = call i64 @g_signal_connect_object(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpColorizeTool*)* @gimp_colorize_tool_config_notify to void ()*), i8* %17, i32 0)
  %18 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  %19 = load %struct._GimpColorizeTool*, %struct._GimpColorizeTool** %col_tool, align 8
  %config12 = getelementptr inbounds %struct._GimpColorizeTool, %struct._GimpColorizeTool* %19, i32 0, i32 1
  %20 = load %struct._GimpColorizeConfig*, %struct._GimpColorizeConfig** %config12, align 8
  call void (%struct._GeglNode*, i8*, ...) @gegl_node_set(%struct._GeglNode* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), %struct._GimpColorizeConfig* %20, i8* null)
  %21 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  ret %struct._GeglNode* %21
}

; Function Attrs: nounwind uwtable
define internal void @gimp_colorize_tool_map(%struct._GimpImageMapTool* %image_map_tool) #3 {
entry:
  %image_map_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %col_tool = alloca %struct._GimpColorizeTool*, align 8
  store %struct._GimpImageMapTool* %image_map_tool, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_colorize_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorizeTool*
  store %struct._GimpColorizeTool* %2, %struct._GimpColorizeTool** %col_tool, align 8
  %3 = load %struct._GimpColorizeTool*, %struct._GimpColorizeTool** %col_tool, align 8
  %config = getelementptr inbounds %struct._GimpColorizeTool, %struct._GimpColorizeTool* %3, i32 0, i32 1
  %4 = load %struct._GimpColorizeConfig*, %struct._GimpColorizeConfig** %config, align 8
  %5 = load %struct._GimpColorizeTool*, %struct._GimpColorizeTool** %col_tool, align 8
  %colorize = getelementptr inbounds %struct._GimpColorizeTool, %struct._GimpColorizeTool* %5, i32 0, i32 2
  %6 = load %struct._Colorize*, %struct._Colorize** %colorize, align 8
  call void @gimp_colorize_config_to_cruft(%struct._GimpColorizeConfig* %4, %struct._Colorize* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_colorize_tool_dialog(%struct._GimpImageMapTool* %image_map_tool) #3 {
entry:
  %image_map_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %col_tool = alloca %struct._GimpColorizeTool*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %data = alloca %struct._GtkObject*, align 8
  store %struct._GimpImageMapTool* %image_map_tool, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_colorize_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorizeTool*
  store %struct._GimpColorizeTool* %2, %struct._GimpColorizeTool** %col_tool, align 8
  %3 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %call2 = call %struct._GtkWidget* @gimp_image_map_tool_dialog_get_vbox(%struct._GimpImageMapTool* %3)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %main_vbox, align 8
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0)) #7
  %call4 = call %struct._GtkWidget* @gimp_frame_new(i8* %call3)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %frame, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_box_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call5)
  %6 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkBox*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %6, %struct._GtkWidget* %7, i32 0, i32 0, i32 0)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %8)
  %call7 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %vbox, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_container_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call8)
  %11 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkContainer*
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %11, %struct._GtkWidget* %12)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %13)
  %call10 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %table, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_table_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call11)
  %16 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %16, i32 4)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_table_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call13)
  %19 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %19, i32 2)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call15)
  %22 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %22, %struct._GtkWidget* %23, i32 0, i32 0, i32 0)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %24)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_table_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call17)
  %27 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkTable*
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0)) #7
  %28 = load %struct._GimpColorizeTool*, %struct._GimpColorizeTool** %col_tool, align 8
  %config = getelementptr inbounds %struct._GimpColorizeTool, %struct._GimpColorizeTool* %28, i32 0, i32 1
  %29 = load %struct._GimpColorizeConfig*, %struct._GimpColorizeConfig** %config, align 8
  %hue = getelementptr inbounds %struct._GimpColorizeConfig, %struct._GimpColorizeConfig* %29, i32 0, i32 1
  %30 = load double, double* %hue, align 8
  %mul = fmul double %30, 3.600000e+02
  %call20 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %27, i32 0, i32 0, i8* %call19, i32 200, i32 4, double %mul, double 0.000000e+00, double 3.600000e+02, double 1.000000e+00, double 1.500000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call20, %struct._GtkObject** %data, align 8
  %31 = load %struct._GtkObject*, %struct._GtkObject** %data, align 8
  %32 = bitcast %struct._GtkObject* %31 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_adjustment_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call21)
  %33 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkAdjustment*
  %34 = load %struct._GimpColorizeTool*, %struct._GimpColorizeTool** %col_tool, align 8
  %hue_data = getelementptr inbounds %struct._GimpColorizeTool, %struct._GimpColorizeTool* %34, i32 0, i32 3
  store %struct._GtkAdjustment* %33, %struct._GtkAdjustment** %hue_data, align 8
  %35 = load %struct._GtkObject*, %struct._GtkObject** %data, align 8
  %36 = bitcast %struct._GtkObject* %35 to i8*
  %37 = load %struct._GimpColorizeTool*, %struct._GimpColorizeTool** %col_tool, align 8
  %38 = bitcast %struct._GimpColorizeTool* %37 to i8*
  %call23 = call i64 @g_signal_connect_data(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpColorizeTool*)* @colorize_hue_changed to void ()*), i8* %38, void (i8*, %struct._GClosure*)* null, i32 0)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_table_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call24)
  %41 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkTable*
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0)) #7
  %42 = load %struct._GimpColorizeTool*, %struct._GimpColorizeTool** %col_tool, align 8
  %config27 = getelementptr inbounds %struct._GimpColorizeTool, %struct._GimpColorizeTool* %42, i32 0, i32 1
  %43 = load %struct._GimpColorizeConfig*, %struct._GimpColorizeConfig** %config27, align 8
  %saturation = getelementptr inbounds %struct._GimpColorizeConfig, %struct._GimpColorizeConfig* %43, i32 0, i32 2
  %44 = load double, double* %saturation, align 8
  %mul28 = fmul double %44, 1.000000e+02
  %call29 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %41, i32 0, i32 1, i8* %call26, i32 200, i32 4, double %mul28, double 0.000000e+00, double 1.000000e+02, double 1.000000e+00, double 1.000000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call29, %struct._GtkObject** %data, align 8
  %45 = load %struct._GtkObject*, %struct._GtkObject** %data, align 8
  %46 = bitcast %struct._GtkObject* %45 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_adjustment_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call30)
  %47 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkAdjustment*
  %48 = load %struct._GimpColorizeTool*, %struct._GimpColorizeTool** %col_tool, align 8
  %saturation_data = getelementptr inbounds %struct._GimpColorizeTool, %struct._GimpColorizeTool* %48, i32 0, i32 4
  store %struct._GtkAdjustment* %47, %struct._GtkAdjustment** %saturation_data, align 8
  %49 = load %struct._GtkObject*, %struct._GtkObject** %data, align 8
  %50 = bitcast %struct._GtkObject* %49 to i8*
  %51 = load %struct._GimpColorizeTool*, %struct._GimpColorizeTool** %col_tool, align 8
  %52 = bitcast %struct._GimpColorizeTool* %51 to i8*
  %call32 = call i64 @g_signal_connect_data(i8* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpColorizeTool*)* @colorize_saturation_changed to void ()*), i8* %52, void (i8*, %struct._GClosure*)* null, i32 0)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_table_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call33)
  %55 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkTable*
  %call35 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0)) #7
  %56 = load %struct._GimpColorizeTool*, %struct._GimpColorizeTool** %col_tool, align 8
  %config36 = getelementptr inbounds %struct._GimpColorizeTool, %struct._GimpColorizeTool* %56, i32 0, i32 1
  %57 = load %struct._GimpColorizeConfig*, %struct._GimpColorizeConfig** %config36, align 8
  %lightness = getelementptr inbounds %struct._GimpColorizeConfig, %struct._GimpColorizeConfig* %57, i32 0, i32 3
  %58 = load double, double* %lightness, align 8
  %mul37 = fmul double %58, 1.000000e+02
  %call38 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %55, i32 0, i32 2, i8* %call35, i32 200, i32 4, double %mul37, double -1.000000e+02, double 1.000000e+02, double 1.000000e+00, double 1.000000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call38, %struct._GtkObject** %data, align 8
  %59 = load %struct._GtkObject*, %struct._GtkObject** %data, align 8
  %60 = bitcast %struct._GtkObject* %59 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_adjustment_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call39)
  %61 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkAdjustment*
  %62 = load %struct._GimpColorizeTool*, %struct._GimpColorizeTool** %col_tool, align 8
  %lightness_data = getelementptr inbounds %struct._GimpColorizeTool, %struct._GimpColorizeTool* %62, i32 0, i32 5
  store %struct._GtkAdjustment* %61, %struct._GtkAdjustment** %lightness_data, align 8
  %63 = load %struct._GtkObject*, %struct._GtkObject** %data, align 8
  %64 = bitcast %struct._GtkObject* %63 to i8*
  %65 = load %struct._GimpColorizeTool*, %struct._GimpColorizeTool** %col_tool, align 8
  %66 = bitcast %struct._GimpColorizeTool* %65 to i8*
  %call41 = call i64 @g_signal_connect_data(i8* %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpColorizeTool*)* @colorize_lightness_changed to void ()*), i8* %66, void (i8*, %struct._GClosure*)* null, i32 0)
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

declare void @gimp_image_map_tool_preview(%struct._GimpImageMapTool*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gegl_node_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_colorize_config_get_type() #2

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_colorize_tool_config_notify(%struct._GObject* %object, %struct._GParamSpec* %pspec, %struct._GimpColorizeTool* %col_tool) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %col_tool.addr = alloca %struct._GimpColorizeTool*, align 8
  %config = alloca %struct._GimpColorizeConfig*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpColorizeTool* %col_tool, %struct._GimpColorizeTool** %col_tool.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_colorize_config_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorizeConfig*
  store %struct._GimpColorizeConfig* %2, %struct._GimpColorizeConfig** %config, align 8
  %3 = load %struct._GimpColorizeTool*, %struct._GimpColorizeTool** %col_tool.addr, align 8
  %hue_data = getelementptr inbounds %struct._GimpColorizeTool, %struct._GimpColorizeTool* %3, i32 0, i32 3
  %4 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hue_data, align 8
  %tobool = icmp ne %struct._GtkAdjustment* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %5, i32 0, i32 1
  %6 = load i8*, i8** %name, align 8
  %call2 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)) #8
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.else, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %7 = load %struct._GimpColorizeTool*, %struct._GimpColorizeTool** %col_tool.addr, align 8
  %hue_data5 = getelementptr inbounds %struct._GimpColorizeTool, %struct._GimpColorizeTool* %7, i32 0, i32 3
  %8 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hue_data5, align 8
  %9 = load %struct._GimpColorizeConfig*, %struct._GimpColorizeConfig** %config, align 8
  %hue = getelementptr inbounds %struct._GimpColorizeConfig, %struct._GimpColorizeConfig* %9, i32 0, i32 1
  %10 = load double, double* %hue, align 8
  %mul = fmul double %10, 3.600000e+02
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %8, double %mul)
  br label %if.end.19

if.else:                                          ; preds = %if.end
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name6 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %11, i32 0, i32 1
  %12 = load i8*, i8** %name6, align 8
  %call7 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0)) #8
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.else.11, label %if.then.9

if.then.9:                                        ; preds = %if.else
  %13 = load %struct._GimpColorizeTool*, %struct._GimpColorizeTool** %col_tool.addr, align 8
  %saturation_data = getelementptr inbounds %struct._GimpColorizeTool, %struct._GimpColorizeTool* %13, i32 0, i32 4
  %14 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %saturation_data, align 8
  %15 = load %struct._GimpColorizeConfig*, %struct._GimpColorizeConfig** %config, align 8
  %saturation = getelementptr inbounds %struct._GimpColorizeConfig, %struct._GimpColorizeConfig* %15, i32 0, i32 2
  %16 = load double, double* %saturation, align 8
  %mul10 = fmul double %16, 1.000000e+02
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %14, double %mul10)
  br label %if.end.18

if.else.11:                                       ; preds = %if.else
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name12 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %17, i32 0, i32 1
  %18 = load i8*, i8** %name12, align 8
  %call13 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0)) #8
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.17, label %if.then.15

if.then.15:                                       ; preds = %if.else.11
  %19 = load %struct._GimpColorizeTool*, %struct._GimpColorizeTool** %col_tool.addr, align 8
  %lightness_data = getelementptr inbounds %struct._GimpColorizeTool, %struct._GimpColorizeTool* %19, i32 0, i32 5
  %20 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %lightness_data, align 8
  %21 = load %struct._GimpColorizeConfig*, %struct._GimpColorizeConfig** %config, align 8
  %lightness = getelementptr inbounds %struct._GimpColorizeConfig, %struct._GimpColorizeConfig* %21, i32 0, i32 3
  %22 = load double, double* %lightness, align 8
  %mul16 = fmul double %22, 1.000000e+02
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %20, double %mul16)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.else.11
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.9
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.4
  %23 = load %struct._GimpColorizeTool*, %struct._GimpColorizeTool** %col_tool.addr, align 8
  %24 = bitcast %struct._GimpColorizeTool* %23 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_image_map_tool_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call20)
  %25 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpImageMapTool*
  call void @gimp_image_map_tool_preview(%struct._GimpImageMapTool* %25)
  br label %return

return:                                           ; preds = %if.end.19, %if.then
  ret void
}

declare void @gegl_node_set(%struct._GeglNode*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

declare void @gimp_colorize_config_to_cruft(%struct._GimpColorizeConfig*, %struct._Colorize*) #1

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

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @colorize_hue_changed(%struct._GtkAdjustment* %adjustment, %struct._GimpColorizeTool* %col_tool) #3 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %col_tool.addr = alloca %struct._GimpColorizeTool*, align 8
  %value = alloca double, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store %struct._GimpColorizeTool* %col_tool, %struct._GimpColorizeTool** %col_tool.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %0)
  %div = fdiv double %call, 3.600000e+02
  store double %div, double* %value, align 8
  %1 = load %struct._GimpColorizeTool*, %struct._GimpColorizeTool** %col_tool.addr, align 8
  %config = getelementptr inbounds %struct._GimpColorizeTool, %struct._GimpColorizeTool* %1, i32 0, i32 1
  %2 = load %struct._GimpColorizeConfig*, %struct._GimpColorizeConfig** %config, align 8
  %hue = getelementptr inbounds %struct._GimpColorizeConfig, %struct._GimpColorizeConfig* %2, i32 0, i32 1
  %3 = load double, double* %hue, align 8
  %4 = load double, double* %value, align 8
  %cmp = fcmp une double %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpColorizeTool*, %struct._GimpColorizeTool** %col_tool.addr, align 8
  %config1 = getelementptr inbounds %struct._GimpColorizeTool, %struct._GimpColorizeTool* %5, i32 0, i32 1
  %6 = load %struct._GimpColorizeConfig*, %struct._GimpColorizeConfig** %config1, align 8
  %7 = bitcast %struct._GimpColorizeConfig* %6 to i8*
  %8 = load double, double* %value, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), double %8, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @colorize_saturation_changed(%struct._GtkAdjustment* %adjustment, %struct._GimpColorizeTool* %col_tool) #3 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %col_tool.addr = alloca %struct._GimpColorizeTool*, align 8
  %value = alloca double, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store %struct._GimpColorizeTool* %col_tool, %struct._GimpColorizeTool** %col_tool.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %0)
  %div = fdiv double %call, 1.000000e+02
  store double %div, double* %value, align 8
  %1 = load %struct._GimpColorizeTool*, %struct._GimpColorizeTool** %col_tool.addr, align 8
  %config = getelementptr inbounds %struct._GimpColorizeTool, %struct._GimpColorizeTool* %1, i32 0, i32 1
  %2 = load %struct._GimpColorizeConfig*, %struct._GimpColorizeConfig** %config, align 8
  %saturation = getelementptr inbounds %struct._GimpColorizeConfig, %struct._GimpColorizeConfig* %2, i32 0, i32 2
  %3 = load double, double* %saturation, align 8
  %4 = load double, double* %value, align 8
  %cmp = fcmp une double %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpColorizeTool*, %struct._GimpColorizeTool** %col_tool.addr, align 8
  %config1 = getelementptr inbounds %struct._GimpColorizeTool, %struct._GimpColorizeTool* %5, i32 0, i32 1
  %6 = load %struct._GimpColorizeConfig*, %struct._GimpColorizeConfig** %config1, align 8
  %7 = bitcast %struct._GimpColorizeConfig* %6 to i8*
  %8 = load double, double* %value, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), double %8, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @colorize_lightness_changed(%struct._GtkAdjustment* %adjustment, %struct._GimpColorizeTool* %col_tool) #3 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %col_tool.addr = alloca %struct._GimpColorizeTool*, align 8
  %value = alloca double, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store %struct._GimpColorizeTool* %col_tool, %struct._GimpColorizeTool** %col_tool.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %0)
  %div = fdiv double %call, 1.000000e+02
  store double %div, double* %value, align 8
  %1 = load %struct._GimpColorizeTool*, %struct._GimpColorizeTool** %col_tool.addr, align 8
  %config = getelementptr inbounds %struct._GimpColorizeTool, %struct._GimpColorizeTool* %1, i32 0, i32 1
  %2 = load %struct._GimpColorizeConfig*, %struct._GimpColorizeConfig** %config, align 8
  %lightness = getelementptr inbounds %struct._GimpColorizeConfig, %struct._GimpColorizeConfig* %2, i32 0, i32 3
  %3 = load double, double* %lightness, align 8
  %4 = load double, double* %value, align 8
  %cmp = fcmp une double %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpColorizeTool*, %struct._GimpColorizeTool** %col_tool.addr, align 8
  %config1 = getelementptr inbounds %struct._GimpColorizeTool, %struct._GimpColorizeTool* %5, i32 0, i32 1
  %6 = load %struct._GimpColorizeConfig*, %struct._GimpColorizeConfig** %config1, align 8
  %7 = bitcast %struct._GimpColorizeConfig* %6 to i8*
  %8 = load double, double* %value, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), double %8, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare noalias i8* @g_slice_alloc0(i64) #1

declare void @colorize_init(%struct._Colorize*) #1

declare void @colorize(%struct._Colorize*, %struct._PixelRegion*, %struct._PixelRegion*) #1

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
