; ModuleID = './app/tools/gimpselectiontool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
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
%struct._GimpSelectionTool = type { %struct._GimpDrawTool, i32, i32, i32 }
%struct._GimpContainer = type opaque
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
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GeglNode = type opaque
%struct._BoundSeg = type opaque
%struct._GimpLayer = type opaque

@gimp_selection_tool_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"GimpSelectionTool\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Gimp-Tools\00", align 1
@__func__.gimp_selection_tool_start_edit = private unnamed_addr constant [31 x i8] c"gimp_selection_tool_start_edit\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"GIMP_IS_SELECTION_TOOL (sel_tool)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"GIMP_IS_DISPLAY (display)\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"coords != NULL\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"gimp_tool_control_is_active (tool->control) == FALSE\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Cannot modify the pixels of layer groups.\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"The active layer's pixels are locked.\00", align 1
@gimp_selection_tool_parent_class = internal global i8* null, align 8
@GimpSelectionTool_private_offset = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"Click-Drag to replace the current selection\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"Click-Drag to create a new selection\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"Click-Drag to add to the current selection\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"Click-Drag to subtract from the current selection\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"Click-Drag to intersect with the current selection\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"Click-Drag to move the selection mask\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"Click-Drag to move the selected pixels\00", align 1
@.str.16 = private unnamed_addr constant [49 x i8] c"Click-Drag to move a copy of the selected pixels\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"Click to anchor the floating selection\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"file %s: line %d (%s): should not be reached\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"gimpselectiontool.c\00", align 1
@__func__.gimp_selection_tool_oper_update = private unnamed_addr constant [32 x i8] c"gimp_selection_tool_oper_update\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_selection_tool_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_selection_tool_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_selection_tool_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_draw_tool_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 288, void (i8*, i8*)* bitcast (void (i8*)* @gimp_selection_tool_class_intern_init to void (i8*, i8*)*), i32 264, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpSelectionTool*)* @gimp_selection_tool_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_selection_tool_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_selection_tool_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_draw_tool_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_selection_tool_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_selection_tool_parent_class, align 8
  %1 = load i32, i32* @GimpSelectionTool_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpSelectionTool_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpSelectionToolClass*
  call void @gimp_selection_tool_class_init(%struct._GimpSelectionToolClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_selection_tool_init(%struct._GimpSelectionTool* %selection_tool) #3 {
entry:
  %selection_tool.addr = alloca %struct._GimpSelectionTool*, align 8
  store %struct._GimpSelectionTool* %selection_tool, %struct._GimpSelectionTool** %selection_tool.addr, align 8
  %0 = load %struct._GimpSelectionTool*, %struct._GimpSelectionTool** %selection_tool.addr, align 8
  %function = getelementptr inbounds %struct._GimpSelectionTool, %struct._GimpSelectionTool* %0, i32 0, i32 1
  store i32 0, i32* %function, align 4
  %1 = load %struct._GimpSelectionTool*, %struct._GimpSelectionTool** %selection_tool.addr, align 8
  %saved_operation = getelementptr inbounds %struct._GimpSelectionTool, %struct._GimpSelectionTool* %1, i32 0, i32 2
  store i32 2, i32* %saved_operation, align 4
  %2 = load %struct._GimpSelectionTool*, %struct._GimpSelectionTool** %selection_tool.addr, align 8
  %allow_move = getelementptr inbounds %struct._GimpSelectionTool, %struct._GimpSelectionTool* %2, i32 0, i32 3
  store i32 1, i32* %allow_move, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_selection_tool_start_edit(%struct._GimpSelectionTool* %sel_tool, %struct._GimpDisplay* %display, %struct._GimpCoords* %coords) #3 {
entry:
  %retval = alloca i32, align 4
  %sel_tool.addr = alloca %struct._GimpSelectionTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %edit_mode = alloca i32, align 4
  store %struct._GimpSelectionTool* %sel_tool, %struct._GimpSelectionTool** %sel_tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSelectionTool*, %struct._GimpSelectionTool** %sel_tool.addr, align 8
  %1 = bitcast %struct._GimpSelectionTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_selection_tool_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_selection_tool_start_edit, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpDisplay* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_display_get_type() #6
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_selection_tool_start_edit, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %cmp40 = icmp ne %struct._GimpCoords* %26, null
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.39
  br label %if.end.43

if.else.42:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_selection_tool_start_edit, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %27 = load %struct._GimpSelectionTool*, %struct._GimpSelectionTool** %sel_tool.addr, align 8
  %28 = bitcast %struct._GimpSelectionTool* %27 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_tool_get_type() #6
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call45)
  %29 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpTool*
  store %struct._GimpTool* %29, %struct._GimpTool** %tool, align 8
  br label %do.body.47

do.body.47:                                       ; preds = %do.end.44
  %30 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %30, i32 0, i32 3
  %31 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call48 = call i32 @gimp_tool_control_is_active(%struct._GimpToolControl* %31)
  %cmp49 = icmp eq i32 %call48, 0
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %do.body.47
  br label %if.end.52

