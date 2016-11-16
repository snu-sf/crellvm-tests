; ModuleID = './app/widgets/gimpactiongroup.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpActionGroupClass = type { %struct._GtkActionGroupClass, %struct._GHashTable*, void (%struct._GimpActionGroup*, %struct._GtkAction*)* }
%struct._GtkActionGroupClass = type { %struct._GObjectClass, %struct._GtkAction* (%struct._GtkActionGroup*, i8*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct._GtkActionGroup = type { %struct._GObject, %struct._GtkActionGroupPrivate* }
%struct._GtkActionGroupPrivate = type opaque
%struct._GHashTable = type opaque
%struct._GimpActionGroup = type { %struct._GtkActionGroup, %struct._Gimp*, i8*, i8*, i8*, void (%struct._GimpActionGroup*, i8*)* }
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
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GimpActionEntry = type { i8*, i8*, i8*, i8*, i8*, void ()*, i8* }
%struct._GimpAction = type { %struct._GtkAction, %struct._GimpContext*, %struct._GimpRGB*, %struct._GimpViewable*, i32, i32 }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpToggleActionEntry = type { i8*, i8*, i8*, i8*, i8*, void ()*, i32, i8* }
%struct._GtkToggleAction = type { %struct._GtkAction, %struct._GtkToggleActionPrivate* }
%struct._GtkToggleActionPrivate = type opaque
%struct._GimpRadioActionEntry = type { i8*, i8*, i8*, i8*, i8*, i32, i8* }
%struct._GtkRadioAction = type { %struct._GtkToggleAction, %struct._GtkRadioActionPrivate* }
%struct._GtkRadioActionPrivate = type opaque
%struct._GimpEnumActionEntry = type { i8*, i8*, i8*, i8*, i8*, i32, i32, i8* }
%struct._GimpEnumAction = type { %struct._GimpAction, i32, i32 }
%struct._GimpStringActionEntry = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._GimpStringAction = type { %struct._GimpAction, i8* }
%struct._GimpPlugInActionEntry = type { i8*, i8*, i8*, i8*, i8*, %struct._GimpPlugInProcedure*, i8* }
%struct._GimpPlugInProcedure = type opaque
%struct._GimpPlugInAction = type { %struct._GimpAction, %struct._GimpPlugInProcedure* }
%struct._GSignalInvocationHint = type { i32, i32, i32 }

@gimp_action_group_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"GimpActionGroup\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_action_group_new = private unnamed_addr constant [22 x i8] c"gimp_action_group_new\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"gimp\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"stock-id\00", align 1
@__func__.gimp_action_groups_from_name = private unnamed_addr constant [29 x i8] c"gimp_action_groups_from_name\00", align 1
@__func__.gimp_action_group_update = private unnamed_addr constant [25 x i8] c"gimp_action_group_update\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"GIMP_IS_ACTION_GROUP (group)\00", align 1
@__func__.gimp_action_group_add_actions = private unnamed_addr constant [30 x i8] c"gimp_action_group_add_actions\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"activate\00", align 1
@signals = internal global [1 x i32] zeroinitializer, align 4
@__func__.gimp_action_group_add_toggle_actions = private unnamed_addr constant [37 x i8] c"gimp_action_group_add_toggle_actions\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@__func__.gimp_action_group_add_radio_actions = private unnamed_addr constant [36 x i8] c"gimp_action_group_add_radio_actions\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@__func__.gimp_action_group_add_enum_actions = private unnamed_addr constant [35 x i8] c"gimp_action_group_add_enum_actions\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"selected\00", align 1
@__func__.gimp_action_group_add_string_actions = private unnamed_addr constant [37 x i8] c"gimp_action_group_add_string_actions\00", align 1
@__func__.gimp_action_group_add_plug_in_actions = private unnamed_addr constant [38 x i8] c"gimp_action_group_add_plug_in_actions\00", align 1
@__func__.gimp_action_group_activate_action = private unnamed_addr constant [34 x i8] c"gimp_action_group_activate_action\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"action_name != NULL\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"%s: Unable to activate action which doesn't exist: %s\00", align 1
@__func__.gimp_action_group_set_action_visible = private unnamed_addr constant [37 x i8] c"gimp_action_group_set_action_visible\00", align 1
@.str.15 = private unnamed_addr constant [63 x i8] c"%s: Unable to set visibility of action which doesn't exist: %s\00", align 1
@__func__.gimp_action_group_set_action_sensitive = private unnamed_addr constant [39 x i8] c"gimp_action_group_set_action_sensitive\00", align 1
@.str.16 = private unnamed_addr constant [64 x i8] c"%s: Unable to set sensitivity of action which doesn't exist: %s\00", align 1
@__func__.gimp_action_group_set_action_active = private unnamed_addr constant [36 x i8] c"gimp_action_group_set_action_active\00", align 1
@.str.17 = private unnamed_addr constant [61 x i8] c"%s: Unable to set \22active\22 of action which doesn't exist: %s\00", align 1
@.str.18 = private unnamed_addr constant [72 x i8] c"%s: Unable to set \22active\22 of action which is not a GtkToggleAction: %s\00", align 1
@__func__.gimp_action_group_set_action_label = private unnamed_addr constant [35 x i8] c"gimp_action_group_set_action_label\00", align 1
@.str.19 = private unnamed_addr constant [58 x i8] c"%s: Unable to set label of action which doesn't exist: %s\00", align 1
@__func__.gimp_action_group_set_action_tooltip = private unnamed_addr constant [37 x i8] c"gimp_action_group_set_action_tooltip\00", align 1
@.str.20 = private unnamed_addr constant [60 x i8] c"%s: Unable to set tooltip of action which doesn't exist: %s\00", align 1
@__func__.gimp_action_group_get_action_tooltip = private unnamed_addr constant [37 x i8] c"gimp_action_group_get_action_tooltip\00", align 1
@.str.21 = private unnamed_addr constant [60 x i8] c"%s: Unable to get tooltip of action which doesn't exist: %s\00", align 1
@__func__.gimp_action_group_set_action_color = private unnamed_addr constant [35 x i8] c"gimp_action_group_set_action_color\00", align 1
@.str.22 = private unnamed_addr constant [58 x i8] c"%s: Unable to set color of action which doesn't exist: %s\00", align 1
@.str.23 = private unnamed_addr constant [66 x i8] c"%s: Unable to set \22color\22 of action which is not a GimpAction: %s\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"RGBA (%0.3f, %0.3f, %0.3f, %0.3f)\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@__func__.gimp_action_group_set_action_viewable = private unnamed_addr constant [38 x i8] c"gimp_action_group_set_action_viewable\00", align 1
@.str.27 = private unnamed_addr constant [48 x i8] c"viewable == NULL || GIMP_IS_VIEWABLE (viewable)\00", align 1
@.str.28 = private unnamed_addr constant [61 x i8] c"%s: Unable to set viewable of action which doesn't exist: %s\00", align 1
@.str.29 = private unnamed_addr constant [69 x i8] c"%s: Unable to set \22viewable\22 of action which is not a GimpAction: %s\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"viewable\00", align 1
@__func__.gimp_action_group_set_action_hide_empty = private unnamed_addr constant [40 x i8] c"gimp_action_group_set_action_hide_empty\00", align 1
@.str.31 = private unnamed_addr constant [68 x i8] c"%s: Unable to set \22hide-if-empty\22 of action which doesn't exist: %s\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"hide-if-empty\00", align 1
@__func__.gimp_action_group_set_action_always_show_image = private unnamed_addr constant [47 x i8] c"gimp_action_group_set_action_always_show_image\00", align 1
@.str.33 = private unnamed_addr constant [72 x i8] c"%s: Unable to set \22always-show-image\22 of action which doesn't exist: %s\00", align 1
@gimp_action_group_parent_class = internal global i8* null, align 8
@GimpActionGroup_private_offset = internal global i32 0, align 4
@.str.34 = private unnamed_addr constant [13 x i8] c"action-added\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"gimpactiongroup.c\00", align 1
@__func__.gimp_action_group_constructed = private unnamed_addr constant [30 x i8] c"gimp_action_group_constructed\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"GIMP_IS_GIMP (group->gimp)\00", align 1
@.str.37 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.39 = private unnamed_addr constant [60 x i8] c"Refusing to add non-unique action '%s' to action group '%s'\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_action_group_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_action_group_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_action_group_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_action_group_get_type() #8
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 192, void (i8*, i8*)* bitcast (void (i8*)* @gimp_action_group_class_intern_init to void (i8*, i8*)*), i32 72, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpActionGroup*)* @gimp_action_group_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_action_group_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_action_group_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_action_group_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_action_group_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_action_group_parent_class, align 8
  %1 = load i32, i32* @GimpActionGroup_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpActionGroup_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpActionGroupClass*
  call void @gimp_action_group_class_init(%struct._GimpActionGroupClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_action_group_init(%struct._GimpActionGroup* %group) #3 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpActionGroup* @gimp_action_group_new(%struct._Gimp* %gimp, i8* %name, i8* %label, i8* %stock_id, i8* %user_data, void (%struct._GimpActionGroup*, i8*)* %update_func) #3 {
entry:
  %retval = alloca %struct._GimpActionGroup*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %name.addr = alloca i8*, align 8
  %label.addr = alloca i8*, align 8
  %stock_id.addr = alloca i8*, align 8
  %user_data.addr = alloca i8*, align 8
  %update_func.addr = alloca void (%struct._GimpActionGroup*, i8*)*, align 8
  %group = alloca %struct._GimpActionGroup*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i8* %stock_id, i8** %stock_id.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  store void (%struct._GimpActionGroup*, i8*)* %update_func, void (%struct._GimpActionGroup*, i8*)** %update_func.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_action_group_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpActionGroup* null, %struct._GimpActionGroup** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %name.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_action_group_new, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpActionGroup* null, %struct._GimpActionGroup** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %call17 = call i64 @gimp_action_group_get_type() #8
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %15 = load i8*, i8** %name.addr, align 8
  %16 = load i8*, i8** %label.addr, align 8
  %17 = load i8*, i8** %stock_id.addr, align 8
  %call18 = call i8* (i64, i8*, ...) @g_object_new(i64 %call17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), %struct._Gimp* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* %17, i8* null)
  %18 = bitcast i8* %call18 to %struct._GimpActionGroup*
  store %struct._GimpActionGroup* %18, %struct._GimpActionGroup** %group, align 8
  %19 = load i8*, i8** %user_data.addr, align 8
  %20 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  %user_data19 = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %20, i32 0, i32 4
  store i8* %19, i8** %user_data19, align 8
  %21 = load void (%struct._GimpActionGroup*, i8*)*, void (%struct._GimpActionGroup*, i8*)** %update_func.addr, align 8
  %22 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  %update_func20 = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %22, i32 0, i32 5
  store void (%struct._GimpActionGroup*, i8*)* %21, void (%struct._GimpActionGroup*, i8*)** %update_func20, align 8
  %23 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  store %struct._GimpActionGroup* %23, %struct._GimpActionGroup** %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  %24 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %retval
  ret %struct._GimpActionGroup* %24
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_action_groups_from_name(i8* %name) #3 {
entry:
  %retval = alloca %struct._GList*, align 8
  %name.addr = alloca i8*, align 8
  %group_class = alloca %struct._GimpActionGroupClass*, align 8
  %list = alloca %struct._GList*, align 8
  store i8* %name, i8** %name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %name.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_action_groups_from_name, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call i64 @gimp_action_group_get_type() #8
  %call1 = call i8* @g_type_class_ref(i64 %call)
  %1 = bitcast i8* %call1 to %struct._GimpActionGroupClass*
  store %struct._GimpActionGroupClass* %1, %struct._GimpActionGroupClass** %group_class, align 8
  %2 = load %struct._GimpActionGroupClass*, %struct._GimpActionGroupClass** %group_class, align 8
  %groups = getelementptr inbounds %struct._GimpActionGroupClass, %struct._GimpActionGroupClass* %2, i32 0, i32 1
  %3 = load %struct._GHashTable*, %struct._GHashTable** %groups, align 8
  %4 = load i8*, i8** %name.addr, align 8
  %call2 = call i8* @g_hash_table_lookup(%struct._GHashTable* %3, i8* %4)
  %5 = bitcast i8* %call2 to %struct._GList*
  store %struct._GList* %5, %struct._GList** %list, align 8
  %6 = load %struct._GimpActionGroupClass*, %struct._GimpActionGroupClass** %group_class, align 8
  %7 = bitcast %struct._GimpActionGroupClass* %6 to i8*
  call void @g_type_class_unref(i8* %7)
  %8 = load %struct._GList*, %struct._GList** %list, align 8
  store %struct._GList* %8, %struct._GList** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %9 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %9
}

declare i8* @g_type_class_ref(i64) #1

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

declare void @g_type_class_unref(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_action_group_update(%struct._GimpActionGroup* %group, i8* %update_data) #3 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %update_data.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %update_data, i8** %update_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %1 = bitcast %struct._GimpActionGroup* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_action_group_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_action_group_update, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.14

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %update_func = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %13, i32 0, i32 5
  %14 = load void (%struct._GimpActionGroup*, i8*)*, void (%struct._GimpActionGroup*, i8*)** %update_func, align 8
  %tobool11 = icmp ne void (%struct._GimpActionGroup*, i8*)* %14, null
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %update_func13 = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %15, i32 0, i32 5
  %16 = load void (%struct._GimpActionGroup*, i8*)*, void (%struct._GimpActionGroup*, i8*)** %update_func13, align 8
  %17 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %18 = load i8*, i8** %update_data.addr, align 8
  call void %16(%struct._GimpActionGroup* %17, i8* %18)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.9, %if.then.12, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_action_group_add_actions(%struct._GimpActionGroup* %group, i8* %msg_context, %struct._GimpActionEntry* %entries, i32 %n_entries) #3 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %msg_context.addr = alloca i8*, align 8
  %entries.addr = alloca %struct._GimpActionEntry*, align 8
  %n_entries.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %action = alloca %struct._GimpAction*, align 8
  %label = alloca i8*, align 8
  %tooltip = alloca i8*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %msg_context, i8** %msg_context.addr, align 8
  store %struct._GimpActionEntry* %entries, %struct._GimpActionEntry** %entries.addr, align 8
  store i32 %n_entries, i32* %n_entries.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %1 = bitcast %struct._GimpActionGroup* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_action_group_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_action_group_add_actions, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0))
  br label %for.end

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %n_entries.addr, align 4
  %cmp11 = icmp ult i32 %13, %14
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i8* null, i8** %tooltip, align 8
  %15 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct._GimpActionEntry*, %struct._GimpActionEntry** %entries.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %17, i64 %idxprom
  %name = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %arrayidx, i32 0, i32 0
  %18 = load i8*, i8** %name, align 8
  %call15 = call i32 @gimp_action_group_check_unique_action(%struct._GimpActionGroup* %15, i8* %18)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %for.body
  br label %for.inc

