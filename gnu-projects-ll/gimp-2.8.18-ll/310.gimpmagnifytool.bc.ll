; ModuleID = './app/tools/gimpmagnifytool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpMagnifyToolClass = type { %struct._GimpDrawToolClass }
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
%struct._GimpMagnifyTool = type { %struct._GimpDrawTool, double, double, double, double, %struct._GimpCanvasItem* }
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
%struct._GimpMagnifyOptions = type { %struct._GimpToolOptions, i32, i32 }
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

@gimp_magnify_tool_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"GimpMagnifyTool\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"gimp-zoom-tool\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Zoom\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Zoom Tool: Adjust the zoom level\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"_Zoom\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"gimp-tool-zoom\00", align 1
@gimp_magnify_tool_parent_class = internal global i8* null, align 8
@GimpMagnifyTool_private_offset = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"zoom-type\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_magnify_tool_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_magnify_tool_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_magnify_tool_get_type.g_define_type_id__volatile to i8*))
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
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 288, void (i8*, i8*)* bitcast (void (i8*)* @gimp_magnify_tool_class_intern_init to void (i8*, i8*)*), i32 288, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpMagnifyTool*)* @gimp_magnify_tool_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_magnify_tool_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_magnify_tool_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_draw_tool_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_magnify_tool_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_magnify_tool_parent_class, align 8
  %1 = load i32, i32* @GimpMagnifyTool_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpMagnifyTool_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpMagnifyToolClass*
  call void @gimp_magnify_tool_class_init(%struct._GimpMagnifyToolClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_magnify_tool_init(%struct._GimpMagnifyTool* %magnify_tool) #3 {
entry:
  %magnify_tool.addr = alloca %struct._GimpMagnifyTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  store %struct._GimpMagnifyTool* %magnify_tool, %struct._GimpMagnifyTool** %magnify_tool.addr, align 8
  %0 = load %struct._GimpMagnifyTool*, %struct._GimpMagnifyTool** %magnify_tool.addr, align 8
  %1 = bitcast %struct._GimpMagnifyTool* %0 to %struct._GTypeInstance*
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
  call void @gimp_tool_control_set_handle_empty_image(%struct._GimpToolControl* %6, i32 1)
  %7 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control3 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %7, i32 0, i32 3
  %8 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control3, align 8
  call void @gimp_tool_control_set_wants_click(%struct._GimpToolControl* %8, i32 1)
  %9 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control4 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %9, i32 0, i32 3
  %10 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control4, align 8
  call void @gimp_tool_control_set_snap_to(%struct._GimpToolControl* %10, i32 0)
  %11 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control5 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %11, i32 0, i32 3
  %12 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control5, align 8
  call void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl* %12, i32 12)
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control6 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %13, i32 0, i32 3
  %14 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control6, align 8
  call void @gimp_tool_control_set_cursor_modifier(%struct._GimpToolControl* %14, i32 2)
  %15 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control7 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %15, i32 0, i32 3
  %16 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control7, align 8
  call void @gimp_tool_control_set_toggle_cursor_modifier(%struct._GimpToolControl* %16, i32 3)
  %17 = load %struct._GimpMagnifyTool*, %struct._GimpMagnifyTool** %magnify_tool.addr, align 8
  %x = getelementptr inbounds %struct._GimpMagnifyTool, %struct._GimpMagnifyTool* %17, i32 0, i32 1
  store double 0.000000e+00, double* %x, align 8
  %18 = load %struct._GimpMagnifyTool*, %struct._GimpMagnifyTool** %magnify_tool.addr, align 8
  %y = getelementptr inbounds %struct._GimpMagnifyTool, %struct._GimpMagnifyTool* %18, i32 0, i32 2
  store double 0.000000e+00, double* %y, align 8
  %19 = load %struct._GimpMagnifyTool*, %struct._GimpMagnifyTool** %magnify_tool.addr, align 8
  %w = getelementptr inbounds %struct._GimpMagnifyTool, %struct._GimpMagnifyTool* %19, i32 0, i32 3
  store double 0.000000e+00, double* %w, align 8
  %20 = load %struct._GimpMagnifyTool*, %struct._GimpMagnifyTool** %magnify_tool.addr, align 8
  %h = getelementptr inbounds %struct._GimpMagnifyTool, %struct._GimpMagnifyTool* %20, i32 0, i32 4
  store double 0.000000e+00, double* %h, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_magnify_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, i8* %data) #3 {
entry:
  %callback.addr = alloca void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  %call = call i64 @gimp_magnify_tool_get_type() #5
  %call1 = call i64 @gimp_magnify_options_get_type() #5
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)) #6
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0)) #6
  %1 = load i8*, i8** %data.addr, align 8
  call void %0(i64 %call, i64 %call1, %struct._GtkWidget* (%struct._GimpToolOptions*)* @gimp_magnify_options_gui, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* %call2, i8* %call3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* %1)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_magnify_options_get_type() #2

