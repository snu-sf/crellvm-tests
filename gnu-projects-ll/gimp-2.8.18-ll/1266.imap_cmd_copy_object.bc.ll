; ModuleID = './plug-ins/imagemap/imap_cmd_copy_object.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CommandClass_t = type { void (%struct.Command_t*)*, i32 (%struct.Command_t*)*, void (%struct.Command_t*)*, void (%struct.Command_t*)* }
%struct.Command_t = type { %struct.CommandClass_t*, %struct.CommandList_t*, i8*, i32 }
%struct.CommandList_t = type { %struct.CommandList_t*, i32, %struct._GList*, %struct._GList*, %struct._GList*, %struct.CommandListCallback_t }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.CommandListCallback_t = type { %struct._GList* }
%struct.Object_t = type { %struct.ObjectClass_t*, %struct.ObjectList_t*, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.ObjectClass_t = type { i8*, %struct.AreaInfoDialog_t*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32 (%struct.Object_t*)*, void (%struct.Object_t*)*, %struct.Object_t* (%struct.Object_t*)*, void (%struct.Object_t*, %struct.Object_t*)*, void (%struct.Object_t*)*, void (%struct.Object_t*, %struct._cairo*)*, void (%struct.Object_t*, %struct._cairo*)*, void (%struct.Object_t*, i32, i32)* (%struct.Object_t*, i32, i32)*, i32 (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32*, i32*, i32*, i32*)*, void (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32, i32)*, i8* (%struct._GtkWidget*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, %struct._GdkEventButton*)*, i8* ()* }
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
%struct.ObjectList_t = type { %struct._GList*, i32, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t }
%struct.ObjectListCallback_t = type { %struct._GList* }
%struct.CopyObjectCommand_t = type { %struct.Command_t, %struct.Object_t*, %struct.ObjectList_t* }

@.str = private unnamed_addr constant [5 x i8] c"Copy\00", align 1
@copy_object_command_class = internal global %struct.CommandClass_t { void (%struct.Command_t*)* @copy_object_command_destruct, i32 (%struct.Command_t*)* @copy_object_command_execute, void (%struct.Command_t*)* @copy_object_command_undo, void (%struct.Command_t*)* null }, align 8

; Function Attrs: nounwind uwtable
define %struct.Command_t* @copy_object_command_new(%struct.Object_t* %obj) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %command = alloca %struct.CopyObjectCommand_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 48)
  %0 = bitcast i8* %call to %struct.CopyObjectCommand_t*
  store %struct.CopyObjectCommand_t* %0, %struct.CopyObjectCommand_t** %command, align 8
  %1 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %call1 = call %struct.Object_t* @object_ref(%struct.Object_t* %1)
  %2 = load %struct.CopyObjectCommand_t*, %struct.CopyObjectCommand_t** %command, align 8
  %obj2 = getelementptr inbounds %struct.CopyObjectCommand_t, %struct.CopyObjectCommand_t* %2, i32 0, i32 1
  store %struct.Object_t* %call1, %struct.Object_t** %obj2, align 8
  %3 = load %struct.CopyObjectCommand_t*, %struct.CopyObjectCommand_t** %command, align 8
  %paste_buffer = getelementptr inbounds %struct.CopyObjectCommand_t, %struct.CopyObjectCommand_t* %3, i32 0, i32 2
  store %struct.ObjectList_t* null, %struct.ObjectList_t** %paste_buffer, align 8
  %4 = load %struct.CopyObjectCommand_t*, %struct.CopyObjectCommand_t** %command, align 8
  %parent = getelementptr inbounds %struct.CopyObjectCommand_t, %struct.CopyObjectCommand_t* %4, i32 0, i32 0
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #3
  %call4 = call %struct.Command_t* @command_init(%struct.Command_t* %parent, i8* %call3, %struct.CommandClass_t* @copy_object_command_class)
  ret %struct.Command_t* %call4
}

declare noalias i8* @g_malloc_n(i64, i64) #1

declare %struct.Object_t* @object_ref(%struct.Object_t*) #1

