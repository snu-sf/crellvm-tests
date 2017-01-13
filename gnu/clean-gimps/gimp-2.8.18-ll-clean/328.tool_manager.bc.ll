; ModuleID = './app/tools/tool_manager.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type { %struct._GObject, i32, i8*, i8*, i8*, i32, i8*, i32, i32, i8*, i32, %struct._GimpRGB, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpGui = type { {}*, {}*, {}*, {}*, {}*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, {}* }
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
%struct._GimpToolInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GimpToolOptions*, %struct._GimpPaintInfo*, %struct._GimpContainer* }
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type { %struct._GimpData, %struct._Gimp*, %struct._GimpToolOptions*, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpToolManager = type { %struct._GimpTool*, %struct._GimpPaintOptions*, %struct._GSList*, i32, i32 }
%struct._GimpTool = type { %struct._GimpObject, %struct._GimpToolInfo*, i32, %struct._GimpToolControl*, %struct._GimpDisplay*, %struct._GimpDrawable*, %struct._GimpDisplay*, i32, i32, i32, i32, i32, %struct._GimpCoords, i32, %struct._GList*, %struct._GimpCanvasItem*, %struct._GimpDisplay* }
%struct._GimpToolControl = type { %struct._GimpObject, i32, i32, i32, %struct._GSList*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._GimpDrawable = type opaque
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GimpCanvasItem = type opaque
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpDisplayConfig = type opaque
%struct._GimpPaintOptions = type { %struct._GimpToolOptions, %struct._GimpPaintInfo*, double, double, double, i32, i32, i32, %struct._GimpJitterOptions*, i32, %struct._GimpFadeOptions*, %struct._GimpGradientOptions*, %struct._GimpSmoothingOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpJitterOptions = type { i32, double }
%struct._GimpFadeOptions = type { i32, double, i32, i32 }
%struct._GimpGradientOptions = type { i32, i32 }
%struct._GimpSmoothingOptions = type { i32, i32, double }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpConfig = type opaque
%struct._GdkEventKey = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32, i8*, i16, i8, i8 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpUIManager = type opaque

@.str = private unnamed_addr constant [11 x i8] c"Gimp-Tools\00", align 1
@__func__.tool_manager_init = private unnamed_addr constant [18 x i8] c"tool_manager_init\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"clean\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"dirty\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"gimp\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"tmp\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"tool-changed\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"tool-preset-changed\00", align 1
@__func__.tool_manager_exit = private unnamed_addr constant [18 x i8] c"tool_manager_exit\00", align 1
@__func__.tool_manager_get_active = private unnamed_addr constant [24 x i8] c"tool_manager_get_active\00", align 1
@__func__.tool_manager_select_tool = private unnamed_addr constant [25 x i8] c"tool_manager_select_tool\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"GIMP_IS_TOOL (tool)\00", align 1
@__func__.tool_manager_push_tool = private unnamed_addr constant [23 x i8] c"tool_manager_push_tool\00", align 1
@__func__.tool_manager_pop_tool = private unnamed_addr constant [22 x i8] c"tool_manager_pop_tool\00", align 1
@__func__.tool_manager_initialize_active = private unnamed_addr constant [31 x i8] c"tool_manager_initialize_active\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"GIMP_IS_DISPLAY (display)\00", align 1
@__func__.tool_manager_control_active = private unnamed_addr constant [28 x i8] c"tool_manager_control_active\00", align 1
@__func__.tool_manager_button_press_active = private unnamed_addr constant [33 x i8] c"tool_manager_button_press_active\00", align 1
@__func__.tool_manager_button_release_active = private unnamed_addr constant [35 x i8] c"tool_manager_button_release_active\00", align 1
@__func__.tool_manager_motion_active = private unnamed_addr constant [27 x i8] c"tool_manager_motion_active\00", align 1
@__func__.tool_manager_key_press_active = private unnamed_addr constant [30 x i8] c"tool_manager_key_press_active\00", align 1
@__func__.tool_manager_key_release_active = private unnamed_addr constant [32 x i8] c"tool_manager_key_release_active\00", align 1
@__func__.tool_manager_focus_display_active = private unnamed_addr constant [34 x i8] c"tool_manager_focus_display_active\00", align 1
@__func__.tool_manager_modifier_state_active = private unnamed_addr constant [35 x i8] c"tool_manager_modifier_state_active\00", align 1
@__func__.tool_manager_active_modifier_state_active = private unnamed_addr constant [42 x i8] c"tool_manager_active_modifier_state_active\00", align 1
@__func__.tool_manager_oper_update_active = private unnamed_addr constant [32 x i8] c"tool_manager_oper_update_active\00", align 1
@__func__.tool_manager_cursor_update_active = private unnamed_addr constant [34 x i8] c"tool_manager_cursor_update_active\00", align 1
@__func__.tool_manager_get_popup_active = private unnamed_addr constant [30 x i8] c"tool_manager_get_popup_active\00", align 1
@tool_manager_quark = internal global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"gimp-tool-manager\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"tool-info\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"%s: tool_info->tool_type is no GimpTool subclass\00", align 1
@__func__.tool_manager_tool_changed = private unnamed_addr constant [26 x i8] c"tool_manager_tool_changed\00", align 1

; Function Attrs: nounwind uwtable
define void @tool_manager_init(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %tool_manager = alloca %struct._GimpToolManager*, align 8
  %user_context = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tool_manager_init, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call noalias i8* @g_slice_alloc0(i64 32)
  %13 = bitcast i8* %call11 to %struct._GimpToolManager*
  store %struct._GimpToolManager* %13, %struct._GimpToolManager** %tool_manager, align 8
  %14 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %active_tool = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %14, i32 0, i32 0
  store %struct._GimpTool* null, %struct._GimpTool** %active_tool, align 8
  %15 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %tool_stack = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %15, i32 0, i32 2
  store %struct._GSList* null, %struct._GSList** %tool_stack, align 8
  %16 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %image_clean_handler_id = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %16, i32 0, i32 3
  store i32 0, i32* %image_clean_handler_id, align 4
  %17 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %image_dirty_handler_id = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %17, i32 0, i32 4
  store i32 0, i32* %image_dirty_handler_id, align 4
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %19 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  call void @tool_manager_set(%struct._Gimp* %18, %struct._GimpToolManager* %19)
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %images = getelementptr inbounds %struct._Gimp, %struct._Gimp* %20, i32 0, i32 26
  %21 = load %struct._GimpContainer*, %struct._GimpContainer** %images, align 8
  %22 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %23 = bitcast %struct._GimpToolManager* %22 to i8*
  %call12 = call i32 @gimp_container_add_handler(%struct._GimpContainer* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, i32, %struct._GimpToolManager*)* @tool_manager_image_clean_dirty to void ()*), i8* %23)
  %24 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %image_clean_handler_id13 = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %24, i32 0, i32 3
  store i32 %call12, i32* %image_clean_handler_id13, align 4
  %25 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %images14 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %25, i32 0, i32 26
  %26 = load %struct._GimpContainer*, %struct._GimpContainer** %images14, align 8
  %27 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %28 = bitcast %struct._GimpToolManager* %27 to i8*
  %call15 = call i32 @gimp_container_add_handler(%struct._GimpContainer* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, i32, %struct._GimpToolManager*)* @tool_manager_image_clean_dirty to void ()*), i8* %28)
  %29 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %image_dirty_handler_id16 = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %29, i32 0, i32 4
  store i32 %call15, i32* %image_dirty_handler_id16, align 4
  %30 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call17 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %30)
  store %struct._GimpContext* %call17, %struct._GimpContext** %user_context, align 8
  %call18 = call i64 @gimp_paint_options_get_type() #5
  %31 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call19 = call i8* (i64, i8*, ...) @g_object_new(i64 %call18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), %struct._Gimp* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* null)
  %32 = bitcast i8* %call19 to %struct._GimpPaintOptions*
  %33 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %shared_paint_options = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %33, i32 0, i32 1
  store %struct._GimpPaintOptions* %32, %struct._GimpPaintOptions** %shared_paint_options, align 8
  %34 = load %struct._GimpContext*, %struct._GimpContext** %user_context, align 8
  %35 = bitcast %struct._GimpContext* %34 to i8*
  %36 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %37 = bitcast %struct._GimpToolManager* %36 to i8*
  %call20 = call i64 @g_signal_connect_data(i8* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContext*, %struct._GimpToolInfo*, %struct._GimpToolManager*)* @tool_manager_tool_changed to void ()*), i8* %37, void (i8*, %struct._GClosure*)* null, i32 0)
  %38 = load %struct._GimpContext*, %struct._GimpContext** %user_context, align 8
  %39 = bitcast %struct._GimpContext* %38 to i8*
  %40 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %41 = bitcast %struct._GimpToolManager* %40 to i8*
  %call21 = call i64 @g_signal_connect_data(i8* %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContext*, %struct._GimpToolPreset*, %struct._GimpToolManager*)* @tool_manager_preset_changed to void ()*), i8* %41, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare noalias i8* @g_slice_alloc0(i64) #3

; Function Attrs: nounwind uwtable
define internal void @tool_manager_set(%struct._Gimp* %gimp, %struct._GimpToolManager* %tool_manager) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %tool_manager.addr = alloca %struct._GimpToolManager*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpToolManager* %tool_manager, %struct._GimpToolManager** %tool_manager.addr, align 8
  %0 = load i32, i32* @tool_manager_quark, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @g_quark_from_static_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0))
  store i32 %call, i32* @tool_manager_quark, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %2 = bitcast %struct._Gimp* %1 to %struct._GTypeInstance*
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 80)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GObject*
  %4 = load i32, i32* @tool_manager_quark, align 4
  %5 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager.addr, align 8
  %6 = bitcast %struct._GimpToolManager* %5 to i8*
  call void @g_object_set_qdata(%struct._GObject* %3, i32 %4, i8* %6)
  ret void
}

