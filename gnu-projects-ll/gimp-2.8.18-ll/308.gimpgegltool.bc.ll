; ModuleID = './app/tools/gimpgegltool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GHashTable = type opaque
%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpGeglToolClass = type { %struct._GimpImageMapToolClass }
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
%struct._GimpGeglTool = type { %struct._GimpImageMapTool, i8*, %struct._GimpObject*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpConfig = type opaque
%struct._GeglColor = type { %struct._GObject, %struct._GeglColorPrivate* }
%struct._GeglColorPrivate = type opaque
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GeglOperationClass = type { %struct._GObjectClass, i8*, i8*, %struct._GHashTable*, i64, void (%struct._GeglOperation*)*, void (%struct._GeglOperation*)*, { i64, i64 } (%struct._GeglOperation*)*, { i64, i64 } (%struct._GeglOperation*, i8*, %struct._GeglRectangle*)*, { i64, i64 } (%struct._GeglOperation*, i8*, %struct._GeglRectangle*)*, { i64, i64 } (%struct._GeglOperation*, %struct._GeglRectangle*)*, i32 (%struct._GeglOperation*, %struct._GeglOperationContext*, i8*, %struct._GeglRectangle*, i32)*, %struct._GeglNode* (%struct._GeglOperation*, i32, i32)*, [10 x i8*] }
%struct._GeglOperation = type { %struct._GObject, %struct._GeglNode* }
%struct._GeglRectangle = type { i32, i32, i32, i32 }
%struct._GeglOperationContext = type opaque
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkCellLayout = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GTypeInfo = type { i16, void (i8*)*, void (i8*)*, void (i8*, i8*)*, void (i8*, i8*)*, i8*, i16, i16, void (%struct._GTypeInstance*, i8*)*, %struct._GTypeValueTable* }
%struct._GTypeValueTable = type { void (%struct._GValue*)*, void (%struct._GValue*)*, void (%struct._GValue*, %struct._GValue*)*, i8* (%struct._GValue*)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)* }
%union._GTypeCValue = type opaque

@gimp_gegl_tool_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"GimpGeglTool\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"gimp-gegl-tool\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"GEGL Operation\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"GEGL Tool: Use an arbitrary GEGL operation\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"_GEGL Operation...\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"gimp-tool-gegl\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"gimp-gegl\00", align 1
@gimp_gegl_tool_parent_class = internal global i8* null, align 8
@GimpGeglTool_private_offset = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [50 x i8] c"GEGL operations do not operate on indexed layers.\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"_Operation:\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"gegl:\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"stock-id\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"Operation Settings\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"Select an operation from the list above\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"categories\00", align 1
@gimp_gegl_tool_operation_blacklisted.category_blacklist = internal constant [9 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0)], align 16
@.str.16 = private unnamed_addr constant [12 x i8] c"compositors\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"hidden\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"programming\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"transform\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"video\00", align 1
@gimp_gegl_tool_operation_blacklisted.name_blacklist = internal constant [12 x i8*] [i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0)], align 16
@.str.25 = private unnamed_addr constant [20 x i8] c"gegl:convert-format\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"gegl:introspect\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"gegl:path\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"gegl:text\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"gegl:layer\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"gegl:contrast-curve\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"gegl:fill-path\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"gegl:vector-stroke\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"gegl:lens-correct\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"gegl:hstack\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"gimp-\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"gimp:\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"notify\00", align 1
@gimp_gegl_tool_get_config.config_types = internal global %struct._GHashTable* null, align 8
@gimp_gegl_tool_get_config.config_info = internal constant %struct._GInterfaceInfo zeroinitializer, align 8
@.str.40 = private unnamed_addr constant [23 x i8] c"GimpGeglTool-%s-config\00", align 1
@.str.41 = private unnamed_addr constant [64 x i8] c"0123456789-abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"properties\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_gegl_tool_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_gegl_tool_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_gegl_tool_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 392, void (i8*, i8*)* bitcast (void (i8*)* @gimp_gegl_tool_class_intern_init to void (i8*, i8*)*), i32 432, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpGeglTool*)* @gimp_gegl_tool_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_gegl_tool_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_gegl_tool_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_map_tool_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_gegl_tool_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_gegl_tool_parent_class, align 8
  %1 = load i32, i32* @GimpGeglTool_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpGeglTool_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpGeglToolClass*
  call void @gimp_gegl_tool_class_init(%struct._GimpGeglToolClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_gegl_tool_init(%struct._GimpGeglTool* %tool) #3 {
entry:
  %tool.addr = alloca %struct._GimpGeglTool*, align 8
  store %struct._GimpGeglTool* %tool, %struct._GimpGeglTool** %tool.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_gegl_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, i8* %data) #3 {
entry:
  %callback.addr = alloca void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  %call = call i64 @gimp_gegl_tool_get_type() #7
  %call1 = call i64 @gimp_image_map_options_get_type() #7
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)) #5
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0)) #5
  %1 = load i8*, i8** %data.addr, align 8
  call void %0(i64 %call, i64 %call1, %struct._GtkWidget* (%struct._GimpToolOptions*)* null, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* %call2, i8* %call3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* %1)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_map_options_get_type() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_gegl_tool_class_init(%struct._GimpGeglToolClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpGeglToolClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %tool_class = alloca %struct._GimpToolClass*, align 8
  %im_tool_class = alloca %struct._GimpImageMapToolClass*, align 8
  store %struct._GimpGeglToolClass* %klass, %struct._GimpGeglToolClass** %klass.addr, align 8
  %0 = load %struct._GimpGeglToolClass*, %struct._GimpGeglToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpGeglToolClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpGeglToolClass*, %struct._GimpGeglToolClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpGeglToolClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_tool_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpToolClass*
  store %struct._GimpToolClass* %5, %struct._GimpToolClass** %tool_class, align 8
  %6 = load %struct._GimpGeglToolClass*, %struct._GimpGeglToolClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpGeglToolClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_image_map_tool_get_type() #7
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpImageMapToolClass*
  store %struct._GimpImageMapToolClass* %8, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_gegl_tool_finalize, void (%struct._GObject*)** %finalize, align 8
  %10 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %initialize = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %10, i32 0, i32 3
  store i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)* @gimp_gegl_tool_initialize, i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)** %initialize, align 8
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)) #5
  %11 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %dialog_desc = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %11, i32 0, i32 1
  store i8* %call5, i8** %dialog_desc, align 8
  %12 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %get_operation = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %12, i32 0, i32 6
  store %struct._GeglNode* (%struct._GimpImageMapTool*, %struct._GObject**)* @gimp_gegl_tool_get_operation, %struct._GeglNode* (%struct._GimpImageMapTool*, %struct._GObject**)** %get_operation, align 8
  %13 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %map = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %13, i32 0, i32 7
  store void (%struct._GimpImageMapTool*)* @gimp_gegl_tool_map, void (%struct._GimpImageMapTool*)** %map, align 8
  %14 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %dialog = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %14, i32 0, i32 8
  store void (%struct._GimpImageMapTool*)* @gimp_gegl_tool_dialog, void (%struct._GimpImageMapTool*)** %dialog, align 8
  %15 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %reset = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %15, i32 0, i32 9
  store void (%struct._GimpImageMapTool*)* @gimp_gegl_tool_reset, void (%struct._GimpImageMapTool*)** %reset, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_gegl_tool_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %tool = alloca %struct._GimpGeglTool*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gegl_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGeglTool*
  store %struct._GimpGeglTool* %2, %struct._GimpGeglTool** %tool, align 8
  %3 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool, align 8
  %operation = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %3, i32 0, i32 1
  %4 = load i8*, i8** %operation, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool, align 8
  %operation2 = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %5, i32 0, i32 1
  %6 = load i8*, i8** %operation2, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool, align 8
  %operation3 = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %7, i32 0, i32 1
  store i8* null, i8** %operation3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool, align 8
  %config = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %8, i32 0, i32 2
  %9 = load %struct._GimpObject*, %struct._GimpObject** %config, align 8
  %tobool4 = icmp ne %struct._GimpObject* %9, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %10 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool, align 8
  %config6 = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %10, i32 0, i32 2
  %11 = load %struct._GimpObject*, %struct._GimpObject** %config6, align 8
  %12 = bitcast %struct._GimpObject* %11 to i8*
  call void @g_object_unref(i8* %12)
  %13 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool, align 8
  %config7 = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %13, i32 0, i32 2
  store %struct._GimpObject* null, %struct._GimpObject** %config7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %14 = load i8*, i8** @gimp_gegl_tool_parent_class, align 8
  %15 = bitcast i8* %14 to %struct._GTypeClass*
  %call9 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %15, i64 80)
  %16 = bitcast %struct._GTypeClass* %call9 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %16, i32 0, i32 6
  %17 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %18 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %17(%struct._GObject* %18)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_gegl_tool_initialize(%struct._GimpTool* %tool, %struct._GimpDisplay* %display, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %tool.addr = alloca %struct._GimpTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %g_tool = alloca %struct._GimpGeglTool*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gegl_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGeglTool*
  store %struct._GimpGeglTool* %2, %struct._GimpGeglTool** %g_tool, align 8
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
  %call7 = call i32 @gimp_error_quark() #7
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i32 0, i32 0)) #5
  call void @g_set_error_literal(%struct._GError** %7, i32 %call7, i32 0, i8* %call8)
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %8 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %g_tool, align 8
  %config = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %8, i32 0, i32 2
  %9 = load %struct._GimpObject*, %struct._GimpObject** %config, align 8
  %tobool10 = icmp ne %struct._GimpObject* %9, null
  br i1 %tobool10, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %if.end.9
  %10 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %g_tool, align 8
  %config12 = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %10, i32 0, i32 2
  %11 = load %struct._GimpObject*, %struct._GimpObject** %config12, align 8
  %12 = bitcast %struct._GimpObject* %11 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_config_interface_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call13)
  %13 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpConfig*
  call void @gimp_config_reset(%struct._GimpConfig* %13)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.11, %if.end.9
  %14 = load i8*, i8** @gimp_gegl_tool_parent_class, align 8
  %15 = bitcast i8* %14 to %struct._GTypeClass*
  %call16 = call i64 @gimp_tool_get_type() #7
  %call17 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %15, i64 %call16)
  %16 = bitcast %struct._GTypeClass* %call17 to %struct._GimpToolClass*
  %initialize = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %16, i32 0, i32 3
  %17 = load i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)*, i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)** %initialize, align 8
  %18 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %19 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call18 = call i32 %17(%struct._GimpTool* %18, %struct._GimpDisplay* %19, %struct._GError** %20)
  store i32 %call18, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.6, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal %struct._GeglNode* @gimp_gegl_tool_get_operation(%struct._GimpImageMapTool* %im_tool, %struct._GObject** %config) #3 {
