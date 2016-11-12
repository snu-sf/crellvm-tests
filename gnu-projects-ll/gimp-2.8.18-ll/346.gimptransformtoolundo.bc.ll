; ModuleID = './app/tools/gimptransformtoolundo.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpTransformToolUndoClass = type { %struct._GimpUndoClass }
%struct._GimpUndoClass = type { %struct._GimpViewableClass, void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)*, void (%struct._GimpUndo*, i32)* }
%struct._GimpViewableClass = type { %struct._GimpObjectClass, i8*, i8*, void (%struct._GimpViewable*)*, void (%struct._GimpViewable*)*, i32 (%struct._GimpViewable*, i32*, i32*)*, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, i8* (%struct._GimpViewable*, i8**)*, %struct._GimpContainer* (%struct._GimpViewable*)*, void (%struct._GimpViewable*, i32)*, i32 (%struct._GimpViewable*)* }
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
%struct._GimpViewable = type { %struct._GimpObject }
%struct._TempBuf = type opaque
%struct._GimpContext = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpContainer = type opaque
%struct._GimpUndo = type { %struct._GimpViewable, %struct._GimpImage*, i32, i32, i32, %struct._TempBuf*, i32 }
%struct._GimpImage = type opaque
%struct._GimpUndoAccumulator = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpTransformToolUndo = type { %struct._GimpUndo, %struct._GimpTransformTool*, [8 x double], %struct._TileManager* }
%struct._GimpTransformTool = type { %struct._GimpDrawTool, double, double, double, double, i32, i32, i32, i32, double, double, double, double, double, double, double, double, double, double, double, double, double, %struct._GimpMatrix3, [8 x double], [8 x double], [8 x double], i32, i32, i32, i32, i32, [11 x %struct._GimpCanvasItem*], i8*, %struct._GtkWidget* }
%struct._GimpDrawTool = type { %struct._GimpTool, %struct._GimpDisplay*, i32, i32, i64, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GList* }
%struct._GimpTool = type { %struct._GimpObject, %struct._GimpToolInfo*, i32, %struct._GimpToolControl*, %struct._GimpDisplay*, %struct._GimpDrawable*, %struct._GimpDisplay*, i32, i32, i32, i32, i32, %struct._GimpCoords, i32, %struct._GList*, %struct._GimpCanvasItem*, %struct._GimpDisplay* }
%struct._GimpToolInfo = type opaque
%struct._GimpToolControl = type { %struct._GimpObject, i32, i32, i32, %struct._GSList*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._GimpDrawable = type opaque
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GimpDisplay = type opaque
%struct._GimpCanvasItem = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
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
%struct._GdkDrawable = type { %struct._GObject }
%struct._TileManager = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_transform_tool_undo_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"GimpTransformToolUndo\00", align 1
@gimp_transform_tool_undo_parent_class = internal global i8* null, align 8
@GimpTransformToolUndo_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"transform-tool\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Gimp-Tools\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"gimptransformtoolundo.c\00", align 1
@__func__.gimp_transform_tool_undo_constructed = private unnamed_addr constant [37 x i8] c"gimp_transform_tool_undo_constructed\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"GIMP_IS_TRANSFORM_TOOL (transform_tool_undo->transform_tool)\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_transform_tool_undo_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_transform_tool_undo_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_transform_tool_undo_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_undo_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 296, void (i8*, i8*)* bitcast (void (i8*)* @gimp_transform_tool_undo_class_intern_init to void (i8*, i8*)*), i32 152, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpTransformToolUndo*)* @gimp_transform_tool_undo_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_transform_tool_undo_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_transform_tool_undo_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_undo_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_transform_tool_undo_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_transform_tool_undo_parent_class, align 8
  %1 = load i32, i32* @GimpTransformToolUndo_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpTransformToolUndo_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpTransformToolUndoClass*
  call void @gimp_transform_tool_undo_class_init(%struct._GimpTransformToolUndoClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_transform_tool_undo_init(%struct._GimpTransformToolUndo* %undo) #3 {
entry:
  %undo.addr = alloca %struct._GimpTransformToolUndo*, align 8
  store %struct._GimpTransformToolUndo* %undo, %struct._GimpTransformToolUndo** %undo.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_transform_tool_undo_class_init(%struct._GimpTransformToolUndoClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpTransformToolUndoClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %undo_class = alloca %struct._GimpUndoClass*, align 8
  store %struct._GimpTransformToolUndoClass* %klass, %struct._GimpTransformToolUndoClass** %klass.addr, align 8
  %0 = load %struct._GimpTransformToolUndoClass*, %struct._GimpTransformToolUndoClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpTransformToolUndoClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpTransformToolUndoClass*, %struct._GimpTransformToolUndoClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpTransformToolUndoClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_undo_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpUndoClass*
  store %struct._GimpUndoClass* %5, %struct._GimpUndoClass** %undo_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_transform_tool_undo_constructed, void (%struct._GObject*)** %constructed, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_transform_tool_undo_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_transform_tool_undo_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %9 = load %struct._GimpUndoClass*, %struct._GimpUndoClass** %undo_class, align 8
  %pop = getelementptr inbounds %struct._GimpUndoClass, %struct._GimpUndoClass* %9, i32 0, i32 1
  store void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)* @gimp_transform_tool_undo_pop, void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)** %pop, align 8
  %10 = load %struct._GimpUndoClass*, %struct._GimpUndoClass** %undo_class, align 8
  %free = getelementptr inbounds %struct._GimpUndoClass, %struct._GimpUndoClass* %10, i32 0, i32 2
  store void (%struct._GimpUndo*, i32)* @gimp_transform_tool_undo_free, void (%struct._GimpUndo*, i32)** %free, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gimp_transform_tool_get_type() #7
  %call4 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null, i64 %call3, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 1, %struct._GParamSpec* %call4)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_transform_tool_undo_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %transform_tool_undo = alloca %struct._GimpTransformToolUndo*, align 8
  %transform_tool = alloca %struct._GimpTransformTool*, align 8
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_transform_tool_undo_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTransformToolUndo*
  store %struct._GimpTransformToolUndo* %2, %struct._GimpTransformToolUndo** %transform_tool_undo, align 8
  %3 = load i8*, i8** @gimp_transform_tool_undo_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_transform_tool_undo_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed4 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed4, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %12 = load %struct._GimpTransformToolUndo*, %struct._GimpTransformToolUndo** %transform_tool_undo, align 8
  %transform_tool5 = getelementptr inbounds %struct._GimpTransformToolUndo, %struct._GimpTransformToolUndo* %12, i32 0, i32 1
  %13 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %transform_tool5, align 8
  %14 = bitcast %struct._GimpTransformTool* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst, align 8
  %call6 = call i64 @gimp_transform_tool_get_type() #7
  store i64 %call6, i64* %__t, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool7 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool7, label %if.else, label %if.then.8

