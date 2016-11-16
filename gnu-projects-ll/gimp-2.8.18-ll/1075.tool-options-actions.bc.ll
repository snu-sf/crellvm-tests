; ModuleID = './app/actions/tool-options-actions.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpActionEntry = type { i8*, i8*, i8*, i8*, i8*, void ()*, i8* }
%struct._GimpActionGroup = type { %struct._GtkActionGroup, %struct._Gimp*, i8*, i8*, i8*, void (%struct._GimpActionGroup*, i8*)* }
%struct._GtkActionGroup = type { %struct._GObject, %struct._GtkActionGroupPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkActionGroupPrivate = type opaque
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
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
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
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct._GimpEnumActionEntry = type { i8*, i8*, i8*, i8*, i8*, i32, i32, i8* }
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }
%struct._GimpData = type { %struct._GimpViewable }

@.str = private unnamed_addr constant [20 x i8] c"tool-options-action\00", align 1
@tool_options_actions = internal constant [8 x %struct._GimpActionEntry] [%struct._GimpActionEntry { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i32 0, i32 0), i8* null, void ()* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i32 0, i32 0), i8* null, void ()* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i32 0, i32 0), i8* null, void ()* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i32 0, i32 0), i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @tool_options_save_new_preset_cmd_callback to void ()*), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @tool_options_reset_cmd_callback to void ()*), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @tool_options_reset_all_cmd_callback to void ()*), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i32 0, i32 0) }], align 16
@.str.1 = private unnamed_addr constant [33 x i8] c"tool-options-restore-preset-menu\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"tool-options-edit-preset-menu\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"tool-options-delete-preset-menu\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"tool-options-save-preset-menu\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"tool-options-save-preset\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"gimp-tool-options-save\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"tool-options-restore-preset\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"gimp-tool-options-restore\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"tool-options-edit-preset\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"gimp-tool-options-edit\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"tool-options-delete-preset\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"gimp-tool-options-delete\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"tool-options-popup\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"gimp-tool-options\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"Tool Options Menu\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"gimp-tool-options-dialog\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"gtk-save\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"_Save Tool Preset\00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"gtk-revert-to-saved\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"_Restore Tool Preset\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"gtk-edit\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"E_dit Tool Preset\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"gtk-delete\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"_Delete Tool Preset\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"tool-options-save-new-preset\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"gtk-new\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"_New Tool Preset...\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"tool-options-reset\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"gimp-reset\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"R_eset Tool Options\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"Reset to default values\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"gimp-tool-options-reset\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"tool-options-reset-all\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"Reset _all Tool Options\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"Reset all tool options\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"%s-%03d\00", align 1

; Function Attrs: nounwind uwtable
define void @tool_options_actions_setup(%struct._GimpActionGroup* %group) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_actions(%struct._GimpActionGroup* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), %struct._GimpActionEntry* getelementptr inbounds ([8 x %struct._GimpActionEntry], [8 x %struct._GimpActionEntry]* @tool_options_actions, i32 0, i32 0), i32 8)
  %1 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_hide_empty(%struct._GimpActionGroup* %1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0), i32 0)
  %2 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_hide_empty(%struct._GimpActionGroup* %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i32 0)
  %3 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_hide_empty(%struct._GimpActionGroup* %3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0), i32 0)
  ret void
}

declare void @gimp_action_group_add_actions(%struct._GimpActionGroup*, i8*, %struct._GimpActionEntry*, i32) #1