declare %struct._GtkWidget* @gimp_magnify_options_gui(%struct._GimpToolOptions*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_magnify_tool_class_init(%struct._GimpMagnifyToolClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpMagnifyToolClass*, align 8
  %tool_class = alloca %struct._GimpToolClass*, align 8
  %draw_tool_class = alloca %struct._GimpDrawToolClass*, align 8
  store %struct._GimpMagnifyToolClass* %klass, %struct._GimpMagnifyToolClass** %klass.addr, align 8
  %0 = load %struct._GimpMagnifyToolClass*, %struct._GimpMagnifyToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpMagnifyToolClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpToolClass*
  store %struct._GimpToolClass* %2, %struct._GimpToolClass** %tool_class, align 8
  %3 = load %struct._GimpMagnifyToolClass*, %struct._GimpMagnifyToolClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpMagnifyToolClass* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_draw_tool_get_type() #5
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpDrawToolClass*
  store %struct._GimpDrawToolClass* %5, %struct._GimpDrawToolClass** %draw_tool_class, align 8
  %6 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %6, i32 0, i32 5
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_magnify_tool_button_press, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_press, align 8
  %7 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_release = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %7, i32 0, i32 6
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_magnify_tool_button_release, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_release, align 8
  %8 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %motion = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %8, i32 0, i32 7
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_magnify_tool_motion, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %motion, align 8
  %9 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %modifier_key = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %9, i32 0, i32 10
  store void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_magnify_tool_modifier_key, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)** %modifier_key, align 8
  %10 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %10, i32 0, i32 13
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)* @gimp_magnify_tool_cursor_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %11 = load %struct._GimpDrawToolClass*, %struct._GimpDrawToolClass** %draw_tool_class, align 8
  %draw = getelementptr inbounds %struct._GimpDrawToolClass, %struct._GimpDrawToolClass* %11, i32 0, i32 1
  store void (%struct._GimpDrawTool*)* @gimp_magnify_tool_draw, void (%struct._GimpDrawTool*)** %draw, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_magnify_tool_button_press(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %press_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %press_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %magnify = alloca %struct._GimpMagnifyTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %press_type, i32* %press_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_magnify_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpMagnifyTool*
  store %struct._GimpMagnifyTool* %2, %struct._GimpMagnifyTool** %magnify, align 8
  %3 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %3, i32 0, i32 0
  %4 = load double, double* %x, align 8
  %5 = load %struct._GimpMagnifyTool*, %struct._GimpMagnifyTool** %magnify, align 8
  %x2 = getelementptr inbounds %struct._GimpMagnifyTool, %struct._GimpMagnifyTool* %5, i32 0, i32 1
  store double %4, double* %x2, align 8
  %6 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %6, i32 0, i32 1
  %7 = load double, double* %y, align 8
  %8 = load %struct._GimpMagnifyTool*, %struct._GimpMagnifyTool** %magnify, align 8
  %y3 = getelementptr inbounds %struct._GimpMagnifyTool, %struct._GimpMagnifyTool* %8, i32 0, i32 2
  store double %7, double* %y3, align 8
  %9 = load %struct._GimpMagnifyTool*, %struct._GimpMagnifyTool** %magnify, align 8
  %w = getelementptr inbounds %struct._GimpMagnifyTool, %struct._GimpMagnifyTool* %9, i32 0, i32 3
  store double 0.000000e+00, double* %w, align 8
  %10 = load %struct._GimpMagnifyTool*, %struct._GimpMagnifyTool** %magnify, align 8
  %h = getelementptr inbounds %struct._GimpMagnifyTool, %struct._GimpMagnifyTool* %10, i32 0, i32 4
  store double 0.000000e+00, double* %h, align 8
  %11 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %11, i32 0, i32 3
  %12 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_activate(%struct._GimpToolControl* %12)
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %14 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display4 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %14, i32 0, i32 4
  store %struct._GimpDisplay* %13, %struct._GimpDisplay** %display4, align 8
  %15 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %16 = bitcast %struct._GimpTool* %15 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_draw_tool_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call5)
  %17 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpDrawTool*
  %18 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_draw_tool_start(%struct._GimpDrawTool* %17, %struct._GimpDisplay* %18)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_magnify_tool_button_release(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %release_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %release_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %magnify = alloca %struct._GimpMagnifyTool*, align 8
  %options = alloca %struct._GimpMagnifyOptions*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %x1 = alloca double, align 8
  %y1 = alloca double, align 8
  %x2 = alloca double, align 8
  %y2 = alloca double, align 8
  %width = alloca double, align 8
  %height = alloca double, align 8
  %current_scale = alloca double, align 8
  %new_scale = alloca double, align 8
  %display_width = alloca double, align 8
  %display_height = alloca double, align 8
  %factor = alloca double, align 8
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %screen_xres = alloca double, align 8
  %screen_yres = alloca double, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %release_type, i32* %release_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_magnify_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpMagnifyTool*
  store %struct._GimpMagnifyTool* %2, %struct._GimpMagnifyTool** %magnify, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_magnify_options_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpMagnifyOptions*
  store %struct._GimpMagnifyOptions* %7, %struct._GimpMagnifyOptions** %options, align 8
  %8 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display7 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %8, i32 0, i32 4
  %9 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display7, align 8
  %call8 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %9)
  store %struct._GimpDisplayShell* %call8, %struct._GimpDisplayShell** %shell, align 8
  %10 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %11 = bitcast %struct._GimpTool* %10 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_draw_tool_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call9)
  %12 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_stop(%struct._GimpDrawTool* %12)
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %13, i32 0, i32 3
  %14 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_halt(%struct._GimpToolControl* %14)
  %15 = load i32, i32* %release_type.addr, align 4
  switch i32 %15, label %sw.default.157 [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 0, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %entry, %entry
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %17 = load %struct._GimpMagnifyOptions*, %struct._GimpMagnifyOptions** %options, align 8
  %zoom_type = getelementptr inbounds %struct._GimpMagnifyOptions, %struct._GimpMagnifyOptions* %17, i32 0, i32 2
  %18 = load i32, i32* %zoom_type, align 4
  call void @gimp_display_shell_scale(%struct._GimpDisplayShell* %16, i32 %18, double 0.000000e+00, i32 1)
  br label %sw.epilog.158

sw.bb.11:                                         ; preds = %entry
  store double 1.000000e+00, double* %factor, align 8
  %19 = load %struct._GimpMagnifyTool*, %struct._GimpMagnifyTool** %magnify, align 8
  %w = getelementptr inbounds %struct._GimpMagnifyTool, %struct._GimpMagnifyTool* %19, i32 0, i32 3
  %20 = load double, double* %w, align 8
  %cmp = fcmp olt double %20, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.11
  %21 = load %struct._GimpMagnifyTool*, %struct._GimpMagnifyTool** %magnify, align 8
  %x = getelementptr inbounds %struct._GimpMagnifyTool, %struct._GimpMagnifyTool* %21, i32 0, i32 1
  %22 = load double, double* %x, align 8
  %23 = load %struct._GimpMagnifyTool*, %struct._GimpMagnifyTool** %magnify, align 8
  %w12 = getelementptr inbounds %struct._GimpMagnifyTool, %struct._GimpMagnifyTool* %23, i32 0, i32 3
  %24 = load double, double* %w12, align 8
  %add = fadd double %22, %24
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.11
  %25 = load %struct._GimpMagnifyTool*, %struct._GimpMagnifyTool** %magnify, align 8
  %x13 = getelementptr inbounds %struct._GimpMagnifyTool, %struct._GimpMagnifyTool* %25, i32 0, i32 1
  %26 = load double, double* %x13, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %add, %cond.true ], [ %26, %cond.false ]
  store double %cond, double* %x1, align 8
  %27 = load %struct._GimpMagnifyTool*, %struct._GimpMagnifyTool** %magnify, align 8
  %h = getelementptr inbounds %struct._GimpMagnifyTool, %struct._GimpMagnifyTool* %27, i32 0, i32 4
  %28 = load double, double* %h, align 8
  %cmp14 = fcmp olt double %28, 0.000000e+00
  br i1 %cmp14, label %cond.true.15, label %cond.false.18

