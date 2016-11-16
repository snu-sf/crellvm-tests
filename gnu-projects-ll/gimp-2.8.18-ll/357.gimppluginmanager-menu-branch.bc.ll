; ModuleID = './app/plug-in/gimppluginmanager-menu-branch.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInManager = type { %struct._GimpObject, %struct._Gimp*, %struct._GSList*, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugIn*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugInShm*, %struct._GimpInterpreterDB*, %struct._GimpEnvironTable*, %struct._GimpPlugInDebug*, %struct._GList* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type opaque
%struct._GimpPlugIn = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GimpPlugInShm = type opaque
%struct._GimpInterpreterDB = type opaque
%struct._GimpEnvironTable = type opaque
%struct._GimpPlugInDebug = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpPlugInMenuBranch = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Plug-In\00", align 1
@__func__.gimp_plug_in_manager_menu_branch_exit = private unnamed_addr constant [38 x i8] c"gimp_plug_in_manager_menu_branch_exit\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"GIMP_IS_PLUG_IN_MANAGER (manager)\00", align 1
@__func__.gimp_plug_in_manager_add_menu_branch = private unnamed_addr constant [37 x i8] c"gimp_plug_in_manager_add_menu_branch\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"prog_name != NULL\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"menu_path != NULL\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"menu_label != NULL\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"menu-branch-added\00", align 1
@__func__.gimp_plug_in_manager_get_menu_branches = private unnamed_addr constant [39 x i8] c"gimp_plug_in_manager_get_menu_branches\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_manager_menu_branch_exit(%struct._GimpPlugInManager* %manager) #0 {
entry:
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %list = alloca %struct._GSList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %branch = alloca %struct._GimpPlugInMenuBranch*, align 8
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %1 = bitcast %struct._GimpPlugInManager* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_manager_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_plug_in_manager_menu_branch_exit, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %menu_branches = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %13, i32 0, i32 8
  %14 = load %struct._GSList*, %struct._GSList** %menu_branches, align 8
  store %struct._GSList* %14, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %15 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool11 = icmp ne %struct._GSList* %15, null
  br i1 %tobool11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %16, i32 0, i32 0
  %17 = load i8*, i8** %data, align 8
  %18 = bitcast i8* %17 to %struct._GimpPlugInMenuBranch*
  store %struct._GimpPlugInMenuBranch* %18, %struct._GimpPlugInMenuBranch** %branch, align 8
  %19 = load %struct._GimpPlugInMenuBranch*, %struct._GimpPlugInMenuBranch** %branch, align 8
  %prog_name = getelementptr inbounds %struct._GimpPlugInMenuBranch, %struct._GimpPlugInMenuBranch* %19, i32 0, i32 0
  %20 = load i8*, i8** %prog_name, align 8
  call void @g_free(i8* %20)
  %21 = load %struct._GimpPlugInMenuBranch*, %struct._GimpPlugInMenuBranch** %branch, align 8
  %menu_path = getelementptr inbounds %struct._GimpPlugInMenuBranch, %struct._GimpPlugInMenuBranch* %21, i32 0, i32 1
  %22 = load i8*, i8** %menu_path, align 8
  call void @g_free(i8* %22)
  %23 = load %struct._GimpPlugInMenuBranch*, %struct._GimpPlugInMenuBranch** %branch, align 8
  %menu_label = getelementptr inbounds %struct._GimpPlugInMenuBranch, %struct._GimpPlugInMenuBranch* %23, i32 0, i32 2
  %24 = load i8*, i8** %menu_label, align 8
  call void @g_free(i8* %24)
  br label %do.body.13

do.body.13:                                       ; preds = %for.body
  %25 = load %struct._GimpPlugInMenuBranch*, %struct._GimpPlugInMenuBranch** %branch, align 8
  %26 = bitcast %struct._GimpPlugInMenuBranch* %25 to i8*
  call void @g_slice_free1(i64 24, i8* %26)
  br label %do.end.14

do.end.14:                                        ; preds = %do.body.13
  br label %for.inc

for.inc:                                          ; preds = %do.end.14
  %27 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %27, i32 0, i32 1
  %28 = load %struct._GSList*, %struct._GSList** %next, align 8
  store %struct._GSList* %28, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %menu_branches15 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %29, i32 0, i32 8
  %30 = load %struct._GSList*, %struct._GSList** %menu_branches15, align 8
  call void @g_slist_free(%struct._GSList* %30)
  %31 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %menu_branches16 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %31, i32 0, i32 8
  store %struct._GSList* null, %struct._GSList** %menu_branches16, align 8
  br label %return

return:                                           ; preds = %for.end, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_plug_in_manager_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare void @g_free(i8*) #3

declare void @g_slice_free1(i64, i8*) #3

declare void @g_slist_free(%struct._GSList*) #3

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_manager_add_menu_branch(%struct._GimpPlugInManager* %manager, i8* %prog_name, i8* %menu_path, i8* %menu_label) #0 {
entry:
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %prog_name.addr = alloca i8*, align 8
  %menu_path.addr = alloca i8*, align 8
  %menu_label.addr = alloca i8*, align 8
  %branch = alloca %struct._GimpPlugInMenuBranch*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  store i8* %prog_name, i8** %prog_name.addr, align 8
  store i8* %menu_path, i8** %menu_path.addr, align 8
  store i8* %menu_label, i8** %menu_label.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %1 = bitcast %struct._GimpPlugInManager* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_manager_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_plug_in_manager_add_menu_branch, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %prog_name.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_plug_in_manager_add_menu_branch, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i8*, i8** %menu_path.addr, align 8
  %cmp18 = icmp ne i8* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_plug_in_manager_add_menu_branch, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %15 = load i8*, i8** %menu_label.addr, align 8
  %cmp24 = icmp ne i8* %15, null
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.23
  br label %if.end.27