declare i32 @gimp_container_add_handler(%struct._GimpContainer*, i8*, void ()*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @tool_manager_image_clean_dirty(%struct._GimpImage* %image, i32 %dirty_mask, %struct._GimpToolManager* %tool_manager) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %dirty_mask.addr = alloca i32, align 4
  %tool_manager.addr = alloca %struct._GimpToolManager*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %dirty_mask, i32* %dirty_mask.addr, align 4
  store %struct._GimpToolManager* %tool_manager, %struct._GimpToolManager** %tool_manager.addr, align 8
  %0 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager.addr, align 8
  %active_tool = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %0, i32 0, i32 0
  %1 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  store %struct._GimpTool* %1, %struct._GimpTool** %tool, align 8
  %2 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %tobool = icmp ne %struct._GimpTool* %2, null
  br i1 %tobool, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 3
  %4 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call = call i32 @gimp_tool_control_get_preserve(%struct._GimpToolControl* %4)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end.9, label %land.lhs.true.2

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control3 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 3
  %6 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control3, align 8
  %call4 = call i32 @gimp_tool_control_get_dirty_mask(%struct._GimpToolControl* %6)
  %7 = load i32, i32* %dirty_mask.addr, align 4
  %and = and i32 %call4, %7
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.then, label %if.end.9

if.then:                                          ; preds = %land.lhs.true.2
  %8 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call6 = call %struct._GimpDisplay* @gimp_tool_has_image(%struct._GimpTool* %8, %struct._GimpImage* %9)
  store %struct._GimpDisplay* %call6, %struct._GimpDisplay** %display, align 8
  %10 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool7 = icmp ne %struct._GimpDisplay* %10, null
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %11, i32 0, i32 1
  %12 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  call void @tool_manager_control_active(%struct._Gimp* %12, i32 2, %struct._GimpDisplay* %13)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %land.lhs.true.2, %land.lhs.true, %entry
  ret void
}

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #3

declare i8* @g_object_new(i64, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_options_get_type() #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @tool_manager_tool_changed(%struct._GimpContext* %user_context, %struct._GimpToolInfo* %tool_info, %struct._GimpToolManager* %tool_manager) #0 {
entry:
  %user_context.addr = alloca %struct._GimpContext*, align 8
  %tool_info.addr = alloca %struct._GimpToolInfo*, align 8
  %tool_manager.addr = alloca %struct._GimpToolManager*, align 8
  %new_tool = alloca %struct._GimpTool*, align 8
  store %struct._GimpContext* %user_context, %struct._GimpContext** %user_context.addr, align 8
  store %struct._GimpToolInfo* %tool_info, %struct._GimpToolInfo** %tool_info.addr, align 8
  store %struct._GimpToolManager* %tool_manager, %struct._GimpToolManager** %tool_manager.addr, align 8
  store %struct._GimpTool* null, %struct._GimpTool** %new_tool, align 8
  %0 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %tobool = icmp ne %struct._GimpToolInfo* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GimpContext*, %struct._GimpContext** %user_context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %1, i32 0, i32 1
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %busy = getelementptr inbounds %struct._Gimp, %struct._Gimp* %2, i32 0, i32 16
  %3 = load i32, i32* %busy, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %if.end
  %4 = load %struct._GimpContext*, %struct._GimpContext** %user_context.addr, align 8
  %5 = bitcast %struct._GimpContext* %4 to i8*
  call void @g_signal_stop_emission_by_name(i8* %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0))
  %6 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager.addr, align 8
  %active_tool = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %6, i32 0, i32 0
  %7 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %8 = bitcast %struct._GimpTool* %7 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %11 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %tool_type = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %11, i32 0, i32 2
  %12 = load i64, i64* %tool_type, align 8
  %cmp = icmp ne i64 %10, %12
  br i1 %cmp, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.then.2
  %13 = load %struct._GimpContext*, %struct._GimpContext** %user_context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to i8*
  %15 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager.addr, align 8
  %16 = bitcast %struct._GimpToolManager* %15 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %14, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContext*, %struct._GimpToolInfo*, %struct._GimpToolManager*)* @tool_manager_tool_changed to i8*), i8* %16)
  %17 = load %struct._GimpContext*, %struct._GimpContext** %user_context.addr, align 8
  %18 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager.addr, align 8
  %active_tool4 = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %18, i32 0, i32 0
  %19 = load %struct._GimpTool*, %struct._GimpTool** %active_tool4, align 8
  %tool_info5 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %19, i32 0, i32 1
  %20 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info5, align 8
  call void @gimp_context_set_tool(%struct._GimpContext* %17, %struct._GimpToolInfo* %20)
  %21 = load %struct._GimpContext*, %struct._GimpContext** %user_context.addr, align 8
  %22 = bitcast %struct._GimpContext* %21 to i8*
  %23 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager.addr, align 8
  %24 = bitcast %struct._GimpToolManager* %23 to i8*
  %call6 = call i32 @g_signal_handlers_unblock_matched(i8* %22, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContext*, %struct._GimpToolInfo*, %struct._GimpToolManager*)* @tool_manager_tool_changed to i8*), i8* %24)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.3, %if.then.2
  br label %return

if.end.8:                                         ; preds = %if.end
  %25 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %tool_type9 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %25, i32 0, i32 2
  %26 = load i64, i64* %tool_type9, align 8
  %call10 = call i64 @gimp_tool_get_type() #5
  %call11 = call i32 @g_type_is_a(i64 %26, i64 %call10)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end.8
  %27 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %tool_type14 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %27, i32 0, i32 2
  %28 = load i64, i64* %tool_type14, align 8
  %29 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %call15 = call i8* (i64, i8*, ...) @g_object_new(i64 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), %struct._GimpToolInfo* %29, i8* null)
  %30 = bitcast i8* %call15 to %struct._GimpTool*
  store %struct._GimpTool* %30, %struct._GimpTool** %new_tool, align 8
  br label %if.end.16

if.else:                                          ; preds = %if.end.8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.tool_manager_tool_changed, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.13
  %31 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager.addr, align 8
  %active_tool17 = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %31, i32 0, i32 0
  %32 = load %struct._GimpTool*, %struct._GimpTool** %active_tool17, align 8
  %tobool18 = icmp ne %struct._GimpTool* %32, null
  br i1 %tobool18, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %if.end.16
  %33 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager.addr, align 8
  %active_tool19 = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %33, i32 0, i32 0
  %34 = load %struct._GimpTool*, %struct._GimpTool** %active_tool19, align 8
  %tool_info20 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %34, i32 0, i32 1
  %35 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info20, align 8
  %tobool21 = icmp ne %struct._GimpToolInfo* %35, null
  br i1 %tobool21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %land.lhs.true
  %36 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager.addr, align 8
  %37 = load %struct._GimpContext*, %struct._GimpContext** %user_context.addr, align 8
  %38 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager.addr, align 8
  %active_tool23 = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %38, i32 0, i32 0
  %39 = load %struct._GimpTool*, %struct._GimpTool** %active_tool23, align 8
  %tool_info24 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %39, i32 0, i32 1
  %40 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info24, align 8
  call void @tool_manager_disconnect_options(%struct._GimpToolManager* %36, %struct._GimpContext* %37, %struct._GimpToolInfo* %40)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %land.lhs.true, %if.end.16
  %41 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager.addr, align 8
  %42 = load %struct._GimpContext*, %struct._GimpContext** %user_context.addr, align 8
  %43 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  call void @tool_manager_connect_options(%struct._GimpToolManager* %41, %struct._GimpContext* %42, %struct._GimpToolInfo* %43)
  %44 = load %struct._GimpContext*, %struct._GimpContext** %user_context.addr, align 8
  %gimp26 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %44, i32 0, i32 1
  %45 = load %struct._Gimp*, %struct._Gimp** %gimp26, align 8
  %46 = load %struct._GimpTool*, %struct._GimpTool** %new_tool, align 8
  call void @tool_manager_select_tool(%struct._Gimp* %45, %struct._GimpTool* %46)
  %47 = load %struct._GimpTool*, %struct._GimpTool** %new_tool, align 8
  %48 = bitcast %struct._GimpTool* %47 to i8*
  call void @g_object_unref(i8* %48)
  br label %return

