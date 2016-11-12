; ModuleID = './app/tools/gimpcolortool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
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
%struct._GimpDrawable = type opaque
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpCanvasItem = type { %struct._GimpObject }
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayOptions = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GdkEventKey = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32, i8*, i16, i8, i8 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpUIManager = type opaque
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GimpDrawTool = type { %struct._GimpTool, %struct._GimpDisplay*, i32, i32, i64, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GList* }
%struct._GimpColorTool = type { %struct._GimpDrawTool, i32, i32, i32, i32, %struct._GimpColorOptions*, %struct._GimpSamplePoint*, i32, i32, i32 }
%struct._GimpColorOptions = type { %struct._GimpImageMapOptions, i32, i32, double }
%struct._GimpImageMapOptions = type { %struct._GimpToolOptions, i32, i8* }
%struct._GimpSamplePoint = type { i32, i32, i32, i32 }
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
%struct._GArray = type { i8*, i32 }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
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
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GimpColormapEditor = type { %struct._GimpImageEditor, %struct._GtkWidget*, i32, %struct._PangoLayout*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpImageEditor = type { %struct._GimpEditor, %struct._GimpContext*, %struct._GimpImage* }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GimpEditorPrivate = type opaque
%struct._PangoLayout = type opaque
%struct._GimpPaletteEditor = type { %struct._GimpDataEditor, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GimpPaletteEntry*, float, i32, i32, i32 }
%struct._GimpDataEditor = type { %struct._GimpEditor, %struct._GimpDataFactory*, %struct._GimpContext*, i32, %struct._GimpData*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpPaletteEntry = type opaque
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GimpWindowStrategy = type opaque
%struct._GimpDockable = type { %struct._GtkBin, %struct._GimpDockablePrivate* }
%struct._GimpDockablePrivate = type opaque

@gimp_color_tool_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"GimpColorTool\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Gimp-Tools\00", align 1
@__func__.gimp_color_tool_enable = private unnamed_addr constant [23 x i8] c"gimp_color_tool_enable\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"GIMP_IS_COLOR_TOOL (color_tool)\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"GIMP_IS_COLOR_OPTIONS (options)\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Trying to enable GimpColorTool while it is active.\00", align 1
@__func__.gimp_color_tool_disable = private unnamed_addr constant [24 x i8] c"gimp_color_tool_disable\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"Trying to disable GimpColorTool while it is active.\00", align 1
@__func__.gimp_color_tool_start_sample_point = private unnamed_addr constant [35 x i8] c"gimp_color_tool_start_sample_point\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"GIMP_IS_COLOR_TOOL (tool)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"GIMP_IS_DISPLAY (display)\00", align 1
@gimp_color_tool_parent_class = internal global i8* null, align 8
@GimpColorTool_private_offset = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"picked\00", align 1
@gimp_color_tool_signals = internal global [1 x i32] zeroinitializer, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"Move Sample Point: \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Remove Sample Point\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"Cancel Sample Point\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"Add Sample Point: \00", align 1
@__func__.gimp_color_tool_real_pick = private unnamed_addr constant [26 x i8] c"gimp_color_tool_real_pick\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"tool->display != NULL\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"tool->drawable != NULL\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"gimp-indexed-palette\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"gimp-palette-editor\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"tools/tools-color-average-radius-set\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_color_tool_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_color_tool_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_color_tool_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_draw_tool_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 304, void (i8*, i8*)* bitcast (void (i8*)* @gimp_color_tool_class_intern_init to void (i8*, i8*)*), i32 296, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpColorTool*)* @gimp_color_tool_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_color_tool_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_color_tool_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_draw_tool_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_tool_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_color_tool_parent_class, align 8
  %1 = load i32, i32* @GimpColorTool_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpColorTool_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpColorToolClass*
  call void @gimp_color_tool_class_init(%struct._GimpColorToolClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_tool_init(%struct._GimpColorTool* %color_tool) #3 {
entry:
  %color_tool.addr = alloca %struct._GimpColorTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  store %struct._GimpColorTool* %color_tool, %struct._GimpColorTool** %color_tool.addr, align 8
  %0 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool.addr, align 8
  %1 = bitcast %struct._GimpColorTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 3
  %4 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_set_action_value_2(%struct._GimpToolControl* %4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i32 0, i32 0))
  %5 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool.addr, align 8
  %enabled = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %5, i32 0, i32 1
  store i32 0, i32* %enabled, align 4
  %6 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool.addr, align 8
  %center_x = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %6, i32 0, i32 2
  store i32 0, i32* %center_x, align 4
  %7 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool.addr, align 8
  %center_y = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %7, i32 0, i32 3
  store i32 0, i32* %center_y, align 4
  %8 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool.addr, align 8
  %pick_mode = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %8, i32 0, i32 4
  store i32 0, i32* %pick_mode, align 4
  %9 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool.addr, align 8
  %options = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %9, i32 0, i32 5
  store %struct._GimpColorOptions* null, %struct._GimpColorOptions** %options, align 8
  %10 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool.addr, align 8
  %sample_point = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %10, i32 0, i32 6
  store %struct._GimpSamplePoint* null, %struct._GimpSamplePoint** %sample_point, align 8
  %11 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool.addr, align 8
  %moving_sample_point = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %11, i32 0, i32 7
  store i32 0, i32* %moving_sample_point, align 4
  %12 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool.addr, align 8
  %sample_point_x = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %12, i32 0, i32 8
  store i32 -2147483648, i32* %sample_point_x, align 4
  %13 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool.addr, align 8
  %sample_point_y = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %13, i32 0, i32 9
  store i32 -2147483648, i32* %sample_point_y, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_color_tool_enable(%struct._GimpColorTool* %color_tool, %struct._GimpColorOptions* %options) #3 {
entry:
  %color_tool.addr = alloca %struct._GimpColorTool*, align 8
  %options.addr = alloca %struct._GimpColorOptions*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpColorTool* %color_tool, %struct._GimpColorTool** %color_tool.addr, align 8
  store %struct._GimpColorOptions* %options, %struct._GimpColorOptions** %options.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool.addr, align 8
  %1 = bitcast %struct._GimpColorTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_tool_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_color_tool_enable, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpColorOptions*, %struct._GimpColorOptions** %options.addr, align 8
  %14 = bitcast %struct._GimpColorOptions* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_color_options_get_type() #7
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_color_tool_enable, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool.addr, align 8
  %27 = bitcast %struct._GimpColorTool* %26 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_tool_get_type() #7
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call39)
  %28 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpTool*
  store %struct._GimpTool* %28, %struct._GimpTool** %tool, align 8
  %29 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %29, i32 0, i32 3
  %30 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call41 = call i32 @gimp_tool_control_is_active(%struct._GimpToolControl* %30)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %do.end.38
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.44:                                        ; preds = %do.end.38
  %31 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool.addr, align 8
  %options45 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %31, i32 0, i32 5
  %32 = load %struct._GimpColorOptions*, %struct._GimpColorOptions** %options45, align 8
  %tobool46 = icmp ne %struct._GimpColorOptions* %32, null
  br i1 %tobool46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.end.44
  %33 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool.addr, align 8
  %options48 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %33, i32 0, i32 5
  %34 = load %struct._GimpColorOptions*, %struct._GimpColorOptions** %options48, align 8
  %35 = bitcast %struct._GimpColorOptions* %34 to i8*
  call void @g_object_unref(i8* %35)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %if.end.44
  %36 = load %struct._GimpColorOptions*, %struct._GimpColorOptions** %options.addr, align 8
  %37 = bitcast %struct._GimpColorOptions* %36 to i8*
  %call50 = call i8* @g_object_ref(i8* %37)
  %38 = bitcast i8* %call50 to %struct._GimpColorOptions*
  %39 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool.addr, align 8
  %options51 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %39, i32 0, i32 5
  store %struct._GimpColorOptions* %38, %struct._GimpColorOptions** %options51, align 8
  %40 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool.addr, align 8
  %enabled = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %40, i32 0, i32 1
  store i32 1, i32* %enabled, align 4
  br label %return

return:                                           ; preds = %if.end.49, %if.then.43, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_options_get_type() #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

declare i32 @gimp_tool_control_is_active(%struct._GimpToolControl*) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #3 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare void @g_object_unref(i8*) #1

