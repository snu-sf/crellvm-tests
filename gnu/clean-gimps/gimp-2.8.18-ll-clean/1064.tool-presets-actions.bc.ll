; ModuleID = './app/actions/tool-presets-actions.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpActionEntry = type { i8*, i8*, i8*, i8*, i8*, void ()*, i8* }
%struct._GimpStringActionEntry = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._GimpActionGroup = type { %struct._GtkActionGroup, %struct._Gimp*, i8*, i8*, i8*, void (%struct._GimpActionGroup*, i8*)* }
%struct._GtkActionGroup = type { %struct._GObject, %struct._GtkActionGroupPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkActionGroupPrivate = type opaque
%struct._Gimp = type opaque
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpImage = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type { %struct._GimpData, %struct._Gimp*, %struct._GimpToolOptions*, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpDataClass = type { %struct._GimpViewableClass, void (%struct._GimpData*)*, i32 (%struct._GimpData*, %struct._GError**)*, i8* (%struct._GimpData*)*, %struct._GimpData* (%struct._GimpData*)* }
%struct._GimpViewableClass = type { %struct._GimpObjectClass, i8*, i8*, void (%struct._GimpViewable*)*, void (%struct._GimpViewable*)*, i32 (%struct._GimpViewable*, i32*, i32*)*, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, i8* (%struct._GimpViewable*, i8**)*, %struct._GimpContainer* (%struct._GimpViewable*)*, void (%struct._GimpViewable*, i32)*, i32 (%struct._GimpViewable*)* }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._TempBuf = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpContainer = type opaque
%struct._GError = type { i32, i32, i8* }

@.str = private unnamed_addr constant [20 x i8] c"tool-presets-action\00", align 1
@tool_presets_actions = internal constant [6 x %struct._GimpActionEntry] [%struct._GimpActionEntry { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @data_new_cmd_callback to void ()*), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @data_duplicate_cmd_callback to void ()*), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.21, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @data_copy_location_cmd_callback to void ()*), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @data_delete_cmd_callback to void ()*), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @data_refresh_cmd_callback to void ()*), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i32 0, i32 0) }], align 16
@tool_presets_edit_actions = internal constant [1 x %struct._GimpStringActionEntry] [%struct._GimpStringActionEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0) }], align 16
@.str.1 = private unnamed_addr constant [18 x i8] c"tool-presets-edit\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"tool-presets-duplicate\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"tool-presets-copy-location\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"tool-presets-delete\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"tool-presets-popup\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"gimp-tool-preset\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Tool Presets Menu\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"gimp-tool-preset-dialog\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"tool-presets-new\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"gtk-new\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"_New Tool Preset\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"Create a new tool preset\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"gimp-tool-preset-new\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"gimp-duplicate\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"D_uplicate Tool Preset\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"Duplicate this tool preset\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"gimp-tool-preset-duplicate\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"gtk-copy\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"Copy Tool Preset _Location\00", align 1
@.str.21 = private unnamed_addr constant [44 x i8] c"Copy tool preset file location to clipboard\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"gimp-tool-preset-copy-location\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"gtk-delete\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"_Delete Tool Preset\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"Delete this tool preset\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"gimp-tool-preset-delete\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"tool-presets-refresh\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"gtk-refresh\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"_Refresh Tool Presets\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"Refresh tool presets\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"gimp-tool-preset-refresh\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"gtk-edit\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"_Edit Tool Preset...\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"Edit this tool preset\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"gimp-tool-preset-editor\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"gimp-tool-preset-edit\00", align 1

; Function Attrs: nounwind uwtable
define void @tool_presets_actions_setup(%struct._GimpActionGroup* %group) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_actions(%struct._GimpActionGroup* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), %struct._GimpActionEntry* getelementptr inbounds ([6 x %struct._GimpActionEntry], [6 x %struct._GimpActionEntry]* @tool_presets_actions, i32 0, i32 0), i32 6)
  %1 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_string_actions(%struct._GimpActionGroup* %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), %struct._GimpStringActionEntry* getelementptr inbounds ([1 x %struct._GimpStringActionEntry], [1 x %struct._GimpStringActionEntry]* @tool_presets_edit_actions, i32 0, i32 0), i32 1, void ()* bitcast (void (%struct._GtkAction*, i8*, i8*)* @data_edit_cmd_callback to void ()*))
  ret void
}

declare void @gimp_action_group_add_actions(%struct._GimpActionGroup*, i8*, %struct._GimpActionEntry*, i32) #1

declare void @gimp_action_group_add_string_actions(%struct._GimpActionGroup*, i8*, %struct._GimpStringActionEntry*, i32, void ()*) #1

