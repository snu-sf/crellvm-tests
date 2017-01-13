; ModuleID = './app/tools/gimpforegroundselecttool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpForegroundSelectToolClass = type { %struct._GimpFreeSelectToolClass }
%struct._GimpFreeSelectToolClass = type { %struct._GimpSelectionToolClass, void (%struct._GimpFreeSelectTool*, %struct._GimpDisplay*)* }
%struct._GimpSelectionToolClass = type { %struct._GimpDrawToolClass }
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
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
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
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpDisplayConfig = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GdkEventKey = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32, i8*, i16, i8, i8 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpUIManager = type opaque
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GimpDrawTool = type { %struct._GimpTool, %struct._GimpDisplay*, i32, i32, i64, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GList* }
%struct._GimpFreeSelectTool = type { %struct._GimpSelectionTool }
%struct._GimpSelectionTool = type { %struct._GimpDrawTool, i32, i32, i32 }
%struct._GimpForegroundSelectTool = type { %struct._GimpFreeSelectTool, %struct._GimpCoords, i32, %struct._GArray*, %struct._GList*, %struct._GimpChannel*, %struct._SioxState*, i32 }
%struct._GArray = type { i8*, i32 }
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GeglNode = type opaque
%struct._BoundSeg = type opaque
%struct._SioxState = type opaque
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
%struct.FgSelectStroke = type { i32, i32, i32, %struct._GimpVector2* }
%struct._GimpVector2 = type { double, double }
%struct._GimpForegroundSelectOptions = type { %struct._GimpSelectionOptions, i32, i32, i32, i32, i32, i32, [3 x double] }
%struct._GimpSelectionOptions = type { %struct._GimpToolOptions, i32, i32, i32, double, %struct._GtkWidget* }
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
%struct._GimpScanConvert = type opaque
%struct._TileManager = type opaque

@gimp_foreground_select_tool_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"GimpForegroundSelectTool\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"gimp-foreground-select-tool\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Foreground Select\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"Foreground Select Tool: Select a region containing foreground objects\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"F_oreground Select\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"gimp-tool-foreground-select\00", align 1
@gimp_foreground_select_tool_parent_class = internal global i8* null, align 8
@GimpForegroundSelectTool_private_offset = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"notify\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"smoothness\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"contiguous\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"sensitivity\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"mask-color\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"%s: stroke should be NULL at this point\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"gimpforegroundselecttool.c:222\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"%s: strokes should be NULL at this point\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"gimpforegroundselecttool.c:225\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"%s: state should be NULL at this point\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"gimpforegroundselecttool.c:228\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"%s: mask should be NULL at this point\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"gimpforegroundselecttool.c:231\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"Gimp-Tools\00", align 1
@.str.20 = private unnamed_addr constant [56 x i8] c"Add more strokes or press Enter to accept the selection\00", align 1
@.str.21 = private unnamed_addr constant [53 x i8] c"Mark foreground by painting on the object to extract\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"Roughly outline the object to extract\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"background\00", align 1
@__func__.gimp_foreground_select_tool_apply = private unnamed_addr constant [34 x i8] c"gimp_foreground_select_tool_apply\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"fg_select->mask != NULL\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"command\04Foreground Select\00", align 1
@__func__.gimp_foreground_select_tool_button_press = private unnamed_addr constant [41 x i8] c"gimp_foreground_select_tool_button_press\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"fg_select->stroke == NULL\00", align 1
@__func__.gimp_foreground_select_tool_push_stroke = private unnamed_addr constant [40 x i8] c"gimp_foreground_select_tool_push_stroke\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"fg_select->stroke != NULL\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"foreground-extraction\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"state should be NULL here\00", align 1
@.str.31 = private unnamed_addr constant [45 x i8] c"tools/tools-foreground-select-brush-size-set\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_foreground_select_tool_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_foreground_select_tool_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_foreground_select_tool_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_free_select_tool_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 296, void (i8*, i8*)* bitcast (void (i8*)* @gimp_foreground_select_tool_class_intern_init to void (i8*, i8*)*), i32 376, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpForegroundSelectTool*)* @gimp_foreground_select_tool_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_foreground_select_tool_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_foreground_select_tool_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_free_select_tool_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_foreground_select_tool_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_foreground_select_tool_parent_class, align 8
  %1 = load i32, i32* @GimpForegroundSelectTool_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpForegroundSelectTool_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpForegroundSelectToolClass*
  call void @gimp_foreground_select_tool_class_init(%struct._GimpForegroundSelectToolClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_foreground_select_tool_init(%struct._GimpForegroundSelectTool* %fg_select) #3 {
entry:
  %fg_select.addr = alloca %struct._GimpForegroundSelectTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  store %struct._GimpForegroundSelectTool* %fg_select, %struct._GimpForegroundSelectTool** %fg_select.addr, align 8
  %0 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select.addr, align 8
  %1 = bitcast %struct._GimpForegroundSelectTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 3
  %4 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_set_scroll_lock(%struct._GimpToolControl* %4, i32 0)
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control2 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 3
  %6 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control2, align 8
  call void @gimp_tool_control_set_preserve(%struct._GimpToolControl* %6, i32 0)
  %7 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control3 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %7, i32 0, i32 3
  %8 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control3, align 8
  call void @gimp_tool_control_set_dirty_mask(%struct._GimpToolControl* %8, i32 514)
  %9 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control4 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %9, i32 0, i32 3
  %10 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control4, align 8
  call void @gimp_tool_control_set_precision(%struct._GimpToolControl* %10, i32 0)
  %11 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control5 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %11, i32 0, i32 3
  %12 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control5, align 8
  call void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl* %12, i32 3)
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control6 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %13, i32 0, i32 3
  %14 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control6, align 8
  call void @gimp_tool_control_set_action_value_2(%struct._GimpToolControl* %14, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.31, i32 0, i32 0))
  %15 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select.addr, align 8
  %idle_id = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %15, i32 0, i32 2
  store i32 0, i32* %idle_id, align 4
  %16 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select.addr, align 8
  %stroke = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %16, i32 0, i32 3
  store %struct._GArray* null, %struct._GArray** %stroke, align 8
  %17 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select.addr, align 8
  %strokes = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %17, i32 0, i32 4
  store %struct._GList* null, %struct._GList** %strokes, align 8
  %18 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select.addr, align 8
  %mask = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %18, i32 0, i32 5
  store %struct._GimpChannel* null, %struct._GimpChannel** %mask, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_foreground_select_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, i8* %data) #3 {
entry:
  %callback.addr = alloca void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  %call = call i64 @gimp_foreground_select_tool_get_type() #7
  %call1 = call i64 @gimp_foreground_select_options_get_type() #7
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0)) #6
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i32 0, i32 0)) #6
  %1 = load i8*, i8** %data.addr, align 8
  call void %0(i64 %call, i64 %call1, %struct._GtkWidget* (%struct._GimpToolOptions*)* @gimp_foreground_select_options_gui, i32 192, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i8* %call2, i8* %call3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0), i8* %1)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_foreground_select_options_get_type() #2