declare i8* @g_object_ref(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_color_tool_disable(%struct._GimpColorTool* %color_tool) #3 {
entry:
  %color_tool.addr = alloca %struct._GimpColorTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorTool* %color_tool, %struct._GimpColorTool** %color_tool.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool.addr, align 8
  %1 = bitcast %struct._GimpColorTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_tool_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_color_tool_disable, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool.addr, align 8
  %14 = bitcast %struct._GimpColorTool* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_tool_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpTool*
  store %struct._GimpTool* %15, %struct._GimpTool** %tool, align 8
  %16 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %16, i32 0, i32 3
  %17 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call13 = call i32 @gimp_tool_control_is_active(%struct._GimpToolControl* %17)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %do.end
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %do.end
  %18 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool.addr, align 8
  %options = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %18, i32 0, i32 5
  %19 = load %struct._GimpColorOptions*, %struct._GimpColorOptions** %options, align 8
  %tobool17 = icmp ne %struct._GimpColorOptions* %19, null
  br i1 %tobool17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.end.16
  %20 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool.addr, align 8
  %options19 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %20, i32 0, i32 5
  %21 = load %struct._GimpColorOptions*, %struct._GimpColorOptions** %options19, align 8
  %22 = bitcast %struct._GimpColorOptions* %21 to i8*
  call void @g_object_unref(i8* %22)
  %23 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool.addr, align 8
  %options20 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %23, i32 0, i32 5
  store %struct._GimpColorOptions* null, %struct._GimpColorOptions** %options20, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %if.end.16
  %24 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool.addr, align 8
  %enabled = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %24, i32 0, i32 1
  store i32 0, i32* %enabled, align 4
  br label %return

return:                                           ; preds = %if.end.21, %if.then.15, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_color_tool_is_enabled(%struct._GimpColorTool* %color_tool) #3 {
entry:
  %color_tool.addr = alloca %struct._GimpColorTool*, align 8
  store %struct._GimpColorTool* %color_tool, %struct._GimpColorTool** %color_tool.addr, align 8
  %0 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool.addr, align 8
  %enabled = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %0, i32 0, i32 1
  %1 = load i32, i32* %enabled, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define void @gimp_color_tool_start_sample_point(%struct._GimpTool* %tool, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %color_tool = alloca %struct._GimpColorTool*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_tool_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_color_tool_start_sample_point, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpDisplay* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_display_get_type() #7
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_color_tool_start_sample_point, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %27 = bitcast %struct._GimpTool* %26 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_color_tool_get_type() #7
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call39)
  %28 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpColorTool*
  store %struct._GimpColorTool* %28, %struct._GimpColorTool** %color_tool, align 8
  %29 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call41 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %29)
  call void @gimp_display_shell_selection_pause(%struct._GimpDisplayShell* %call41)
  %30 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %31 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display42 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %31, i32 0, i32 4
  store %struct._GimpDisplay* %30, %struct._GimpDisplay** %display42, align 8
  %32 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %32, i32 0, i32 3
  %33 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_activate(%struct._GimpToolControl* %33)
  %34 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control43 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %34, i32 0, i32 3
  %35 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control43, align 8
  call void @gimp_tool_control_set_scroll_lock(%struct._GimpToolControl* %35, i32 1)
  %36 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %37 = bitcast %struct._GimpTool* %36 to %struct._GTypeInstance*
  %call44 = call i64 @gimp_draw_tool_get_type() #7
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call44)
  %38 = bitcast %struct._GTypeInstance* %call45 to %struct._GimpDrawTool*
  %call46 = call i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool* %38)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.48, label %if.end.51

if.then.48:                                       ; preds = %do.end.38
  %39 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %40 = bitcast %struct._GimpTool* %39 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_draw_tool_get_type() #7
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call49)
  %41 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_stop(%struct._GimpDrawTool* %41)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.48, %do.end.38
  %42 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %42, i32 0, i32 6
  store %struct._GimpSamplePoint* null, %struct._GimpSamplePoint** %sample_point, align 8
  %43 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %moving_sample_point = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %43, i32 0, i32 7
  store i32 1, i32* %moving_sample_point, align 4
  %44 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point_x = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %44, i32 0, i32 8
  store i32 -2147483648, i32* %sample_point_x, align 4
  %45 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point_y = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %45, i32 0, i32 9
  store i32 -2147483648, i32* %sample_point_y, align 4
  %46 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %47 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_set_cursor(%struct._GimpTool* %46, %struct._GimpDisplay* %47, i32 1025, i32 21, i32 5)
  %48 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %49 = bitcast %struct._GimpTool* %48 to %struct._GTypeInstance*
  %call52 = call i64 @gimp_draw_tool_get_type() #7
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call52)
  %50 = bitcast %struct._GTypeInstance* %call53 to %struct._GimpDrawTool*
  %51 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_draw_tool_start(%struct._GimpDrawTool* %50, %struct._GimpDisplay* %51)
  br label %return

return:                                           ; preds = %if.end.51, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_display_get_type() #2

declare void @gimp_display_shell_selection_pause(%struct._GimpDisplayShell*) #1

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

declare void @gimp_tool_control_activate(%struct._GimpToolControl*) #1

declare void @gimp_tool_control_set_scroll_lock(%struct._GimpToolControl*, i32) #1

declare i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool*) #1

declare void @gimp_draw_tool_stop(%struct._GimpDrawTool*) #1

declare void @gimp_tool_set_cursor(%struct._GimpTool*, %struct._GimpDisplay*, i32, i32, i32) #1

declare void @gimp_draw_tool_start(%struct._GimpDrawTool*, %struct._GimpDisplay*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_tool_class_init(%struct._GimpColorToolClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpColorToolClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %tool_class = alloca %struct._GimpToolClass*, align 8
  %draw_class = alloca %struct._GimpDrawToolClass*, align 8
  store %struct._GimpColorToolClass* %klass, %struct._GimpColorToolClass** %klass.addr, align 8
  %0 = load %struct._GimpColorToolClass*, %struct._GimpColorToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpColorToolClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpColorToolClass*, %struct._GimpColorToolClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpColorToolClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_tool_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpToolClass*
  store %struct._GimpToolClass* %5, %struct._GimpToolClass** %tool_class, align 8
  %6 = load %struct._GimpColorToolClass*, %struct._GimpColorToolClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpColorToolClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_draw_tool_get_type() #7
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpDrawToolClass*
  store %struct._GimpDrawToolClass* %8, %struct._GimpDrawToolClass** %draw_class, align 8
  %9 = load %struct._GimpColorToolClass*, %struct._GimpColorToolClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpColorToolClass* %9 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type, align 8
  %call5 = call i64 @gimp_color_pick_state_get_type() #7
  %call6 = call i64 @gimp_image_type_get_type() #7
  %call7 = call i64 @gimp_rgb_get_type() #7
  %or = or i64 %call7, 1
  %call8 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i64 %11, i32 1, i32 296, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @gimp_marshal_VOID__ENUM_ENUM_BOXED_INT, i64 4, i32 4, i64 %call5, i64 %call6, i64 %or, i64 24)
  store i32 %call8, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @gimp_color_tool_signals, i32 0, i64 0), align 4
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_color_tool_finalize, void (%struct._GObject*)** %finalize, align 8
  %13 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %13, i32 0, i32 5
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_color_tool_button_press, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_press, align 8
  %14 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_release = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %14, i32 0, i32 6
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_color_tool_button_release, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_release, align 8
  %15 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %motion = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %15, i32 0, i32 7
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_color_tool_motion, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %motion, align 8
  %16 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %oper_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %16, i32 0, i32 12
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_color_tool_oper_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %oper_update, align 8
  %17 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %17, i32 0, i32 13
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)* @gimp_color_tool_cursor_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %18 = load %struct._GimpDrawToolClass*, %struct._GimpDrawToolClass** %draw_class, align 8
  %draw = getelementptr inbounds %struct._GimpDrawToolClass, %struct._GimpDrawToolClass* %18, i32 0, i32 1
  store void (%struct._GimpDrawTool*)* @gimp_color_tool_draw, void (%struct._GimpDrawTool*)** %draw, align 8
  %19 = load %struct._GimpColorToolClass*, %struct._GimpColorToolClass** %klass.addr, align 8
  %pick = getelementptr inbounds %struct._GimpColorToolClass, %struct._GimpColorToolClass* %19, i32 0, i32 1
  store i32 (%struct._GimpColorTool*, i32, i32, i32*, %struct._GimpRGB*, i32*)* @gimp_color_tool_real_pick, i32 (%struct._GimpColorTool*, i32, i32, i32*, %struct._GimpRGB*, i32*)** %pick, align 8
  %20 = load %struct._GimpColorToolClass*, %struct._GimpColorToolClass** %klass.addr, align 8
  %picked = getelementptr inbounds %struct._GimpColorToolClass, %struct._GimpColorToolClass* %20, i32 0, i32 2
  store void (%struct._GimpColorTool*, i32, i32, %struct._GimpRGB*, i32)* @gimp_color_tool_real_picked, void (%struct._GimpColorTool*, i32, i32, %struct._GimpRGB*, i32)** %picked, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @gimp_marshal_VOID__ENUM_ENUM_BOXED_INT(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_pick_state_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_image_type_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_rgb_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_color_tool_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %color_tool = alloca %struct._GimpColorTool*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorTool*
  store %struct._GimpColorTool* %2, %struct._GimpColorTool** %color_tool, align 8
  %3 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %options = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %3, i32 0, i32 5
  %4 = load %struct._GimpColorOptions*, %struct._GimpColorOptions** %options, align 8
  %tobool = icmp ne %struct._GimpColorOptions* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %options2 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %5, i32 0, i32 5
  %6 = load %struct._GimpColorOptions*, %struct._GimpColorOptions** %options2, align 8
  %7 = bitcast %struct._GimpColorOptions* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %options3 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %8, i32 0, i32 5
  store %struct._GimpColorOptions* null, %struct._GimpColorOptions** %options3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** @gimp_color_tool_parent_class, align 8
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
define internal void @gimp_color_tool_button_press(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %press_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %press_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %color_tool = alloca %struct._GimpColorTool*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %press_type, i32* %press_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorTool*
  store %struct._GimpColorTool* %2, %struct._GimpColorTool** %color_tool, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call2 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %3)
  store %struct._GimpDisplayShell* %call2, %struct._GimpDisplayShell** %shell, align 8
  %4 = load i8*, i8** @gimp_color_tool_parent_class, align 8
  %5 = bitcast i8* %4 to %struct._GTypeClass*
  %call3 = call i64 @gimp_tool_get_type() #7
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %5, i64 %call3)
  %6 = bitcast %struct._GTypeClass* %call4 to %struct._GimpToolClass*
  %button_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %6, i32 0, i32 5
  %7 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_press, align 8
  %8 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %9 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %10 = load i32, i32* %time.addr, align 4
  %11 = load i32, i32* %state.addr, align 4
  %12 = load i32, i32* %press_type.addr, align 4
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %7(%struct._GimpTool* %8, %struct._GimpCoords* %9, i32 %10, i32 %11, i32 %12, %struct._GimpDisplay* %13)
  %14 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %enabled = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %14, i32 0, i32 1
  %15 = load i32, i32* %enabled, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.33

