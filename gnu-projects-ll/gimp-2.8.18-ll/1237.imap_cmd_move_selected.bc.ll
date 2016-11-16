; ModuleID = './plug-ins/imagemap/imap_cmd_move_selected.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CommandClass_t = type { void (%struct.Command_t*)*, i32 (%struct.Command_t*)*, void (%struct.Command_t*)*, void (%struct.Command_t*)* }
%struct.Command_t = type { %struct.CommandClass_t*, %struct.CommandList_t*, i8*, i32 }
%struct.CommandList_t = type { %struct.CommandList_t*, i32, %struct._GList*, %struct._GList*, %struct._GList*, %struct.CommandListCallback_t }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.CommandListCallback_t = type { %struct._GList* }
%struct.ObjectList_t = type { %struct._GList*, i32, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t }
%struct.ObjectListCallback_t = type { %struct._GList* }
%struct.MoveSelectedCommand_t = type { %struct.Command_t, %struct.ObjectList_t*, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Move Selected Objects\00", align 1
@move_selected_command_class = internal global %struct.CommandClass_t { void (%struct.Command_t*)* null, i32 (%struct.Command_t*)* @move_selected_command_execute, void (%struct.Command_t*)* @move_selected_command_undo, void (%struct.Command_t*)* null }, align 8

; Function Attrs: nounwind uwtable
define %struct.Command_t* @move_selected_command_new(%struct.ObjectList_t* %list, i32 %dx, i32 %dy) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %dx.addr = alloca i32, align 4
  %dy.addr = alloca i32, align 4
  %command = alloca %struct.MoveSelectedCommand_t*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store i32 %dx, i32* %dx.addr, align 4
  store i32 %dy, i32* %dy.addr, align 4
  %call = call noalias i8* @g_malloc_n(i64 1, i64 48)
  %0 = bitcast i8* %call to %struct.MoveSelectedCommand_t*
  store %struct.MoveSelectedCommand_t* %0, %struct.MoveSelectedCommand_t** %command, align 8
  %1 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %2 = load %struct.MoveSelectedCommand_t*, %struct.MoveSelectedCommand_t** %command, align 8
  %list1 = getelementptr inbounds %struct.MoveSelectedCommand_t, %struct.MoveSelectedCommand_t* %2, i32 0, i32 1
  store %struct.ObjectList_t* %1, %struct.ObjectList_t** %list1, align 8
  %3 = load i32, i32* %dx.addr, align 4
  %4 = load %struct.MoveSelectedCommand_t*, %struct.MoveSelectedCommand_t** %command, align 8
  %dx2 = getelementptr inbounds %struct.MoveSelectedCommand_t, %struct.MoveSelectedCommand_t* %4, i32 0, i32 2
  store i32 %3, i32* %dx2, align 4
  %5 = load i32, i32* %dy.addr, align 4
  %6 = load %struct.MoveSelectedCommand_t*, %struct.MoveSelectedCommand_t** %command, align 8
  %dy3 = getelementptr inbounds %struct.MoveSelectedCommand_t, %struct.MoveSelectedCommand_t* %6, i32 0, i32 3
  store i32 %5, i32* %dy3, align 4
  %7 = load %struct.MoveSelectedCommand_t*, %struct.MoveSelectedCommand_t** %command, align 8
  %parent = getelementptr inbounds %struct.MoveSelectedCommand_t, %struct.MoveSelectedCommand_t* %7, i32 0, i32 0
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0)) #3
  %call5 = call %struct.Command_t* @command_init(%struct.Command_t* %parent, i8* %call4, %struct.CommandClass_t* @move_selected_command_class)
  ret %struct.Command_t* %call5
}

declare noalias i8* @g_malloc_n(i64, i64) #1

declare %struct.Command_t* @command_init(%struct.Command_t*, i8*, %struct.CommandClass_t*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @move_selected_command_execute(%struct.Command_t* %parent) #0 {
entry:
  %parent.addr = alloca %struct.Command_t*, align 8
  %command = alloca %struct.MoveSelectedCommand_t*, align 8
  store %struct.Command_t* %parent, %struct.Command_t** %parent.addr, align 8
  %0 = load %struct.Command_t*, %struct.Command_t** %parent.addr, align 8
  %1 = bitcast %struct.Command_t* %0 to %struct.MoveSelectedCommand_t*
  store %struct.MoveSelectedCommand_t* %1, %struct.MoveSelectedCommand_t** %command, align 8
  %2 = load %struct.MoveSelectedCommand_t*, %struct.MoveSelectedCommand_t** %command, align 8
  %list = getelementptr inbounds %struct.MoveSelectedCommand_t, %struct.MoveSelectedCommand_t* %2, i32 0, i32 1
  %3 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list, align 8
  %4 = load %struct.MoveSelectedCommand_t*, %struct.MoveSelectedCommand_t** %command, align 8
  %dx = getelementptr inbounds %struct.MoveSelectedCommand_t, %struct.MoveSelectedCommand_t* %4, i32 0, i32 2
  %5 = load i32, i32* %dx, align 4
  %6 = load %struct.MoveSelectedCommand_t*, %struct.MoveSelectedCommand_t** %command, align 8
  %dy = getelementptr inbounds %struct.MoveSelectedCommand_t, %struct.MoveSelectedCommand_t* %6, i32 0, i32 3
  %7 = load i32, i32* %dy, align 4
  call void @object_list_move_selected(%struct.ObjectList_t* %3, i32 %5, i32 %7)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @move_selected_command_undo(%struct.Command_t* %parent) #0 {
entry:
  %parent.addr = alloca %struct.Command_t*, align 8
  %command = alloca %struct.MoveSelectedCommand_t*, align 8
  store %struct.Command_t* %parent, %struct.Command_t** %parent.addr, align 8
  %0 = load %struct.Command_t*, %struct.Command_t** %parent.addr, align 8
  %1 = bitcast %struct.Command_t* %0 to %struct.MoveSelectedCommand_t*
  store %struct.MoveSelectedCommand_t* %1, %struct.MoveSelectedCommand_t** %command, align 8
  %2 = load %struct.MoveSelectedCommand_t*, %struct.MoveSelectedCommand_t** %command, align 8
  %list = getelementptr inbounds %struct.MoveSelectedCommand_t, %struct.MoveSelectedCommand_t* %2, i32 0, i32 1
  %3 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list, align 8
  %4 = load %struct.MoveSelectedCommand_t*, %struct.MoveSelectedCommand_t** %command, align 8
  %dx = getelementptr inbounds %struct.MoveSelectedCommand_t, %struct.MoveSelectedCommand_t* %4, i32 0, i32 2
  %5 = load i32, i32* %dx, align 4
  %sub = sub nsw i32 0, %5
  %6 = load %struct.MoveSelectedCommand_t*, %struct.MoveSelectedCommand_t** %command, align 8
  %dy = getelementptr inbounds %struct.MoveSelectedCommand_t, %struct.MoveSelectedCommand_t* %6, i32 0, i32 3
  %7 = load i32, i32* %dy, align 4
  %sub1 = sub nsw i32 0, %7
  call void @object_list_move_selected(%struct.ObjectList_t* %3, i32 %sub, i32 %sub1)
  ret void
}

declare void @object_list_move_selected(%struct.ObjectList_t*, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
