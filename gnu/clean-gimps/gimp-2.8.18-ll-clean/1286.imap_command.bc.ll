; ModuleID = './plug-ins/imagemap/imap_command.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CommandList_t = type { %struct.CommandList_t*, i32, %struct._GList*, %struct._GList*, %struct._GList*, %struct.CommandListCallback_t }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.CommandListCallback_t = type { %struct._GList* }
%struct.Command_t = type { %struct.CommandClass_t*, %struct.CommandList_t*, i8*, i32 }
%struct.CommandClass_t = type { {}*, i32 (%struct.Command_t*)*, {}*, {}* }
%struct.CommandListCB_t = type { void (%struct.Command_t*, i8*)*, i8* }
%struct.BasicCommand_t = type { %struct.Command_t, void ()* }

@_command_list = internal global %struct.CommandList_t { %struct.CommandList_t* null, i32 10, %struct._GList* null, %struct._GList* null, %struct._GList* null, %struct.CommandListCallback_t zeroinitializer }, align 8
@_current_command_list = internal global %struct.CommandList_t* @_command_list, align 8
@.str = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@parent_command_class = internal global { void (%struct.Command_t*)*, i32 (%struct.Command_t*)*, void (%struct.Command_t*)*, void (%struct.Command_t*)* } zeroinitializer, align 8
@basic_command_class = internal global { void (%struct.Command_t*)*, i32 (%struct.Command_t*)*, void (%struct.Command_t*)*, void (%struct.Command_t*)* } { void (%struct.Command_t*)* null, i32 (%struct.Command_t*)* @basic_command_execute, void (%struct.Command_t*)* null, void (%struct.Command_t*)* null }, align 8

; Function Attrs: nounwind uwtable
define %struct.CommandList_t* @command_list_new(i32 %undo_levels) #0 {
entry:
  %undo_levels.addr = alloca i32, align 4
  %list = alloca %struct.CommandList_t*, align 8
  store i32 %undo_levels, i32* %undo_levels.addr, align 4
  %call = call noalias i8* @g_malloc_n(i64 1, i64 48)
  %0 = bitcast i8* %call to %struct.CommandList_t*
  store %struct.CommandList_t* %0, %struct.CommandList_t** %list, align 8
  %1 = load %struct.CommandList_t*, %struct.CommandList_t** %list, align 8
  %parent = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %1, i32 0, i32 0
  store %struct.CommandList_t* null, %struct.CommandList_t** %parent, align 8
  %2 = load i32, i32* %undo_levels.addr, align 4
  %3 = load %struct.CommandList_t*, %struct.CommandList_t** %list, align 8
  %undo_levels1 = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %3, i32 0, i32 1
  store i32 %2, i32* %undo_levels1, align 4
  %4 = load %struct.CommandList_t*, %struct.CommandList_t** %list, align 8
  %list2 = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %4, i32 0, i32 2
  store %struct._GList* null, %struct._GList** %list2, align 8
  %5 = load %struct.CommandList_t*, %struct.CommandList_t** %list, align 8
  %undo = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %5, i32 0, i32 3
  store %struct._GList* null, %struct._GList** %undo, align 8
  %6 = load %struct.CommandList_t*, %struct.CommandList_t** %list, align 8
  %redo = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %6, i32 0, i32 4
  store %struct._GList* null, %struct._GList** %redo, align 8
  %7 = load %struct.CommandList_t*, %struct.CommandList_t** %list, align 8
  %update_cb = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %7, i32 0, i32 5
  %list3 = getelementptr inbounds %struct.CommandListCallback_t, %struct.CommandListCallback_t* %update_cb, i32 0, i32 0
  store %struct._GList* null, %struct._GList** %list3, align 8
  %8 = load %struct.CommandList_t*, %struct.CommandList_t** %list, align 8
  ret %struct.CommandList_t* %8
}

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @command_list_destruct(%struct.CommandList_t* %list) #0 {
entry:
  %list.addr = alloca %struct.CommandList_t*, align 8
  store %struct.CommandList_t* %list, %struct.CommandList_t** %list.addr, align 8
  %0 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  call void @command_list_clear(%struct.CommandList_t* %0)
  %1 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %2 = bitcast %struct.CommandList_t* %1 to i8*
  call void @g_free(i8* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @command_list_clear(%struct.CommandList_t* %list) #0 {
entry:
  %list.addr = alloca %struct.CommandList_t*, align 8
  %p = alloca %struct._GList*, align 8
  store %struct.CommandList_t* %list, %struct.CommandList_t** %list.addr, align 8
  %0 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %list1 = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %0, i32 0, i32 2
  %1 = load %struct._GList*, %struct._GList** %list1, align 8
  store %struct._GList* %1, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct.Command_t*
  call void @command_destruct(%struct.Command_t* %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %6, i32 0, i32 1
  %7 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %7, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %list2 = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %8, i32 0, i32 2
  %9 = load %struct._GList*, %struct._GList** %list2, align 8
  call void @g_list_free(%struct._GList* %9)
  %10 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %list3 = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %10, i32 0, i32 2
  store %struct._GList* null, %struct._GList** %list3, align 8
  %11 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %undo = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %11, i32 0, i32 3
  store %struct._GList* null, %struct._GList** %undo, align 8
  %12 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %redo = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %12, i32 0, i32 4
  store %struct._GList* null, %struct._GList** %redo, align 8
  %13 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %update_cb = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %13, i32 0, i32 5
  call void @command_list_callback_call(%struct.CommandListCallback_t* %update_cb, %struct.Command_t* null)
  ret void
}

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define void @command_list_remove_all() #0 {
entry:
  call void @command_list_clear(%struct.CommandList_t* @_command_list)
  ret void
}