if.end:                                           ; preds = %entry
  %16 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %16, i32 0, i32 6
  %17 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %tobool5 = icmp ne %struct._GimpSamplePoint* %17, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %18 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %moving_sample_point = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %18, i32 0, i32 7
  store i32 1, i32* %moving_sample_point, align 4
  %19 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point7 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %19, i32 0, i32 6
  %20 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point7, align 8
  %x = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %20, i32 0, i32 2
  %21 = load i32, i32* %x, align 4
  %22 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point_x = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %22, i32 0, i32 8
  store i32 %21, i32* %sample_point_x, align 4
  %23 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point8 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %23, i32 0, i32 6
  %24 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point8, align 8
  %y = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %24, i32 0, i32 3
  %25 = load i32, i32* %y, align 4
  %26 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point_y = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %26, i32 0, i32 9
  store i32 %25, i32* %sample_point_y, align 4
  %27 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %27, i32 0, i32 3
  %28 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_set_scroll_lock(%struct._GimpToolControl* %28, i32 1)
  %29 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_selection_pause(%struct._GimpDisplayShell* %29)
  %30 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %31 = bitcast %struct._GimpTool* %30 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_draw_tool_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call9)
  %32 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpDrawTool*
  %call11 = call i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool* %32)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.16, label %if.then.13

if.then.13:                                       ; preds = %if.then.6
  %33 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %34 = bitcast %struct._GimpTool* %33 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_draw_tool_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call14)
  %35 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpDrawTool*
  %36 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_draw_tool_start(%struct._GimpDrawTool* %35, %struct._GimpDisplay* %36)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.then.6
  %37 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %38 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %39 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control17 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %39, i32 0, i32 3
  %40 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control17, align 8
  %call18 = call i32 @gimp_tool_control_get_precision(%struct._GimpToolControl* %40)
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0)) #6
  %41 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point_x20 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %41, i32 0, i32 8
  %42 = load i32, i32* %sample_point_x20, align 4
  %conv = sitofp i32 %42 to double
  %43 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point_y21 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %43, i32 0, i32 9
  %44 = load i32, i32* %sample_point_y21, align 4
  %conv22 = sitofp i32 %44 to double
  call void @gimp_tool_push_status_coords(%struct._GimpTool* %37, %struct._GimpDisplay* %38, i32 %call18, i8* %call19, double %conv, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), double %conv22, i8* null)
  br label %if.end.33

if.else:                                          ; preds = %if.end
  %45 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x23 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %45, i32 0, i32 0
  %46 = load double, double* %x23, align 8
  %conv24 = fptosi double %46 to i32
  %47 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %center_x = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %47, i32 0, i32 2
  store i32 %conv24, i32* %center_x, align 4
  %48 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y25 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %48, i32 0, i32 1
  %49 = load double, double* %y25, align 8
  %conv26 = fptosi double %49 to i32
  %50 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %center_y = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %50, i32 0, i32 3
  store i32 %conv26, i32* %center_y, align 4
  %51 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %52 = bitcast %struct._GimpTool* %51 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_draw_tool_get_type() #7
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call27)
  %53 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpDrawTool*
  %54 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_draw_tool_start(%struct._GimpDrawTool* %53, %struct._GimpDisplay* %54)
  %55 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %56 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x29 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %56, i32 0, i32 0
  %57 = load double, double* %x29, align 8
  %conv30 = fptosi double %57 to i32
  %58 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y31 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %58, i32 0, i32 1
  %59 = load double, double* %y31, align 8
  %conv32 = fptosi double %59 to i32
  call void @gimp_color_tool_pick(%struct._GimpColorTool* %55, i32 0, i32 %conv30, i32 %conv32)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then, %if.else, %if.end.16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_tool_button_release(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %release_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %release_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %color_tool = alloca %struct._GimpColorTool*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %release_type, i32* %release_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorTool*
  store %struct._GimpColorTool* %2, %struct._GimpColorTool** %color_tool, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call2 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %3)
  store %struct._GimpDisplayShell* %call2, %struct._GimpDisplayShell** %shell, align 8
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call3 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %4)
  store %struct._GimpImage* %call3, %struct._GimpImage** %image, align 8
  %5 = load i8*, i8** @gimp_color_tool_parent_class, align 8
  %6 = bitcast i8* %5 to %struct._GTypeClass*
  %call4 = call i64 @gimp_tool_get_type() #7
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %6, i64 %call4)
  %7 = bitcast %struct._GTypeClass* %call5 to %struct._GimpToolClass*
  %button_release = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %7, i32 0, i32 6
  %8 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_release, align 8
  %9 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %10 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %11 = load i32, i32* %time.addr, align 4
  %12 = load i32, i32* %state.addr, align 4
  %13 = load i32, i32* %release_type.addr, align 4
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %8(%struct._GimpTool* %9, %struct._GimpCoords* %10, i32 %11, i32 %12, i32 %13, %struct._GimpDisplay* %14)
  %15 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %enabled = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %15, i32 0, i32 1
  %16 = load i32, i32* %enabled, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.56

if.end:                                           ; preds = %entry
  %17 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %moving_sample_point = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %17, i32 0, i32 7
  %18 = load i32, i32* %moving_sample_point, align 4
  %tobool6 = icmp ne i32 %18, 0
  br i1 %tobool6, label %if.then.7, label %if.else.53

if.then.7:                                        ; preds = %if.end
  %19 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %20 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_pop_status(%struct._GimpTool* %19, %struct._GimpDisplay* %20)
  %21 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %21, i32 0, i32 3
  %22 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_set_scroll_lock(%struct._GimpToolControl* %22, i32 0)
  %23 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %24 = bitcast %struct._GimpTool* %23 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_draw_tool_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call8)
  %25 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_stop(%struct._GimpDrawTool* %25)
  %26 = load i32, i32* %release_type.addr, align 4
  %cmp = icmp eq i32 %26, 1
  br i1 %cmp, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.then.7
  %27 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %moving_sample_point11 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %27, i32 0, i32 7
  store i32 0, i32* %moving_sample_point11, align 4
  %28 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point_x = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %28, i32 0, i32 8
  store i32 -2147483648, i32* %sample_point_x, align 4
  %29 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point_y = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %29, i32 0, i32 9
  store i32 -2147483648, i32* %sample_point_y, align 4
  %30 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_selection_resume(%struct._GimpDisplayShell* %30)
  br label %if.end.56