cond.true.15:                                     ; preds = %cond.end
  %29 = load %struct._GimpMagnifyTool*, %struct._GimpMagnifyTool** %magnify, align 8
  %y = getelementptr inbounds %struct._GimpMagnifyTool, %struct._GimpMagnifyTool* %29, i32 0, i32 2
  %30 = load double, double* %y, align 8
  %31 = load %struct._GimpMagnifyTool*, %struct._GimpMagnifyTool** %magnify, align 8
  %h16 = getelementptr inbounds %struct._GimpMagnifyTool, %struct._GimpMagnifyTool* %31, i32 0, i32 4
  %32 = load double, double* %h16, align 8
  %add17 = fadd double %30, %32
  br label %cond.end.20

cond.false.18:                                    ; preds = %cond.end
  %33 = load %struct._GimpMagnifyTool*, %struct._GimpMagnifyTool** %magnify, align 8
  %y19 = getelementptr inbounds %struct._GimpMagnifyTool, %struct._GimpMagnifyTool* %33, i32 0, i32 2
  %34 = load double, double* %y19, align 8
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.18, %cond.true.15
  %cond21 = phi double [ %add17, %cond.true.15 ], [ %34, %cond.false.18 ]
  store double %cond21, double* %y1, align 8
  %35 = load %struct._GimpMagnifyTool*, %struct._GimpMagnifyTool** %magnify, align 8
  %w22 = getelementptr inbounds %struct._GimpMagnifyTool, %struct._GimpMagnifyTool* %35, i32 0, i32 3
  %36 = load double, double* %w22, align 8
  %cmp23 = fcmp olt double %36, 0.000000e+00
  br i1 %cmp23, label %cond.true.24, label %cond.false.26

cond.true.24:                                     ; preds = %cond.end.20
  %37 = load %struct._GimpMagnifyTool*, %struct._GimpMagnifyTool** %magnify, align 8
  %w25 = getelementptr inbounds %struct._GimpMagnifyTool, %struct._GimpMagnifyTool* %37, i32 0, i32 3
  %38 = load double, double* %w25, align 8
  %sub = fsub double -0.000000e+00, %38
  br label %cond.end.28