if.end.18:                                        ; preds = %for.body
  %19 = load i8*, i8** %msg_context.addr, align 8
  %tobool19 = icmp ne i8* %19, null
  br i1 %tobool19, label %if.then.20, label %if.else.35

if.then.20:                                       ; preds = %if.end.18
  %20 = load i8*, i8** %msg_context.addr, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %21 to i64
  %22 = load %struct._GimpActionEntry*, %struct._GimpActionEntry** %entries.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %22, i64 %idxprom21
  %label23 = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %arrayidx22, i32 0, i32 2
  %23 = load i8*, i8** %label23, align 8
  %call24 = call i8* @g_dpgettext2(i8* null, i8* %20, i8* %23)
  store i8* %call24, i8** %label, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %24 to i64
  %25 = load %struct._GimpActionEntry*, %struct._GimpActionEntry** %entries.addr, align 8
  %arrayidx26 = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %25, i64 %idxprom25
  %tooltip27 = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %arrayidx26, i32 0, i32 4
  %26 = load i8*, i8** %tooltip27, align 8
  %tobool28 = icmp ne i8* %26, null
  br i1 %tobool28, label %if.then.29, label %if.end.34

if.then.29:                                       ; preds = %if.then.20
  %27 = load i8*, i8** %msg_context.addr, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %28 to i64
  %29 = load %struct._GimpActionEntry*, %struct._GimpActionEntry** %entries.addr, align 8
  %arrayidx31 = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %29, i64 %idxprom30
  %tooltip32 = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %arrayidx31, i32 0, i32 4
  %30 = load i8*, i8** %tooltip32, align 8
  %call33 = call i8* @g_dpgettext2(i8* null, i8* %27, i8* %30)
  store i8* %call33, i8** %tooltip, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.29, %if.then.20
  br label %if.end.44

if.else.35:                                       ; preds = %if.end.18
  %31 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %31 to i64
  %32 = load %struct._GimpActionEntry*, %struct._GimpActionEntry** %entries.addr, align 8
  %arrayidx37 = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %32, i64 %idxprom36
  %label38 = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %arrayidx37, i32 0, i32 2
  %33 = load i8*, i8** %label38, align 8
  %call39 = call i8* @gettext(i8* %33) #7
  store i8* %call39, i8** %label, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %34 to i64
  %35 = load %struct._GimpActionEntry*, %struct._GimpActionEntry** %entries.addr, align 8
  %arrayidx41 = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %35, i64 %idxprom40
  %tooltip42 = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %arrayidx41, i32 0, i32 4
  %36 = load i8*, i8** %tooltip42, align 8
  %call43 = call i8* @gettext(i8* %36) #7
  store i8* %call43, i8** %tooltip, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.35, %if.end.34
  %37 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %37 to i64
  %38 = load %struct._GimpActionEntry*, %struct._GimpActionEntry** %entries.addr, align 8
  %arrayidx46 = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %38, i64 %idxprom45
  %name47 = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %arrayidx46, i32 0, i32 0
  %39 = load i8*, i8** %name47, align 8
  %40 = load i8*, i8** %label, align 8
  %41 = load i8*, i8** %tooltip, align 8
  %42 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %42 to i64
  %43 = load %struct._GimpActionEntry*, %struct._GimpActionEntry** %entries.addr, align 8
  %arrayidx49 = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %43, i64 %idxprom48
  %stock_id = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %arrayidx49, i32 0, i32 1
  %44 = load i8*, i8** %stock_id, align 8
  %call50 = call %struct._GimpAction* @gimp_action_new(i8* %39, i8* %40, i8* %41, i8* %44)
  store %struct._GimpAction* %call50, %struct._GimpAction** %action, align 8
  %45 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %45 to i64
  %46 = load %struct._GimpActionEntry*, %struct._GimpActionEntry** %entries.addr, align 8
  %arrayidx52 = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %46, i64 %idxprom51
  %callback = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %arrayidx52, i32 0, i32 5
  %47 = load void ()*, void ()** %callback, align 8
  %tobool53 = icmp ne void ()* %47, null
  br i1 %tobool53, label %if.then.54, label %if.end.59

if.then.54:                                       ; preds = %if.end.44
  %48 = load %struct._GimpAction*, %struct._GimpAction** %action, align 8
  %49 = bitcast %struct._GimpAction* %48 to i8*
  %50 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %50 to i64
  %51 = load %struct._GimpActionEntry*, %struct._GimpActionEntry** %entries.addr, align 8
  %arrayidx56 = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %51, i64 %idxprom55
  %callback57 = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %arrayidx56, i32 0, i32 5
  %52 = load void ()*, void ()** %callback57, align 8
  %53 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %user_data = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %53, i32 0, i32 4
  %54 = load i8*, i8** %user_data, align 8
  %call58 = call i64 @g_signal_connect_data(i8* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), void ()* %52, i8* %54, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.54, %if.end.44
  %55 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %56 = bitcast %struct._GimpActionGroup* %55 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_action_group_get_type() #8
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call60)
  %57 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkActionGroup*
  %58 = load %struct._GimpAction*, %struct._GimpAction** %action, align 8
  %59 = bitcast %struct._GimpAction* %58 to %struct._GTypeInstance*
  %call62 = call i64 @gtk_action_get_type() #8
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call62)
  %60 = bitcast %struct._GTypeInstance* %call63 to %struct._GtkAction*
  %61 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %61 to i64
  %62 = load %struct._GimpActionEntry*, %struct._GimpActionEntry** %entries.addr, align 8
  %arrayidx65 = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %62, i64 %idxprom64
  %accelerator = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %arrayidx65, i32 0, i32 3
  %63 = load i8*, i8** %accelerator, align 8
  call void @gtk_action_group_add_action_with_accel(%struct._GtkActionGroup* %57, %struct._GtkAction* %60, i8* %63)
  %64 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %65 = bitcast %struct._GimpActionGroup* %64 to i8*
  %66 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @signals, i32 0, i64 0), align 4
  %67 = load %struct._GimpAction*, %struct._GimpAction** %action, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %65, i32 %66, i32 0, %struct._GimpAction* %67)
  %68 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %68 to i64
  %69 = load %struct._GimpActionEntry*, %struct._GimpActionEntry** %entries.addr, align 8
  %arrayidx67 = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %69, i64 %idxprom66
  %help_id = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %arrayidx67, i32 0, i32 6
  %70 = load i8*, i8** %help_id, align 8
  %tobool68 = icmp ne i8* %70, null
  br i1 %tobool68, label %if.then.69, label %if.end.76

if.then.69:                                       ; preds = %if.end.59
  %71 = load %struct._GimpAction*, %struct._GimpAction** %action, align 8
  %72 = bitcast %struct._GimpAction* %71 to %struct._GTypeInstance*
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 80)
  %73 = bitcast %struct._GTypeInstance* %call70 to %struct._GObject*
  %call71 = call i32 @gimp_help_id_quark() #8
  %74 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %74 to i64
  %75 = load %struct._GimpActionEntry*, %struct._GimpActionEntry** %entries.addr, align 8
  %arrayidx73 = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %75, i64 %idxprom72
  %help_id74 = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %arrayidx73, i32 0, i32 6
  %76 = load i8*, i8** %help_id74, align 8
  %call75 = call noalias i8* @g_strdup(i8* %76)
  call void @g_object_set_qdata_full(%struct._GObject* %73, i32 %call71, i8* %call75, void (i8*)* @g_free)
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.69, %if.end.59
  %77 = load %struct._GimpAction*, %struct._GimpAction** %action, align 8
  %78 = bitcast %struct._GimpAction* %77 to i8*
  call void @g_object_unref(i8* %78)
  br label %for.inc

for.inc:                                          ; preds = %if.end.76, %if.then.17
  %79 = load i32, i32* %i, align 4
  %inc = add nsw i32 %79, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else.9, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_action_group_check_unique_action(%struct._GimpActionGroup* %group, i8* %action_name) #3 {
entry:
  %retval = alloca i32, align 4
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %action_name.addr = alloca i8*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %action_name, i8** %action_name.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %1 = bitcast %struct._GimpActionGroup* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_action_group_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkActionGroup*
  %3 = load i8*, i8** %action_name.addr, align 8
  %call2 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %2, i8* %3)
  %tobool = icmp ne %struct._GtkAction* %call2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %action_name.addr, align 8
  %5 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %6 = bitcast %struct._GimpActionGroup* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_action_group_get_type() #8
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkActionGroup*
  %call5 = call i8* @gtk_action_group_get_name(%struct._GtkActionGroup* %7)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.39, i32 0, i32 0), i8* %4, i8* %call5)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare i8* @g_dpgettext2(i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare %struct._GimpAction* @gimp_action_new(i8*, i8*, i8*, i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gtk_action_group_add_action_with_accel(%struct._GtkActionGroup*, %struct._GtkAction*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_action_get_type() #2

declare void @g_signal_emit(i8*, i32, i32, ...) #1

declare void @g_object_set_qdata_full(%struct._GObject*, i32, i8*, void (i8*)*) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_help_id_quark() #2

declare noalias i8* @g_strdup(i8*) #1

declare void @g_free(i8*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_action_group_add_toggle_actions(%struct._GimpActionGroup* %group, i8* %msg_context, %struct._GimpToggleActionEntry* %entries, i32 %n_entries) #3 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %msg_context.addr = alloca i8*, align 8
  %entries.addr = alloca %struct._GimpToggleActionEntry*, align 8
  %n_entries.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %action = alloca %struct._GtkToggleAction*, align 8
  %label = alloca i8*, align 8
  %tooltip = alloca i8*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %msg_context, i8** %msg_context.addr, align 8
  store %struct._GimpToggleActionEntry* %entries, %struct._GimpToggleActionEntry** %entries.addr, align 8
  store i32 %n_entries, i32* %n_entries.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %1 = bitcast %struct._GimpActionGroup* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_action_group_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_action_group_add_toggle_actions, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0))
  br label %for.end

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %n_entries.addr, align 4
  %cmp11 = icmp ult i32 %13, %14
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i8* null, i8** %tooltip, align 8
  %15 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct._GimpToggleActionEntry*, %struct._GimpToggleActionEntry** %entries.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpToggleActionEntry, %struct._GimpToggleActionEntry* %17, i64 %idxprom
  %name = getelementptr inbounds %struct._GimpToggleActionEntry, %struct._GimpToggleActionEntry* %arrayidx, i32 0, i32 0
  %18 = load i8*, i8** %name, align 8
  %call15 = call i32 @gimp_action_group_check_unique_action(%struct._GimpActionGroup* %15, i8* %18)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %for.body
  br label %for.inc

if.end.18:                                        ; preds = %for.body
  %19 = load i8*, i8** %msg_context.addr, align 8
  %tobool19 = icmp ne i8* %19, null
  br i1 %tobool19, label %if.then.20, label %if.else.35

if.then.20:                                       ; preds = %if.end.18
  %20 = load i8*, i8** %msg_context.addr, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %21 to i64
  %22 = load %struct._GimpToggleActionEntry*, %struct._GimpToggleActionEntry** %entries.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct._GimpToggleActionEntry, %struct._GimpToggleActionEntry* %22, i64 %idxprom21
  %label23 = getelementptr inbounds %struct._GimpToggleActionEntry, %struct._GimpToggleActionEntry* %arrayidx22, i32 0, i32 2
  %23 = load i8*, i8** %label23, align 8
  %call24 = call i8* @g_dpgettext2(i8* null, i8* %20, i8* %23)
  store i8* %call24, i8** %label, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %24 to i64
  %25 = load %struct._GimpToggleActionEntry*, %struct._GimpToggleActionEntry** %entries.addr, align 8
  %arrayidx26 = getelementptr inbounds %struct._GimpToggleActionEntry, %struct._GimpToggleActionEntry* %25, i64 %idxprom25
  %tooltip27 = getelementptr inbounds %struct._GimpToggleActionEntry, %struct._GimpToggleActionEntry* %arrayidx26, i32 0, i32 4
  %26 = load i8*, i8** %tooltip27, align 8
  %tobool28 = icmp ne i8* %26, null
  br i1 %tobool28, label %if.then.29, label %if.end.34

if.then.29:                                       ; preds = %if.then.20
  %27 = load i8*, i8** %msg_context.addr, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %28 to i64
  %29 = load %struct._GimpToggleActionEntry*, %struct._GimpToggleActionEntry** %entries.addr, align 8
  %arrayidx31 = getelementptr inbounds %struct._GimpToggleActionEntry, %struct._GimpToggleActionEntry* %29, i64 %idxprom30
  %tooltip32 = getelementptr inbounds %struct._GimpToggleActionEntry, %struct._GimpToggleActionEntry* %arrayidx31, i32 0, i32 4
  %30 = load i8*, i8** %tooltip32, align 8
  %call33 = call i8* @g_dpgettext2(i8* null, i8* %27, i8* %30)
  store i8* %call33, i8** %tooltip, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.29, %if.then.20
  br label %if.end.44

if.else.35:                                       ; preds = %if.end.18
  %31 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %31 to i64
  %32 = load %struct._GimpToggleActionEntry*, %struct._GimpToggleActionEntry** %entries.addr, align 8
  %arrayidx37 = getelementptr inbounds %struct._GimpToggleActionEntry, %struct._GimpToggleActionEntry* %32, i64 %idxprom36
  %label38 = getelementptr inbounds %struct._GimpToggleActionEntry, %struct._GimpToggleActionEntry* %arrayidx37, i32 0, i32 2
  %33 = load i8*, i8** %label38, align 8
  %call39 = call i8* @gettext(i8* %33) #7
  store i8* %call39, i8** %label, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %34 to i64
  %35 = load %struct._GimpToggleActionEntry*, %struct._GimpToggleActionEntry** %entries.addr, align 8
  %arrayidx41 = getelementptr inbounds %struct._GimpToggleActionEntry, %struct._GimpToggleActionEntry* %35, i64 %idxprom40
  %tooltip42 = getelementptr inbounds %struct._GimpToggleActionEntry, %struct._GimpToggleActionEntry* %arrayidx41, i32 0, i32 4
  %36 = load i8*, i8** %tooltip42, align 8
  %call43 = call i8* @gettext(i8* %36) #7
  store i8* %call43, i8** %tooltip, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.35, %if.end.34
  %37 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %37 to i64
  %38 = load %struct._GimpToggleActionEntry*, %struct._GimpToggleActionEntry** %entries.addr, align 8
  %arrayidx46 = getelementptr inbounds %struct._GimpToggleActionEntry, %struct._GimpToggleActionEntry* %38, i64 %idxprom45
  %name47 = getelementptr inbounds %struct._GimpToggleActionEntry, %struct._GimpToggleActionEntry* %arrayidx46, i32 0, i32 0
  %39 = load i8*, i8** %name47, align 8
  %40 = load i8*, i8** %label, align 8
  %41 = load i8*, i8** %tooltip, align 8
  %42 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %42 to i64
  %43 = load %struct._GimpToggleActionEntry*, %struct._GimpToggleActionEntry** %entries.addr, align 8
  %arrayidx49 = getelementptr inbounds %struct._GimpToggleActionEntry, %struct._GimpToggleActionEntry* %43, i64 %idxprom48
  %stock_id = getelementptr inbounds %struct._GimpToggleActionEntry, %struct._GimpToggleActionEntry* %arrayidx49, i32 0, i32 1
  %44 = load i8*, i8** %stock_id, align 8
  %call50 = call %struct._GtkToggleAction* @gimp_toggle_action_new(i8* %39, i8* %40, i8* %41, i8* %44)
  store %struct._GtkToggleAction* %call50, %struct._GtkToggleAction** %action, align 8
  %45 = load %struct._GtkToggleAction*, %struct._GtkToggleAction** %action, align 8
  %46 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %46 to i64
  %47 = load %struct._GimpToggleActionEntry*, %struct._GimpToggleActionEntry** %entries.addr, align 8
  %arrayidx52 = getelementptr inbounds %struct._GimpToggleActionEntry, %struct._GimpToggleActionEntry* %47, i64 %idxprom51
  %is_active = getelementptr inbounds %struct._GimpToggleActionEntry, %struct._GimpToggleActionEntry* %arrayidx52, i32 0, i32 6
  %48 = load i32, i32* %is_active, align 4
  call void @gtk_toggle_action_set_active(%struct._GtkToggleAction* %45, i32 %48)
  %49 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %49 to i64
  %50 = load %struct._GimpToggleActionEntry*, %struct._GimpToggleActionEntry** %entries.addr, align 8
  %arrayidx54 = getelementptr inbounds %struct._GimpToggleActionEntry, %struct._GimpToggleActionEntry* %50, i64 %idxprom53
  %callback = getelementptr inbounds %struct._GimpToggleActionEntry, %struct._GimpToggleActionEntry* %arrayidx54, i32 0, i32 5
  %51 = load void ()*, void ()** %callback, align 8
  %tobool55 = icmp ne void ()* %51, null
  br i1 %tobool55, label %if.then.56, label %if.end.61

if.then.56:                                       ; preds = %if.end.44
  %52 = load %struct._GtkToggleAction*, %struct._GtkToggleAction** %action, align 8
  %53 = bitcast %struct._GtkToggleAction* %52 to i8*
  %54 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %54 to i64
  %55 = load %struct._GimpToggleActionEntry*, %struct._GimpToggleActionEntry** %entries.addr, align 8
  %arrayidx58 = getelementptr inbounds %struct._GimpToggleActionEntry, %struct._GimpToggleActionEntry* %55, i64 %idxprom57
  %callback59 = getelementptr inbounds %struct._GimpToggleActionEntry, %struct._GimpToggleActionEntry* %arrayidx58, i32 0, i32 5
  %56 = load void ()*, void ()** %callback59, align 8
  %57 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %user_data = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %57, i32 0, i32 4
  %58 = load i8*, i8** %user_data, align 8
  %call60 = call i64 @g_signal_connect_data(i8* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), void ()* %56, i8* %58, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.56, %if.end.44
  %59 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %60 = bitcast %struct._GimpActionGroup* %59 to %struct._GTypeInstance*
  %call62 = call i64 @gtk_action_group_get_type() #8
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call62)
  %61 = bitcast %struct._GTypeInstance* %call63 to %struct._GtkActionGroup*
  %62 = load %struct._GtkToggleAction*, %struct._GtkToggleAction** %action, align 8
  %63 = bitcast %struct._GtkToggleAction* %62 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_action_get_type() #8
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call64)
  %64 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkAction*
  %65 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %65 to i64
  %66 = load %struct._GimpToggleActionEntry*, %struct._GimpToggleActionEntry** %entries.addr, align 8
  %arrayidx67 = getelementptr inbounds %struct._GimpToggleActionEntry, %struct._GimpToggleActionEntry* %66, i64 %idxprom66
  %accelerator = getelementptr inbounds %struct._GimpToggleActionEntry, %struct._GimpToggleActionEntry* %arrayidx67, i32 0, i32 3
  %67 = load i8*, i8** %accelerator, align 8
  call void @gtk_action_group_add_action_with_accel(%struct._GtkActionGroup* %61, %struct._GtkAction* %64, i8* %67)
  %68 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %69 = bitcast %struct._GimpActionGroup* %68 to i8*
  %70 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @signals, i32 0, i64 0), align 4
  %71 = load %struct._GtkToggleAction*, %struct._GtkToggleAction** %action, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %69, i32 %70, i32 0, %struct._GtkToggleAction* %71)
  %72 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %72 to i64
  %73 = load %struct._GimpToggleActionEntry*, %struct._GimpToggleActionEntry** %entries.addr, align 8
  %arrayidx69 = getelementptr inbounds %struct._GimpToggleActionEntry, %struct._GimpToggleActionEntry* %73, i64 %idxprom68
  %help_id = getelementptr inbounds %struct._GimpToggleActionEntry, %struct._GimpToggleActionEntry* %arrayidx69, i32 0, i32 7
  %74 = load i8*, i8** %help_id, align 8
  %tobool70 = icmp ne i8* %74, null
  br i1 %tobool70, label %if.then.71, label %if.end.78

