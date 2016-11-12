; ModuleID = './app/tools/gimpregionselecttool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpRegionSelectToolClass = type { %struct._GimpSelectionToolClass, i8*, %struct._GimpChannel* (%struct._GimpRegionSelectTool*, %struct._GimpDisplay*)* }
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
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GeglNode = type opaque
%struct._BoundSeg = type { i32, i32, i32, i32, i8 }
%struct._GimpRegionSelectTool = type { %struct._GimpSelectionTool, i32, i32, double, %struct._GimpChannel*, %struct._BoundSeg*, i32 }
%struct._GimpSelectionTool = type { %struct._GimpDrawTool, i32, i32, i32 }
%struct._GimpRegionSelectOptions = type { %struct._GimpSelectionOptions, i32, i32, double, i32 }
%struct._GimpSelectionOptions = type { %struct._GimpToolOptions, i32, i32, i32, double, %struct._GtkWidget* }
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
%struct._GimpLayer = type opaque
%struct._GimpMatrix3 = type { [3 x [3 x double]] }
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
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._TileManager = type opaque
%struct._Tile = type opaque

@gimp_region_select_tool_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"GimpRegionSelectTool\00", align 1
@gimp_region_select_tool_parent_class = internal global i8* null, align 8
@GimpRegionSelectTool_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Move the mouse to change threshold\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"threshold\00", align 1
@gimp_region_select_tool_motion.last_time = internal global i32 0, align 4

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_region_select_tool_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_region_select_tool_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_region_select_tool_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_selection_tool_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 304, void (i8*, i8*)* bitcast (void (i8*)* @gimp_region_select_tool_class_intern_init to void (i8*, i8*)*), i32 304, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpRegionSelectTool*)* @gimp_region_select_tool_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_region_select_tool_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_region_select_tool_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_selection_tool_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_region_select_tool_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_region_select_tool_parent_class, align 8
  %1 = load i32, i32* @GimpRegionSelectTool_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpRegionSelectTool_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpRegionSelectToolClass*
  call void @gimp_region_select_tool_class_init(%struct._GimpRegionSelectToolClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_region_select_tool_init(%struct._GimpRegionSelectTool* %region_select) #3 {
entry:
  %region_select.addr = alloca %struct._GimpRegionSelectTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  store %struct._GimpRegionSelectTool* %region_select, %struct._GimpRegionSelectTool** %region_select.addr, align 8
  %0 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_select.addr, align 8
  %1 = bitcast %struct._GimpRegionSelectTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 3
  %4 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_set_scroll_lock(%struct._GimpToolControl* %4, i32 1)
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control2 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 3
  %6 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control2, align 8
  call void @gimp_tool_control_set_motion_mode(%struct._GimpToolControl* %6, i32 1)
  %7 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_select.addr, align 8
  %x = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %7, i32 0, i32 1
  store i32 0, i32* %x, align 4
  %8 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_select.addr, align 8
  %y = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %8, i32 0, i32 2
  store i32 0, i32* %y, align 4
  %9 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_select.addr, align 8
  %saved_threshold = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %9, i32 0, i32 3
  store double 0.000000e+00, double* %saved_threshold, align 8
  %10 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_select.addr, align 8
  %region_mask = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %10, i32 0, i32 4
  store %struct._GimpChannel* null, %struct._GimpChannel** %region_mask, align 8
  %11 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_select.addr, align 8
  %segs = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %11, i32 0, i32 5
  store %struct._BoundSeg* null, %struct._BoundSeg** %segs, align 8
  %12 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_select.addr, align 8
  %n_segs = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %12, i32 0, i32 6
  store i32 0, i32* %n_segs, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_region_select_tool_class_init(%struct._GimpRegionSelectToolClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpRegionSelectToolClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %tool_class = alloca %struct._GimpToolClass*, align 8
  %draw_tool_class = alloca %struct._GimpDrawToolClass*, align 8
  store %struct._GimpRegionSelectToolClass* %klass, %struct._GimpRegionSelectToolClass** %klass.addr, align 8
  %0 = load %struct._GimpRegionSelectToolClass*, %struct._GimpRegionSelectToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpRegionSelectToolClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpRegionSelectToolClass*, %struct._GimpRegionSelectToolClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpRegionSelectToolClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_tool_get_type() #5
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpToolClass*
  store %struct._GimpToolClass* %5, %struct._GimpToolClass** %tool_class, align 8
  %6 = load %struct._GimpRegionSelectToolClass*, %struct._GimpRegionSelectToolClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpRegionSelectToolClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_draw_tool_get_type() #5
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpDrawToolClass*
  store %struct._GimpDrawToolClass* %8, %struct._GimpDrawToolClass** %draw_tool_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_region_select_tool_finalize, void (%struct._GObject*)** %finalize, align 8
  %10 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %10, i32 0, i32 5
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_region_select_tool_button_press, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_press, align 8
  %11 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_release = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %11, i32 0, i32 6
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_region_select_tool_button_release, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_release, align 8
  %12 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %motion = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %12, i32 0, i32 7
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_region_select_tool_motion, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %motion, align 8
  %13 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %13, i32 0, i32 13
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)* @gimp_region_select_tool_cursor_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %14 = load %struct._GimpDrawToolClass*, %struct._GimpDrawToolClass** %draw_tool_class, align 8
  %draw = getelementptr inbounds %struct._GimpDrawToolClass, %struct._GimpDrawToolClass* %14, i32 0, i32 1
  store void (%struct._GimpDrawTool*)* @gimp_region_select_tool_draw, void (%struct._GimpDrawTool*)** %draw, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_draw_tool_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_region_select_tool_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %region_sel = alloca %struct._GimpRegionSelectTool*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_region_select_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRegionSelectTool*
  store %struct._GimpRegionSelectTool* %2, %struct._GimpRegionSelectTool** %region_sel, align 8
  %3 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel, align 8
  %region_mask = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %3, i32 0, i32 4
  %4 = load %struct._GimpChannel*, %struct._GimpChannel** %region_mask, align 8
  %tobool = icmp ne %struct._GimpChannel* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel, align 8
  %region_mask2 = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %5, i32 0, i32 4
  %6 = load %struct._GimpChannel*, %struct._GimpChannel** %region_mask2, align 8
  %7 = bitcast %struct._GimpChannel* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel, align 8
  %region_mask3 = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %8, i32 0, i32 4
  store %struct._GimpChannel* null, %struct._GimpChannel** %region_mask3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel, align 8
  %segs = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %9, i32 0, i32 5
  %10 = load %struct._BoundSeg*, %struct._BoundSeg** %segs, align 8
  %tobool4 = icmp ne %struct._BoundSeg* %10, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %11 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel, align 8
  %segs6 = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %11, i32 0, i32 5
  %12 = load %struct._BoundSeg*, %struct._BoundSeg** %segs6, align 8
  %13 = bitcast %struct._BoundSeg* %12 to i8*
  call void @g_free(i8* %13)
  %14 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel, align 8
  %segs7 = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %14, i32 0, i32 5
  store %struct._BoundSeg* null, %struct._BoundSeg** %segs7, align 8
  %15 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel, align 8
  %n_segs = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %15, i32 0, i32 6
  store i32 0, i32* %n_segs, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %16 = load i8*, i8** @gimp_region_select_tool_parent_class, align 8
  %17 = bitcast i8* %16 to %struct._GTypeClass*
  %call9 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %17, i64 80)
  %18 = bitcast %struct._GTypeClass* %call9 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %18, i32 0, i32 6
  %19 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %20 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %19(%struct._GObject* %20)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_region_select_tool_button_press(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %press_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %press_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %region_sel = alloca %struct._GimpRegionSelectTool*, align 8
  %options = alloca %struct._GimpRegionSelectOptions*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %press_type, i32* %press_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_region_select_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRegionSelectTool*
  store %struct._GimpRegionSelectTool* %2, %struct._GimpRegionSelectTool** %region_sel, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_region_select_options_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpRegionSelectOptions*
  store %struct._GimpRegionSelectOptions* %7, %struct._GimpRegionSelectOptions** %options, align 8
  %8 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %8, i32 0, i32 0
  %9 = load double, double* %x, align 8
  %conv = fptosi double %9 to i32
  %10 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel, align 8
  %x7 = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %10, i32 0, i32 1
  store i32 %conv, i32* %x7, align 4
  %11 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %11, i32 0, i32 1
  %12 = load double, double* %y, align 8
  %conv8 = fptosi double %12 to i32
  %13 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel, align 8
  %y9 = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %13, i32 0, i32 2
  store i32 %conv8, i32* %y9, align 4
  %14 = load %struct._GimpRegionSelectOptions*, %struct._GimpRegionSelectOptions** %options, align 8
  %threshold = getelementptr inbounds %struct._GimpRegionSelectOptions, %struct._GimpRegionSelectOptions* %14, i32 0, i32 3
  %15 = load double, double* %threshold, align 8
  %16 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel, align 8
  %saved_threshold = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %16, i32 0, i32 3
  store double %15, double* %saved_threshold, align 8
  %17 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel, align 8
  %18 = bitcast %struct._GimpRegionSelectTool* %17 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_selection_tool_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call10)
  %19 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpSelectionTool*
  %20 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %21 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %call12 = call i32 @gimp_selection_tool_start_edit(%struct._GimpSelectionTool* %19, %struct._GimpDisplay* %20, %struct._GimpCoords* %21)
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %22 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %22, i32 0, i32 3
  %23 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_activate(%struct._GimpToolControl* %23)
  %24 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %25 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display13 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %25, i32 0, i32 4
  store %struct._GimpDisplay* %24, %struct._GimpDisplay** %display13, align 8
  %26 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %27 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0)) #6
  call void (%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) @gimp_tool_push_status(%struct._GimpTool* %26, %struct._GimpDisplay* %27, i8* %call14)
  %28 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel, align 8
  %29 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %30 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel, align 8
  %n_segs = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %30, i32 0, i32 6
  %call15 = call %struct._BoundSeg* @gimp_region_select_tool_calculate(%struct._GimpRegionSelectTool* %28, %struct._GimpDisplay* %29, i32* %n_segs)
  %31 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel, align 8
  %segs = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %31, i32 0, i32 5
  store %struct._BoundSeg* %call15, %struct._BoundSeg** %segs, align 8
  %32 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %33 = bitcast %struct._GimpTool* %32 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_draw_tool_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call16)
  %34 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpDrawTool*
  %35 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_draw_tool_start(%struct._GimpDrawTool* %34, %struct._GimpDisplay* %35)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_region_select_tool_button_release(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %release_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %release_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %region_sel = alloca %struct._GimpRegionSelectTool*, align 8
  %sel_options = alloca %struct._GimpSelectionOptions*, align 8
  %options = alloca %struct._GimpRegionSelectOptions*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %release_type, i32* %release_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_region_select_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRegionSelectTool*
  store %struct._GimpRegionSelectTool* %2, %struct._GimpRegionSelectTool** %region_sel, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_selection_options_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpSelectionOptions*
  store %struct._GimpSelectionOptions* %7, %struct._GimpSelectionOptions** %sel_options, align 8
  %8 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %9 = bitcast %struct._GimpTool* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_tool_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpTool*
  %call9 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %10)
  %11 = bitcast %struct._GimpToolOptions* %call9 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_region_select_options_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call10)
  %12 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpRegionSelectOptions*
  store %struct._GimpRegionSelectOptions* %12, %struct._GimpRegionSelectOptions** %options, align 8
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call12 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %13)
  store %struct._GimpImage* %call12, %struct._GimpImage** %image, align 8
  %14 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %15 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_pop_status(%struct._GimpTool* %14, %struct._GimpDisplay* %15)
  %16 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %17 = bitcast %struct._GimpTool* %16 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_draw_tool_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call13)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_stop(%struct._GimpDrawTool* %18)
  %19 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %19, i32 0, i32 3
  %20 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_halt(%struct._GimpToolControl* %20)
  %21 = load i32, i32* %release_type.addr, align 4
  %cmp = icmp ne i32 %21, 1
  br i1 %cmp, label %if.then, label %if.end.37