if.end.12:                                        ; preds = %if.then.7
  %31 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_untransform_viewport(%struct._GimpDisplayShell* %31, i32* %x, i32* %y, i32* %width, i32* %height)
  %32 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point_x13 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %32, i32 0, i32 8
  %33 = load i32, i32* %sample_point_x13, align 4
  %34 = load i32, i32* %x, align 4
  %cmp14 = icmp slt i32 %33, %34
  br i1 %cmp14, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.12
  %35 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point_x15 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %35, i32 0, i32 8
  %36 = load i32, i32* %sample_point_x15, align 4
  %37 = load i32, i32* %x, align 4
  %38 = load i32, i32* %width, align 4
  %add = add nsw i32 %37, %38
  %sub = sub nsw i32 %add, 1
  %cmp16 = icmp sgt i32 %36, %sub
  br i1 %cmp16, label %if.then.25, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false
  %39 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point_y18 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %39, i32 0, i32 9
  %40 = load i32, i32* %sample_point_y18, align 4
  %41 = load i32, i32* %y, align 4
  %cmp19 = icmp slt i32 %40, %41
  br i1 %cmp19, label %if.then.25, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false.17
  %42 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point_y21 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %42, i32 0, i32 9
  %43 = load i32, i32* %sample_point_y21, align 4
  %44 = load i32, i32* %y, align 4
  %45 = load i32, i32* %height, align 4
  %add22 = add nsw i32 %44, %45
  %sub23 = sub nsw i32 %add22, 1
  %cmp24 = icmp sgt i32 %43, %sub23
  br i1 %cmp24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %lor.lhs.false.20, %lor.lhs.false.17, %lor.lhs.false, %if.end.12
  %46 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %46, i32 0, i32 6
  %47 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %tobool26 = icmp ne %struct._GimpSamplePoint* %47, null
  br i1 %tobool26, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %if.then.25
  %48 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %49 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point28 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %49, i32 0, i32 6
  %50 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point28, align 8
  call void @gimp_image_remove_sample_point(%struct._GimpImage* %48, %struct._GimpSamplePoint* %50, i32 1)
  %51 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point29 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %51, i32 0, i32 6
  store %struct._GimpSamplePoint* null, %struct._GimpSamplePoint** %sample_point29, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %if.then.25
  br label %if.end.43

if.else:                                          ; preds = %lor.lhs.false.20
  %52 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point31 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %52, i32 0, i32 6
  %53 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point31, align 8
  %tobool32 = icmp ne %struct._GimpSamplePoint* %53, null
  br i1 %tobool32, label %if.then.33, label %if.else.37

if.then.33:                                       ; preds = %if.else
  %54 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %55 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point34 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %55, i32 0, i32 6
  %56 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point34, align 8
  %57 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point_x35 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %57, i32 0, i32 8
  %58 = load i32, i32* %sample_point_x35, align 4
  %59 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point_y36 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %59, i32 0, i32 9
  %60 = load i32, i32* %sample_point_y36, align 4
  call void @gimp_image_move_sample_point(%struct._GimpImage* %54, %struct._GimpSamplePoint* %56, i32 %58, i32 %60, i32 1)
  br label %if.end.42

if.else.37:                                       ; preds = %if.else
  %61 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %62 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point_x38 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %62, i32 0, i32 8
  %63 = load i32, i32* %sample_point_x38, align 4
  %64 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point_y39 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %64, i32 0, i32 9
  %65 = load i32, i32* %sample_point_y39, align 4
  %call40 = call %struct._GimpSamplePoint* @gimp_image_add_sample_point_at_pos(%struct._GimpImage* %61, i32 %63, i32 %65, i32 1)
  %66 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point41 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %66, i32 0, i32 6
  store %struct._GimpSamplePoint* %call40, %struct._GimpSamplePoint** %sample_point41, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.37, %if.then.33
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end.30
  %67 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_selection_resume(%struct._GimpDisplayShell* %67)
  %68 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %68)
  %69 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %moving_sample_point44 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %69, i32 0, i32 7
  store i32 0, i32* %moving_sample_point44, align 4
  %70 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point_x45 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %70, i32 0, i32 8
  store i32 -2147483648, i32* %sample_point_x45, align 4
  %71 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point_y46 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %71, i32 0, i32 9
  store i32 -2147483648, i32* %sample_point_y46, align 4
  %72 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point47 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %72, i32 0, i32 6
  %73 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point47, align 8
  %tobool48 = icmp ne %struct._GimpSamplePoint* %73, null
  br i1 %tobool48, label %if.then.49, label %if.end.52

if.then.49:                                       ; preds = %if.end.43
  %74 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %75 = bitcast %struct._GimpTool* %74 to %struct._GTypeInstance*
  %call50 = call i64 @gimp_draw_tool_get_type() #7
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call50)
  %76 = bitcast %struct._GTypeInstance* %call51 to %struct._GimpDrawTool*
  %77 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_draw_tool_start(%struct._GimpDrawTool* %76, %struct._GimpDisplay* %77)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.49, %if.end.43
  br label %if.end.56

if.else.53:                                       ; preds = %if.end
  %78 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %79 = bitcast %struct._GimpTool* %78 to %struct._GTypeInstance*
  %call54 = call i64 @gimp_draw_tool_get_type() #7
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call54)
  %80 = bitcast %struct._GTypeInstance* %call55 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_stop(%struct._GimpDrawTool* %80)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then, %if.then.10, %if.else.53, %if.end.52
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_tool_motion(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %color_tool = alloca %struct._GimpColorTool*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %tx = alloca i32, align 4
  %ty = alloca i32, align 4
  %delete_point = alloca i32, align 4
  %x13 = alloca i32, align 4
  %y14 = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorTool*
  store %struct._GimpColorTool* %2, %struct._GimpColorTool** %color_tool, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call2 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %3)
  store %struct._GimpDisplayShell* %call2, %struct._GimpDisplayShell** %shell, align 8
  %4 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %enabled = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %4, i32 0, i32 1
  %5 = load i32, i32* %enabled, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.77

if.end:                                           ; preds = %entry
  %6 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %moving_sample_point = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %6, i32 0, i32 7
  %7 = load i32, i32* %moving_sample_point, align 4
  %tobool3 = icmp ne i32 %7, 0
  br i1 %tobool3, label %if.then.4, label %if.else.64

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %delete_point, align 4
  %8 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %9 = bitcast %struct._GimpTool* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_draw_tool_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %10)
  %11 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %12 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %12, i32 0, i32 0
  %13 = load double, double* %x, align 8
  %14 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %14, i32 0, i32 1
  %15 = load double, double* %y, align 8
  call void @gimp_display_shell_transform_xy(%struct._GimpDisplayShell* %11, double %13, double %15, i32* %tx, i32* %ty)
  %16 = load i32, i32* %tx, align 4
  %cmp = icmp slt i32 %16, 0
  br i1 %cmp, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.4
  %17 = load i32, i32* %tx, align 4
  %18 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %disp_width = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %18, i32 0, i32 28
  %19 = load i32, i32* %disp_width, align 4
  %cmp7 = icmp sgt i32 %17, %19
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %20 = load i32, i32* %ty, align 4
  %cmp9 = icmp slt i32 %20, 0
  br i1 %cmp9, label %if.then.12, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.8
  %21 = load i32, i32* %ty, align 4
  %22 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %disp_height = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %22, i32 0, i32 29
  %23 = load i32, i32* %disp_height, align 4
  %cmp11 = icmp sgt i32 %21, %23
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %lor.lhs.false.10, %lor.lhs.false.8, %lor.lhs.false, %if.then.4
  %24 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point_x = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %24, i32 0, i32 8
  store i32 -2147483648, i32* %sample_point_x, align 4
  %25 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point_y = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %25, i32 0, i32 9
  store i32 -2147483648, i32* %sample_point_y, align 4
  store i32 1, i32* %delete_point, align 4
  br label %if.end.41

if.else:                                          ; preds = %lor.lhs.false.10
  %26 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x15 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %26, i32 0, i32 0
  %27 = load double, double* %x15, align 8
  %call16 = call double @floor(double %27) #7
  %conv = fptosi double %call16 to i32
  %28 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point_x17 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %28, i32 0, i32 8
  store i32 %conv, i32* %sample_point_x17, align 4
  %29 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y18 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %29, i32 0, i32 1
  %30 = load double, double* %y18, align 8
  %call19 = call double @floor(double %30) #7
  %conv20 = fptosi double %call19 to i32
  %31 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point_y21 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %31, i32 0, i32 9
  store i32 %conv20, i32* %sample_point_y21, align 4
  %32 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_untransform_viewport(%struct._GimpDisplayShell* %32, i32* %x13, i32* %y14, i32* %width, i32* %height)
  %33 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point_x22 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %33, i32 0, i32 8
  %34 = load i32, i32* %sample_point_x22, align 4
  %35 = load i32, i32* %x13, align 4
  %cmp23 = icmp slt i32 %34, %35
  br i1 %cmp23, label %if.then.39, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %if.else
  %36 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point_x26 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %36, i32 0, i32 8
  %37 = load i32, i32* %sample_point_x26, align 4
  %38 = load i32, i32* %x13, align 4
  %39 = load i32, i32* %width, align 4
  %add = add nsw i32 %38, %39
  %sub = sub nsw i32 %add, 1
  %cmp27 = icmp sgt i32 %37, %sub
  br i1 %cmp27, label %if.then.39, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %lor.lhs.false.25
  %40 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point_y30 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %40, i32 0, i32 9
  %41 = load i32, i32* %sample_point_y30, align 4
  %42 = load i32, i32* %y14, align 4
  %cmp31 = icmp slt i32 %41, %42
  br i1 %cmp31, label %if.then.39, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %lor.lhs.false.29
  %43 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point_y34 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %43, i32 0, i32 9
  %44 = load i32, i32* %sample_point_y34, align 4
  %45 = load i32, i32* %y14, align 4
  %46 = load i32, i32* %height, align 4
  %add35 = add nsw i32 %45, %46
  %sub36 = sub nsw i32 %add35, 1
  %cmp37 = icmp sgt i32 %44, %sub36
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %lor.lhs.false.33, %lor.lhs.false.29, %lor.lhs.false.25, %if.else
  store i32 1, i32* %delete_point, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %lor.lhs.false.33
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.12
  %47 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %48 = bitcast %struct._GimpTool* %47 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_draw_tool_get_type() #7
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call42)
  %49 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %49)
  %50 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %51 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_pop_status(%struct._GimpTool* %50, %struct._GimpDisplay* %51)
  %52 = load i32, i32* %delete_point, align 4
  %tobool44 = icmp ne i32 %52, 0
  br i1 %tobool44, label %if.then.45, label %if.else.49