entry:
  %im_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %config.addr = alloca %struct._GObject**, align 8
  store %struct._GimpImageMapTool* %im_tool, %struct._GimpImageMapTool** %im_tool.addr, align 8
  store %struct._GObject** %config, %struct._GObject*** %config.addr, align 8
  %call = call i64 @gegl_node_get_type() #7
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GeglNode*
  ret %struct._GeglNode* %0
}

; Function Attrs: nounwind uwtable
define internal void @gimp_gegl_tool_map(%struct._GimpImageMapTool* %image_map_tool) #3 {
entry:
  %image_map_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %tool = alloca %struct._GimpGeglTool*, align 8
  %pspecs = alloca %struct._GParamSpec**, align 8
  %n_pspecs = alloca i32, align 4
  %i = alloca i32, align 4
  %gegl_pspec = alloca %struct._GParamSpec*, align 8
  %gimp_pspec = alloca %struct._GParamSpec*, align 8
  %value = alloca %struct._GValue, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %gegl_color = alloca %struct._GeglColor*, align 8
  %gimp_color = alloca %struct._GimpRGB, align 8
  store %struct._GimpImageMapTool* %image_map_tool, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gegl_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGeglTool*
  store %struct._GimpGeglTool* %2, %struct._GimpGeglTool** %tool, align 8
  %3 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool, align 8
  %config = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %3, i32 0, i32 2
  %4 = load %struct._GimpObject*, %struct._GimpObject** %config, align 8
  %tobool = icmp ne %struct._GimpObject* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool, align 8
  %operation = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %5, i32 0, i32 1
  %6 = load i8*, i8** %operation, align 8
  %call2 = call %struct._GParamSpec** @gegl_operation_list_properties(i8* %6, i32* %n_pspecs)
  store %struct._GParamSpec** %call2, %struct._GParamSpec*** %pspecs, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %n_pspecs, align 4
  %cmp = icmp ult i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct._GParamSpec**, %struct._GParamSpec*** %pspecs, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %10, i64 %idxprom
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  store %struct._GParamSpec* %11, %struct._GParamSpec** %gegl_pspec, align 8
  %12 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool, align 8
  %config3 = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %12, i32 0, i32 2
  %13 = load %struct._GimpObject*, %struct._GimpObject** %config3, align 8
  %14 = bitcast %struct._GimpObject* %13 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GObjectClass*
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %gegl_pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %17, i32 0, i32 1
  %18 = load i8*, i8** %name, align 8
  %call4 = call %struct._GParamSpec* @g_object_class_find_property(%struct._GObjectClass* %16, i8* %18)
  store %struct._GParamSpec* %call4, %struct._GParamSpec** %gimp_pspec, align 8
  %19 = load %struct._GParamSpec*, %struct._GParamSpec** %gimp_pspec, align 8
  %tobool5 = icmp ne %struct._GParamSpec* %19, null
  br i1 %tobool5, label %if.then.6, label %if.end.33

if.then.6:                                        ; preds = %for.body
  %20 = bitcast %struct._GValue* %value to i8*
  call void @llvm.memset.p0i8.i64(i8* %20, i8 0, i64 24, i32 8, i1 false)
  %21 = load %struct._GParamSpec*, %struct._GParamSpec** %gimp_pspec, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %21, i32 0, i32 3
  %22 = load i64, i64* %value_type, align 8
  %call7 = call %struct._GValue* @g_value_init(%struct._GValue* %value, i64 %22)
  %23 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool, align 8
  %config8 = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %23, i32 0, i32 2
  %24 = load %struct._GimpObject*, %struct._GimpObject** %config8, align 8
  %25 = bitcast %struct._GimpObject* %24 to %struct._GTypeInstance*
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 80)
  %26 = bitcast %struct._GTypeInstance* %call9 to %struct._GObject*
  %27 = load %struct._GParamSpec*, %struct._GParamSpec** %gimp_pspec, align 8
  %name10 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %27, i32 0, i32 1
  %28 = load i8*, i8** %name10, align 8
  call void @g_object_get_property(%struct._GObject* %26, i8* %28, %struct._GValue* %value)
  %29 = load %struct._GParamSpec*, %struct._GParamSpec** %gimp_pspec, align 8
  %30 = bitcast %struct._GParamSpec* %29 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %30, %struct._GTypeInstance** %__inst, align 8
  %call11 = call i64 @gimp_param_rgb_get_type() #7
  store i64 %call11, i64* %__t, align 8
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool12 = icmp ne %struct._GTypeInstance* %31, null
  br i1 %tobool12, label %if.else, label %if.then.13

if.then.13:                                       ; preds = %if.then.6
  store i32 0, i32* %__r, align 4
  br label %if.end.22

if.else:                                          ; preds = %if.then.6
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class14 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class14, align 8
  %tobool15 = icmp ne %struct._GTypeClass* %33, null
  br i1 %tobool15, label %land.lhs.true, label %if.else.19

land.lhs.true:                                    ; preds = %if.else
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class16 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class16, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %35, i32 0, i32 0
  %36 = load i64, i64* %g_type, align 8
  %37 = load i64, i64* %__t, align 8
  %cmp17 = icmp eq i64 %36, %37
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.21