if.then:                                          ; preds = %entry
  %22 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %23 = bitcast %struct._GimpTool* %22 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_selection_tool_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call15)
  %24 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpSelectionTool*
  %function = getelementptr inbounds %struct._GimpSelectionTool, %struct._GimpSelectionTool* %24, i32 0, i32 1
  %25 = load i32, i32* %function, align 4
  %cmp17 = icmp eq i32 %25, 4
  br i1 %cmp17, label %if.then.18, label %if.else.23

if.then.18:                                       ; preds = %if.then
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call19 = call %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage* %26)
  %tobool = icmp ne %struct._GimpLayer* %call19, null
  br i1 %tobool, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.then.18
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call21 = call %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage* %27)
  call void @floating_sel_anchor(%struct._GimpLayer* %call21)
  br label %if.end

if.else:                                          ; preds = %if.then.18
  %28 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call22 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %28)
  call void @gimp_channel_clear(%struct._GimpChannel* %call22, i8* null, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.20
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %29)
  br label %if.end.36

if.else.23:                                       ; preds = %if.then
  %30 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel, align 8
  %region_mask = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %30, i32 0, i32 4
  %31 = load %struct._GimpChannel*, %struct._GimpChannel** %region_mask, align 8
  %tobool24 = icmp ne %struct._GimpChannel* %31, null
  br i1 %tobool24, label %if.then.25, label %if.end.35