if.then.71:                                       ; preds = %if.end.61
  %75 = load %struct._GtkToggleAction*, %struct._GtkToggleAction** %action, align 8
  %76 = bitcast %struct._GtkToggleAction* %75 to %struct._GTypeInstance*
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 80)
  %77 = bitcast %struct._GTypeInstance* %call72 to %struct._GObject*
  %call73 = call i32 @gimp_help_id_quark() #8
  %78 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %78 to i64
  %79 = load %struct._GimpToggleActionEntry*, %struct._GimpToggleActionEntry** %entries.addr, align 8
  %arrayidx75 = getelementptr inbounds %struct._GimpToggleActionEntry, %struct._GimpToggleActionEntry* %79, i64 %idxprom74
  %help_id76 = getelementptr inbounds %struct._GimpToggleActionEntry, %struct._GimpToggleActionEntry* %arrayidx75, i32 0, i32 7
  %80 = load i8*, i8** %help_id76, align 8
  %call77 = call noalias i8* @g_strdup(i8* %80)
  call void @g_object_set_qdata_full(%struct._GObject* %77, i32 %call73, i8* %call77, void (i8*)* @g_free)
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.71, %if.end.61
  %81 = load %struct._GtkToggleAction*, %struct._GtkToggleAction** %action, align 8
  %82 = bitcast %struct._GtkToggleAction* %81 to i8*
  call void @g_object_unref(i8* %82)
  br label %for.inc

for.inc:                                          ; preds = %if.end.78, %if.then.17
  %83 = load i32, i32* %i, align 4
  %inc = add nsw i32 %83, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else.9, %for.cond
  ret void
}

declare %struct._GtkToggleAction* @gimp_toggle_action_new(i8*, i8*, i8*, i8*) #1

declare void @gtk_toggle_action_set_active(%struct._GtkToggleAction*, i32) #1

; Function Attrs: nounwind uwtable
define %struct._GSList* @gimp_action_group_add_radio_actions(%struct._GimpActionGroup* %group, i8* %msg_context, %struct._GimpRadioActionEntry* %entries, i32 %n_entries, %struct._GSList* %radio_group, i32 %value, void ()* %callback) #3 {
entry:
  %retval = alloca %struct._GSList*, align 8
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %msg_context.addr = alloca i8*, align 8
  %entries.addr = alloca %struct._GimpRadioActionEntry*, align 8
  %n_entries.addr = alloca i32, align 4
  %radio_group.addr = alloca %struct._GSList*, align 8
  %value.addr = alloca i32, align 4
  %callback.addr = alloca void ()*, align 8
  %first_action = alloca %struct._GtkRadioAction*, align 8
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %action = alloca %struct._GtkRadioAction*, align 8
  %label = alloca i8*, align 8
  %tooltip = alloca i8*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %msg_context, i8** %msg_context.addr, align 8
  store %struct._GimpRadioActionEntry* %entries, %struct._GimpRadioActionEntry** %entries.addr, align 8
  store i32 %n_entries, i32* %n_entries.addr, align 4
  store %struct._GSList* %radio_group, %struct._GSList** %radio_group.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store void ()* %callback, void ()** %callback.addr, align 8
  store %struct._GtkRadioAction* null, %struct._GtkRadioAction** %first_action, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %1 = bitcast %struct._GimpActionGroup* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_action_group_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_action_group_add_radio_actions, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GSList* null, %struct._GSList** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %n_entries.addr, align 4
  %cmp11 = icmp ult i32 %13, %14
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i8* null, i8** %tooltip, align 8
  %15 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct._GimpRadioActionEntry*, %struct._GimpRadioActionEntry** %entries.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %17, i64 %idxprom
  %name = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %arrayidx, i32 0, i32 0
  %18 = load i8*, i8** %name, align 8
  %call15 = call i32 @gimp_action_group_check_unique_action(%struct._GimpActionGroup* %15, i8* %18)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %for.body
  br label %for.inc

if.end.18:                                        ; preds = %for.body
  %19 = load i8*, i8** %msg_context.addr, align 8
  %tobool19 = icmp ne i8* %19, null
  br i1 %tobool19, label %if.then.20, label %if.else.35

if.then.20:                                       ; preds = %if.end.18
  %20 = load i8*, i8** %msg_context.addr, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %21 to i64
  %22 = load %struct._GimpRadioActionEntry*, %struct._GimpRadioActionEntry** %entries.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %22, i64 %idxprom21
  %label23 = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %arrayidx22, i32 0, i32 2
  %23 = load i8*, i8** %label23, align 8
  %call24 = call i8* @g_dpgettext2(i8* null, i8* %20, i8* %23)
  store i8* %call24, i8** %label, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %24 to i64
  %25 = load %struct._GimpRadioActionEntry*, %struct._GimpRadioActionEntry** %entries.addr, align 8
  %arrayidx26 = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %25, i64 %idxprom25
  %tooltip27 = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %arrayidx26, i32 0, i32 4
  %26 = load i8*, i8** %tooltip27, align 8
  %tobool28 = icmp ne i8* %26, null
  br i1 %tobool28, label %if.then.29, label %if.end.34

if.then.29:                                       ; preds = %if.then.20
  %27 = load i8*, i8** %msg_context.addr, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %28 to i64
  %29 = load %struct._GimpRadioActionEntry*, %struct._GimpRadioActionEntry** %entries.addr, align 8
  %arrayidx31 = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %29, i64 %idxprom30
  %tooltip32 = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %arrayidx31, i32 0, i32 4
  %30 = load i8*, i8** %tooltip32, align 8
  %call33 = call i8* @g_dpgettext2(i8* null, i8* %27, i8* %30)
  store i8* %call33, i8** %tooltip, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.29, %if.then.20
  br label %if.end.44

if.else.35:                                       ; preds = %if.end.18
  %31 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %31 to i64
  %32 = load %struct._GimpRadioActionEntry*, %struct._GimpRadioActionEntry** %entries.addr, align 8
  %arrayidx37 = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %32, i64 %idxprom36
  %label38 = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %arrayidx37, i32 0, i32 2
  %33 = load i8*, i8** %label38, align 8
  %call39 = call i8* @gettext(i8* %33) #7
  store i8* %call39, i8** %label, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %34 to i64
  %35 = load %struct._GimpRadioActionEntry*, %struct._GimpRadioActionEntry** %entries.addr, align 8
  %arrayidx41 = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %35, i64 %idxprom40
  %tooltip42 = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %arrayidx41, i32 0, i32 4
  %36 = load i8*, i8** %tooltip42, align 8
  %call43 = call i8* @gettext(i8* %36) #7
  store i8* %call43, i8** %tooltip, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.35, %if.end.34
  %37 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %37 to i64
  %38 = load %struct._GimpRadioActionEntry*, %struct._GimpRadioActionEntry** %entries.addr, align 8
  %arrayidx46 = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %38, i64 %idxprom45
  %name47 = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %arrayidx46, i32 0, i32 0
  %39 = load i8*, i8** %name47, align 8
  %40 = load i8*, i8** %label, align 8
  %41 = load i8*, i8** %tooltip, align 8
  %42 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %42 to i64
  %43 = load %struct._GimpRadioActionEntry*, %struct._GimpRadioActionEntry** %entries.addr, align 8
  %arrayidx49 = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %43, i64 %idxprom48
  %stock_id = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %arrayidx49, i32 0, i32 1
  %44 = load i8*, i8** %stock_id, align 8
  %45 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %45 to i64
  %46 = load %struct._GimpRadioActionEntry*, %struct._GimpRadioActionEntry** %entries.addr, align 8
  %arrayidx51 = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %46, i64 %idxprom50
  %value52 = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %arrayidx51, i32 0, i32 5
  %47 = load i32, i32* %value52, align 4
  %call53 = call %struct._GtkRadioAction* @gimp_radio_action_new(i8* %39, i8* %40, i8* %41, i8* %44, i32 %47)
  store %struct._GtkRadioAction* %call53, %struct._GtkRadioAction** %action, align 8
  %48 = load i32, i32* %i, align 4
  %cmp54 = icmp eq i32 %48, 0
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.44
  %49 = load %struct._GtkRadioAction*, %struct._GtkRadioAction** %action, align 8
  store %struct._GtkRadioAction* %49, %struct._GtkRadioAction** %first_action, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %if.end.44
  %50 = load %struct._GtkRadioAction*, %struct._GtkRadioAction** %action, align 8
  %51 = load %struct._GSList*, %struct._GSList** %radio_group.addr, align 8
  call void @gtk_radio_action_set_group(%struct._GtkRadioAction* %50, %struct._GSList* %51)
  %52 = load %struct._GtkRadioAction*, %struct._GtkRadioAction** %action, align 8
  %call57 = call %struct._GSList* @gtk_radio_action_get_group(%struct._GtkRadioAction* %52)
  store %struct._GSList* %call57, %struct._GSList** %radio_group.addr, align 8
  %53 = load i32, i32* %value.addr, align 4
  %54 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %54 to i64
  %55 = load %struct._GimpRadioActionEntry*, %struct._GimpRadioActionEntry** %entries.addr, align 8
  %arrayidx59 = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %55, i64 %idxprom58
  %value60 = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %arrayidx59, i32 0, i32 5
  %56 = load i32, i32* %value60, align 4
  %cmp61 = icmp eq i32 %53, %56
  br i1 %cmp61, label %if.then.62, label %if.end.65