if.else.19:                                       ; preds = %land.lhs.true, %if.else
  %38 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %39 = load i64, i64* %__t, align 8
  %call20 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %38, i64 %39) #8
  store i32 %call20, i32* %__r, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.19, %if.then.18
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.13
  %40 = load i32, i32* %__r, align 4
  store i32 %40, i32* %tmp
  %41 = load i32, i32* %tmp
  %tobool23 = icmp ne i32 %41, 0
  br i1 %tobool23, label %if.then.24, label %if.end.30

if.then.24:                                       ; preds = %if.end.22
  %call26 = call %struct._GeglColor* @gegl_color_new(i8* null)
  store %struct._GeglColor* %call26, %struct._GeglColor** %gegl_color, align 8
  call void @gimp_value_get_rgb(%struct._GValue* %value, %struct._GimpRGB* %gimp_color)
  call void @g_value_unset(%struct._GValue* %value)
  %42 = load %struct._GeglColor*, %struct._GeglColor** %gegl_color, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %gimp_color, i32 0, i32 0
  %43 = load double, double* %r, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %gimp_color, i32 0, i32 1
  %44 = load double, double* %g, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %gimp_color, i32 0, i32 2
  %45 = load double, double* %b, align 8
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %gimp_color, i32 0, i32 3
  %46 = load double, double* %a, align 8
  call void @gegl_color_set_rgba(%struct._GeglColor* %42, double %43, double %44, double %45, double %46)
  %47 = load %struct._GParamSpec*, %struct._GParamSpec** %gegl_pspec, align 8
  %value_type28 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %47, i32 0, i32 3
  %48 = load i64, i64* %value_type28, align 8
  %call29 = call %struct._GValue* @g_value_init(%struct._GValue* %value, i64 %48)
  %49 = load %struct._GeglColor*, %struct._GeglColor** %gegl_color, align 8
  %50 = bitcast %struct._GeglColor* %49 to i8*
  call void @g_value_take_object(%struct._GValue* %value, i8* %50)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.24, %if.end.22
  %51 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %operation31 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %51, i32 0, i32 2
  %52 = load %struct._GeglNode*, %struct._GeglNode** %operation31, align 8
  %53 = load %struct._GParamSpec*, %struct._GParamSpec** %gegl_pspec, align 8
  %name32 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %53, i32 0, i32 1
  %54 = load i8*, i8** %name32, align 8
  call void @gegl_node_set_property(%struct._GeglNode* %52, i8* %54, %struct._GValue* %value)
  call void @g_value_unset(%struct._GValue* %value)
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.30, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %55 = load i32, i32* %i, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %56 = load %struct._GParamSpec**, %struct._GParamSpec*** %pspecs, align 8
  %57 = bitcast %struct._GParamSpec** %56 to i8*
  call void @g_free(i8* %57)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_gegl_tool_dialog(%struct._GimpImageMapTool* %image_map_tool) #3 {