if.then.25:                                       ; preds = %if.else.23
  store i32 0, i32* %off_x, align 4
  store i32 0, i32* %off_y, align 4
  %32 = load %struct._GimpRegionSelectOptions*, %struct._GimpRegionSelectOptions** %options, align 8
  %sample_merged = getelementptr inbounds %struct._GimpRegionSelectOptions, %struct._GimpRegionSelectOptions* %32, i32 0, i32 2
  %33 = load i32, i32* %sample_merged, align 4
  %tobool26 = icmp ne i32 %33, 0
  br i1 %tobool26, label %if.end.31, label %if.then.27

if.then.27:                                       ; preds = %if.then.25
  %34 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call28 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %34)
  store %struct._GimpDrawable* %call28, %struct._GimpDrawable** %drawable, align 8
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %36 = bitcast %struct._GimpDrawable* %35 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_item_get_type() #5
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call29)
  %37 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %37, i32* %off_x, i32* %off_y)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.27, %if.then.25
  %38 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call32 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %38)
  %39 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %40 = bitcast %struct._GimpTool* %39 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %40, i32 0, i32 0
  %41 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %42 = bitcast %struct._GTypeClass* %41 to %struct._GimpRegionSelectToolClass*
  %undo_desc = getelementptr inbounds %struct._GimpRegionSelectToolClass, %struct._GimpRegionSelectToolClass* %42, i32 0, i32 1
  %43 = load i8*, i8** %undo_desc, align 8
  %44 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel, align 8
  %region_mask33 = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %44, i32 0, i32 4
  %45 = load %struct._GimpChannel*, %struct._GimpChannel** %region_mask33, align 8
  %46 = load i32, i32* %off_x, align 4
  %47 = load i32, i32* %off_y, align 4
  %48 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %sel_options, align 8
  %operation = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %48, i32 0, i32 1
  %49 = load i32, i32* %operation, align 4
  %50 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %sel_options, align 8
  %feather = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %50, i32 0, i32 3
  %51 = load i32, i32* %feather, align 4
  %52 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %sel_options, align 8
  %feather_radius = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %52, i32 0, i32 4
  %53 = load double, double* %feather_radius, align 8
  %54 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %sel_options, align 8
  %feather_radius34 = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %54, i32 0, i32 4
  %55 = load double, double* %feather_radius34, align 8
  call void @gimp_channel_select_channel(%struct._GimpChannel* %call32, i8* %43, %struct._GimpChannel* %45, i32 %46, i32 %47, i32 %49, i32 %51, double %53, double %55)
  %56 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %56)
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.31, %if.else.23
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %entry
  %57 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel, align 8
  %region_mask38 = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %57, i32 0, i32 4
  %58 = load %struct._GimpChannel*, %struct._GimpChannel** %region_mask38, align 8
  %tobool39 = icmp ne %struct._GimpChannel* %58, null
  br i1 %tobool39, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %if.end.37
  %59 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel, align 8
  %region_mask41 = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %59, i32 0, i32 4
  %60 = load %struct._GimpChannel*, %struct._GimpChannel** %region_mask41, align 8
  %61 = bitcast %struct._GimpChannel* %60 to i8*
  call void @g_object_unref(i8* %61)
  %62 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel, align 8
  %region_mask42 = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %62, i32 0, i32 4
  store %struct._GimpChannel* null, %struct._GimpChannel** %region_mask42, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %if.end.37
  %63 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel, align 8
  %segs = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %63, i32 0, i32 5
  %64 = load %struct._BoundSeg*, %struct._BoundSeg** %segs, align 8
  %tobool44 = icmp ne %struct._BoundSeg* %64, null
  br i1 %tobool44, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %if.end.43
  %65 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel, align 8
  %segs46 = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %65, i32 0, i32 5
  %66 = load %struct._BoundSeg*, %struct._BoundSeg** %segs46, align 8
  %67 = bitcast %struct._BoundSeg* %66 to i8*
  call void @g_free(i8* %67)
  %68 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel, align 8
  %segs47 = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %68, i32 0, i32 5
  store %struct._BoundSeg* null, %struct._BoundSeg** %segs47, align 8
  %69 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel, align 8
  %n_segs = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %69, i32 0, i32 6
  store i32 0, i32* %n_segs, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.45, %if.end.43
  %70 = load %struct._GimpRegionSelectOptions*, %struct._GimpRegionSelectOptions** %options, align 8
  %71 = bitcast %struct._GimpRegionSelectOptions* %70 to i8*
  %72 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel, align 8
  %saved_threshold = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %72, i32 0, i32 3
  %73 = load double, double* %saved_threshold, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), double %73, i8* null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_region_select_tool_motion(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %region_sel = alloca %struct._GimpRegionSelectTool*, align 8
  %options = alloca %struct._GimpRegionSelectOptions*, align 8
  %diff_x = alloca i32, align 4
  %diff_y = alloca i32, align 4
  %diff = alloca double, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_region_select_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRegionSelectTool*
  store %struct._GimpRegionSelectTool* %2, %struct._GimpRegionSelectTool** %region_sel, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_region_select_options_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpRegionSelectOptions*
  store %struct._GimpRegionSelectOptions* %7, %struct._GimpRegionSelectOptions** %options, align 8
  %8 = load i32, i32* %time.addr, align 4
  %9 = load i32, i32* @gimp_region_select_tool_motion.last_time, align 4
  %sub = sub i32 %8, %9
  %cmp = icmp ult i32 %sub, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %10 = load i32, i32* %time.addr, align 4
  store i32 %10, i32* @gimp_region_select_tool_motion.last_time, align 4
  %11 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %11, i32 0, i32 0
  %12 = load double, double* %x, align 8
  %13 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel, align 8
  %x7 = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %13, i32 0, i32 1
  %14 = load i32, i32* %x7, align 4
  %conv = sitofp i32 %14 to double
  %sub8 = fsub double %12, %conv
  %conv9 = fptosi double %sub8 to i32
  store i32 %conv9, i32* %diff_x, align 4
  %15 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %15, i32 0, i32 1
  %16 = load double, double* %y, align 8
  %17 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel, align 8
  %y10 = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %17, i32 0, i32 2
  %18 = load i32, i32* %y10, align 4
  %conv11 = sitofp i32 %18 to double
  %sub12 = fsub double %16, %conv11
  %conv13 = fptosi double %sub12 to i32
  store i32 %conv13, i32* %diff_y, align 4
  %19 = load i32, i32* %diff_x, align 4
  %cmp14 = icmp slt i32 %19, 0
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %20 = load i32, i32* %diff_x, align 4
  %sub16 = sub nsw i32 0, %20
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %21 = load i32, i32* %diff_x, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub16, %cond.true ], [ %21, %cond.false ]
  %22 = load i32, i32* %diff_y, align 4
  %cmp17 = icmp slt i32 %22, 0
  br i1 %cmp17, label %cond.true.19, label %cond.false.21