if.else.51:                                       ; preds = %do.body.47
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_selection_tool_start_edit, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.52:                                        ; preds = %if.then.50
  br label %do.end.53

do.end.53:                                        ; preds = %if.end.52
  %32 = load %struct._GimpSelectionTool*, %struct._GimpSelectionTool** %sel_tool.addr, align 8
  %function = getelementptr inbounds %struct._GimpSelectionTool, %struct._GimpSelectionTool* %32, i32 0, i32 1
  %33 = load i32, i32* %function, align 4
  switch i32 %33, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.54
    i32 3, label %sw.bb.54
  ]

sw.bb:                                            ; preds = %do.end.53
  %34 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %35 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %36 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  call void @gimp_edit_selection_tool_start(%struct._GimpTool* %34, %struct._GimpDisplay* %35, %struct._GimpCoords* %36, i32 3, i32 0)
  store i32 1, i32* %retval
  br label %return

sw.bb.54:                                         ; preds = %do.end.53, %do.end.53
  %37 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call56 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %37)
  store %struct._GimpImage* %call56, %struct._GimpImage** %image, align 8
  %38 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call58 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %38)
  store %struct._GimpDrawable* %call58, %struct._GimpDrawable** %drawable, align 8
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %40 = bitcast %struct._GimpDrawable* %39 to %struct._GTypeInstance*
  %call59 = call i64 @gimp_viewable_get_type() #6
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call59)
  %41 = bitcast %struct._GTypeInstance* %call60 to %struct._GimpViewable*
  %call61 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %41)
  %tobool62 = icmp ne %struct._GimpContainer* %call61, null
  br i1 %tobool62, label %if.then.63, label %if.else.65

if.then.63:                                       ; preds = %sw.bb.54
  %42 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %43 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call64 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i32 0, i32 0)) #8
  call void @gimp_tool_message_literal(%struct._GimpTool* %42, %struct._GimpDisplay* %43, i8* %call64)
  br label %if.end.80

if.else.65:                                       ; preds = %sw.bb.54
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %45 = bitcast %struct._GimpDrawable* %44 to %struct._GTypeInstance*
  %call66 = call i64 @gimp_item_get_type() #6
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call66)
  %46 = bitcast %struct._GTypeInstance* %call67 to %struct._GimpItem*
  %call68 = call i32 @gimp_item_is_content_locked(%struct._GimpItem* %46)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.then.70, label %if.else.72

if.then.70:                                       ; preds = %if.else.65
  %47 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %48 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call71 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i32 0, i32 0)) #8
  call void @gimp_tool_message_literal(%struct._GimpTool* %47, %struct._GimpDisplay* %48, i8* %call71)
  br label %if.end.79

if.else.72:                                       ; preds = %if.else.65
  %49 = load %struct._GimpSelectionTool*, %struct._GimpSelectionTool** %sel_tool.addr, align 8
  %function74 = getelementptr inbounds %struct._GimpSelectionTool, %struct._GimpSelectionTool* %49, i32 0, i32 1
  %50 = load i32, i32* %function74, align 4
  %cmp75 = icmp eq i32 %50, 2
  br i1 %cmp75, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %if.else.72
  store i32 4, i32* %edit_mode, align 4
  br label %if.end.78

if.else.77:                                       ; preds = %if.else.72
  store i32 5, i32* %edit_mode, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.77, %if.then.76
  %51 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %52 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %53 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %54 = load i32, i32* %edit_mode, align 4
  call void @gimp_edit_selection_tool_start(%struct._GimpTool* %51, %struct._GimpDisplay* %52, %struct._GimpCoords* %53, i32 %54, i32 0)
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then.70
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.63
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %do.end.53
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.end.80, %sw.bb, %if.else.51, %if.else.42, %if.else.36, %if.else.9
  %55 = load i32, i32* %retval
  ret i32 %55
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_display_get_type() #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

declare i32 @gimp_tool_control_is_active(%struct._GimpToolControl*) #1

declare void @gimp_edit_selection_tool_start(%struct._GimpTool*, %struct._GimpDisplay*, %struct._GimpCoords*, i32, i32) #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #1