return:                                           ; preds = %if.end.25, %if.else, %if.end.7, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tool_manager_preset_changed(%struct._GimpContext* %user_context, %struct._GimpToolPreset* %preset, %struct._GimpToolManager* %tool_manager) #0 {
entry:
  %user_context.addr = alloca %struct._GimpContext*, align 8
  %preset.addr = alloca %struct._GimpToolPreset*, align 8
  %tool_manager.addr = alloca %struct._GimpToolManager*, align 8
  %preset_tool = alloca %struct._GimpToolInfo*, align 8
  %options_name = alloca i8*, align 8
  %tool_change = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %config = alloca %struct._GimpCoreConfig*, align 8
  %src = alloca %struct._GimpToolOptions*, align 8
  %dest = alloca %struct._GimpToolOptions*, align 8
  store %struct._GimpContext* %user_context, %struct._GimpContext** %user_context.addr, align 8
  store %struct._GimpToolPreset* %preset, %struct._GimpToolPreset** %preset.addr, align 8
  store %struct._GimpToolManager* %tool_manager, %struct._GimpToolManager** %tool_manager.addr, align 8
  store i32 0, i32* %tool_change, align 4
  %0 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset.addr, align 8
  %tobool = icmp ne %struct._GimpToolPreset* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._GimpContext*, %struct._GimpContext** %user_context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %1, i32 0, i32 1
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %busy = getelementptr inbounds %struct._Gimp, %struct._Gimp* %2, i32 0, i32 16
  %3 = load i32, i32* %busy, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end.79

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset.addr, align 8
  %tool_options = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %4, i32 0, i32 2
  %5 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  %6 = bitcast %struct._GimpToolOptions* %5 to %struct._GTypeInstance*
  %call = call i64 @gimp_context_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call)
  %7 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpContext*
  %call3 = call %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext* %7)
  store %struct._GimpToolInfo* %call3, %struct._GimpToolInfo** %preset_tool, align 8
  %8 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %preset_tool, align 8
  %9 = load %struct._GimpContext*, %struct._GimpContext** %user_context.addr, align 8
  %call4 = call %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext* %9)
  %cmp = icmp ne %struct._GimpToolInfo* %8, %call4
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 1, i32* %tool_change, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %10 = load i32, i32* %tool_change, align 4
  %tobool7 = icmp ne i32 %10, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.6
  %11 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager.addr, align 8
  %12 = load %struct._GimpContext*, %struct._GimpContext** %user_context.addr, align 8
  %13 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %preset_tool, align 8
  call void @tool_manager_disconnect_options(%struct._GimpToolManager* %11, %struct._GimpContext* %12, %struct._GimpToolInfo* %13)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  %14 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %preset_tool, align 8
  %tool_options10 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %14, i32 0, i32 12
  %15 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options10, align 8
  %16 = bitcast %struct._GimpToolOptions* %15 to i8*
  %call11 = call i8* @gimp_object_get_name(i8* %16)
  %call12 = call noalias i8* @g_strdup(i8* %call11)
  store i8* %call12, i8** %options_name, align 8
  %17 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset.addr, align 8
  %tool_options13 = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %17, i32 0, i32 2
  %18 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options13, align 8
  %19 = bitcast %struct._GimpToolOptions* %18 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_config_interface_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call14)
  %20 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpConfig*
  %21 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %preset_tool, align 8
  %tool_options16 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %21, i32 0, i32 12
  %22 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options16, align 8
  %23 = bitcast %struct._GimpToolOptions* %22 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_config_interface_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call17)
  %24 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpConfig*
  %call19 = call i32 @gimp_config_copy(%struct._GimpConfig* %20, %struct._GimpConfig* %24, i32 0)
  %25 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %preset_tool, align 8
  %tool_options20 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %25, i32 0, i32 12
  %26 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options20, align 8
  %27 = bitcast %struct._GimpToolOptions* %26 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_object_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call21)
  %28 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpObject*
  %29 = load i8*, i8** %options_name, align 8
  call void @gimp_object_take_name(%struct._GimpObject* %28, i8* %29)
  %30 = load i32, i32* %tool_change, align 4
  %tobool23 = icmp ne i32 %30, 0
  br i1 %tobool23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %if.end.9
  %31 = load %struct._GimpContext*, %struct._GimpContext** %user_context.addr, align 8
  %32 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %preset_tool, align 8
  call void @gimp_context_set_tool(%struct._GimpContext* %31, %struct._GimpToolInfo* %32)
  br label %if.end.25

if.else:                                          ; preds = %if.end.9
  %33 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager.addr, align 8
  %34 = load %struct._GimpContext*, %struct._GimpContext** %user_context.addr, align 8
  %35 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %preset_tool, align 8
  call void @tool_manager_connect_options(%struct._GimpToolManager* %33, %struct._GimpContext* %34, %struct._GimpToolInfo* %35)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.then.24
  %36 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset.addr, align 8
  %tool_options26 = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %36, i32 0, i32 2
  %37 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options26, align 8
  %38 = bitcast %struct._GimpToolOptions* %37 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_context_get_type() #5
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call27)
  %39 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpContext*
  %40 = load %struct._GimpContext*, %struct._GimpContext** %user_context.addr, align 8
  %41 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset.addr, align 8
  %call29 = call i32 @gimp_tool_preset_get_prop_mask(%struct._GimpToolPreset* %41)
  call void @gimp_context_copy_properties(%struct._GimpContext* %39, %struct._GimpContext* %40, i32 %call29)
  %42 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset.addr, align 8
  %tool_options30 = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %42, i32 0, i32 2
  %43 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options30, align 8
  %44 = bitcast %struct._GimpToolOptions* %43 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %44, %struct._GTypeInstance** %__inst, align 8
  %call31 = call i64 @gimp_paint_options_get_type() #5
  store i64 %call31, i64* %__t, align 8
  %45 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool32 = icmp ne %struct._GTypeInstance* %45, null
  br i1 %tobool32, label %if.else.34, label %if.then.33

if.then.33:                                       ; preds = %if.end.25
  store i32 0, i32* %__r, align 4
  br label %if.end.42

if.else.34:                                       ; preds = %if.end.25
  %46 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %46, i32 0, i32 0
  %47 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool35 = icmp ne %struct._GTypeClass* %47, null
  br i1 %tobool35, label %land.lhs.true, label %if.else.39

land.lhs.true:                                    ; preds = %if.else.34
  %48 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class36 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %48, i32 0, i32 0
  %49 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class36, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %49, i32 0, i32 0
  %50 = load i64, i64* %g_type, align 8
  %51 = load i64, i64* %__t, align 8
  %cmp37 = icmp eq i64 %50, %51
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.41

if.else.39:                                       ; preds = %land.lhs.true, %if.else.34
  %52 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %53 = load i64, i64* %__t, align 8
  %call40 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %52, i64 %53) #6
  store i32 %call40, i32* %__r, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.39, %if.then.38
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.33
  %54 = load i32, i32* %__r, align 4
  store i32 %54, i32* %tmp
  %55 = load i32, i32* %tmp
  %tobool43 = icmp ne i32 %55, 0
  br i1 %tobool43, label %if.then.44, label %if.end.79

if.then.44:                                       ; preds = %if.end.42
  %56 = load %struct._GimpContext*, %struct._GimpContext** %user_context.addr, align 8
  %gimp46 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %56, i32 0, i32 1
  %57 = load %struct._Gimp*, %struct._Gimp** %gimp46, align 8
  %config47 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %57, i32 0, i32 1
  %58 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config47, align 8
  store %struct._GimpCoreConfig* %58, %struct._GimpCoreConfig** %config, align 8
  %59 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset.addr, align 8
  %tool_options49 = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %59, i32 0, i32 2
  %60 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options49, align 8
  store %struct._GimpToolOptions* %60, %struct._GimpToolOptions** %src, align 8
  %61 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager.addr, align 8
  %active_tool = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %61, i32 0, i32 0
  %62 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %tool_info = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %62, i32 0, i32 1
  %63 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options51 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %63, i32 0, i32 12
  %64 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options51, align 8
  store %struct._GimpToolOptions* %64, %struct._GimpToolOptions** %dest, align 8
  %65 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %global_brush = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %65, i32 0, i32 29
  %66 = load i32, i32* %global_brush, align 4
  %tobool52 = icmp ne i32 %66, 0
  br i1 %tobool52, label %land.lhs.true.53, label %if.end.60

land.lhs.true.53:                                 ; preds = %if.then.44
  %67 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset.addr, align 8
  %use_brush = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %67, i32 0, i32 4
  %68 = load i32, i32* %use_brush, align 4
  %tobool54 = icmp ne i32 %68, 0
  br i1 %tobool54, label %if.then.55, label %if.end.60

if.then.55:                                       ; preds = %land.lhs.true.53
  %69 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %src, align 8
  %70 = bitcast %struct._GimpToolOptions* %69 to %struct._GTypeInstance*
  %call56 = call i64 @gimp_paint_options_get_type() #5
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call56)
  %71 = bitcast %struct._GTypeInstance* %call57 to %struct._GimpPaintOptions*
  %72 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %dest, align 8
  %73 = bitcast %struct._GimpToolOptions* %72 to %struct._GTypeInstance*
  %call58 = call i64 @gimp_paint_options_get_type() #5
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call58)
  %74 = bitcast %struct._GTypeInstance* %call59 to %struct._GimpPaintOptions*
  call void @gimp_paint_options_copy_brush_props(%struct._GimpPaintOptions* %71, %struct._GimpPaintOptions* %74)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.55, %land.lhs.true.53, %if.then.44
  %75 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %global_dynamics = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %75, i32 0, i32 30
  %76 = load i32, i32* %global_dynamics, align 4
  %tobool61 = icmp ne i32 %76, 0
  br i1 %tobool61, label %land.lhs.true.62, label %if.end.69

land.lhs.true.62:                                 ; preds = %if.end.60
  %77 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset.addr, align 8
  %use_dynamics = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %77, i32 0, i32 5
  %78 = load i32, i32* %use_dynamics, align 4
  %tobool63 = icmp ne i32 %78, 0
  br i1 %tobool63, label %if.then.64, label %if.end.69

if.then.64:                                       ; preds = %land.lhs.true.62
  %79 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %src, align 8
  %80 = bitcast %struct._GimpToolOptions* %79 to %struct._GTypeInstance*
  %call65 = call i64 @gimp_paint_options_get_type() #5
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 %call65)
  %81 = bitcast %struct._GTypeInstance* %call66 to %struct._GimpPaintOptions*
  %82 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %dest, align 8
  %83 = bitcast %struct._GimpToolOptions* %82 to %struct._GTypeInstance*
  %call67 = call i64 @gimp_paint_options_get_type() #5
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call67)
  %84 = bitcast %struct._GTypeInstance* %call68 to %struct._GimpPaintOptions*
  call void @gimp_paint_options_copy_dynamics_props(%struct._GimpPaintOptions* %81, %struct._GimpPaintOptions* %84)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.64, %land.lhs.true.62, %if.end.60
  %85 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %global_gradient = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %85, i32 0, i32 33
  %86 = load i32, i32* %global_gradient, align 4
  %tobool70 = icmp ne i32 %86, 0
  br i1 %tobool70, label %land.lhs.true.71, label %if.end.78