cond.true.19:                                     ; preds = %cond.end
  %23 = load i32, i32* %diff_y, align 4
  %sub20 = sub nsw i32 0, %23
  br label %cond.end.22

cond.false.21:                                    ; preds = %cond.end
  %24 = load i32, i32* %diff_y, align 4
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.21, %cond.true.19
  %cond23 = phi i32 [ %sub20, %cond.true.19 ], [ %24, %cond.false.21 ]
  %cmp24 = icmp sgt i32 %cond, %cond23
  br i1 %cmp24, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %cond.end.22
  %25 = load i32, i32* %diff_x, align 4
  br label %cond.end.28

cond.false.27:                                    ; preds = %cond.end.22
  %26 = load i32, i32* %diff_y, align 4
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.27, %cond.true.26
  %cond29 = phi i32 [ %25, %cond.true.26 ], [ %26, %cond.false.27 ]
  %conv30 = sitofp i32 %cond29 to double
  %div = fdiv double %conv30, 2.000000e+00
  store double %div, double* %diff, align 8
  %27 = load %struct._GimpRegionSelectOptions*, %struct._GimpRegionSelectOptions** %options, align 8
  %28 = bitcast %struct._GimpRegionSelectOptions* %27 to i8*
  %29 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel, align 8
  %saved_threshold = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %29, i32 0, i32 3
  %30 = load double, double* %saved_threshold, align 8
  %31 = load double, double* %diff, align 8
  %add = fadd double %30, %31
  %cmp31 = fcmp ogt double %add, 2.550000e+02
  br i1 %cmp31, label %cond.true.33, label %cond.false.34