entry:
  %image_map_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %tool = alloca %struct._GimpGeglTool*, align 8
  %store = alloca %struct._GtkListStore*, align 8
  %cell = alloca %struct._GtkCellRenderer*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %opclasses = alloca %struct._GList*, align 8
  %iter = alloca %struct._GList*, align 8
  %opclass = alloca %struct._GeglOperationClass*, align 8
  %stock_id = alloca i8*, align 8
  %label14 = alloca i8*, align 8
  store %struct._GimpImageMapTool* %image_map_tool, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gegl_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGeglTool*
  store %struct._GimpGeglTool* %2, %struct._GimpGeglTool** %tool, align 8
  %3 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %call2 = call %struct._GtkWidget* @gimp_image_map_tool_dialog_get_vbox(%struct._GimpImageMapTool* %3)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %main_vbox, align 8
  %call3 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %hbox, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_box_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkBox*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %6, %struct._GtkWidget* %7, i32 0, i32 0, i32 0)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %8)
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0)) #5
  %call7 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call6)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %label, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_box_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call8)
  %11 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkBox*
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %11, %struct._GtkWidget* %12, i32 0, i32 0, i32 0)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %13)
  %call10 = call %struct._GtkListStore* (i32, ...) @gtk_list_store_new(i32 3, i64 64, i64 64, i64 64)
  store %struct._GtkListStore* %call10, %struct._GtkListStore** %store, align 8
  %call11 = call %struct._GList* @gimp_get_geglopclasses()
  store %struct._GList* %call11, %struct._GList** %opclasses, align 8
  %14 = load %struct._GList*, %struct._GList** %opclasses, align 8
  store %struct._GList* %14, %struct._GList** %iter, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %15 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool = icmp ne %struct._GList* %15, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct._GList*, %struct._GList** %iter, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %16, i32 0, i32 0
  %17 = load i8*, i8** %data, align 8
  %18 = bitcast i8* %17 to %struct._GTypeClass*
  %call12 = call i64 @gegl_operation_get_type() #7
  %call13 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %18, i64 %call12)
  %19 = bitcast %struct._GTypeClass* %call13 to %struct._GeglOperationClass*
  store %struct._GeglOperationClass* %19, %struct._GeglOperationClass** %opclass, align 8
  %20 = load %struct._GeglOperationClass*, %struct._GeglOperationClass** %opclass, align 8
  %name = getelementptr inbounds %struct._GeglOperationClass, %struct._GeglOperationClass* %20, i32 0, i32 1
  %21 = load i8*, i8** %name, align 8
  %call15 = call i32 @g_str_has_prefix(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0))
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %22 = load %struct._GeglOperationClass*, %struct._GeglOperationClass** %opclass, align 8
  %name17 = getelementptr inbounds %struct._GeglOperationClass, %struct._GeglOperationClass* %22, i32 0, i32 1
  %23 = load i8*, i8** %name17, align 8
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 5
  store i8* %add.ptr, i8** %label14, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8** %stock_id, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %24 = load %struct._GeglOperationClass*, %struct._GeglOperationClass** %opclass, align 8
  %name18 = getelementptr inbounds %struct._GeglOperationClass, %struct._GeglOperationClass* %24, i32 0, i32 1
  %25 = load i8*, i8** %name18, align 8
  store i8* %25, i8** %label14, align 8
  store i8* null, i8** %stock_id, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %26 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %27 = load %struct._GeglOperationClass*, %struct._GeglOperationClass** %opclass, align 8
  %name19 = getelementptr inbounds %struct._GeglOperationClass, %struct._GeglOperationClass* %27, i32 0, i32 1
  %28 = load i8*, i8** %name19, align 8
  %29 = load i8*, i8** %label14, align 8
  %30 = load i8*, i8** %stock_id, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, i32, ...) @gtk_list_store_insert_with_values(%struct._GtkListStore* %26, %struct._GtkTreeIter* null, i32 -1, i32 0, i8* %28, i32 1, i8* %29, i32 2, i8* %30, i32 -1)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %31 = load %struct._GList*, %struct._GList** %iter, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %31, i32 0, i32 1
  %32 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %32, %struct._GList** %iter, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load %struct._GList*, %struct._GList** %opclasses, align 8
  call void @g_list_free(%struct._GList* %33)
  %34 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %35 = bitcast %struct._GtkListStore* %34 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_tree_model_get_type() #7
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call20)
  %36 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkTreeModel*
  %call22 = call %struct._GtkWidget* @gtk_combo_box_new_with_model(%struct._GtkTreeModel* %36)
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %combo, align 8
  %37 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %38 = bitcast %struct._GtkListStore* %37 to i8*
  call void @g_object_unref(i8* %38)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #7
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call23)
  %41 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %41, %struct._GtkWidget* %42, i32 1, i32 1, i32 0)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %43)
  %call25 = call %struct._GtkCellRenderer* @gtk_cell_renderer_pixbuf_new()
  store %struct._GtkCellRenderer* %call25, %struct._GtkCellRenderer** %cell, align 8
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_cell_layout_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call26)
  %46 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkCellLayout*
  %47 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void @gtk_cell_layout_pack_start(%struct._GtkCellLayout* %46, %struct._GtkCellRenderer* %47, i32 0)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_cell_layout_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call28)
  %50 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkCellLayout*
  %51 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void @gtk_cell_layout_add_attribute(%struct._GtkCellLayout* %50, %struct._GtkCellRenderer* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 2)
  %call30 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  store %struct._GtkCellRenderer* %call30, %struct._GtkCellRenderer** %cell, align 8
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_cell_layout_get_type() #7
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call31)
  %54 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkCellLayout*
  %55 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void @gtk_cell_layout_pack_start(%struct._GtkCellLayout* %54, %struct._GtkCellRenderer* %55, i32 1)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_cell_layout_get_type() #7
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call33)
  %58 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkCellLayout*
  %59 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void @gtk_cell_layout_add_attribute(%struct._GtkCellLayout* %58, %struct._GtkCellRenderer* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 1)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %61 = bitcast %struct._GtkWidget* %60 to i8*
  %62 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool, align 8
  %63 = bitcast %struct._GimpGeglTool* %62 to i8*
  %call35 = call i64 @g_signal_connect_data(i8* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpGeglTool*)* @gimp_gegl_tool_operation_changed to void ()*), i8* %63, void (i8*, %struct._GClosure*)* null, i32 0)
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %65 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool, align 8
  %operation_combo = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %65, i32 0, i32 3
  store %struct._GtkWidget* %64, %struct._GtkWidget** %operation_combo, align 8
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_label_get_type() #7
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call36)
  %68 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkLabel*
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %68, %struct._GtkWidget* %69)
  %call38 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0)) #5
  %call39 = call %struct._GtkWidget* @gimp_frame_new(i8* %call38)
  %70 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool, align 8
  %options_frame = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %70, i32 0, i32 4
  store %struct._GtkWidget* %call39, %struct._GtkWidget** %options_frame, align 8
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %72 = bitcast %struct._GtkWidget* %71 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_box_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call40)
  %73 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkBox*
  %74 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool, align 8
  %options_frame42 = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %74, i32 0, i32 4
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %options_frame42, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %73, %struct._GtkWidget* %75, i32 0, i32 0, i32 0)
  %76 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool, align 8
  %options_frame43 = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %76, i32 0, i32 4
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %options_frame43, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %77)
  %call44 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i32 0, i32 0)) #5
  %call45 = call %struct._GtkWidget* @gtk_label_new(i8* %call44)
  %78 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool, align 8
  %options_table = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %78, i32 0, i32 5
  store %struct._GtkWidget* %call45, %struct._GtkWidget** %options_table, align 8
  %79 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool, align 8
  %options_table46 = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %79, i32 0, i32 5
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %options_table46, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_label_get_type() #7
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call47)
  %82 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %82, i32 3, i32 2, i32 -1)
  %83 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool, align 8
  %options_table49 = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %83, i32 0, i32 5
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %options_table49, align 8
  %85 = bitcast %struct._GtkWidget* %84 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_misc_get_type() #7
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call50)
  %86 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkMisc*
  call void @gtk_misc_set_padding(%struct._GtkMisc* %86, i32 0, i32 4)
  %87 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool, align 8
  %options_frame52 = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %87, i32 0, i32 4
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %options_frame52, align 8
  %89 = bitcast %struct._GtkWidget* %88 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_container_get_type() #7
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call53)
  %90 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkContainer*
  %91 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool, align 8
  %options_table55 = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %91, i32 0, i32 5
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %options_table55, align 8
  call void @gtk_container_add(%struct._GtkContainer* %90, %struct._GtkWidget* %92)
  %93 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool, align 8
  %options_table56 = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %93, i32 0, i32 5
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %options_table56, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %94)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_gegl_tool_reset(%struct._GimpImageMapTool* %image_map_tool) #3 {
entry:
  %image_map_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %tool = alloca %struct._GimpGeglTool*, align 8
  store %struct._GimpImageMapTool* %image_map_tool, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gegl_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGeglTool*
  store %struct._GimpGeglTool* %2, %struct._GimpGeglTool** %tool, align 8
  %3 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool, align 8
  %config = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %3, i32 0, i32 2
  %4 = load %struct._GimpObject*, %struct._GimpObject** %config, align 8
  %tobool = icmp ne %struct._GimpObject* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool, align 8
  %config2 = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %5, i32 0, i32 2
  %6 = load %struct._GimpObject*, %struct._GimpObject** %config2, align 8
  %7 = bitcast %struct._GimpObject* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_config_interface_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpConfig*
  call void @gimp_config_reset(%struct._GimpConfig* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @g_free(i8*) #1

declare void @g_object_unref(i8*) #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #1

declare i32 @gimp_drawable_is_indexed(%struct._GimpDrawable*) #1

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_error_quark() #2

declare void @gimp_config_reset(%struct._GimpConfig*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gegl_node_get_type() #2

declare %struct._GParamSpec** @gegl_operation_list_properties(i8*, i32*) #1

declare %struct._GParamSpec* @g_object_class_find_property(%struct._GObjectClass*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare %struct._GValue* @g_value_init(%struct._GValue*, i64) #1

declare void @g_object_get_property(%struct._GObject*, i8*, %struct._GValue*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_param_rgb_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #6

declare %struct._GeglColor* @gegl_color_new(i8*) #1

declare void @gimp_value_get_rgb(%struct._GValue*, %struct._GimpRGB*) #1

declare void @g_value_unset(%struct._GValue*) #1

declare void @gegl_color_set_rgba(%struct._GeglColor*, double, double, double, double) #1

declare void @g_value_take_object(%struct._GValue*, i8*) #1

declare void @gegl_node_set_property(%struct._GeglNode*, i8*, %struct._GValue*) #1

declare %struct._GtkWidget* @gimp_image_map_tool_dialog_get_vbox(%struct._GimpImageMapTool*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

declare %struct._GtkListStore* @gtk_list_store_new(i32, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._GList* @gimp_get_geglopclasses() #3 {
entry:
  %opclasses = alloca %struct._GList*, align 8
  %call = call i64 @gegl_operation_get_type() #7
  %call1 = call %struct._GList* @gimp_get_subtype_classes(i64 %call, %struct._GList* null)
  store %struct._GList* %call1, %struct._GList** %opclasses, align 8
  %0 = load %struct._GList*, %struct._GList** %opclasses, align 8
  %call2 = call %struct._GList* @g_list_sort(%struct._GList* %0, i32 (i8*, i8*)* bitcast (i32 (%struct._GeglOperationClass*, %struct._GeglOperationClass*)* @gimp_gegl_tool_compare_operation_names to i32 (i8*, i8*)*))
  store %struct._GList* %call2, %struct._GList** %opclasses, align 8
  %1 = load %struct._GList*, %struct._GList** %opclasses, align 8
  ret %struct._GList* %1
}

; Function Attrs: nounwind readnone
declare i64 @gegl_operation_get_type() #2

declare i32 @g_str_has_prefix(i8*, i8*) #1

declare void @gtk_list_store_insert_with_values(%struct._GtkListStore*, %struct._GtkTreeIter*, i32, ...) #1

declare void @g_list_free(%struct._GList*) #1

declare %struct._GtkWidget* @gtk_combo_box_new_with_model(%struct._GtkTreeModel*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #2

declare %struct._GtkCellRenderer* @gtk_cell_renderer_pixbuf_new() #1

declare void @gtk_cell_layout_pack_start(%struct._GtkCellLayout*, %struct._GtkCellRenderer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_cell_layout_get_type() #2

declare void @gtk_cell_layout_add_attribute(%struct._GtkCellLayout*, %struct._GtkCellRenderer*, i8*, i32) #1

declare %struct._GtkCellRenderer* @gtk_cell_renderer_text_new() #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_gegl_tool_operation_changed(%struct._GtkWidget* %widget, %struct._GimpGeglTool* %tool) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %tool.addr = alloca %struct._GimpGeglTool*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpGeglTool* %tool, %struct._GimpGeglTool** %tool.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_combo_box_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkComboBox*
  %call2 = call i32 @gtk_combo_box_get_active_iter(%struct._GtkComboBox* %2, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_combo_box_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkComboBox*
  %call5 = call %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox* %5)
  store %struct._GtkTreeModel* %call5, %struct._GtkTreeModel** %model, align 8
  %6 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool.addr, align 8
  %operation = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %6, i32 0, i32 1
  %7 = load i8*, i8** %operation, align 8
  %tobool6 = icmp ne i8* %7, null
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %8 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool.addr, align 8
  %operation8 = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %8, i32 0, i32 1
  %9 = load i8*, i8** %operation8, align 8
  call void @g_free(i8* %9)
  %10 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool.addr, align 8
  %operation9 = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %10, i32 0, i32 1
  store i8* null, i8** %operation9, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.end
  %11 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool.addr, align 8
  %config = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %11, i32 0, i32 2
  %12 = load %struct._GimpObject*, %struct._GimpObject** %config, align 8
  %tobool11 = icmp ne %struct._GimpObject* %12, null
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.end.10
  %13 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool.addr, align 8
  %config13 = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %13, i32 0, i32 2
  %14 = load %struct._GimpObject*, %struct._GimpObject** %config13, align 8
  %15 = bitcast %struct._GimpObject* %14 to i8*
  call void @g_object_unref(i8* %15)
  %16 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool.addr, align 8
  %config14 = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %16, i32 0, i32 2
  store %struct._GimpObject* null, %struct._GimpObject** %config14, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %if.end.10
  %17 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %18 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool.addr, align 8
  %operation16 = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %18, i32 0, i32 1
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %17, %struct._GtkTreeIter* %iter, i32 0, i8** %operation16, i32 -1)
  %19 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool.addr, align 8
  %operation17 = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %19, i32 0, i32 1
  %20 = load i8*, i8** %operation17, align 8
  %tobool18 = icmp ne i8* %20, null
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.end.15
  br label %return

if.end.20:                                        ; preds = %if.end.15
  %21 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool.addr, align 8
  %22 = bitcast %struct._GimpGeglTool* %21 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_image_map_tool_get_type() #7
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call21)
  %23 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpImageMapTool*
  %image_map = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %23, i32 0, i32 7
  %24 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %tobool23 = icmp ne %struct._GimpImageMap* %24, null
  br i1 %tobool23, label %if.then.24, label %if.end.34

if.then.24:                                       ; preds = %if.end.20
  %25 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool.addr, align 8
  %26 = bitcast %struct._GimpGeglTool* %25 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_image_map_tool_get_type() #7
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call25)
  %27 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpImageMapTool*
  %image_map27 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %27, i32 0, i32 7
  %28 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map27, align 8
  call void @gimp_image_map_clear(%struct._GimpImageMap* %28)
  %29 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool.addr, align 8
  %30 = bitcast %struct._GimpGeglTool* %29 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_image_map_tool_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call28)
  %31 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpImageMapTool*
  %image_map30 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %31, i32 0, i32 7
  %32 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map30, align 8
  %33 = bitcast %struct._GimpImageMap* %32 to i8*
  call void @g_object_unref(i8* %33)
  %34 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool.addr, align 8
  %35 = bitcast %struct._GimpGeglTool* %34 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_image_map_tool_get_type() #7
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call31)
  %36 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpImageMapTool*
  %image_map33 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %36, i32 0, i32 7
  store %struct._GimpImageMap* null, %struct._GimpImageMap** %image_map33, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.24, %if.end.20
  %37 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool.addr, align 8
  %38 = bitcast %struct._GimpGeglTool* %37 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_image_map_tool_get_type() #7
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call35)
  %39 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpImageMapTool*
  %operation37 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %39, i32 0, i32 2
  %40 = load %struct._GeglNode*, %struct._GeglNode** %operation37, align 8
  %41 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool.addr, align 8
  %operation38 = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %41, i32 0, i32 1
  %42 = load i8*, i8** %operation38, align 8
  call void (%struct._GeglNode*, i8*, ...) @gegl_node_set(%struct._GeglNode* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i8* %42, i8* null)
  %43 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool.addr, align 8
  %44 = bitcast %struct._GimpGeglTool* %43 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_image_map_tool_get_type() #7
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call39)
  %45 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpImageMapTool*
  call void @gimp_image_map_tool_create_map(%struct._GimpImageMapTool* %45)
  %46 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool.addr, align 8
  %call41 = call %struct._GimpObject* @gimp_gegl_tool_get_config(%struct._GimpGeglTool* %46)
  %47 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool.addr, align 8
  %config42 = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %47, i32 0, i32 2
  store %struct._GimpObject* %call41, %struct._GimpObject** %config42, align 8
  %48 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool.addr, align 8
  %options_table = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %48, i32 0, i32 5
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %options_table, align 8
  %tobool43 = icmp ne %struct._GtkWidget* %49, null
  br i1 %tobool43, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %if.end.34
  %50 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool.addr, align 8
  %options_table45 = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %50, i32 0, i32 5
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %options_table45, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %51)
  %52 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool.addr, align 8
  %options_table46 = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %52, i32 0, i32 5
  store %struct._GtkWidget* null, %struct._GtkWidget** %options_table46, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.44, %if.end.34
  %53 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool.addr, align 8
  %config48 = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %53, i32 0, i32 2
  %54 = load %struct._GimpObject*, %struct._GimpObject** %config48, align 8
  %tobool49 = icmp ne %struct._GimpObject* %54, null
  br i1 %tobool49, label %if.then.50, label %if.end.68