land.lhs.true.71:                                 ; preds = %if.end.69
  %87 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset.addr, align 8
  %use_gradient = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %87, i32 0, i32 6
  %88 = load i32, i32* %use_gradient, align 4
  %tobool72 = icmp ne i32 %88, 0
  br i1 %tobool72, label %if.then.73, label %if.end.78

if.then.73:                                       ; preds = %land.lhs.true.71
  %89 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %src, align 8
  %90 = bitcast %struct._GimpToolOptions* %89 to %struct._GTypeInstance*
  %call74 = call i64 @gimp_paint_options_get_type() #5
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call74)
  %91 = bitcast %struct._GTypeInstance* %call75 to %struct._GimpPaintOptions*
  %92 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %dest, align 8
  %93 = bitcast %struct._GimpToolOptions* %92 to %struct._GTypeInstance*
  %call76 = call i64 @gimp_paint_options_get_type() #5
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 %call76)
  %94 = bitcast %struct._GTypeInstance* %call77 to %struct._GimpPaintOptions*
  call void @gimp_paint_options_copy_gradient_props(%struct._GimpPaintOptions* %91, %struct._GimpPaintOptions* %94)
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.73, %land.lhs.true.71, %if.end.69
  br label %if.end.79

if.end.79:                                        ; preds = %if.then, %if.end.78, %if.end.42
  ret void
}

; Function Attrs: nounwind uwtable
define void @tool_manager_exit(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %tool_manager = alloca %struct._GimpToolManager*, align 8
  %user_context = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tool_manager_exit, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %do.end.25

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call11 = call %struct._GimpToolManager* @tool_manager_get(%struct._Gimp* %13)
  store %struct._GimpToolManager* %call11, %struct._GimpToolManager** %tool_manager, align 8
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @tool_manager_set(%struct._Gimp* %14, %struct._GimpToolManager* null)
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call12 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %15)
  store %struct._GimpContext* %call12, %struct._GimpContext** %user_context, align 8
  %16 = load %struct._GimpContext*, %struct._GimpContext** %user_context, align 8
  %17 = bitcast %struct._GimpContext* %16 to i8*
  %18 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %19 = bitcast %struct._GimpToolManager* %18 to i8*
  %call13 = call i32 @g_signal_handlers_disconnect_matched(i8* %17, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContext*, %struct._GimpToolInfo*, %struct._GimpToolManager*)* @tool_manager_tool_changed to i8*), i8* %19)
  %20 = load %struct._GimpContext*, %struct._GimpContext** %user_context, align 8
  %21 = bitcast %struct._GimpContext* %20 to i8*
  %22 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %23 = bitcast %struct._GimpToolManager* %22 to i8*
  %call14 = call i32 @g_signal_handlers_disconnect_matched(i8* %21, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContext*, %struct._GimpToolPreset*, %struct._GimpToolManager*)* @tool_manager_preset_changed to i8*), i8* %23)
  %24 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %images = getelementptr inbounds %struct._Gimp, %struct._Gimp* %24, i32 0, i32 26
  %25 = load %struct._GimpContainer*, %struct._GimpContainer** %images, align 8
  %26 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %image_clean_handler_id = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %26, i32 0, i32 3
  %27 = load i32, i32* %image_clean_handler_id, align 4
  call void @gimp_container_remove_handler(%struct._GimpContainer* %25, i32 %27)
  %28 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %images15 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %28, i32 0, i32 26
  %29 = load %struct._GimpContainer*, %struct._GimpContainer** %images15, align 8
  %30 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %image_dirty_handler_id = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %30, i32 0, i32 4
  %31 = load i32, i32* %image_dirty_handler_id, align 4
  call void @gimp_container_remove_handler(%struct._GimpContainer* %29, i32 %31)
  %32 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %active_tool = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %32, i32 0, i32 0
  %33 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %tobool16 = icmp ne %struct._GimpTool* %33, null
  br i1 %tobool16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %do.end
  %34 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %active_tool18 = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %34, i32 0, i32 0
  %35 = load %struct._GimpTool*, %struct._GimpTool** %active_tool18, align 8
  %36 = bitcast %struct._GimpTool* %35 to i8*
  call void @g_object_unref(i8* %36)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %do.end
  %37 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %shared_paint_options = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %37, i32 0, i32 1
  %38 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %shared_paint_options, align 8
  %tobool20 = icmp ne %struct._GimpPaintOptions* %38, null
  br i1 %tobool20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.19
  %39 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %shared_paint_options22 = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %39, i32 0, i32 1
  %40 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %shared_paint_options22, align 8
  %41 = bitcast %struct._GimpPaintOptions* %40 to i8*
  call void @g_object_unref(i8* %41)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.end.19
  br label %do.body.24

do.body.24:                                       ; preds = %if.end.23
  %42 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %43 = bitcast %struct._GimpToolManager* %42 to i8*
  call void @g_slice_free1(i64 32, i8* %43)
  br label %do.end.25

do.end.25:                                        ; preds = %if.else.9, %do.body.24
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpToolManager* @tool_manager_get(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load i32, i32* @tool_manager_quark, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @g_quark_from_static_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0))
  store i32 %call, i32* @tool_manager_quark, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %2 = bitcast %struct._Gimp* %1 to %struct._GTypeInstance*
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 80)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GObject*
  %4 = load i32, i32* @tool_manager_quark, align 4
  %call2 = call i8* @g_object_get_qdata(%struct._GObject* %3, i32 %4)
  %5 = bitcast i8* %call2 to %struct._GimpToolManager*
  ret %struct._GimpToolManager* %5
}

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #3

declare void @gimp_container_remove_handler(%struct._GimpContainer*, i32) #3

declare void @g_object_unref(i8*) #3

declare void @g_slice_free1(i64, i8*) #3

; Function Attrs: nounwind uwtable
define %struct._GimpTool* @tool_manager_get_active(%struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca %struct._GimpTool*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %tool_manager = alloca %struct._GimpToolManager*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tool_manager_get_active, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpTool* null, %struct._GimpTool** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call11 = call %struct._GimpToolManager* @tool_manager_get(%struct._Gimp* %13)
  store %struct._GimpToolManager* %call11, %struct._GimpToolManager** %tool_manager, align 8
  %14 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %active_tool = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %14, i32 0, i32 0
  %15 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  store %struct._GimpTool* %15, %struct._GimpTool** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load %struct._GimpTool*, %struct._GimpTool** %retval
  ret %struct._GimpTool* %16
}

; Function Attrs: nounwind uwtable
define void @tool_manager_select_tool(%struct._Gimp* %gimp, %struct._GimpTool* %tool) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %tool.addr = alloca %struct._GimpTool*, align 8
  %tool_manager = alloca %struct._GimpToolManager*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %active_tool49 = alloca %struct._GimpTool*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tool_manager_select_tool, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %14 = bitcast %struct._GimpTool* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_tool_get_type() #5
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tool_manager_select_tool, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call39 = call %struct._GimpToolManager* @tool_manager_get(%struct._Gimp* %26)
  store %struct._GimpToolManager* %call39, %struct._GimpToolManager** %tool_manager, align 8
  %27 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %active_tool = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %27, i32 0, i32 0
  %28 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %tobool40 = icmp ne %struct._GimpTool* %28, null
  br i1 %tobool40, label %land.lhs.true.41, label %if.end.54

land.lhs.true.41:                                 ; preds = %do.end.38
  %29 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %tool_stack = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %29, i32 0, i32 2
  %30 = load %struct._GSList*, %struct._GSList** %tool_stack, align 8
  %tobool42 = icmp ne %struct._GSList* %30, null
  br i1 %tobool42, label %land.lhs.true.43, label %if.then.47

land.lhs.true.43:                                 ; preds = %land.lhs.true.41
  %31 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %active_tool44 = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %31, i32 0, i32 0
  %32 = load %struct._GimpTool*, %struct._GimpTool** %active_tool44, align 8
  %33 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %tool_stack45 = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %33, i32 0, i32 2
  %34 = load %struct._GSList*, %struct._GSList** %tool_stack45, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %34, i32 0, i32 0
  %35 = load i8*, i8** %data, align 8
  %36 = bitcast i8* %35 to %struct._GimpTool*
  %cmp46 = icmp eq %struct._GimpTool* %32, %36
  br i1 %cmp46, label %if.end.54, label %if.then.47

if.then.47:                                       ; preds = %land.lhs.true.43, %land.lhs.true.41
  %37 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %active_tool50 = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %37, i32 0, i32 0
  %38 = load %struct._GimpTool*, %struct._GimpTool** %active_tool50, align 8
  store %struct._GimpTool* %38, %struct._GimpTool** %active_tool49, align 8
  %39 = load %struct._GimpTool*, %struct._GimpTool** %active_tool49, align 8
  %call52 = call %struct._GimpDisplay* @gimp_tool_has_image(%struct._GimpTool* %39, %struct._GimpImage* null)
  store %struct._GimpDisplay* %call52, %struct._GimpDisplay** %display, align 8
  %40 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %41 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  call void @tool_manager_control_active(%struct._Gimp* %40, i32 2, %struct._GimpDisplay* %41)
  %42 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @tool_manager_focus_display_active(%struct._Gimp* %42, %struct._GimpDisplay* null)
  %43 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %active_tool53 = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %43, i32 0, i32 0
  %44 = load %struct._GimpTool*, %struct._GimpTool** %active_tool53, align 8
  %45 = bitcast %struct._GimpTool* %44 to i8*
  call void @g_object_unref(i8* %45)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.47, %land.lhs.true.43, %do.end.38
  %46 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %47 = bitcast %struct._GimpTool* %46 to i8*
  %call55 = call i8* @g_object_ref(i8* %47)
  %48 = bitcast i8* %call55 to %struct._GimpTool*
  %49 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %active_tool56 = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %49, i32 0, i32 0
  store %struct._GimpTool* %48, %struct._GimpTool** %active_tool56, align 8
  br label %return

