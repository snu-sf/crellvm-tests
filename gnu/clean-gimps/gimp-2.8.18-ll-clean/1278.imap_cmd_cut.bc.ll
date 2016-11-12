; ModuleID = './plug-ins/imagemap/imap_cmd_cut.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CommandClass_t = type { void (%struct.Command_t*)*, i32 (%struct.Command_t*)*, void (%struct.Command_t*)*, void (%struct.Command_t*)* }
%struct.Command_t = type { %struct.CommandClass_t*, %struct.CommandList_t*, i8*, i32 }
%struct.CommandList_t = type { %struct.CommandList_t*, i32, %struct._GList*, %struct._GList*, %struct._GList*, %struct.CommandListCallback_t }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.CommandListCallback_t = type { %struct._GList* }
%struct.ObjectList_t = type { %struct._GList*, i32, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t }
%struct.ObjectListCallback_t = type { %struct._GList* }
%struct.CutCommand_t = type { %struct.Command_t, %struct.ObjectList_t*, %struct.ObjectList_t* }
%struct.Object_t = type { %struct.ObjectClass_t*, %struct.ObjectList_t*, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.ObjectClass_t = type { i8*, %struct.AreaInfoDialog_t*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32 (%struct.Object_t*)*, void (%struct.Object_t*)*, %struct.Object_t* (%struct.Object_t*)*, void (%struct.Object_t*, %struct.Object_t*)*, void (%struct.Object_t*)*, void (%struct.Object_t*, %struct._cairo*)*, void (%struct.Object_t*, %struct._cairo*)*, void (%struct.Object_t*, i32, i32)* (%struct.Object_t*, i32, i32)*, i32 (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32*, i32*, i32*, i32*)*, void (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32, i32)*, i8* (%struct._GtkWidget*)*, {}*, {}*, {}*, {}*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, %struct._GdkEventButton*)*, i8* ()* }
%struct.AreaInfoDialog_t = type { %struct.DefaultDialog_t*, %struct.Object_t*, %struct.Object_t*, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i8*, i8* }
%struct.DefaultDialog_t = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, void (i8*)*, i8*, void (i8*)*, i8*, void (i8*)*, i8* }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkStyle = type { %struct._GObject, [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], %struct._GdkColor, %struct._GdkColor, %struct._PangoFontDescription*, i32, i32, [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], %struct._GdkGC*, %struct._GdkGC*, [5 x %struct._GdkDrawable*], i32, i32, %struct._GdkColormap*, %struct._GdkFont*, %struct._PangoFontDescription*, %struct._GtkRcStyle*, %struct._GSList*, %struct._GArray*, %struct._GSList* }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkGC = type { %struct._GObject, i32, i32, i32, i32, %struct._GdkColormap* }
%struct._GdkColormap = type { %struct._GObject, i32, %struct._GdkColor*, %struct._GdkVisual*, i8* }
%struct._GdkVisual = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkFont = type opaque
%struct._PangoFontDescription = type opaque
%struct._GtkRcStyle = type { %struct._GObject, i8*, [5 x i8*], %struct._PangoFontDescription*, [5 x i32], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], i32, i32, %struct._GArray*, %struct._GSList*, %struct._GSList*, i8 }
%struct._GArray = type { i8*, i32 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._cairo = type opaque
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"Cut\00", align 1
@cut_command_class = internal global %struct.CommandClass_t { void (%struct.Command_t*)* @cut_command_destruct, i32 (%struct.Command_t*)* @cut_command_execute, void (%struct.Command_t*)* @cut_command_undo, void (%struct.Command_t*)* null }, align 8

; Function Attrs: nounwind uwtable
define %struct.Command_t* @cut_command_new(%struct.ObjectList_t* %list) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %command = alloca %struct.CutCommand_t*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 48)
  %0 = bitcast i8* %call to %struct.CutCommand_t*
  store %struct.CutCommand_t* %0, %struct.CutCommand_t** %command, align 8
  %1 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %2 = load %struct.CutCommand_t*, %struct.CutCommand_t** %command, align 8
  %list1 = getelementptr inbounds %struct.CutCommand_t, %struct.CutCommand_t* %2, i32 0, i32 1
  store %struct.ObjectList_t* %1, %struct.ObjectList_t** %list1, align 8
  %3 = load %struct.CutCommand_t*, %struct.CutCommand_t** %command, align 8
  %paste_buffer = getelementptr inbounds %struct.CutCommand_t, %struct.CutCommand_t* %3, i32 0, i32 2
  store %struct.ObjectList_t* null, %struct.ObjectList_t** %paste_buffer, align 8
  %4 = load %struct.CutCommand_t*, %struct.CutCommand_t** %command, align 8
  %parent = getelementptr inbounds %struct.CutCommand_t, %struct.CutCommand_t* %4, i32 0, i32 0
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0)) #3
  %call3 = call %struct.Command_t* @command_init(%struct.Command_t* %parent, i8* %call2, %struct.CommandClass_t* @cut_command_class)
  ret %struct.Command_t* %call3
}