if.then.45:                                       ; preds = %if.end.41
  %53 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %54 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %55 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %55, i32 0, i32 6
  %56 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %tobool46 = icmp ne %struct._GimpSamplePoint* %56, null
  br i1 %tobool46, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.45
  %call47 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0)) #6
  br label %cond.end

cond.false:                                       ; preds = %if.then.45
  %call48 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0)) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call47, %cond.true ], [ %call48, %cond.false ]
  call void (%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) @gimp_tool_push_status(%struct._GimpTool* %53, %struct._GimpDisplay* %54, i8* %cond)
  br label %if.end.63

if.else.49:                                       ; preds = %if.end.41
  %57 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %58 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %59 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %59, i32 0, i32 3
  %60 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call50 = call i32 @gimp_tool_control_get_precision(%struct._GimpToolControl* %60)
  %61 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point51 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %61, i32 0, i32 6
  %62 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point51, align 8
  %tobool52 = icmp ne %struct._GimpSamplePoint* %62, null
  br i1 %tobool52, label %cond.true.53, label %cond.false.55

cond.true.53:                                     ; preds = %if.else.49
  %call54 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0)) #6
  br label %cond.end.57

cond.false.55:                                    ; preds = %if.else.49
  %call56 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0)) #6
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.55, %cond.true.53
  %cond58 = phi i8* [ %call54, %cond.true.53 ], [ %call56, %cond.false.55 ]
  %63 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point_x59 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %63, i32 0, i32 8
  %64 = load i32, i32* %sample_point_x59, align 4
  %conv60 = sitofp i32 %64 to double
  %65 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point_y61 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %65, i32 0, i32 9
  %66 = load i32, i32* %sample_point_y61, align 4
  %conv62 = sitofp i32 %66 to double
  call void @gimp_tool_push_status_coords(%struct._GimpTool* %57, %struct._GimpDisplay* %58, i32 %call50, i8* %cond58, double %conv60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), double %conv62, i8* null)
  br label %if.end.63

if.end.63:                                        ; preds = %cond.end.57, %cond.end
  br label %if.end.77

if.else.64:                                       ; preds = %if.end
  %67 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %68 = bitcast %struct._GimpTool* %67 to %struct._GTypeInstance*
  %call65 = call i64 @gimp_draw_tool_get_type() #7
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call65)
  %69 = bitcast %struct._GTypeInstance* %call66 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %69)
  %70 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x67 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %70, i32 0, i32 0
  %71 = load double, double* %x67, align 8
  %conv68 = fptosi double %71 to i32
  %72 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %center_x = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %72, i32 0, i32 2
  store i32 %conv68, i32* %center_x, align 4
  %73 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y69 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %73, i32 0, i32 1
  %74 = load double, double* %y69, align 8
  %conv70 = fptosi double %74 to i32
  %75 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %center_y = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %75, i32 0, i32 3
  store i32 %conv70, i32* %center_y, align 4
  %76 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %77 = bitcast %struct._GimpTool* %76 to %struct._GTypeInstance*
  %call71 = call i64 @gimp_draw_tool_get_type() #7
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call71)
  %78 = bitcast %struct._GTypeInstance* %call72 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %78)
  %79 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %80 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x73 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %80, i32 0, i32 0
  %81 = load double, double* %x73, align 8
  %conv74 = fptosi double %81 to i32
  %82 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y75 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %82, i32 0, i32 1
  %83 = load double, double* %y75, align 8
  %conv76 = fptosi double %83 to i32
  call void @gimp_color_tool_pick(%struct._GimpColorTool* %79, i32 1, i32 %conv74, i32 %conv76)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then, %if.else.64, %if.end.63
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_tool_oper_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, i32 %proximity, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %proximity.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %color_tool = alloca %struct._GimpColorTool*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %sample_point = alloca %struct._GimpSamplePoint*, align 8
  %snap_distance = alloca i32, align 4
  %draw_tool = alloca %struct._GimpDrawTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store i32 %proximity, i32* %proximity.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorTool*
  store %struct._GimpColorTool* %2, %struct._GimpColorTool** %color_tool, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call2 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %3)
  store %struct._GimpDisplayShell* %call2, %struct._GimpDisplayShell** %shell, align 8
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call3 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %4)
  store %struct._GimpImage* %call3, %struct._GimpImage** %image, align 8
  store %struct._GimpSamplePoint* null, %struct._GimpSamplePoint** %sample_point, align 8
  %5 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %enabled = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %5, i32 0, i32 1
  %6 = load i32, i32* %enabled, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call4 = call i32 @gimp_display_shell_get_show_sample_points(%struct._GimpDisplayShell* %7)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %8 = load i32, i32* %proximity.addr, align 4
  %tobool7 = icmp ne i32 %8, 0
  br i1 %tobool7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.6
  %9 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %config = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %9, i32 0, i32 2
  %10 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config, align 8
  %snap_distance8 = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %10, i32 0, i32 3
  %11 = load i32, i32* %snap_distance8, align 4
  store i32 %11, i32* %snap_distance, align 4
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %13 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %13, i32 0, i32 0
  %14 = load double, double* %x, align 8
  %15 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %15, i32 0, i32 1
  %16 = load double, double* %y, align 8
  %17 = load i32, i32* %snap_distance, align 4
  %conv = sitofp i32 %17 to double
  %18 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %18, i32 0, i32 13
  %19 = load double, double* %scale_x, align 8
  %div = fdiv double %conv, %19
  %20 = load i32, i32* %snap_distance, align 4
  %conv9 = sitofp i32 %20 to double
  %21 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %21, i32 0, i32 14
  %22 = load double, double* %scale_y, align 8
  %div10 = fdiv double %conv9, %22
  %call11 = call %struct._GimpSamplePoint* @gimp_image_find_sample_point(%struct._GimpImage* %12, double %14, double %16, double %div, double %div10)
  store %struct._GimpSamplePoint* %call11, %struct._GimpSamplePoint** %sample_point, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.6, %land.lhs.true, %entry
  %23 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point12 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %23, i32 0, i32 6
  %24 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point12, align 8
  %25 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %cmp = icmp ne %struct._GimpSamplePoint* %24, %25
  br i1 %cmp, label %if.then.14, label %if.end.30

if.then.14:                                       ; preds = %if.end
  %26 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %27 = bitcast %struct._GimpTool* %26 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_draw_tool_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call15)
  %28 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpDrawTool*
  store %struct._GimpDrawTool* %28, %struct._GimpDrawTool** %draw_tool, align 8
  %29 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %29)
  %30 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %call17 = call i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool* %30)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %land.lhs.true.19, label %if.end.24

land.lhs.true.19:                                 ; preds = %if.then.14
  %31 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %display20 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %31, i32 0, i32 1
  %32 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display20, align 8
  %33 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %cmp21 = icmp ne %struct._GimpDisplay* %32, %33
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %land.lhs.true.19
  %34 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_stop(%struct._GimpDrawTool* %34)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %land.lhs.true.19, %if.then.14
  %35 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %36 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point25 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %36, i32 0, i32 6
  store %struct._GimpSamplePoint* %35, %struct._GimpSamplePoint** %sample_point25, align 8
  %37 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %call26 = call i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool* %37)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %if.end.24
  %38 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %39 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_draw_tool_start(%struct._GimpDrawTool* %38, %struct._GimpDisplay* %39)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.end.24
  %40 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %40)
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_tool_cursor_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %color_tool = alloca %struct._GimpColorTool*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %modifier = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorTool*
  store %struct._GimpColorTool* %2, %struct._GimpColorTool** %color_tool, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call2 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %3)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  %4 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %enabled = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %4, i32 0, i32 1
  %5 = load i32, i32* %enabled, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %6, i32 0, i32 6
  %7 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %tobool3 = icmp ne %struct._GimpSamplePoint* %7, null
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %8 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %9 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_set_cursor(%struct._GimpTool* %8, %struct._GimpDisplay* %9, i32 1025, i32 21, i32 5)
  br label %if.end.11