return:                                           ; preds = %if.end.54, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #1

declare %struct._GimpDisplay* @gimp_tool_has_image(%struct._GimpTool*, %struct._GimpImage*) #3

; Function Attrs: nounwind uwtable
define void @tool_manager_control_active(%struct._Gimp* %gimp, i32 %action, %struct._GimpDisplay* %display) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %action.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %tool_manager = alloca %struct._GimpToolManager*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tool = alloca %struct._GimpTool*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %action, i32* %action.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.tool_manager_control_active, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.31

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call11 = call %struct._GimpToolManager* @tool_manager_get(%struct._Gimp* %13)
  store %struct._GimpToolManager* %call11, %struct._GimpToolManager** %tool_manager, align 8
  %14 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %active_tool = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %14, i32 0, i32 0
  %15 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %tobool12 = icmp ne %struct._GimpTool* %15, null
  br i1 %tobool12, label %if.then.13, label %if.end.31

if.then.13:                                       ; preds = %do.end
  %16 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %active_tool15 = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %16, i32 0, i32 0
  %17 = load %struct._GimpTool*, %struct._GimpTool** %active_tool15, align 8
  store %struct._GimpTool* %17, %struct._GimpTool** %tool, align 8
  %18 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %tobool16 = icmp ne %struct._GimpDisplay* %18, null
  br i1 %tobool16, label %land.lhs.true.17, label %if.else.21

land.lhs.true.17:                                 ; preds = %if.then.13
  %19 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %20 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call18 = call i32 @gimp_tool_has_display(%struct._GimpTool* %19, %struct._GimpDisplay* %20)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %land.lhs.true.17
  %21 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %22 = load i32, i32* %action.addr, align 4
  %23 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_control(%struct._GimpTool* %21, i32 %22, %struct._GimpDisplay* %23)
  br label %if.end.30

if.else.21:                                       ; preds = %land.lhs.true.17, %if.then.13
  %24 = load i32, i32* %action.addr, align 4
  %cmp22 = icmp eq i32 %24, 2
  br i1 %cmp22, label %if.then.23, label %if.end.29

if.then.23:                                       ; preds = %if.else.21
  %25 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %25, i32 0, i32 3
  %26 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call24 = call i32 @gimp_tool_control_is_active(%struct._GimpToolControl* %26)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.then.23
  %27 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control27 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %27, i32 0, i32 3
  %28 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control27, align 8
  call void @gimp_tool_control_halt(%struct._GimpToolControl* %28)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.then.23
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.else.21
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then.20
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.9, %if.end.30, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @tool_manager_focus_display_active(%struct._Gimp* %gimp, %struct._GimpDisplay* %display) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %tool_manager = alloca %struct._GimpToolManager*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tool_manager_focus_display_active, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.15

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call11 = call %struct._GimpToolManager* @tool_manager_get(%struct._Gimp* %13)
  store %struct._GimpToolManager* %call11, %struct._GimpToolManager** %tool_manager, align 8
  %14 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %active_tool = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %14, i32 0, i32 0
  %15 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %tobool12 = icmp ne %struct._GimpTool* %15, null
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %do.end
  %16 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %active_tool14 = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %16, i32 0, i32 0
  %17 = load %struct._GimpTool*, %struct._GimpTool** %active_tool14, align 8
  %18 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_set_focus_display(%struct._GimpTool* %17, %struct._GimpDisplay* %18)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

declare i8* @g_object_ref(i8*) #3

; Function Attrs: nounwind uwtable
define void @tool_manager_push_tool(%struct._Gimp* %gimp, %struct._GimpTool* %tool) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %tool.addr = alloca %struct._GimpTool*, align 8
  %tool_manager = alloca %struct._GimpToolManager*, align 8
  %focus_display = alloca %struct._GimpDisplay*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %focus_display, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tool_manager_push_tool, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.52

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %14 = bitcast %struct._GimpTool* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_tool_get_type() #5
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tool_manager_push_tool, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.52

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call39 = call %struct._GimpToolManager* @tool_manager_get(%struct._Gimp* %26)
  store %struct._GimpToolManager* %call39, %struct._GimpToolManager** %tool_manager, align 8
  %27 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %active_tool = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %27, i32 0, i32 0
  %28 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %tobool40 = icmp ne %struct._GimpTool* %28, null
  br i1 %tobool40, label %if.then.41, label %if.end.49

if.then.41:                                       ; preds = %do.end.38
  %29 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %active_tool42 = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %29, i32 0, i32 0
  %30 = load %struct._GimpTool*, %struct._GimpTool** %active_tool42, align 8
  %focus_display43 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %30, i32 0, i32 6
  %31 = load %struct._GimpDisplay*, %struct._GimpDisplay** %focus_display43, align 8
  store %struct._GimpDisplay* %31, %struct._GimpDisplay** %focus_display, align 8
  %32 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %tool_stack = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %32, i32 0, i32 2
  %33 = load %struct._GSList*, %struct._GSList** %tool_stack, align 8
  %34 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %active_tool44 = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %34, i32 0, i32 0
  %35 = load %struct._GimpTool*, %struct._GimpTool** %active_tool44, align 8
  %36 = bitcast %struct._GimpTool* %35 to i8*
  %call45 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %33, i8* %36)
  %37 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %tool_stack46 = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %37, i32 0, i32 2
  store %struct._GSList* %call45, %struct._GSList** %tool_stack46, align 8
  %38 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %tool_stack47 = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %38, i32 0, i32 2
  %39 = load %struct._GSList*, %struct._GSList** %tool_stack47, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %39, i32 0, i32 0
  %40 = load i8*, i8** %data, align 8
  %call48 = call i8* @g_object_ref(i8* %40)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.41, %do.end.38
  %41 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %42 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  call void @tool_manager_select_tool(%struct._Gimp* %41, %struct._GimpTool* %42)
  %43 = load %struct._GimpDisplay*, %struct._GimpDisplay** %focus_display, align 8
  %tobool50 = icmp ne %struct._GimpDisplay* %43, null
  br i1 %tobool50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.49
  %44 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %45 = load %struct._GimpDisplay*, %struct._GimpDisplay** %focus_display, align 8
  call void @tool_manager_focus_display_active(%struct._Gimp* %44, %struct._GimpDisplay* %45)
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.9, %if.else.36, %if.then.51, %if.end.49
  ret void
}

declare %struct._GSList* @g_slist_prepend(%struct._GSList*, i8*) #3

; Function Attrs: nounwind uwtable
define void @tool_manager_pop_tool(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %tool_manager = alloca %struct._GimpToolManager*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tool = alloca %struct._GimpTool*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tool_manager_pop_tool, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.19

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call11 = call %struct._GimpToolManager* @tool_manager_get(%struct._Gimp* %13)
  store %struct._GimpToolManager* %call11, %struct._GimpToolManager** %tool_manager, align 8
  %14 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %tool_stack = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %14, i32 0, i32 2
  %15 = load %struct._GSList*, %struct._GSList** %tool_stack, align 8
  %tobool12 = icmp ne %struct._GSList* %15, null
  br i1 %tobool12, label %if.then.13, label %if.end.19

if.then.13:                                       ; preds = %do.end
  %16 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %tool_stack15 = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %16, i32 0, i32 2
  %17 = load %struct._GSList*, %struct._GSList** %tool_stack15, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %17, i32 0, i32 0
  %18 = load i8*, i8** %data, align 8
  %19 = bitcast i8* %18 to %struct._GimpTool*
  store %struct._GimpTool* %19, %struct._GimpTool** %tool, align 8
  %20 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %tool_stack16 = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %20, i32 0, i32 2
  %21 = load %struct._GSList*, %struct._GSList** %tool_stack16, align 8
  %22 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %23 = bitcast %struct._GimpTool* %22 to i8*
  %call17 = call %struct._GSList* @g_slist_remove(%struct._GSList* %21, i8* %23)
  %24 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %tool_stack18 = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %24, i32 0, i32 2
  store %struct._GSList* %call17, %struct._GSList** %tool_stack18, align 8
  %25 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %26 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  call void @tool_manager_select_tool(%struct._Gimp* %25, %struct._GimpTool* %26)
  %27 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %28 = bitcast %struct._GimpTool* %27 to i8*
  call void @g_object_unref(i8* %28)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @tool_manager_initialize_active(%struct._Gimp* %gimp, %struct._GimpDisplay* %display) #0 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %tool_manager = alloca %struct._GimpToolManager*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %tool = alloca %struct._GimpTool*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tool_manager_initialize_active, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
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
  %call16 = call i64 @gimp_display_get_type() #5
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tool_manager_initialize_active, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call39 = call %struct._GimpToolManager* @tool_manager_get(%struct._Gimp* %26)
  store %struct._GimpToolManager* %call39, %struct._GimpToolManager** %tool_manager, align 8
  %27 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %active_tool = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %27, i32 0, i32 0
  %28 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %tobool40 = icmp ne %struct._GimpTool* %28, null
  br i1 %tobool40, label %if.then.41, label %if.end.51

if.then.41:                                       ; preds = %do.end.38
  %29 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %active_tool43 = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %29, i32 0, i32 0
  %30 = load %struct._GimpTool*, %struct._GimpTool** %active_tool43, align 8
  store %struct._GimpTool* %30, %struct._GimpTool** %tool, align 8
  %31 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %32 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call44 = call i32 @gimp_tool_initialize(%struct._GimpTool* %31, %struct._GimpDisplay* %32)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.50

if.then.46:                                       ; preds = %if.then.41
  %33 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call48 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %33)
  store %struct._GimpImage* %call48, %struct._GimpImage** %image, align 8
  %34 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call49 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %34)
  %35 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %drawable = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %35, i32 0, i32 5
  store %struct._GimpDrawable* %call49, %struct._GimpDrawable** %drawable, align 8
  store i32 1, i32* %retval
  br label %return