declare %struct.Command_t* @command_init(%struct.Command_t*, i8*, %struct.CommandClass_t*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @copy_object_command_destruct(%struct.Command_t* %parent) #0 {
entry:
  %parent.addr = alloca %struct.Command_t*, align 8
  %command = alloca %struct.CopyObjectCommand_t*, align 8
  store %struct.Command_t* %parent, %struct.Command_t** %parent.addr, align 8
  %0 = load %struct.Command_t*, %struct.Command_t** %parent.addr, align 8
  %1 = bitcast %struct.Command_t* %0 to %struct.CopyObjectCommand_t*
  store %struct.CopyObjectCommand_t* %1, %struct.CopyObjectCommand_t** %command, align 8
  %2 = load %struct.CopyObjectCommand_t*, %struct.CopyObjectCommand_t** %command, align 8
  %obj = getelementptr inbounds %struct.CopyObjectCommand_t, %struct.CopyObjectCommand_t* %2, i32 0, i32 1
  %3 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  call void @object_unref(%struct.Object_t* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @copy_object_command_execute(%struct.Command_t* %parent) #0 {
entry:
  %parent.addr = alloca %struct.Command_t*, align 8
  %command = alloca %struct.CopyObjectCommand_t*, align 8
  %paste_buffer = alloca %struct.ObjectList_t*, align 8
  store %struct.Command_t* %parent, %struct.Command_t** %parent.addr, align 8
  %0 = load %struct.Command_t*, %struct.Command_t** %parent.addr, align 8
  %1 = bitcast %struct.Command_t* %0 to %struct.CopyObjectCommand_t*
  store %struct.CopyObjectCommand_t* %1, %struct.CopyObjectCommand_t** %command, align 8
  %call = call %struct.ObjectList_t* @get_paste_buffer()
  store %struct.ObjectList_t* %call, %struct.ObjectList_t** %paste_buffer, align 8
  %2 = load %struct.CopyObjectCommand_t*, %struct.CopyObjectCommand_t** %command, align 8
  %paste_buffer1 = getelementptr inbounds %struct.CopyObjectCommand_t, %struct.CopyObjectCommand_t* %2, i32 0, i32 2
  %3 = load %struct.ObjectList_t*, %struct.ObjectList_t** %paste_buffer1, align 8
  %4 = load %struct.ObjectList_t*, %struct.ObjectList_t** %paste_buffer, align 8
  %call2 = call %struct.ObjectList_t* @object_list_copy(%struct.ObjectList_t* %3, %struct.ObjectList_t* %4)
  %5 = load %struct.CopyObjectCommand_t*, %struct.CopyObjectCommand_t** %command, align 8
  %paste_buffer3 = getelementptr inbounds %struct.CopyObjectCommand_t, %struct.CopyObjectCommand_t* %5, i32 0, i32 2
  store %struct.ObjectList_t* %call2, %struct.ObjectList_t** %paste_buffer3, align 8
  call void @clear_paste_buffer()
  %6 = load %struct.ObjectList_t*, %struct.ObjectList_t** %paste_buffer, align 8
  %7 = load %struct.CopyObjectCommand_t*, %struct.CopyObjectCommand_t** %command, align 8
  %obj = getelementptr inbounds %struct.CopyObjectCommand_t, %struct.CopyObjectCommand_t* %7, i32 0, i32 1
  %8 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %call4 = call %struct.Object_t* @object_clone(%struct.Object_t* %8)
  call void @object_list_append(%struct.ObjectList_t* %6, %struct.Object_t* %call4)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @copy_object_command_undo(%struct.Command_t* %parent) #0 {
entry:
  %parent.addr = alloca %struct.Command_t*, align 8
  %command = alloca %struct.CopyObjectCommand_t*, align 8
  store %struct.Command_t* %parent, %struct.Command_t** %parent.addr, align 8
  %0 = load %struct.Command_t*, %struct.Command_t** %parent.addr, align 8
  %1 = bitcast %struct.Command_t* %0 to %struct.CopyObjectCommand_t*
  store %struct.CopyObjectCommand_t* %1, %struct.CopyObjectCommand_t** %command, align 8
  %call = call %struct.ObjectList_t* @get_paste_buffer()
  %2 = load %struct.CopyObjectCommand_t*, %struct.CopyObjectCommand_t** %command, align 8
  %paste_buffer = getelementptr inbounds %struct.CopyObjectCommand_t, %struct.CopyObjectCommand_t* %2, i32 0, i32 2
  %3 = load %struct.ObjectList_t*, %struct.ObjectList_t** %paste_buffer, align 8
  %call1 = call %struct.ObjectList_t* @object_list_copy(%struct.ObjectList_t* %call, %struct.ObjectList_t* %3)
  ret void
}

declare void @object_unref(%struct.Object_t*) #1

declare %struct.ObjectList_t* @get_paste_buffer() #1

declare %struct.ObjectList_t* @object_list_copy(%struct.ObjectList_t*, %struct.ObjectList_t*) #1

declare void @clear_paste_buffer() #1

declare void @object_list_append(%struct.ObjectList_t*, %struct.Object_t*) #1

declare %struct.Object_t* @object_clone(%struct.Object_t*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}