if.then.62:                                       ; preds = %if.end.56
  %57 = load %struct._GtkRadioAction*, %struct._GtkRadioAction** %action, align 8
  %58 = bitcast %struct._GtkRadioAction* %57 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_toggle_action_get_type() #8
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call63)
  %59 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkToggleAction*
  call void @gtk_toggle_action_set_active(%struct._GtkToggleAction* %59, i32 1)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.62, %if.end.56
  %60 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %61 = bitcast %struct._GimpActionGroup* %60 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_action_group_get_type() #8
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call66)
  %62 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkActionGroup*
  %63 = load %struct._GtkRadioAction*, %struct._GtkRadioAction** %action, align 8
  %64 = bitcast %struct._GtkRadioAction* %63 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_action_get_type() #8
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call68)
  %65 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkAction*
  %66 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %66 to i64
  %67 = load %struct._GimpRadioActionEntry*, %struct._GimpRadioActionEntry** %entries.addr, align 8
  %arrayidx71 = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %67, i64 %idxprom70
  %accelerator = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %arrayidx71, i32 0, i32 3
  %68 = load i8*, i8** %accelerator, align 8
  call void @gtk_action_group_add_action_with_accel(%struct._GtkActionGroup* %62, %struct._GtkAction* %65, i8* %68)
  %69 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %70 = bitcast %struct._GimpActionGroup* %69 to i8*
  %71 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @signals, i32 0, i64 0), align 4
  %72 = load %struct._GtkRadioAction*, %struct._GtkRadioAction** %action, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %70, i32 %71, i32 0, %struct._GtkRadioAction* %72)
  %73 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %73 to i64
  %74 = load %struct._GimpRadioActionEntry*, %struct._GimpRadioActionEntry** %entries.addr, align 8
  %arrayidx73 = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %74, i64 %idxprom72
  %help_id = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %arrayidx73, i32 0, i32 6
  %75 = load i8*, i8** %help_id, align 8
  %tobool74 = icmp ne i8* %75, null
  br i1 %tobool74, label %if.then.75, label %if.end.82

if.then.75:                                       ; preds = %if.end.65
  %76 = load %struct._GtkRadioAction*, %struct._GtkRadioAction** %action, align 8
  %77 = bitcast %struct._GtkRadioAction* %76 to %struct._GTypeInstance*
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 80)
  %78 = bitcast %struct._GTypeInstance* %call76 to %struct._GObject*
  %call77 = call i32 @gimp_help_id_quark() #8
  %79 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %79 to i64
  %80 = load %struct._GimpRadioActionEntry*, %struct._GimpRadioActionEntry** %entries.addr, align 8
  %arrayidx79 = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %80, i64 %idxprom78
  %help_id80 = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %arrayidx79, i32 0, i32 6
  %81 = load i8*, i8** %help_id80, align 8
  %call81 = call noalias i8* @g_strdup(i8* %81)
  call void @g_object_set_qdata_full(%struct._GObject* %78, i32 %call77, i8* %call81, void (i8*)* @g_free)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.75, %if.end.65
  %82 = load %struct._GtkRadioAction*, %struct._GtkRadioAction** %action, align 8
  %83 = bitcast %struct._GtkRadioAction* %82 to i8*
  call void @g_object_unref(i8* %83)
  br label %for.inc

for.inc:                                          ; preds = %if.end.82, %if.then.17
  %84 = load i32, i32* %i, align 4
  %inc = add nsw i32 %84, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %85 = load void ()*, void ()** %callback.addr, align 8
  %tobool83 = icmp ne void ()* %85, null
  br i1 %tobool83, label %land.lhs.true.84, label %if.end.88

land.lhs.true.84:                                 ; preds = %for.end
  %86 = load %struct._GtkRadioAction*, %struct._GtkRadioAction** %first_action, align 8
  %tobool85 = icmp ne %struct._GtkRadioAction* %86, null
  br i1 %tobool85, label %if.then.86, label %if.end.88

if.then.86:                                       ; preds = %land.lhs.true.84
  %87 = load %struct._GtkRadioAction*, %struct._GtkRadioAction** %first_action, align 8
  %88 = bitcast %struct._GtkRadioAction* %87 to i8*
  %89 = load void ()*, void ()** %callback.addr, align 8
  %90 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %user_data = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %90, i32 0, i32 4
  %91 = load i8*, i8** %user_data, align 8
  %call87 = call i64 @g_signal_connect_data(i8* %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), void ()* %89, i8* %91, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.86, %land.lhs.true.84, %for.end
  %92 = load %struct._GSList*, %struct._GSList** %radio_group.addr, align 8
  store %struct._GSList* %92, %struct._GSList** %retval
  br label %return

return:                                           ; preds = %if.end.88, %if.else.9
  %93 = load %struct._GSList*, %struct._GSList** %retval
  ret %struct._GSList* %93
}

declare %struct._GtkRadioAction* @gimp_radio_action_new(i8*, i8*, i8*, i8*, i32) #1

declare void @gtk_radio_action_set_group(%struct._GtkRadioAction*, %struct._GSList*) #1

declare %struct._GSList* @gtk_radio_action_get_group(%struct._GtkRadioAction*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_action_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %group, i8* %msg_context, %struct._GimpEnumActionEntry* %entries, i32 %n_entries, void ()* %callback) #3 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %msg_context.addr = alloca i8*, align 8
  %entries.addr = alloca %struct._GimpEnumActionEntry*, align 8
  %n_entries.addr = alloca i32, align 4
  %callback.addr = alloca void ()*, align 8
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %action = alloca %struct._GimpEnumAction*, align 8
  %label = alloca i8*, align 8
  %tooltip = alloca i8*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %msg_context, i8** %msg_context.addr, align 8
  store %struct._GimpEnumActionEntry* %entries, %struct._GimpEnumActionEntry** %entries.addr, align 8
  store i32 %n_entries, i32* %n_entries.addr, align 4
  store void ()* %callback, void ()** %callback.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %1 = bitcast %struct._GimpActionGroup* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_action_group_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_action_group_add_enum_actions, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0))
  br label %for.end

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %n_entries.addr, align 4
  %cmp11 = icmp ult i32 %13, %14
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i8* null, i8** %tooltip, align 8
  %15 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct._GimpEnumActionEntry*, %struct._GimpEnumActionEntry** %entries.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %17, i64 %idxprom
  %name = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %arrayidx, i32 0, i32 0
  %18 = load i8*, i8** %name, align 8
  %call15 = call i32 @gimp_action_group_check_unique_action(%struct._GimpActionGroup* %15, i8* %18)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %for.body
  br label %for.inc

if.end.18:                                        ; preds = %for.body
  %19 = load i8*, i8** %msg_context.addr, align 8
  %tobool19 = icmp ne i8* %19, null
  br i1 %tobool19, label %if.then.20, label %if.else.35

if.then.20:                                       ; preds = %if.end.18
  %20 = load i8*, i8** %msg_context.addr, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %21 to i64
  %22 = load %struct._GimpEnumActionEntry*, %struct._GimpEnumActionEntry** %entries.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %22, i64 %idxprom21
  %label23 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %arrayidx22, i32 0, i32 2
  %23 = load i8*, i8** %label23, align 8
  %call24 = call i8* @g_dpgettext2(i8* null, i8* %20, i8* %23)
  store i8* %call24, i8** %label, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %24 to i64
  %25 = load %struct._GimpEnumActionEntry*, %struct._GimpEnumActionEntry** %entries.addr, align 8
  %arrayidx26 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %25, i64 %idxprom25
  %tooltip27 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %arrayidx26, i32 0, i32 4
  %26 = load i8*, i8** %tooltip27, align 8
  %tobool28 = icmp ne i8* %26, null
  br i1 %tobool28, label %if.then.29, label %if.end.34

if.then.29:                                       ; preds = %if.then.20
  %27 = load i8*, i8** %msg_context.addr, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %28 to i64
  %29 = load %struct._GimpEnumActionEntry*, %struct._GimpEnumActionEntry** %entries.addr, align 8
  %arrayidx31 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %29, i64 %idxprom30
  %tooltip32 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %arrayidx31, i32 0, i32 4
  %30 = load i8*, i8** %tooltip32, align 8
  %call33 = call i8* @g_dpgettext2(i8* null, i8* %27, i8* %30)
  store i8* %call33, i8** %tooltip, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.29, %if.then.20
  br label %if.end.44

if.else.35:                                       ; preds = %if.end.18
  %31 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %31 to i64
  %32 = load %struct._GimpEnumActionEntry*, %struct._GimpEnumActionEntry** %entries.addr, align 8
  %arrayidx37 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %32, i64 %idxprom36
  %label38 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %arrayidx37, i32 0, i32 2
  %33 = load i8*, i8** %label38, align 8
  %call39 = call i8* @gettext(i8* %33) #7
  store i8* %call39, i8** %label, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %34 to i64
  %35 = load %struct._GimpEnumActionEntry*, %struct._GimpEnumActionEntry** %entries.addr, align 8
  %arrayidx41 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %35, i64 %idxprom40
  %tooltip42 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %arrayidx41, i32 0, i32 4
  %36 = load i8*, i8** %tooltip42, align 8
  %call43 = call i8* @gettext(i8* %36) #7
  store i8* %call43, i8** %tooltip, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.35, %if.end.34
  %37 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %37 to i64
  %38 = load %struct._GimpEnumActionEntry*, %struct._GimpEnumActionEntry** %entries.addr, align 8
  %arrayidx46 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %38, i64 %idxprom45
  %name47 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %arrayidx46, i32 0, i32 0
  %39 = load i8*, i8** %name47, align 8
  %40 = load i8*, i8** %label, align 8
  %41 = load i8*, i8** %tooltip, align 8
  %42 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %42 to i64
  %43 = load %struct._GimpEnumActionEntry*, %struct._GimpEnumActionEntry** %entries.addr, align 8
  %arrayidx49 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %43, i64 %idxprom48
  %stock_id = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %arrayidx49, i32 0, i32 1
  %44 = load i8*, i8** %stock_id, align 8
  %45 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %45 to i64
  %46 = load %struct._GimpEnumActionEntry*, %struct._GimpEnumActionEntry** %entries.addr, align 8
  %arrayidx51 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %46, i64 %idxprom50
  %value = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %arrayidx51, i32 0, i32 5
  %47 = load i32, i32* %value, align 4
  %48 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %48 to i64
  %49 = load %struct._GimpEnumActionEntry*, %struct._GimpEnumActionEntry** %entries.addr, align 8
  %arrayidx53 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %49, i64 %idxprom52
  %value_variable = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %arrayidx53, i32 0, i32 6
  %50 = load i32, i32* %value_variable, align 4
  %call54 = call %struct._GimpEnumAction* @gimp_enum_action_new(i8* %39, i8* %40, i8* %41, i8* %44, i32 %47, i32 %50)
  store %struct._GimpEnumAction* %call54, %struct._GimpEnumAction** %action, align 8
  %51 = load void ()*, void ()** %callback.addr, align 8
  %tobool55 = icmp ne void ()* %51, null
  br i1 %tobool55, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.end.44
  %52 = load %struct._GimpEnumAction*, %struct._GimpEnumAction** %action, align 8
  %53 = bitcast %struct._GimpEnumAction* %52 to i8*
  %54 = load void ()*, void ()** %callback.addr, align 8
  %55 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %user_data = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %55, i32 0, i32 4
  %56 = load i8*, i8** %user_data, align 8
  %call57 = call i64 @g_signal_connect_data(i8* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), void ()* %54, i8* %56, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %if.end.44
  %57 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %58 = bitcast %struct._GimpActionGroup* %57 to %struct._GTypeInstance*
  %call59 = call i64 @gtk_action_group_get_type() #8
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call59)
  %59 = bitcast %struct._GTypeInstance* %call60 to %struct._GtkActionGroup*
  %60 = load %struct._GimpEnumAction*, %struct._GimpEnumAction** %action, align 8
  %61 = bitcast %struct._GimpEnumAction* %60 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_action_get_type() #8
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call61)
  %62 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkAction*
  %63 = load i32, i32* %i, align 4
  %idxprom63 = sext i32 %63 to i64
  %64 = load %struct._GimpEnumActionEntry*, %struct._GimpEnumActionEntry** %entries.addr, align 8
  %arrayidx64 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %64, i64 %idxprom63
  %accelerator = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %arrayidx64, i32 0, i32 3
  %65 = load i8*, i8** %accelerator, align 8
  call void @gtk_action_group_add_action_with_accel(%struct._GtkActionGroup* %59, %struct._GtkAction* %62, i8* %65)
  %66 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %67 = bitcast %struct._GimpActionGroup* %66 to i8*
  %68 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @signals, i32 0, i64 0), align 4
  %69 = load %struct._GimpEnumAction*, %struct._GimpEnumAction** %action, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %67, i32 %68, i32 0, %struct._GimpEnumAction* %69)
  %70 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %70 to i64
  %71 = load %struct._GimpEnumActionEntry*, %struct._GimpEnumActionEntry** %entries.addr, align 8
  %arrayidx66 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %71, i64 %idxprom65
  %help_id = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %arrayidx66, i32 0, i32 7
  %72 = load i8*, i8** %help_id, align 8
  %tobool67 = icmp ne i8* %72, null
  br i1 %tobool67, label %if.then.68, label %if.end.75

if.then.68:                                       ; preds = %if.end.58
  %73 = load %struct._GimpEnumAction*, %struct._GimpEnumAction** %action, align 8
  %74 = bitcast %struct._GimpEnumAction* %73 to %struct._GTypeInstance*
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 80)
  %75 = bitcast %struct._GTypeInstance* %call69 to %struct._GObject*
  %call70 = call i32 @gimp_help_id_quark() #8
  %76 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %76 to i64
  %77 = load %struct._GimpEnumActionEntry*, %struct._GimpEnumActionEntry** %entries.addr, align 8
  %arrayidx72 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %77, i64 %idxprom71
  %help_id73 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %arrayidx72, i32 0, i32 7
  %78 = load i8*, i8** %help_id73, align 8
  %call74 = call noalias i8* @g_strdup(i8* %78)
  call void @g_object_set_qdata_full(%struct._GObject* %75, i32 %call70, i8* %call74, void (i8*)* @g_free)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.68, %if.end.58
  %79 = load %struct._GimpEnumAction*, %struct._GimpEnumAction** %action, align 8
  %80 = bitcast %struct._GimpEnumAction* %79 to i8*
  call void @g_object_unref(i8* %80)
  br label %for.inc