cond.false.26:                                    ; preds = %cond.end.20
  %39 = load %struct._GimpMagnifyTool*, %struct._GimpMagnifyTool** %magnify, align 8
  %w27 = getelementptr inbounds %struct._GimpMagnifyTool, %struct._GimpMagnifyTool* %39, i32 0, i32 3
  %40 = load double, double* %w27, align 8
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.26, %cond.true.24
  %cond29 = phi double [ %sub, %cond.true.24 ], [ %40, %cond.false.26 ]
  store double %cond29, double* %width, align 8
  %41 = load %struct._GimpMagnifyTool*, %struct._GimpMagnifyTool** %magnify, align 8
  %h30 = getelementptr inbounds %struct._GimpMagnifyTool, %struct._GimpMagnifyTool* %41, i32 0, i32 4
  %42 = load double, double* %h30, align 8
  %cmp31 = fcmp olt double %42, 0.000000e+00
  br i1 %cmp31, label %cond.true.32, label %cond.false.35

cond.true.32:                                     ; preds = %cond.end.28
  %43 = load %struct._GimpMagnifyTool*, %struct._GimpMagnifyTool** %magnify, align 8
  %h33 = getelementptr inbounds %struct._GimpMagnifyTool, %struct._GimpMagnifyTool* %43, i32 0, i32 4
  %44 = load double, double* %h33, align 8
  %sub34 = fsub double -0.000000e+00, %44
  br label %cond.end.37

cond.false.35:                                    ; preds = %cond.end.28
  %45 = load %struct._GimpMagnifyTool*, %struct._GimpMagnifyTool** %magnify, align 8
  %h36 = getelementptr inbounds %struct._GimpMagnifyTool, %struct._GimpMagnifyTool* %45, i32 0, i32 4
  %46 = load double, double* %h36, align 8
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.35, %cond.true.32
  %cond38 = phi double [ %sub34, %cond.true.32 ], [ %46, %cond.false.35 ]
  store double %cond38, double* %height, align 8
  %47 = load double, double* %x1, align 8
  %48 = load double, double* %width, align 8
  %add39 = fadd double %47, %48
  store double %add39, double* %x2, align 8
  %49 = load double, double* %y1, align 8
  %50 = load double, double* %height, align 8
  %add40 = fadd double %49, %50
  store double %add40, double* %y2, align 8
  %51 = load double, double* %width, align 8
  %cmp41 = fcmp ogt double 1.000000e+00, %51
  br i1 %cmp41, label %cond.true.42, label %cond.false.43

cond.true.42:                                     ; preds = %cond.end.37
  br label %cond.end.44

cond.false.43:                                    ; preds = %cond.end.37
  %52 = load double, double* %width, align 8
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.43, %cond.true.42
  %cond45 = phi double [ 1.000000e+00, %cond.true.42 ], [ %52, %cond.false.43 ]
  store double %cond45, double* %width, align 8
  %53 = load double, double* %height, align 8
  %cmp46 = fcmp ogt double 1.000000e+00, %53
  br i1 %cmp46, label %cond.true.47, label %cond.false.48

cond.true.47:                                     ; preds = %cond.end.44
  br label %cond.end.49

cond.false.48:                                    ; preds = %cond.end.44
  %54 = load double, double* %height, align 8
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.48, %cond.true.47
  %cond50 = phi double [ 1.000000e+00, %cond.true.47 ], [ %54, %cond.false.48 ]
  store double %cond50, double* %height, align 8
  %55 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %zoom = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %55, i32 0, i32 22
  %56 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %zoom, align 8
  %call51 = call double @gimp_zoom_model_get_factor(%struct._GimpZoomModel* %56)
  store double %call51, double* %current_scale, align 8
  %57 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %disp_width = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %57, i32 0, i32 28
  %58 = load i32, i32* %disp_width, align 4
  %conv = sitofp i32 %58 to double
  %59 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %59, i32 0, i32 13
  %60 = load double, double* %scale_x, align 8
  %div = fdiv double %conv, %60
  store double %div, double* %display_width, align 8
  %61 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %disp_height = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %61, i32 0, i32 29
  %62 = load i32, i32* %disp_height, align 4
  %conv52 = sitofp i32 %62 to double
  %63 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %63, i32 0, i32 14
  %64 = load double, double* %scale_y, align 8
  %div53 = fdiv double %conv52, %64
  store double %div53, double* %display_height, align 8
  %65 = load %struct._GimpMagnifyOptions*, %struct._GimpMagnifyOptions** %options, align 8
  %zoom_type54 = getelementptr inbounds %struct._GimpMagnifyOptions, %struct._GimpMagnifyOptions* %65, i32 0, i32 2
  %66 = load i32, i32* %zoom_type54, align 4
  switch i32 %66, label %sw.default [
    i32 0, label %sw.bb.55
    i32 1, label %sw.bb.66
  ]

sw.bb.55:                                         ; preds = %cond.end.49
  %67 = load double, double* %display_width, align 8
  %68 = load double, double* %width, align 8
  %div56 = fdiv double %67, %68
  %69 = load double, double* %display_height, align 8
  %70 = load double, double* %height, align 8
  %div57 = fdiv double %69, %70
  %cmp58 = fcmp olt double %div56, %div57
  br i1 %cmp58, label %cond.true.60, label %cond.false.62