if.else.26:                                       ; preds = %do.body.23
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_plug_in_manager_add_menu_branch, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.27:                                        ; preds = %if.then.25
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  %call29 = call noalias i8* @g_slice_alloc(i64 24)
  %16 = bitcast i8* %call29 to %struct._GimpPlugInMenuBranch*
  store %struct._GimpPlugInMenuBranch* %16, %struct._GimpPlugInMenuBranch** %branch, align 8
  %17 = load i8*, i8** %prog_name.addr, align 8
  %call30 = call noalias i8* @g_strdup(i8* %17)
  %18 = load %struct._GimpPlugInMenuBranch*, %struct._GimpPlugInMenuBranch** %branch, align 8
  %prog_name31 = getelementptr inbounds %struct._GimpPlugInMenuBranch, %struct._GimpPlugInMenuBranch* %18, i32 0, i32 0
  store i8* %call30, i8** %prog_name31, align 8
  %19 = load i8*, i8** %menu_path.addr, align 8
  %20 = load i8*, i8** %menu_label.addr, align 8
  %call32 = call i8* @plug_in_menu_path_map(i8* %19, i8* %20)
  %21 = load %struct._GimpPlugInMenuBranch*, %struct._GimpPlugInMenuBranch** %branch, align 8
  %menu_path33 = getelementptr inbounds %struct._GimpPlugInMenuBranch, %struct._GimpPlugInMenuBranch* %21, i32 0, i32 1
  store i8* %call32, i8** %menu_path33, align 8
  %22 = load i8*, i8** %menu_label.addr, align 8
  %call34 = call noalias i8* @g_strdup(i8* %22)
  %23 = load %struct._GimpPlugInMenuBranch*, %struct._GimpPlugInMenuBranch** %branch, align 8
  %menu_label35 = getelementptr inbounds %struct._GimpPlugInMenuBranch, %struct._GimpPlugInMenuBranch* %23, i32 0, i32 2
  store i8* %call34, i8** %menu_label35, align 8
  %24 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %menu_branches = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %24, i32 0, i32 8
  %25 = load %struct._GSList*, %struct._GSList** %menu_branches, align 8
  %26 = load %struct._GimpPlugInMenuBranch*, %struct._GimpPlugInMenuBranch** %branch, align 8
  %27 = bitcast %struct._GimpPlugInMenuBranch* %26 to i8*
  %call36 = call %struct._GSList* @g_slist_append(%struct._GSList* %25, i8* %27)
  %28 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %menu_branches37 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %28, i32 0, i32 8
  store %struct._GSList* %call36, %struct._GSList** %menu_branches37, align 8
  %29 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %30 = bitcast %struct._GimpPlugInManager* %29 to i8*
  %31 = load %struct._GimpPlugInMenuBranch*, %struct._GimpPlugInMenuBranch** %branch, align 8
  %prog_name38 = getelementptr inbounds %struct._GimpPlugInMenuBranch, %struct._GimpPlugInMenuBranch* %31, i32 0, i32 0
  %32 = load i8*, i8** %prog_name38, align 8
  %33 = load %struct._GimpPlugInMenuBranch*, %struct._GimpPlugInMenuBranch** %branch, align 8
  %menu_path39 = getelementptr inbounds %struct._GimpPlugInMenuBranch, %struct._GimpPlugInMenuBranch* %33, i32 0, i32 1
  %34 = load i8*, i8** %menu_path39, align 8
  %35 = load %struct._GimpPlugInMenuBranch*, %struct._GimpPlugInMenuBranch** %branch, align 8
  %menu_label40 = getelementptr inbounds %struct._GimpPlugInMenuBranch, %struct._GimpPlugInMenuBranch* %35, i32 0, i32 2
  %36 = load i8*, i8** %menu_label40, align 8
  call void (i8*, i8*, ...) @g_signal_emit_by_name(i8* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i8* %32, i8* %34, i8* %36)
  br label %return

return:                                           ; preds = %do.end.28, %if.else.26, %if.else.20, %if.else.14, %if.else.9
  ret void
}

declare noalias i8* @g_slice_alloc(i64) #3

declare noalias i8* @g_strdup(i8*) #3

declare i8* @plug_in_menu_path_map(i8*, i8*) #3

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #3

declare void @g_signal_emit_by_name(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define %struct._GSList* @gimp_plug_in_manager_get_menu_branches(%struct._GimpPlugInManager* %manager) #0 {
entry:
  %retval = alloca %struct._GSList*, align 8
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %1 = bitcast %struct._GimpPlugInManager* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_manager_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_plug_in_manager_get_menu_branches, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GSList* null, %struct._GSList** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %menu_branches = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %13, i32 0, i32 8
  %14 = load %struct._GSList*, %struct._GSList** %menu_branches, align 8
  store %struct._GSList* %14, %struct._GSList** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GSList*, %struct._GSList** %retval
  ret %struct._GSList* %15
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