declare %struct._GtkWidget* @gimp_foreground_select_options_gui(%struct._GimpToolOptions*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_foreground_select_tool_class_init(%struct._GimpForegroundSelectToolClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpForegroundSelectToolClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %tool_class = alloca %struct._GimpToolClass*, align 8
  %draw_tool_class = alloca %struct._GimpDrawToolClass*, align 8
  %free_select_tool_class = alloca %struct._GimpFreeSelectToolClass*, align 8
  store %struct._GimpForegroundSelectToolClass* %klass, %struct._GimpForegroundSelectToolClass** %klass.addr, align 8
  %0 = load %struct._GimpForegroundSelectToolClass*, %struct._GimpForegroundSelectToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpForegroundSelectToolClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpForegroundSelectToolClass*, %struct._GimpForegroundSelectToolClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpForegroundSelectToolClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_tool_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpToolClass*
  store %struct._GimpToolClass* %5, %struct._GimpToolClass** %tool_class, align 8
  %6 = load %struct._GimpForegroundSelectToolClass*, %struct._GimpForegroundSelectToolClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpForegroundSelectToolClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_draw_tool_get_type() #7
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpDrawToolClass*
  store %struct._GimpDrawToolClass* %8, %struct._GimpDrawToolClass** %draw_tool_class, align 8
  %9 = load %struct._GimpForegroundSelectToolClass*, %struct._GimpForegroundSelectToolClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpForegroundSelectToolClass* %9 to %struct._GTypeClass*
  %call5 = call i64 @gimp_free_select_tool_get_type() #7
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 %call5)
  %11 = bitcast %struct._GTypeClass* %call6 to %struct._GimpFreeSelectToolClass*
  store %struct._GimpFreeSelectToolClass* %11, %struct._GimpFreeSelectToolClass** %free_select_tool_class, align 8
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_foreground_select_tool_constructed, void (%struct._GObject*)** %constructed, align 8
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %13, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_foreground_select_tool_finalize, void (%struct._GObject*)** %finalize, align 8
  %14 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %control = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %14, i32 0, i32 4
  store void (%struct._GimpTool*, i32, %struct._GimpDisplay*)* @gimp_foreground_select_tool_control, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)** %control, align 8
  %15 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %oper_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %15, i32 0, i32 12
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_foreground_select_tool_oper_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %oper_update, align 8
  %16 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %modifier_key = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %16, i32 0, i32 10
  store void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_foreground_select_tool_modifier_key, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)** %modifier_key, align 8
  %17 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %17, i32 0, i32 13
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)* @gimp_foreground_select_tool_cursor_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %18 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %key_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %18, i32 0, i32 8
  store i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)* @gimp_foreground_select_tool_key_press, i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)** %key_press, align 8
  %19 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %19, i32 0, i32 5
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_foreground_select_tool_button_press, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_press, align 8
  %20 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_release = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %20, i32 0, i32 6
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_foreground_select_tool_button_release, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_release, align 8
  %21 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %motion = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %21, i32 0, i32 7
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_foreground_select_tool_motion, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %motion, align 8
  %22 = load %struct._GimpDrawToolClass*, %struct._GimpDrawToolClass** %draw_tool_class, align 8
  %draw = getelementptr inbounds %struct._GimpDrawToolClass, %struct._GimpDrawToolClass* %22, i32 0, i32 1
  store void (%struct._GimpDrawTool*)* @gimp_foreground_select_tool_draw, void (%struct._GimpDrawTool*)** %draw, align 8
  %23 = load %struct._GimpFreeSelectToolClass*, %struct._GimpFreeSelectToolClass** %free_select_tool_class, align 8
  %select = getelementptr inbounds %struct._GimpFreeSelectToolClass, %struct._GimpFreeSelectToolClass* %23, i32 0, i32 1
  store void (%struct._GimpFreeSelectTool*, %struct._GimpDisplay*)* @gimp_foreground_select_tool_select, void (%struct._GimpFreeSelectTool*, %struct._GimpDisplay*)** %select, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_draw_tool_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_foreground_select_tool_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %options = alloca %struct._GimpToolOptions*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  %call2 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %2)
  store %struct._GimpToolOptions* %call2, %struct._GimpToolOptions** %options, align 8
  %3 = load i8*, i8** @gimp_foreground_select_tool_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_foreground_select_tool_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %constructed5 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed5, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %options, align 8
  %13 = bitcast %struct._GimpToolOptions* %12 to i8*
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %15 = bitcast %struct._GObject* %14 to i8*
  %call6 = call i64 @g_signal_connect_object(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GimpForegroundSelectOptions*, %struct._GParamSpec*, %struct._GimpForegroundSelectTool*)* @gimp_foreground_select_options_notify to void ()*), i8* %15, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_foreground_select_tool_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %fg_select = alloca %struct._GimpForegroundSelectTool*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_foreground_select_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpForegroundSelectTool*
  store %struct._GimpForegroundSelectTool* %2, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %3 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %stroke = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %3, i32 0, i32 3
  %4 = load %struct._GArray*, %struct._GArray** %stroke, align 8
  %tobool = icmp ne %struct._GArray* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %strokes = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %5, i32 0, i32 4
  %6 = load %struct._GList*, %struct._GList** %strokes, align 8
  %tobool2 = icmp ne %struct._GList* %6, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %7 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %state = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %7, i32 0, i32 6
  %8 = load %struct._SioxState*, %struct._SioxState** %state, align 8
  %tobool5 = icmp ne %struct._SioxState* %8, null
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.4
  %9 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %mask = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %9, i32 0, i32 5
  %10 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %tobool8 = icmp ne %struct._GimpChannel* %10, null
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.7
  %11 = load i8*, i8** @gimp_foreground_select_tool_parent_class, align 8
  %12 = bitcast i8* %11 to %struct._GTypeClass*
  %call11 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %12, i64 80)
  %13 = bitcast %struct._GTypeClass* %call11 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %13, i32 0, i32 6
  %14 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %15 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %14(%struct._GObject* %15)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_foreground_select_tool_control(%struct._GimpTool* %tool, i32 %action, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %action.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %fg_select = alloca %struct._GimpForegroundSelectTool*, align 8
  %list = alloca %struct._GList*, align 8
  %stroke = alloca %struct.FgSelectStroke*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %action, i32* %action.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_foreground_select_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpForegroundSelectTool*
  store %struct._GimpForegroundSelectTool* %2, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %3 = load i32, i32* %action.addr, align 4
  switch i32 %3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry, %entry
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %4 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_foreground_select_tool_set_mask(%struct._GimpForegroundSelectTool* %4, %struct._GimpDisplay* %5, %struct._GimpChannel* null)
  %6 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %strokes = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %6, i32 0, i32 4
  %7 = load %struct._GList*, %struct._GList** %strokes, align 8
  store %struct._GList* %7, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.2
  %8 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %8, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %9, i32 0, i32 0
  %10 = load i8*, i8** %data, align 8
  %11 = bitcast i8* %10 to %struct.FgSelectStroke*
  store %struct.FgSelectStroke* %11, %struct.FgSelectStroke** %stroke, align 8
  %12 = load %struct.FgSelectStroke*, %struct.FgSelectStroke** %stroke, align 8
  %points = getelementptr inbounds %struct.FgSelectStroke, %struct.FgSelectStroke* %12, i32 0, i32 3
  %13 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %14 = bitcast %struct._GimpVector2* %13 to i8*
  call void @g_free(i8* %14)
  br label %do.body

do.body:                                          ; preds = %for.body
  %15 = load %struct.FgSelectStroke*, %struct.FgSelectStroke** %stroke, align 8
  %16 = bitcast %struct.FgSelectStroke* %15 to i8*
  call void @g_slice_free1(i64 24, i8* %16)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 1
  %18 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %18, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %strokes3 = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %19, i32 0, i32 4
  %20 = load %struct._GList*, %struct._GList** %strokes3, align 8
  call void @g_list_free(%struct._GList* %20)
  %21 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %strokes4 = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %21, i32 0, i32 4
  store %struct._GList* null, %struct._GList** %strokes4, align 8
  %22 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %state = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %22, i32 0, i32 6
  %23 = load %struct._SioxState*, %struct._SioxState** %state, align 8
  %tobool5 = icmp ne %struct._SioxState* %23, null
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %24 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %state6 = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %24, i32 0, i32 6
  %25 = load %struct._SioxState*, %struct._SioxState** %state6, align 8
  call void @gimp_drawable_foreground_extract_siox_done(%struct._SioxState* %25)
  %26 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %state7 = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %26, i32 0, i32 6
  store %struct._SioxState* null, %struct._SioxState** %state7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %27 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display8 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %27, i32 0, i32 4
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %display8, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end, %sw.bb
  %28 = load i8*, i8** @gimp_foreground_select_tool_parent_class, align 8
  %29 = bitcast i8* %28 to %struct._GTypeClass*
  %call9 = call i64 @gimp_tool_get_type() #7
  %call10 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %29, i64 %call9)
  %30 = bitcast %struct._GTypeClass* %call10 to %struct._GimpToolClass*
  %control = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %30, i32 0, i32 4
  %31 = load void (%struct._GimpTool*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)** %control, align 8
  %32 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %33 = load i32, i32* %action.addr, align 4
  %34 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %31(%struct._GimpTool* %32, i32 %33, %struct._GimpDisplay* %34)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_foreground_select_tool_oper_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, i32 %proximity, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %proximity.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %fg_select = alloca %struct._GimpForegroundSelectTool*, align 8
  %status = alloca i8*, align 8
  %draw_tool = alloca %struct._GimpDrawTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store i32 %proximity, i32* %proximity.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_foreground_select_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpForegroundSelectTool*
  store %struct._GimpForegroundSelectTool* %2, %struct._GimpForegroundSelectTool** %fg_select, align 8
  store i8* null, i8** %status, align 8
  %3 = load i8*, i8** @gimp_foreground_select_tool_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_tool_get_type() #7
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpToolClass*
  %oper_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %5, i32 0, i32 12
  %6 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %oper_update, align 8
  %7 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %8 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %9 = load i32, i32* %state.addr, align 4
  %10 = load i32, i32* %proximity.addr, align 4
  %11 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %6(%struct._GimpTool* %7, %struct._GimpCoords* %8, i32 %9, i32 %10, %struct._GimpDisplay* %11)
  %12 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %mask = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %12, i32 0, i32 5
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %tobool = icmp ne %struct._GimpChannel* %13, null
  br i1 %tobool, label %land.lhs.true, label %if.else.11

land.lhs.true:                                    ; preds = %entry
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %15 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display4 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %15, i32 0, i32 4
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display4, align 8
  %cmp = icmp eq %struct._GimpDisplay* %14, %16
  br i1 %cmp, label %if.then, label %if.else.11

if.then:                                          ; preds = %land.lhs.true
  %17 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %18 = bitcast %struct._GimpTool* %17 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_draw_tool_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call5)
  %19 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpDrawTool*
  store %struct._GimpDrawTool* %19, %struct._GimpDrawTool** %draw_tool, align 8
  %20 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %20)
  %21 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %last_coords = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %21, i32 0, i32 1
  %22 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %23 = bitcast %struct._GimpCoords* %last_coords to i8*
  %24 = bitcast %struct._GimpCoords* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 64, i32 8, i1 false)
  %25 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %25)
  %26 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %strokes = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %26, i32 0, i32 4
  %27 = load %struct._GList*, %struct._GList** %strokes, align 8
  %tobool7 = icmp ne %struct._GList* %27, null
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.20, i32 0, i32 0)) #6
  store i8* %call9, i8** %status, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.21, i32 0, i32 0)) #6
  store i8* %call10, i8** %status, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  br label %if.end.18

if.else.11:                                       ; preds = %land.lhs.true, %entry
  %28 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %29 = bitcast %struct._GimpTool* %28 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_selection_tool_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call12)
  %30 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpSelectionTool*
  %function = getelementptr inbounds %struct._GimpSelectionTool, %struct._GimpSelectionTool* %30, i32 0, i32 1
  %31 = load i32, i32* %function, align 4
  %cmp14 = icmp eq i32 %31, 0
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.else.11
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i32 0, i32 0)) #6
  store i8* %call16, i8** %status, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.else.11
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end
  %32 = load i32, i32* %proximity.addr, align 4
  %tobool19 = icmp ne i32 %32, 0
  br i1 %tobool19, label %land.lhs.true.20, label %if.end.23

land.lhs.true.20:                                 ; preds = %if.end.18
  %33 = load i8*, i8** %status, align 8
  %tobool21 = icmp ne i8* %33, null
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %land.lhs.true.20
  %34 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %35 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %36 = load i8*, i8** %status, align 8
  call void (%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) @gimp_tool_replace_status(%struct._GimpTool* %34, %struct._GimpDisplay* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* %36)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %land.lhs.true.20, %if.end.18
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_foreground_select_tool_modifier_key(%struct._GimpTool* %tool, i32 %key, i32 %press, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %key.addr = alloca i32, align 4
  %press.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %options = alloca %struct._GimpForegroundSelectOptions*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %press, i32* %press.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load i32, i32* %key.addr, align 4
  %call = call i32 @gimp_get_toggle_behavior_mask()
  %cmp = icmp eq i32 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %2 = bitcast %struct._GimpTool* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_tool_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpTool*
  %call3 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %3)
  %4 = bitcast %struct._GimpToolOptions* %call3 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_foreground_select_options_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpForegroundSelectOptions*
  store %struct._GimpForegroundSelectOptions* %5, %struct._GimpForegroundSelectOptions** %options, align 8
  %6 = load %struct._GimpForegroundSelectOptions*, %struct._GimpForegroundSelectOptions** %options, align 8
  %7 = bitcast %struct._GimpForegroundSelectOptions* %6 to i8*
  %8 = load %struct._GimpForegroundSelectOptions*, %struct._GimpForegroundSelectOptions** %options, align 8
  %background = getelementptr inbounds %struct._GimpForegroundSelectOptions, %struct._GimpForegroundSelectOptions* %8, i32 0, i32 2
  %9 = load i32, i32* %background, align 4
  %tobool = icmp ne i32 %9, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  call void (i8*, i8*, ...) @g_object_set(i8* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i32 %lnot.ext, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_foreground_select_tool_cursor_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %fg_select = alloca %struct._GimpForegroundSelectTool*, align 8
  %options = alloca %struct._GimpForegroundSelectOptions*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_foreground_select_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpForegroundSelectTool*
  store %struct._GimpForegroundSelectTool* %2, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %3 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %mask = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %3, i32 0, i32 5
  %4 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %tobool = icmp ne %struct._GimpChannel* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %6 = bitcast %struct._GimpTool* %5 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call2)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %7)
  %8 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_foreground_select_options_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpForegroundSelectOptions*
  store %struct._GimpForegroundSelectOptions* %9, %struct._GimpForegroundSelectOptions** %options, align 8
  %10 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %10, i32 0, i32 3
  %11 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %12 = load %struct._GimpForegroundSelectOptions*, %struct._GimpForegroundSelectOptions** %options, align 8
  %background = getelementptr inbounds %struct._GimpForegroundSelectOptions, %struct._GimpForegroundSelectOptions* %12, i32 0, i32 2
  %13 = load i32, i32* %background, align 4
  call void @gimp_tool_control_set_toggled(%struct._GimpToolControl* %11, i32 %13)
  %14 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %15 = bitcast %struct._GimpTool* %14 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_selection_tool_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call7)
  %16 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpSelectionTool*
  %function = getelementptr inbounds %struct._GimpSelectionTool, %struct._GimpSelectionTool* %16, i32 0, i32 1
  %17 = load i32, i32* %function, align 4
  switch i32 %17, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then, %if.then, %if.then, %if.then
  br label %return

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %entry
  %18 = load i8*, i8** @gimp_foreground_select_tool_parent_class, align 8
  %19 = bitcast i8* %18 to %struct._GTypeClass*
  %call9 = call i64 @gimp_tool_get_type() #7
  %call10 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %19, i64 %call9)
  %20 = bitcast %struct._GTypeClass* %call10 to %struct._GimpToolClass*
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %20, i32 0, i32 13
  %21 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %22 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %23 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %24 = load i32, i32* %state.addr, align 4
  %25 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %21(%struct._GimpTool* %22, %struct._GimpCoords* %23, i32 %24, %struct._GimpDisplay* %25)
  br label %return