if.else:                                          ; preds = %if.then
  store i32 1, i32* %modifier, align 4
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %11 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %12 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %options = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %12, i32 0, i32 5
  %13 = load %struct._GimpColorOptions*, %struct._GimpColorOptions** %options, align 8
  %sample_merged = getelementptr inbounds %struct._GimpColorOptions, %struct._GimpColorOptions* %13, i32 0, i32 1
  %14 = load i32, i32* %sample_merged, align 4
  %call5 = call i32 @gimp_image_coords_in_active_pickable(%struct._GimpImage* %10, %struct._GimpCoords* %11, i32 %14, i32 0)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.else
  %15 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %pick_mode = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %15, i32 0, i32 4
  %16 = load i32, i32* %pick_mode, align 4
  switch i32 %16, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.8
    i32 2, label %sw.bb.9
    i32 3, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %if.then.7
  store i32 0, i32* %modifier, align 4
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.then.7
  store i32 9, i32* %modifier, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.then.7
  store i32 10, i32* %modifier, align 4
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.then.7
  store i32 2, i32* %modifier, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.7, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %if.else
  %17 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %18 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %19 = load i32, i32* %modifier, align 4
  call void @gimp_tool_set_cursor(%struct._GimpTool* %17, %struct._GimpDisplay* %18, i32 1031, i32 21, i32 %19)
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then.4
  br label %return

if.end.12:                                        ; preds = %entry
  %20 = load i8*, i8** @gimp_color_tool_parent_class, align 8
  %21 = bitcast i8* %20 to %struct._GTypeClass*
  %call13 = call i64 @gimp_tool_get_type() #7
  %call14 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %21, i64 %call13)
  %22 = bitcast %struct._GTypeClass* %call14 to %struct._GimpToolClass*
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %22, i32 0, i32 13
  %23 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %24 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %25 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %26 = load i32, i32* %state.addr, align 4
  %27 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %23(%struct._GimpTool* %24, %struct._GimpCoords* %25, i32 %26, %struct._GimpDisplay* %27)
  br label %return

return:                                           ; preds = %if.end.12, %if.end.11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_tool_draw(%struct._GimpDrawTool* %draw_tool) #3 {
entry:
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %color_tool = alloca %struct._GimpColorTool*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %item = alloca %struct._GimpCanvasItem*, align 8
  %index = alloca i32, align 4
  %radius = alloca double, align 8
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorTool*
  store %struct._GimpColorTool* %2, %struct._GimpColorTool** %color_tool, align 8
  %3 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %enabled = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %3, i32 0, i32 1
  %4 = load i32, i32* %enabled, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end.35

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %5, i32 0, i32 6
  %6 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %tobool2 = icmp ne %struct._GimpSamplePoint* %6, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %display = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %7, i32 0, i32 1
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call4 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %8)
  store %struct._GimpImage* %call4, %struct._GimpImage** %image, align 8
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call5 = call %struct._GList* @gimp_image_get_sample_points(%struct._GimpImage* %9)
  %10 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point6 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %10, i32 0, i32 6
  %11 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point6, align 8
  %12 = bitcast %struct._GimpSamplePoint* %11 to i8*
  %call7 = call i32 @g_list_index(%struct._GList* %call5, i8* %12)
  %add = add nsw i32 %call7, 1
  store i32 %add, i32* %index, align 4
  %13 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %14 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point8 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %14, i32 0, i32 6
  %15 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point8, align 8
  %x = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %15, i32 0, i32 2
  %16 = load i32, i32* %x, align 4
  %17 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point9 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %17, i32 0, i32 6
  %18 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point9, align 8
  %y = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %18, i32 0, i32 3
  %19 = load i32, i32* %y, align 4
  %20 = load i32, i32* %index, align 4
  %call10 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_sample_point(%struct._GimpDrawTool* %13, i32 %16, i32 %19, i32 %20)
  store %struct._GimpCanvasItem* %call10, %struct._GimpCanvasItem** %item, align 8
  %21 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  call void @gimp_canvas_item_set_highlight(%struct._GimpCanvasItem* %21, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %22 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %moving_sample_point = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %22, i32 0, i32 7
  %23 = load i32, i32* %moving_sample_point, align 4
  %tobool11 = icmp ne i32 %23, 0
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end
  %24 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point_x = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %24, i32 0, i32 8
  %25 = load i32, i32* %sample_point_x, align 4
  %cmp = icmp ne i32 %25, -2147483648
  br i1 %cmp, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.then.12
  %26 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point_y = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %26, i32 0, i32 9
  %27 = load i32, i32* %sample_point_y, align 4
  %cmp13 = icmp ne i32 %27, -2147483648
  br i1 %cmp13, label %if.then.14, label %if.end.18

if.then.14:                                       ; preds = %land.lhs.true
  %28 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %29 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point_x15 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %29, i32 0, i32 8
  %30 = load i32, i32* %sample_point_x15, align 4
  %31 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %sample_point_y16 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %31, i32 0, i32 9
  %32 = load i32, i32* %sample_point_y16, align 4
  %call17 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_crosshair(%struct._GimpDrawTool* %28, i32 %30, i32 %32)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.14, %land.lhs.true, %if.then.12
  br label %if.end.34

if.else:                                          ; preds = %if.end
  %33 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %options = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %33, i32 0, i32 5
  %34 = load %struct._GimpColorOptions*, %struct._GimpColorOptions** %options, align 8
  %sample_average = getelementptr inbounds %struct._GimpColorOptions, %struct._GimpColorOptions* %34, i32 0, i32 2
  %35 = load i32, i32* %sample_average, align 4
  %tobool19 = icmp ne i32 %35, 0
  br i1 %tobool19, label %land.lhs.true.20, label %if.end.33

land.lhs.true.20:                                 ; preds = %if.else
  %36 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %37 = bitcast %struct._GimpDrawTool* %36 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_tool_get_type() #7
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call21)
  %38 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpTool*
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %38, i32 0, i32 3
  %39 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call23 = call i32 @gimp_tool_control_is_active(%struct._GimpToolControl* %39)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.33

if.then.25:                                       ; preds = %land.lhs.true.20
  %40 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %options26 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %40, i32 0, i32 5
  %41 = load %struct._GimpColorOptions*, %struct._GimpColorOptions** %options26, align 8
  %average_radius = getelementptr inbounds %struct._GimpColorOptions, %struct._GimpColorOptions* %41, i32 0, i32 3
  %42 = load double, double* %average_radius, align 8
  store double %42, double* %radius, align 8
  %43 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %44 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %center_x = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %44, i32 0, i32 2
  %45 = load i32, i32* %center_x, align 4
  %conv = sitofp i32 %45 to double
  %46 = load double, double* %radius, align 8
  %sub = fsub double %conv, %46
  %47 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %center_y = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %47, i32 0, i32 3
  %48 = load i32, i32* %center_y, align 4
  %conv27 = sitofp i32 %48 to double
  %49 = load double, double* %radius, align 8
  %sub28 = fsub double %conv27, %49
  %50 = load double, double* %radius, align 8
  %mul = fmul double 2.000000e+00, %50
  %add29 = fadd double %mul, 1.000000e+00
  %51 = load double, double* %radius, align 8
  %mul30 = fmul double 2.000000e+00, %51
  %add31 = fadd double %mul30, 1.000000e+00
  %call32 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_rectangle(%struct._GimpDrawTool* %43, i32 0, double %sub, double %sub28, double %add29, double %add31)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.25, %land.lhs.true.20, %if.else
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end.18
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_color_tool_real_pick(%struct._GimpColorTool* %color_tool, i32 %x, i32 %y, i32* %sample_type, %struct._GimpRGB* %color, i32* %color_index) #3 {
entry:
  %retval = alloca i32, align 4
  %color_tool.addr = alloca %struct._GimpColorTool*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %sample_type.addr = alloca i32*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %color_index.addr = alloca i32*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GimpColorTool* %color_tool, %struct._GimpColorTool** %color_tool.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32* %sample_type, i32** %sample_type.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i32* %color_index, i32** %color_index.addr, align 8
  %0 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool.addr, align 8
  %1 = bitcast %struct._GimpColorTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 4
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call2 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %4)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display3 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 4
  %6 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display3, align 8
  %cmp = icmp ne %struct._GimpDisplay* %6, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_color_tool_real_pick, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.4

do.body.4:                                        ; preds = %do.end
  %7 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %drawable = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %7, i32 0, i32 5
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %cmp5 = icmp ne %struct._GimpDrawable* %8, null
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %do.body.4
  br label %if.end.8

if.else.7:                                        ; preds = %do.body.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_color_tool_real_pick, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end.9