declare noalias i8* @g_malloc_n(i64, i64) #1

declare %struct.Command_t* @command_init(%struct.Command_t*, i8*, %struct.CommandClass_t*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @cut_command_destruct(%struct.Command_t* %parent) #0 {
entry:
  %parent.addr = alloca %struct.Command_t*, align 8
  %command = alloca %struct.CutCommand_t*, align 8
  store %struct.Command_t* %parent, %struct.Command_t** %parent.addr, align 8
  %0 = load %struct.Command_t*, %struct.Command_t** %parent.addr, align 8
  %1 = bitcast %struct.Command_t* %0 to %struct.CutCommand_t*
  store %struct.CutCommand_t* %1, %struct.CutCommand_t** %command, align 8
  %2 = load %struct.CutCommand_t*, %struct.CutCommand_t** %command, align 8
  %paste_buffer = getelementptr inbounds %struct.CutCommand_t, %struct.CutCommand_t* %2, i32 0, i32 2
  %3 = load %struct.ObjectList_t*, %struct.ObjectList_t** %paste_buffer, align 8
  call void @object_list_destruct(%struct.ObjectList_t* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @cut_command_execute(%struct.Command_t* %parent) #0 {
entry:
  %parent.addr = alloca %struct.Command_t*, align 8
  %command = alloca %struct.CutCommand_t*, align 8
  %id = alloca i8*, align 8
  store %struct.Command_t* %parent, %struct.Command_t** %parent.addr, align 8
  %0 = load %struct.Command_t*, %struct.Command_t** %parent.addr, align 8
  %1 = bitcast %struct.Command_t* %0 to %struct.CutCommand_t*
  store %struct.CutCommand_t* %1, %struct.CutCommand_t** %command, align 8
  %2 = load %struct.CutCommand_t*, %struct.CutCommand_t** %command, align 8
  %paste_buffer = getelementptr inbounds %struct.CutCommand_t, %struct.CutCommand_t* %2, i32 0, i32 2
  %3 = load %struct.ObjectList_t*, %struct.ObjectList_t** %paste_buffer, align 8
  %call = call %struct.ObjectList_t* @get_paste_buffer()
  %call1 = call %struct.ObjectList_t* @object_list_copy(%struct.ObjectList_t* %3, %struct.ObjectList_t* %call)
  %4 = load %struct.CutCommand_t*, %struct.CutCommand_t** %command, align 8
  %paste_buffer2 = getelementptr inbounds %struct.CutCommand_t, %struct.CutCommand_t* %4, i32 0, i32 2
  store %struct.ObjectList_t* %call1, %struct.ObjectList_t** %paste_buffer2, align 8
  %5 = load %struct.CutCommand_t*, %struct.CutCommand_t** %command, align 8
  %list = getelementptr inbounds %struct.CutCommand_t, %struct.CutCommand_t* %5, i32 0, i32 1
  %6 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list, align 8
  %7 = load %struct.CutCommand_t*, %struct.CutCommand_t** %command, align 8
  %8 = bitcast %struct.CutCommand_t* %7 to i8*
  %call3 = call i8* @object_list_add_remove_cb(%struct.ObjectList_t* %6, void (%struct.Object_t*, i8*)* @remove_one_object, i8* %8)
  store i8* %call3, i8** %id, align 8
  %9 = load %struct.CutCommand_t*, %struct.CutCommand_t** %command, align 8
  %list4 = getelementptr inbounds %struct.CutCommand_t, %struct.CutCommand_t* %9, i32 0, i32 1
  %10 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list4, align 8
  %call5 = call i32 @object_list_cut(%struct.ObjectList_t* %10)
  %11 = load %struct.CutCommand_t*, %struct.CutCommand_t** %command, align 8
  %list6 = getelementptr inbounds %struct.CutCommand_t, %struct.CutCommand_t* %11, i32 0, i32 1
  %12 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list6, align 8
  %13 = load i8*, i8** %id, align 8
  call void @object_list_remove_remove_cb(%struct.ObjectList_t* %12, i8* %13)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @cut_command_undo(%struct.Command_t* %parent) #0 {
entry:
  %parent.addr = alloca %struct.Command_t*, align 8
  %command = alloca %struct.CutCommand_t*, align 8
  store %struct.Command_t* %parent, %struct.Command_t** %parent.addr, align 8
  %0 = load %struct.Command_t*, %struct.Command_t** %parent.addr, align 8
  %1 = bitcast %struct.Command_t* %0 to %struct.CutCommand_t*
  store %struct.CutCommand_t* %1, %struct.CutCommand_t** %command, align 8
  %call = call %struct.ObjectList_t* @get_paste_buffer()
  %2 = load %struct.CutCommand_t*, %struct.CutCommand_t** %command, align 8
  %paste_buffer = getelementptr inbounds %struct.CutCommand_t, %struct.CutCommand_t* %2, i32 0, i32 2
  %3 = load %struct.ObjectList_t*, %struct.ObjectList_t** %paste_buffer, align 8
  %call1 = call %struct.ObjectList_t* @object_list_copy(%struct.ObjectList_t* %call, %struct.ObjectList_t* %3)
  ret void
}

declare void @object_list_destruct(%struct.ObjectList_t*) #1

declare %struct.ObjectList_t* @object_list_copy(%struct.ObjectList_t*, %struct.ObjectList_t*) #1

declare %struct.ObjectList_t* @get_paste_buffer() #1

declare i8* @object_list_add_remove_cb(%struct.ObjectList_t*, void (%struct.Object_t*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @remove_one_object(%struct.Object_t* %obj, i8* %data) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %data.addr = alloca i8*, align 8
  %command = alloca %struct.CutCommand_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.CutCommand_t*
  store %struct.CutCommand_t* %1, %struct.CutCommand_t** %command, align 8
  %2 = load %struct.CutCommand_t*, %struct.CutCommand_t** %command, align 8
  %parent = getelementptr inbounds %struct.CutCommand_t, %struct.CutCommand_t* %2, i32 0, i32 0
  %3 = load %struct.CutCommand_t*, %struct.CutCommand_t** %command, align 8
  %list = getelementptr inbounds %struct.CutCommand_t, %struct.CutCommand_t* %3, i32 0, i32 1
  %4 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list, align 8
  %5 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %call = call %struct.Command_t* @delete_command_new(%struct.ObjectList_t* %4, %struct.Object_t* %5)
  call void @command_add_subcommand(%struct.Command_t* %parent, %struct.Command_t* %call)
  ret void
}

declare i32 @object_list_cut(%struct.ObjectList_t*) #1

declare void @object_list_remove_remove_cb(%struct.ObjectList_t*, i8*) #1

declare void @command_add_subcommand(%struct.Command_t*, %struct.Command_t*) #1

declare %struct.Command_t* @delete_command_new(%struct.ObjectList_t*, %struct.Object_t*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