if.end.50:                                        ; preds = %if.then.41
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %do.end.38
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.51, %if.then.46, %if.else.36, %if.else.9
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind readnone
declare i64 @gimp_display_get_type() #1

declare i32 @gimp_tool_initialize(%struct._GimpTool*, %struct._GimpDisplay*) #3

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #3

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #3

declare i32 @gimp_tool_has_display(%struct._GimpTool*, %struct._GimpDisplay*) #3

declare void @gimp_tool_control(%struct._GimpTool*, i32, %struct._GimpDisplay*) #3

declare i32 @gimp_tool_control_is_active(%struct._GimpToolControl*) #3

declare void @gimp_tool_control_halt(%struct._GimpToolControl*) #3

; Function Attrs: nounwind uwtable
define void @tool_manager_button_press_active(%struct._Gimp* %gimp, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %press_type, %struct._GimpDisplay* %display) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %press_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %tool_manager = alloca %struct._GimpToolManager*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %press_type, i32* %press_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.tool_manager_button_press_active, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.15

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call11 = call %struct._GimpToolManager* @tool_manager_get(%struct._Gimp* %13)
  store %struct._GimpToolManager* %call11, %struct._GimpToolManager** %tool_manager, align 8
  %14 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %active_tool = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %14, i32 0, i32 0
  %15 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %tobool12 = icmp ne %struct._GimpTool* %15, null
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %do.end
  %16 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %active_tool14 = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %16, i32 0, i32 0
  %17 = load %struct._GimpTool*, %struct._GimpTool** %active_tool14, align 8
  %18 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %19 = load i32, i32* %time.addr, align 4
  %20 = load i32, i32* %state.addr, align 4
  %21 = load i32, i32* %press_type.addr, align 4
  %22 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_button_press(%struct._GimpTool* %17, %struct._GimpCoords* %18, i32 %19, i32 %20, i32 %21, %struct._GimpDisplay* %22)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

declare void @gimp_tool_button_press(%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*) #3

; Function Attrs: nounwind uwtable
define void @tool_manager_button_release_active(%struct._Gimp* %gimp, %struct._GimpCoords* %coords, i32 %time, i32 %state, %struct._GimpDisplay* %display) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %tool_manager = alloca %struct._GimpToolManager*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.tool_manager_button_release_active, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.15

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call11 = call %struct._GimpToolManager* @tool_manager_get(%struct._Gimp* %13)
  store %struct._GimpToolManager* %call11, %struct._GimpToolManager** %tool_manager, align 8
  %14 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %active_tool = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %14, i32 0, i32 0
  %15 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %tobool12 = icmp ne %struct._GimpTool* %15, null
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %do.end
  %16 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %active_tool14 = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %16, i32 0, i32 0
  %17 = load %struct._GimpTool*, %struct._GimpTool** %active_tool14, align 8
  %18 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %19 = load i32, i32* %time.addr, align 4
  %20 = load i32, i32* %state.addr, align 4
  %21 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_button_release(%struct._GimpTool* %17, %struct._GimpCoords* %18, i32 %19, i32 %20, %struct._GimpDisplay* %21)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

declare void @gimp_tool_button_release(%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*) #3

; Function Attrs: nounwind uwtable
define void @tool_manager_motion_active(%struct._Gimp* %gimp, %struct._GimpCoords* %coords, i32 %time, i32 %state, %struct._GimpDisplay* %display) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %tool_manager = alloca %struct._GimpToolManager*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.tool_manager_motion_active, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.15

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call11 = call %struct._GimpToolManager* @tool_manager_get(%struct._Gimp* %13)
  store %struct._GimpToolManager* %call11, %struct._GimpToolManager** %tool_manager, align 8
  %14 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %active_tool = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %14, i32 0, i32 0
  %15 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %tobool12 = icmp ne %struct._GimpTool* %15, null
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %do.end
  %16 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %active_tool14 = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %16, i32 0, i32 0
  %17 = load %struct._GimpTool*, %struct._GimpTool** %active_tool14, align 8
  %18 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %19 = load i32, i32* %time.addr, align 4
  %20 = load i32, i32* %state.addr, align 4
  %21 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_motion(%struct._GimpTool* %17, %struct._GimpCoords* %18, i32 %19, i32 %20, %struct._GimpDisplay* %21)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

declare void @gimp_tool_motion(%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*) #3

; Function Attrs: nounwind uwtable
define i32 @tool_manager_key_press_active(%struct._Gimp* %gimp, %struct._GdkEventKey* %kevent, %struct._GimpDisplay* %display) #0 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %kevent.addr = alloca %struct._GdkEventKey*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %tool_manager = alloca %struct._GimpToolManager*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GdkEventKey* %kevent, %struct._GdkEventKey** %kevent.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tool_manager_key_press_active, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call11 = call %struct._GimpToolManager* @tool_manager_get(%struct._Gimp* %13)
  store %struct._GimpToolManager* %call11, %struct._GimpToolManager** %tool_manager, align 8
  %14 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %active_tool = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %14, i32 0, i32 0
  %15 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %tobool12 = icmp ne %struct._GimpTool* %15, null
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %do.end
  %16 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %active_tool14 = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %16, i32 0, i32 0
  %17 = load %struct._GimpTool*, %struct._GimpTool** %active_tool14, align 8
  %18 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %19 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call15 = call i32 @gimp_tool_key_press(%struct._GimpTool* %17, %struct._GdkEventKey* %18, %struct._GimpDisplay* %19)
  store i32 %call15, i32* %retval
  br label %return

if.end.16:                                        ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.13, %if.else.9
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare i32 @gimp_tool_key_press(%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*) #3

; Function Attrs: nounwind uwtable
define i32 @tool_manager_key_release_active(%struct._Gimp* %gimp, %struct._GdkEventKey* %kevent, %struct._GimpDisplay* %display) #0 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %kevent.addr = alloca %struct._GdkEventKey*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %tool_manager = alloca %struct._GimpToolManager*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GdkEventKey* %kevent, %struct._GdkEventKey** %kevent.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tool_manager_key_release_active, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call11 = call %struct._GimpToolManager* @tool_manager_get(%struct._Gimp* %13)
  store %struct._GimpToolManager* %call11, %struct._GimpToolManager** %tool_manager, align 8
  %14 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %active_tool = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %14, i32 0, i32 0
  %15 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %tobool12 = icmp ne %struct._GimpTool* %15, null
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %do.end
  %16 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %active_tool14 = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %16, i32 0, i32 0
  %17 = load %struct._GimpTool*, %struct._GimpTool** %active_tool14, align 8
  %18 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %19 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call15 = call i32 @gimp_tool_key_release(%struct._GimpTool* %17, %struct._GdkEventKey* %18, %struct._GimpDisplay* %19)
  store i32 %call15, i32* %retval
  br label %return

if.end.16:                                        ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.13, %if.else.9
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare i32 @gimp_tool_key_release(%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*) #3

declare void @gimp_tool_set_focus_display(%struct._GimpTool*, %struct._GimpDisplay*) #3

; Function Attrs: nounwind uwtable
define void @tool_manager_modifier_state_active(%struct._Gimp* %gimp, i32 %state, %struct._GimpDisplay* %display) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %tool_manager = alloca %struct._GimpToolManager*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.tool_manager_modifier_state_active, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.15

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call11 = call %struct._GimpToolManager* @tool_manager_get(%struct._Gimp* %13)
  store %struct._GimpToolManager* %call11, %struct._GimpToolManager** %tool_manager, align 8
  %14 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %active_tool = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %14, i32 0, i32 0
  %15 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %tobool12 = icmp ne %struct._GimpTool* %15, null
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %do.end
  %16 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %active_tool14 = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %16, i32 0, i32 0
  %17 = load %struct._GimpTool*, %struct._GimpTool** %active_tool14, align 8
  %18 = load i32, i32* %state.addr, align 4
  %19 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_set_modifier_state(%struct._GimpTool* %17, i32 %18, %struct._GimpDisplay* %19)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

declare void @gimp_tool_set_modifier_state(%struct._GimpTool*, i32, %struct._GimpDisplay*) #3

; Function Attrs: nounwind uwtable
define void @tool_manager_active_modifier_state_active(%struct._Gimp* %gimp, i32 %state, %struct._GimpDisplay* %display) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %tool_manager = alloca %struct._GimpToolManager*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__func__.tool_manager_active_modifier_state_active, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.15

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call11 = call %struct._GimpToolManager* @tool_manager_get(%struct._Gimp* %13)
  store %struct._GimpToolManager* %call11, %struct._GimpToolManager** %tool_manager, align 8
  %14 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %active_tool = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %14, i32 0, i32 0
  %15 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %tobool12 = icmp ne %struct._GimpTool* %15, null
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %do.end
  %16 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %active_tool14 = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %16, i32 0, i32 0
  %17 = load %struct._GimpTool*, %struct._GimpTool** %active_tool14, align 8
  %18 = load i32, i32* %state.addr, align 4
  %19 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_set_active_modifier_state(%struct._GimpTool* %17, i32 %18, %struct._GimpDisplay* %19)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