do.end.9:                                         ; preds = %if.end.8
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %10 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %drawable10 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %10, i32 0, i32 5
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable10, align 8
  %12 = load i32, i32* %x.addr, align 4
  %13 = load i32, i32* %y.addr, align 4
  %14 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool.addr, align 8
  %options = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %14, i32 0, i32 5
  %15 = load %struct._GimpColorOptions*, %struct._GimpColorOptions** %options, align 8
  %sample_merged = getelementptr inbounds %struct._GimpColorOptions, %struct._GimpColorOptions* %15, i32 0, i32 1
  %16 = load i32, i32* %sample_merged, align 4
  %17 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool.addr, align 8
  %options11 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %17, i32 0, i32 5
  %18 = load %struct._GimpColorOptions*, %struct._GimpColorOptions** %options11, align 8
  %sample_average = getelementptr inbounds %struct._GimpColorOptions, %struct._GimpColorOptions* %18, i32 0, i32 2
  %19 = load i32, i32* %sample_average, align 4
  %20 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool.addr, align 8
  %options12 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %20, i32 0, i32 5
  %21 = load %struct._GimpColorOptions*, %struct._GimpColorOptions** %options12, align 8
  %average_radius = getelementptr inbounds %struct._GimpColorOptions, %struct._GimpColorOptions* %21, i32 0, i32 3
  %22 = load double, double* %average_radius, align 8
  %23 = load i32*, i32** %sample_type.addr, align 8
  %24 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %25 = load i32*, i32** %color_index.addr, align 8
  %call13 = call i32 @gimp_image_pick_color(%struct._GimpImage* %9, %struct._GimpDrawable* %11, i32 %12, i32 %13, i32 %16, i32 %19, double %22, i32* %23, %struct._GimpRGB* %24, i32* %25)
  store i32 %call13, i32* %retval
  br label %return

return:                                           ; preds = %do.end.9, %if.else.7, %if.else
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_tool_real_picked(%struct._GimpColorTool* %color_tool, i32 %pick_state, i32 %sample_type, %struct._GimpRGB* %color, i32 %color_index) #3 {
entry:
  %color_tool.addr = alloca %struct._GimpColorTool*, align 8
  %pick_state.addr = alloca i32, align 4
  %sample_type.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %color_index.addr = alloca i32, align 4
  %tool = alloca %struct._GimpTool*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %editor = alloca %struct._GimpColormapEditor*, align 8
  %editor25 = alloca %struct._GimpPaletteEditor*, align 8
  %index = alloca i32, align 4
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %screen = alloca %struct._GdkScreen*, align 8
  %dockable = alloca %struct._GtkWidget*, align 8
  %palette_editor = alloca %struct._GtkWidget*, align 8
  %data = alloca %struct._GimpData*, align 8
  store %struct._GimpColorTool* %color_tool, %struct._GimpColorTool** %color_tool.addr, align 8
  store i32 %pick_state, i32* %pick_state.addr, align 4
  store i32 %sample_type, i32* %sample_type.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i32 %color_index, i32* %color_index.addr, align 4
  %0 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool.addr, align 8
  %1 = bitcast %struct._GimpColorTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %call2 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %3)
  %4 = bitcast %struct._GimpToolOptions* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_context_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpContext*
  store %struct._GimpContext* %5, %struct._GimpContext** %context, align 8
  %6 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool.addr, align 8
  %pick_mode = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %6, i32 0, i32 4
  %7 = load i32, i32* %pick_mode, align 4
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool.addr, align 8
  %pick_mode5 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %8, i32 0, i32 4
  %9 = load i32, i32* %pick_mode5, align 4
  %cmp6 = icmp eq i32 %9, 2
  br i1 %cmp6, label %if.then, label %if.end.37

if.then:                                          ; preds = %lor.lhs.false, %entry
  %10 = load i32, i32* %sample_type.addr, align 4
  %cmp7 = icmp eq i32 %10, 4
  br i1 %cmp7, label %if.then.10, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %if.then
  %11 = load i32, i32* %sample_type.addr, align 4
  %cmp9 = icmp eq i32 %11, 5
  br i1 %cmp9, label %if.then.10, label %if.end.20

if.then.10:                                       ; preds = %lor.lhs.false.8, %if.then
  %call11 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %call12 = call %struct._GtkWidget* @gimp_dialog_factory_find_widget(%struct._GimpDialogFactory* %call11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0))
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %widget, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool = icmp ne %struct._GtkWidget* %12, null
  br i1 %tobool, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then.10
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_bin_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call14)
  %15 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkBin*
  %call16 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %15)
  %16 = bitcast %struct._GtkWidget* %call16 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_colormap_editor_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call17)
  %17 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpColormapEditor*
  store %struct._GimpColormapEditor* %17, %struct._GimpColormapEditor** %editor, align 8
  %18 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %19 = load i32, i32* %color_index.addr, align 4
  %call19 = call i32 @gimp_colormap_editor_set_index(%struct._GimpColormapEditor* %18, i32 %19, %struct._GimpRGB* null)
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.then.10
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %lor.lhs.false.8
  %call21 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %call22 = call %struct._GtkWidget* @gimp_dialog_factory_find_widget(%struct._GimpDialogFactory* %call21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0))
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %widget, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool23 = icmp ne %struct._GtkWidget* %20, null
  br i1 %tobool23, label %if.then.24, label %if.end.36

if.then.24:                                       ; preds = %if.end.20
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_bin_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call26)
  %23 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkBin*
  %call28 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %23)
  %24 = bitcast %struct._GtkWidget* %call28 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_palette_editor_get_type() #7
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call29)
  %25 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpPaletteEditor*
  store %struct._GimpPaletteEditor* %25, %struct._GimpPaletteEditor** %editor25, align 8
  %26 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor25, align 8
  %27 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %call31 = call i32 @gimp_palette_editor_get_index(%struct._GimpPaletteEditor* %26, %struct._GimpRGB* %27)
  store i32 %call31, i32* %index, align 4
  %28 = load i32, i32* %index, align 4
  %cmp32 = icmp ne i32 %28, -1
  br i1 %cmp32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.then.24
  %29 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor25, align 8
  %30 = load i32, i32* %index, align 4
  %call34 = call i32 @gimp_palette_editor_set_index(%struct._GimpPaletteEditor* %29, i32 %30, %struct._GimpRGB* null)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.then.24
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.20
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %lor.lhs.false
  %31 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool.addr, align 8
  %pick_mode38 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %31, i32 0, i32 4
  %32 = load i32, i32* %pick_mode38, align 4
  switch i32 %32, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.39
    i32 2, label %sw.bb.40
    i32 3, label %sw.bb.41
  ]

sw.bb:                                            ; preds = %if.end.37
  br label %sw.epilog

sw.bb.39:                                         ; preds = %if.end.37
  %33 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %34 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_context_set_foreground(%struct._GimpContext* %33, %struct._GimpRGB* %34)
  br label %sw.epilog

sw.bb.40:                                         ; preds = %if.end.37
  %35 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %36 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_context_set_background(%struct._GimpContext* %35, %struct._GimpRGB* %36)
  br label %sw.epilog

sw.bb.41:                                         ; preds = %if.end.37
  %37 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %37, i32 0, i32 4
  %38 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call42 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %38)
  store %struct._GimpDisplayShell* %call42, %struct._GimpDisplayShell** %shell, align 8
  %39 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %40 = bitcast %struct._GimpDisplayShell* %39 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_widget_get_type() #7
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call43)
  %41 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkWidget*
  %call45 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %41)
  store %struct._GdkScreen* %call45, %struct._GdkScreen** %screen, align 8
  %42 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display46 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %42, i32 0, i32 4
  %43 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display46, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %43, i32 0, i32 1
  %44 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call47 = call %struct._GimpObject* @gimp_get_window_strategy(%struct._Gimp* %44)
  %45 = bitcast %struct._GimpObject* %call47 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_window_strategy_interface_get_type() #7
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call48)
  %46 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpWindowStrategy*
  %47 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display50 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %47, i32 0, i32 4
  %48 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display50, align 8
  %gimp51 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %48, i32 0, i32 1
  %49 = load %struct._Gimp*, %struct._Gimp** %gimp51, align 8
  %call52 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %50 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %call53 = call %struct._GtkWidget* @gimp_window_strategy_show_dockable_dialog(%struct._GimpWindowStrategy* %46, %struct._Gimp* %49, %struct._GimpDialogFactory* %call52, %struct._GdkScreen* %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0))
  store %struct._GtkWidget* %call53, %struct._GtkWidget** %dockable, align 8
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %dockable, align 8
  %tobool54 = icmp ne %struct._GtkWidget* %51, null
  br i1 %tobool54, label %if.then.55, label %if.end.77

if.then.55:                                       ; preds = %sw.bb.41
  %52 = load i32, i32* %pick_state.addr, align 4
  %cmp56 = icmp eq i32 %52, 1
  br i1 %cmp56, label %if.then.57, label %if.end.60

if.then.57:                                       ; preds = %if.then.55
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %dockable, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call58 = call i64 @gimp_dockable_get_type() #7
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call58)
  %55 = bitcast %struct._GTypeInstance* %call59 to %struct._GimpDockable*
  call void @gimp_dockable_blink_cancel(%struct._GimpDockable* %55)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.57, %if.then.55
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %dockable, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_bin_get_type() #7
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call61)
  %58 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkBin*
  %call63 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %58)
  store %struct._GtkWidget* %call63, %struct._GtkWidget** %palette_editor, align 8
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %palette_editor, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call64 = call i64 @gimp_data_editor_get_type() #7
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call64)
  %61 = bitcast %struct._GTypeInstance* %call65 to %struct._GimpDataEditor*
  %call66 = call %struct._GimpData* @gimp_data_editor_get_data(%struct._GimpDataEditor* %61)
  store %struct._GimpData* %call66, %struct._GimpData** %data, align 8
  %62 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %tobool67 = icmp ne %struct._GimpData* %62, null
  br i1 %tobool67, label %if.end.74, label %if.then.68