declare void @gimp_action_group_set_action_hide_empty(%struct._GimpActionGroup*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @tool_options_actions_update(%struct._GimpActionGroup* %group, i8* %data) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %1)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call1 = call %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext* %2)
  store %struct._GimpToolInfo* %call1, %struct._GimpToolInfo** %tool_info, align 8
  %3 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %4 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %presets = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %4, i32 0, i32 14
  %5 = load %struct._GimpContainer*, %struct._GimpContainer** %presets, align 8
  %cmp = icmp ne %struct._GimpContainer* %5, null
  %conv = zext i1 %cmp to i32
  call void @gimp_action_group_set_action_visible(%struct._GimpActionGroup* %3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0), i32 %conv)
  %6 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %7 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %presets2 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %7, i32 0, i32 14
  %8 = load %struct._GimpContainer*, %struct._GimpContainer** %presets2, align 8
  %cmp3 = icmp ne %struct._GimpContainer* %8, null
  %conv4 = zext i1 %cmp3 to i32
  call void @gimp_action_group_set_action_visible(%struct._GimpActionGroup* %6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0), i32 %conv4)
  %9 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %10 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %presets5 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %10, i32 0, i32 14
  %11 = load %struct._GimpContainer*, %struct._GimpContainer** %presets5, align 8
  %cmp6 = icmp ne %struct._GimpContainer* %11, null
  %conv7 = zext i1 %cmp6 to i32
  call void @gimp_action_group_set_action_visible(%struct._GimpActionGroup* %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i32 %conv7)
  %12 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %13 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %presets8 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %13, i32 0, i32 14
  %14 = load %struct._GimpContainer*, %struct._GimpContainer** %presets8, align 8
  %cmp9 = icmp ne %struct._GimpContainer* %14, null
  %conv10 = zext i1 %cmp9 to i32
  call void @gimp_action_group_set_action_visible(%struct._GimpActionGroup* %12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0), i32 %conv10)
  %15 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %16 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %presets11 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %16, i32 0, i32 14
  %17 = load %struct._GimpContainer*, %struct._GimpContainer** %presets11, align 8
  call void @tool_options_actions_update_presets(%struct._GimpActionGroup* %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @tool_options_save_preset_cmd_callback to void ()*), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), %struct._GimpContainer* %17, i32 1, i32 0)
  %18 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %19 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %presets12 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %19, i32 0, i32 14
  %20 = load %struct._GimpContainer*, %struct._GimpContainer** %presets12, align 8
  call void @tool_options_actions_update_presets(%struct._GimpActionGroup* %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @tool_options_restore_preset_cmd_callback to void ()*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0), %struct._GimpContainer* %20, i32 0, i32 0)
  %21 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %22 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %presets13 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %22, i32 0, i32 14
  %23 = load %struct._GimpContainer*, %struct._GimpContainer** %presets13, align 8
  call void @tool_options_actions_update_presets(%struct._GimpActionGroup* %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @tool_options_edit_preset_cmd_callback to void ()*), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), %struct._GimpContainer* %23, i32 0, i32 0)
  %24 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %25 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %presets14 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %25, i32 0, i32 14
  %26 = load %struct._GimpContainer*, %struct._GimpContainer** %presets14, align 8
  call void @tool_options_actions_update_presets(%struct._GimpActionGroup* %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @tool_options_delete_preset_cmd_callback to void ()*), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0), %struct._GimpContainer* %26, i32 0, i32 1)
  ret void
}

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #1

declare %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext*) #1