for.inc:                                          ; preds = %if.end.75, %if.then.17
  %81 = load i32, i32* %i, align 4
  %inc = add nsw i32 %81, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else.9, %for.cond
  ret void
}

declare %struct._GimpEnumAction* @gimp_enum_action_new(i8*, i8*, i8*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_action_group_add_string_actions(%struct._GimpActionGroup* %group, i8* %msg_context, %struct._GimpStringActionEntry* %entries, i32 %n_entries, void ()* %callback) #3 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %msg_context.addr = alloca i8*, align 8
  %entries.addr = alloca %struct._GimpStringActionEntry*, align 8
  %n_entries.addr = alloca i32, align 4
  %callback.addr = alloca void ()*, align 8
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %action = alloca %struct._GimpStringAction*, align 8
  %label = alloca i8*, align 8
  %tooltip = alloca i8*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %msg_context, i8** %msg_context.addr, align 8
  store %struct._GimpStringActionEntry* %entries, %struct._GimpStringActionEntry** %entries.addr, align 8
  store i32 %n_entries, i32* %n_entries.addr, align 4
  store void ()* %callback, void ()** %callback.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %1 = bitcast %struct._GimpActionGroup* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_action_group_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_action_group_add_string_actions, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0))
  br label %for.end

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %n_entries.addr, align 4
  %cmp11 = icmp ult i32 %13, %14
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i8* null, i8** %tooltip, align 8
  %15 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct._GimpStringActionEntry*, %struct._GimpStringActionEntry** %entries.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpStringActionEntry, %struct._GimpStringActionEntry* %17, i64 %idxprom
  %name = getelementptr inbounds %struct._GimpStringActionEntry, %struct._GimpStringActionEntry* %arrayidx, i32 0, i32 0
  %18 = load i8*, i8** %name, align 8
  %call15 = call i32 @gimp_action_group_check_unique_action(%struct._GimpActionGroup* %15, i8* %18)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %for.body
  br label %for.inc

if.end.18:                                        ; preds = %for.body
  %19 = load i8*, i8** %msg_context.addr, align 8
  %tobool19 = icmp ne i8* %19, null
  br i1 %tobool19, label %if.then.20, label %if.else.35

if.then.20:                                       ; preds = %if.end.18
  %20 = load i8*, i8** %msg_context.addr, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %21 to i64
  %22 = load %struct._GimpStringActionEntry*, %struct._GimpStringActionEntry** %entries.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct._GimpStringActionEntry, %struct._GimpStringActionEntry* %22, i64 %idxprom21
  %label23 = getelementptr inbounds %struct._GimpStringActionEntry, %struct._GimpStringActionEntry* %arrayidx22, i32 0, i32 2
  %23 = load i8*, i8** %label23, align 8
  %call24 = call i8* @g_dpgettext2(i8* null, i8* %20, i8* %23)
  store i8* %call24, i8** %label, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %24 to i64
  %25 = load %struct._GimpStringActionEntry*, %struct._GimpStringActionEntry** %entries.addr, align 8
  %arrayidx26 = getelementptr inbounds %struct._GimpStringActionEntry, %struct._GimpStringActionEntry* %25, i64 %idxprom25
  %tooltip27 = getelementptr inbounds %struct._GimpStringActionEntry, %struct._GimpStringActionEntry* %arrayidx26, i32 0, i32 4
  %26 = load i8*, i8** %tooltip27, align 8
  %tobool28 = icmp ne i8* %26, null
  br i1 %tobool28, label %if.then.29, label %if.end.34

if.then.29:                                       ; preds = %if.then.20
  %27 = load i8*, i8** %msg_context.addr, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %28 to i64
  %29 = load %struct._GimpStringActionEntry*, %struct._GimpStringActionEntry** %entries.addr, align 8
  %arrayidx31 = getelementptr inbounds %struct._GimpStringActionEntry, %struct._GimpStringActionEntry* %29, i64 %idxprom30
  %tooltip32 = getelementptr inbounds %struct._GimpStringActionEntry, %struct._GimpStringActionEntry* %arrayidx31, i32 0, i32 4
  %30 = load i8*, i8** %tooltip32, align 8
  %call33 = call i8* @g_dpgettext2(i8* null, i8* %27, i8* %30)
  store i8* %call33, i8** %tooltip, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.29, %if.then.20
  br label %if.end.44

if.else.35:                                       ; preds = %if.end.18
  %31 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %31 to i64
  %32 = load %struct._GimpStringActionEntry*, %struct._GimpStringActionEntry** %entries.addr, align 8
  %arrayidx37 = getelementptr inbounds %struct._GimpStringActionEntry, %struct._GimpStringActionEntry* %32, i64 %idxprom36
  %label38 = getelementptr inbounds %struct._GimpStringActionEntry, %struct._GimpStringActionEntry* %arrayidx37, i32 0, i32 2
  %33 = load i8*, i8** %label38, align 8
  %call39 = call i8* @gettext(i8* %33) #7
  store i8* %call39, i8** %label, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %34 to i64
  %35 = load %struct._GimpStringActionEntry*, %struct._GimpStringActionEntry** %entries.addr, align 8
  %arrayidx41 = getelementptr inbounds %struct._GimpStringActionEntry, %struct._GimpStringActionEntry* %35, i64 %idxprom40
  %tooltip42 = getelementptr inbounds %struct._GimpStringActionEntry, %struct._GimpStringActionEntry* %arrayidx41, i32 0, i32 4
  %36 = load i8*, i8** %tooltip42, align 8
  %call43 = call i8* @gettext(i8* %36) #7
  store i8* %call43, i8** %tooltip, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.35, %if.end.34
  %37 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %37 to i64
  %38 = load %struct._GimpStringActionEntry*, %struct._GimpStringActionEntry** %entries.addr, align 8
  %arrayidx46 = getelementptr inbounds %struct._GimpStringActionEntry, %struct._GimpStringActionEntry* %38, i64 %idxprom45
  %name47 = getelementptr inbounds %struct._GimpStringActionEntry, %struct._GimpStringActionEntry* %arrayidx46, i32 0, i32 0
  %39 = load i8*, i8** %name47, align 8
  %40 = load i8*, i8** %label, align 8
  %41 = load i8*, i8** %tooltip, align 8
  %42 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %42 to i64
  %43 = load %struct._GimpStringActionEntry*, %struct._GimpStringActionEntry** %entries.addr, align 8
  %arrayidx49 = getelementptr inbounds %struct._GimpStringActionEntry, %struct._GimpStringActionEntry* %43, i64 %idxprom48
  %stock_id = getelementptr inbounds %struct._GimpStringActionEntry, %struct._GimpStringActionEntry* %arrayidx49, i32 0, i32 1
  %44 = load i8*, i8** %stock_id, align 8
  %45 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %45 to i64
  %46 = load %struct._GimpStringActionEntry*, %struct._GimpStringActionEntry** %entries.addr, align 8
  %arrayidx51 = getelementptr inbounds %struct._GimpStringActionEntry, %struct._GimpStringActionEntry* %46, i64 %idxprom50
  %value = getelementptr inbounds %struct._GimpStringActionEntry, %struct._GimpStringActionEntry* %arrayidx51, i32 0, i32 5
  %47 = load i8*, i8** %value, align 8
  %call52 = call %struct._GimpStringAction* @gimp_string_action_new(i8* %39, i8* %40, i8* %41, i8* %44, i8* %47)
  store %struct._GimpStringAction* %call52, %struct._GimpStringAction** %action, align 8
  %48 = load void ()*, void ()** %callback.addr, align 8
  %tobool53 = icmp ne void ()* %48, null
  br i1 %tobool53, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %if.end.44
  %49 = load %struct._GimpStringAction*, %struct._GimpStringAction** %action, align 8
  %50 = bitcast %struct._GimpStringAction* %49 to i8*
  %51 = load void ()*, void ()** %callback.addr, align 8
  %52 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %user_data = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %52, i32 0, i32 4
  %53 = load i8*, i8** %user_data, align 8
  %call55 = call i64 @g_signal_connect_data(i8* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), void ()* %51, i8* %53, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %if.end.44
  %54 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %55 = bitcast %struct._GimpActionGroup* %54 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_action_group_get_type() #8
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call57)
  %56 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkActionGroup*
  %57 = load %struct._GimpStringAction*, %struct._GimpStringAction** %action, align 8
  %58 = bitcast %struct._GimpStringAction* %57 to %struct._GTypeInstance*
  %call59 = call i64 @gtk_action_get_type() #8
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call59)
  %59 = bitcast %struct._GTypeInstance* %call60 to %struct._GtkAction*
  %60 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %60 to i64
  %61 = load %struct._GimpStringActionEntry*, %struct._GimpStringActionEntry** %entries.addr, align 8
  %arrayidx62 = getelementptr inbounds %struct._GimpStringActionEntry, %struct._GimpStringActionEntry* %61, i64 %idxprom61
  %accelerator = getelementptr inbounds %struct._GimpStringActionEntry, %struct._GimpStringActionEntry* %arrayidx62, i32 0, i32 3
  %62 = load i8*, i8** %accelerator, align 8
  call void @gtk_action_group_add_action_with_accel(%struct._GtkActionGroup* %56, %struct._GtkAction* %59, i8* %62)
  %63 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %64 = bitcast %struct._GimpActionGroup* %63 to i8*
  %65 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @signals, i32 0, i64 0), align 4
  %66 = load %struct._GimpStringAction*, %struct._GimpStringAction** %action, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %64, i32 %65, i32 0, %struct._GimpStringAction* %66)
  %67 = load i32, i32* %i, align 4
  %idxprom63 = sext i32 %67 to i64
  %68 = load %struct._GimpStringActionEntry*, %struct._GimpStringActionEntry** %entries.addr, align 8
  %arrayidx64 = getelementptr inbounds %struct._GimpStringActionEntry, %struct._GimpStringActionEntry* %68, i64 %idxprom63
  %help_id = getelementptr inbounds %struct._GimpStringActionEntry, %struct._GimpStringActionEntry* %arrayidx64, i32 0, i32 6
  %69 = load i8*, i8** %help_id, align 8
  %tobool65 = icmp ne i8* %69, null
  br i1 %tobool65, label %if.then.66, label %if.end.73

if.then.66:                                       ; preds = %if.end.56
  %70 = load %struct._GimpStringAction*, %struct._GimpStringAction** %action, align 8
  %71 = bitcast %struct._GimpStringAction* %70 to %struct._GTypeInstance*
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 80)
  %72 = bitcast %struct._GTypeInstance* %call67 to %struct._GObject*
  %call68 = call i32 @gimp_help_id_quark() #8
  %73 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %73 to i64
  %74 = load %struct._GimpStringActionEntry*, %struct._GimpStringActionEntry** %entries.addr, align 8
  %arrayidx70 = getelementptr inbounds %struct._GimpStringActionEntry, %struct._GimpStringActionEntry* %74, i64 %idxprom69
  %help_id71 = getelementptr inbounds %struct._GimpStringActionEntry, %struct._GimpStringActionEntry* %arrayidx70, i32 0, i32 6
  %75 = load i8*, i8** %help_id71, align 8
  %call72 = call noalias i8* @g_strdup(i8* %75)
  call void @g_object_set_qdata_full(%struct._GObject* %72, i32 %call68, i8* %call72, void (i8*)* @g_free)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.66, %if.end.56
  %76 = load %struct._GimpStringAction*, %struct._GimpStringAction** %action, align 8
  %77 = bitcast %struct._GimpStringAction* %76 to i8*
  call void @g_object_unref(i8* %77)
  br label %for.inc

for.inc:                                          ; preds = %if.end.73, %if.then.17
  %78 = load i32, i32* %i, align 4
  %inc = add nsw i32 %78, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else.9, %for.cond
  ret void
}

declare %struct._GimpStringAction* @gimp_string_action_new(i8*, i8*, i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_action_group_add_plug_in_actions(%struct._GimpActionGroup* %group, %struct._GimpPlugInActionEntry* %entries, i32 %n_entries, void ()* %callback) #3 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %entries.addr = alloca %struct._GimpPlugInActionEntry*, align 8
  %n_entries.addr = alloca i32, align 4
  %callback.addr = alloca void ()*, align 8
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %action = alloca %struct._GimpPlugInAction*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store %struct._GimpPlugInActionEntry* %entries, %struct._GimpPlugInActionEntry** %entries.addr, align 8
  store i32 %n_entries, i32* %n_entries.addr, align 4
  store void ()* %callback, void ()** %callback.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %1 = bitcast %struct._GimpActionGroup* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_action_group_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_action_group_add_plug_in_actions, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0))
  br label %for.end

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %n_entries.addr, align 4
  %cmp11 = icmp ult i32 %13, %14
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct._GimpPlugInActionEntry*, %struct._GimpPlugInActionEntry** %entries.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %17, i64 %idxprom
  %name = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %arrayidx, i32 0, i32 0
  %18 = load i8*, i8** %name, align 8
  %call13 = call i32 @gimp_action_group_check_unique_action(%struct._GimpActionGroup* %15, i8* %18)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %for.body
  br label %for.inc