; Function Attrs: nounwind uwtable
define void @command_list_add(%struct.Command_t* %command) #0 {
entry:
  %command.addr = alloca %struct.Command_t*, align 8
  store %struct.Command_t* %command, %struct.Command_t** %command.addr, align 8
  %0 = load %struct.CommandList_t*, %struct.CommandList_t** @_current_command_list, align 8
  %1 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  call void @_command_list_add(%struct.CommandList_t* %0, %struct.Command_t* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_command_list_add(%struct.CommandList_t* %list, %struct.Command_t* %command) #0 {
entry:
  %list.addr = alloca %struct.CommandList_t*, align 8
  %command.addr = alloca %struct.Command_t*, align 8
  %p = alloca %struct._GList*, align 8
  %q = alloca %struct._GList*, align 8
  %curr = alloca %struct.Command_t*, align 8
  %first = alloca %struct._GList*, align 8
  %curr7 = alloca %struct.Command_t*, align 8
  store %struct.CommandList_t* %list, %struct.CommandList_t** %list.addr, align 8
  store %struct.Command_t* %command, %struct.Command_t** %command.addr, align 8
  %0 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %redo = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %0, i32 0, i32 4
  %1 = load %struct._GList*, %struct._GList** %redo, align 8
  store %struct._GList* %1, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct.Command_t*
  store %struct.Command_t* %5, %struct.Command_t** %curr, align 8
  %6 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %6, i32 0, i32 1
  %7 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %7, %struct._GList** %q, align 8
  %8 = load %struct.Command_t*, %struct.Command_t** %curr, align 8
  call void @command_destruct(%struct.Command_t* %8)
  %9 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %list1 = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %9, i32 0, i32 2
  %10 = load %struct._GList*, %struct._GList** %list1, align 8
  %11 = load %struct._GList*, %struct._GList** %p, align 8
  %call = call %struct._GList* @g_list_remove_link(%struct._GList* %10, %struct._GList* %11)
  %12 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %list2 = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %12, i32 0, i32 2
  store %struct._GList* %call, %struct._GList** %list2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load %struct._GList*, %struct._GList** %q, align 8
  store %struct._GList* %13, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %list3 = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %14, i32 0, i32 2
  %15 = load %struct._GList*, %struct._GList** %list3, align 8
  %call4 = call i32 @g_list_length(%struct._GList* %15)
  %16 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %undo_levels = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %16, i32 0, i32 1
  %17 = load i32, i32* %undo_levels, align 4
  %cmp = icmp eq i32 %call4, %17
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %18 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %list5 = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %18, i32 0, i32 2
  %19 = load %struct._GList*, %struct._GList** %list5, align 8
  %call6 = call %struct._GList* @g_list_first(%struct._GList* %19)
  store %struct._GList* %call6, %struct._GList** %first, align 8
  %20 = load %struct._GList*, %struct._GList** %first, align 8
  %data8 = getelementptr inbounds %struct._GList, %struct._GList* %20, i32 0, i32 0
  %21 = load i8*, i8** %data8, align 8
  %22 = bitcast i8* %21 to %struct.Command_t*
  store %struct.Command_t* %22, %struct.Command_t** %curr7, align 8
  %23 = load %struct.Command_t*, %struct.Command_t** %curr7, align 8
  call void @command_destruct(%struct.Command_t* %23)
  %24 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %list9 = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %24, i32 0, i32 2
  %25 = load %struct._GList*, %struct._GList** %list9, align 8
  %26 = load %struct._GList*, %struct._GList** %first, align 8
  %call10 = call %struct._GList* @g_list_remove_link(%struct._GList* %25, %struct._GList* %26)
  %27 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %list11 = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %27, i32 0, i32 2
  store %struct._GList* %call10, %struct._GList** %list11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %28 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %list12 = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %28, i32 0, i32 2
  %29 = load %struct._GList*, %struct._GList** %list12, align 8
  %30 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  %31 = bitcast %struct.Command_t* %30 to i8*
  %call13 = call %struct._GList* @g_list_append(%struct._GList* %29, i8* %31)
  %32 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %list14 = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %32, i32 0, i32 2
  store %struct._GList* %call13, %struct._GList** %list14, align 8
  %33 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %list15 = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %33, i32 0, i32 2
  %34 = load %struct._GList*, %struct._GList** %list15, align 8
  %call16 = call %struct._GList* @g_list_last(%struct._GList* %34)
  %35 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %undo = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %35, i32 0, i32 3
  store %struct._GList* %call16, %struct._GList** %undo, align 8
  %36 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %redo17 = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %36, i32 0, i32 4
  store %struct._GList* null, %struct._GList** %redo17, align 8
  %37 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %update_cb = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %37, i32 0, i32 5
  %38 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  call void @command_list_callback_call(%struct.CommandListCallback_t* %update_cb, %struct.Command_t* %38)
  ret void
}

; Function Attrs: nounwind uwtable
define void @subcommand_list_add(%struct.CommandList_t* %list, %struct.Command_t* %command) #0 {
entry:
  %list.addr = alloca %struct.CommandList_t*, align 8
  %command.addr = alloca %struct.Command_t*, align 8
  store %struct.CommandList_t* %list, %struct.CommandList_t** %list.addr, align 8
  store %struct.Command_t* %command, %struct.Command_t** %command.addr, align 8
  %0 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %1 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  call void @_command_list_add(%struct.CommandList_t* %0, %struct.Command_t* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.Command_t* @subcommand_start(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct.CommandList_t*, %struct.CommandList_t** @_current_command_list, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %call = call %struct.Command_t* @command_list_start(%struct.CommandList_t* %0, i8* %1)
  ret %struct.Command_t* %call
}

; Function Attrs: nounwind uwtable
define internal %struct.Command_t* @command_list_start(%struct.CommandList_t* %list, i8* %name) #0 {
entry:
  %list.addr = alloca %struct.CommandList_t*, align 8
  %name.addr = alloca i8*, align 8
  %command = alloca %struct.Command_t*, align 8
  store %struct.CommandList_t* %list, %struct.CommandList_t** %list.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 32)
  %0 = bitcast i8* %call to %struct.Command_t*
  store %struct.Command_t* %0, %struct.Command_t** %command, align 8
  %1 = load %struct.Command_t*, %struct.Command_t** %command, align 8
  %2 = load i8*, i8** %name.addr, align 8
  %call1 = call %struct.Command_t* @command_init(%struct.Command_t* %1, i8* %2, %struct.CommandClass_t* bitcast ({ void (%struct.Command_t*)*, i32 (%struct.Command_t*)*, void (%struct.Command_t*)*, void (%struct.Command_t*)* }* @parent_command_class to %struct.CommandClass_t*))
  %call2 = call %struct.CommandList_t* @command_list_new(i32 -1)
  %3 = load %struct.Command_t*, %struct.Command_t** %command, align 8
  %sub_commands = getelementptr inbounds %struct.Command_t, %struct.Command_t* %3, i32 0, i32 1
  store %struct.CommandList_t* %call2, %struct.CommandList_t** %sub_commands, align 8
  %4 = load %struct.Command_t*, %struct.Command_t** %command, align 8
  call void @command_list_add(%struct.Command_t* %4)
  %5 = load %struct.CommandList_t*, %struct.CommandList_t** @_current_command_list, align 8
  %6 = load %struct.Command_t*, %struct.Command_t** %command, align 8
  %sub_commands3 = getelementptr inbounds %struct.Command_t, %struct.Command_t* %6, i32 0, i32 1
  %7 = load %struct.CommandList_t*, %struct.CommandList_t** %sub_commands3, align 8
  %parent = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %7, i32 0, i32 0
  store %struct.CommandList_t* %5, %struct.CommandList_t** %parent, align 8
  %8 = load %struct.Command_t*, %struct.Command_t** %command, align 8
  %sub_commands4 = getelementptr inbounds %struct.Command_t, %struct.Command_t* %8, i32 0, i32 1
  %9 = load %struct.CommandList_t*, %struct.CommandList_t** %sub_commands4, align 8
  store %struct.CommandList_t* %9, %struct.CommandList_t** @_current_command_list, align 8
  %10 = load %struct.Command_t*, %struct.Command_t** %command, align 8
  ret %struct.Command_t* %10
}