return:                                           ; preds = %if.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_foreground_select_tool_key_press(%struct._GimpTool* %tool, %struct._GdkEventKey* %kevent, %struct._GimpDisplay* %display) #3 {
entry:
  %retval = alloca i32, align 4
  %tool.addr = alloca %struct._GimpTool*, align 8
  %kevent.addr = alloca %struct._GdkEventKey*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %fg_select = alloca %struct._GimpForegroundSelectTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GdkEventKey* %kevent, %struct._GdkEventKey** %kevent.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_foreground_select_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpForegroundSelectTool*
  store %struct._GimpForegroundSelectTool* %2, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %4 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display2 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %4, i32 0, i32 4
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display2, align 8
  %cmp = icmp ne %struct._GimpDisplay* %3, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %state = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %6, i32 0, i32 6
  %7 = load %struct._SioxState*, %struct._SioxState** %state, align 8
  %tobool = icmp ne %struct._SioxState* %7, null
  br i1 %tobool, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %8 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %keyval = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %8, i32 0, i32 5
  %9 = load i32, i32* %keyval, align 4
  switch i32 %9, label %sw.default [
    i32 65293, label %sw.bb
    i32 65421, label %sw.bb
    i32 65076, label %sw.bb
    i32 65307, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %if.then.3, %if.then.3, %if.then.3
  %10 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %11 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_foreground_select_tool_apply(%struct._GimpForegroundSelectTool* %10, %struct._GimpDisplay* %11)
  store i32 1, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %if.then.3
  %12 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_control(%struct._GimpTool* %12, i32 2, %struct._GimpDisplay* %13)
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.then.3
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  %14 = load i8*, i8** @gimp_foreground_select_tool_parent_class, align 8
  %15 = bitcast i8* %14 to %struct._GTypeClass*
  %call5 = call i64 @gimp_tool_get_type() #7
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %15, i64 %call5)
  %16 = bitcast %struct._GTypeClass* %call6 to %struct._GimpToolClass*
  %key_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %16, i32 0, i32 8
  %17 = load i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)*, i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)** %key_press, align 8
  %18 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %19 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %20 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call7 = call i32 %17(%struct._GimpTool* %18, %struct._GdkEventKey* %19, %struct._GimpDisplay* %20)
  store i32 %call7, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %sw.default, %sw.bb.4, %sw.bb, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal void @gimp_foreground_select_tool_button_press(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %press_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %press_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %fg_select = alloca %struct._GimpForegroundSelectTool*, align 8
  %draw_tool = alloca %struct._GimpDrawTool*, align 8
  %point = alloca %struct._GimpVector2, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %press_type, i32* %press_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_foreground_select_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpForegroundSelectTool*
  store %struct._GimpForegroundSelectTool* %2, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_draw_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDrawTool*
  store %struct._GimpDrawTool* %5, %struct._GimpDrawTool** %draw_tool, align 8
  %6 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %mask = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %6, i32 0, i32 5
  %7 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %tobool = icmp ne %struct._GimpChannel* %7, null
  br i1 %tobool, label %if.then, label %if.else.20

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %8, i32 0, i32 0
  %9 = load double, double* %x, align 8
  %10 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %10, i32 0, i32 1
  %11 = load double, double* %y, align 8
  %call4 = call { double, double } @gimp_vector2_new(double %9, double %11)
  %12 = bitcast %struct._GimpVector2* %point to { double, double }*
  %13 = getelementptr { double, double }, { double, double }* %12, i32 0, i32 0
  %14 = extractvalue { double, double } %call4, 0
  store double %14, double* %13, align 8
  %15 = getelementptr { double, double }, { double, double }* %12, i32 0, i32 1
  %16 = extractvalue { double, double } %call4, 1
  store double %16, double* %15, align 8
  %17 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %17)
  %18 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %call5 = call i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool* %18)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %19 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %display7 = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %19, i32 0, i32 1
  %20 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display7, align 8
  %21 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %cmp = icmp ne %struct._GimpDisplay* %20, %21
  br i1 %cmp, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %land.lhs.true
  %22 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_stop(%struct._GimpDrawTool* %22)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %land.lhs.true, %if.then
  %23 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %23, i32 0, i32 3
  %24 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_activate(%struct._GimpToolControl* %24)
  %25 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %last_coords = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %25, i32 0, i32 1
  %26 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %27 = bitcast %struct._GimpCoords* %last_coords to i8*
  %28 = bitcast %struct._GimpCoords* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 64, i32 8, i1 false)
  br label %do.body

do.body:                                          ; preds = %if.end
  %29 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %stroke = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %29, i32 0, i32 3
  %30 = load %struct._GArray*, %struct._GArray** %stroke, align 8
  %cmp9 = icmp eq %struct._GArray* %30, null
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body
  br label %if.end.11

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__func__.gimp_foreground_select_tool_button_press, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.23

if.end.11:                                        ; preds = %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %call12 = call %struct._GArray* @g_array_new(i32 0, i32 0, i32 16)
  %31 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %stroke13 = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %31, i32 0, i32 3
  store %struct._GArray* %call12, %struct._GArray** %stroke13, align 8
  %32 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %stroke14 = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %32, i32 0, i32 3
  %33 = load %struct._GArray*, %struct._GArray** %stroke14, align 8
  %34 = bitcast %struct._GimpVector2* %point to i8*
  %call15 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %33, i8* %34, i32 1)
  %35 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %call16 = call i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool* %35)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %do.end
  %36 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %37 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_draw_tool_start(%struct._GimpDrawTool* %36, %struct._GimpDisplay* %37)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %do.end
  %38 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %38)
  br label %if.end.23

if.else.20:                                       ; preds = %entry
  %39 = load i8*, i8** @gimp_foreground_select_tool_parent_class, align 8
  %40 = bitcast i8* %39 to %struct._GTypeClass*
  %call21 = call i64 @gimp_tool_get_type() #7
  %call22 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %40, i64 %call21)
  %41 = bitcast %struct._GTypeClass* %call22 to %struct._GimpToolClass*
  %button_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %41, i32 0, i32 5
  %42 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_press, align 8
  %43 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %44 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %45 = load i32, i32* %time.addr, align 4
  %46 = load i32, i32* %state.addr, align 4
  %47 = load i32, i32* %press_type.addr, align 4
  %48 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %42(%struct._GimpTool* %43, %struct._GimpCoords* %44, i32 %45, i32 %46, i32 %47, %struct._GimpDisplay* %48)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.else.20, %if.end.19
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_foreground_select_tool_button_release(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %release_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %release_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %fg_select = alloca %struct._GimpForegroundSelectTool*, align 8
  %options = alloca %struct._GimpForegroundSelectOptions*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %release_type, i32* %release_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_foreground_select_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpForegroundSelectTool*
  store %struct._GimpForegroundSelectTool* %2, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %3 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %mask = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %3, i32 0, i32 5
  %4 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %tobool = icmp ne %struct._GimpChannel* %4, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %6 = bitcast %struct._GimpTool* %5 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call2)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %7)
  %8 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_foreground_select_options_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpForegroundSelectOptions*
  store %struct._GimpForegroundSelectOptions* %9, %struct._GimpForegroundSelectOptions** %options, align 8
  %10 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %11 = bitcast %struct._GimpTool* %10 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_draw_tool_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call7)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %12)
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %13, i32 0, i32 3
  %14 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_halt(%struct._GimpToolControl* %14)
  %15 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %17 = load %struct._GimpForegroundSelectOptions*, %struct._GimpForegroundSelectOptions** %options, align 8
  call void @gimp_foreground_select_tool_push_stroke(%struct._GimpForegroundSelectTool* %15, %struct._GimpDisplay* %16, %struct._GimpForegroundSelectOptions* %17)
  %18 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %19 = bitcast %struct._GimpTool* %18 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_free_select_tool_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call9)
  %20 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpFreeSelectTool*
  %21 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_free_select_tool_select(%struct._GimpFreeSelectTool* %20, %struct._GimpDisplay* %21)
  %22 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %23 = bitcast %struct._GimpTool* %22 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_draw_tool_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call11)
  %24 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %24)
  br label %if.end