if.then.8:                                        ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.15

if.else:                                          ; preds = %do.body
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool9 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool9, label %land.lhs.true, label %if.else.12

land.lhs.true:                                    ; preds = %if.else
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class10 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class10, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type, align 8
  %21 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %20, %21
  br i1 %cmp, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.14

if.else.12:                                       ; preds = %land.lhs.true, %if.else
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %23 = load i64, i64* %__t, align 8
  %call13 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
  store i32 %call13, i32* %__r, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.12, %if.then.11
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.8
  %24 = load i32, i32* %__r, align 4
  store i32 %24, i32* %tmp
  %25 = load i32, i32* %tmp
  %tobool16 = icmp ne i32 %25, 0
  br i1 %tobool16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.end.15
  br label %if.end.19

if.else.18:                                       ; preds = %if.end.15
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i32 96, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_transform_tool_undo_constructed, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i32 0, i32 0)) #9
  unreachable

if.end.19:                                        ; preds = %if.then.17
  br label %do.end

do.end:                                           ; preds = %if.end.19
  %26 = load %struct._GimpTransformToolUndo*, %struct._GimpTransformToolUndo** %transform_tool_undo, align 8
  %transform_tool20 = getelementptr inbounds %struct._GimpTransformToolUndo, %struct._GimpTransformToolUndo* %26, i32 0, i32 1
  %27 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %transform_tool20, align 8
  store %struct._GimpTransformTool* %27, %struct._GimpTransformTool** %transform_tool, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %28 = load i32, i32* %i, align 4
  %cmp21 = icmp slt i32 %28, 8
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %i, align 4
  %idxprom = sext i32 %29 to i64
  %30 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %transform_tool, align 8
  %old_trans_info = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %30, i32 0, i32 24
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* %old_trans_info, i32 0, i64 %idxprom
  %31 = load double, double* %arrayidx, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %32 to i64
  %33 = load %struct._GimpTransformToolUndo*, %struct._GimpTransformToolUndo** %transform_tool_undo, align 8
  %trans_info = getelementptr inbounds %struct._GimpTransformToolUndo, %struct._GimpTransformToolUndo* %33, i32 0, i32 2
  %arrayidx23 = getelementptr inbounds [8 x double], [8 x double]* %trans_info, i32 0, i64 %idxprom22
  store double %31, double* %arrayidx23, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i32, i32* %i, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load %struct._GimpTransformToolUndo*, %struct._GimpTransformToolUndo** %transform_tool_undo, align 8
  %transform_tool24 = getelementptr inbounds %struct._GimpTransformToolUndo, %struct._GimpTransformToolUndo* %35, i32 0, i32 1
  %36 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %transform_tool24, align 8
  %37 = bitcast %struct._GimpTransformTool* %36 to %struct._GTypeInstance*
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 80)
  %38 = bitcast %struct._GTypeInstance* %call25 to %struct._GObject*
  %39 = load %struct._GimpTransformToolUndo*, %struct._GimpTransformToolUndo** %transform_tool_undo, align 8
  %transform_tool26 = getelementptr inbounds %struct._GimpTransformToolUndo, %struct._GimpTransformToolUndo* %39, i32 0, i32 1
  %40 = bitcast %struct._GimpTransformTool** %transform_tool26 to i8*
  %41 = bitcast i8* %40 to i8**
  call void @g_object_add_weak_pointer(%struct._GObject* %38, i8** %41)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_transform_tool_undo_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %transform_tool_undo = alloca %struct._GimpTransformToolUndo*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_transform_tool_undo_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTransformToolUndo*
  store %struct._GimpTransformToolUndo* %2, %struct._GimpTransformToolUndo** %transform_tool_undo, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_object(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._GimpTransformTool*
  %6 = load %struct._GimpTransformToolUndo*, %struct._GimpTransformToolUndo** %transform_tool_undo, align 8
  %transform_tool = getelementptr inbounds %struct._GimpTransformToolUndo, %struct._GimpTransformToolUndo* %6, i32 0, i32 1
  store %struct._GimpTransformTool* %5, %struct._GimpTransformTool** %transform_tool, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %7 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %7, %struct._GObject** %_glib__object, align 8
  %8 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %8, %struct._GParamSpec** %_glib__pspec, align 8
  %9 = load i32, i32* %property_id.addr, align 4
  store i32 %9, i32* %_glib__property_id, align 4
  %10 = load i32, i32* %_glib__property_id, align 4
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %11, i32 0, i32 1
  %12 = load i8*, i8** %name, align 8
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %14 = bitcast %struct._GParamSpec* %13 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type, align 8
  %call3 = call i8* @g_type_name(i64 %16)
  %17 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %18 = bitcast %struct._GObject* %17 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %20)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i32 127, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 %10, i8* %12, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_transform_tool_undo_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %transform_tool_undo = alloca %struct._GimpTransformToolUndo*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_transform_tool_undo_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTransformToolUndo*
  store %struct._GimpTransformToolUndo* %2, %struct._GimpTransformToolUndo** %transform_tool_undo, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpTransformToolUndo*, %struct._GimpTransformToolUndo** %transform_tool_undo, align 8
  %transform_tool = getelementptr inbounds %struct._GimpTransformToolUndo, %struct._GimpTransformToolUndo* %5, i32 0, i32 1
  %6 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %transform_tool, align 8
  %7 = bitcast %struct._GimpTransformTool* %6 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %8, %struct._GObject** %_glib__object, align 8
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %9, %struct._GParamSpec** %_glib__pspec, align 8
  %10 = load i32, i32* %property_id.addr, align 4
  store i32 %10, i32* %_glib__property_id, align 4
  %11 = load i32, i32* %_glib__property_id, align 4
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %12, i32 0, i32 1
  %13 = load i8*, i8** %name, align 8
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %15 = bitcast %struct._GParamSpec* %14 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type, align 8
  %call2 = call i8* @g_type_name(i64 %17)
  %18 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %19 = bitcast %struct._GObject* %18 to %struct._GTypeInstance*
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type4 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type4, align 8
  %call5 = call i8* @g_type_name(i64 %21)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i32 147, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 %11, i8* %13, i8* %call2, i8* %call5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_transform_tool_undo_pop(%struct._GimpUndo* %undo, i32 %undo_mode, %struct._GimpUndoAccumulator* %accum) #3 {