; Function Attrs: nounwind uwtable
define void @subcommand_end() #0 {
entry:
  %0 = load %struct.CommandList_t*, %struct.CommandList_t** @_current_command_list, align 8
  call void @command_list_end(%struct.CommandList_t* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @command_list_end(%struct.CommandList_t* %list) #0 {
entry:
  %list.addr = alloca %struct.CommandList_t*, align 8
  store %struct.CommandList_t* %list, %struct.CommandList_t** %list.addr, align 8
  %0 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %parent = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %0, i32 0, i32 0
  %1 = load %struct.CommandList_t*, %struct.CommandList_t** %parent, align 8
  store %struct.CommandList_t* %1, %struct.CommandList_t** @_current_command_list, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @command_list_set_undo_level(i32 %level) #0 {
entry:
  %level.addr = alloca i32, align 4
  store i32 %level, i32* %level.addr, align 4
  %0 = load i32, i32* %level.addr, align 4
  call void @_command_list_set_undo_level(%struct.CommandList_t* @_command_list, i32 %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_command_list_set_undo_level(%struct.CommandList_t* %list, i32 %level) #0 {
entry:
  %list.addr = alloca %struct.CommandList_t*, align 8
  %level.addr = alloca i32, align 4
  %diff = alloca i32, align 4
  %p = alloca %struct._GList*, align 8
  %q = alloca %struct._GList*, align 8
  %curr = alloca %struct.Command_t*, align 8
  %curr16 = alloca %struct.Command_t*, align 8
  store %struct.CommandList_t* %list, %struct.CommandList_t** %list.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  %0 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %list1 = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %0, i32 0, i32 2
  %1 = load %struct._GList*, %struct._GList** %list1, align 8
  %call = call i32 @g_list_length(%struct._GList* %1)
  %2 = load i32, i32* %level.addr, align 4
  %sub = sub i32 %call, %2
  store i32 %sub, i32* %diff, align 4
  %3 = load i32, i32* %diff, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %list2 = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %4, i32 0, i32 2
  %5 = load %struct._GList*, %struct._GList** %list2, align 8
  store %struct._GList* %5, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %diff, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %7 = load %struct._GList*, %struct._GList** %p, align 8
  %8 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %undo = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %8, i32 0, i32 3
  %9 = load %struct._GList*, %struct._GList** %undo, align 8
  %cmp3 = icmp ne %struct._GList* %7, %9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ]
  br i1 %10, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %11 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 0
  %12 = load i8*, i8** %data, align 8
  %13 = bitcast i8* %12 to %struct.Command_t*
  store %struct.Command_t* %13, %struct.Command_t** %curr, align 8
  %14 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %14, i32 0, i32 1
  %15 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %15, %struct._GList** %q, align 8
  %16 = load %struct.Command_t*, %struct.Command_t** %curr, align 8
  call void @command_destruct(%struct.Command_t* %16)
  %17 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %list4 = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %17, i32 0, i32 2
  %18 = load %struct._GList*, %struct._GList** %list4, align 8
  %19 = load %struct._GList*, %struct._GList** %p, align 8
  %call5 = call %struct._GList* @g_list_remove_link(%struct._GList* %18, %struct._GList* %19)
  %20 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %list6 = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %20, i32 0, i32 2
  store %struct._GList* %call5, %struct._GList** %list6, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load %struct._GList*, %struct._GList** %q, align 8
  store %struct._GList* %21, %struct._GList** %p, align 8
  %22 = load i32, i32* %diff, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %diff, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %23 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %list7 = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %23, i32 0, i32 2
  %24 = load %struct._GList*, %struct._GList** %list7, align 8
  %call8 = call %struct._GList* @g_list_last(%struct._GList* %24)
  store %struct._GList* %call8, %struct._GList** %p, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.21, %for.end
  %25 = load i32, i32* %diff, align 4
  %tobool10 = icmp ne i32 %25, 0
  br i1 %tobool10, label %land.rhs.11, label %land.end.14

land.rhs.11:                                      ; preds = %for.cond.9
  %26 = load %struct._GList*, %struct._GList** %p, align 8
  %27 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %undo12 = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %27, i32 0, i32 3
  %28 = load %struct._GList*, %struct._GList** %undo12, align 8
  %cmp13 = icmp ne %struct._GList* %26, %28
  br label %land.end.14

land.end.14:                                      ; preds = %land.rhs.11, %for.cond.9
  %29 = phi i1 [ false, %for.cond.9 ], [ %cmp13, %land.rhs.11 ]
  br i1 %29, label %for.body.15, label %for.end.23

for.body.15:                                      ; preds = %land.end.14
  %30 = load %struct._GList*, %struct._GList** %p, align 8
  %data17 = getelementptr inbounds %struct._GList, %struct._GList* %30, i32 0, i32 0
  %31 = load i8*, i8** %data17, align 8
  %32 = bitcast i8* %31 to %struct.Command_t*
  store %struct.Command_t* %32, %struct.Command_t** %curr16, align 8
  %33 = load %struct._GList*, %struct._GList** %p, align 8
  %prev = getelementptr inbounds %struct._GList, %struct._GList* %33, i32 0, i32 2
  %34 = load %struct._GList*, %struct._GList** %prev, align 8
  store %struct._GList* %34, %struct._GList** %q, align 8
  %35 = load %struct.Command_t*, %struct.Command_t** %curr16, align 8
  call void @command_destruct(%struct.Command_t* %35)
  %36 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %list18 = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %36, i32 0, i32 2
  %37 = load %struct._GList*, %struct._GList** %list18, align 8
  %38 = load %struct._GList*, %struct._GList** %p, align 8
  %call19 = call %struct._GList* @g_list_remove_link(%struct._GList* %37, %struct._GList* %38)
  %39 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %list20 = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %39, i32 0, i32 2
  store %struct._GList* %call19, %struct._GList** %list20, align 8
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.body.15
  %40 = load %struct._GList*, %struct._GList** %q, align 8
  store %struct._GList* %40, %struct._GList** %p, align 8
  %41 = load i32, i32* %diff, align 4
  %dec22 = add nsw i32 %41, -1
  store i32 %dec22, i32* %diff, align 4
  br label %for.cond.9

for.end.23:                                       ; preds = %land.end.14
  %42 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %update_cb = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %42, i32 0, i32 5
  %43 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %undo24 = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %43, i32 0, i32 3
  %44 = load %struct._GList*, %struct._GList** %undo24, align 8
  %data25 = getelementptr inbounds %struct._GList, %struct._GList* %44, i32 0, i32 0
  %45 = load i8*, i8** %data25, align 8
  %46 = bitcast i8* %45 to %struct.Command_t*
  call void @command_list_callback_call(%struct.CommandListCallback_t* %update_cb, %struct.Command_t* %46)
  br label %if.end

if.end:                                           ; preds = %for.end.23, %entry
  %47 = load i32, i32* %level.addr, align 4
  %48 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %undo_levels = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %48, i32 0, i32 1
  store i32 %47, i32* %undo_levels, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.Command_t* @command_list_get_redo_command() #0 {
entry:
  %0 = load %struct._GList*, %struct._GList** getelementptr inbounds (%struct.CommandList_t, %struct.CommandList_t* @_command_list, i32 0, i32 4), align 8
  %tobool = icmp ne %struct._GList* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct._GList*, %struct._GList** getelementptr inbounds (%struct.CommandList_t, %struct.CommandList_t* @_command_list, i32 0, i32 4), align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %1, i32 0, i32 0
  %2 = load i8*, i8** %data, align 8
  %3 = bitcast i8* %2 to %struct.Command_t*
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.Command_t* [ %3, %cond.true ], [ null, %cond.false ]
  ret %struct.Command_t* %cond
}