declare void @gimp_tool_set_active_modifier_state(%struct._GimpTool*, i32, %struct._GimpDisplay*) #3

; Function Attrs: nounwind uwtable
define void @tool_manager_oper_update_active(%struct._Gimp* %gimp, %struct._GimpCoords* %coords, i32 %state, i32 %proximity, %struct._GimpDisplay* %display) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %proximity.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %tool_manager = alloca %struct._GimpToolManager*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store i32 %proximity, i32* %proximity.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tool_manager_oper_update_active, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.15

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call11 = call %struct._GimpToolManager* @tool_manager_get(%struct._Gimp* %13)
  store %struct._GimpToolManager* %call11, %struct._GimpToolManager** %tool_manager, align 8
  %14 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %active_tool = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %14, i32 0, i32 0
  %15 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %tobool12 = icmp ne %struct._GimpTool* %15, null
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %do.end
  %16 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %active_tool14 = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %16, i32 0, i32 0
  %17 = load %struct._GimpTool*, %struct._GimpTool** %active_tool14, align 8
  %18 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %19 = load i32, i32* %state.addr, align 4
  %20 = load i32, i32* %proximity.addr, align 4
  %21 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_oper_update(%struct._GimpTool* %17, %struct._GimpCoords* %18, i32 %19, i32 %20, %struct._GimpDisplay* %21)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

declare void @gimp_tool_oper_update(%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*) #3

; Function Attrs: nounwind uwtable
define void @tool_manager_cursor_update_active(%struct._Gimp* %gimp, %struct._GimpCoords* %coords, i32 %state, %struct._GimpDisplay* %display) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %tool_manager = alloca %struct._GimpToolManager*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tool_manager_cursor_update_active, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.15

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call11 = call %struct._GimpToolManager* @tool_manager_get(%struct._Gimp* %13)
  store %struct._GimpToolManager* %call11, %struct._GimpToolManager** %tool_manager, align 8
  %14 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %active_tool = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %14, i32 0, i32 0
  %15 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %tobool12 = icmp ne %struct._GimpTool* %15, null
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %do.end
  %16 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %active_tool14 = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %16, i32 0, i32 0
  %17 = load %struct._GimpTool*, %struct._GimpTool** %active_tool14, align 8
  %18 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %19 = load i32, i32* %state.addr, align 4
  %20 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_cursor_update(%struct._GimpTool* %17, %struct._GimpCoords* %18, i32 %19, %struct._GimpDisplay* %20)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

declare void @gimp_tool_cursor_update(%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*) #3

; Function Attrs: nounwind uwtable
define %struct._GimpUIManager* @tool_manager_get_popup_active(%struct._Gimp* %gimp, %struct._GimpCoords* %coords, i32 %state, %struct._GimpDisplay* %display, i8** %ui_path) #0 {
entry:
  %retval = alloca %struct._GimpUIManager*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %ui_path.addr = alloca i8**, align 8
  %tool_manager = alloca %struct._GimpToolManager*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store i8** %ui_path, i8*** %ui_path.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tool_manager_get_popup_active, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpUIManager* null, %struct._GimpUIManager** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call11 = call %struct._GimpToolManager* @tool_manager_get(%struct._Gimp* %13)
  store %struct._GimpToolManager* %call11, %struct._GimpToolManager** %tool_manager, align 8
  %14 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %active_tool = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %14, i32 0, i32 0
  %15 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %tobool12 = icmp ne %struct._GimpTool* %15, null
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %do.end
  %16 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager, align 8
  %active_tool14 = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %16, i32 0, i32 0
  %17 = load %struct._GimpTool*, %struct._GimpTool** %active_tool14, align 8
  %18 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %19 = load i32, i32* %state.addr, align 4
  %20 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %21 = load i8**, i8*** %ui_path.addr, align 8
  %call15 = call %struct._GimpUIManager* @gimp_tool_get_popup(%struct._GimpTool* %17, %struct._GimpCoords* %18, i32 %19, %struct._GimpDisplay* %20, i8** %21)
  store %struct._GimpUIManager* %call15, %struct._GimpUIManager** %retval
  br label %return

if.end.16:                                        ; preds = %do.end
  store %struct._GimpUIManager* null, %struct._GimpUIManager** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.13, %if.else.9
  %22 = load %struct._GimpUIManager*, %struct._GimpUIManager** %retval
  ret %struct._GimpUIManager* %22
}

declare %struct._GimpUIManager* @gimp_tool_get_popup(%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*, i8**) #3

declare i32 @g_quark_from_static_string(i8*) #3

declare i8* @g_object_get_qdata(%struct._GObject*, i32) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare void @g_object_set_qdata(%struct._GObject*, i32, i8*) #3

declare void @g_signal_stop_emission_by_name(i8*, i8*) #3

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #3

declare void @gimp_context_set_tool(%struct._GimpContext*, %struct._GimpToolInfo*) #3

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #3

declare i32 @g_type_is_a(i64, i64) #3

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tool_manager_disconnect_options(%struct._GimpToolManager* %tool_manager, %struct._GimpContext* %user_context, %struct._GimpToolInfo* %tool_info) #0 {
entry:
  %tool_manager.addr = alloca %struct._GimpToolManager*, align 8
  %user_context.addr = alloca %struct._GimpContext*, align 8
  %tool_info.addr = alloca %struct._GimpToolInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpToolManager* %tool_manager, %struct._GimpToolManager** %tool_manager.addr, align 8
  store %struct._GimpContext* %user_context, %struct._GimpContext** %user_context.addr, align 8
  store %struct._GimpToolInfo* %tool_info, %struct._GimpToolInfo** %tool_info.addr, align 8
  %0 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %context_props = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %0, i32 0, i32 4
  %1 = load i32, i32* %context_props, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end.26

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %tool_options = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %2, i32 0, i32 12
  %3 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  %4 = bitcast %struct._GimpToolOptions* %3 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %4, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_paint_options_get_type() #5
  store i64 %call, i64* %__t, align 8
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool1 = icmp ne %struct._GTypeInstance* %5, null
  br i1 %tobool1, label %if.else, label %if.then.2

if.then.2:                                        ; preds = %if.then
  store i32 0, i32* %__r, align 4
  br label %if.end.8

if.else:                                          ; preds = %if.then
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool3 = icmp ne %struct._GTypeClass* %7, null
  br i1 %tobool3, label %land.lhs.true, label %if.else.6

land.lhs.true:                                    ; preds = %if.else
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %11 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %10, %11
  br i1 %cmp, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.6:                                        ; preds = %land.lhs.true, %if.else
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %13 = load i64, i64* %__t, align 8
  %call7 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %12, i64 %13) #6
  store i32 %call7, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then.2
  %14 = load i32, i32* %__r, align 4
  store i32 %14, i32* %tmp
  %15 = load i32, i32* %tmp
  %tobool9 = icmp ne i32 %15, 0
  br i1 %tobool9, label %if.then.10, label %if.end.22