if.end.16:                                        ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %19 to i64
  %20 = load %struct._GimpPlugInActionEntry*, %struct._GimpPlugInActionEntry** %entries.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %20, i64 %idxprom17
  %name19 = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %arrayidx18, i32 0, i32 0
  %21 = load i8*, i8** %name19, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %22 to i64
  %23 = load %struct._GimpPlugInActionEntry*, %struct._GimpPlugInActionEntry** %entries.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %23, i64 %idxprom20
  %label = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %arrayidx21, i32 0, i32 2
  %24 = load i8*, i8** %label, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %25 to i64
  %26 = load %struct._GimpPlugInActionEntry*, %struct._GimpPlugInActionEntry** %entries.addr, align 8
  %arrayidx23 = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %26, i64 %idxprom22
  %tooltip = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %arrayidx23, i32 0, i32 4
  %27 = load i8*, i8** %tooltip, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %28 to i64
  %29 = load %struct._GimpPlugInActionEntry*, %struct._GimpPlugInActionEntry** %entries.addr, align 8
  %arrayidx25 = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %29, i64 %idxprom24
  %stock_id = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %arrayidx25, i32 0, i32 1
  %30 = load i8*, i8** %stock_id, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %31 to i64
  %32 = load %struct._GimpPlugInActionEntry*, %struct._GimpPlugInActionEntry** %entries.addr, align 8
  %arrayidx27 = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %32, i64 %idxprom26
  %procedure = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %arrayidx27, i32 0, i32 5
  %33 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure, align 8
  %call28 = call %struct._GimpPlugInAction* @gimp_plug_in_action_new(i8* %21, i8* %24, i8* %27, i8* %30, %struct._GimpPlugInProcedure* %33)
  store %struct._GimpPlugInAction* %call28, %struct._GimpPlugInAction** %action, align 8
  %34 = load void ()*, void ()** %callback.addr, align 8
  %tobool29 = icmp ne void ()* %34, null
  br i1 %tobool29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.16
  %35 = load %struct._GimpPlugInAction*, %struct._GimpPlugInAction** %action, align 8
  %36 = bitcast %struct._GimpPlugInAction* %35 to i8*
  %37 = load void ()*, void ()** %callback.addr, align 8
  %38 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %user_data = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %38, i32 0, i32 4
  %39 = load i8*, i8** %user_data, align 8
  %call31 = call i64 @g_signal_connect_data(i8* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), void ()* %37, i8* %39, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.end.16
  %40 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %41 = bitcast %struct._GimpActionGroup* %40 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_action_group_get_type() #8
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call33)
  %42 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkActionGroup*
  %43 = load %struct._GimpPlugInAction*, %struct._GimpPlugInAction** %action, align 8
  %44 = bitcast %struct._GimpPlugInAction* %43 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_action_get_type() #8
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call35)
  %45 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkAction*
  %46 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %46 to i64
  %47 = load %struct._GimpPlugInActionEntry*, %struct._GimpPlugInActionEntry** %entries.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %47, i64 %idxprom37
  %accelerator = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %arrayidx38, i32 0, i32 3
  %48 = load i8*, i8** %accelerator, align 8
  call void @gtk_action_group_add_action_with_accel(%struct._GtkActionGroup* %42, %struct._GtkAction* %45, i8* %48)
  %49 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %50 = bitcast %struct._GimpActionGroup* %49 to i8*
  %51 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @signals, i32 0, i64 0), align 4
  %52 = load %struct._GimpPlugInAction*, %struct._GimpPlugInAction** %action, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %50, i32 %51, i32 0, %struct._GimpPlugInAction* %52)
  %53 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %53 to i64
  %54 = load %struct._GimpPlugInActionEntry*, %struct._GimpPlugInActionEntry** %entries.addr, align 8
  %arrayidx40 = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %54, i64 %idxprom39
  %help_id = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %arrayidx40, i32 0, i32 6
  %55 = load i8*, i8** %help_id, align 8
  %tobool41 = icmp ne i8* %55, null
  br i1 %tobool41, label %if.then.42, label %if.end.49

if.then.42:                                       ; preds = %if.end.32
  %56 = load %struct._GimpPlugInAction*, %struct._GimpPlugInAction** %action, align 8
  %57 = bitcast %struct._GimpPlugInAction* %56 to %struct._GTypeInstance*
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 80)
  %58 = bitcast %struct._GTypeInstance* %call43 to %struct._GObject*
  %call44 = call i32 @gimp_help_id_quark() #8
  %59 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %59 to i64
  %60 = load %struct._GimpPlugInActionEntry*, %struct._GimpPlugInActionEntry** %entries.addr, align 8
  %arrayidx46 = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %60, i64 %idxprom45
  %help_id47 = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %arrayidx46, i32 0, i32 6
  %61 = load i8*, i8** %help_id47, align 8
  %call48 = call noalias i8* @g_strdup(i8* %61)
  call void @g_object_set_qdata_full(%struct._GObject* %58, i32 %call44, i8* %call48, void (i8*)* @g_free)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.42, %if.end.32
  %62 = load %struct._GimpPlugInAction*, %struct._GimpPlugInAction** %action, align 8
  %63 = bitcast %struct._GimpPlugInAction* %62 to i8*
  call void @g_object_unref(i8* %63)
  br label %for.inc

for.inc:                                          ; preds = %if.end.49, %if.then.15
  %64 = load i32, i32* %i, align 4
  %inc = add nsw i32 %64, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else.9, %for.cond
  ret void
}

declare %struct._GimpPlugInAction* @gimp_plug_in_action_new(i8*, i8*, i8*, i8*, %struct._GimpPlugInProcedure*) #1

; Function Attrs: nounwind uwtable
define void @gimp_action_group_activate_action(%struct._GimpActionGroup* %group, i8* %action_name) #3 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %action_name.addr = alloca i8*, align 8
  %action = alloca %struct._GtkAction*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %action_name, i8** %action_name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %1 = bitcast %struct._GimpActionGroup* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_action_group_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_action_group_activate_action, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %action_name.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_action_group_activate_action, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %15 = bitcast %struct._GimpActionGroup* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_action_group_get_type() #8
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkActionGroup*
  %17 = load i8*, i8** %action_name.addr, align 8
  %call19 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %16, i8* %17)
  store %struct._GtkAction* %call19, %struct._GtkAction** %action, align 8
  %18 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %tobool20 = icmp ne %struct._GtkAction* %18, null
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %do.end.16
  %19 = load i8*, i8** %action_name.addr, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_action_group_activate_action, i32 0, i32 0), i8* %19)
  br label %return

if.end.22:                                        ; preds = %do.end.16
  %20 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  call void @gtk_action_activate(%struct._GtkAction* %20)
  br label %return

return:                                           ; preds = %if.end.22, %if.then.21, %if.else.14, %if.else.9
  ret void
}

declare %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup*, i8*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare void @gtk_action_activate(%struct._GtkAction*) #1

; Function Attrs: nounwind uwtable
define void @gimp_action_group_set_action_visible(%struct._GimpActionGroup* %group, i8* %action_name, i32 %visible) #3 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %action_name.addr = alloca i8*, align 8
  %visible.addr = alloca i32, align 4
  %action = alloca %struct._GtkAction*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %action_name, i8** %action_name.addr, align 8
  store i32 %visible, i32* %visible.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %1 = bitcast %struct._GimpActionGroup* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_action_group_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_action_group_set_action_visible, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %action_name.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_action_group_set_action_visible, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %15 = bitcast %struct._GimpActionGroup* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_action_group_get_type() #8
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkActionGroup*
  %17 = load i8*, i8** %action_name.addr, align 8
  %call19 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %16, i8* %17)
  store %struct._GtkAction* %call19, %struct._GtkAction** %action, align 8
  %18 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %tobool20 = icmp ne %struct._GtkAction* %18, null
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %do.end.16
  %19 = load i8*, i8** %action_name.addr, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_action_group_set_action_visible, i32 0, i32 0), i8* %19)
  br label %return

if.end.22:                                        ; preds = %do.end.16
  %20 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %21 = load i32, i32* %visible.addr, align 4
  call void @gtk_action_set_visible(%struct._GtkAction* %20, i32 %21)
  br label %return

return:                                           ; preds = %if.end.22, %if.then.21, %if.else.14, %if.else.9
  ret void
}

declare void @gtk_action_set_visible(%struct._GtkAction*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %group, i8* %action_name, i32 %sensitive) #3 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %action_name.addr = alloca i8*, align 8
  %sensitive.addr = alloca i32, align 4
  %action = alloca %struct._GtkAction*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %action_name, i8** %action_name.addr, align 8
  store i32 %sensitive, i32* %sensitive.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %1 = bitcast %struct._GimpActionGroup* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_action_group_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_action_group_set_action_sensitive, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %action_name.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_action_group_set_action_sensitive, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %15 = bitcast %struct._GimpActionGroup* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_action_group_get_type() #8
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkActionGroup*
  %17 = load i8*, i8** %action_name.addr, align 8
  %call19 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %16, i8* %17)
  store %struct._GtkAction* %call19, %struct._GtkAction** %action, align 8
  %18 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %tobool20 = icmp ne %struct._GtkAction* %18, null
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %do.end.16
  %19 = load i8*, i8** %action_name.addr, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_action_group_set_action_sensitive, i32 0, i32 0), i8* %19)
  br label %return

if.end.22:                                        ; preds = %do.end.16
  %20 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %21 = load i32, i32* %sensitive.addr, align 4
  call void @gtk_action_set_sensitive(%struct._GtkAction* %20, i32 %21)
  br label %return

return:                                           ; preds = %if.end.22, %if.then.21, %if.else.14, %if.else.9
  ret void
}

declare void @gtk_action_set_sensitive(%struct._GtkAction*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %group, i8* %action_name, i32 %active) #3 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %action_name.addr = alloca i8*, align 8
  %active.addr = alloca i32, align 4
  %action = alloca %struct._GtkAction*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst24 = alloca %struct._GTypeInstance*, align 8
  %__t26 = alloca i64, align 8
  %__r29 = alloca i32, align 4
  %tmp44 = alloca i32, align 4
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %action_name, i8** %action_name.addr, align 8
  store i32 %active, i32* %active.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %1 = bitcast %struct._GimpActionGroup* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_action_group_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_action_group_set_action_active, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %action_name.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_action_group_set_action_active, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %15 = bitcast %struct._GimpActionGroup* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_action_group_get_type() #8
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkActionGroup*
  %17 = load i8*, i8** %action_name.addr, align 8
  %call19 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %16, i8* %17)
  store %struct._GtkAction* %call19, %struct._GtkAction** %action, align 8
  %18 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %tobool20 = icmp ne %struct._GtkAction* %18, null
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %do.end.16
  %19 = load i8*, i8** %action_name.addr, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_action_group_set_action_active, i32 0, i32 0), i8* %19)
  br label %return

if.end.22:                                        ; preds = %do.end.16
  %20 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %21 = bitcast %struct._GtkAction* %20 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %21, %struct._GTypeInstance** %__inst24, align 8
  %call27 = call i64 @gtk_toggle_action_get_type() #8
  store i64 %call27, i64* %__t26, align 8
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst24, align 8
  %tobool30 = icmp ne %struct._GTypeInstance* %22, null
  br i1 %tobool30, label %if.else.32, label %if.then.31

if.then.31:                                       ; preds = %if.end.22
  store i32 0, i32* %__r29, align 4
  br label %if.end.43

if.else.32:                                       ; preds = %if.end.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst24, align 8
  %g_class33 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class33, align 8
  %tobool34 = icmp ne %struct._GTypeClass* %24, null
  br i1 %tobool34, label %land.lhs.true.35, label %if.else.40

land.lhs.true.35:                                 ; preds = %if.else.32
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst24, align 8
  %g_class36 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %25, i32 0, i32 0
  %26 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class36, align 8
  %g_type37 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %26, i32 0, i32 0
  %27 = load i64, i64* %g_type37, align 8
  %28 = load i64, i64* %__t26, align 8
  %cmp38 = icmp eq i64 %27, %28
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %land.lhs.true.35
  store i32 1, i32* %__r29, align 4
  br label %if.end.42

if.else.40:                                       ; preds = %land.lhs.true.35, %if.else.32
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst24, align 8
  %30 = load i64, i64* %__t26, align 8
  %call41 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %29, i64 %30) #9
  store i32 %call41, i32* %__r29, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.40, %if.then.39
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.31
  %31 = load i32, i32* %__r29, align 4
  store i32 %31, i32* %tmp44
  %32 = load i32, i32* %tmp44
  %tobool45 = icmp ne i32 %32, 0
  br i1 %tobool45, label %if.end.47, label %if.then.46

if.then.46:                                       ; preds = %if.end.43
  %33 = load i8*, i8** %action_name.addr, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_action_group_set_action_active, i32 0, i32 0), i8* %33)
  br label %return

if.end.47:                                        ; preds = %if.end.43
  %34 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %35 = bitcast %struct._GtkAction* %34 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_toggle_action_get_type() #8
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call48)
  %36 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkToggleAction*
  %37 = load i32, i32* %active.addr, align 4
  %tobool50 = icmp ne i32 %37, 0
  %cond = select i1 %tobool50, i32 1, i32 0
  call void @gtk_toggle_action_set_active(%struct._GtkToggleAction* %36, i32 %cond)
  br label %return

return:                                           ; preds = %if.end.47, %if.then.46, %if.then.21, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_action_group_set_action_label(%struct._GimpActionGroup* %group, i8* %action_name, i8* %label) #3 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %action_name.addr = alloca i8*, align 8
  %label.addr = alloca i8*, align 8
  %action = alloca %struct._GtkAction*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %action_name, i8** %action_name.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %1 = bitcast %struct._GimpActionGroup* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_action_group_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_action_group_set_action_label, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %action_name.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_action_group_set_action_label, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %15 = bitcast %struct._GimpActionGroup* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_action_group_get_type() #8
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkActionGroup*
  %17 = load i8*, i8** %action_name.addr, align 8
  %call19 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %16, i8* %17)
  store %struct._GtkAction* %call19, %struct._GtkAction** %action, align 8
  %18 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %tobool20 = icmp ne %struct._GtkAction* %18, null
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %do.end.16
  %19 = load i8*, i8** %action_name.addr, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_action_group_set_action_label, i32 0, i32 0), i8* %19)
  br label %return

if.end.22:                                        ; preds = %do.end.16
  %20 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %21 = load i8*, i8** %label.addr, align 8
  call void @gtk_action_set_label(%struct._GtkAction* %20, i8* %21)
  br label %return

return:                                           ; preds = %if.end.22, %if.then.21, %if.else.14, %if.else.9
  ret void
}

declare void @gtk_action_set_label(%struct._GtkAction*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_action_group_set_action_tooltip(%struct._GimpActionGroup* %group, i8* %action_name, i8* %tooltip) #3 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %action_name.addr = alloca i8*, align 8
  %tooltip.addr = alloca i8*, align 8
  %action = alloca %struct._GtkAction*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %action_name, i8** %action_name.addr, align 8
  store i8* %tooltip, i8** %tooltip.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %1 = bitcast %struct._GimpActionGroup* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_action_group_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_action_group_set_action_tooltip, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %action_name.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_action_group_set_action_tooltip, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %15 = bitcast %struct._GimpActionGroup* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_action_group_get_type() #8
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkActionGroup*
  %17 = load i8*, i8** %action_name.addr, align 8
  %call19 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %16, i8* %17)
  store %struct._GtkAction* %call19, %struct._GtkAction** %action, align 8
  %18 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %tobool20 = icmp ne %struct._GtkAction* %18, null
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %do.end.16
  %19 = load i8*, i8** %action_name.addr, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_action_group_set_action_tooltip, i32 0, i32 0), i8* %19)
  br label %return

if.end.22:                                        ; preds = %do.end.16
  %20 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %21 = load i8*, i8** %tooltip.addr, align 8
  call void @gtk_action_set_tooltip(%struct._GtkAction* %20, i8* %21)
  br label %return

return:                                           ; preds = %if.end.22, %if.then.21, %if.else.14, %if.else.9
  ret void
}