declare %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare void @gimp_tool_message_literal(%struct._GimpTool*, %struct._GimpDisplay*, i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare i32 @gimp_item_is_content_locked(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_selection_tool_class_init(%struct._GimpSelectionToolClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpSelectionToolClass*, align 8
  %tool_class = alloca %struct._GimpToolClass*, align 8
  store %struct._GimpSelectionToolClass* %klass, %struct._GimpSelectionToolClass** %klass.addr, align 8
  %0 = load %struct._GimpSelectionToolClass*, %struct._GimpSelectionToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpSelectionToolClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_tool_get_type() #6
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpToolClass*
  store %struct._GimpToolClass* %2, %struct._GimpToolClass** %tool_class, align 8
  %3 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %modifier_key = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %3, i32 0, i32 10
  store void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_selection_tool_modifier_key, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)** %modifier_key, align 8
  %4 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %key_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %4, i32 0, i32 8
  store i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)* @gimp_edit_selection_tool_key_press, i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)** %key_press, align 8
  %5 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %oper_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %5, i32 0, i32 12
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_selection_tool_oper_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %oper_update, align 8
  %6 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %6, i32 0, i32 13
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)* @gimp_selection_tool_cursor_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_selection_tool_modifier_key(%struct._GimpTool* %tool, i32 %key, i32 %press, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %key.addr = alloca i32, align 4
  %press.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %selection_tool = alloca %struct._GimpSelectionTool*, align 8
  %options = alloca %struct._GimpSelectionOptions*, align 8
  %extend_mask = alloca i32, align 4
  %modify_mask = alloca i32, align 4
  %button_op = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %press, i32* %press.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_selection_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSelectionTool*
  store %struct._GimpSelectionTool* %2, %struct._GimpSelectionTool** %selection_tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_selection_options_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpSelectionOptions*
  store %struct._GimpSelectionOptions* %7, %struct._GimpSelectionOptions** %options, align 8
  %call7 = call i32 @gimp_get_extend_selection_mask()
  store i32 %call7, i32* %extend_mask, align 4
  %call8 = call i32 @gimp_get_modify_selection_mask()
  store i32 %call8, i32* %modify_mask, align 4
  %8 = load i32, i32* %key.addr, align 4
  %9 = load i32, i32* %extend_mask, align 4
  %cmp = icmp eq i32 %8, %9
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load i32, i32* %key.addr, align 4
  %11 = load i32, i32* %modify_mask, align 4
  %cmp9 = icmp eq i32 %10, %11
  br i1 %cmp9, label %if.then, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false
  %12 = load i32, i32* %key.addr, align 4
  %cmp11 = icmp eq i32 %12, 8
  br i1 %cmp11, label %if.then, label %if.end.41

if.then:                                          ; preds = %lor.lhs.false.10, %lor.lhs.false, %entry
  %13 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %options, align 8
  %operation = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %13, i32 0, i32 1
  %14 = load i32, i32* %operation, align 4
  store i32 %14, i32* %button_op, align 4
  %15 = load i32, i32* %press.addr, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then
  %16 = load i32, i32* %key.addr, align 4
  %17 = load i32, i32* %state.addr, align 4
  %18 = load i32, i32* %extend_mask, align 4
  %19 = load i32, i32* %modify_mask, align 4
  %or = or i32 %18, %19
  %or13 = or i32 %or, 8
  %and = and i32 %17, %or13
  %cmp14 = icmp eq i32 %16, %and
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.then.12
  %20 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %options, align 8
  %operation16 = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %20, i32 0, i32 1
  %21 = load i32, i32* %operation16, align 4
  %22 = load %struct._GimpSelectionTool*, %struct._GimpSelectionTool** %selection_tool, align 8
  %saved_operation = getelementptr inbounds %struct._GimpSelectionTool, %struct._GimpSelectionTool* %22, i32 0, i32 2
  store i32 %21, i32* %saved_operation, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.15, %if.then.12
  br label %if.end.24

if.else:                                          ; preds = %if.then
  %23 = load i32, i32* %state.addr, align 4
  %24 = load i32, i32* %extend_mask, align 4
  %25 = load i32, i32* %modify_mask, align 4
  %or17 = or i32 %24, %25
  %or18 = or i32 %or17, 8
  %and19 = and i32 %23, %or18
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.end.23, label %if.then.21

if.then.21:                                       ; preds = %if.else
  %26 = load %struct._GimpSelectionTool*, %struct._GimpSelectionTool** %selection_tool, align 8
  %saved_operation22 = getelementptr inbounds %struct._GimpSelectionTool, %struct._GimpSelectionTool* %26, i32 0, i32 2
  %27 = load i32, i32* %saved_operation22, align 4
  store i32 %27, i32* %button_op, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.else
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end
  %28 = load i32, i32* %state.addr, align 4
  %and25 = and i32 %28, 8
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %if.then.27, label %if.else.29

if.then.27:                                       ; preds = %if.end.24
  %29 = load %struct._GimpSelectionTool*, %struct._GimpSelectionTool** %selection_tool, align 8
  %saved_operation28 = getelementptr inbounds %struct._GimpSelectionTool, %struct._GimpSelectionTool* %29, i32 0, i32 2
  %30 = load i32, i32* %saved_operation28, align 4
  store i32 %30, i32* %button_op, align 4
  br label %if.end.36

if.else.29:                                       ; preds = %if.end.24
  %31 = load i32, i32* %state.addr, align 4
  %32 = load i32, i32* %extend_mask, align 4
  %33 = load i32, i32* %modify_mask, align 4
  %or30 = or i32 %32, %33
  %and31 = and i32 %31, %or30
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.else.29
  %34 = load i32, i32* %state.addr, align 4
  %call34 = call i32 @gimp_modifiers_to_channel_op(i32 %34)
  store i32 %call34, i32* %button_op, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.else.29
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.27
  %35 = load i32, i32* %button_op, align 4
  %36 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %options, align 8
  %operation37 = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %36, i32 0, i32 1
  %37 = load i32, i32* %operation37, align 4
  %cmp38 = icmp ne i32 %35, %37
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.36
  %38 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %options, align 8
  %39 = bitcast %struct._GimpSelectionOptions* %38 to i8*
  %40 = load i32, i32* %button_op, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i32 %40, i8* null)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.end.36
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %lor.lhs.false.10
  ret void
}