cond.true.33:                                     ; preds = %cond.end.28
  br label %cond.end.45

cond.false.34:                                    ; preds = %cond.end.28
  %32 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel, align 8
  %saved_threshold35 = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %32, i32 0, i32 3
  %33 = load double, double* %saved_threshold35, align 8
  %34 = load double, double* %diff, align 8
  %add36 = fadd double %33, %34
  %cmp37 = fcmp olt double %add36, 0.000000e+00
  br i1 %cmp37, label %cond.true.39, label %cond.false.40

cond.true.39:                                     ; preds = %cond.false.34
  br label %cond.end.43

cond.false.40:                                    ; preds = %cond.false.34
  %35 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel, align 8
  %saved_threshold41 = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %35, i32 0, i32 3
  %36 = load double, double* %saved_threshold41, align 8
  %37 = load double, double* %diff, align 8
  %add42 = fadd double %36, %37
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.40, %cond.true.39
  %cond44 = phi double [ 0.000000e+00, %cond.true.39 ], [ %add42, %cond.false.40 ]
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.end.43, %cond.true.33
  %cond46 = phi double [ 2.550000e+02, %cond.true.33 ], [ %cond44, %cond.end.43 ]
  call void (i8*, i8*, ...) @g_object_set(i8* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), double %cond46, i8* null)
  %38 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %39 = bitcast %struct._GimpTool* %38 to %struct._GTypeInstance*
  %call47 = call i64 @gimp_draw_tool_get_type() #5
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call47)
  %40 = bitcast %struct._GTypeInstance* %call48 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %40)
  %41 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel, align 8
  %segs = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %41, i32 0, i32 5
  %42 = load %struct._BoundSeg*, %struct._BoundSeg** %segs, align 8
  %tobool = icmp ne %struct._BoundSeg* %42, null
  br i1 %tobool, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %cond.end.45
  %43 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel, align 8
  %segs50 = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %43, i32 0, i32 5
  %44 = load %struct._BoundSeg*, %struct._BoundSeg** %segs50, align 8
  %45 = bitcast %struct._BoundSeg* %44 to i8*
  call void @g_free(i8* %45)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %cond.end.45
  %46 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel, align 8
  %47 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %48 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel, align 8
  %n_segs = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %48, i32 0, i32 6
  %call52 = call %struct._BoundSeg* @gimp_region_select_tool_calculate(%struct._GimpRegionSelectTool* %46, %struct._GimpDisplay* %47, i32* %n_segs)
  %49 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel, align 8
  %segs53 = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %49, i32 0, i32 5
  store %struct._BoundSeg* %call52, %struct._BoundSeg** %segs53, align 8
  %50 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %51 = bitcast %struct._GimpTool* %50 to %struct._GTypeInstance*
  %call54 = call i64 @gimp_draw_tool_get_type() #5
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call54)
  %52 = bitcast %struct._GTypeInstance* %call55 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %52)
  br label %return