declare void @gtk_action_set_tooltip(%struct._GtkAction*, i8*) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_action_group_get_action_tooltip(%struct._GimpActionGroup* %group, i8* %action_name) #3 {
entry:
  %retval = alloca i8*, align 8
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %action_name.addr = alloca i8*, align 8
  %action = alloca %struct._GtkAction*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %action_name, i8** %action_name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %1 = bitcast %struct._GimpActionGroup* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_action_group_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_action_group_get_action_tooltip, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %action_name.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_action_group_get_action_tooltip, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %15 = bitcast %struct._GimpActionGroup* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_action_group_get_type() #8
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkActionGroup*
  %17 = load i8*, i8** %action_name.addr, align 8
  %call19 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %16, i8* %17)
  store %struct._GtkAction* %call19, %struct._GtkAction** %action, align 8
  %18 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %tobool20 = icmp ne %struct._GtkAction* %18, null
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %do.end.16
  %19 = load i8*, i8** %action_name.addr, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_action_group_get_action_tooltip, i32 0, i32 0), i8* %19)
  store i8* null, i8** %retval
  br label %return

if.end.22:                                        ; preds = %do.end.16
  %20 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %call23 = call i8* @gtk_action_get_tooltip(%struct._GtkAction* %20)
  store i8* %call23, i8** %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.21, %if.else.14, %if.else.9
  %21 = load i8*, i8** %retval
  ret i8* %21
}

declare i8* @gtk_action_get_tooltip(%struct._GtkAction*) #1

; Function Attrs: nounwind uwtable
define void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %group, i8* %action_name, %struct._GimpRGB* %color, i32 %set_label) #3 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %action_name.addr = alloca i8*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %set_label.addr = alloca i32, align 4
  %action = alloca %struct._GtkAction*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst24 = alloca %struct._GTypeInstance*, align 8
  %__t26 = alloca i64, align 8
  %__r29 = alloca i32, align 4
  %tmp44 = alloca i32, align 4
  %label = alloca i8*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %action_name, i8** %action_name.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i32 %set_label, i32* %set_label.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %1 = bitcast %struct._GimpActionGroup* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_action_group_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_action_group_set_action_color, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.60

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %action_name.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_action_group_set_action_color, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.60

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %15 = bitcast %struct._GimpActionGroup* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_action_group_get_type() #8
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkActionGroup*
  %17 = load i8*, i8** %action_name.addr, align 8
  %call19 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %16, i8* %17)
  store %struct._GtkAction* %call19, %struct._GtkAction** %action, align 8
  %18 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %tobool20 = icmp ne %struct._GtkAction* %18, null
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %do.end.16
  %19 = load i8*, i8** %action_name.addr, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_action_group_set_action_color, i32 0, i32 0), i8* %19)
  br label %if.end.60

if.end.22:                                        ; preds = %do.end.16
  %20 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %21 = bitcast %struct._GtkAction* %20 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %21, %struct._GTypeInstance** %__inst24, align 8
  %call27 = call i64 @gimp_action_get_type() #8
  store i64 %call27, i64* %__t26, align 8
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst24, align 8
  %tobool30 = icmp ne %struct._GTypeInstance* %22, null
  br i1 %tobool30, label %if.else.32, label %if.then.31

if.then.31:                                       ; preds = %if.end.22
  store i32 0, i32* %__r29, align 4
  br label %if.end.43

if.else.32:                                       ; preds = %if.end.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst24, align 8
  %g_class33 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class33, align 8
  %tobool34 = icmp ne %struct._GTypeClass* %24, null
  br i1 %tobool34, label %land.lhs.true.35, label %if.else.40

land.lhs.true.35:                                 ; preds = %if.else.32
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst24, align 8
  %g_class36 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %25, i32 0, i32 0
  %26 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class36, align 8
  %g_type37 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %26, i32 0, i32 0
  %27 = load i64, i64* %g_type37, align 8
  %28 = load i64, i64* %__t26, align 8
  %cmp38 = icmp eq i64 %27, %28
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %land.lhs.true.35
  store i32 1, i32* %__r29, align 4
  br label %if.end.42

if.else.40:                                       ; preds = %land.lhs.true.35, %if.else.32
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst24, align 8
  %30 = load i64, i64* %__t26, align 8
  %call41 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %29, i64 %30) #9
  store i32 %call41, i32* %__r29, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.40, %if.then.39
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.31
  %31 = load i32, i32* %__r29, align 4
  store i32 %31, i32* %tmp44
  %32 = load i32, i32* %tmp44
  %tobool45 = icmp ne i32 %32, 0
  br i1 %tobool45, label %if.end.47, label %if.then.46

if.then.46:                                       ; preds = %if.end.43
  %33 = load i8*, i8** %action_name.addr, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_action_group_set_action_color, i32 0, i32 0), i8* %33)
  br label %if.end.60

if.end.47:                                        ; preds = %if.end.43
  %34 = load i32, i32* %set_label.addr, align 4
  %tobool48 = icmp ne i32 %34, 0
  br i1 %tobool48, label %if.then.49, label %if.else.59

if.then.49:                                       ; preds = %if.end.47
  %35 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %tobool51 = icmp ne %struct._GimpRGB* %35, null
  br i1 %tobool51, label %if.then.52, label %if.else.55

if.then.52:                                       ; preds = %if.then.49
  %call53 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i32 0, i32 0)) #7
  %36 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %36, i32 0, i32 0
  %37 = load double, double* %r, align 8
  %38 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %38, i32 0, i32 1
  %39 = load double, double* %g, align 8
  %40 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %40, i32 0, i32 2
  %41 = load double, double* %b, align 8
  %42 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %42, i32 0, i32 3
  %43 = load double, double* %a, align 8
  %call54 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call53, double %37, double %39, double %41, double %43)
  store i8* %call54, i8** %label, align 8
  br label %if.end.58

if.else.55:                                       ; preds = %if.then.49
  %call56 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0)) #7
  %call57 = call noalias i8* @g_strdup(i8* %call56)
  store i8* %call57, i8** %label, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.55, %if.then.52
  %44 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %45 = bitcast %struct._GtkAction* %44 to i8*
  %46 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %47 = load i8*, i8** %label, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), %struct._GimpRGB* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* %47, i8* null)
  %48 = load i8*, i8** %label, align 8
  call void @g_free(i8* %48)
  br label %if.end.60

if.else.59:                                       ; preds = %if.end.47
  %49 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %50 = bitcast %struct._GtkAction* %49 to i8*
  %51 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), %struct._GimpRGB* %51, i8* null)
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.9, %if.else.14, %if.then.21, %if.then.46, %if.else.59, %if.end.58
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_action_get_type() #2

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare void @g_object_set(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_action_group_set_action_viewable(%struct._GimpActionGroup* %group, i8* %action_name, %struct._GimpViewable* %viewable) #3 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %action_name.addr = alloca i8*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %action = alloca %struct._GtkAction*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst20 = alloca %struct._GTypeInstance*, align 8
  %__t22 = alloca i64, align 8
  %__r25 = alloca i32, align 4
  %tmp40 = alloca i32, align 4
  %__inst53 = alloca %struct._GTypeInstance*, align 8
  %__t55 = alloca i64, align 8
  %__r58 = alloca i32, align 4
  %tmp73 = alloca i32, align 4
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %action_name, i8** %action_name.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %1 = bitcast %struct._GimpActionGroup* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_action_group_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_action_group_set_action_viewable, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %action_name.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_action_group_set_action_viewable, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %cmp18 = icmp eq %struct._GimpViewable* %14, null
  br i1 %cmp18, label %if.then.42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.17
  %15 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %16 = bitcast %struct._GimpViewable* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst20, align 8
  %call23 = call i64 @gimp_viewable_get_type() #8
  store i64 %call23, i64* %__t22, align 8
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %tobool26 = icmp ne %struct._GTypeInstance* %17, null
  br i1 %tobool26, label %if.else.28, label %if.then.27

if.then.27:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r25, align 4
  br label %if.end.39

if.else.28:                                       ; preds = %lor.lhs.false
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class29 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class29, align 8
  %tobool30 = icmp ne %struct._GTypeClass* %19, null
  br i1 %tobool30, label %land.lhs.true.31, label %if.else.36

land.lhs.true.31:                                 ; preds = %if.else.28
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class32 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class32, align 8
  %g_type33 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type33, align 8
  %23 = load i64, i64* %__t22, align 8
  %cmp34 = icmp eq i64 %22, %23
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %land.lhs.true.31
  store i32 1, i32* %__r25, align 4
  br label %if.end.38

if.else.36:                                       ; preds = %land.lhs.true.31, %if.else.28
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %25 = load i64, i64* %__t22, align 8
  %call37 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %24, i64 %25) #9
  store i32 %call37, i32* %__r25, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.36, %if.then.35
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.27
  %26 = load i32, i32* %__r25, align 4
  store i32 %26, i32* %tmp40
  %27 = load i32, i32* %tmp40
  %tobool41 = icmp ne i32 %27, 0
  br i1 %tobool41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %if.end.39, %do.body.17
  br label %if.end.44

if.else.43:                                       ; preds = %if.end.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_action_group_set_action_viewable, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.27, i32 0, i32 0))
  br label %return

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %28 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %29 = bitcast %struct._GimpActionGroup* %28 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_action_group_get_type() #8
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call46)
  %30 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkActionGroup*
  %31 = load i8*, i8** %action_name.addr, align 8
  %call48 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %30, i8* %31)
  store %struct._GtkAction* %call48, %struct._GtkAction** %action, align 8
  %32 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %tobool49 = icmp ne %struct._GtkAction* %32, null
  br i1 %tobool49, label %if.end.51, label %if.then.50

if.then.50:                                       ; preds = %do.end.45
  %33 = load i8*, i8** %action_name.addr, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_action_group_set_action_viewable, i32 0, i32 0), i8* %33)
  br label %return

if.end.51:                                        ; preds = %do.end.45
  %34 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %35 = bitcast %struct._GtkAction* %34 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %35, %struct._GTypeInstance** %__inst53, align 8
  %call56 = call i64 @gimp_action_get_type() #8
  store i64 %call56, i64* %__t55, align 8
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst53, align 8
  %tobool59 = icmp ne %struct._GTypeInstance* %36, null
  br i1 %tobool59, label %if.else.61, label %if.then.60

if.then.60:                                       ; preds = %if.end.51
  store i32 0, i32* %__r58, align 4
  br label %if.end.72

if.else.61:                                       ; preds = %if.end.51
  %37 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst53, align 8
  %g_class62 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %37, i32 0, i32 0
  %38 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class62, align 8
  %tobool63 = icmp ne %struct._GTypeClass* %38, null
  br i1 %tobool63, label %land.lhs.true.64, label %if.else.69

land.lhs.true.64:                                 ; preds = %if.else.61
  %39 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst53, align 8
  %g_class65 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %39, i32 0, i32 0
  %40 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class65, align 8
  %g_type66 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %40, i32 0, i32 0
  %41 = load i64, i64* %g_type66, align 8
  %42 = load i64, i64* %__t55, align 8
  %cmp67 = icmp eq i64 %41, %42
  br i1 %cmp67, label %if.then.68, label %if.else.69

if.then.68:                                       ; preds = %land.lhs.true.64
  store i32 1, i32* %__r58, align 4
  br label %if.end.71

if.else.69:                                       ; preds = %land.lhs.true.64, %if.else.61
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst53, align 8
  %44 = load i64, i64* %__t55, align 8
  %call70 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %43, i64 %44) #9
  store i32 %call70, i32* %__r58, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.69, %if.then.68
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.then.60
  %45 = load i32, i32* %__r58, align 4
  store i32 %45, i32* %tmp73
  %46 = load i32, i32* %tmp73
  %tobool74 = icmp ne i32 %46, 0
  br i1 %tobool74, label %if.end.76, label %if.then.75

if.then.75:                                       ; preds = %if.end.72
  %47 = load i8*, i8** %action_name.addr, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_action_group_set_action_viewable, i32 0, i32 0), i8* %47)
  br label %return

if.end.76:                                        ; preds = %if.end.72
  %48 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %49 = bitcast %struct._GtkAction* %48 to i8*
  %50 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), %struct._GimpViewable* %50, i8* null)
  br label %return

return:                                           ; preds = %if.end.76, %if.then.75, %if.then.50, %if.else.43, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_action_group_set_action_hide_empty(%struct._GimpActionGroup* %group, i8* %action_name, i32 %hide_empty) #3 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %action_name.addr = alloca i8*, align 8
  %hide_empty.addr = alloca i32, align 4
  %action = alloca %struct._GtkAction*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %action_name, i8** %action_name.addr, align 8
  store i32 %hide_empty, i32* %hide_empty.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %1 = bitcast %struct._GimpActionGroup* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_action_group_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_action_group_set_action_hide_empty, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %action_name.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_action_group_set_action_hide_empty, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %15 = bitcast %struct._GimpActionGroup* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_action_group_get_type() #8
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkActionGroup*
  %17 = load i8*, i8** %action_name.addr, align 8
  %call19 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %16, i8* %17)
  store %struct._GtkAction* %call19, %struct._GtkAction** %action, align 8
  %18 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %tobool20 = icmp ne %struct._GtkAction* %18, null
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %do.end.16
  %19 = load i8*, i8** %action_name.addr, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_action_group_set_action_hide_empty, i32 0, i32 0), i8* %19)
  br label %return

if.end.22:                                        ; preds = %do.end.16
  %20 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %21 = bitcast %struct._GtkAction* %20 to i8*
  %22 = load i32, i32* %hide_empty.addr, align 4
  %tobool23 = icmp ne i32 %22, 0
  %cond = select i1 %tobool23, i32 1, i32 0
  call void (i8*, i8*, ...) @g_object_set(i8* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), i32 %cond, i8* null)
  br label %return

return:                                           ; preds = %if.end.22, %if.then.21, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_action_group_set_action_always_show_image(%struct._GimpActionGroup* %group, i8* %action_name, i32 %always_show_image) #3 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %action_name.addr = alloca i8*, align 8
  %always_show_image.addr = alloca i32, align 4
  %action = alloca %struct._GtkAction*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %action_name, i8** %action_name.addr, align 8
  store i32 %always_show_image, i32* %always_show_image.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %1 = bitcast %struct._GimpActionGroup* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_action_group_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__func__.gimp_action_group_set_action_always_show_image, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %action_name.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__func__.gimp_action_group_set_action_always_show_image, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %15 = bitcast %struct._GimpActionGroup* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_action_group_get_type() #8
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkActionGroup*
  %17 = load i8*, i8** %action_name.addr, align 8
  %call19 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %16, i8* %17)
  store %struct._GtkAction* %call19, %struct._GtkAction** %action, align 8
  %18 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %tobool20 = icmp ne %struct._GtkAction* %18, null
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %do.end.16
  %19 = load i8*, i8** %action_name.addr, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__func__.gimp_action_group_set_action_always_show_image, i32 0, i32 0), i8* %19)
  br label %return