declare i32 @gimp_edit_selection_tool_key_press(%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_selection_tool_oper_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, i32 %proximity, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %proximity.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %selection_tool = alloca %struct._GimpSelectionTool*, align 8
  %options = alloca %struct._GimpSelectionOptions*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %selection = alloca %struct._GimpChannel*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %floating_sel = alloca %struct._GimpLayer*, align 8
  %extend_mask = alloca i32, align 4
  %modify_mask = alloca i32, align 4
  %move_layer = alloca i32, align 4
  %move_floating_sel = alloca i32, align 4
  %selection_empty = alloca i32, align 4
  %status = alloca i8*, align 8
  %free_status = alloca i32, align 4
  %modifiers = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store i32 %proximity, i32* %proximity.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_selection_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSelectionTool*
  store %struct._GimpSelectionTool* %2, %struct._GimpSelectionTool** %selection_tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_selection_options_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpSelectionOptions*
  store %struct._GimpSelectionOptions* %7, %struct._GimpSelectionOptions** %options, align 8
  store i32 0, i32* %move_layer, align 4
  store i32 0, i32* %move_floating_sel, align 4
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call7 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %8)
  store %struct._GimpImage* %call7, %struct._GimpImage** %image, align 8
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call8 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %9)
  store %struct._GimpChannel* %call8, %struct._GimpChannel** %selection, align 8
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call9 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %10)
  store %struct._GimpDrawable* %call9, %struct._GimpDrawable** %drawable, align 8
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %12 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %12, i32 0, i32 0
  %13 = load double, double* %x, align 8
  %conv = fptosi double %13 to i32
  %14 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %14, i32 0, i32 1
  %15 = load double, double* %y, align 8
  %conv10 = fptosi double %15 to i32
  %call11 = call %struct._GimpLayer* @gimp_image_pick_layer(%struct._GimpImage* %11, i32 %conv, i32 %conv10)
  store %struct._GimpLayer* %call11, %struct._GimpLayer** %layer, align 8
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call12 = call %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage* %16)
  store %struct._GimpLayer* %call12, %struct._GimpLayer** %floating_sel, align 8
  %call13 = call i32 @gimp_get_extend_selection_mask()
  store i32 %call13, i32* %extend_mask, align 4
  %call14 = call i32 @gimp_get_modify_selection_mask()
  store i32 %call14, i32* %modify_mask, align 4
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool = icmp ne %struct._GimpDrawable* %17, null
  br i1 %tobool, label %if.then, label %if.end.26

if.then:                                          ; preds = %entry
  %18 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  %tobool15 = icmp ne %struct._GimpLayer* %18, null
  br i1 %tobool15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.then
  %19 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %20 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  %cmp = icmp eq %struct._GimpLayer* %19, %20
  br i1 %cmp, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %if.then.16
  store i32 1, i32* %move_floating_sel, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.18, %if.then.16
  br label %if.end.25

if.else:                                          ; preds = %if.then
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %22 = bitcast %struct._GimpDrawable* %21 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_item_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call19)
  %23 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpItem*
  %call21 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %23, i32* null, i32* null, i32* null, i32* null)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.else
  store i32 1, i32* %move_layer, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.else
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %entry
  %24 = load %struct._GimpChannel*, %struct._GimpChannel** %selection, align 8
  %call27 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %24)
  store i32 %call27, i32* %selection_empty, align 4
  %25 = load %struct._GimpSelectionTool*, %struct._GimpSelectionTool** %selection_tool, align 8
  %function = getelementptr inbounds %struct._GimpSelectionTool, %struct._GimpSelectionTool* %25, i32 0, i32 1
  store i32 0, i32* %function, align 4
  %26 = load %struct._GimpSelectionTool*, %struct._GimpSelectionTool** %selection_tool, align 8
  %allow_move = getelementptr inbounds %struct._GimpSelectionTool, %struct._GimpSelectionTool* %26, i32 0, i32 3
  %27 = load i32, i32* %allow_move, align 4
  %tobool28 = icmp ne i32 %27, 0
  br i1 %tobool28, label %land.lhs.true, label %if.else.37