cond.true.60:                                     ; preds = %sw.bb.55
  %71 = load double, double* %display_width, align 8
  %72 = load double, double* %width, align 8
  %div61 = fdiv double %71, %72
  br label %cond.end.64

cond.false.62:                                    ; preds = %sw.bb.55
  %73 = load double, double* %display_height, align 8
  %74 = load double, double* %height, align 8
  %div63 = fdiv double %73, %74
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.62, %cond.true.60
  %cond65 = phi double [ %div61, %cond.true.60 ], [ %div63, %cond.false.62 ]
  store double %cond65, double* %factor, align 8
  br label %sw.epilog

sw.bb.66:                                         ; preds = %cond.end.49
  %75 = load double, double* %width, align 8
  %76 = load double, double* %display_width, align 8
  %div67 = fdiv double %75, %76
  %77 = load double, double* %height, align 8
  %78 = load double, double* %display_height, align 8
  %div68 = fdiv double %77, %78
  %cmp69 = fcmp ogt double %div67, %div68
  br i1 %cmp69, label %cond.true.71, label %cond.false.73

cond.true.71:                                     ; preds = %sw.bb.66
  %79 = load double, double* %width, align 8
  %80 = load double, double* %display_width, align 8
  %div72 = fdiv double %79, %80
  br label %cond.end.75

cond.false.73:                                    ; preds = %sw.bb.66
  %81 = load double, double* %height, align 8
  %82 = load double, double* %display_height, align 8
  %div74 = fdiv double %81, %82
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.false.73, %cond.true.71
  %cond76 = phi double [ %div72, %cond.true.71 ], [ %div74, %cond.false.73 ]
  store double %cond76, double* %factor, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end.49
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %cond.end.75, %cond.end.64
  %83 = load double, double* %current_scale, align 8
  %84 = load double, double* %factor, align 8
  %mul = fmul double %83, %84
  store double %mul, double* %new_scale, align 8
  %85 = load double, double* %new_scale, align 8
  %86 = load double, double* %current_scale, align 8
  %cmp77 = fcmp une double %85, %86
  br i1 %cmp77, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  store i32 0, i32* %offset_x, align 4
  store i32 0, i32* %offset_y, align 4
  %87 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call79 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %87)
  call void @gimp_image_get_resolution(%struct._GimpImage* %call79, double* %xres, double* %yres)
  %88 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_get_screen_resolution(%struct._GimpDisplayShell* %88, double* %screen_xres, double* %screen_yres)
  %89 = load %struct._GimpMagnifyOptions*, %struct._GimpMagnifyOptions** %options, align 8
  %zoom_type80 = getelementptr inbounds %struct._GimpMagnifyOptions, %struct._GimpMagnifyOptions* %89, i32 0, i32 2
  %90 = load i32, i32* %zoom_type80, align 4
  switch i32 %90, label %sw.default.155 [
    i32 0, label %sw.bb.81
    i32 1, label %sw.bb.104
  ]

sw.bb.81:                                         ; preds = %if.then
  %91 = load double, double* %new_scale, align 8
  %92 = load double, double* %x1, align 8
  %93 = load double, double* %x2, align 8
  %add82 = fadd double %92, %93
  %div83 = fdiv double %add82, 2.000000e+00
  %mul84 = fmul double %91, %div83
  %94 = load double, double* %screen_xres, align 8
  %mul85 = fmul double %mul84, %94
  %95 = load double, double* %xres, align 8
  %div86 = fdiv double %mul85, %95
  %96 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %disp_width87 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %96, i32 0, i32 28
  %97 = load i32, i32* %disp_width87, align 4
  %conv88 = sitofp i32 %97 to double
  %div89 = fdiv double %conv88, 2.000000e+00
  %sub90 = fsub double %div86, %div89
  %call91 = call double @rint(double %sub90) #5
  %conv92 = fptosi double %call91 to i32
  store i32 %conv92, i32* %offset_x, align 4
  %98 = load double, double* %new_scale, align 8
  %99 = load double, double* %y1, align 8
  %100 = load double, double* %y2, align 8
  %add93 = fadd double %99, %100
  %div94 = fdiv double %add93, 2.000000e+00
  %mul95 = fmul double %98, %div94
  %101 = load double, double* %screen_yres, align 8
  %mul96 = fmul double %mul95, %101
  %102 = load double, double* %yres, align 8
  %div97 = fdiv double %mul96, %102
  %103 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %disp_height98 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %103, i32 0, i32 29
  %104 = load i32, i32* %disp_height98, align 4
  %conv99 = sitofp i32 %104 to double
  %div100 = fdiv double %conv99, 2.000000e+00
  %sub101 = fsub double %div97, %div100
  %call102 = call double @rint(double %sub101) #5
  %conv103 = fptosi double %call102 to i32
  store i32 %conv103, i32* %offset_y, align 4
  br label %sw.epilog.156

