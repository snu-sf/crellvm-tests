; ModuleID = './plug-ins/imagemap/imap_cmd_copy.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CommandClass_t = type { void (%struct.Command_t*)*, i32 (%struct.Command_t*)*, void (%struct.Command_t*)*, void (%struct.Command_t*)* }
%struct.Command_t = type { %struct.CommandClass_t*, %struct.CommandList_t*, i8*, i32 }
%struct.CommandList_t = type { %struct.CommandList_t*, i32, %struct._GList*, %struct._GList*, %struct._GList*, %struct.CommandListCallback_t }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.CommandListCallback_t = type { %struct._GList* }
%struct.ObjectList_t = type { %struct._GList*, i32, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t }
%struct.ObjectListCallback_t = type { %struct._GList* }
%struct.CopyCommand_t = type { %struct.Command_t, %struct.ObjectList_t*, %struct.ObjectList_t* }

@.str = private unnamed_addr constant [5 x i8] c"Copy\00", align 1
@copy_command_class = internal global %struct.CommandClass_t { void (%struct.Command_t*)* null, i32 (%struct.Command_t*)* @copy_command_execute, void (%struct.Command_t*)* @copy_command_undo, void (%struct.Command_t*)* null }, align 8

; Function Attrs: nounwind uwtable
define %struct.Command_t* @copy_command_new(%struct.ObjectList_t* %list) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %command = alloca %struct.CopyCommand_t*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 48)
  %0 = bitcast i8* %call to %struct.CopyCommand_t*
  store %struct.CopyCommand_t* %0, %struct.CopyCommand_t** %command, align 8
  %1 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %2 = load %struct.CopyCommand_t*, %struct.CopyCommand_t** %command, align 8
  %list1 = getelementptr inbounds %struct.CopyCommand_t, %struct.CopyCommand_t* %2, i32 0, i32 1
  store %struct.ObjectList_t* %1, %struct.ObjectList_t** %list1, align 8
  %3 = load %struct.CopyCommand_t*, %struct.CopyCommand_t** %command, align 8
  %paste_buffer = getelementptr inbounds %struct.CopyCommand_t, %struct.CopyCommand_t* %3, i32 0, i32 2
  store %struct.ObjectList_t* null, %struct.ObjectList_t** %paste_buffer, align 8
  %4 = load %struct.CopyCommand_t*, %struct.CopyCommand_t** %command, align 8
  %parent = getelementptr inbounds %struct.CopyCommand_t, %struct.CopyCommand_t* %4, i32 0, i32 0
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #3
  %call3 = call %struct.Command_t* @command_init(%struct.Command_t* %parent, i8* %call2, %struct.CommandClass_t* @copy_command_class)
  ret %struct.Command_t* %call3
}

declare noalias i8* @g_malloc_n(i64, i64) #1

declare %struct.Command_t* @command_init(%struct.Command_t*, i8*, %struct.CommandClass_t*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @copy_command_execute(%struct.Command_t* %parent) #0 {
entry:
  %parent.addr = alloca %struct.Command_t*, align 8
  %command = alloca %struct.CopyCommand_t*, align 8
  store %struct.Command_t* %parent, %struct.Command_t** %parent.addr, align 8
  %0 = load %struct.Command_t*, %struct.Command_t** %parent.addr, align 8
  %1 = bitcast %struct.Command_t* %0 to %struct.CopyCommand_t*
  store %struct.CopyCommand_t* %1, %struct.CopyCommand_t** %command, align 8
  %2 = load %struct.CopyCommand_t*, %struct.CopyCommand_t** %command, align 8
  %paste_buffer = getelementptr inbounds %struct.CopyCommand_t, %struct.CopyCommand_t* %2, i32 0, i32 2
  %3 = load %struct.ObjectList_t*, %struct.ObjectList_t** %paste_buffer, align 8
  %call = call %struct.ObjectList_t* @get_paste_buffer()
  %call1 = call %struct.ObjectList_t* @object_list_copy(%struct.ObjectList_t* %3, %struct.ObjectList_t* %call)
  %4 = load %struct.CopyCommand_t*, %struct.CopyCommand_t** %command, align 8
  %paste_buffer2 = getelementptr inbounds %struct.CopyCommand_t, %struct.CopyCommand_t* %4, i32 0, i32 2
  store %struct.ObjectList_t* %call1, %struct.ObjectList_t** %paste_buffer2, align 8
  %5 = load %struct.CopyCommand_t*, %struct.CopyCommand_t** %command, align 8
  %list = getelementptr inbounds %struct.CopyCommand_t, %struct.CopyCommand_t* %5, i32 0, i32 1
  %6 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list, align 8
  call void @object_list_copy_to_paste_buffer(%struct.ObjectList_t* %6)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @copy_command_undo(%struct.Command_t* %parent) #0 {
entry:
  %parent.addr = alloca %struct.Command_t*, align 8
  %command = alloca %struct.CopyCommand_t*, align 8
  store %struct.Command_t* %parent, %struct.Command_t** %parent.addr, align 8
  %0 = load %struct.Command_t*, %struct.Command_t** %parent.addr, align 8
  %1 = bitcast %struct.Command_t* %0 to %struct.CopyCommand_t*
  store %struct.CopyCommand_t* %1, %struct.CopyCommand_t** %command, align 8
  %call = call %struct.ObjectList_t* @get_paste_buffer()
  %2 = load %struct.CopyCommand_t*, %struct.CopyCommand_t** %command, align 8
  %paste_buffer = getelementptr inbounds %struct.CopyCommand_t, %struct.CopyCommand_t* %2, i32 0, i32 2
  %3 = load %struct.ObjectList_t*, %struct.ObjectList_t** %paste_buffer, align 8
  %call1 = call %struct.ObjectList_t* @object_list_copy(%struct.ObjectList_t* %call, %struct.ObjectList_t* %3)
  ret void
}

declare %struct.ObjectList_t* @object_list_copy(%struct.ObjectList_t*, %struct.ObjectList_t*) #1

declare %struct.ObjectList_t* @get_paste_buffer() #1

declare void @object_list_copy_to_paste_buffer(%struct.ObjectList_t*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