if.else:                                          ; preds = %entry
  %25 = load i8*, i8** @gimp_foreground_select_tool_parent_class, align 8
  %26 = bitcast i8* %25 to %struct._GTypeClass*
  %call13 = call i64 @gimp_tool_get_type() #7
  %call14 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %26, i64 %call13)
  %27 = bitcast %struct._GTypeClass* %call14 to %struct._GimpToolClass*
  %button_release = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %27, i32 0, i32 6
  %28 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_release, align 8
  %29 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %30 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %31 = load i32, i32* %time.addr, align 4
  %32 = load i32, i32* %state.addr, align 4
  %33 = load i32, i32* %release_type.addr, align 4
  %34 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %28(%struct._GimpTool* %29, %struct._GimpCoords* %30, i32 %31, i32 %32, i32 %33, %struct._GimpDisplay* %34)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_foreground_select_tool_motion(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %fg_select = alloca %struct._GimpForegroundSelectTool*, align 8
  %last = alloca %struct._GimpVector2*, align 8
  %point = alloca %struct._GimpVector2, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_foreground_select_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpForegroundSelectTool*
  store %struct._GimpForegroundSelectTool* %2, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %3 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %mask = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %3, i32 0, i32 5
  %4 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %tobool = icmp ne %struct._GimpChannel* %4, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %stroke = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %5, i32 0, i32 3
  %6 = load %struct._GArray*, %struct._GArray** %stroke, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %6, i32 0, i32 1
  %7 = load i32, i32* %len, align 4
  %sub = sub i32 %7, 1
  %idxprom = zext i32 %sub to i64
  %8 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %stroke2 = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %8, i32 0, i32 3
  %9 = load %struct._GArray*, %struct._GArray** %stroke2, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %9, i32 0, i32 0
  %10 = load i8*, i8** %data, align 8
  %11 = bitcast i8* %10 to %struct._GimpVector2*
  %arrayidx = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %11, i64 %idxprom
  store %struct._GimpVector2* %arrayidx, %struct._GimpVector2** %last, align 8
  %12 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %13 = bitcast %struct._GimpTool* %12 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_draw_tool_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call3)
  %14 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %14)
  %15 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %last_coords = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %15, i32 0, i32 1
  %16 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %17 = bitcast %struct._GimpCoords* %last_coords to i8*
  %18 = bitcast %struct._GimpCoords* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 64, i32 8, i1 false)
  %19 = load %struct._GimpVector2*, %struct._GimpVector2** %last, align 8
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %19, i32 0, i32 0
  %20 = load double, double* %x, align 8
  %21 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x5 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %21, i32 0, i32 0
  %22 = load double, double* %x5, align 8
  %conv = fptosi double %22 to i32
  %conv6 = sitofp i32 %conv to double
  %cmp = fcmp une double %20, %conv6
  br i1 %cmp, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %23 = load %struct._GimpVector2*, %struct._GimpVector2** %last, align 8
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %23, i32 0, i32 1
  %24 = load double, double* %y, align 8
  %25 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y8 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %25, i32 0, i32 1
  %26 = load double, double* %y8, align 8
  %conv9 = fptosi double %26 to i32
  %conv10 = sitofp i32 %conv9 to double
  %cmp11 = fcmp une double %24, %conv10
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %lor.lhs.false, %if.then
  %27 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x14 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %27, i32 0, i32 0
  %28 = load double, double* %x14, align 8
  %29 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y15 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %29, i32 0, i32 1
  %30 = load double, double* %y15, align 8
  %call16 = call { double, double } @gimp_vector2_new(double %28, double %30)
  %31 = bitcast %struct._GimpVector2* %point to { double, double }*
  %32 = getelementptr { double, double }, { double, double }* %31, i32 0, i32 0
  %33 = extractvalue { double, double } %call16, 0
  store double %33, double* %32, align 8
  %34 = getelementptr { double, double }, { double, double }* %31, i32 0, i32 1
  %35 = extractvalue { double, double } %call16, 1
  store double %35, double* %34, align 8
  %36 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %stroke17 = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %36, i32 0, i32 3
  %37 = load %struct._GArray*, %struct._GArray** %stroke17, align 8
  %38 = bitcast %struct._GimpVector2* %point to i8*
  %call18 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %37, i8* %38, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then.13, %lor.lhs.false
  %39 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %40 = bitcast %struct._GimpTool* %39 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_draw_tool_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call19)
  %41 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %41)
  br label %if.end.23

if.else:                                          ; preds = %entry
  %42 = load i8*, i8** @gimp_foreground_select_tool_parent_class, align 8
  %43 = bitcast i8* %42 to %struct._GTypeClass*
  %call21 = call i64 @gimp_tool_get_type() #7
  %call22 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %43, i64 %call21)
  %44 = bitcast %struct._GTypeClass* %call22 to %struct._GimpToolClass*
  %motion = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %44, i32 0, i32 7
  %45 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %motion, align 8
  %46 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %47 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %48 = load i32, i32* %time.addr, align 4
  %49 = load i32, i32* %state.addr, align 4
  %50 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %45(%struct._GimpTool* %46, %struct._GimpCoords* %47, i32 %48, i32 %49, %struct._GimpDisplay* %50)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_foreground_select_tool_draw(%struct._GimpDrawTool* %draw_tool) #3 {
entry:
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %fg_select = alloca %struct._GimpForegroundSelectTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %options = alloca %struct._GimpForegroundSelectOptions*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %radius = alloca double, align 8
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_foreground_select_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpForegroundSelectTool*
  store %struct._GimpForegroundSelectTool* %2, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %3 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %4 = bitcast %struct._GimpDrawTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  store %struct._GimpTool* %5, %struct._GimpTool** %tool, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %7 = bitcast %struct._GimpTool* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_tool_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpTool*
  %call6 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %8)
  %9 = bitcast %struct._GimpToolOptions* %call6 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_foreground_select_options_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpForegroundSelectOptions*
  store %struct._GimpForegroundSelectOptions* %10, %struct._GimpForegroundSelectOptions** %options, align 8
  %11 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %stroke = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %11, i32 0, i32 3
  %12 = load %struct._GArray*, %struct._GArray** %stroke, align 8
  %tobool = icmp ne %struct._GArray* %12, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %14 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %stroke9 = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %14, i32 0, i32 3
  %15 = load %struct._GArray*, %struct._GArray** %stroke9, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %15, i32 0, i32 0
  %16 = load i8*, i8** %data, align 8
  %17 = bitcast i8* %16 to %struct._GimpVector2*
  %18 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %stroke10 = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %18, i32 0, i32 3
  %19 = load %struct._GArray*, %struct._GArray** %stroke10, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %19, i32 0, i32 1
  %20 = load i32, i32* %len, align 4
  %21 = load %struct._GimpForegroundSelectOptions*, %struct._GimpForegroundSelectOptions** %options, align 8
  %22 = bitcast %struct._GimpForegroundSelectOptions* %21 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_context_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call11)
  %23 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpContext*
  %24 = load %struct._GimpForegroundSelectOptions*, %struct._GimpForegroundSelectOptions** %options, align 8
  %background = getelementptr inbounds %struct._GimpForegroundSelectOptions, %struct._GimpForegroundSelectOptions* %24, i32 0, i32 2
  %25 = load i32, i32* %background, align 4
  %tobool13 = icmp ne i32 %25, 0
  %cond = select i1 %tobool13, i32 1, i32 0
  %26 = load %struct._GimpForegroundSelectOptions*, %struct._GimpForegroundSelectOptions** %options, align 8
  %stroke_width = getelementptr inbounds %struct._GimpForegroundSelectOptions, %struct._GimpForegroundSelectOptions* %26, i32 0, i32 3
  %27 = load i32, i32* %stroke_width, align 4
  %call14 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_pen(%struct._GimpDrawTool* %13, %struct._GimpVector2* %17, i32 %20, %struct._GimpContext* %23, i32 %cond, i32 %27)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %28 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %mask = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %28, i32 0, i32 5
  %29 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %tobool15 = icmp ne %struct._GimpChannel* %29, null
  br i1 %tobool15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.end
  %30 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %display = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %30, i32 0, i32 1
  %31 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call17 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %31)
  store %struct._GimpDisplayShell* %call17, %struct._GimpDisplayShell** %shell, align 8
  %32 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %last_coords = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %32, i32 0, i32 1
  %x18 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords, i32 0, i32 0
  %33 = load double, double* %x18, align 8
  %conv = fptosi double %33 to i32
  store i32 %conv, i32* %x, align 4
  %34 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %last_coords19 = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %34, i32 0, i32 1
  %y20 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords19, i32 0, i32 1
  %35 = load double, double* %y20, align 8
  %conv21 = fptosi double %35 to i32
  store i32 %conv21, i32* %y, align 4
  %36 = load %struct._GimpForegroundSelectOptions*, %struct._GimpForegroundSelectOptions** %options, align 8
  %stroke_width22 = getelementptr inbounds %struct._GimpForegroundSelectOptions, %struct._GimpForegroundSelectOptions* %36, i32 0, i32 3
  %37 = load i32, i32* %stroke_width22, align 4
  %conv23 = sitofp i32 %37 to double
  %38 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %38, i32 0, i32 14
  %39 = load double, double* %scale_y, align 8
  %div = fdiv double %conv23, %39
  %div24 = fdiv double %div, 2.000000e+00
  store double %div24, double* %radius, align 8
  %40 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %41 = load i32, i32* %x, align 4
  %conv25 = sitofp i32 %41 to double
  %42 = load double, double* %radius, align 8
  %sub = fsub double %conv25, %42
  %43 = load i32, i32* %y, align 4
  %conv26 = sitofp i32 %43 to double
  %44 = load double, double* %radius, align 8
  %sub27 = fsub double %conv26, %44
  %45 = load double, double* %radius, align 8
  %mul = fmul double 2.000000e+00, %45
  %46 = load double, double* %radius, align 8
  %mul28 = fmul double 2.000000e+00, %46
  %call29 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_arc(%struct._GimpDrawTool* %40, i32 0, double %sub, double %sub27, double %mul, double %mul28, double 0.000000e+00, double 0x401921FB54442D18)
  br label %if.end.32

if.else:                                          ; preds = %if.end
  %47 = load i8*, i8** @gimp_foreground_select_tool_parent_class, align 8
  %48 = bitcast i8* %47 to %struct._GTypeClass*
  %call30 = call i64 @gimp_draw_tool_get_type() #7
  %call31 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %48, i64 %call30)
  %49 = bitcast %struct._GTypeClass* %call31 to %struct._GimpDrawToolClass*
  %draw = getelementptr inbounds %struct._GimpDrawToolClass, %struct._GimpDrawToolClass* %49, i32 0, i32 1
  %50 = load void (%struct._GimpDrawTool*)*, void (%struct._GimpDrawTool*)** %draw, align 8
  %51 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  call void %50(%struct._GimpDrawTool* %51)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else, %if.then.16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_foreground_select_tool_select(%struct._GimpFreeSelectTool* %free_sel, %struct._GimpDisplay* %display) #3 {