declare void @data_edit_cmd_callback(%struct._GtkAction*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @tool_presets_actions_update(%struct._GimpActionGroup* %group, i8* %user_data) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %user_data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %tool_preset = alloca %struct._GimpToolPreset*, align 8
  %data = alloca %struct._GimpData*, align 8
  %filename = alloca i8*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  store %struct._GimpToolPreset* null, %struct._GimpToolPreset** %tool_preset, align 8
  store %struct._GimpData* null, %struct._GimpData** %data, align 8
  store i8* null, i8** %filename, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call1 = call %struct._GimpToolPreset* @gimp_context_get_tool_preset(%struct._GimpContext* %2)
  store %struct._GimpToolPreset* %call1, %struct._GimpToolPreset** %tool_preset, align 8
  %3 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset, align 8
  %tobool2 = icmp ne %struct._GimpToolPreset* %3, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %4 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset, align 8
  %5 = bitcast %struct._GimpToolPreset* %4 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_data_get_type() #3
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpData*
  store %struct._GimpData* %6, %struct._GimpData** %data, align 8
  %7 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %call6 = call i8* @gimp_data_get_filename(%struct._GimpData* %7)
  store i8* %call6, i8** %filename, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %8 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %9 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset, align 8
  %cmp = icmp ne %struct._GimpToolPreset* %9, null
  %conv = zext i1 %cmp to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 %conv)
  %10 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %11 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset, align 8
  %tobool8 = icmp ne %struct._GimpToolPreset* %11, null
  br i1 %tobool8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.7
  %12 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %13 = bitcast %struct._GimpData* %12 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %13, i32 0, i32 0
  %14 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %15 = bitcast %struct._GTypeClass* %14 to %struct._GimpDataClass*
  %duplicate = getelementptr inbounds %struct._GimpDataClass, %struct._GimpDataClass* %15, i32 0, i32 4
  %16 = load %struct._GimpData* (%struct._GimpData*)*, %struct._GimpData* (%struct._GimpData*)** %duplicate, align 8
  %tobool9 = icmp ne %struct._GimpData* (%struct._GimpData*)* %16, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.7
  %17 = phi i1 [ false, %if.end.7 ], [ %tobool9, %land.rhs ]
  %land.ext = zext i1 %17 to i32
  %cmp10 = icmp ne i32 %land.ext, 0
  %conv11 = zext i1 %cmp10 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i32 %conv11)
  %18 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %19 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset, align 8
  %tobool12 = icmp ne %struct._GimpToolPreset* %19, null
  br i1 %tobool12, label %land.rhs.13, label %land.end.15

land.rhs.13:                                      ; preds = %land.end
  %20 = load i8*, i8** %filename, align 8
  %tobool14 = icmp ne i8* %20, null
  br label %land.end.15

land.end.15:                                      ; preds = %land.rhs.13, %land.end
  %21 = phi i1 [ false, %land.end ], [ %tobool14, %land.rhs.13 ]
  %land.ext16 = zext i1 %21 to i32
  %cmp17 = icmp ne i32 %land.ext16, 0
  %conv18 = zext i1 %cmp17 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i32 %conv18)
  %22 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %23 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset, align 8
  %tobool19 = icmp ne %struct._GimpToolPreset* %23, null
  br i1 %tobool19, label %land.rhs.20, label %land.end.23

land.rhs.20:                                      ; preds = %land.end.15
  %24 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %call21 = call i32 @gimp_data_is_deletable(%struct._GimpData* %24)
  %tobool22 = icmp ne i32 %call21, 0
  br label %land.end.23

land.end.23:                                      ; preds = %land.rhs.20, %land.end.15
  %25 = phi i1 [ false, %land.end.15 ], [ %tobool22, %land.rhs.20 ]
  %land.ext24 = zext i1 %25 to i32
  %cmp25 = icmp ne i32 %land.ext24, 0
  %conv26 = zext i1 %cmp25 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 %conv26)
  ret void
}

declare %struct._GimpContext* @action_data_get_context(i8*) #1

declare %struct._GimpToolPreset* @gimp_context_get_tool_preset(%struct._GimpContext*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_data_get_type() #2

declare i8* @gimp_data_get_filename(%struct._GimpData*) #1

declare void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup*, i8*, i32) #1

declare i32 @gimp_data_is_deletable(%struct._GimpData*) #1

declare void @data_new_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @data_duplicate_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @data_copy_location_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @data_delete_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @data_refresh_cmd_callback(%struct._GtkAction*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