if.then.50:                                       ; preds = %if.end.47
  %55 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool.addr, align 8
  %config51 = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %55, i32 0, i32 2
  %56 = load %struct._GimpObject*, %struct._GimpObject** %config51, align 8
  %57 = bitcast %struct._GimpObject* %56 to i8*
  %58 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool.addr, align 8
  %59 = bitcast %struct._GimpGeglTool* %58 to %struct._GTypeInstance*
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 80)
  %60 = bitcast %struct._GTypeInstance* %call52 to %struct._GObject*
  %61 = bitcast %struct._GObject* %60 to i8*
  %call53 = call i64 @g_signal_connect_object(i8* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpGeglTool*)* @gimp_gegl_tool_config_notify to void ()*), i8* %61, i32 0)
  %62 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool.addr, align 8
  %config54 = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %62, i32 0, i32 2
  %63 = load %struct._GimpObject*, %struct._GimpObject** %config54, align 8
  %64 = bitcast %struct._GimpObject* %63 to %struct._GTypeInstance*
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 80)
  %65 = bitcast %struct._GTypeInstance* %call55 to %struct._GObject*
  %66 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool.addr, align 8
  %config56 = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %66, i32 0, i32 2
  %67 = load %struct._GimpObject*, %struct._GimpObject** %config56, align 8
  %68 = bitcast %struct._GimpObject* %67 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %68, i32 0, i32 0
  %69 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %69, i32 0, i32 0
  %70 = load i64, i64* %g_type, align 8
  %71 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool.addr, align 8
  %72 = bitcast %struct._GimpGeglTool* %71 to %struct._GTypeInstance*
  %call57 = call i64 @gimp_tool_get_type() #7
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call57)
  %73 = bitcast %struct._GTypeInstance* %call58 to %struct._GimpTool*
  %call59 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %73)
  %74 = bitcast %struct._GimpToolOptions* %call59 to %struct._GTypeInstance*
  %call60 = call i64 @gimp_context_get_type() #7
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call60)
  %75 = bitcast %struct._GTypeInstance* %call61 to %struct._GimpContext*
  %call62 = call %struct._GtkWidget* @gimp_prop_table_new(%struct._GObject* %65, i64 %70, %struct._GimpContext* %75)
  %76 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool.addr, align 8
  %options_table63 = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %76, i32 0, i32 5
  store %struct._GtkWidget* %call62, %struct._GtkWidget** %options_table63, align 8
  %77 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool.addr, align 8
  %options_frame = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %77, i32 0, i32 4
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %options_frame, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_container_get_type() #7
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call64)
  %80 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkContainer*
  %81 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool.addr, align 8
  %options_table66 = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %81, i32 0, i32 5
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %options_table66, align 8
  call void @gtk_container_add(%struct._GtkContainer* %80, %struct._GtkWidget* %82)
  %83 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool.addr, align 8
  %options_table67 = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %83, i32 0, i32 5
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %options_table67, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %84)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.50, %if.end.47
  %85 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool.addr, align 8
  %86 = bitcast %struct._GimpGeglTool* %85 to %struct._GTypeInstance*
  %call69 = call i64 @gimp_image_map_tool_get_type() #7
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call69)
  %87 = bitcast %struct._GTypeInstance* %call70 to %struct._GimpImageMapTool*
  call void @gimp_image_map_tool_preview(%struct._GimpImageMapTool* %87)
  br label %return