entry:
  %free_sel.addr = alloca %struct._GimpFreeSelectTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %fg_select = alloca %struct._GimpForegroundSelectTool*, align 8
  %options = alloca %struct._GimpForegroundSelectOptions*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %scan_convert = alloca %struct._GimpScanConvert*, align 8
  %mask = alloca %struct._GimpChannel*, align 8
  %points = alloca %struct._GimpVector2*, align 8
  %n_points = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  store %struct._GimpFreeSelectTool* %free_sel, %struct._GimpFreeSelectTool** %free_sel.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %1)
  store %struct._GimpDrawable* %call1, %struct._GimpDrawable** %drawable, align 8
  %2 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %free_sel.addr, align 8
  %3 = bitcast %struct._GimpFreeSelectTool* %2 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_foreground_select_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call2)
  %4 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpForegroundSelectTool*
  store %struct._GimpForegroundSelectTool* %4, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %5 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %free_sel.addr, align 8
  %6 = bitcast %struct._GimpFreeSelectTool* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_tool_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpTool*
  %call6 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %7)
  %8 = bitcast %struct._GimpToolOptions* %call6 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_foreground_select_options_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call7)
  %9 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpForegroundSelectOptions*
  store %struct._GimpForegroundSelectOptions* %9, %struct._GimpForegroundSelectOptions** %options, align 8
  %10 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %idle_id = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %10, i32 0, i32 2
  %11 = load i32, i32* %idle_id, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %idle_id9 = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %12, i32 0, i32 2
  %13 = load i32, i32* %idle_id9, align 4
  %call10 = call i32 @g_source_remove(i32 %13)
  %14 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %idle_id11 = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %14, i32 0, i32 2
  store i32 0, i32* %idle_id11, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool12 = icmp ne %struct._GimpDrawable* %15, null
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end
  br label %return

if.end.14:                                        ; preds = %if.end
  %call15 = call %struct._GimpScanConvert* @gimp_scan_convert_new()
  store %struct._GimpScanConvert* %call15, %struct._GimpScanConvert** %scan_convert, align 8
  %16 = load %struct._GimpFreeSelectTool*, %struct._GimpFreeSelectTool** %free_sel.addr, align 8
  call void @gimp_free_select_tool_get_points(%struct._GimpFreeSelectTool* %16, %struct._GimpVector2** %points, i32* %n_points)
  %17 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %scan_convert, align 8
  %18 = load i32, i32* %n_points, align 4
  %19 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  call void @gimp_scan_convert_add_polyline(%struct._GimpScanConvert* %17, i32 %18, %struct._GimpVector2* %19, i32 1)
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call16 = call i32 @gimp_image_get_width(%struct._GimpImage* %21)
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call17 = call i32 @gimp_image_get_height(%struct._GimpImage* %22)
  %call18 = call %struct._GimpChannel* @gimp_channel_new(%struct._GimpImage* %20, i32 %call16, i32 %call17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i32 0, i32 0), %struct._GimpRGB* null)
  store %struct._GimpChannel* %call18, %struct._GimpChannel** %mask, align 8
  %23 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %scan_convert, align 8
  %24 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %25 = bitcast %struct._GimpChannel* %24 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_drawable_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call19)
  %26 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpDrawable*
  %call21 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %26)
  call void @gimp_scan_convert_render_value(%struct._GimpScanConvert* %23, %struct._TileManager* %call21, i32 0, i32 0, i8 zeroext -128)
  %27 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %scan_convert, align 8
  call void @gimp_scan_convert_free(%struct._GimpScanConvert* %27)
  %28 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %strokes = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %28, i32 0, i32 4
  %29 = load %struct._GList*, %struct._GList** %strokes, align 8
  %tobool22 = icmp ne %struct._GList* %29, null
  br i1 %tobool22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end.14
  %30 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %30, i32 0, i32 1
  %31 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @gimp_set_busy(%struct._Gimp* %31)
  %32 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %strokes24 = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %32, i32 0, i32 4
  %33 = load %struct._GList*, %struct._GList** %strokes24, align 8
  store %struct._GList* %33, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.23
  %34 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool25 = icmp ne %struct._GList* %34, null
  br i1 %tobool25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %36 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %36, i32 0, i32 0
  %37 = load i8*, i8** %data, align 8
  %38 = bitcast i8* %37 to %struct.FgSelectStroke*
  call void @gimp_foreground_select_tool_stroke(%struct._GimpChannel* %35, %struct.FgSelectStroke* %38)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %39, i32 0, i32 1
  %40 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %40, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %state = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %41, i32 0, i32 6
  %42 = load %struct._SioxState*, %struct._SioxState** %state, align 8
  %tobool26 = icmp ne %struct._SioxState* %42, null
  br i1 %tobool26, label %if.then.27, label %if.end.34

if.then.27:                                       ; preds = %for.end
  %43 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %44 = bitcast %struct._GimpChannel* %43 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_drawable_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call28)
  %45 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpDrawable*
  %46 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %state30 = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %46, i32 0, i32 6
  %47 = load %struct._SioxState*, %struct._SioxState** %state30, align 8
  %48 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %refinement = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %48, i32 0, i32 7
  %49 = load i32, i32* %refinement, align 4
  %50 = load %struct._GimpForegroundSelectOptions*, %struct._GimpForegroundSelectOptions** %options, align 8
  %smoothness = getelementptr inbounds %struct._GimpForegroundSelectOptions, %struct._GimpForegroundSelectOptions* %50, i32 0, i32 4
  %51 = load i32, i32* %smoothness, align 4
  %52 = load %struct._GimpForegroundSelectOptions*, %struct._GimpForegroundSelectOptions** %options, align 8
  %sensitivity = getelementptr inbounds %struct._GimpForegroundSelectOptions, %struct._GimpForegroundSelectOptions* %52, i32 0, i32 7
  %arraydecay = getelementptr inbounds [3 x double], [3 x double]* %sensitivity, i32 0, i32 0
  %53 = load %struct._GimpForegroundSelectOptions*, %struct._GimpForegroundSelectOptions** %options, align 8
  %contiguous = getelementptr inbounds %struct._GimpForegroundSelectOptions, %struct._GimpForegroundSelectOptions* %53, i32 0, i32 1
  %54 = load i32, i32* %contiguous, align 4
  %tobool31 = icmp ne i32 %54, 0
  %lnot = xor i1 %tobool31, true
  %lnot.ext = zext i1 %lnot to i32
  %55 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %56 = bitcast %struct._GimpForegroundSelectTool* %55 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_progress_interface_get_type() #7
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call32)
  %57 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpProgress*
  call void @gimp_drawable_foreground_extract_siox(%struct._GimpDrawable* %45, %struct._SioxState* %47, i32 %49, i32 %51, double* %arraydecay, i32 %lnot.ext, %struct._GimpProgress* %57)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.27, %for.end
  %58 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %refinement35 = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %58, i32 0, i32 7
  store i32 0, i32* %refinement35, align 4
  %59 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp36 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %59, i32 0, i32 1
  %60 = load %struct._Gimp*, %struct._Gimp** %gimp36, align 8
  call void @gimp_unset_busy(%struct._Gimp* %60)
  br label %if.end.44

if.else:                                          ; preds = %if.end.14
  %61 = load %struct._GimpForegroundSelectOptions*, %struct._GimpForegroundSelectOptions** %options, align 8
  %62 = bitcast %struct._GimpForegroundSelectOptions* %61 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i32 0, i8* null)
  %63 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  call void @gimp_foreground_select_tool_get_area(%struct._GimpChannel* %63, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %64 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %state37 = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %64, i32 0, i32 6
  %65 = load %struct._SioxState*, %struct._SioxState** %state37, align 8
  %tobool38 = icmp ne %struct._SioxState* %65, null
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.else
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i32 0, i32 0))
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.else
  %66 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %67 = load i32, i32* %x1, align 4
  %68 = load i32, i32* %y1, align 4
  %69 = load i32, i32* %x2, align 4
  %70 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %69, %70
  %71 = load i32, i32* %y2, align 4
  %72 = load i32, i32* %y1, align 4
  %sub41 = sub nsw i32 %71, %72
  %call42 = call %struct._SioxState* @gimp_drawable_foreground_extract_siox_init(%struct._GimpDrawable* %66, i32 %67, i32 %68, i32 %sub, i32 %sub41)
  %73 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %state43 = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %73, i32 0, i32 6
  store %struct._SioxState* %call42, %struct._SioxState** %state43, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.40, %if.end.34
  %74 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select, align 8
  %75 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %76 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  call void @gimp_foreground_select_tool_set_mask(%struct._GimpForegroundSelectTool* %74, %struct._GimpDisplay* %75, %struct._GimpChannel* %76)
  %77 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %78 = bitcast %struct._GimpChannel* %77 to i8*
  call void @g_object_unref(i8* %78)
  br label %return

return:                                           ; preds = %if.end.44, %if.then.13
  ret void
}

declare %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_foreground_select_options_notify(%struct._GimpForegroundSelectOptions* %options, %struct._GParamSpec* %pspec, %struct._GimpForegroundSelectTool* %fg_select) #3 {
entry:
  %options.addr = alloca %struct._GimpForegroundSelectOptions*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %fg_select.addr = alloca %struct._GimpForegroundSelectTool*, align 8
  %refinement = alloca i32, align 4
  %tool = alloca %struct._GimpTool*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GimpForegroundSelectOptions* %options, %struct._GimpForegroundSelectOptions** %options.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpForegroundSelectTool* %fg_select, %struct._GimpForegroundSelectTool** %fg_select.addr, align 8
  store i32 0, i32* %refinement, align 4
  %0 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select.addr, align 8
  %mask = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %0, i32 0, i32 5
  %1 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %tobool = icmp ne %struct._GimpChannel* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.43

if.end:                                           ; preds = %entry
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  %call = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0)) #8
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  store i32 8, i32* %refinement, align 4
  br label %if.end.13

if.else:                                          ; preds = %if.end
  %4 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name2 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %4, i32 0, i32 1
  %5 = load i8*, i8** %name2, align 8
  %call3 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0)) #8
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else
  store i32 16, i32* %refinement, align 4
  br label %if.end.12

if.else.6:                                        ; preds = %if.else
  %6 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name7 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %6, i32 0, i32 1
  %7 = load i8*, i8** %name7, align 8
  %call8 = call i32 @g_str_has_prefix(i8* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0))
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.else.6
  store i32 4, i32* %refinement, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.else.6
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then.5
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.1
  %8 = load i32, i32* %refinement, align 4
  %tobool14 = icmp ne i32 %8, 0
  br i1 %tobool14, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %if.end.13
  %9 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select.addr, align 8
  %strokes = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %9, i32 0, i32 4
  %10 = load %struct._GList*, %struct._GList** %strokes, align 8
  %tobool15 = icmp ne %struct._GList* %10, null
  br i1 %tobool15, label %if.then.16, label %if.end.25