return:                                           ; preds = %if.end.51, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_region_select_tool_cursor_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %options = alloca %struct._GimpRegionSelectOptions*, align 8
  %modifier = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  %call2 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %2)
  %3 = bitcast %struct._GimpToolOptions* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_region_select_options_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpRegionSelectOptions*
  store %struct._GimpRegionSelectOptions* %4, %struct._GimpRegionSelectOptions** %options, align 8
  store i32 0, i32* %modifier, align 4
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call5 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %5)
  store %struct._GimpImage* %call5, %struct._GimpImage** %image, align 8
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %8 = load %struct._GimpRegionSelectOptions*, %struct._GimpRegionSelectOptions** %options, align 8
  %sample_merged = getelementptr inbounds %struct._GimpRegionSelectOptions, %struct._GimpRegionSelectOptions* %8, i32 0, i32 2
  %9 = load i32, i32* %sample_merged, align 4
  %call6 = call i32 @gimp_image_coords_in_active_pickable(%struct._GimpImage* %6, %struct._GimpCoords* %7, i32 %9, i32 0)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %modifier, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %10, i32 0, i32 3
  %11 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %12 = load i32, i32* %modifier, align 4
  call void @gimp_tool_control_set_cursor_modifier(%struct._GimpToolControl* %11, i32 %12)
  %13 = load i8*, i8** @gimp_region_select_tool_parent_class, align 8
  %14 = bitcast i8* %13 to %struct._GTypeClass*
  %call7 = call i64 @gimp_tool_get_type() #5
  %call8 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %14, i64 %call7)
  %15 = bitcast %struct._GTypeClass* %call8 to %struct._GimpToolClass*
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %15, i32 0, i32 13
  %16 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %17 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %18 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %19 = load i32, i32* %state.addr, align 4
  %20 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %16(%struct._GimpTool* %17, %struct._GimpCoords* %18, i32 %19, %struct._GimpDisplay* %20)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_region_select_tool_draw(%struct._GimpDrawTool* %draw_tool) #3 {
