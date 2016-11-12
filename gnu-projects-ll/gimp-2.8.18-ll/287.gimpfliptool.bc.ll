; ModuleID = './app/tools/gimpfliptool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpFlipToolClass = type { %struct._GimpTransformToolClass }
%struct._GimpTransformToolClass = type { %struct._GimpDrawToolClass, void (%struct._GimpTransformTool*)*, void (%struct._GimpTransformTool*)*, void (%struct._GimpTransformTool*)*, void (%struct._GimpTransformTool*)*, void (%struct._GimpTransformTool*)*, i8* (%struct._GimpTransformTool*)*, %struct._TileManager* (%struct._GimpTransformTool*, %struct._GimpItem*, %struct._TileManager*, i32, i32, i32*, i32*)* }
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
%struct._GimpTransformTool = type { %struct._GimpDrawTool, double, double, double, double, i32, i32, i32, i32, double, double, double, double, double, double, double, double, double, double, double, double, double, %struct._GimpMatrix3, [8 x double], [8 x double], [8 x double], i32, i32, i32, i32, i32, [11 x %struct._GimpCanvasItem*], i8*, %struct._GtkWidget* }
%struct._GimpMatrix3 = type { [3 x [3 x double]] }
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
%struct._TileManager = type opaque
%struct._GimpFlipTool = type { %struct._GimpTransformTool }
%struct._GimpFlipOptions = type { %struct._GimpTransformOptions, i32 }
%struct._GimpTransformOptions = type { %struct._GimpToolOptions, i32, i32, i32, i32, i32, i32, double, i32, i32, i32 }

@gimp_flip_tool_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"GimpFlipTool\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"gimp-flip-tool\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Flip\00", align 1
@.str.3 = private unnamed_addr constant [75 x i8] c"Flip Tool: Reverse the layer, selection or path horizontally or vertically\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"_Flip\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"<shift>F\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"gimp-tool-flip\00", align 1
@gimp_flip_tool_parent_class = internal global i8* null, align 8
@GimpFlipTool_private_offset = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"flip-type\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"undo-type\04Flip horizontally\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"undo-type\04Flip vertically\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"undo-desc\04Flip\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_flip_tool_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_flip_tool_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_flip_tool_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_transform_tool_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 344, void (i8*, i8*)* bitcast (void (i8*)* @gimp_flip_tool_class_intern_init to void (i8*, i8*)*), i32 792, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpFlipTool*)* @gimp_flip_tool_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_flip_tool_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_flip_tool_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_transform_tool_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_flip_tool_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_flip_tool_parent_class, align 8
  %1 = load i32, i32* @GimpFlipTool_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpFlipTool_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpFlipToolClass*
  call void @gimp_flip_tool_class_init(%struct._GimpFlipToolClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_flip_tool_init(%struct._GimpFlipTool* %flip_tool) #3 {
entry:
  %flip_tool.addr = alloca %struct._GimpFlipTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  store %struct._GimpFlipTool* %flip_tool, %struct._GimpFlipTool** %flip_tool.addr, align 8
  %0 = load %struct._GimpFlipTool*, %struct._GimpFlipTool** %flip_tool.addr, align 8
  %1 = bitcast %struct._GimpFlipTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 3
  %4 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_set_snap_to(%struct._GimpToolControl* %4, i32 0)
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control2 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 3
  %6 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control2, align 8
  call void @gimp_tool_control_set_precision(%struct._GimpToolControl* %6, i32 0)
  %7 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control3 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %7, i32 0, i32 3
  %8 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control3, align 8
  call void @gimp_tool_control_set_cursor(%struct._GimpToolControl* %8, i32 1025)
  %9 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control4 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %9, i32 0, i32 3
  %10 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control4, align 8
  call void @gimp_tool_control_set_toggle_cursor(%struct._GimpToolControl* %10, i32 1025)
  %11 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control5 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %11, i32 0, i32 3
  %12 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control5, align 8
  call void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl* %12, i32 18)
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control6 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %13, i32 0, i32 3
  %14 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control6, align 8
  call void @gimp_tool_control_set_toggle_tool_cursor(%struct._GimpToolControl* %14, i32 19)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_flip_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, i8* %data) #3 {