if.then.10:                                       ; preds = %if.end.8
  %16 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %tool_options11 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %16, i32 0, i32 12
  %17 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options11, align 8
  %18 = bitcast %struct._GimpToolOptions* %17 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_paint_options_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call12)
  %19 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpPaintOptions*
  %20 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager.addr, align 8
  %shared_paint_options = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %20, i32 0, i32 1
  %21 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %shared_paint_options, align 8
  call void @gimp_paint_options_copy_brush_props(%struct._GimpPaintOptions* %19, %struct._GimpPaintOptions* %21)
  %22 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %tool_options14 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %22, i32 0, i32 12
  %23 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options14, align 8
  %24 = bitcast %struct._GimpToolOptions* %23 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_paint_options_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call15)
  %25 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpPaintOptions*
  %26 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager.addr, align 8
  %shared_paint_options17 = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %26, i32 0, i32 1
  %27 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %shared_paint_options17, align 8
  call void @gimp_paint_options_copy_dynamics_props(%struct._GimpPaintOptions* %25, %struct._GimpPaintOptions* %27)
  %28 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %tool_options18 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %28, i32 0, i32 12
  %29 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options18, align 8
  %30 = bitcast %struct._GimpToolOptions* %29 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_paint_options_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call19)
  %31 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpPaintOptions*
  %32 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager.addr, align 8
  %shared_paint_options21 = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %32, i32 0, i32 1
  %33 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %shared_paint_options21, align 8
  call void @gimp_paint_options_copy_gradient_props(%struct._GimpPaintOptions* %31, %struct._GimpPaintOptions* %33)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.10, %if.end.8
  %34 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %tool_options23 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %34, i32 0, i32 12
  %35 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options23, align 8
  %36 = bitcast %struct._GimpToolOptions* %35 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_context_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call24)
  %37 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpContext*
  call void @gimp_context_set_parent(%struct._GimpContext* %37, %struct._GimpContext* null)
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.22, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tool_manager_connect_options(%struct._GimpToolManager* %tool_manager, %struct._GimpContext* %user_context, %struct._GimpToolInfo* %tool_info) #0 {
entry:
  %tool_manager.addr = alloca %struct._GimpToolManager*, align 8
  %user_context.addr = alloca %struct._GimpContext*, align 8
  %tool_info.addr = alloca %struct._GimpToolInfo*, align 8
  %config = alloca %struct._GimpCoreConfig*, align 8
  %global_props = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpToolManager* %tool_manager, %struct._GimpToolManager** %tool_manager.addr, align 8
  store %struct._GimpContext* %user_context, %struct._GimpContext** %user_context.addr, align 8
  store %struct._GimpToolInfo* %tool_info, %struct._GimpToolInfo** %tool_info.addr, align 8
  %0 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %context_props = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %0, i32 0, i32 4
  %1 = load i32, i32* %context_props, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end.68

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %user_context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %2, i32 0, i32 1
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config1 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %3, i32 0, i32 1
  %4 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config1, align 8
  store %struct._GimpCoreConfig* %4, %struct._GimpCoreConfig** %config, align 8
  store i32 0, i32* %global_props, align 4
  %5 = load i32, i32* %global_props, align 4
  %or = or i32 %5, 64
  store i32 %or, i32* %global_props, align 4
  %6 = load i32, i32* %global_props, align 4
  %or2 = or i32 %6, 128
  store i32 %or2, i32* %global_props, align 4
  %7 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %global_brush = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %7, i32 0, i32 29
  %8 = load i32, i32* %global_brush, align 4
  %tobool3 = icmp ne i32 %8, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %9 = load i32, i32* %global_props, align 4
  %or5 = or i32 %9, 1024
  store i32 %or5, i32* %global_props, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %10 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %global_dynamics = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %10, i32 0, i32 30
  %11 = load i32, i32* %global_dynamics, align 4
  %tobool6 = icmp ne i32 %11, 0
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %12 = load i32, i32* %global_props, align 4
  %or8 = or i32 %12, 2048
  store i32 %or8, i32* %global_props, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  %13 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %global_pattern = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %13, i32 0, i32 31
  %14 = load i32, i32* %global_pattern, align 4
  %tobool10 = icmp ne i32 %14, 0
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.9
  %15 = load i32, i32* %global_props, align 4
  %or12 = or i32 %15, 4096
  store i32 %or12, i32* %global_props, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end.9
  %16 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %global_palette = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %16, i32 0, i32 32
  %17 = load i32, i32* %global_palette, align 4
  %tobool14 = icmp ne i32 %17, 0
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.13
  %18 = load i32, i32* %global_props, align 4
  %or16 = or i32 %18, 16384
  store i32 %or16, i32* %global_props, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.13
  %19 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %global_gradient = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %19, i32 0, i32 33
  %20 = load i32, i32* %global_gradient, align 4
  %tobool18 = icmp ne i32 %20, 0
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.17
  %21 = load i32, i32* %global_props, align 4
  %or20 = or i32 %21, 8192
  store i32 %or20, i32* %global_props, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end.17
  %22 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %global_font = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %22, i32 0, i32 34
  %23 = load i32, i32* %global_font, align 4
  %tobool22 = icmp ne i32 %23, 0
  br i1 %tobool22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.21
  %24 = load i32, i32* %global_props, align 4
  %or24 = or i32 %24, 65536
  store i32 %or24, i32* %global_props, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.end.21
  %25 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %tool_options = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %25, i32 0, i32 12
  %26 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  %27 = bitcast %struct._GimpToolOptions* %26 to %struct._GTypeInstance*
  %call = call i64 @gimp_context_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call)
  %28 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpContext*
  %29 = load %struct._GimpContext*, %struct._GimpContext** %user_context.addr, align 8
  %30 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %context_props27 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %30, i32 0, i32 4
  %31 = load i32, i32* %context_props27, align 4
  %32 = load i32, i32* %global_props, align 4
  %neg = xor i32 %32, -1
  %and = and i32 %31, %neg
  call void @gimp_context_copy_properties(%struct._GimpContext* %28, %struct._GimpContext* %29, i32 %and)
  %33 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %tool_options28 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %33, i32 0, i32 12
  %34 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options28, align 8
  %35 = bitcast %struct._GimpToolOptions* %34 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_context_get_type() #5
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call29)
  %36 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpContext*
  %37 = load %struct._GimpContext*, %struct._GimpContext** %user_context.addr, align 8
  call void @gimp_context_set_parent(%struct._GimpContext* %36, %struct._GimpContext* %37)
  %38 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %tool_options31 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %38, i32 0, i32 12
  %39 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options31, align 8
  %40 = bitcast %struct._GimpToolOptions* %39 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %40, %struct._GTypeInstance** %__inst, align 8
  %call32 = call i64 @gimp_paint_options_get_type() #5
  store i64 %call32, i64* %__t, align 8
  %41 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool33 = icmp ne %struct._GTypeInstance* %41, null
  br i1 %tobool33, label %if.else, label %if.then.34

if.then.34:                                       ; preds = %if.end.25
  store i32 0, i32* %__r, align 4
  br label %if.end.41

if.else:                                          ; preds = %if.end.25
  %42 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %42, i32 0, i32 0
  %43 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool35 = icmp ne %struct._GTypeClass* %43, null
  br i1 %tobool35, label %land.lhs.true, label %if.else.38

land.lhs.true:                                    ; preds = %if.else
  %44 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class36 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %44, i32 0, i32 0
  %45 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class36, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %45, i32 0, i32 0
  %46 = load i64, i64* %g_type, align 8
  %47 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %46, %47
  br i1 %cmp, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.40

if.else.38:                                       ; preds = %land.lhs.true, %if.else
  %48 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %49 = load i64, i64* %__t, align 8
  %call39 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %48, i64 %49) #6
  store i32 %call39, i32* %__r, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.38, %if.then.37
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.34
  %50 = load i32, i32* %__r, align 4
  store i32 %50, i32* %tmp
  %51 = load i32, i32* %tmp
  %tobool42 = icmp ne i32 %51, 0
  br i1 %tobool42, label %if.then.43, label %if.end.67

if.then.43:                                       ; preds = %if.end.41
  %52 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %global_brush44 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %52, i32 0, i32 29
  %53 = load i32, i32* %global_brush44, align 4
  %tobool45 = icmp ne i32 %53, 0
  br i1 %tobool45, label %if.then.46, label %if.end.50

if.then.46:                                       ; preds = %if.then.43
  %54 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager.addr, align 8
  %shared_paint_options = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %54, i32 0, i32 1
  %55 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %shared_paint_options, align 8
  %56 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %tool_options47 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %56, i32 0, i32 12
  %57 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options47, align 8
  %58 = bitcast %struct._GimpToolOptions* %57 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_paint_options_get_type() #5
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call48)
  %59 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpPaintOptions*
  call void @gimp_paint_options_copy_brush_props(%struct._GimpPaintOptions* %55, %struct._GimpPaintOptions* %59)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.46, %if.then.43
  %60 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %global_dynamics51 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %60, i32 0, i32 30
  %61 = load i32, i32* %global_dynamics51, align 4
  %tobool52 = icmp ne i32 %61, 0
  br i1 %tobool52, label %if.then.53, label %if.end.58

if.then.53:                                       ; preds = %if.end.50
  %62 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager.addr, align 8
  %shared_paint_options54 = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %62, i32 0, i32 1
  %63 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %shared_paint_options54, align 8
  %64 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %tool_options55 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %64, i32 0, i32 12
  %65 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options55, align 8
  %66 = bitcast %struct._GimpToolOptions* %65 to %struct._GTypeInstance*
  %call56 = call i64 @gimp_paint_options_get_type() #5
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call56)
  %67 = bitcast %struct._GTypeInstance* %call57 to %struct._GimpPaintOptions*
  call void @gimp_paint_options_copy_dynamics_props(%struct._GimpPaintOptions* %63, %struct._GimpPaintOptions* %67)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.53, %if.end.50
  %68 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %global_gradient59 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %68, i32 0, i32 33
  %69 = load i32, i32* %global_gradient59, align 4
  %tobool60 = icmp ne i32 %69, 0
  br i1 %tobool60, label %if.then.61, label %if.end.66

if.then.61:                                       ; preds = %if.end.58
  %70 = load %struct._GimpToolManager*, %struct._GimpToolManager** %tool_manager.addr, align 8
  %shared_paint_options62 = getelementptr inbounds %struct._GimpToolManager, %struct._GimpToolManager* %70, i32 0, i32 1
  %71 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %shared_paint_options62, align 8
  %72 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %tool_options63 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %72, i32 0, i32 12
  %73 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options63, align 8
  %74 = bitcast %struct._GimpToolOptions* %73 to %struct._GTypeInstance*
  %call64 = call i64 @gimp_paint_options_get_type() #5
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call64)
  %75 = bitcast %struct._GTypeInstance* %call65 to %struct._GimpPaintOptions*
  call void @gimp_paint_options_copy_gradient_props(%struct._GimpPaintOptions* %71, %struct._GimpPaintOptions* %75)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.61, %if.end.58
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.end.41
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %entry
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare void @gimp_paint_options_copy_brush_props(%struct._GimpPaintOptions*, %struct._GimpPaintOptions*) #3

declare void @gimp_paint_options_copy_dynamics_props(%struct._GimpPaintOptions*, %struct._GimpPaintOptions*) #3

declare void @gimp_paint_options_copy_gradient_props(%struct._GimpPaintOptions*, %struct._GimpPaintOptions*) #3

declare void @gimp_context_set_parent(%struct._GimpContext*, %struct._GimpContext*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #1

declare void @gimp_context_copy_properties(%struct._GimpContext*, %struct._GimpContext*, i32) #3

declare %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext*) #3

declare noalias i8* @g_strdup(i8*) #3

declare i8* @gimp_object_get_name(i8*) #3

declare i32 @gimp_config_copy(%struct._GimpConfig*, %struct._GimpConfig*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #1

declare void @gimp_object_take_name(%struct._GimpObject*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #1

declare i32 @gimp_tool_preset_get_prop_mask(%struct._GimpToolPreset*) #3

declare i32 @gimp_tool_control_get_preserve(%struct._GimpToolControl*) #3

declare i32 @gimp_tool_control_get_dirty_mask(%struct._GimpToolControl*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
