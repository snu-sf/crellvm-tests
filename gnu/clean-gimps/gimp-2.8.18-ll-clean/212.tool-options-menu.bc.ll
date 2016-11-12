; ModuleID = './app/menus/tool-options-menu.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpUIManager = type { %struct._GtkUIManager, i8*, %struct._Gimp*, %struct._GList* }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkUIManagerPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type opaque
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
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpToolOptions = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
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
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }

@.str = private unnamed_addr constant [7 x i8] c"update\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"tool-options-merge-id\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Save\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"save\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Restore\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"restore\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Edit\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"edit\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Delete\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"tool-options-%s-preset-%03d\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: nounwind uwtable
define void @tool_options_menu_setup(%struct._GimpUIManager* %manager, i8* %ui_path) #0 {
entry:
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  %ui_path.addr = alloca i8*, align 8
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  store i8* %ui_path, i8** %ui_path.addr, align 8
  %0 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %1 = bitcast %struct._GimpUIManager* %0 to i8*
  %2 = load i8*, i8** %ui_path.addr, align 8
  %call = call i64 @g_signal_connect_data(i8* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), void ()* bitcast (void (%struct._GimpUIManager*, i8*, i8*)* @tool_options_menu_update to void ()*), i8* %2, void (i8*, %struct._GClosure*)* null, i32 0)
  %3 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %4 = bitcast %struct._GimpUIManager* %3 to i8*
  %5 = load i8*, i8** %ui_path.addr, align 8
  %call1 = call i64 @g_signal_connect_data(i8* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), void ()* bitcast (void (%struct._GimpUIManager*, i8*, i8*)* @tool_options_menu_update_after to void ()*), i8* %5, void (i8*, %struct._GClosure*)* null, i32 1)
  ret void
}

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @tool_options_menu_update(%struct._GimpUIManager* %manager, i8* %update_data, i8* %ui_path) #0 {
entry:
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  %update_data.addr = alloca i8*, align 8
  %ui_path.addr = alloca i8*, align 8
  %merge_id = alloca i32, align 4
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  store i8* %update_data, i8** %update_data.addr, align 8
  store i8* %ui_path, i8** %ui_path.addr, align 8
  %0 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %1 = bitcast %struct._GimpUIManager* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  %3 = ptrtoint i8* %call1 to i64
  %conv = trunc i64 %3 to i32
  store i32 %conv, i32* %merge_id, align 4
  %4 = load i32, i32* %merge_id, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %6 = bitcast %struct._GimpUIManager* %5 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_ui_manager_get_type() #3
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call2)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkUIManager*
  %8 = load i32, i32* %merge_id, align 4
  call void @gtk_ui_manager_remove_ui(%struct._GtkUIManager* %7, i32 %8)
  %9 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %10 = bitcast %struct._GimpUIManager* %9 to %struct._GTypeInstance*
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 80)
  %11 = bitcast %struct._GTypeInstance* %call4 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i8* null)
  %12 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %13 = bitcast %struct._GimpUIManager* %12 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_ui_manager_get_type() #3
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call5)
  %14 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkUIManager*
  call void @gtk_ui_manager_ensure_update(%struct._GtkUIManager* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tool_options_menu_update_after(%struct._GimpUIManager* %manager, i8* %update_data, i8* %ui_path) #0 {
entry:
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  %update_data.addr = alloca i8*, align 8
  %ui_path.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %merge_id = alloca i32, align 4
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  store i8* %update_data, i8** %update_data.addr, align 8
  store i8* %ui_path, i8** %ui_path.addr, align 8
  %0 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %0, i32 0, i32 2
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %1)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call1 = call %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext* %2)
  store %struct._GimpToolInfo* %call1, %struct._GimpToolInfo** %tool_info, align 8
  %3 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %presets = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %3, i32 0, i32 14
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %presets, align 8
  %tobool = icmp ne %struct._GimpContainer* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %6 = bitcast %struct._GimpUIManager* %5 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_ui_manager_get_type() #3
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call2)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkUIManager*
  %call4 = call i32 @gtk_ui_manager_new_merge_id(%struct._GtkUIManager* %7)
  store i32 %call4, i32* %merge_id, align 4
  %8 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %9 = bitcast %struct._GimpUIManager* %8 to %struct._GTypeInstance*
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 80)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GObject*
  %11 = load i32, i32* %merge_id, align 4
  %conv = zext i32 %11 to i64
  %12 = inttoptr i64 %conv to i8*
  call void @g_object_set_data(%struct._GObject* %10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i8* %12)
  %13 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %14 = load i32, i32* %merge_id, align 4
  %15 = load i8*, i8** %ui_path.addr, align 8
  %16 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %presets6 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %16, i32 0, i32 14
  %17 = load %struct._GimpContainer*, %struct._GimpContainer** %presets6, align 8
  call void @tool_options_menu_update_presets(%struct._GimpUIManager* %13, i32 %14, i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), %struct._GimpContainer* %17)
  %18 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %19 = load i32, i32* %merge_id, align 4
  %20 = load i8*, i8** %ui_path.addr, align 8
  %21 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %presets7 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %21, i32 0, i32 14
  %22 = load %struct._GimpContainer*, %struct._GimpContainer** %presets7, align 8
  call void @tool_options_menu_update_presets(%struct._GimpUIManager* %18, i32 %19, i8* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), %struct._GimpContainer* %22)
  %23 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %24 = load i32, i32* %merge_id, align 4
  %25 = load i8*, i8** %ui_path.addr, align 8
  %26 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %presets8 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %26, i32 0, i32 14
  %27 = load %struct._GimpContainer*, %struct._GimpContainer** %presets8, align 8
  call void @tool_options_menu_update_presets(%struct._GimpUIManager* %23, i32 %24, i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), %struct._GimpContainer* %27)
  %28 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %29 = load i32, i32* %merge_id, align 4
  %30 = load i8*, i8** %ui_path.addr, align 8
  %31 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %presets9 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %31, i32 0, i32 14
  %32 = load %struct._GimpContainer*, %struct._GimpContainer** %presets9, align 8
  call void @tool_options_menu_update_presets(%struct._GimpUIManager* %28, i32 %29, i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), %struct._GimpContainer* %32)
  %33 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %34 = bitcast %struct._GimpUIManager* %33 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_ui_manager_get_type() #3
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call10)
  %35 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkUIManager*
  call void @gtk_ui_manager_ensure_update(%struct._GtkUIManager* %35)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @gtk_ui_manager_remove_ui(%struct._GtkUIManager*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_ui_manager_get_type() #2

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare void @gtk_ui_manager_ensure_update(%struct._GtkUIManager*) #1

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #1

declare %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext*) #1