sw.bb.104:                                        ; preds = %if.then
  %105 = load double, double* %new_scale, align 8
  %106 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %offset_x105 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %106, i32 0, i32 11
  %107 = load i32, i32* %offset_x105, align 4
  %conv106 = sitofp i32 %107 to double
  %108 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %disp_width107 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %108, i32 0, i32 28
  %109 = load i32, i32* %disp_width107, align 4
  %conv108 = sitofp i32 %109 to double
  %div109 = fdiv double %conv108, 2.000000e+00
  %add110 = fadd double %conv106, %div109
  %110 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_x111 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %110, i32 0, i32 13
  %111 = load double, double* %scale_x111, align 8
  %div112 = fdiv double %add110, %111
  %conv113 = fptosi double %div112 to i32
  %conv114 = sitofp i32 %conv113 to double
  %mul115 = fmul double %105, %conv114
  %112 = load double, double* %screen_xres, align 8
  %mul116 = fmul double %mul115, %112
  %113 = load double, double* %xres, align 8
  %div117 = fdiv double %mul116, %113
  %114 = load double, double* %x1, align 8
  %115 = load double, double* %x2, align 8
  %add118 = fadd double %114, %115
  %div119 = fdiv double %add118, 2.000000e+00
  %116 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_x120 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %116, i32 0, i32 13
  %117 = load double, double* %scale_x120, align 8
  %mul121 = fmul double %div119, %117
  %call122 = call double @rint(double %mul121) #5
  %conv123 = fptosi double %call122 to i32
  %118 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %offset_x124 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %118, i32 0, i32 11
  %119 = load i32, i32* %offset_x124, align 4
  %sub125 = sub nsw i32 %conv123, %119
  %conv126 = sitofp i32 %sub125 to double
  %sub127 = fsub double %div117, %conv126
  %call128 = call double @rint(double %sub127) #5
  %conv129 = fptosi double %call128 to i32
  store i32 %conv129, i32* %offset_x, align 4
  %120 = load double, double* %new_scale, align 8
  %121 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %offset_y130 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %121, i32 0, i32 12
  %122 = load i32, i32* %offset_y130, align 4
  %conv131 = sitofp i32 %122 to double
  %123 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %disp_height132 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %123, i32 0, i32 29
  %124 = load i32, i32* %disp_height132, align 4
  %conv133 = sitofp i32 %124 to double
  %div134 = fdiv double %conv133, 2.000000e+00
  %add135 = fadd double %conv131, %div134
  %125 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_y136 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %125, i32 0, i32 14
  %126 = load double, double* %scale_y136, align 8
  %div137 = fdiv double %add135, %126
  %conv138 = fptosi double %div137 to i32
  %conv139 = sitofp i32 %conv138 to double
  %mul140 = fmul double %120, %conv139
  %127 = load double, double* %screen_yres, align 8
  %mul141 = fmul double %mul140, %127
  %128 = load double, double* %yres, align 8
  %div142 = fdiv double %mul141, %128
  %129 = load double, double* %y1, align 8
  %130 = load double, double* %y2, align 8
  %add143 = fadd double %129, %130
  %div144 = fdiv double %add143, 2.000000e+00
  %131 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %scale_y145 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %131, i32 0, i32 14
  %132 = load double, double* %scale_y145, align 8
  %mul146 = fmul double %div144, %132
  %call147 = call double @rint(double %mul146) #5
  %conv148 = fptosi double %call147 to i32
  %133 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %offset_y149 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %133, i32 0, i32 12
  %134 = load i32, i32* %offset_y149, align 4
  %sub150 = sub nsw i32 %conv148, %134
  %conv151 = sitofp i32 %sub150 to double
  %sub152 = fsub double %div142, %conv151
  %call153 = call double @rint(double %sub152) #5
  %conv154 = fptosi double %call153 to i32
  store i32 %conv154, i32* %offset_y, align 4
  br label %sw.epilog.156

sw.default.155:                                   ; preds = %if.then
  br label %sw.epilog.156

sw.epilog.156:                                    ; preds = %sw.default.155, %sw.bb.104, %sw.bb.81
  %135 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %136 = load double, double* %new_scale, align 8
  %137 = load i32, i32* %offset_x, align 4
  %138 = load i32, i32* %offset_y, align 4
  %139 = load %struct._GimpMagnifyOptions*, %struct._GimpMagnifyOptions** %options, align 8
  %auto_resize = getelementptr inbounds %struct._GimpMagnifyOptions, %struct._GimpMagnifyOptions* %139, i32 0, i32 1
  %140 = load i32, i32* %auto_resize, align 4
  call void @gimp_display_shell_scale_by_values(%struct._GimpDisplayShell* %135, double %136, i32 %137, i32 %138, i32 %140)
  br label %if.end

if.end:                                           ; preds = %sw.epilog.156, %sw.epilog
  br label %sw.epilog.158

sw.default.157:                                   ; preds = %entry
  br label %sw.epilog.158