if.then.16:                                       ; preds = %land.lhs.true
  %11 = load i32, i32* %refinement, align 4
  %12 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select.addr, align 8
  %refinement17 = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %12, i32 0, i32 7
  %13 = load i32, i32* %refinement17, align 4
  %or = or i32 %13, %11
  store i32 %or, i32* %refinement17, align 4
  %14 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select.addr, align 8
  %idle_id = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %14, i32 0, i32 2
  %15 = load i32, i32* %idle_id, align 4
  %tobool18 = icmp ne i32 %15, 0
  br i1 %tobool18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %if.then.16
  %16 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select.addr, align 8
  %idle_id20 = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %16, i32 0, i32 2
  %17 = load i32, i32* %idle_id20, align 4
  %call21 = call i32 @g_source_remove(i32 %17)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %if.then.16
  %18 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select.addr, align 8
  %19 = bitcast %struct._GimpForegroundSelectTool* %18 to i8*
  %call23 = call i32 @g_timeout_add_full(i32 300, i32 300, i32 (i8*)* bitcast (i32 (%struct._GimpForegroundSelectTool*)* @gimp_foreground_select_tool_idle_select to i32 (i8*)*), i8* %19, void (i8*)* null)
  %20 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select.addr, align 8
  %idle_id24 = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %20, i32 0, i32 2
  store i32 %call23, i32* %idle_id24, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.22, %land.lhs.true, %if.end.13
  %21 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name26 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %21, i32 0, i32 1
  %22 = load i8*, i8** %name26, align 8
  %call27 = call i32 @g_str_has_prefix(i8* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0))
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.43

if.then.29:                                       ; preds = %if.end.25
  %23 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select.addr, align 8
  %24 = bitcast %struct._GimpForegroundSelectTool* %23 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_tool_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call30)
  %25 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpTool*
  store %struct._GimpTool* %25, %struct._GimpTool** %tool, align 8
  %26 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %26, i32 0, i32 4
  %27 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool32 = icmp ne %struct._GimpDisplay* %27, null
  br i1 %tobool32, label %land.lhs.true.33, label %if.end.42

land.lhs.true.33:                                 ; preds = %if.then.29
  %28 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select.addr, align 8
  %mask34 = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %28, i32 0, i32 5
  %29 = load %struct._GimpChannel*, %struct._GimpChannel** %mask34, align 8
  %tobool35 = icmp ne %struct._GimpChannel* %29, null
  br i1 %tobool35, label %if.then.36, label %if.end.42

if.then.36:                                       ; preds = %land.lhs.true.33
  %30 = load %struct._GimpForegroundSelectOptions*, %struct._GimpForegroundSelectOptions** %options.addr, align 8
  call void @gimp_foreground_select_options_get_mask_color(%struct._GimpForegroundSelectOptions* %30, %struct._GimpRGB* %color)
  %31 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display37 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %31, i32 0, i32 4
  %32 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display37, align 8
  %call38 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %32)
  %33 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select.addr, align 8
  %mask39 = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %33, i32 0, i32 5
  %34 = load %struct._GimpChannel*, %struct._GimpChannel** %mask39, align 8
  %35 = bitcast %struct._GimpChannel* %34 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_drawable_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call40)
  %36 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpDrawable*
  call void @gimp_display_shell_set_mask(%struct._GimpDisplayShell* %call38, %struct._GimpDrawable* %36, %struct._GimpRGB* %color)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.36, %land.lhs.true.33, %if.then.29
  br label %if.end.43

if.end.43:                                        ; preds = %if.then, %if.end.42, %if.end.25
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare i32 @g_str_has_prefix(i8*, i8*) #1

declare i32 @g_source_remove(i32) #1

declare i32 @g_timeout_add_full(i32, i32, i32 (i8*)*, i8*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_foreground_select_tool_idle_select(%struct._GimpForegroundSelectTool* %fg_select) #3 {
entry:
  %fg_select.addr = alloca %struct._GimpForegroundSelectTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  store %struct._GimpForegroundSelectTool* %fg_select, %struct._GimpForegroundSelectTool** %fg_select.addr, align 8
  %0 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select.addr, align 8
  %1 = bitcast %struct._GimpForegroundSelectTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select.addr, align 8
  %idle_id = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %3, i32 0, i32 2
  store i32 0, i32* %idle_id, align 4
  %4 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %4, i32 0, i32 4
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %7 = bitcast %struct._GimpTool* %6 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_free_select_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call2)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpFreeSelectTool*
  %9 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display4 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %9, i32 0, i32 4
  %10 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display4, align 8
  call void @gimp_free_select_tool_select(%struct._GimpFreeSelectTool* %8, %struct._GimpDisplay* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

declare void @gimp_foreground_select_options_get_mask_color(%struct._GimpForegroundSelectOptions*, %struct._GimpRGB*) #1

declare void @gimp_display_shell_set_mask(%struct._GimpDisplayShell*, %struct._GimpDrawable*, %struct._GimpRGB*) #1

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

declare void @gimp_free_select_tool_select(%struct._GimpFreeSelectTool*, %struct._GimpDisplay*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: nounwind uwtable
define internal void @gimp_foreground_select_tool_set_mask(%struct._GimpForegroundSelectTool* %fg_select, %struct._GimpDisplay* %display, %struct._GimpChannel* %mask) #3 {
entry:
  %fg_select.addr = alloca %struct._GimpForegroundSelectTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %mask.addr = alloca %struct._GimpChannel*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %options = alloca %struct._GimpForegroundSelectOptions*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GimpForegroundSelectTool* %fg_select, %struct._GimpForegroundSelectTool** %fg_select.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store %struct._GimpChannel* %mask, %struct._GimpChannel** %mask.addr, align 8
  %0 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select.addr, align 8
  %1 = bitcast %struct._GimpForegroundSelectTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_foreground_select_options_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpForegroundSelectOptions*
  store %struct._GimpForegroundSelectOptions* %7, %struct._GimpForegroundSelectOptions** %options, align 8
  %8 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select.addr, align 8
  %mask7 = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %8, i32 0, i32 5
  %9 = load %struct._GimpChannel*, %struct._GimpChannel** %mask7, align 8
  %10 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %cmp = icmp eq %struct._GimpChannel* %9, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.30

if.end:                                           ; preds = %entry
  %11 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select.addr, align 8
  %mask8 = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %11, i32 0, i32 5
  %12 = load %struct._GimpChannel*, %struct._GimpChannel** %mask8, align 8
  %tobool = icmp ne %struct._GimpChannel* %12, null
  br i1 %tobool, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end
  %13 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select.addr, align 8
  %mask10 = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %13, i32 0, i32 5
  %14 = load %struct._GimpChannel*, %struct._GimpChannel** %mask10, align 8
  %15 = bitcast %struct._GimpChannel* %14 to i8*
  call void @g_object_unref(i8* %15)
  %16 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select.addr, align 8
  %mask11 = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %16, i32 0, i32 5
  store %struct._GimpChannel* null, %struct._GimpChannel** %mask11, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.end
  %17 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %tobool13 = icmp ne %struct._GimpChannel* %17, null
  br i1 %tobool13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.12
  %18 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %19 = bitcast %struct._GimpChannel* %18 to i8*
  %call15 = call i8* @g_object_ref(i8* %19)
  %20 = bitcast i8* %call15 to %struct._GimpChannel*
  %21 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select.addr, align 8
  %mask16 = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %21, i32 0, i32 5
  store %struct._GimpChannel* %20, %struct._GimpChannel** %mask16, align 8
  %22 = load %struct._GimpForegroundSelectOptions*, %struct._GimpForegroundSelectOptions** %options, align 8
  call void @gimp_foreground_select_options_get_mask_color(%struct._GimpForegroundSelectOptions* %22, %struct._GimpRGB* %color)
  %23 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call17 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %23)
  %24 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %25 = bitcast %struct._GimpChannel* %24 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_drawable_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call18)
  %26 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpDrawable*
  call void @gimp_display_shell_set_mask(%struct._GimpDisplayShell* %call17, %struct._GimpDrawable* %26, %struct._GimpRGB* %color)
  br label %if.end.21

if.else:                                          ; preds = %if.end.12
  %27 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call20 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %27)
  call void @gimp_display_shell_set_mask(%struct._GimpDisplayShell* %call20, %struct._GimpDrawable* null, %struct._GimpRGB* null)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.14
  %28 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %tobool22 = icmp ne %struct._GimpChannel* %28, null
  br i1 %tobool22, label %if.then.23, label %if.else.26

if.then.23:                                       ; preds = %if.end.21
  %29 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %29, i32 0, i32 3
  %30 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl* %30, i32 25)
  %31 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control24 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %31, i32 0, i32 3
  %32 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control24, align 8
  call void @gimp_tool_control_set_toggle_tool_cursor(%struct._GimpToolControl* %32, i32 30)
  %33 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control25 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %33, i32 0, i32 3
  %34 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control25, align 8
  %35 = load %struct._GimpForegroundSelectOptions*, %struct._GimpForegroundSelectOptions** %options, align 8
  %background = getelementptr inbounds %struct._GimpForegroundSelectOptions, %struct._GimpForegroundSelectOptions* %35, i32 0, i32 2
  %36 = load i32, i32* %background, align 4
  call void @gimp_tool_control_set_toggled(%struct._GimpToolControl* %34, i32 %36)
  br label %if.end.30

if.else.26:                                       ; preds = %if.end.21
  %37 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control27 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %37, i32 0, i32 3
  %38 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control27, align 8
  call void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl* %38, i32 3)
  %39 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control28 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %39, i32 0, i32 3
  %40 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control28, align 8
  call void @gimp_tool_control_set_toggle_tool_cursor(%struct._GimpToolControl* %40, i32 3)
  %41 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control29 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %41, i32 0, i32 3
  %42 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control29, align 8
  call void @gimp_tool_control_set_toggled(%struct._GimpToolControl* %42, i32 0)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then, %if.else.26, %if.then.23
  ret void
}

declare void @g_free(i8*) #1

declare void @g_slice_free1(i64, i8*) #1

declare void @g_list_free(%struct._GList*) #1

declare void @gimp_drawable_foreground_extract_siox_done(%struct._SioxState*) #1

declare void @g_object_unref(i8*) #1

declare i8* @g_object_ref(i8*) #1