entry:
  %callback.addr = alloca void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  %call = call i64 @gimp_flip_tool_get_type() #5
  %call1 = call i64 @gimp_flip_options_get_type() #5
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)) #6
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i32 0, i32 0)) #6
  %1 = load i8*, i8** %data.addr, align 8
  call void %0(i64 %call, i64 %call1, %struct._GtkWidget* (%struct._GimpToolOptions*)* @gimp_flip_options_gui, i32 128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* %call2, i8* %call3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* %1)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_flip_options_get_type() #2

declare %struct._GtkWidget* @gimp_flip_options_gui(%struct._GimpToolOptions*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_flip_tool_class_init(%struct._GimpFlipToolClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpFlipToolClass*, align 8
  %tool_class = alloca %struct._GimpToolClass*, align 8
  %trans_class = alloca %struct._GimpTransformToolClass*, align 8
  store %struct._GimpFlipToolClass* %klass, %struct._GimpFlipToolClass** %klass.addr, align 8
  %0 = load %struct._GimpFlipToolClass*, %struct._GimpFlipToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpFlipToolClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpToolClass*
  store %struct._GimpToolClass* %2, %struct._GimpToolClass** %tool_class, align 8
  %3 = load %struct._GimpFlipToolClass*, %struct._GimpFlipToolClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpFlipToolClass* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_transform_tool_get_type() #5
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpTransformToolClass*
  store %struct._GimpTransformToolClass* %5, %struct._GimpTransformToolClass** %trans_class, align 8
  %6 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %modifier_key = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %6, i32 0, i32 10
  store void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_flip_tool_modifier_key, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)** %modifier_key, align 8
  %7 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %7, i32 0, i32 13
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)* @gimp_flip_tool_cursor_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %8 = load %struct._GimpTransformToolClass*, %struct._GimpTransformToolClass** %trans_class, align 8
  %get_undo_desc = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %8, i32 0, i32 6
  store i8* (%struct._GimpTransformTool*)* @gimp_flip_tool_get_undo_desc, i8* (%struct._GimpTransformTool*)** %get_undo_desc, align 8
  %9 = load %struct._GimpTransformToolClass*, %struct._GimpTransformToolClass** %trans_class, align 8
  %transform = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %9, i32 0, i32 7
  store %struct._TileManager* (%struct._GimpTransformTool*, %struct._GimpItem*, %struct._TileManager*, i32, i32, i32*, i32*)* @gimp_flip_tool_transform, %struct._TileManager* (%struct._GimpTransformTool*, %struct._GimpItem*, %struct._TileManager*, i32, i32, i32*, i32*)** %transform, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_flip_tool_modifier_key(%struct._GimpTool* %tool, i32 %key, i32 %press, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %key.addr = alloca i32, align 4
  %press.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %options = alloca %struct._GimpFlipOptions*, align 8
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
  %call3 = call i64 @gimp_flip_options_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpFlipOptions*
  store %struct._GimpFlipOptions* %4, %struct._GimpFlipOptions** %options, align 8
  %5 = load i32, i32* %key.addr, align 4
  %call5 = call i32 @gimp_get_toggle_behavior_mask()
  %cmp = icmp eq i32 %5, %call5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpFlipOptions*, %struct._GimpFlipOptions** %options, align 8
  %flip_type = getelementptr inbounds %struct._GimpFlipOptions, %struct._GimpFlipOptions* %6, i32 0, i32 1
  %7 = load i32, i32* %flip_type, align 4
  switch i32 %7, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %if.then
  %8 = load %struct._GimpFlipOptions*, %struct._GimpFlipOptions** %options, align 8
  %9 = bitcast %struct._GimpFlipOptions* %8 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32 1, i8* null)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.then
  %10 = load %struct._GimpFlipOptions*, %struct._GimpFlipOptions** %options, align 8
  %11 = bitcast %struct._GimpFlipOptions* %10 to i8*
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
define internal void @gimp_flip_tool_cursor_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %options = alloca %struct._GimpFlipOptions*, align 8
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
  %call3 = call i64 @gimp_flip_options_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpFlipOptions*
  store %struct._GimpFlipOptions* %4, %struct._GimpFlipOptions** %options, align 8
  store i32 1, i32* %modifier, align 4
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call5 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %5)
  store %struct._GimpImage* %call5, %struct._GimpImage** %image, align 8
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %call6 = call i32 @gimp_image_coords_in_active_pickable(%struct._GimpImage* %6, %struct._GimpCoords* %7, i32 0, i32 1)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %modifier, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %8, i32 0, i32 3
  %9 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %10 = load i32, i32* %modifier, align 4
  call void @gimp_tool_control_set_cursor_modifier(%struct._GimpToolControl* %9, i32 %10)
  %11 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control7 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %11, i32 0, i32 3
  %12 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control7, align 8
  %13 = load i32, i32* %modifier, align 4
  call void @gimp_tool_control_set_toggle_cursor_modifier(%struct._GimpToolControl* %12, i32 %13)
  %14 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control8 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %14, i32 0, i32 3
  %15 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control8, align 8
  %16 = load %struct._GimpFlipOptions*, %struct._GimpFlipOptions** %options, align 8
  %flip_type = getelementptr inbounds %struct._GimpFlipOptions, %struct._GimpFlipOptions* %16, i32 0, i32 1
  %17 = load i32, i32* %flip_type, align 4
  %cmp = icmp eq i32 %17, 1
  %conv = zext i1 %cmp to i32
  call void @gimp_tool_control_set_toggled(%struct._GimpToolControl* %15, i32 %conv)
  %18 = load i8*, i8** @gimp_flip_tool_parent_class, align 8
  %19 = bitcast i8* %18 to %struct._GTypeClass*
  %call9 = call i64 @gimp_tool_get_type() #5
  %call10 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %19, i64 %call9)
  %20 = bitcast %struct._GTypeClass* %call10 to %struct._GimpToolClass*
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %20, i32 0, i32 13
  %21 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %22 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %23 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %24 = load i32, i32* %state.addr, align 4
  %25 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %21(%struct._GimpTool* %22, %struct._GimpCoords* %23, i32 %24, %struct._GimpDisplay* %25)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_flip_tool_get_undo_desc(%struct._GimpTransformTool* %tr_tool) #3 {