sw.epilog.158:                                    ; preds = %sw.default.157, %if.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_magnify_tool_motion(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %magnify = alloca %struct._GimpMagnifyTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_magnify_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpMagnifyTool*
  store %struct._GimpMagnifyTool* %2, %struct._GimpMagnifyTool** %magnify, align 8
  %3 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %3, i32 0, i32 0
  %4 = load double, double* %x, align 8
  %5 = load %struct._GimpMagnifyTool*, %struct._GimpMagnifyTool** %magnify, align 8
  %x2 = getelementptr inbounds %struct._GimpMagnifyTool, %struct._GimpMagnifyTool* %5, i32 0, i32 1
  %6 = load double, double* %x2, align 8
  %sub = fsub double %4, %6
  %7 = load %struct._GimpMagnifyTool*, %struct._GimpMagnifyTool** %magnify, align 8
  %w = getelementptr inbounds %struct._GimpMagnifyTool, %struct._GimpMagnifyTool* %7, i32 0, i32 3
  store double %sub, double* %w, align 8
  %8 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %8, i32 0, i32 1
  %9 = load double, double* %y, align 8
  %10 = load %struct._GimpMagnifyTool*, %struct._GimpMagnifyTool** %magnify, align 8
  %y3 = getelementptr inbounds %struct._GimpMagnifyTool, %struct._GimpMagnifyTool* %10, i32 0, i32 2
  %11 = load double, double* %y3, align 8
  %sub4 = fsub double %9, %11
  %12 = load %struct._GimpMagnifyTool*, %struct._GimpMagnifyTool** %magnify, align 8
  %h = getelementptr inbounds %struct._GimpMagnifyTool, %struct._GimpMagnifyTool* %12, i32 0, i32 4
  store double %sub4, double* %h, align 8
  %13 = load %struct._GimpMagnifyTool*, %struct._GimpMagnifyTool** %magnify, align 8
  call void @gimp_magnify_tool_update_items(%struct._GimpMagnifyTool* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_magnify_tool_modifier_key(%struct._GimpTool* %tool, i32 %key, i32 %press, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %key.addr = alloca i32, align 4
  %press.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %options = alloca %struct._GimpMagnifyOptions*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %press, i32* %press.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  %call2 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %2)
  %3 = bitcast %struct._GimpToolOptions* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_magnify_options_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpMagnifyOptions*
  store %struct._GimpMagnifyOptions* %4, %struct._GimpMagnifyOptions** %options, align 8
  %5 = load i32, i32* %key.addr, align 4
  %call5 = call i32 @gimp_get_toggle_behavior_mask()
  %cmp = icmp eq i32 %5, %call5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpMagnifyOptions*, %struct._GimpMagnifyOptions** %options, align 8
  %zoom_type = getelementptr inbounds %struct._GimpMagnifyOptions, %struct._GimpMagnifyOptions* %6, i32 0, i32 2
  %7 = load i32, i32* %zoom_type, align 4
  switch i32 %7, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %if.then
  %8 = load %struct._GimpMagnifyOptions*, %struct._GimpMagnifyOptions** %options, align 8
  %9 = bitcast %struct._GimpMagnifyOptions* %8 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32 1, i8* null)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.then
  %10 = load %struct._GimpMagnifyOptions*, %struct._GimpMagnifyOptions** %options, align 8
  %11 = bitcast %struct._GimpMagnifyOptions* %10 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32 0, i8* null)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.6, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_magnify_tool_cursor_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %options = alloca %struct._GimpMagnifyOptions*, align 8
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
  %call3 = call i64 @gimp_magnify_options_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpMagnifyOptions*
  store %struct._GimpMagnifyOptions* %4, %struct._GimpMagnifyOptions** %options, align 8
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 3
  %6 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %7 = load %struct._GimpMagnifyOptions*, %struct._GimpMagnifyOptions** %options, align 8
  %zoom_type = getelementptr inbounds %struct._GimpMagnifyOptions, %struct._GimpMagnifyOptions* %7, i32 0, i32 2
  %8 = load i32, i32* %zoom_type, align 4
  %cmp = icmp eq i32 %8, 1
  %conv = zext i1 %cmp to i32
  call void @gimp_tool_control_set_toggled(%struct._GimpToolControl* %6, i32 %conv)
  %9 = load i8*, i8** @gimp_magnify_tool_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call5 = call i64 @gimp_tool_get_type() #5
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 %call5)
  %11 = bitcast %struct._GTypeClass* %call6 to %struct._GimpToolClass*
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %11, i32 0, i32 13
  %12 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %14 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %15 = load i32, i32* %state.addr, align 4
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %12(%struct._GimpTool* %13, %struct._GimpCoords* %14, i32 %15, %struct._GimpDisplay* %16)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_magnify_tool_draw(%struct._GimpDrawTool* %draw_tool) #3 {
entry:
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %magnify = alloca %struct._GimpMagnifyTool*, align 8
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_magnify_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpMagnifyTool*
  store %struct._GimpMagnifyTool* %2, %struct._GimpMagnifyTool** %magnify, align 8
  %3 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %4 = load %struct._GimpMagnifyTool*, %struct._GimpMagnifyTool** %magnify, align 8
  %x = getelementptr inbounds %struct._GimpMagnifyTool, %struct._GimpMagnifyTool* %4, i32 0, i32 1
  %5 = load double, double* %x, align 8
  %6 = load %struct._GimpMagnifyTool*, %struct._GimpMagnifyTool** %magnify, align 8
  %y = getelementptr inbounds %struct._GimpMagnifyTool, %struct._GimpMagnifyTool* %6, i32 0, i32 2
  %7 = load double, double* %y, align 8
  %8 = load %struct._GimpMagnifyTool*, %struct._GimpMagnifyTool** %magnify, align 8
  %w = getelementptr inbounds %struct._GimpMagnifyTool, %struct._GimpMagnifyTool* %8, i32 0, i32 3
  %9 = load double, double* %w, align 8
  %10 = load %struct._GimpMagnifyTool*, %struct._GimpMagnifyTool** %magnify, align 8
  %h = getelementptr inbounds %struct._GimpMagnifyTool, %struct._GimpMagnifyTool* %10, i32 0, i32 4
  %11 = load double, double* %h, align 8
  %call2 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_rectangle(%struct._GimpDrawTool* %3, i32 0, double %5, double %7, double %9, double %11)
  %12 = load %struct._GimpMagnifyTool*, %struct._GimpMagnifyTool** %magnify, align 8
  %rectangle = getelementptr inbounds %struct._GimpMagnifyTool, %struct._GimpMagnifyTool* %12, i32 0, i32 5
  store %struct._GimpCanvasItem* %call2, %struct._GimpCanvasItem** %rectangle, align 8
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @gimp_tool_control_activate(%struct._GimpToolControl*) #1