; Function Attrs: nounwind uwtable
define void @command_list_add_update_cb(void (%struct.Command_t*, i8*)* %func, i8* %data) #0 {
entry:
  %func.addr = alloca void (%struct.Command_t*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store void (%struct.Command_t*, i8*)* %func, void (%struct.Command_t*, i8*)** %func.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load void (%struct.Command_t*, i8*)*, void (%struct.Command_t*, i8*)** %func.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  call void @command_list_callback_add(%struct.CommandListCallback_t* getelementptr inbounds (%struct.CommandList_t, %struct.CommandList_t* @_command_list, i32 0, i32 5), void (%struct.Command_t*, i8*)* %0, i8* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @command_list_callback_add(%struct.CommandListCallback_t* %list, void (%struct.Command_t*, i8*)* %func, i8* %data) #0 {
entry:
  %list.addr = alloca %struct.CommandListCallback_t*, align 8
  %func.addr = alloca void (%struct.Command_t*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %cb = alloca %struct.CommandListCB_t*, align 8
  store %struct.CommandListCallback_t* %list, %struct.CommandListCallback_t** %list.addr, align 8
  store void (%struct.Command_t*, i8*)* %func, void (%struct.Command_t*, i8*)** %func.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 16)
  %0 = bitcast i8* %call to %struct.CommandListCB_t*
  store %struct.CommandListCB_t* %0, %struct.CommandListCB_t** %cb, align 8
  %1 = load void (%struct.Command_t*, i8*)*, void (%struct.Command_t*, i8*)** %func.addr, align 8
  %2 = load %struct.CommandListCB_t*, %struct.CommandListCB_t** %cb, align 8
  %func1 = getelementptr inbounds %struct.CommandListCB_t, %struct.CommandListCB_t* %2, i32 0, i32 0
  store void (%struct.Command_t*, i8*)* %1, void (%struct.Command_t*, i8*)** %func1, align 8
  %3 = load i8*, i8** %data.addr, align 8
  %4 = load %struct.CommandListCB_t*, %struct.CommandListCB_t** %cb, align 8
  %data2 = getelementptr inbounds %struct.CommandListCB_t, %struct.CommandListCB_t* %4, i32 0, i32 1
  store i8* %3, i8** %data2, align 8
  %5 = load %struct.CommandListCallback_t*, %struct.CommandListCallback_t** %list.addr, align 8
  %list3 = getelementptr inbounds %struct.CommandListCallback_t, %struct.CommandListCallback_t* %5, i32 0, i32 0
  %6 = load %struct._GList*, %struct._GList** %list3, align 8
  %7 = load %struct.CommandListCB_t*, %struct.CommandListCB_t** %cb, align 8
  %8 = bitcast %struct.CommandListCB_t* %7 to i8*
  %call4 = call %struct._GList* @g_list_append(%struct._GList* %6, i8* %8)
  %9 = load %struct.CommandListCallback_t*, %struct.CommandListCallback_t** %list.addr, align 8
  %list5 = getelementptr inbounds %struct.CommandListCallback_t, %struct.CommandListCallback_t* %9, i32 0, i32 0
  store %struct._GList* %call4, %struct._GList** %list5, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @command_execute(%struct.Command_t* %command) #0 {
entry:
  %command.addr = alloca %struct.Command_t*, align 8
  %value = alloca i32, align 4
  store %struct.Command_t* %command, %struct.Command_t** %command.addr, align 8
  %0 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  %locked = getelementptr inbounds %struct.Command_t, %struct.Command_t* %0, i32 0, i32 3
  %1 = load i32, i32* %locked, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  %locked1 = getelementptr inbounds %struct.Command_t, %struct.Command_t* %2, i32 0, i32 3
  store i32 0, i32* %locked1, align 4
  br label %if.end.16

if.else:                                          ; preds = %entry
  %3 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  %sub_commands = getelementptr inbounds %struct.Command_t, %struct.Command_t* %3, i32 0, i32 1
  %4 = load %struct.CommandList_t*, %struct.CommandList_t** %sub_commands, align 8
  %tobool2 = icmp ne %struct.CommandList_t* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  %5 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  %sub_commands4 = getelementptr inbounds %struct.Command_t, %struct.Command_t* %5, i32 0, i32 1
  %6 = load %struct.CommandList_t*, %struct.CommandList_t** %sub_commands4, align 8
  call void @command_list_execute(%struct.CommandList_t* %6)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.else
  %7 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  %class = getelementptr inbounds %struct.Command_t, %struct.Command_t* %7, i32 0, i32 0
  %8 = load %struct.CommandClass_t*, %struct.CommandClass_t** %class, align 8
  %execute = getelementptr inbounds %struct.CommandClass_t, %struct.CommandClass_t* %8, i32 0, i32 1
  %9 = load i32 (%struct.Command_t*)*, i32 (%struct.Command_t*)** %execute, align 8
  %tobool5 = icmp ne i32 (%struct.Command_t*)* %9, null
  br i1 %tobool5, label %if.then.6, label %if.end.15

if.then.6:                                        ; preds = %if.end
  %10 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  %class7 = getelementptr inbounds %struct.Command_t, %struct.Command_t* %10, i32 0, i32 0
  %11 = load %struct.CommandClass_t*, %struct.CommandClass_t** %class7, align 8
  %execute8 = getelementptr inbounds %struct.CommandClass_t, %struct.CommandClass_t* %11, i32 0, i32 1
  %12 = load i32 (%struct.Command_t*)*, i32 (%struct.Command_t*)** %execute8, align 8
  %13 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  %call = call i32 %12(%struct.Command_t* %13)
  store i32 %call, i32* %value, align 4
  %14 = load i32, i32* %value, align 4
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.then.6
  %15 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  call void @command_list_add(%struct.Command_t* %15)
  br label %if.end.14

if.else.10:                                       ; preds = %if.then.6
  %16 = load i32, i32* %value, align 4
  %cmp11 = icmp eq i32 %16, 1
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.else.10
  %17 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  call void @command_destruct(%struct.Command_t* %17)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.else.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.9
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @command_list_execute(%struct.CommandList_t* %list) #0 {
entry:
  %list.addr = alloca %struct.CommandList_t*, align 8
  %p = alloca %struct._GList*, align 8
  %command = alloca %struct.Command_t*, align 8
  store %struct.CommandList_t* %list, %struct.CommandList_t** %list.addr, align 8
  %0 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %list1 = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %0, i32 0, i32 2
  %1 = load %struct._GList*, %struct._GList** %list1, align 8
  store %struct._GList* %1, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct.Command_t*
  store %struct.Command_t* %5, %struct.Command_t** %command, align 8
  %6 = load %struct.Command_t*, %struct.Command_t** %command, align 8
  %sub_commands = getelementptr inbounds %struct.Command_t, %struct.Command_t* %6, i32 0, i32 1
  %7 = load %struct.CommandList_t*, %struct.CommandList_t** %sub_commands, align 8
  %tobool2 = icmp ne %struct.CommandList_t* %7, null
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load %struct.Command_t*, %struct.Command_t** %command, align 8
  %sub_commands3 = getelementptr inbounds %struct.Command_t, %struct.Command_t* %8, i32 0, i32 1
  %9 = load %struct.CommandList_t*, %struct.CommandList_t** %sub_commands3, align 8
  call void @command_list_execute(%struct.CommandList_t* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %10 = load %struct.Command_t*, %struct.Command_t** %command, align 8
  %class = getelementptr inbounds %struct.Command_t, %struct.Command_t* %10, i32 0, i32 0
  %11 = load %struct.CommandClass_t*, %struct.CommandClass_t** %class, align 8
  %execute = getelementptr inbounds %struct.CommandClass_t, %struct.CommandClass_t* %11, i32 0, i32 1
  %12 = load i32 (%struct.Command_t*)*, i32 (%struct.Command_t*)** %execute, align 8
  %tobool4 = icmp ne i32 (%struct.Command_t*)* %12, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %13 = load %struct.Command_t*, %struct.Command_t** %command, align 8
  %class6 = getelementptr inbounds %struct.Command_t, %struct.Command_t* %13, i32 0, i32 0
  %14 = load %struct.CommandClass_t*, %struct.CommandClass_t** %class6, align 8
  %execute7 = getelementptr inbounds %struct.CommandClass_t, %struct.CommandClass_t* %14, i32 0, i32 1
  %15 = load i32 (%struct.Command_t*)*, i32 (%struct.Command_t*)** %execute7, align 8
  %16 = load %struct.Command_t*, %struct.Command_t** %command, align 8
  %call = call i32 %15(%struct.Command_t* %16)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %17 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 1
  %18 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %18, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @command_destruct(%struct.Command_t* %command) #0 {
entry:
  %command.addr = alloca %struct.Command_t*, align 8
  store %struct.Command_t* %command, %struct.Command_t** %command.addr, align 8
  %0 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  %sub_commands = getelementptr inbounds %struct.Command_t, %struct.Command_t* %0, i32 0, i32 1
  %1 = load %struct.CommandList_t*, %struct.CommandList_t** %sub_commands, align 8
  %tobool = icmp ne %struct.CommandList_t* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  %sub_commands1 = getelementptr inbounds %struct.Command_t, %struct.Command_t* %2, i32 0, i32 1
  %3 = load %struct.CommandList_t*, %struct.CommandList_t** %sub_commands1, align 8
  call void @command_list_destruct(%struct.CommandList_t* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  %class = getelementptr inbounds %struct.Command_t, %struct.Command_t* %4, i32 0, i32 0
  %5 = load %struct.CommandClass_t*, %struct.CommandClass_t** %class, align 8
  %destruct = getelementptr inbounds %struct.CommandClass_t, %struct.CommandClass_t* %5, i32 0, i32 0
  %destruct2 = bitcast {}** %destruct to void (%struct.Command_t*)**
  %6 = load void (%struct.Command_t*)*, void (%struct.Command_t*)** %destruct2, align 8
  %tobool3 = icmp ne void (%struct.Command_t*)* %6, null
  br i1 %tobool3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %if.end
  %7 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  %class5 = getelementptr inbounds %struct.Command_t, %struct.Command_t* %7, i32 0, i32 0
  %8 = load %struct.CommandClass_t*, %struct.CommandClass_t** %class5, align 8
  %destruct6 = getelementptr inbounds %struct.CommandClass_t, %struct.CommandClass_t* %8, i32 0, i32 0
  %destruct7 = bitcast {}** %destruct6 to void (%struct.Command_t*)**
  %9 = load void (%struct.Command_t*)*, void (%struct.Command_t*)** %destruct7, align 8
  %10 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  call void %9(%struct.Command_t* %10)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.4, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @command_redo(%struct.Command_t* %command) #0 {
entry:
  %command.addr = alloca %struct.Command_t*, align 8
  store %struct.Command_t* %command, %struct.Command_t** %command.addr, align 8
  %0 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  %sub_commands = getelementptr inbounds %struct.Command_t, %struct.Command_t* %0, i32 0, i32 1
  %1 = load %struct.CommandList_t*, %struct.CommandList_t** %sub_commands, align 8
  %tobool = icmp ne %struct.CommandList_t* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  %sub_commands1 = getelementptr inbounds %struct.Command_t, %struct.Command_t* %2, i32 0, i32 1
  %3 = load %struct.CommandList_t*, %struct.CommandList_t** %sub_commands1, align 8
  call void @command_list_redo_all(%struct.CommandList_t* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  %class = getelementptr inbounds %struct.Command_t, %struct.Command_t* %4, i32 0, i32 0
  %5 = load %struct.CommandClass_t*, %struct.CommandClass_t** %class, align 8
  %redo = getelementptr inbounds %struct.CommandClass_t, %struct.CommandClass_t* %5, i32 0, i32 3
  %redo2 = bitcast {}** %redo to void (%struct.Command_t*)**
  %6 = load void (%struct.Command_t*)*, void (%struct.Command_t*)** %redo2, align 8
  %tobool3 = icmp ne void (%struct.Command_t*)* %6, null
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %7 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  %class5 = getelementptr inbounds %struct.Command_t, %struct.Command_t* %7, i32 0, i32 0
  %8 = load %struct.CommandClass_t*, %struct.CommandClass_t** %class5, align 8
  %redo6 = getelementptr inbounds %struct.CommandClass_t, %struct.CommandClass_t* %8, i32 0, i32 3
  %redo7 = bitcast {}** %redo6 to void (%struct.Command_t*)**
  %9 = load void (%struct.Command_t*)*, void (%struct.Command_t*)** %redo7, align 8
  %10 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  call void %9(%struct.Command_t* %10)
  br label %if.end.14

if.else:                                          ; preds = %if.end
  %11 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  %class8 = getelementptr inbounds %struct.Command_t, %struct.Command_t* %11, i32 0, i32 0
  %12 = load %struct.CommandClass_t*, %struct.CommandClass_t** %class8, align 8
  %execute = getelementptr inbounds %struct.CommandClass_t, %struct.CommandClass_t* %12, i32 0, i32 1
  %13 = load i32 (%struct.Command_t*)*, i32 (%struct.Command_t*)** %execute, align 8
  %tobool9 = icmp ne i32 (%struct.Command_t*)* %13, null
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.else
  %14 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  %class11 = getelementptr inbounds %struct.Command_t, %struct.Command_t* %14, i32 0, i32 0
  %15 = load %struct.CommandClass_t*, %struct.CommandClass_t** %class11, align 8
  %execute12 = getelementptr inbounds %struct.CommandClass_t, %struct.CommandClass_t* %15, i32 0, i32 1
  %16 = load i32 (%struct.Command_t*)*, i32 (%struct.Command_t*)** %execute12, align 8
  %17 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  %call = call i32 %16(%struct.Command_t* %17)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.else
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.4
  ret void
}

; Function Attrs: nounwind uwtable
define void @command_list_redo_all(%struct.CommandList_t* %list) #0 {
entry:
  %list.addr = alloca %struct.CommandList_t*, align 8
  store %struct.CommandList_t* %list, %struct.CommandList_t** %list.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %redo = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %0, i32 0, i32 4
  %1 = load %struct._GList*, %struct._GList** %redo, align 8
  %tobool = icmp ne %struct._GList* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  call void @command_list_redo(%struct.CommandList_t* %2)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @command_undo(%struct.Command_t* %command) #0 {
entry:
  %command.addr = alloca %struct.Command_t*, align 8
  store %struct.Command_t* %command, %struct.Command_t** %command.addr, align 8
  %0 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  %sub_commands = getelementptr inbounds %struct.Command_t, %struct.Command_t* %0, i32 0, i32 1
  %1 = load %struct.CommandList_t*, %struct.CommandList_t** %sub_commands, align 8
  %tobool = icmp ne %struct.CommandList_t* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  %sub_commands1 = getelementptr inbounds %struct.Command_t, %struct.Command_t* %2, i32 0, i32 1
  %3 = load %struct.CommandList_t*, %struct.CommandList_t** %sub_commands1, align 8
  call void @command_list_undo_all(%struct.CommandList_t* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  %class = getelementptr inbounds %struct.Command_t, %struct.Command_t* %4, i32 0, i32 0
  %5 = load %struct.CommandClass_t*, %struct.CommandClass_t** %class, align 8
  %undo = getelementptr inbounds %struct.CommandClass_t, %struct.CommandClass_t* %5, i32 0, i32 2
  %undo2 = bitcast {}** %undo to void (%struct.Command_t*)**
  %6 = load void (%struct.Command_t*)*, void (%struct.Command_t*)** %undo2, align 8
  %tobool3 = icmp ne void (%struct.Command_t*)* %6, null
  br i1 %tobool3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %if.end
  %7 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  %class5 = getelementptr inbounds %struct.Command_t, %struct.Command_t* %7, i32 0, i32 0
  %8 = load %struct.CommandClass_t*, %struct.CommandClass_t** %class5, align 8
  %undo6 = getelementptr inbounds %struct.CommandClass_t, %struct.CommandClass_t* %8, i32 0, i32 2
  %undo7 = bitcast {}** %undo6 to void (%struct.Command_t*)**
  %9 = load void (%struct.Command_t*)*, void (%struct.Command_t*)** %undo7, align 8
  %10 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  call void %9(%struct.Command_t* %10)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.4, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @command_list_undo_all(%struct.CommandList_t* %list) #0 {
entry:
  %list.addr = alloca %struct.CommandList_t*, align 8
  store %struct.CommandList_t* %list, %struct.CommandList_t** %list.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %undo = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %0, i32 0, i32 3
  %1 = load %struct._GList*, %struct._GList** %undo, align 8
  %tobool = icmp ne %struct._GList* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  call void @command_list_undo(%struct.CommandList_t* %2)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @command_set_name(%struct.Command_t* %command, i8* %name) #0 {
entry:
  %command.addr = alloca %struct.Command_t*, align 8
  %name.addr = alloca i8*, align 8
  store %struct.Command_t* %command, %struct.Command_t** %command.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  %name1 = getelementptr inbounds %struct.Command_t, %struct.Command_t* %1, i32 0, i32 2
  store i8* %0, i8** %name1, align 8
  %2 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  call void @command_list_callback_call(%struct.CommandListCallback_t* getelementptr inbounds (%struct.CommandList_t, %struct.CommandList_t* @_command_list, i32 0, i32 5), %struct.Command_t* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @command_list_callback_call(%struct.CommandListCallback_t* %list, %struct.Command_t* %command) #0 {
entry:
  %list.addr = alloca %struct.CommandListCallback_t*, align 8
  %command.addr = alloca %struct.Command_t*, align 8
  %p = alloca %struct._GList*, align 8
  %cb = alloca %struct.CommandListCB_t*, align 8
  store %struct.CommandListCallback_t* %list, %struct.CommandListCallback_t** %list.addr, align 8
  store %struct.Command_t* %command, %struct.Command_t** %command.addr, align 8
  %0 = load %struct.CommandListCallback_t*, %struct.CommandListCallback_t** %list.addr, align 8
  %list1 = getelementptr inbounds %struct.CommandListCallback_t, %struct.CommandListCallback_t* %0, i32 0, i32 0
  %1 = load %struct._GList*, %struct._GList** %list1, align 8
  store %struct._GList* %1, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct.CommandListCB_t*
  store %struct.CommandListCB_t* %5, %struct.CommandListCB_t** %cb, align 8
  %6 = load %struct.CommandListCB_t*, %struct.CommandListCB_t** %cb, align 8
  %func = getelementptr inbounds %struct.CommandListCB_t, %struct.CommandListCB_t* %6, i32 0, i32 0
  %7 = load void (%struct.Command_t*, i8*)*, void (%struct.Command_t*, i8*)** %func, align 8
  %8 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  %9 = load %struct.CommandListCB_t*, %struct.CommandListCB_t** %cb, align 8
  %data2 = getelementptr inbounds %struct.CommandListCB_t, %struct.CommandListCB_t* %9, i32 0, i32 1
  %10 = load i8*, i8** %data2, align 8
  call void %7(%struct.Command_t* %8, i8* %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 1
  %12 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %12, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @command_list_undo(%struct.CommandList_t* %list) #0 {
entry:
  %list.addr = alloca %struct.CommandList_t*, align 8
  %command = alloca %struct.Command_t*, align 8
  store %struct.CommandList_t* %list, %struct.CommandList_t** %list.addr, align 8
  %0 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %undo = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %0, i32 0, i32 3
  %1 = load %struct._GList*, %struct._GList** %undo, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %1, i32 0, i32 0
  %2 = load i8*, i8** %data, align 8
  %3 = bitcast i8* %2 to %struct.Command_t*
  store %struct.Command_t* %3, %struct.Command_t** %command, align 8
  %4 = load %struct.Command_t*, %struct.Command_t** %command, align 8
  call void @command_undo(%struct.Command_t* %4)
  %5 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %undo1 = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %5, i32 0, i32 3
  %6 = load %struct._GList*, %struct._GList** %undo1, align 8
  %7 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %redo = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %7, i32 0, i32 4
  store %struct._GList* %6, %struct._GList** %redo, align 8
  %8 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %undo2 = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %8, i32 0, i32 3
  %9 = load %struct._GList*, %struct._GList** %undo2, align 8
  %prev = getelementptr inbounds %struct._GList, %struct._GList* %9, i32 0, i32 2
  %10 = load %struct._GList*, %struct._GList** %prev, align 8
  %11 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %undo3 = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %11, i32 0, i32 3
  store %struct._GList* %10, %struct._GList** %undo3, align 8
  %12 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %undo4 = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %12, i32 0, i32 3
  %13 = load %struct._GList*, %struct._GList** %undo4, align 8
  %tobool = icmp ne %struct._GList* %13, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %14 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %undo5 = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %14, i32 0, i32 3
  %15 = load %struct._GList*, %struct._GList** %undo5, align 8
  %data6 = getelementptr inbounds %struct._GList, %struct._GList* %15, i32 0, i32 0
  %16 = load i8*, i8** %data6, align 8
  %17 = bitcast i8* %16 to %struct.Command_t*
  store %struct.Command_t* %17, %struct.Command_t** %command, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store %struct.Command_t* null, %struct.Command_t** %command, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %update_cb = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %18, i32 0, i32 5
  %19 = load %struct.Command_t*, %struct.Command_t** %command, align 8
  call void @command_list_callback_call(%struct.CommandListCallback_t* %update_cb, %struct.Command_t* %19)
  ret void
}

; Function Attrs: nounwind uwtable
define void @last_command_undo() #0 {
entry:
  call void @command_list_undo(%struct.CommandList_t* @_command_list)
  ret void
}

; Function Attrs: nounwind uwtable
define void @command_list_redo(%struct.CommandList_t* %list) #0 {
entry:
  %list.addr = alloca %struct.CommandList_t*, align 8
  %command = alloca %struct.Command_t*, align 8
  store %struct.CommandList_t* %list, %struct.CommandList_t** %list.addr, align 8
  %0 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %redo = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %0, i32 0, i32 4
  %1 = load %struct._GList*, %struct._GList** %redo, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %1, i32 0, i32 0
  %2 = load i8*, i8** %data, align 8
  %3 = bitcast i8* %2 to %struct.Command_t*
  store %struct.Command_t* %3, %struct.Command_t** %command, align 8
  %4 = load %struct.Command_t*, %struct.Command_t** %command, align 8
  call void @command_redo(%struct.Command_t* %4)
  %5 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %redo1 = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %5, i32 0, i32 4
  %6 = load %struct._GList*, %struct._GList** %redo1, align 8
  %7 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %undo = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %7, i32 0, i32 3
  store %struct._GList* %6, %struct._GList** %undo, align 8
  %8 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %redo2 = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %8, i32 0, i32 4
  %9 = load %struct._GList*, %struct._GList** %redo2, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %9, i32 0, i32 1
  %10 = load %struct._GList*, %struct._GList** %next, align 8
  %11 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %redo3 = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %11, i32 0, i32 4
  store %struct._GList* %10, %struct._GList** %redo3, align 8
  %12 = load %struct.CommandList_t*, %struct.CommandList_t** %list.addr, align 8
  %update_cb = getelementptr inbounds %struct.CommandList_t, %struct.CommandList_t* %12, i32 0, i32 5
  %13 = load %struct.Command_t*, %struct.Command_t** %command, align 8
  call void @command_list_callback_call(%struct.CommandListCallback_t* %update_cb, %struct.Command_t* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define void @last_command_redo() #0 {
entry:
  call void @command_list_redo(%struct.CommandList_t* @_command_list)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.Command_t* @command_init(%struct.Command_t* %command, i8* %name, %struct.CommandClass_t* %class) #0 {
entry:
  %command.addr = alloca %struct.Command_t*, align 8
  %name.addr = alloca i8*, align 8
  %class.addr = alloca %struct.CommandClass_t*, align 8
  store %struct.Command_t* %command, %struct.Command_t** %command.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.CommandClass_t* %class, %struct.CommandClass_t** %class.addr, align 8
  %0 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  %sub_commands = getelementptr inbounds %struct.Command_t, %struct.Command_t* %0, i32 0, i32 1
  store %struct.CommandList_t* null, %struct.CommandList_t** %sub_commands, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %2 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  %name1 = getelementptr inbounds %struct.Command_t, %struct.Command_t* %2, i32 0, i32 2
  store i8* %1, i8** %name1, align 8
  %3 = load %struct.CommandClass_t*, %struct.CommandClass_t** %class.addr, align 8
  %4 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  %class2 = getelementptr inbounds %struct.Command_t, %struct.Command_t* %4, i32 0, i32 0
  store %struct.CommandClass_t* %3, %struct.CommandClass_t** %class2, align 8
  %5 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  %locked = getelementptr inbounds %struct.Command_t, %struct.Command_t* %5, i32 0, i32 3
  store i32 0, i32* %locked, align 4
  %6 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  ret %struct.Command_t* %6
}

; Function Attrs: nounwind uwtable
define void @command_add_subcommand(%struct.Command_t* %command, %struct.Command_t* %sub_command) #0 {
entry:
  %command.addr = alloca %struct.Command_t*, align 8
  %sub_command.addr = alloca %struct.Command_t*, align 8
  store %struct.Command_t* %command, %struct.Command_t** %command.addr, align 8
  store %struct.Command_t* %sub_command, %struct.Command_t** %sub_command.addr, align 8
  %0 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  %sub_commands = getelementptr inbounds %struct.Command_t, %struct.Command_t* %0, i32 0, i32 1
  %1 = load %struct.CommandList_t*, %struct.CommandList_t** %sub_commands, align 8
  %tobool = icmp ne %struct.CommandList_t* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct.CommandList_t* @command_list_new(i32 -1)
  %2 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  %sub_commands1 = getelementptr inbounds %struct.Command_t, %struct.Command_t* %2, i32 0, i32 1
  store %struct.CommandList_t* %call, %struct.CommandList_t** %sub_commands1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  %sub_commands2 = getelementptr inbounds %struct.Command_t, %struct.Command_t* %3, i32 0, i32 1
  %4 = load %struct.CommandList_t*, %struct.CommandList_t** %sub_commands2, align 8
  %5 = load %struct.Command_t*, %struct.Command_t** %sub_command.addr, align 8
  call void @subcommand_list_add(%struct.CommandList_t* %4, %struct.Command_t* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.Command_t* @command_new(void ()* %func) #0 {
entry:
  %func.addr = alloca void ()*, align 8
  %command = alloca %struct.BasicCommand_t*, align 8
  store void ()* %func, void ()** %func.addr, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 40)
  %0 = bitcast i8* %call to %struct.BasicCommand_t*
  store %struct.BasicCommand_t* %0, %struct.BasicCommand_t** %command, align 8
  %1 = load void ()*, void ()** %func.addr, align 8
  %2 = load %struct.BasicCommand_t*, %struct.BasicCommand_t** %command, align 8
  %func1 = getelementptr inbounds %struct.BasicCommand_t, %struct.BasicCommand_t* %2, i32 0, i32 1
  store void ()* %1, void ()** %func1, align 8
  %3 = load %struct.BasicCommand_t*, %struct.BasicCommand_t** %command, align 8
  %parent = getelementptr inbounds %struct.BasicCommand_t, %struct.BasicCommand_t* %3, i32 0, i32 0
  %call2 = call %struct.Command_t* @command_init(%struct.Command_t* %parent, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.CommandClass_t* bitcast ({ void (%struct.Command_t*)*, i32 (%struct.Command_t*)*, void (%struct.Command_t*)*, void (%struct.Command_t*)* }* @basic_command_class to %struct.CommandClass_t*))
  ret %struct.Command_t* %call2
}

declare void @g_list_free(%struct._GList*) #1

declare %struct._GList* @g_list_remove_link(%struct._GList*, %struct._GList*) #1

declare i32 @g_list_length(%struct._GList*) #1

declare %struct._GList* @g_list_first(%struct._GList*) #1

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare %struct._GList* @g_list_last(%struct._GList*) #1

; Function Attrs: nounwind uwtable
define internal i32 @basic_command_execute(%struct.Command_t* %command) #0 {
entry:
  %command.addr = alloca %struct.Command_t*, align 8
  store %struct.Command_t* %command, %struct.Command_t** %command.addr, align 8
  %0 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  %1 = bitcast %struct.Command_t* %0 to %struct.BasicCommand_t*
  %func = getelementptr inbounds %struct.BasicCommand_t, %struct.BasicCommand_t* %1, i32 0, i32 1
  %2 = load void ()*, void ()** %func, align 8
  call void %2()
  ret i32 1
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