entry:
  %undo.addr = alloca %struct._GimpUndo*, align 8
  %undo_mode.addr = alloca i32, align 4
  %accum.addr = alloca %struct._GimpUndoAccumulator*, align 8
  %transform_tool_undo = alloca %struct._GimpTransformToolUndo*, align 8
  %transform_tool4 = alloca %struct._GimpTransformTool*, align 8
  %d = alloca double, align 8
  %i = alloca i32, align 4
  store %struct._GimpUndo* %undo, %struct._GimpUndo** %undo.addr, align 8
  store i32 %undo_mode, i32* %undo_mode.addr, align 4
  store %struct._GimpUndoAccumulator* %accum, %struct._GimpUndoAccumulator** %accum.addr, align 8
  %0 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %1 = bitcast %struct._GimpUndo* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_transform_tool_undo_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTransformToolUndo*
  store %struct._GimpTransformToolUndo* %2, %struct._GimpTransformToolUndo** %transform_tool_undo, align 8
  %3 = load i8*, i8** @gimp_transform_tool_undo_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_undo_get_type() #7
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpUndoClass*
  %pop = getelementptr inbounds %struct._GimpUndoClass, %struct._GimpUndoClass* %5, i32 0, i32 1
  %6 = load void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)*, void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)** %pop, align 8
  %7 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %8 = load i32, i32* %undo_mode.addr, align 4
  %9 = load %struct._GimpUndoAccumulator*, %struct._GimpUndoAccumulator** %accum.addr, align 8
  call void %6(%struct._GimpUndo* %7, i32 %8, %struct._GimpUndoAccumulator* %9)
  %10 = load %struct._GimpTransformToolUndo*, %struct._GimpTransformToolUndo** %transform_tool_undo, align 8
  %transform_tool = getelementptr inbounds %struct._GimpTransformToolUndo, %struct._GimpTransformToolUndo* %10, i32 0, i32 1
  %11 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %transform_tool, align 8
  %tobool = icmp ne %struct._GimpTransformTool* %11, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpTransformToolUndo*, %struct._GimpTransformToolUndo** %transform_tool_undo, align 8
  %transform_tool5 = getelementptr inbounds %struct._GimpTransformToolUndo, %struct._GimpTransformToolUndo* %12, i32 0, i32 1
  %13 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %transform_tool5, align 8
  store %struct._GimpTransformTool* %13, %struct._GimpTransformTool** %transform_tool4, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %14 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %14, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %struct._GimpTransformToolUndo*, %struct._GimpTransformToolUndo** %transform_tool_undo, align 8
  %trans_info = getelementptr inbounds %struct._GimpTransformToolUndo, %struct._GimpTransformToolUndo* %16, i32 0, i32 2
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* %trans_info, i32 0, i64 %idxprom
  %17 = load double, double* %arrayidx, align 8
  store double %17, double* %d, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %18 to i64
  %19 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %transform_tool4, align 8
  %trans_info7 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %19, i32 0, i32 23
  %arrayidx8 = getelementptr inbounds [8 x double], [8 x double]* %trans_info7, i32 0, i64 %idxprom6
  %20 = load double, double* %arrayidx8, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %21 to i64
  %22 = load %struct._GimpTransformToolUndo*, %struct._GimpTransformToolUndo** %transform_tool_undo, align 8
  %trans_info10 = getelementptr inbounds %struct._GimpTransformToolUndo, %struct._GimpTransformToolUndo* %22, i32 0, i32 2
  %arrayidx11 = getelementptr inbounds [8 x double], [8 x double]* %trans_info10, i32 0, i64 %idxprom9
  store double %20, double* %arrayidx11, align 8
  %23 = load double, double* %d, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %24 to i64
  %25 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %transform_tool4, align 8
  %trans_info13 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %25, i32 0, i32 23
  %arrayidx14 = getelementptr inbounds [8 x double], [8 x double]* %trans_info13, i32 0, i64 %idxprom12
  store double %23, double* %arrayidx14, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_transform_tool_undo_free(%struct._GimpUndo* %undo, i32 %undo_mode) #3 {