if.then.68:                                       ; preds = %if.end.60
  %63 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call69 = call %struct._GimpPalette* @gimp_context_get_palette(%struct._GimpContext* %63)
  %64 = bitcast %struct._GimpPalette* %call69 to %struct._GTypeInstance*
  %call70 = call i64 @gimp_data_get_type() #7
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call70)
  %65 = bitcast %struct._GTypeInstance* %call71 to %struct._GimpData*
  store %struct._GimpData* %65, %struct._GimpData** %data, align 8
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %palette_editor, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call72 = call i64 @gimp_data_editor_get_type() #7
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call72)
  %68 = bitcast %struct._GTypeInstance* %call73 to %struct._GimpDataEditor*
  %69 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  call void @gimp_data_editor_set_data(%struct._GimpDataEditor* %68, %struct._GimpData* %69)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.68, %if.end.60
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %palette_editor, align 8
  %71 = bitcast %struct._GtkWidget* %70 to %struct._GTypeInstance*
  %call75 = call i64 @gimp_palette_editor_get_type() #7
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call75)
  %72 = bitcast %struct._GTypeInstance* %call76 to %struct._GimpPaletteEditor*
  %73 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %74 = load i32, i32* %pick_state.addr, align 4
  call void @gimp_palette_editor_pick_color(%struct._GimpPaletteEditor* %72, %struct._GimpRGB* %73, i32 %74)
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.74, %sw.bb.41
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.37, %if.end.77, %sw.bb.40, %sw.bb.39, %sw.bb
  ret void
}

declare void @gimp_tool_push_status_coords(%struct._GimpTool*, %struct._GimpDisplay*, i32, i8*, double, i8*, double, i8*) #1

declare i32 @gimp_tool_control_get_precision(%struct._GimpToolControl*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

; Function Attrs: nounwind uwtable
define internal void @gimp_color_tool_pick(%struct._GimpColorTool* %tool, i32 %pick_state, i32 %x, i32 %y) #3 {
entry:
  %tool.addr = alloca %struct._GimpColorTool*, align 8
  %pick_state.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %klass = alloca %struct._GimpColorToolClass*, align 8
  %sample_type = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  %color_index = alloca i32, align 4
  store %struct._GimpColorTool* %tool, %struct._GimpColorTool** %tool.addr, align 8
  store i32 %pick_state, i32* %pick_state.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load %struct._GimpColorTool*, %struct._GimpColorTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpColorTool* %0 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %3 = bitcast %struct._GTypeClass* %2 to %struct._GimpColorToolClass*
  store %struct._GimpColorToolClass* %3, %struct._GimpColorToolClass** %klass, align 8
  %4 = load %struct._GimpColorToolClass*, %struct._GimpColorToolClass** %klass, align 8
  %pick = getelementptr inbounds %struct._GimpColorToolClass, %struct._GimpColorToolClass* %4, i32 0, i32 1
  %5 = load i32 (%struct._GimpColorTool*, i32, i32, i32*, %struct._GimpRGB*, i32*)*, i32 (%struct._GimpColorTool*, i32, i32, i32*, %struct._GimpRGB*, i32*)** %pick, align 8
  %tobool = icmp ne i32 (%struct._GimpColorTool*, i32, i32, i32*, %struct._GimpRGB*, i32*)* %5, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct._GimpColorToolClass*, %struct._GimpColorToolClass** %klass, align 8
  %pick1 = getelementptr inbounds %struct._GimpColorToolClass, %struct._GimpColorToolClass* %6, i32 0, i32 1
  %7 = load i32 (%struct._GimpColorTool*, i32, i32, i32*, %struct._GimpRGB*, i32*)*, i32 (%struct._GimpColorTool*, i32, i32, i32*, %struct._GimpRGB*, i32*)** %pick1, align 8
  %8 = load %struct._GimpColorTool*, %struct._GimpColorTool** %tool.addr, align 8
  %9 = load i32, i32* %x.addr, align 4
  %10 = load i32, i32* %y.addr, align 4
  %call = call i32 %7(%struct._GimpColorTool* %8, i32 %9, i32 %10, i32* %sample_type, %struct._GimpRGB* %color, i32* %color_index)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct._GimpColorTool*, %struct._GimpColorTool** %tool.addr, align 8
  %12 = bitcast %struct._GimpColorTool* %11 to i8*
  %13 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @gimp_color_tool_signals, i32 0, i64 0), align 4
  %14 = load i32, i32* %pick_state.addr, align 4
  %15 = load i32, i32* %sample_type, align 4
  %16 = load i32, i32* %color_index, align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %12, i32 %13, i32 0, i32 %14, i32 %15, %struct._GimpRGB* %color, i32 %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare void @g_signal_emit(i8*, i32, i32, ...) #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare void @gimp_tool_pop_status(%struct._GimpTool*, %struct._GimpDisplay*) #1

declare void @gimp_display_shell_selection_resume(%struct._GimpDisplayShell*) #1

declare void @gimp_display_shell_untransform_viewport(%struct._GimpDisplayShell*, i32*, i32*, i32*, i32*) #1

declare void @gimp_image_remove_sample_point(%struct._GimpImage*, %struct._GimpSamplePoint*, i32) #1

declare void @gimp_image_move_sample_point(%struct._GimpImage*, %struct._GimpSamplePoint*, i32, i32, i32) #1

declare %struct._GimpSamplePoint* @gimp_image_add_sample_point_at_pos(%struct._GimpImage*, i32, i32, i32) #1

declare void @gimp_image_flush(%struct._GimpImage*) #1

declare void @gimp_draw_tool_pause(%struct._GimpDrawTool*) #1

declare void @gimp_display_shell_transform_xy(%struct._GimpDisplayShell*, double, double, i32*, i32*) #1

; Function Attrs: nounwind readnone
declare double @floor(double) #2

declare void @gimp_draw_tool_resume(%struct._GimpDrawTool*) #1

declare void @gimp_tool_push_status(%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) #1

declare i32 @gimp_display_shell_get_show_sample_points(%struct._GimpDisplayShell*) #1

declare %struct._GimpSamplePoint* @gimp_image_find_sample_point(%struct._GimpImage*, double, double, double, double) #1

declare i32 @gimp_image_coords_in_active_pickable(%struct._GimpImage*, %struct._GimpCoords*, i32, i32) #1

declare i32 @g_list_index(%struct._GList*, i8*) #1

declare %struct._GList* @gimp_image_get_sample_points(%struct._GimpImage*) #1

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_sample_point(%struct._GimpDrawTool*, i32, i32, i32) #1

declare void @gimp_canvas_item_set_highlight(%struct._GimpCanvasItem*, i32) #1

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_crosshair(%struct._GimpDrawTool*, i32, i32) #1

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_rectangle(%struct._GimpDrawTool*, i32, double, double, double, double) #1

declare i32 @gimp_image_pick_color(%struct._GimpImage*, %struct._GimpDrawable*, i32, i32, i32, i32, double, i32*, %struct._GimpRGB*, i32*) #1

declare %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare %struct._GtkWidget* @gimp_dialog_factory_find_widget(%struct._GimpDialogFactory*, i8*) #1

declare %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton() #1

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_colormap_editor_get_type() #2

declare i32 @gimp_colormap_editor_set_index(%struct._GimpColormapEditor*, i32, %struct._GimpRGB*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_palette_editor_get_type() #2

declare i32 @gimp_palette_editor_get_index(%struct._GimpPaletteEditor*, %struct._GimpRGB*) #1

declare i32 @gimp_palette_editor_set_index(%struct._GimpPaletteEditor*, i32, %struct._GimpRGB*) #1

declare void @gimp_context_set_foreground(%struct._GimpContext*, %struct._GimpRGB*) #1

declare void @gimp_context_set_background(%struct._GimpContext*, %struct._GimpRGB*) #1

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare %struct._GtkWidget* @gimp_window_strategy_show_dockable_dialog(%struct._GimpWindowStrategy*, %struct._Gimp*, %struct._GimpDialogFactory*, %struct._GdkScreen*, i8*) #1

declare %struct._GimpObject* @gimp_get_window_strategy(%struct._Gimp*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_window_strategy_interface_get_type() #2

declare void @gimp_dockable_blink_cancel(%struct._GimpDockable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dockable_get_type() #2

declare %struct._GimpData* @gimp_data_editor_get_data(%struct._GimpDataEditor*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_data_editor_get_type() #2

declare %struct._GimpPalette* @gimp_context_get_palette(%struct._GimpContext*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_data_get_type() #2

declare void @gimp_data_editor_set_data(%struct._GimpDataEditor*, %struct._GimpData*) #1

declare void @gimp_palette_editor_pick_color(%struct._GimpPaletteEditor*, %struct._GimpRGB*, i32) #1

declare void @gimp_tool_control_set_action_value_2(%struct._GimpToolControl*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