entry:
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %region_sel = alloca %struct._GimpRegionSelectTool*, align 8
  %options = alloca %struct._GimpRegionSelectOptions*, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_region_select_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRegionSelectTool*
  store %struct._GimpRegionSelectTool* %2, %struct._GimpRegionSelectTool** %region_sel, align 8
  %3 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %4 = bitcast %struct._GimpDrawTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_region_select_options_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpRegionSelectOptions*
  store %struct._GimpRegionSelectOptions* %7, %struct._GimpRegionSelectOptions** %options, align 8
  %8 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel, align 8
  %segs = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %8, i32 0, i32 5
  %9 = load %struct._BoundSeg*, %struct._BoundSeg** %segs, align 8
  %tobool = icmp ne %struct._BoundSeg* %9, null
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  store i32 0, i32* %off_x, align 4
  store i32 0, i32* %off_y, align 4
  %10 = load %struct._GimpRegionSelectOptions*, %struct._GimpRegionSelectOptions** %options, align 8
  %sample_merged = getelementptr inbounds %struct._GimpRegionSelectOptions, %struct._GimpRegionSelectOptions* %10, i32 0, i32 2
  %11 = load i32, i32* %sample_merged, align 4
  %tobool7 = icmp ne i32 %11, 0
  br i1 %tobool7, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %if.then
  %12 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %display = getelementptr inbounds %struct._GimpDrawTool, %struct._GimpDrawTool* %12, i32 0, i32 1
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call9 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %13)
  store %struct._GimpImage* %call9, %struct._GimpImage** %image, align 8
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call10 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %14)
  store %struct._GimpDrawable* %call10, %struct._GimpDrawable** %drawable, align 8
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %16 = bitcast %struct._GimpDrawable* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %17, i32* %off_x, i32* %off_y)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %18 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %19 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel, align 8
  %segs13 = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %19, i32 0, i32 5
  %20 = load %struct._BoundSeg*, %struct._BoundSeg** %segs13, align 8
  %21 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel, align 8
  %n_segs = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %21, i32 0, i32 6
  %22 = load i32, i32* %n_segs, align 4
  %23 = load i32, i32* %off_x, align 4
  %conv = sitofp i32 %23 to double
  %24 = load i32, i32* %off_y, align 4
  %conv14 = sitofp i32 %24 to double
  %call15 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_boundary(%struct._GimpDrawTool* %18, %struct._BoundSeg* %20, i32 %22, %struct._GimpMatrix3* null, double %conv, double %conv14)
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %entry
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @g_object_unref(i8*) #1

declare void @g_free(i8*) #1

declare %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_region_select_options_get_type() #2

declare i32 @gimp_selection_tool_start_edit(%struct._GimpSelectionTool*, %struct._GimpDisplay*, %struct._GimpCoords*) #1

declare void @gimp_tool_control_activate(%struct._GimpToolControl*) #1

declare void @gimp_tool_push_status(%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

; Function Attrs: nounwind uwtable
define internal %struct._BoundSeg* @gimp_region_select_tool_calculate(%struct._GimpRegionSelectTool* %region_sel, %struct._GimpDisplay* %display, i32* %n_segs) #3 {
entry:
  %retval = alloca %struct._BoundSeg*, align 8
  %region_sel.addr = alloca %struct._GimpRegionSelectTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %n_segs.addr = alloca i32*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %segs = alloca %struct._BoundSeg*, align 8
  %maskPR = alloca %struct._PixelRegion, align 8
  store %struct._GimpRegionSelectTool* %region_sel, %struct._GimpRegionSelectTool** %region_sel.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store i32* %n_segs, i32** %n_segs.addr, align 8
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %0)
  store %struct._GimpDisplayShell* %call, %struct._GimpDisplayShell** %shell, align 8
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_set_override_cursor(%struct._GimpDisplayShell* %1, i32 150)
  %2 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel.addr, align 8
  %region_mask = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %2, i32 0, i32 4
  %3 = load %struct._GimpChannel*, %struct._GimpChannel** %region_mask, align 8
  %tobool = icmp ne %struct._GimpChannel* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel.addr, align 8
  %region_mask1 = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %4, i32 0, i32 4
  %5 = load %struct._GimpChannel*, %struct._GimpChannel** %region_mask1, align 8
  %6 = bitcast %struct._GimpChannel* %5 to i8*
  call void @g_object_unref(i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel.addr, align 8
  %8 = bitcast %struct._GimpRegionSelectTool* %7 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %10 = bitcast %struct._GTypeClass* %9 to %struct._GimpRegionSelectToolClass*
  %get_mask = getelementptr inbounds %struct._GimpRegionSelectToolClass, %struct._GimpRegionSelectToolClass* %10, i32 0, i32 2
  %11 = load %struct._GimpChannel* (%struct._GimpRegionSelectTool*, %struct._GimpDisplay*)*, %struct._GimpChannel* (%struct._GimpRegionSelectTool*, %struct._GimpDisplay*)** %get_mask, align 8
  %12 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel.addr, align 8
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call2 = call %struct._GimpChannel* %11(%struct._GimpRegionSelectTool* %12, %struct._GimpDisplay* %13)
  %14 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel.addr, align 8
  %region_mask3 = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %14, i32 0, i32 4
  store %struct._GimpChannel* %call2, %struct._GimpChannel** %region_mask3, align 8
  %15 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel.addr, align 8
  %region_mask4 = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %15, i32 0, i32 4
  %16 = load %struct._GimpChannel*, %struct._GimpChannel** %region_mask4, align 8
  %tobool5 = icmp ne %struct._GimpChannel* %16, null
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_unset_override_cursor(%struct._GimpDisplayShell* %17)
  %18 = load i32*, i32** %n_segs.addr, align 8
  store i32 0, i32* %18, align 4
  store %struct._BoundSeg* null, %struct._BoundSeg** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %19 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel.addr, align 8
  %region_mask8 = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %19, i32 0, i32 4
  %20 = load %struct._GimpChannel*, %struct._GimpChannel** %region_mask8, align 8
  %21 = bitcast %struct._GimpChannel* %20 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_drawable_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call9)
  %22 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpDrawable*
  %call11 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %22)
  %23 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel.addr, align 8
  %region_mask12 = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %23, i32 0, i32 4
  %24 = load %struct._GimpChannel*, %struct._GimpChannel** %region_mask12, align 8
  %25 = bitcast %struct._GimpChannel* %24 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_item_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call13)
  %26 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpItem*
  %call15 = call i32 @gimp_item_get_width(%struct._GimpItem* %26)
  %27 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel.addr, align 8
  %region_mask16 = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %27, i32 0, i32 4
  %28 = load %struct._GimpChannel*, %struct._GimpChannel** %region_mask16, align 8
  %29 = bitcast %struct._GimpChannel* %28 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_item_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call17)
  %30 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpItem*
  %call19 = call i32 @gimp_item_get_height(%struct._GimpItem* %30)
  call void @pixel_region_init(%struct._PixelRegion* %maskPR, %struct._TileManager* %call11, i32 0, i32 0, i32 %call15, i32 %call19, i32 0)
  %31 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel.addr, align 8
  %region_mask20 = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %31, i32 0, i32 4
  %32 = load %struct._GimpChannel*, %struct._GimpChannel** %region_mask20, align 8
  %33 = bitcast %struct._GimpChannel* %32 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_item_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call21)
  %34 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpItem*
  %call23 = call i32 @gimp_item_get_width(%struct._GimpItem* %34)
  %35 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_sel.addr, align 8
  %region_mask24 = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %35, i32 0, i32 4
  %36 = load %struct._GimpChannel*, %struct._GimpChannel** %region_mask24, align 8
  %37 = bitcast %struct._GimpChannel* %36 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_item_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call25)
  %38 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpItem*
  %call27 = call i32 @gimp_item_get_height(%struct._GimpItem* %38)
  %39 = load i32*, i32** %n_segs.addr, align 8
  %call28 = call %struct._BoundSeg* @boundary_find(%struct._PixelRegion* %maskPR, i32 0, i32 0, i32 0, i32 %call23, i32 %call27, i8 zeroext 127, i32* %39)
  store %struct._BoundSeg* %call28, %struct._BoundSeg** %segs, align 8
  %40 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_unset_override_cursor(%struct._GimpDisplayShell* %40)
  %41 = load %struct._BoundSeg*, %struct._BoundSeg** %segs, align 8
  store %struct._BoundSeg* %41, %struct._BoundSeg** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6
  %42 = load %struct._BoundSeg*, %struct._BoundSeg** %retval
  ret %struct._BoundSeg* %42
}