entry:
  %undo.addr = alloca %struct._GimpUndo*, align 8
  %undo_mode.addr = alloca i32, align 4
  %transform_tool_undo = alloca %struct._GimpTransformToolUndo*, align 8
  store %struct._GimpUndo* %undo, %struct._GimpUndo** %undo.addr, align 8
  store i32 %undo_mode, i32* %undo_mode.addr, align 4
  %0 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %1 = bitcast %struct._GimpUndo* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_transform_tool_undo_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTransformToolUndo*
  store %struct._GimpTransformToolUndo* %2, %struct._GimpTransformToolUndo** %transform_tool_undo, align 8
  %3 = load %struct._GimpTransformToolUndo*, %struct._GimpTransformToolUndo** %transform_tool_undo, align 8
  %transform_tool = getelementptr inbounds %struct._GimpTransformToolUndo, %struct._GimpTransformToolUndo* %3, i32 0, i32 1
  %4 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %transform_tool, align 8
  %tobool = icmp ne %struct._GimpTransformTool* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpTransformToolUndo*, %struct._GimpTransformToolUndo** %transform_tool_undo, align 8
  %transform_tool2 = getelementptr inbounds %struct._GimpTransformToolUndo, %struct._GimpTransformToolUndo* %5, i32 0, i32 1
  %6 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %transform_tool2, align 8
  %7 = bitcast %struct._GimpTransformTool* %6 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 80)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %9 = load %struct._GimpTransformToolUndo*, %struct._GimpTransformToolUndo** %transform_tool_undo, align 8
  %transform_tool4 = getelementptr inbounds %struct._GimpTransformToolUndo, %struct._GimpTransformToolUndo* %9, i32 0, i32 1
  %10 = bitcast %struct._GimpTransformTool** %transform_tool4 to i8*
  %11 = bitcast i8* %10 to i8**
  call void @g_object_remove_weak_pointer(%struct._GObject* %8, i8** %11)
  %12 = load %struct._GimpTransformToolUndo*, %struct._GimpTransformToolUndo** %transform_tool_undo, align 8
  %transform_tool5 = getelementptr inbounds %struct._GimpTransformToolUndo, %struct._GimpTransformToolUndo* %12, i32 0, i32 1
  store %struct._GimpTransformTool* null, %struct._GimpTransformTool** %transform_tool5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8*, i8** @gimp_transform_tool_undo_parent_class, align 8
  %14 = bitcast i8* %13 to %struct._GTypeClass*
  %call6 = call i64 @gimp_undo_get_type() #7
  %call7 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %14, i64 %call6)
  %15 = bitcast %struct._GTypeClass* %call7 to %struct._GimpUndoClass*
  %free = getelementptr inbounds %struct._GimpUndoClass, %struct._GimpUndoClass* %15, i32 0, i32 2
  %16 = load void (%struct._GimpUndo*, i32)*, void (%struct._GimpUndo*, i32)** %free, align 8
  %17 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %18 = load i32, i32* %undo_mode.addr, align 4
  call void %16(%struct._GimpUndo* %17, i32 %18)
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_transform_tool_get_type() #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

declare void @g_object_add_weak_pointer(%struct._GObject*, i8**) #1

declare i8* @g_value_get_object(%struct._GValue*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare void @g_object_remove_weak_pointer(%struct._GObject*, i8**) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