entry:
  %retval = alloca i8*, align 8
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  %options = alloca %struct._GimpFlipOptions*, align 8
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %0 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %1 = bitcast %struct._GimpTransformTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  %call2 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %2)
  %3 = bitcast %struct._GimpToolOptions* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_flip_options_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpFlipOptions*
  store %struct._GimpFlipOptions* %4, %struct._GimpFlipOptions** %options, align 8
  %5 = load %struct._GimpFlipOptions*, %struct._GimpFlipOptions** %options, align 8
  %flip_type = getelementptr inbounds %struct._GimpFlipOptions, %struct._GimpFlipOptions* %5, i32 0, i32 1
  %6 = load i32, i32* %flip_type, align 4
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry
  %call5 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0), i64 10)
  %call6 = call noalias i8* @g_strdup(i8* %call5)
  store i8* %call6, i8** %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  %call8 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0), i64 10)
  %call9 = call noalias i8* @g_strdup(i8* %call8)
  store i8* %call9, i8** %retval
  br label %return

sw.default:                                       ; preds = %entry
  %call10 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i64 10)
  %call11 = call noalias i8* @g_strdup(i8* %call10)
  store i8* %call11, i8** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.7, %sw.bb
  %7 = load i8*, i8** %retval
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._TileManager* @gimp_flip_tool_transform(%struct._GimpTransformTool* %trans_tool, %struct._GimpItem* %active_item, %struct._TileManager* %orig_tiles, i32 %orig_offset_x, i32 %orig_offset_y, i32* %new_offset_x, i32* %new_offset_y) #3 {
entry:
  %trans_tool.addr = alloca %struct._GimpTransformTool*, align 8
  %active_item.addr = alloca %struct._GimpItem*, align 8
  %orig_tiles.addr = alloca %struct._TileManager*, align 8
  %orig_offset_x.addr = alloca i32, align 4
  %orig_offset_y.addr = alloca i32, align 4
  %new_offset_x.addr = alloca i32*, align 8
  %new_offset_y.addr = alloca i32*, align 8
  %options = alloca %struct._GimpFlipOptions*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %axis = alloca double, align 8
  %ret = alloca %struct._TileManager*, align 8
  store %struct._GimpTransformTool* %trans_tool, %struct._GimpTransformTool** %trans_tool.addr, align 8
  store %struct._GimpItem* %active_item, %struct._GimpItem** %active_item.addr, align 8
  store %struct._TileManager* %orig_tiles, %struct._TileManager** %orig_tiles.addr, align 8
  store i32 %orig_offset_x, i32* %orig_offset_x.addr, align 4
  store i32 %orig_offset_y, i32* %orig_offset_y.addr, align 4
  store i32* %new_offset_x, i32** %new_offset_x.addr, align 8
  store i32* %new_offset_y, i32** %new_offset_y.addr, align 8
  %0 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %trans_tool.addr, align 8
  %1 = bitcast %struct._GimpTransformTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  %call2 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %2)
  %3 = bitcast %struct._GimpToolOptions* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_flip_options_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpFlipOptions*
  store %struct._GimpFlipOptions* %4, %struct._GimpFlipOptions** %options, align 8
  %5 = load %struct._GimpFlipOptions*, %struct._GimpFlipOptions** %options, align 8
  %6 = bitcast %struct._GimpFlipOptions* %5 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_context_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpContext*
  store %struct._GimpContext* %7, %struct._GimpContext** %context, align 8
  store double 0.000000e+00, double* %axis, align 8
  store %struct._TileManager* null, %struct._TileManager** %ret, align 8
  %8 = load %struct._GimpFlipOptions*, %struct._GimpFlipOptions** %options, align 8
  %flip_type = getelementptr inbounds %struct._GimpFlipOptions, %struct._GimpFlipOptions* %8, i32 0, i32 1
  %9 = load i32, i32* %flip_type, align 4
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %entry
  %10 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %trans_tool.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %10, i32 0, i32 5
  %11 = load i32, i32* %x1, align 4
  %conv = sitofp i32 %11 to double
  %12 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %trans_tool.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %12, i32 0, i32 7
  %13 = load i32, i32* %x2, align 4
  %14 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %trans_tool.addr, align 8
  %x17 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %14, i32 0, i32 5
  %15 = load i32, i32* %x17, align 4
  %sub = sub nsw i32 %13, %15
  %conv8 = sitofp i32 %sub to double
  %div = fdiv double %conv8, 2.000000e+00
  %add = fadd double %conv, %div
  store double %add, double* %axis, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %16 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %trans_tool.addr, align 8
  %y1 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %16, i32 0, i32 6
  %17 = load i32, i32* %y1, align 4
  %conv10 = sitofp i32 %17 to double
  %18 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %trans_tool.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %18, i32 0, i32 8
  %19 = load i32, i32* %y2, align 4
  %20 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %trans_tool.addr, align 8
  %y111 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %20, i32 0, i32 6
  %21 = load i32, i32* %y111, align 4
  %sub12 = sub nsw i32 %19, %21
  %conv13 = sitofp i32 %sub12 to double
  %div14 = fdiv double %conv13, 2.000000e+00
  %add15 = fadd double %conv10, %div14
  store double %add15, double* %axis, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.9, %sw.bb
  %22 = load %struct._TileManager*, %struct._TileManager** %orig_tiles.addr, align 8
  %tobool = icmp ne %struct._TileManager* %22, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  %23 = load %struct._GimpItem*, %struct._GimpItem** %active_item.addr, align 8
  %24 = bitcast %struct._GimpItem* %23 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_drawable_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call16)
  %25 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpDrawable*
  %26 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %27 = load %struct._TileManager*, %struct._TileManager** %orig_tiles.addr, align 8
  %28 = load i32, i32* %orig_offset_x.addr, align 4
  %29 = load i32, i32* %orig_offset_y.addr, align 4
  %30 = load %struct._GimpFlipOptions*, %struct._GimpFlipOptions** %options, align 8
  %flip_type18 = getelementptr inbounds %struct._GimpFlipOptions, %struct._GimpFlipOptions* %30, i32 0, i32 1
  %31 = load i32, i32* %flip_type18, align 4
  %32 = load double, double* %axis, align 8
  %33 = load i32*, i32** %new_offset_x.addr, align 8
  %34 = load i32*, i32** %new_offset_y.addr, align 8
  %call19 = call %struct._TileManager* @gimp_drawable_transform_tiles_flip(%struct._GimpDrawable* %25, %struct._GimpContext* %26, %struct._TileManager* %27, i32 %28, i32 %29, i32 %31, double %32, i32 0, i32* %33, i32* %34)
  store %struct._TileManager* %call19, %struct._TileManager** %ret, align 8
  br label %if.end.26