land.lhs.true:                                    ; preds = %if.end.26
  %28 = load i32, i32* %state.addr, align 4
  %and = and i32 %28, 8
  %tobool29 = icmp ne i32 %and, 0
  br i1 %tobool29, label %land.lhs.true.30, label %if.else.37

land.lhs.true.30:                                 ; preds = %land.lhs.true
  %29 = load i32, i32* %state.addr, align 4
  %30 = load i32, i32* %modify_mask, align 4
  %and31 = and i32 %29, %30
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %land.lhs.true.33, label %if.else.37

land.lhs.true.33:                                 ; preds = %land.lhs.true.30
  %31 = load i32, i32* %move_layer, align 4
  %tobool34 = icmp ne i32 %31, 0
  br i1 %tobool34, label %if.then.35, label %if.else.37

if.then.35:                                       ; preds = %land.lhs.true.33
  %32 = load %struct._GimpSelectionTool*, %struct._GimpSelectionTool** %selection_tool, align 8
  %function36 = getelementptr inbounds %struct._GimpSelectionTool, %struct._GimpSelectionTool* %32, i32 0, i32 1
  store i32 2, i32* %function36, align 4
  br label %if.end.86

if.else.37:                                       ; preds = %land.lhs.true.33, %land.lhs.true.30, %land.lhs.true, %if.end.26
  %33 = load %struct._GimpSelectionTool*, %struct._GimpSelectionTool** %selection_tool, align 8
  %allow_move38 = getelementptr inbounds %struct._GimpSelectionTool, %struct._GimpSelectionTool* %33, i32 0, i32 3
  %34 = load i32, i32* %allow_move38, align 4
  %tobool39 = icmp ne i32 %34, 0
  br i1 %tobool39, label %land.lhs.true.40, label %if.else.50

land.lhs.true.40:                                 ; preds = %if.else.37
  %35 = load i32, i32* %state.addr, align 4
  %and41 = and i32 %35, 8
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %land.lhs.true.43, label %if.else.50

land.lhs.true.43:                                 ; preds = %land.lhs.true.40
  %36 = load i32, i32* %state.addr, align 4
  %37 = load i32, i32* %extend_mask, align 4
  %and44 = and i32 %36, %37
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %land.lhs.true.46, label %if.else.50

land.lhs.true.46:                                 ; preds = %land.lhs.true.43
  %38 = load i32, i32* %move_layer, align 4
  %tobool47 = icmp ne i32 %38, 0
  br i1 %tobool47, label %if.then.48, label %if.else.50

if.then.48:                                       ; preds = %land.lhs.true.46
  %39 = load %struct._GimpSelectionTool*, %struct._GimpSelectionTool** %selection_tool, align 8
  %function49 = getelementptr inbounds %struct._GimpSelectionTool, %struct._GimpSelectionTool* %39, i32 0, i32 1
  store i32 3, i32* %function49, align 4
  br label %if.end.85

if.else.50:                                       ; preds = %land.lhs.true.46, %land.lhs.true.43, %land.lhs.true.40, %if.else.37
  %40 = load %struct._GimpSelectionTool*, %struct._GimpSelectionTool** %selection_tool, align 8
  %allow_move51 = getelementptr inbounds %struct._GimpSelectionTool, %struct._GimpSelectionTool* %40, i32 0, i32 3
  %41 = load i32, i32* %allow_move51, align 4
  %tobool52 = icmp ne i32 %41, 0
  br i1 %tobool52, label %land.lhs.true.53, label %if.else.60

land.lhs.true.53:                                 ; preds = %if.else.50
  %42 = load i32, i32* %state.addr, align 4
  %and54 = and i32 %42, 8
  %tobool55 = icmp ne i32 %and54, 0
  br i1 %tobool55, label %land.lhs.true.56, label %if.else.60

land.lhs.true.56:                                 ; preds = %land.lhs.true.53
  %43 = load i32, i32* %selection_empty, align 4
  %tobool57 = icmp ne i32 %43, 0
  br i1 %tobool57, label %if.else.60, label %if.then.58

if.then.58:                                       ; preds = %land.lhs.true.56
  %44 = load %struct._GimpSelectionTool*, %struct._GimpSelectionTool** %selection_tool, align 8
  %function59 = getelementptr inbounds %struct._GimpSelectionTool, %struct._GimpSelectionTool* %44, i32 0, i32 1
  store i32 1, i32* %function59, align 4
  br label %if.end.84

if.else.60:                                       ; preds = %land.lhs.true.56, %land.lhs.true.53, %if.else.50
  %45 = load %struct._GimpSelectionTool*, %struct._GimpSelectionTool** %selection_tool, align 8
  %allow_move61 = getelementptr inbounds %struct._GimpSelectionTool, %struct._GimpSelectionTool* %45, i32 0, i32 3
  %46 = load i32, i32* %allow_move61, align 4
  %tobool62 = icmp ne i32 %46, 0
  br i1 %tobool62, label %land.lhs.true.63, label %if.else.70