declare void @gimp_draw_tool_start(%struct._GimpDrawTool*, %struct._GimpDisplay*) #1

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

declare void @gimp_display_shell_set_override_cursor(%struct._GimpDisplayShell*, i32) #1

declare void @gimp_display_shell_unset_override_cursor(%struct._GimpDisplayShell*) #1

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #1

declare %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

declare i32 @gimp_item_get_width(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare i32 @gimp_item_get_height(%struct._GimpItem*) #1

declare %struct._BoundSeg* @boundary_find(%struct._PixelRegion*, i32, i32, i32, i32, i32, i8 zeroext, i32*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_selection_options_get_type() #2

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare void @gimp_tool_pop_status(%struct._GimpTool*, %struct._GimpDisplay*) #1

declare void @gimp_draw_tool_stop(%struct._GimpDrawTool*) #1

declare void @gimp_tool_control_halt(%struct._GimpToolControl*) #1

declare %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage*) #1

declare void @floating_sel_anchor(%struct._GimpLayer*) #1

declare void @gimp_channel_clear(%struct._GimpChannel*, i8*, i32) #1

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #1

declare void @gimp_image_flush(%struct._GimpImage*) #1

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #1

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #1

declare void @gimp_channel_select_channel(%struct._GimpChannel*, i8*, %struct._GimpChannel*, i32, i32, i32, i32, double, double) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare void @gimp_draw_tool_pause(%struct._GimpDrawTool*) #1

declare void @gimp_draw_tool_resume(%struct._GimpDrawTool*) #1

declare i32 @gimp_image_coords_in_active_pickable(%struct._GimpImage*, %struct._GimpCoords*, i32, i32) #1

declare void @gimp_tool_control_set_cursor_modifier(%struct._GimpToolControl*, i32) #1

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_boundary(%struct._GimpDrawTool*, %struct._BoundSeg*, i32, %struct._GimpMatrix3*, double, double) #1

declare void @gimp_tool_control_set_scroll_lock(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_motion_mode(%struct._GimpToolControl*, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