declare void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_toggle_tool_cursor(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_toggled(%struct._GimpToolControl*, i32) #1

declare void @gimp_draw_tool_pause(%struct._GimpDrawTool*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

declare void @gimp_draw_tool_resume(%struct._GimpDrawTool*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_selection_tool_get_type() #2

declare void @gimp_tool_replace_status(%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) #1

declare i32 @gimp_get_toggle_behavior_mask() #1

declare void @g_object_set(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_foreground_select_tool_apply(%struct._GimpForegroundSelectTool* %fg_select, %struct._GimpDisplay* %display) #3 {
entry:
  %fg_select.addr = alloca %struct._GimpForegroundSelectTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %options = alloca %struct._GimpSelectionOptions*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GimpForegroundSelectTool* %fg_select, %struct._GimpForegroundSelectTool** %fg_select.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select.addr, align 8
  %1 = bitcast %struct._GimpForegroundSelectTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_selection_options_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpSelectionOptions*
  store %struct._GimpSelectionOptions* %7, %struct._GimpSelectionOptions** %options, align 8
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call7 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %8)
  store %struct._GimpImage* %call7, %struct._GimpImage** %image, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %9 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select.addr, align 8
  %mask = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %9, i32 0, i32 5
  %10 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %cmp = icmp ne %struct._GimpChannel* %10, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_foreground_select_tool_apply, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call8 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %11)
  %call9 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i32 0, i32 0), i64 8)
  %12 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select.addr, align 8
  %mask10 = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %12, i32 0, i32 5
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %mask10, align 8
  %14 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %options, align 8
  %operation = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %14, i32 0, i32 1
  %15 = load i32, i32* %operation, align 4
  %16 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %options, align 8
  %feather = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %16, i32 0, i32 3
  %17 = load i32, i32* %feather, align 4
  %18 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %options, align 8
  %feather_radius = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %18, i32 0, i32 4
  %19 = load double, double* %feather_radius, align 8
  %20 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %options, align 8
  %feather_radius11 = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %20, i32 0, i32 4
  %21 = load double, double* %feather_radius11, align 8
  call void @gimp_channel_select_channel(%struct._GimpChannel* %call8, i8* %call9, %struct._GimpChannel* %13, i32 0, i32 0, i32 %15, i32 %17, double %19, double %21)
  %22 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %23 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_control(%struct._GimpTool* %22, i32 2, %struct._GimpDisplay* %23)
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %24)
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

declare void @gimp_tool_control(%struct._GimpTool*, i32, %struct._GimpDisplay*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_selection_options_get_type() #2

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @gimp_channel_select_channel(%struct._GimpChannel*, i8*, %struct._GimpChannel*, i32, i32, i32, i32, double, double) #1

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #1

declare i8* @g_dpgettext(i8*, i8*, i64) #1

declare void @gimp_image_flush(%struct._GimpImage*) #1

declare { double, double } @gimp_vector2_new(double, double) #1

declare i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool*) #1

declare void @gimp_draw_tool_stop(%struct._GimpDrawTool*) #1

declare void @gimp_tool_control_activate(%struct._GimpToolControl*) #1

declare %struct._GArray* @g_array_new(i32, i32, i32) #1

declare %struct._GArray* @g_array_append_vals(%struct._GArray*, i8*, i32) #1

declare void @gimp_draw_tool_start(%struct._GimpDrawTool*, %struct._GimpDisplay*) #1

declare void @gimp_tool_control_halt(%struct._GimpToolControl*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_foreground_select_tool_push_stroke(%struct._GimpForegroundSelectTool* %fg_select, %struct._GimpDisplay* %display, %struct._GimpForegroundSelectOptions* %options) #3 {
entry:
  %fg_select.addr = alloca %struct._GimpForegroundSelectTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %options.addr = alloca %struct._GimpForegroundSelectOptions*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %stroke = alloca %struct.FgSelectStroke*, align 8
  store %struct._GimpForegroundSelectTool* %fg_select, %struct._GimpForegroundSelectTool** %fg_select.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store %struct._GimpForegroundSelectOptions* %options, %struct._GimpForegroundSelectOptions** %options.addr, align 8
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %0)
  store %struct._GimpDisplayShell* %call, %struct._GimpDisplayShell** %shell, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select.addr, align 8
  %stroke1 = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %1, i32 0, i32 3
  %2 = load %struct._GArray*, %struct._GArray** %stroke1, align 8
  %cmp = icmp ne %struct._GArray* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_foreground_select_tool_push_stroke, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call2 = call noalias i8* @g_slice_alloc(i64 24)
  %3 = bitcast i8* %call2 to %struct.FgSelectStroke*
  store %struct.FgSelectStroke* %3, %struct.FgSelectStroke** %stroke, align 8
  %4 = load %struct._GimpForegroundSelectOptions*, %struct._GimpForegroundSelectOptions** %options.addr, align 8
  %background = getelementptr inbounds %struct._GimpForegroundSelectOptions, %struct._GimpForegroundSelectOptions* %4, i32 0, i32 2
  %5 = load i32, i32* %background, align 4
  %6 = load %struct.FgSelectStroke*, %struct.FgSelectStroke** %stroke, align 8
  %background3 = getelementptr inbounds %struct.FgSelectStroke, %struct.FgSelectStroke* %6, i32 0, i32 1
  store i32 %5, i32* %background3, align 4
  %7 = load %struct._GimpForegroundSelectOptions*, %struct._GimpForegroundSelectOptions** %options.addr, align 8
  %stroke_width = getelementptr inbounds %struct._GimpForegroundSelectOptions, %struct._GimpForegroundSelectOptions* %7, i32 0, i32 3
  %8 = load i32, i32* %stroke_width, align 4
  %conv = sitofp i32 %8 to double
  %9 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %9, i32 0, i32 14
  %10 = load double, double* %scale_y, align 8
  %div = fdiv double %conv, %10
  %add = fadd double %div, 5.000000e-01
  %conv4 = fptosi double %add to i32
  %11 = load %struct.FgSelectStroke*, %struct.FgSelectStroke** %stroke, align 8
  %width = getelementptr inbounds %struct.FgSelectStroke, %struct.FgSelectStroke* %11, i32 0, i32 0
  store i32 %conv4, i32* %width, align 4
  %12 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select.addr, align 8
  %stroke5 = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %12, i32 0, i32 3
  %13 = load %struct._GArray*, %struct._GArray** %stroke5, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %13, i32 0, i32 1
  %14 = load i32, i32* %len, align 4
  %15 = load %struct.FgSelectStroke*, %struct.FgSelectStroke** %stroke, align 8
  %num_points = getelementptr inbounds %struct.FgSelectStroke, %struct.FgSelectStroke* %15, i32 0, i32 2
  store i32 %14, i32* %num_points, align 4
  %16 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select.addr, align 8
  %stroke6 = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %16, i32 0, i32 3
  %17 = load %struct._GArray*, %struct._GArray** %stroke6, align 8
  %call7 = call i8* @g_array_free(%struct._GArray* %17, i32 0)
  %18 = bitcast i8* %call7 to %struct._GimpVector2*
  %19 = load %struct.FgSelectStroke*, %struct.FgSelectStroke** %stroke, align 8
  %points = getelementptr inbounds %struct.FgSelectStroke, %struct.FgSelectStroke* %19, i32 0, i32 3
  store %struct._GimpVector2* %18, %struct._GimpVector2** %points, align 8
  %20 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select.addr, align 8
  %stroke8 = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %20, i32 0, i32 3
  store %struct._GArray* null, %struct._GArray** %stroke8, align 8
  %21 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select.addr, align 8
  %strokes = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %21, i32 0, i32 4
  %22 = load %struct._GList*, %struct._GList** %strokes, align 8
  %23 = load %struct.FgSelectStroke*, %struct.FgSelectStroke** %stroke, align 8
  %24 = bitcast %struct.FgSelectStroke* %23 to i8*
  %call9 = call %struct._GList* @g_list_append(%struct._GList* %22, i8* %24)
  %25 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select.addr, align 8
  %strokes10 = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %25, i32 0, i32 4
  store %struct._GList* %call9, %struct._GList** %strokes10, align 8
  %26 = load %struct.FgSelectStroke*, %struct.FgSelectStroke** %stroke, align 8
  %background11 = getelementptr inbounds %struct.FgSelectStroke, %struct.FgSelectStroke* %26, i32 0, i32 1
  %27 = load i32, i32* %background11, align 4
  %tobool = icmp ne i32 %27, 0
  %cond = select i1 %tobool, i32 2, i32 1
  %28 = load %struct._GimpForegroundSelectTool*, %struct._GimpForegroundSelectTool** %fg_select.addr, align 8
  %refinement = getelementptr inbounds %struct._GimpForegroundSelectTool, %struct._GimpForegroundSelectTool* %28, i32 0, i32 7
  %29 = load i32, i32* %refinement, align 4
  %or = or i32 %29, %cond
  store i32 %or, i32* %refinement, align 4
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

declare noalias i8* @g_slice_alloc(i64) #1

declare i8* @g_array_free(%struct._GArray*, i32) #1

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_pen(%struct._GimpDrawTool*, %struct._GimpVector2*, i32, %struct._GimpContext*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_arc(%struct._GimpDrawTool*, i32, double, double, double, double, double, double) #1

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #1

declare %struct._GimpScanConvert* @gimp_scan_convert_new() #1

declare void @gimp_free_select_tool_get_points(%struct._GimpFreeSelectTool*, %struct._GimpVector2**, i32*) #1

declare void @gimp_scan_convert_add_polyline(%struct._GimpScanConvert*, i32, %struct._GimpVector2*, i32) #1

declare %struct._GimpChannel* @gimp_channel_new(%struct._GimpImage*, i32, i32, i8*, %struct._GimpRGB*) #1

declare i32 @gimp_image_get_width(%struct._GimpImage*) #1

declare i32 @gimp_image_get_height(%struct._GimpImage*) #1

declare void @gimp_scan_convert_render_value(%struct._GimpScanConvert*, %struct._TileManager*, i32, i32, i8 zeroext) #1

declare %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable*) #1

declare void @gimp_scan_convert_free(%struct._GimpScanConvert*) #1