if.end.22:                                        ; preds = %do.end.16
  %20 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %21 = load i32, i32* %always_show_image.addr, align 4
  call void @gtk_action_set_always_show_image(%struct._GtkAction* %20, i32 %21)
  br label %return

return:                                           ; preds = %if.end.22, %if.then.21, %if.else.14, %if.else.9
  ret void
}

declare void @gtk_action_set_always_show_image(%struct._GtkAction*, i32) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_action_group_class_init(%struct._GimpActionGroupClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpActionGroupClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpActionGroupClass* %klass, %struct._GimpActionGroupClass** %klass.addr, align 8
  %0 = load %struct._GimpActionGroupClass*, %struct._GimpActionGroupClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpActionGroupClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_action_group_constructed, void (%struct._GObject*)** %constructed, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_action_group_dispose, void (%struct._GObject*)** %dispose, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_action_group_finalize, void (%struct._GObject*)** %finalize, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_action_group_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_action_group_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call i64 @gimp_get_type() #8
  %call2 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i64 %call1, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %8, i32 1, %struct._GParamSpec* %call2)
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i8* null, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %9, i32 2, %struct._GParamSpec* %call3)
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call4 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i8* null, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 3, %struct._GParamSpec* %call4)
  %call5 = call %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal, void (i8*)* @g_free, void (i8*)* null)
  %11 = load %struct._GimpActionGroupClass*, %struct._GimpActionGroupClass** %klass.addr, align 8
  %groups = getelementptr inbounds %struct._GimpActionGroupClass, %struct._GimpActionGroupClass* %11, i32 0, i32 1
  store %struct._GHashTable* %call5, %struct._GHashTable** %groups, align 8
  %12 = load %struct._GimpActionGroupClass*, %struct._GimpActionGroupClass** %klass.addr, align 8
  %13 = bitcast %struct._GimpActionGroupClass* %12 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type, align 8
  %call6 = call i64 @gtk_action_get_type() #8
  %call7 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0), i64 %14, i32 2, i32 184, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__OBJECT, i64 4, i32 1, i64 %call6)
  store i32 %call7, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @signals, i32 0, i64 0), align 4
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_action_group_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %group = alloca %struct._GimpActionGroup*, align 8
  %name = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %group_class = alloca %struct._GimpActionGroupClass*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_action_group_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpActionGroup*
  store %struct._GimpActionGroup* %2, %struct._GimpActionGroup** %group, align 8
  %3 = load i8*, i8** @gimp_action_group_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_action_group_parent_class, align 8
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
  %12 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  %gimp = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %12, i32 0, i32 1
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %14 = bitcast %struct._Gimp* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst, align 8
  %call5 = call i64 @gimp_get_type() #8
  store i64 %call5, i64* %__t, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool6 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool6, label %if.else, label %if.then.7

if.then.7:                                        ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.14

if.else:                                          ; preds = %do.body
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool8 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool8, label %land.lhs.true, label %if.else.11

land.lhs.true:                                    ; preds = %if.else
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class9 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class9, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type, align 8
  %21 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %20, %21
  br i1 %cmp, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.13

if.else.11:                                       ; preds = %land.lhs.true, %if.else
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %23 = load i64, i64* %__t, align 8
  %call12 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
  store i32 %call12, i32* %__r, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.11, %if.then.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.7
  %24 = load i32, i32* %__r, align 4
  store i32 %24, i32* %tmp
  %25 = load i32, i32* %tmp
  %tobool15 = icmp ne i32 %25, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.end.14
  br label %if.end.18

if.else.17:                                       ; preds = %if.end.14
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0), i32 138, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_action_group_constructed, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.36, i32 0, i32 0)) #10
  unreachable

if.end.18:                                        ; preds = %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.18
  %26 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %27 = bitcast %struct._GObject* %26 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_action_group_get_type() #8
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call19)
  %28 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkActionGroup*
  %call21 = call i8* @gtk_action_group_get_name(%struct._GtkActionGroup* %28)
  store i8* %call21, i8** %name, align 8
  %29 = load i8*, i8** %name, align 8
  %tobool22 = icmp ne i8* %29, null
  br i1 %tobool22, label %if.then.23, label %if.end.32

if.then.23:                                       ; preds = %do.end
  %30 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %31 = bitcast %struct._GObject* %30 to %struct._GTypeInstance*
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %33 = bitcast %struct._GTypeClass* %32 to %struct._GimpActionGroupClass*
  store %struct._GimpActionGroupClass* %33, %struct._GimpActionGroupClass** %group_class, align 8
  %34 = load %struct._GimpActionGroupClass*, %struct._GimpActionGroupClass** %group_class, align 8
  %groups = getelementptr inbounds %struct._GimpActionGroupClass, %struct._GimpActionGroupClass* %34, i32 0, i32 1
  %35 = load %struct._GHashTable*, %struct._GHashTable** %groups, align 8
  %36 = load i8*, i8** %name, align 8
  %call27 = call i8* @g_hash_table_lookup(%struct._GHashTable* %35, i8* %36)
  %37 = bitcast i8* %call27 to %struct._GList*
  store %struct._GList* %37, %struct._GList** %list, align 8
  %38 = load %struct._GList*, %struct._GList** %list, align 8
  %39 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %40 = bitcast %struct._GObject* %39 to i8*
  %call28 = call %struct._GList* @g_list_append(%struct._GList* %38, i8* %40)
  store %struct._GList* %call28, %struct._GList** %list, align 8
  %41 = load %struct._GimpActionGroupClass*, %struct._GimpActionGroupClass** %group_class, align 8
  %groups29 = getelementptr inbounds %struct._GimpActionGroupClass, %struct._GimpActionGroupClass* %41, i32 0, i32 1
  %42 = load %struct._GHashTable*, %struct._GHashTable** %groups29, align 8
  %43 = load i8*, i8** %name, align 8
  %call30 = call noalias i8* @g_strdup(i8* %43)
  %44 = load %struct._GList*, %struct._GList** %list, align 8
  %45 = bitcast %struct._GList* %44 to i8*
  %call31 = call i32 @g_hash_table_replace(%struct._GHashTable* %42, i8* %call30, i8* %45)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.23, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_action_group_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %name = alloca i8*, align 8
  %group_class = alloca %struct._GimpActionGroupClass*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_action_group_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkActionGroup*
  %call2 = call i8* @gtk_action_group_get_name(%struct._GtkActionGroup* %2)
  store i8* %call2, i8** %name, align 8
  %3 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %4 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %5 = bitcast %struct._GObject* %4 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %7 = bitcast %struct._GTypeClass* %6 to %struct._GimpActionGroupClass*
  store %struct._GimpActionGroupClass* %7, %struct._GimpActionGroupClass** %group_class, align 8
  %8 = load %struct._GimpActionGroupClass*, %struct._GimpActionGroupClass** %group_class, align 8
  %groups = getelementptr inbounds %struct._GimpActionGroupClass, %struct._GimpActionGroupClass* %8, i32 0, i32 1
  %9 = load %struct._GHashTable*, %struct._GHashTable** %groups, align 8
  %10 = load i8*, i8** %name, align 8
  %call3 = call i8* @g_hash_table_lookup(%struct._GHashTable* %9, i8* %10)
  %11 = bitcast i8* %call3 to %struct._GList*
  store %struct._GList* %11, %struct._GList** %list, align 8
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool4 = icmp ne %struct._GList* %12, null
  br i1 %tobool4, label %if.then.5, label %if.end.14

if.then.5:                                        ; preds = %if.then
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %15 = bitcast %struct._GObject* %14 to i8*
  %call6 = call %struct._GList* @g_list_remove(%struct._GList* %13, i8* %15)
  store %struct._GList* %call6, %struct._GList** %list, align 8
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool7 = icmp ne %struct._GList* %16, null
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then.5
  %17 = load %struct._GimpActionGroupClass*, %struct._GimpActionGroupClass** %group_class, align 8
  %groups9 = getelementptr inbounds %struct._GimpActionGroupClass, %struct._GimpActionGroupClass* %17, i32 0, i32 1
  %18 = load %struct._GHashTable*, %struct._GHashTable** %groups9, align 8
  %19 = load i8*, i8** %name, align 8
  %call10 = call noalias i8* @g_strdup(i8* %19)
  %20 = load %struct._GList*, %struct._GList** %list, align 8
  %21 = bitcast %struct._GList* %20 to i8*
  %call11 = call i32 @g_hash_table_replace(%struct._GHashTable* %18, i8* %call10, i8* %21)
  br label %if.end

if.else:                                          ; preds = %if.then.5
  %22 = load %struct._GimpActionGroupClass*, %struct._GimpActionGroupClass** %group_class, align 8
  %groups12 = getelementptr inbounds %struct._GimpActionGroupClass, %struct._GimpActionGroupClass* %22, i32 0, i32 1
  %23 = load %struct._GHashTable*, %struct._GHashTable** %groups12, align 8
  %24 = load i8*, i8** %name, align 8
  %call13 = call i32 @g_hash_table_remove(%struct._GHashTable* %23, i8* %24)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %entry
  %25 = load i8*, i8** @gimp_action_group_parent_class, align 8
  %26 = bitcast i8* %25 to %struct._GTypeClass*
  %call16 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %26, i64 80)
  %27 = bitcast %struct._GTypeClass* %call16 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %27, i32 0, i32 5
  %28 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %29 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %28(%struct._GObject* %29)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_action_group_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %group = alloca %struct._GimpActionGroup*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_action_group_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpActionGroup*
  store %struct._GimpActionGroup* %2, %struct._GimpActionGroup** %group, align 8
  %3 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  %label = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %3, i32 0, i32 2
  %4 = load i8*, i8** %label, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  %label2 = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %5, i32 0, i32 2
  %6 = load i8*, i8** %label2, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  %label3 = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %7, i32 0, i32 2
  store i8* null, i8** %label3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  %stock_id = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %8, i32 0, i32 3
  %9 = load i8*, i8** %stock_id, align 8
  %tobool4 = icmp ne i8* %9, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %10 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  %stock_id6 = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %10, i32 0, i32 3
  %11 = load i8*, i8** %stock_id6, align 8
  call void @g_free(i8* %11)
  %12 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  %stock_id7 = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %12, i32 0, i32 3
  store i8* null, i8** %stock_id7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %13 = load i8*, i8** @gimp_action_group_parent_class, align 8
  %14 = bitcast i8* %13 to %struct._GTypeClass*
  %call9 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %14, i64 80)
  %15 = bitcast %struct._GTypeClass* %call9 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %15, i32 0, i32 6
  %16 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %17 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %16(%struct._GObject* %17)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_action_group_set_property(%struct._GObject* %object, i32 %prop_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %prop_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %group = alloca %struct._GimpActionGroup*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %prop_id, i32* %prop_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_action_group_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpActionGroup*
  store %struct._GimpActionGroup* %2, %struct._GimpActionGroup** %group, align 8
  %3 = load i32, i32* %prop_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_object(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._Gimp*
  %6 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  %gimp = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %6, i32 0, i32 1
  store %struct._Gimp* %5, %struct._Gimp** %gimp, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i8* @g_value_dup_string(%struct._GValue* %7)
  %8 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  %label = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %8, i32 0, i32 2
  store i8* %call4, i8** %label, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i8* @g_value_dup_string(%struct._GValue* %9)
  %10 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  %stock_id = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %10, i32 0, i32 3
  store i8* %call6, i8** %stock_id, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %11, %struct._GObject** %_glib__object, align 8
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %12, %struct._GParamSpec** %_glib__pspec, align 8
  %13 = load i32, i32* %prop_id.addr, align 4
  store i32 %13, i32* %_glib__property_id, align 4
  %14 = load i32, i32* %_glib__property_id, align 4
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %15, i32 0, i32 1
  %16 = load i8*, i8** %name, align 8
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %18 = bitcast %struct._GParamSpec* %17 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type, align 8
  %call7 = call i8* @g_type_name(i64 %20)
  %21 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %22 = bitcast %struct._GObject* %21 to %struct._GTypeInstance*
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type9 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type9, align 8
  %call10 = call i8* @g_type_name(i64 %24)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0), i32 228, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i32 %14, i8* %16, i8* %call7, i8* %call10)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_action_group_get_property(%struct._GObject* %object, i32 %prop_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %prop_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %group = alloca %struct._GimpActionGroup*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %prop_id, i32* %prop_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_action_group_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpActionGroup*
  store %struct._GimpActionGroup* %2, %struct._GimpActionGroup** %group, align 8
  %3 = load i32, i32* %prop_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  %gimp = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %7 = bitcast %struct._Gimp* %6 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %9 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  %label = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %9, i32 0, i32 2
  %10 = load i8*, i8** %label, align 8
  call void @g_value_set_string(%struct._GValue* %8, i8* %10)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %12 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  %stock_id = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %12, i32 0, i32 3
  %13 = load i8*, i8** %stock_id, align 8
  call void @g_value_set_string(%struct._GValue* %11, i8* %13)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %14, %struct._GObject** %_glib__object, align 8
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %15, %struct._GParamSpec** %_glib__pspec, align 8
  %16 = load i32, i32* %prop_id.addr, align 4
  store i32 %16, i32* %_glib__property_id, align 4
  %17 = load i32, i32* %_glib__property_id, align 4
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %18, i32 0, i32 1
  %19 = load i8*, i8** %name, align 8
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %21 = bitcast %struct._GParamSpec* %20 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type, align 8
  %call4 = call i8* @g_type_name(i64 %23)
  %24 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %25 = bitcast %struct._GObject* %24 to %struct._GTypeInstance*
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %25, i32 0, i32 0
  %26 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type6 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %26, i32 0, i32 0
  %27 = load i64, i64* %g_type6, align 8
  %call7 = call i8* @g_type_name(i64 %27)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0), i32 254, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i32 %17, i8* %19, i8* %call4, i8* %call7)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #1

declare %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, void (i8*)*) #1

declare i32 @g_str_hash(i8*) #1

declare i32 @g_str_equal(i8*, i8*) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__OBJECT(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #6

declare i8* @gtk_action_group_get_name(%struct._GtkActionGroup*) #1

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare i32 @g_hash_table_replace(%struct._GHashTable*, i8*, i8*) #1

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #1

declare i32 @g_hash_table_remove(%struct._GHashTable*, i8*) #1

declare i8* @g_value_get_object(%struct._GValue*) #1

declare i8* @g_value_dup_string(%struct._GValue*) #1

declare i8* @g_type_name(i64) #1

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare void @g_value_set_string(%struct._GValue*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