if.else:                                          ; preds = %sw.epilog
  %35 = load %struct._GimpItem*, %struct._GimpItem** %active_item.addr, align 8
  %call20 = call i32 @gimp_item_get_linked(%struct._GimpItem* %35)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.else.24

if.then.22:                                       ; preds = %if.else
  %36 = load %struct._GimpItem*, %struct._GimpItem** %active_item.addr, align 8
  %37 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %38 = load %struct._GimpFlipOptions*, %struct._GimpFlipOptions** %options, align 8
  %flip_type23 = getelementptr inbounds %struct._GimpFlipOptions, %struct._GimpFlipOptions* %38, i32 0, i32 1
  %39 = load i32, i32* %flip_type23, align 4
  %40 = load double, double* %axis, align 8
  call void @gimp_item_linked_flip(%struct._GimpItem* %36, %struct._GimpContext* %37, i32 %39, double %40, i32 0)
  br label %if.end

if.else.24:                                       ; preds = %if.else
  %41 = load %struct._GimpItem*, %struct._GimpItem** %active_item.addr, align 8
  %42 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %43 = load %struct._GimpFlipOptions*, %struct._GimpFlipOptions** %options, align 8
  %flip_type25 = getelementptr inbounds %struct._GimpFlipOptions, %struct._GimpFlipOptions* %43, i32 0, i32 1
  %44 = load i32, i32* %flip_type25, align 4
  %45 = load double, double* %axis, align 8
  call void @gimp_item_flip(%struct._GimpItem* %41, %struct._GimpContext* %42, i32 %44, double %45, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.else.24, %if.then.22
  br label %if.end.26

if.end.26:                                        ; preds = %if.end, %if.then
  %46 = load %struct._TileManager*, %struct._TileManager** %ret, align 8
  ret %struct._TileManager* %46
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool*) #1

declare i32 @gimp_get_toggle_behavior_mask() #1

declare void @g_object_set(i8*, i8*, ...) #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare i32 @gimp_image_coords_in_active_pickable(%struct._GimpImage*, %struct._GimpCoords*, i32, i32) #1

declare void @gimp_tool_control_set_cursor_modifier(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_toggle_cursor_modifier(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_toggled(%struct._GimpToolControl*, i32) #1

declare noalias i8* @g_strdup(i8*) #1

declare i8* @g_dpgettext(i8*, i8*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare %struct._TileManager* @gimp_drawable_transform_tiles_flip(%struct._GimpDrawable*, %struct._GimpContext*, %struct._TileManager*, i32, i32, i32, double, i32, i32*, i32*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

declare i32 @gimp_item_get_linked(%struct._GimpItem*) #1

declare void @gimp_item_linked_flip(%struct._GimpItem*, %struct._GimpContext*, i32, double, i32) #1

declare void @gimp_item_flip(%struct._GimpItem*, %struct._GimpContext*, i32, double, i32) #1

declare void @gimp_tool_control_set_snap_to(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_precision(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_cursor(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_toggle_cursor(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_toggle_tool_cursor(%struct._GimpToolControl*, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