declare void @gimp_action_group_set_action_visible(%struct._GimpActionGroup*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @tool_options_actions_update_presets(%struct._GimpActionGroup* %group, i8* %action_prefix, void ()* %callback, i8* %help_id, %struct._GimpContainer* %presets, i32 %need_writable, i32 %need_deletable) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %action_prefix.addr = alloca i8*, align 8
  %callback.addr = alloca void ()*, align 8
  %help_id.addr = alloca i8*, align 8
  %presets.addr = alloca %struct._GimpContainer*, align 8
  %need_writable.addr = alloca i32, align 4
  %need_deletable.addr = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %n_children = alloca i32, align 4
  %i = alloca i32, align 4
  %action_name = alloca i8*, align 8
  %action = alloca %struct._GtkAction*, align 8
  %entry11 = alloca %struct._GimpEnumActionEntry, align 8
  %preset = alloca %struct._GimpObject*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %action_prefix, i8** %action_prefix.addr, align 8
  store void ()* %callback, void ()** %callback.addr, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  store %struct._GimpContainer* %presets, %struct._GimpContainer** %presets.addr, align 8
  store i32 %need_writable, i32* %need_writable.addr, align 4
  store i32 %need_deletable, i32* %need_deletable.addr, align 4
  store i32 0, i32* %n_children, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %action_prefix.addr, align 8
  %1 = load i32, i32* %i, align 4
  %call = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i8* %0, i32 %1)
  store i8* %call, i8** %action_name, align 8
  %2 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %3 = bitcast %struct._GimpActionGroup* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_action_group_get_type() #3
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkActionGroup*
  %5 = load i8*, i8** %action_name, align 8
  %call3 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %4, i8* %5)
  store %struct._GtkAction* %call3, %struct._GtkAction** %action, align 8
  %6 = load i8*, i8** %action_name, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %tobool = icmp ne %struct._GtkAction* %7, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %8 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %9 = bitcast %struct._GimpActionGroup* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_action_group_get_type() #3
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkActionGroup*
  %11 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  call void @gtk_action_group_remove_action(%struct._GtkActionGroup* %10, %struct._GtkAction* %11)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then
  %13 = load %struct._GimpContainer*, %struct._GimpContainer** %presets.addr, align 8
  %tobool6 = icmp ne %struct._GimpContainer* %13, null
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %for.end
  %14 = load %struct._GimpContainer*, %struct._GimpContainer** %presets.addr, align 8
  %call8 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %14)
  store i32 %call8, i32* %n_children, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %for.end
  %15 = load i32, i32* %n_children, align 4
  %cmp = icmp sgt i32 %15, 0
  br i1 %cmp, label %if.then.10, label %if.end.48

if.then.10:                                       ; preds = %if.end.9
  %name = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %entry11, i32 0, i32 0
  store i8* null, i8** %name, align 8
  %label = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %entry11, i32 0, i32 2
  store i8* null, i8** %label, align 8
  %accelerator = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %entry11, i32 0, i32 3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i32 0, i32 0), i8** %accelerator, align 8
  %tooltip = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %entry11, i32 0, i32 4
  store i8* null, i8** %tooltip, align 8
  %value = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %entry11, i32 0, i32 5
  store i32 0, i32* %value, align 4
  %value_variable = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %entry11, i32 0, i32 6
  store i32 0, i32* %value_variable, align 4
  %16 = load i8*, i8** %help_id.addr, align 8
  %help_id12 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %entry11, i32 0, i32 7
  store i8* %16, i8** %help_id12, align 8
  %17 = load %struct._GimpContainer*, %struct._GimpContainer** %presets.addr, align 8
  %18 = bitcast %struct._GimpContainer* %17 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_list_get_type() #3
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call13)
  %19 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpList*
  %list15 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %19, i32 0, i32 1
  %20 = load %struct._GList*, %struct._GList** %list15, align 8
  store %struct._GList* %20, %struct._GList** %list, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %cond.end, %if.then.10
  %21 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool17 = icmp ne %struct._GList* %21, null
  br i1 %tobool17, label %for.body, label %for.end.47

for.body:                                         ; preds = %for.cond.16
  %22 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %22, i32 0, i32 0
  %23 = load i8*, i8** %data, align 8
  %24 = bitcast i8* %23 to %struct._GimpObject*
  store %struct._GimpObject* %24, %struct._GimpObject** %preset, align 8
  %25 = load i8*, i8** %action_prefix.addr, align 8
  %26 = load i32, i32* %i, align 4
  %call18 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i8* %25, i32 %26)
  %name19 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %entry11, i32 0, i32 0
  store i8* %call18, i8** %name19, align 8
  %27 = load %struct._GimpObject*, %struct._GimpObject** %preset, align 8
  %28 = bitcast %struct._GimpObject* %27 to i8*
  %call20 = call i8* @gimp_object_get_name(i8* %28)
  %label21 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %entry11, i32 0, i32 2
  store i8* %call20, i8** %label21, align 8
  %29 = load %struct._GimpObject*, %struct._GimpObject** %preset, align 8
  %30 = bitcast %struct._GimpObject* %29 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_viewable_get_type() #3
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call22)
  %31 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpViewable*
  %call24 = call i8* @gimp_viewable_get_stock_id(%struct._GimpViewable* %31)
  %stock_id = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %entry11, i32 0, i32 1
  store i8* %call24, i8** %stock_id, align 8
  %32 = load i32, i32* %i, align 4
  %value25 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %entry11, i32 0, i32 5
  store i32 %32, i32* %value25, align 4
  %33 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %34 = load void ()*, void ()** %callback.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %33, i8* null, %struct._GimpEnumActionEntry* %entry11, i32 1, void ()* %34)
  %35 = load i32, i32* %need_writable.addr, align 4
  %tobool26 = icmp ne i32 %35, 0
  br i1 %tobool26, label %if.then.27, label %if.end.33