land.lhs.true.63:                                 ; preds = %if.else.60
  %47 = load i32, i32* %state.addr, align 4
  %48 = load i32, i32* %extend_mask, align 4
  %49 = load i32, i32* %modify_mask, align 4
  %or = or i32 %48, %49
  %and64 = and i32 %47, %or
  %tobool65 = icmp ne i32 %and64, 0
  br i1 %tobool65, label %if.else.70, label %land.lhs.true.66

land.lhs.true.66:                                 ; preds = %land.lhs.true.63
  %50 = load i32, i32* %move_floating_sel, align 4
  %tobool67 = icmp ne i32 %50, 0
  br i1 %tobool67, label %if.then.68, label %if.else.70

if.then.68:                                       ; preds = %land.lhs.true.66
  %51 = load %struct._GimpSelectionTool*, %struct._GimpSelectionTool** %selection_tool, align 8
  %function69 = getelementptr inbounds %struct._GimpSelectionTool, %struct._GimpSelectionTool* %51, i32 0, i32 1
  store i32 2, i32* %function69, align 4
  br label %if.end.83

if.else.70:                                       ; preds = %land.lhs.true.66, %land.lhs.true.63, %if.else.60
  %52 = load i32, i32* %state.addr, align 4
  %53 = load i32, i32* %modify_mask, align 4
  %and71 = and i32 %52, %53
  %tobool72 = icmp ne i32 %and71, 0
  br i1 %tobool72, label %if.then.75, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.70
  %54 = load i32, i32* %state.addr, align 4
  %55 = load i32, i32* %extend_mask, align 4
  %and73 = and i32 %54, %55
  %tobool74 = icmp ne i32 %and73, 0
  br i1 %tobool74, label %if.then.75, label %if.else.77

if.then.75:                                       ; preds = %lor.lhs.false, %if.else.70
  %56 = load %struct._GimpSelectionTool*, %struct._GimpSelectionTool** %selection_tool, align 8
  %function76 = getelementptr inbounds %struct._GimpSelectionTool, %struct._GimpSelectionTool* %56, i32 0, i32 1
  store i32 0, i32* %function76, align 4
  br label %if.end.82

if.else.77:                                       ; preds = %lor.lhs.false
  %57 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  %tobool78 = icmp ne %struct._GimpLayer* %57, null
  br i1 %tobool78, label %if.then.79, label %if.end.81

if.then.79:                                       ; preds = %if.else.77
  %58 = load %struct._GimpSelectionTool*, %struct._GimpSelectionTool** %selection_tool, align 8
  %function80 = getelementptr inbounds %struct._GimpSelectionTool, %struct._GimpSelectionTool* %58, i32 0, i32 1
  store i32 4, i32* %function80, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.79, %if.else.77
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.then.75
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then.68
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.58
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.then.48
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.35
  %59 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %60 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_pop_status(%struct._GimpTool* %59, %struct._GimpDisplay* %60)
  %61 = load i32, i32* %proximity.addr, align 4
  %tobool87 = icmp ne i32 %61, 0
  br i1 %tobool87, label %if.then.88, label %if.end.139

if.then.88:                                       ; preds = %if.end.86
  store i8* null, i8** %status, align 8
  store i32 0, i32* %free_status, align 4
  %62 = load i32, i32* %extend_mask, align 4
  %63 = load i32, i32* %modify_mask, align 4
  %or89 = or i32 %62, %63
  store i32 %or89, i32* %modifiers, align 4
  %64 = load i32, i32* %selection_empty, align 4
  %tobool90 = icmp ne i32 %64, 0
  br i1 %tobool90, label %if.end.93, label %if.then.91

if.then.91:                                       ; preds = %if.then.88
  %65 = load i32, i32* %modifiers, align 4
  %or92 = or i32 %65, 8
  store i32 %or92, i32* %modifiers, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.91, %if.then.88
  %66 = load %struct._GimpSelectionTool*, %struct._GimpSelectionTool** %selection_tool, align 8
  %function94 = getelementptr inbounds %struct._GimpSelectionTool, %struct._GimpSelectionTool* %66, i32 0, i32 1
  %67 = load i32, i32* %function94, align 4
  switch i32 %67, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.121
    i32 2, label %sw.bb.126
    i32 3, label %sw.bb.128
    i32 4, label %sw.bb.130
  ]

sw.bb:                                            ; preds = %if.end.93
  %68 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %options, align 8
  %operation = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %68, i32 0, i32 1
  %69 = load i32, i32* %operation, align 4
  switch i32 %69, label %sw.epilog [
    i32 2, label %sw.bb.95
    i32 0, label %sw.bb.104
    i32 1, label %sw.bb.110
    i32 3, label %sw.bb.116
  ]

sw.bb.95:                                         ; preds = %sw.bb
  %70 = load i32, i32* %selection_empty, align 4
  %tobool96 = icmp ne i32 %70, 0
  br i1 %tobool96, label %if.else.101, label %if.then.97