return:                                           ; preds = %if.end.68, %if.then.19, %if.then
  ret void
}

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gimp_label_set_attributes(%struct._GtkLabel*, ...) #1

declare void @gtk_misc_set_padding(%struct._GtkMisc*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #2

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GList* @gimp_get_subtype_classes(i64 %type, %struct._GList* %classes) #3 {
entry:
  %retval = alloca %struct._GList*, align 8
  %type.addr = alloca i64, align 8
  %classes.addr = alloca %struct._GList*, align 8
  %klass = alloca %struct._GeglOperationClass*, align 8
  %ops = alloca i64*, align 8
  %n_ops = alloca i32, align 4
  %i = alloca i32, align 4
  store i64 %type, i64* %type.addr, align 8
  store %struct._GList* %classes, %struct._GList** %classes.addr, align 8
  %0 = load i64, i64* %type.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._GList*, %struct._GList** %classes.addr, align 8
  store %struct._GList* %1, %struct._GList** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %type.addr, align 8
  %call = call i8* @g_type_class_ref(i64 %2)
  %3 = bitcast i8* %call to %struct._GTypeClass*
  %call1 = call i64 @gegl_operation_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %3, i64 %call1)
  %4 = bitcast %struct._GTypeClass* %call2 to %struct._GeglOperationClass*
  store %struct._GeglOperationClass* %4, %struct._GeglOperationClass** %klass, align 8
  %5 = load i64, i64* %type.addr, align 8
  %call3 = call i64* @g_type_children(i64 %5, i32* %n_ops)
  store i64* %call3, i64** %ops, align 8
  %6 = load %struct._GeglOperationClass*, %struct._GeglOperationClass** %klass, align 8
  %name = getelementptr inbounds %struct._GeglOperationClass, %struct._GeglOperationClass* %6, i32 0, i32 1
  %7 = load i8*, i8** %name, align 8
  %8 = load %struct._GeglOperationClass*, %struct._GeglOperationClass** %klass, align 8
  %call4 = call i8* @gegl_operation_class_get_key(%struct._GeglOperationClass* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0))
  %call5 = call i32 @gimp_gegl_tool_operation_blacklisted(i8* %7, i8* %call4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.9, label %if.then.7

if.then.7:                                        ; preds = %if.end
  %9 = load %struct._GList*, %struct._GList** %classes.addr, align 8
  %10 = load %struct._GeglOperationClass*, %struct._GeglOperationClass** %klass, align 8
  %11 = bitcast %struct._GeglOperationClass* %10 to i8*
  %call8 = call %struct._GList* @g_list_prepend(%struct._GList* %9, i8* %11)
  store %struct._GList* %call8, %struct._GList** %classes.addr, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %n_ops, align 4
  %cmp = icmp ult i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load i64*, i64** %ops, align 8
  %arrayidx = getelementptr inbounds i64, i64* %15, i64 %idxprom
  %16 = load i64, i64* %arrayidx, align 8
  %17 = load %struct._GList*, %struct._GList** %classes.addr, align 8
  %call10 = call %struct._GList* @gimp_get_subtype_classes(i64 %16, %struct._GList* %17)
  store %struct._GList* %call10, %struct._GList** %classes.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i64*, i64** %ops, align 8
  %tobool11 = icmp ne i64* %19, null
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.end
  %20 = load i64*, i64** %ops, align 8
  %21 = bitcast i64* %20 to i8*
  call void @g_free(i8* %21)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %for.end
  %22 = load %struct._GList*, %struct._GList** %classes.addr, align 8
  store %struct._GList* %22, %struct._GList** %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then
  %23 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %23
}

declare %struct._GList* @g_list_sort(%struct._GList*, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_gegl_tool_compare_operation_names(%struct._GeglOperationClass* %a, %struct._GeglOperationClass* %b) #3 {
entry:
  %a.addr = alloca %struct._GeglOperationClass*, align 8
  %b.addr = alloca %struct._GeglOperationClass*, align 8
  store %struct._GeglOperationClass* %a, %struct._GeglOperationClass** %a.addr, align 8
  store %struct._GeglOperationClass* %b, %struct._GeglOperationClass** %b.addr, align 8
  %0 = load %struct._GeglOperationClass*, %struct._GeglOperationClass** %a.addr, align 8
  %name = getelementptr inbounds %struct._GeglOperationClass, %struct._GeglOperationClass* %0, i32 0, i32 1
  %1 = load i8*, i8** %name, align 8
  %2 = load %struct._GeglOperationClass*, %struct._GeglOperationClass** %b.addr, align 8
  %name1 = getelementptr inbounds %struct._GeglOperationClass, %struct._GeglOperationClass* %2, i32 0, i32 1
  %3 = load i8*, i8** %name1, align 8
  %call = call i32 @strcmp(i8* %1, i8* %3) #8
  ret i32 %call
}

declare i8* @g_type_class_ref(i64) #1

declare i64* @g_type_children(i64, i32*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_gegl_tool_operation_blacklisted(i8* %name, i8* %categories_str) #3 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %categories_str.addr = alloca i8*, align 8
  %categories = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i8* %categories_str, i8** %categories_str.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %conv = sext i32 %1 to i64
  %cmp = icmp ult i64 %conv, 12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %name.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [12 x i8*], [12 x i8*]* @gimp_gegl_tool_operation_blacklisted.name_blacklist, i32 0, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @g_str_has_prefix(i8* %2, i8* %4)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.4
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i8*, i8** %categories_str.addr, align 8
  %tobool5 = icmp ne i8* %6, null
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %for.end
  %7 = load i8*, i8** %categories_str.addr, align 8
  %call8 = call noalias i8** @g_strsplit(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0), i32 0)
  store i8** %call8, i8*** %categories, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.30, %if.end.7
  %8 = load i32, i32* %i, align 4
  %conv10 = sext i32 %8 to i64
  %cmp11 = icmp ult i64 %conv10, 9
  br i1 %cmp11, label %for.body.13, label %for.end.32

for.body.13:                                      ; preds = %for.cond.9
  store i32 0, i32* %j, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.27, %for.body.13
  %9 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %9 to i64
  %10 = load i8**, i8*** %categories, align 8
  %arrayidx16 = getelementptr inbounds i8*, i8** %10, i64 %idxprom15
  %11 = load i8*, i8** %arrayidx16, align 8
  %tobool17 = icmp ne i8* %11, null
  br i1 %tobool17, label %for.body.18, label %for.end.29

for.body.18:                                      ; preds = %for.cond.14
  %12 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %12 to i64
  %13 = load i8**, i8*** %categories, align 8
  %arrayidx20 = getelementptr inbounds i8*, i8** %13, i64 %idxprom19
  %14 = load i8*, i8** %arrayidx20, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %15 to i64
  %arrayidx22 = getelementptr inbounds [9 x i8*], [9 x i8*]* @gimp_gegl_tool_operation_blacklisted.category_blacklist, i32 0, i64 %idxprom21
  %16 = load i8*, i8** %arrayidx22, align 8
  %call23 = call i32 @strcmp(i8* %14, i8* %16) #8
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %for.body.18
  %17 = load i8**, i8*** %categories, align 8
  call void @g_strfreev(i8** %17)
  store i32 1, i32* %retval
  br label %return

if.end.26:                                        ; preds = %for.body.18
  br label %for.inc.27