if.then.27:                                       ; preds = %for.body
  %36 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %name28 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %entry11, i32 0, i32 0
  %37 = load i8*, i8** %name28, align 8
  %38 = load %struct._GimpObject*, %struct._GimpObject** %preset, align 8
  %39 = bitcast %struct._GimpObject* %38 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_data_get_type() #3
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call29)
  %40 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpData*
  %call31 = call i32 @gimp_data_is_writable(%struct._GimpData* %40)
  %cmp32 = icmp ne i32 %call31, 0
  %conv = zext i1 %cmp32 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %36, i8* %37, i32 %conv)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.27, %for.body
  %41 = load i32, i32* %need_deletable.addr, align 4
  %tobool34 = icmp ne i32 %41, 0
  br i1 %tobool34, label %if.then.35, label %if.end.42

if.then.35:                                       ; preds = %if.end.33
  %42 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %name36 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %entry11, i32 0, i32 0
  %43 = load i8*, i8** %name36, align 8
  %44 = load %struct._GimpObject*, %struct._GimpObject** %preset, align 8
  %45 = bitcast %struct._GimpObject* %44 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_data_get_type() #3
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call37)
  %46 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpData*
  %call39 = call i32 @gimp_data_is_deletable(%struct._GimpData* %46)
  %cmp40 = icmp ne i32 %call39, 0
  %conv41 = zext i1 %cmp40 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %42, i8* %43, i32 %conv41)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.35, %if.end.33
  %name43 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %entry11, i32 0, i32 0
  %47 = load i8*, i8** %name43, align 8
  call void @g_free(i8* %47)
  br label %for.inc.44

for.inc.44:                                       ; preds = %if.end.42
  %48 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool45 = icmp ne %struct._GList* %48, null
  br i1 %tobool45, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc.44
  %49 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %49, i32 0, i32 1
  %50 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc.44
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %50, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  %51 = load i32, i32* %i, align 4
  %inc46 = add nsw i32 %51, 1
  store i32 %inc46, i32* %i, align 4
  br label %for.cond.16

for.end.47:                                       ; preds = %for.cond.16
  br label %if.end.48

if.end.48:                                        ; preds = %for.end.47, %if.end.9
  ret void
}

declare void @tool_options_save_preset_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @tool_options_restore_preset_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @tool_options_edit_preset_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @tool_options_delete_preset_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @tool_options_save_new_preset_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @tool_options_reset_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @tool_options_reset_all_cmd_callback(%struct._GtkAction*, i8*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_action_group_get_type() #2

declare void @g_free(i8*) #1

declare void @gtk_action_group_remove_action(%struct._GtkActionGroup*, %struct._GtkAction*) #1

declare i32 @gimp_container_get_n_children(%struct._GimpContainer*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_list_get_type() #2

declare i8* @gimp_object_get_name(i8*) #1

declare i8* @gimp_viewable_get_stock_id(%struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup*, i8*, %struct._GimpEnumActionEntry*, i32, void ()*) #1

declare void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup*, i8*, i32) #1

declare i32 @gimp_data_is_writable(%struct._GimpData*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_data_get_type() #2

declare i32 @gimp_data_is_deletable(%struct._GimpData*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