if.then.97:                                       ; preds = %sw.bb.95
  %call98 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i32 0, i32 0)) #8
  %71 = load i32, i32* %modifiers, align 4
  %72 = load i32, i32* %state.addr, align 4
  %neg = xor i32 %72, -1
  %and99 = and i32 %71, %neg
  %call100 = call i8* @gimp_suggest_modifiers(i8* %call98, i32 %and99, i8* null, i8* null, i8* null)
  store i8* %call100, i8** %status, align 8
  store i32 1, i32* %free_status, align 4
  br label %if.end.103

if.else.101:                                      ; preds = %sw.bb.95
  %call102 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i32 0, i32 0)) #8
  store i8* %call102, i8** %status, align 8
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.101, %if.then.97
  br label %sw.epilog

sw.bb.104:                                        ; preds = %sw.bb
  %call105 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i32 0, i32 0)) #8
  %73 = load i32, i32* %modifiers, align 4
  %74 = load i32, i32* %state.addr, align 4
  %75 = load i32, i32* %extend_mask, align 4
  %or106 = or i32 %74, %75
  %neg107 = xor i32 %or106, -1
  %and108 = and i32 %73, %neg107
  %call109 = call i8* @gimp_suggest_modifiers(i8* %call105, i32 %and108, i8* null, i8* null, i8* null)
  store i8* %call109, i8** %status, align 8
  store i32 1, i32* %free_status, align 4
  br label %sw.epilog

sw.bb.110:                                        ; preds = %sw.bb
  %call111 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i32 0, i32 0)) #8
  %76 = load i32, i32* %modifiers, align 4
  %77 = load i32, i32* %state.addr, align 4
  %78 = load i32, i32* %modify_mask, align 4
  %or112 = or i32 %77, %78
  %neg113 = xor i32 %or112, -1
  %and114 = and i32 %76, %neg113
  %call115 = call i8* @gimp_suggest_modifiers(i8* %call111, i32 %and114, i8* null, i8* null, i8* null)
  store i8* %call115, i8** %status, align 8
  store i32 1, i32* %free_status, align 4
  br label %sw.epilog

sw.bb.116:                                        ; preds = %sw.bb
  %call117 = call i8* @gettext(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i32 0, i32 0)) #8
  %79 = load i32, i32* %modifiers, align 4
  %80 = load i32, i32* %state.addr, align 4
  %neg118 = xor i32 %80, -1
  %and119 = and i32 %79, %neg118
  %call120 = call i8* @gimp_suggest_modifiers(i8* %call117, i32 %and119, i8* null, i8* null, i8* null)
  store i8* %call120, i8** %status, align 8
  store i32 1, i32* %free_status, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %sw.bb.116, %sw.bb.110, %sw.bb.104, %if.end.103
  br label %sw.epilog.132

sw.bb.121:                                        ; preds = %if.end.93
  %call122 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i32 0, i32 0)) #8
  %81 = load i32, i32* %modifiers, align 4
  %82 = load i32, i32* %state.addr, align 4
  %neg123 = xor i32 %82, -1
  %and124 = and i32 %81, %neg123
  %call125 = call i8* @gimp_suggest_modifiers(i8* %call122, i32 %and124, i8* null, i8* null, i8* null)
  store i8* %call125, i8** %status, align 8
  store i32 1, i32* %free_status, align 4
  br label %sw.epilog.132

sw.bb.126:                                        ; preds = %if.end.93
  %call127 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i32 0, i32 0)) #8
  store i8* %call127, i8** %status, align 8
  br label %sw.epilog.132

sw.bb.128:                                        ; preds = %if.end.93
  %call129 = call i8* @gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.16, i32 0, i32 0)) #8
  store i8* %call129, i8** %status, align 8
  br label %sw.epilog.132

sw.bb.130:                                        ; preds = %if.end.93
  %call131 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i32 0, i32 0)) #8
  store i8* %call131, i8** %status, align 8
  br label %sw.epilog.132

sw.default:                                       ; preds = %if.end.93
  br label %do.body

do.body:                                          ; preds = %sw.default
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i32 316, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_selection_tool_oper_update, i32 0, i32 0))
  br label %if.end.139

do.end:                                           ; No predecessors!
  br label %sw.epilog.132

sw.epilog.132:                                    ; preds = %do.end, %sw.bb.130, %sw.bb.128, %sw.bb.126, %sw.bb.121, %sw.epilog
  %83 = load i8*, i8** %status, align 8
  %tobool133 = icmp ne i8* %83, null
  br i1 %tobool133, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %sw.epilog.132
  %84 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %85 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %86 = load i8*, i8** %status, align 8
  call void (%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) @gimp_tool_push_status(%struct._GimpTool* %84, %struct._GimpDisplay* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i8* %86)
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.134, %sw.epilog.132
  %87 = load i32, i32* %free_status, align 4
  %tobool136 = icmp ne i32 %87, 0
  br i1 %tobool136, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %if.end.135
  %88 = load i8*, i8** %status, align 8
  call void @g_free(i8* %88)
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.137, %if.end.135
  br label %if.end.139