declare void @gimp_draw_tool_start(%struct._GimpDrawTool*, %struct._GimpDisplay*) #1

declare %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool*) #1

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

declare void @gimp_draw_tool_stop(%struct._GimpDrawTool*) #1

declare void @gimp_tool_control_halt(%struct._GimpToolControl*) #1

declare void @gimp_display_shell_scale(%struct._GimpDisplayShell*, i32, double, i32) #1

declare double @gimp_zoom_model_get_factor(%struct._GimpZoomModel*) #1

declare void @gimp_image_get_resolution(%struct._GimpImage*, double*, double*) #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare void @gimp_display_shell_get_screen_resolution(%struct._GimpDisplayShell*, double*, double*) #1

; Function Attrs: nounwind readnone
declare double @rint(double) #2

declare void @gimp_display_shell_scale_by_values(%struct._GimpDisplayShell*, double, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_magnify_tool_update_items(%struct._GimpMagnifyTool* %magnify) #3 {
entry:
  %magnify.addr = alloca %struct._GimpMagnifyTool*, align 8
  store %struct._GimpMagnifyTool* %magnify, %struct._GimpMagnifyTool** %magnify.addr, align 8
  %0 = load %struct._GimpMagnifyTool*, %struct._GimpMagnifyTool** %magnify.addr, align 8
  %1 = bitcast %struct._GimpMagnifyTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_draw_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawTool*
  %call2 = call i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpMagnifyTool*, %struct._GimpMagnifyTool** %magnify.addr, align 8
  %rectangle = getelementptr inbounds %struct._GimpMagnifyTool, %struct._GimpMagnifyTool* %3, i32 0, i32 5
  %4 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %rectangle, align 8
  %5 = load %struct._GimpMagnifyTool*, %struct._GimpMagnifyTool** %magnify.addr, align 8
  %x = getelementptr inbounds %struct._GimpMagnifyTool, %struct._GimpMagnifyTool* %5, i32 0, i32 1
  %6 = load double, double* %x, align 8
  %7 = load %struct._GimpMagnifyTool*, %struct._GimpMagnifyTool** %magnify.addr, align 8
  %y = getelementptr inbounds %struct._GimpMagnifyTool, %struct._GimpMagnifyTool* %7, i32 0, i32 2
  %8 = load double, double* %y, align 8
  %9 = load %struct._GimpMagnifyTool*, %struct._GimpMagnifyTool** %magnify.addr, align 8
  %w = getelementptr inbounds %struct._GimpMagnifyTool, %struct._GimpMagnifyTool* %9, i32 0, i32 3
  %10 = load double, double* %w, align 8
  %11 = load %struct._GimpMagnifyTool*, %struct._GimpMagnifyTool** %magnify.addr, align 8
  %h = getelementptr inbounds %struct._GimpMagnifyTool, %struct._GimpMagnifyTool* %11, i32 0, i32 4
  %12 = load double, double* %h, align 8
  call void @gimp_canvas_rectangle_set(%struct._GimpCanvasItem* %4, double %6, double %8, double %10, double %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool*) #1

declare void @gimp_canvas_rectangle_set(%struct._GimpCanvasItem*, double, double, double, double) #1

declare i32 @gimp_get_toggle_behavior_mask() #1

declare void @g_object_set(i8*, i8*, ...) #1

declare void @gimp_tool_control_set_toggled(%struct._GimpToolControl*, i32) #1

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_rectangle(%struct._GimpDrawTool*, i32, double, double, double, double) #1

declare void @gimp_tool_control_set_scroll_lock(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_handle_empty_image(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_wants_click(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_snap_to(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_cursor_modifier(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_toggle_cursor_modifier(%struct._GimpToolControl*, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