declare i32 @gtk_ui_manager_new_merge_id(%struct._GtkUIManager*) #1

; Function Attrs: nounwind uwtable
define internal void @tool_options_menu_update_presets(%struct._GimpUIManager* %manager, i32 %merge_id, i8* %ui_path, i8* %menu_path, i8* %which_action, %struct._GimpContainer* %presets) #0 {
entry:
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  %merge_id.addr = alloca i32, align 4
  %ui_path.addr = alloca i8*, align 8
  %menu_path.addr = alloca i8*, align 8
  %which_action.addr = alloca i8*, align 8
  %presets.addr = alloca %struct._GimpContainer*, align 8
  %n_children = alloca i32, align 4
  %i = alloca i32, align 4
  %action_name = alloca i8*, align 8
  %path = alloca i8*, align 8
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  store i32 %merge_id, i32* %merge_id.addr, align 4
  store i8* %ui_path, i8** %ui_path.addr, align 8
  store i8* %menu_path, i8** %menu_path.addr, align 8
  store i8* %which_action, i8** %which_action.addr, align 8
  store %struct._GimpContainer* %presets, %struct._GimpContainer** %presets.addr, align 8
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %presets.addr, align 8
  %call = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %0)
  store i32 %call, i32* %n_children, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n_children, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %which_action.addr, align 8
  %4 = load i32, i32* %i, align 4
  %call1 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0), i8* %3, i32 %4)
  store i8* %call1, i8** %action_name, align 8
  %5 = load i8*, i8** %ui_path.addr, align 8
  %6 = load i8*, i8** %menu_path.addr, align 8
  %call2 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* %5, i8* %6)
  store i8* %call2, i8** %path, align 8
  %7 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %8 = bitcast %struct._GimpUIManager* %7 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_ui_manager_get_type() #3
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call3)
  %9 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkUIManager*
  %10 = load i32, i32* %merge_id.addr, align 4
  %11 = load i8*, i8** %path, align 8
  %12 = load i8*, i8** %action_name, align 8
  %13 = load i8*, i8** %action_name, align 8
  call void @gtk_ui_manager_add_ui(%struct._GtkUIManager* %9, i32 %10, i8* %11, i8* %12, i8* %13, i32 32, i32 0)
  %14 = load i8*, i8** %action_name, align 8
  call void @g_free(i8* %14)
  %15 = load i8*, i8** %path, align 8
  call void @g_free(i8* %15)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @gimp_container_get_n_children(%struct._GimpContainer*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare void @gtk_ui_manager_add_ui(%struct._GtkUIManager*, i32, i8*, i8*, i8*, i32, i32) #1

declare void @g_free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