for.inc.27:                                       ; preds = %if.end.26
  %18 = load i32, i32* %j, align 4
  %inc28 = add nsw i32 %18, 1
  store i32 %inc28, i32* %j, align 4
  br label %for.cond.14

for.end.29:                                       ; preds = %for.cond.14
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.end.29
  %19 = load i32, i32* %i, align 4
  %inc31 = add nsw i32 %19, 1
  store i32 %inc31, i32* %i, align 4
  br label %for.cond.9

for.end.32:                                       ; preds = %for.cond.9
  %20 = load i8**, i8*** %categories, align 8
  call void @g_strfreev(i8** %20)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.32, %if.then.25, %if.then.6, %if.then.3, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i8* @gegl_operation_class_get_key(%struct._GeglOperationClass*, i8*) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare noalias i8** @g_strsplit(i8*, i8*, i32) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #6

declare void @g_strfreev(i8**) #1

declare i32 @gtk_combo_box_get_active_iter(%struct._GtkComboBox*, %struct._GtkTreeIter*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_combo_box_get_type() #2

declare %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox*) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

declare void @gimp_image_map_clear(%struct._GimpImageMap*) #1

declare void @gegl_node_set(%struct._GeglNode*, i8*, ...) #1

declare void @gimp_image_map_tool_create_map(%struct._GimpImageMapTool*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpObject* @gimp_gegl_tool_get_config(%struct._GimpGeglTool* %tool) #3 {
entry:
  %tool.addr = alloca %struct._GimpGeglTool*, align 8
  %config_type = alloca i64, align 8
  %info = alloca %struct._GTypeInfo, align 8
  %type_name = alloca i8*, align 8
  store %struct._GimpGeglTool* %tool, %struct._GimpGeglTool** %tool.addr, align 8
  %0 = load %struct._GHashTable*, %struct._GHashTable** @gimp_gegl_tool_get_config.config_types, align 8
  %tobool = icmp ne %struct._GHashTable* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal, void (i8*)* @g_free, void (i8*)* null)
  store %struct._GHashTable* %call, %struct._GHashTable** @gimp_gegl_tool_get_config.config_types, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._GHashTable*, %struct._GHashTable** @gimp_gegl_tool_get_config.config_types, align 8
  %2 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool.addr, align 8
  %operation = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %2, i32 0, i32 1
  %3 = load i8*, i8** %operation, align 8
  %call1 = call i8* @g_hash_table_lookup(%struct._GHashTable* %1, i8* %3)
  %4 = ptrtoint i8* %call1 to i64
  store i64 %4, i64* %config_type, align 8
  %5 = load i64, i64* %config_type, align 8
  %tobool2 = icmp ne i64 %5, 0
  br i1 %tobool2, label %if.end.14, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %class_size = getelementptr inbounds %struct._GTypeInfo, %struct._GTypeInfo* %info, i32 0, i32 0
  store i16 160, i16* %class_size, align 2
  %base_init = getelementptr inbounds %struct._GTypeInfo, %struct._GTypeInfo* %info, i32 0, i32 1
  store void (i8*)* null, void (i8*)** %base_init, align 8
  %base_finalize = getelementptr inbounds %struct._GTypeInfo, %struct._GTypeInfo* %info, i32 0, i32 2
  store void (i8*)* null, void (i8*)** %base_finalize, align 8
  %class_init = getelementptr inbounds %struct._GTypeInfo, %struct._GTypeInfo* %info, i32 0, i32 3
  store void (i8*, i8*)* bitcast (void (%struct._GObjectClass*, i8*)* @gimp_gegl_tool_config_class_init to void (i8*, i8*)*), void (i8*, i8*)** %class_init, align 8
  %class_finalize = getelementptr inbounds %struct._GTypeInfo, %struct._GTypeInfo* %info, i32 0, i32 4
  store void (i8*, i8*)* null, void (i8*, i8*)** %class_finalize, align 8
  %class_data = getelementptr inbounds %struct._GTypeInfo, %struct._GTypeInfo* %info, i32 0, i32 5
  %6 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool.addr, align 8
  %operation4 = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %6, i32 0, i32 1
  %7 = load i8*, i8** %operation4, align 8
  store i8* %7, i8** %class_data, align 8
  %instance_size = getelementptr inbounds %struct._GTypeInfo, %struct._GTypeInfo* %info, i32 0, i32 6
  store i16 32, i16* %instance_size, align 2
  %n_preallocs = getelementptr inbounds %struct._GTypeInfo, %struct._GTypeInfo* %info, i32 0, i32 7
  store i16 0, i16* %n_preallocs, align 2
  %instance_init = getelementptr inbounds %struct._GTypeInfo, %struct._GTypeInfo* %info, i32 0, i32 8
  store void (%struct._GTypeInstance*, i8*)* null, void (%struct._GTypeInstance*, i8*)** %instance_init, align 8
  %value_table = getelementptr inbounds %struct._GTypeInfo, %struct._GTypeInfo* %info, i32 0, i32 9
  store %struct._GTypeValueTable* null, %struct._GTypeValueTable** %value_table, align 8
  %8 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool.addr, align 8
  %operation5 = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %8, i32 0, i32 1
  %9 = load i8*, i8** %operation5, align 8
  %call6 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.40, i32 0, i32 0), i8* %9)
  store i8* %call6, i8** %type_name, align 8
  %10 = load i8*, i8** %type_name, align 8
  %call7 = call i8* @g_strcanon(i8* %10, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.41, i32 0, i32 0), i8 signext 45)
  %call8 = call i64 @gimp_object_get_type() #7
  %11 = load i8*, i8** %type_name, align 8
  %call9 = call i64 @g_type_register_static(i64 %call8, i8* %11, %struct._GTypeInfo* %info, i32 0)
  store i64 %call9, i64* %config_type, align 8
  %12 = load i8*, i8** %type_name, align 8
  call void @g_free(i8* %12)
  %13 = load i64, i64* %config_type, align 8
  %call10 = call i64 @gimp_config_interface_get_type() #7
  call void @g_type_add_interface_static(i64 %13, i64 %call10, %struct._GInterfaceInfo* @gimp_gegl_tool_get_config.config_info)
  %14 = load %struct._GHashTable*, %struct._GHashTable** @gimp_gegl_tool_get_config.config_types, align 8
  %15 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool.addr, align 8
  %operation11 = getelementptr inbounds %struct._GimpGeglTool, %struct._GimpGeglTool* %15, i32 0, i32 1
  %16 = load i8*, i8** %operation11, align 8
  %call12 = call noalias i8* @g_strdup(i8* %16)
  %17 = load i64, i64* %config_type, align 8
  %18 = inttoptr i64 %17 to i8*
  %call13 = call i32 @g_hash_table_insert(%struct._GHashTable* %14, i8* %call12, i8* %18)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.3, %if.end
  %19 = load i64, i64* %config_type, align 8
  %call15 = call i8* (i64, i8*, ...) @g_object_new(i64 %19, i8* null)
  %20 = bitcast i8* %call15 to %struct._GimpObject*
  ret %struct._GimpObject* %20
}

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_gegl_tool_config_notify(%struct._GObject* %object, %struct._GParamSpec* %pspec, %struct._GimpGeglTool* %tool) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %tool.addr = alloca %struct._GimpGeglTool*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpGeglTool* %tool, %struct._GimpGeglTool** %tool.addr, align 8
  %0 = load %struct._GimpGeglTool*, %struct._GimpGeglTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpGeglTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_map_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageMapTool*
  call void @gimp_image_map_tool_preview(%struct._GimpImageMapTool* %2)
  ret void
}

declare %struct._GtkWidget* @gimp_prop_table_new(%struct._GObject*, i64, %struct._GimpContext*) #1

declare %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare void @gimp_image_map_tool_preview(%struct._GimpImageMapTool*) #1

declare %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, void (i8*)*) #1

declare i32 @g_str_hash(i8*) #1