declare void @gimp_set_busy(%struct._Gimp*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_foreground_select_tool_stroke(%struct._GimpChannel* %mask, %struct.FgSelectStroke* %stroke) #3 {
entry:
  %mask.addr = alloca %struct._GimpChannel*, align 8
  %stroke.addr = alloca %struct.FgSelectStroke*, align 8
  %scan_convert = alloca %struct._GimpScanConvert*, align 8
  %points = alloca [2 x %struct._GimpVector2], align 16
  store %struct._GimpChannel* %mask, %struct._GimpChannel** %mask.addr, align 8
  store %struct.FgSelectStroke* %stroke, %struct.FgSelectStroke** %stroke.addr, align 8
  %call = call %struct._GimpScanConvert* @gimp_scan_convert_new()
  store %struct._GimpScanConvert* %call, %struct._GimpScanConvert** %scan_convert, align 8
  %0 = load %struct.FgSelectStroke*, %struct.FgSelectStroke** %stroke.addr, align 8
  %num_points = getelementptr inbounds %struct.FgSelectStroke, %struct.FgSelectStroke* %0, i32 0, i32 2
  %1 = load i32, i32* %num_points, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [2 x %struct._GimpVector2], [2 x %struct._GimpVector2]* %points, i32 0, i64 0
  %arrayidx1 = getelementptr inbounds [2 x %struct._GimpVector2], [2 x %struct._GimpVector2]* %points, i32 0, i64 1
  %2 = load %struct.FgSelectStroke*, %struct.FgSelectStroke** %stroke.addr, align 8
  %points2 = getelementptr inbounds %struct.FgSelectStroke, %struct.FgSelectStroke* %2, i32 0, i32 3
  %3 = load %struct._GimpVector2*, %struct._GimpVector2** %points2, align 8
  %arrayidx3 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %3, i64 0
  %4 = bitcast %struct._GimpVector2* %arrayidx1 to i8*
  %5 = bitcast %struct._GimpVector2* %arrayidx3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 16, i32 8, i1 false)
  %6 = bitcast %struct._GimpVector2* %arrayidx to i8*
  %7 = bitcast %struct._GimpVector2* %arrayidx1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false)
  %arrayidx4 = getelementptr inbounds [2 x %struct._GimpVector2], [2 x %struct._GimpVector2]* %points, i32 0, i64 1
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx4, i32 0, i32 0
  %8 = load double, double* %x, align 8
  %add = fadd double %8, 1.000000e-02
  store double %add, double* %x, align 8
  %arrayidx5 = getelementptr inbounds [2 x %struct._GimpVector2], [2 x %struct._GimpVector2]* %points, i32 0, i64 1
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx5, i32 0, i32 1
  %9 = load double, double* %y, align 8
  %add6 = fadd double %9, 1.000000e-02
  store double %add6, double* %y, align 8
  %10 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %scan_convert, align 8
  %arraydecay = getelementptr inbounds [2 x %struct._GimpVector2], [2 x %struct._GimpVector2]* %points, i32 0, i32 0
  call void @gimp_scan_convert_add_polyline(%struct._GimpScanConvert* %10, i32 2, %struct._GimpVector2* %arraydecay, i32 0)
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %scan_convert, align 8
  %12 = load %struct.FgSelectStroke*, %struct.FgSelectStroke** %stroke.addr, align 8
  %num_points7 = getelementptr inbounds %struct.FgSelectStroke, %struct.FgSelectStroke* %12, i32 0, i32 2
  %13 = load i32, i32* %num_points7, align 4
  %14 = load %struct.FgSelectStroke*, %struct.FgSelectStroke** %stroke.addr, align 8
  %points8 = getelementptr inbounds %struct.FgSelectStroke, %struct.FgSelectStroke* %14, i32 0, i32 3
  %15 = load %struct._GimpVector2*, %struct._GimpVector2** %points8, align 8
  call void @gimp_scan_convert_add_polyline(%struct._GimpScanConvert* %11, i32 %13, %struct._GimpVector2* %15, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %scan_convert, align 8
  %17 = load %struct.FgSelectStroke*, %struct.FgSelectStroke** %stroke.addr, align 8
  %width = getelementptr inbounds %struct.FgSelectStroke, %struct.FgSelectStroke* %17, i32 0, i32 0
  %18 = load i32, i32* %width, align 4
  %conv = sitofp i32 %18 to double
  call void @gimp_scan_convert_stroke(%struct._GimpScanConvert* %16, double %conv, i32 1, i32 1, double 1.000000e+01, double 0.000000e+00, %struct._GArray* null)
  %19 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %scan_convert, align 8
  %20 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %21 = bitcast %struct._GimpChannel* %20 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_drawable_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call9)
  %22 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpDrawable*
  %call11 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %22)
  %23 = load %struct.FgSelectStroke*, %struct.FgSelectStroke** %stroke.addr, align 8
  %background = getelementptr inbounds %struct.FgSelectStroke, %struct.FgSelectStroke* %23, i32 0, i32 1
  %24 = load i32, i32* %background, align 4
  %tobool = icmp ne i32 %24, 0
  %cond = select i1 %tobool, i32 0, i32 255
  call void @gimp_scan_convert_compose_value(%struct._GimpScanConvert* %19, %struct._TileManager* %call11, i32 0, i32 0, i32 %cond)
  %25 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %scan_convert, align 8
  call void @gimp_scan_convert_free(%struct._GimpScanConvert* %25)
  ret void
}

declare void @gimp_drawable_foreground_extract_siox(%struct._GimpDrawable*, %struct._SioxState*, i32, i32, double*, i32, %struct._GimpProgress*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #2

declare void @gimp_unset_busy(%struct._Gimp*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_foreground_select_tool_get_area(%struct._GimpChannel* %mask, i32* %x1, i32* %y1, i32* %x2, i32* %y2) #3 {
entry:
  %mask.addr = alloca %struct._GimpChannel*, align 8
  %x1.addr = alloca i32*, align 8
  %y1.addr = alloca i32*, align 8
  %x2.addr = alloca i32*, align 8
  %y2.addr = alloca i32*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GimpChannel* %mask, %struct._GimpChannel** %mask.addr, align 8
  store i32* %x1, i32** %x1.addr, align 8
  store i32* %y1, i32** %y1.addr, align 8
  store i32* %x2, i32** %x2.addr, align 8
  store i32* %y2, i32** %y2.addr, align 8
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %1 = load i32*, i32** %x1.addr, align 8
  %2 = load i32*, i32** %y1.addr, align 8
  %3 = load i32*, i32** %x2.addr, align 8
  %4 = load i32*, i32** %y2.addr, align 8
  %call = call i32 @gimp_channel_bounds(%struct._GimpChannel* %0, i32* %1, i32* %2, i32* %3, i32* %4)
  %5 = load i32*, i32** %x2.addr, align 8
  %6 = load i32, i32* %5, align 4
  %7 = load i32*, i32** %x1.addr, align 8
  %8 = load i32, i32* %7, align 4
  %sub = sub nsw i32 %6, %8
  store i32 %sub, i32* %width, align 4
  %9 = load i32*, i32** %y2.addr, align 8
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** %y1.addr, align 8
  %12 = load i32, i32* %11, align 4
  %sub1 = sub nsw i32 %10, %12
  store i32 %sub1, i32* %height, align 4
  %13 = load i32*, i32** %x1.addr, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %width, align 4
  %div = sdiv i32 %15, 2
  %sub2 = sub nsw i32 %14, %div
  %cmp = icmp sgt i32 %sub2, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %16 = load i32*, i32** %x1.addr, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %width, align 4
  %div3 = sdiv i32 %18, 2
  %sub4 = sub nsw i32 %17, %div3
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub4, %cond.true ], [ 0, %cond.false ]
  %19 = load i32*, i32** %x1.addr, align 8
  store i32 %cond, i32* %19, align 4
  %20 = load i32*, i32** %y1.addr, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %height, align 4
  %div5 = sdiv i32 %22, 2
  %sub6 = sub nsw i32 %21, %div5
  %cmp7 = icmp sgt i32 %sub6, 0
  br i1 %cmp7, label %cond.true.8, label %cond.false.11

cond.true.8:                                      ; preds = %cond.end
  %23 = load i32*, i32** %y1.addr, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %height, align 4
  %div9 = sdiv i32 %25, 2
  %sub10 = sub nsw i32 %24, %div9
  br label %cond.end.12

cond.false.11:                                    ; preds = %cond.end
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.11, %cond.true.8
  %cond13 = phi i32 [ %sub10, %cond.true.8 ], [ 0, %cond.false.11 ]
  %26 = load i32*, i32** %y1.addr, align 8
  store i32 %cond13, i32* %26, align 4
  %27 = load i32*, i32** %x2.addr, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %width, align 4
  %div14 = sdiv i32 %29, 2
  %add = add nsw i32 %28, %div14
  %30 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %31 = bitcast %struct._GimpChannel* %30 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_item_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call15)
  %32 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpItem*
  %call17 = call i32 @gimp_item_get_width(%struct._GimpItem* %32)
  %cmp18 = icmp slt i32 %add, %call17
  br i1 %cmp18, label %cond.true.19, label %cond.false.22

cond.true.19:                                     ; preds = %cond.end.12
  %33 = load i32*, i32** %x2.addr, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %width, align 4
  %div20 = sdiv i32 %35, 2
  %add21 = add nsw i32 %34, %div20
  br label %cond.end.26

cond.false.22:                                    ; preds = %cond.end.12
  %36 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %37 = bitcast %struct._GimpChannel* %36 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_item_get_type() #7
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call23)
  %38 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpItem*
  %call25 = call i32 @gimp_item_get_width(%struct._GimpItem* %38)
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.22, %cond.true.19
  %cond27 = phi i32 [ %add21, %cond.true.19 ], [ %call25, %cond.false.22 ]
  %39 = load i32*, i32** %x2.addr, align 8
  store i32 %cond27, i32* %39, align 4
  %40 = load i32*, i32** %y2.addr, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %height, align 4
  %div28 = sdiv i32 %42, 2
  %add29 = add nsw i32 %41, %div28
  %43 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %44 = bitcast %struct._GimpChannel* %43 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_item_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call30)
  %45 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpItem*
  %call32 = call i32 @gimp_item_get_height(%struct._GimpItem* %45)
  %cmp33 = icmp slt i32 %add29, %call32
  br i1 %cmp33, label %cond.true.34, label %cond.false.37

cond.true.34:                                     ; preds = %cond.end.26
  %46 = load i32*, i32** %y2.addr, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %height, align 4
  %div35 = sdiv i32 %48, 2
  %add36 = add nsw i32 %47, %div35
  br label %cond.end.41

cond.false.37:                                    ; preds = %cond.end.26
  %49 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %50 = bitcast %struct._GimpChannel* %49 to %struct._GTypeInstance*
  %call38 = call i64 @gimp_item_get_type() #7
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call38)
  %51 = bitcast %struct._GTypeInstance* %call39 to %struct._GimpItem*
  %call40 = call i32 @gimp_item_get_height(%struct._GimpItem* %51)
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.37, %cond.true.34
  %cond42 = phi i32 [ %add36, %cond.true.34 ], [ %call40, %cond.false.37 ]
  %52 = load i32*, i32** %y2.addr, align 8
  store i32 %cond42, i32* %52, align 4
  ret void
}

declare %struct._SioxState* @gimp_drawable_foreground_extract_siox_init(%struct._GimpDrawable*, i32, i32, i32, i32) #1

declare void @gimp_scan_convert_stroke(%struct._GimpScanConvert*, double, i32, i32, double, double, %struct._GArray*) #1

declare void @gimp_scan_convert_compose_value(%struct._GimpScanConvert*, %struct._TileManager*, i32, i32, i32) #1

declare i32 @gimp_channel_bounds(%struct._GimpChannel*, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_item_get_width(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare i32 @gimp_item_get_height(%struct._GimpItem*) #1

declare void @gimp_tool_control_set_scroll_lock(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_preserve(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_dirty_mask(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_precision(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_action_value_2(%struct._GimpToolControl*, i8*) #1

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