if.end.139:                                       ; preds = %do.body, %if.end.138, %if.end.86
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_selection_tool_cursor_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %selection_tool = alloca %struct._GimpSelectionTool*, align 8
  %options = alloca %struct._GimpSelectionOptions*, align 8
  %tool_cursor = alloca i32, align 4
  %modifier = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_selection_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSelectionTool*
  store %struct._GimpSelectionTool* %2, %struct._GimpSelectionTool** %selection_tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_selection_options_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpSelectionOptions*
  store %struct._GimpSelectionOptions* %7, %struct._GimpSelectionOptions** %options, align 8
  %8 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %8, i32 0, i32 3
  %9 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call7 = call i32 @gimp_tool_control_get_tool_cursor(%struct._GimpToolControl* %9)
  store i32 %call7, i32* %tool_cursor, align 4
  store i32 0, i32* %modifier, align 4
  %10 = load %struct._GimpSelectionTool*, %struct._GimpSelectionTool** %selection_tool, align 8
  %function = getelementptr inbounds %struct._GimpSelectionTool, %struct._GimpSelectionTool* %10, i32 0, i32 1
  %11 = load i32, i32* %function, align 4
  switch i32 %11, label %sw.epilog.15 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.12
    i32 2, label %sw.bb.13
    i32 3, label %sw.bb.13
    i32 4, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %entry
  %12 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %options, align 8
  %operation = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %12, i32 0, i32 1
  %13 = load i32, i32* %operation, align 4
  switch i32 %13, label %sw.epilog [
    i32 2, label %sw.bb.8
    i32 0, label %sw.bb.9
    i32 1, label %sw.bb.10
    i32 3, label %sw.bb.11
  ]

sw.bb.8:                                          ; preds = %sw.bb
  br label %sw.epilog

sw.bb.9:                                          ; preds = %sw.bb
  store i32 2, i32* %modifier, align 4
  br label %sw.epilog

sw.bb.10:                                         ; preds = %sw.bb
  store i32 3, i32* %modifier, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %sw.bb
  store i32 4, i32* %modifier, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8
  br label %sw.epilog.15

sw.bb.12:                                         ; preds = %entry
  store i32 5, i32* %modifier, align 4
  br label %sw.epilog.15

sw.bb.13:                                         ; preds = %entry, %entry
  store i32 11, i32* %tool_cursor, align 4
  br label %sw.epilog.15

sw.bb.14:                                         ; preds = %entry
  store i32 8, i32* %modifier, align 4
  br label %sw.epilog.15

sw.epilog.15:                                     ; preds = %entry, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.epilog
  %14 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control16 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %14, i32 0, i32 3
  %15 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control16, align 8
  %call17 = call i32 @gimp_tool_control_get_cursor_modifier(%struct._GimpToolControl* %15)
  %cmp = icmp eq i32 %call17, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog.15
  store i32 1, i32* %modifier, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.15
  %16 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %17 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %18 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control18 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %18, i32 0, i32 3
  %19 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control18, align 8
  %call19 = call i32 @gimp_tool_control_get_cursor(%struct._GimpToolControl* %19)
  %20 = load i32, i32* %tool_cursor, align 4
  %21 = load i32, i32* %modifier, align 4
  call void @gimp_tool_set_cursor(%struct._GimpTool* %16, %struct._GimpDisplay* %17, i32 %call19, i32 %20, i32 %21)
  ret void
}

declare %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_selection_options_get_type() #2

declare i32 @gimp_get_extend_selection_mask() #1

declare i32 @gimp_get_modify_selection_mask() #1

declare i32 @gimp_modifiers_to_channel_op(i32) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #1

declare %struct._GimpLayer* @gimp_image_pick_layer(%struct._GimpImage*, i32, i32) #1

declare %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage*) #1

declare i32 @gimp_item_mask_intersect(%struct._GimpItem*, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_channel_is_empty(%struct._GimpChannel*) #1

declare void @gimp_tool_pop_status(%struct._GimpTool*, %struct._GimpDisplay*) #1

declare i8* @gimp_suggest_modifiers(i8*, i32, i8*, i8*, i8*) #1

declare void @g_log(i8*, i32, i8*, ...) #1

declare void @gimp_tool_push_status(%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) #1

declare void @g_free(i8*) #1

declare i32 @gimp_tool_control_get_tool_cursor(%struct._GimpToolControl*) #1

declare i32 @gimp_tool_control_get_cursor_modifier(%struct._GimpToolControl*) #1

declare void @gimp_tool_set_cursor(%struct._GimpTool*, %struct._GimpDisplay*, i32, i32, i32) #1

declare i32 @gimp_tool_control_get_cursor(%struct._GimpToolControl*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