declare i32 @g_str_equal(i8*, i8*) #1

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_gegl_tool_config_class_init(%struct._GObjectClass* %klass, i8* %operation) #3 {
entry:
  %klass.addr = alloca %struct._GObjectClass*, align 8
  %operation.addr = alloca i8*, align 8
  %pspecs = alloca %struct._GParamSpec**, align 8
  %n_pspecs = alloca i32, align 4
  %i = alloca i32, align 4
  %pspec = alloca %struct._GParamSpec*, align 8
  %copy = alloca %struct._GParamSpec*, align 8
  store %struct._GObjectClass* %klass, %struct._GObjectClass** %klass.addr, align 8
  store i8* %operation, i8** %operation.addr, align 8
  %0 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %0, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_gegl_tool_config_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %1 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %1, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_gegl_tool_config_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %2 = load i8*, i8** %operation.addr, align 8
  %call = call %struct._GParamSpec** @gegl_operation_list_properties(i8* %2, i32* %n_pspecs)
  store %struct._GParamSpec** %call, %struct._GParamSpec*** %pspecs, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n_pspecs, align 4
  %cmp = icmp ult i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct._GParamSpec**, %struct._GParamSpec*** %pspecs, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %6, i64 %idxprom
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  store %struct._GParamSpec* %7, %struct._GParamSpec** %pspec, align 8
  %8 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %flags = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %8, i32 0, i32 2
  %9 = load i32, i32* %flags, align 4
  %and = and i32 %9, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %for.body
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %flags1 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %10, i32 0, i32 2
  %11 = load i32, i32* %flags1, align 4
  %and2 = and i32 %11, 2
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %land.lhs.true.4, label %if.end.14

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %12, i32 0, i32 1
  %13 = load i8*, i8** %name, align 8
  %call5 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0)) #8
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %land.lhs.true.7, label %if.end.14

land.lhs.true.7:                                  ; preds = %land.lhs.true.4
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %name8 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %14, i32 0, i32 1
  %15 = load i8*, i8** %name8, align 8
  %call9 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0)) #8
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then, label %if.end.14

if.then:                                          ; preds = %land.lhs.true.7
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %call11 = call %struct._GParamSpec* @gimp_param_spec_duplicate(%struct._GParamSpec* %16)
  store %struct._GParamSpec* %call11, %struct._GParamSpec** %copy, align 8
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %copy, align 8
  %tobool12 = icmp ne %struct._GParamSpec* %17, null
  br i1 %tobool12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then
  %18 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  %19 = load i32, i32* %i, align 4
  %add = add nsw i32 %19, 1
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %copy, align 8
  call void @g_object_class_install_property(%struct._GObjectClass* %18, i32 %add, %struct._GParamSpec* %20)
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.then
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %land.lhs.true.7, %land.lhs.true.4, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct._GParamSpec**, %struct._GParamSpec*** %pspecs, align 8
  %23 = bitcast %struct._GParamSpec** %22 to i8*
  call void @g_free(i8* %23)
  ret void
}

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i8* @g_strcanon(i8*, i8*, i8 signext) #1

declare i64 @g_type_register_static(i64, i8*, %struct._GTypeInfo*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_gegl_tool_config_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %val = alloca %struct._GValue*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call = call %struct._GValue* @gimp_gegl_tool_config_value_get(%struct._GObject* %0, %struct._GParamSpec* %1)
  store %struct._GValue* %call, %struct._GValue** %val, align 8
  %2 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %3 = load %struct._GValue*, %struct._GValue** %val, align 8
  call void @g_value_copy(%struct._GValue* %2, %struct._GValue* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_gegl_tool_config_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %val = alloca %struct._GValue*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call = call %struct._GValue* @gimp_gegl_tool_config_value_get(%struct._GObject* %0, %struct._GParamSpec* %1)
  store %struct._GValue* %call, %struct._GValue** %val, align 8
  %2 = load %struct._GValue*, %struct._GValue** %val, align 8
  %3 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  call void @g_value_copy(%struct._GValue* %2, %struct._GValue* %3)
  ret void
}

declare %struct._GParamSpec* @gimp_param_spec_duplicate(%struct._GParamSpec*) #1

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValue* @gimp_gegl_tool_config_value_get(%struct._GObject* %object, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %properties = alloca %struct._GHashTable*, align 8
  %value = alloca %struct._GValue*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %call = call %struct._GHashTable* @gimp_gegl_tool_config_get_properties(%struct._GObject* %0)
  store %struct._GHashTable* %call, %struct._GHashTable** %properties, align 8
  %1 = load %struct._GHashTable*, %struct._GHashTable** %properties, align 8
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  %call1 = call i8* @g_hash_table_lookup(%struct._GHashTable* %1, i8* %3)
  %4 = bitcast i8* %call1 to %struct._GValue*
  store %struct._GValue* %4, %struct._GValue** %value, align 8
  %5 = load %struct._GValue*, %struct._GValue** %value, align 8
  %tobool = icmp ne %struct._GValue* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call2 = call %struct._GValue* @gimp_gegl_tool_config_value_new(%struct._GParamSpec* %6)
  store %struct._GValue* %call2, %struct._GValue** %value, align 8
  %7 = load %struct._GHashTable*, %struct._GHashTable** %properties, align 8
  %8 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name3 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %8, i32 0, i32 1
  %9 = load i8*, i8** %name3, align 8
  %call4 = call noalias i8* @g_strdup(i8* %9)
  %10 = load %struct._GValue*, %struct._GValue** %value, align 8
  %11 = bitcast %struct._GValue* %10 to i8*
  %call5 = call i32 @g_hash_table_insert(%struct._GHashTable* %7, i8* %call4, i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GValue*, %struct._GValue** %value, align 8
  ret %struct._GValue* %12
}

declare void @g_value_copy(%struct._GValue*, %struct._GValue*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GHashTable* @gimp_gegl_tool_config_get_properties(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %properties = alloca %struct._GHashTable*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %call = call i8* @g_object_get_data(%struct._GObject* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0))
  %1 = bitcast i8* %call to %struct._GHashTable*
  store %struct._GHashTable* %1, %struct._GHashTable** %properties, align 8
  %2 = load %struct._GHashTable*, %struct._GHashTable** %properties, align 8
  %tobool = icmp ne %struct._GHashTable* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal, void (i8*)* @g_free, void (i8*)* bitcast (void (%struct._GValue*)* @gimp_gegl_tool_config_value_free to void (i8*)*))
  store %struct._GHashTable* %call1, %struct._GHashTable** %properties, align 8
  %3 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %4 = load %struct._GHashTable*, %struct._GHashTable** %properties, align 8
  %5 = bitcast %struct._GHashTable* %4 to i8*
  call void @g_object_set_data_full(%struct._GObject* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0), i8* %5, void (i8*)* bitcast (void (%struct._GHashTable*)* @g_hash_table_unref to void (i8*)*))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GHashTable*, %struct._GHashTable** %properties, align 8
  ret %struct._GHashTable* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._GValue* @gimp_gegl_tool_config_value_new(%struct._GParamSpec* %pspec) #3 {
entry:
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %value = alloca %struct._GValue*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %call = call noalias i8* @g_slice_alloc0(i64 24)
  %0 = bitcast i8* %call to %struct._GValue*
  store %struct._GValue* %0, %struct._GValue** %value, align 8
  %1 = load %struct._GValue*, %struct._GValue** %value, align 8
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %2, i32 0, i32 3
  %3 = load i64, i64* %value_type, align 8
  %call1 = call %struct._GValue* @g_value_init(%struct._GValue* %1, i64 %3)
  %4 = load %struct._GValue*, %struct._GValue** %value, align 8
  ret %struct._GValue* %4
}

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_gegl_tool_config_value_free(%struct._GValue* %value) #3 {
entry:
  %value.addr = alloca %struct._GValue*, align 8
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  call void @g_value_unset(%struct._GValue* %0)
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %2 = bitcast %struct._GValue* %1 to i8*
  call void @g_slice_free1(i64 24, i8* %2)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #1

declare void @g_hash_table_unref(%struct._GHashTable*) #1

declare void @g_slice_free1(i64, i8*) #1

declare noalias i8* @g_slice_alloc0(i64) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
