; ModuleID = './plug-ins/imagemap/imap_cmd_move_sash.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CommandClass_t = type { void (%struct.Command_t*)*, i32 (%struct.Command_t*)*, void (%struct.Command_t*)*, void (%struct.Command_t*)* }
%struct.Command_t = type { %struct.CommandClass_t*, %struct.CommandList_t*, i8*, i32 }
%struct.CommandList_t = type { %struct.CommandList_t*, i32, %struct._GList*, %struct._GList*, %struct._GList*, %struct.CommandListCallback_t }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.CommandListCallback_t = type { %struct._GList* }
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
%struct.Object_t = type { %struct.ObjectClass_t*, %struct.ObjectList_t*, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.ObjectClass_t = type { i8*, %struct.AreaInfoDialog_t*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32 (%struct.Object_t*)*, void (%struct.Object_t*)*, %struct.Object_t* (%struct.Object_t*)*, void (%struct.Object_t*, %struct.Object_t*)*, void (%struct.Object_t*)*, void (%struct.Object_t*, %struct._cairo*)*, void (%struct.Object_t*, %struct._cairo*)*, void (%struct.Object_t*, i32, i32)* (%struct.Object_t*, i32, i32)*, i32 (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32*, i32*, i32*, i32*)*, void (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32, i32)*, i8* (%struct._GtkWidget*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, %struct._GdkEventButton*)*, i8* ()* }
%struct.AreaInfoDialog_t = type { %struct.DefaultDialog_t*, %struct.Object_t*, %struct.Object_t*, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i8*, i8* }
%struct.DefaultDialog_t = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, void (i8*)*, i8*, void (i8*)*, i8*, void (i8*)*, i8* }
%struct._cairo = type opaque
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct.ObjectList_t = type { %struct._GList*, i32, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t }
%struct.ObjectListCallback_t = type { %struct._GList* }
%struct.MoveSashCommand_t = type { %struct.Command_t, %struct._GtkWidget*, %struct.Object_t*, i32, i32, i32, i32, void (%struct.Object_t*, i32, i32)* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GdkEventMotion = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i16, %struct._GdkDevice*, double, double }

@.str = private unnamed_addr constant [10 x i8] c"Move Sash\00", align 1
@move_sash_command_class = internal global %struct.CommandClass_t { void (%struct.Command_t*)* @move_sash_command_destruct, i32 (%struct.Command_t*)* @move_sash_command_execute, void (%struct.Command_t*)* null, void (%struct.Command_t*)* @move_sash_command_redo }, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"button-release-event\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"motion-notify-event\00", align 1

; Function Attrs: nounwind uwtable
define %struct.Command_t* @move_sash_command_new(%struct._GtkWidget* %widget, %struct.Object_t* %obj, i32 %x, i32 %y, void (%struct.Object_t*, i32, i32)* %sash_func) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %obj.addr = alloca %struct.Object_t*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %sash_func.addr = alloca void (%struct.Object_t*, i32, i32)*, align 8
  %command = alloca %struct.MoveSashCommand_t*, align 8
  %parent = alloca %struct.Command_t*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store void (%struct.Object_t*, i32, i32)* %sash_func, void (%struct.Object_t*, i32, i32)** %sash_func.addr, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 72)
  %0 = bitcast i8* %call to %struct.MoveSashCommand_t*
  store %struct.MoveSashCommand_t* %0, %struct.MoveSashCommand_t** %command, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %2 = load %struct.MoveSashCommand_t*, %struct.MoveSashCommand_t** %command, align 8
  %widget1 = getelementptr inbounds %struct.MoveSashCommand_t, %struct.MoveSashCommand_t* %2, i32 0, i32 1
  store %struct._GtkWidget* %1, %struct._GtkWidget** %widget1, align 8
  %3 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %call2 = call %struct.Object_t* @object_ref(%struct.Object_t* %3)
  %4 = load %struct.MoveSashCommand_t*, %struct.MoveSashCommand_t** %command, align 8
  %obj3 = getelementptr inbounds %struct.MoveSashCommand_t, %struct.MoveSashCommand_t* %4, i32 0, i32 2
  store %struct.Object_t* %call2, %struct.Object_t** %obj3, align 8
  %5 = load i32, i32* %x.addr, align 4
  %6 = load %struct.MoveSashCommand_t*, %struct.MoveSashCommand_t** %command, align 8
  %x4 = getelementptr inbounds %struct.MoveSashCommand_t, %struct.MoveSashCommand_t* %6, i32 0, i32 3
  store i32 %5, i32* %x4, align 4
  %7 = load i32, i32* %y.addr, align 4
  %8 = load %struct.MoveSashCommand_t*, %struct.MoveSashCommand_t** %command, align 8
  %y5 = getelementptr inbounds %struct.MoveSashCommand_t, %struct.MoveSashCommand_t* %8, i32 0, i32 4
  store i32 %7, i32* %y5, align 4
  %call6 = call i32 @get_image_width()
  %9 = load %struct.MoveSashCommand_t*, %struct.MoveSashCommand_t** %command, align 8
  %image_width = getelementptr inbounds %struct.MoveSashCommand_t, %struct.MoveSashCommand_t* %9, i32 0, i32 5
  store i32 %call6, i32* %image_width, align 4
  %call7 = call i32 @get_image_height()
  %10 = load %struct.MoveSashCommand_t*, %struct.MoveSashCommand_t** %command, align 8
  %image_height = getelementptr inbounds %struct.MoveSashCommand_t, %struct.MoveSashCommand_t* %10, i32 0, i32 6
  store i32 %call7, i32* %image_height, align 4
  %11 = load void (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32, i32)** %sash_func.addr, align 8
  %12 = load %struct.MoveSashCommand_t*, %struct.MoveSashCommand_t** %command, align 8
  %sash_func8 = getelementptr inbounds %struct.MoveSashCommand_t, %struct.MoveSashCommand_t* %12, i32 0, i32 7
  store void (%struct.Object_t*, i32, i32)* %11, void (%struct.Object_t*, i32, i32)** %sash_func8, align 8
  %13 = load %struct.MoveSashCommand_t*, %struct.MoveSashCommand_t** %command, align 8
  %parent9 = getelementptr inbounds %struct.MoveSashCommand_t, %struct.MoveSashCommand_t* %13, i32 0, i32 0
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0)) #3
  %call11 = call %struct.Command_t* @command_init(%struct.Command_t* %parent9, i8* %call10, %struct.CommandClass_t* @move_sash_command_class)
  store %struct.Command_t* %call11, %struct.Command_t** %parent, align 8
  %14 = load %struct.Command_t*, %struct.Command_t** %parent, align 8
  %15 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %call12 = call %struct.Command_t* @edit_object_command_new(%struct.Object_t* %15)
  call void @command_add_subcommand(%struct.Command_t* %14, %struct.Command_t* %call12)
  %16 = load %struct.Command_t*, %struct.Command_t** %parent, align 8
  ret %struct.Command_t* %16
}

declare noalias i8* @g_malloc_n(i64, i64) #1

declare %struct.Object_t* @object_ref(%struct.Object_t*) #1

declare i32 @get_image_width() #1

declare i32 @get_image_height() #1

declare %struct.Command_t* @command_init(%struct.Command_t*, i8*, %struct.CommandClass_t*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @command_add_subcommand(%struct.Command_t*, %struct.Command_t*) #1

declare %struct.Command_t* @edit_object_command_new(%struct.Object_t*) #1

; Function Attrs: nounwind uwtable
define internal void @move_sash_command_destruct(%struct.Command_t* %parent) #0 {
entry:
  %parent.addr = alloca %struct.Command_t*, align 8
  %command = alloca %struct.MoveSashCommand_t*, align 8
  store %struct.Command_t* %parent, %struct.Command_t** %parent.addr, align 8
  %0 = load %struct.Command_t*, %struct.Command_t** %parent.addr, align 8
  %1 = bitcast %struct.Command_t* %0 to %struct.MoveSashCommand_t*
  store %struct.MoveSashCommand_t* %1, %struct.MoveSashCommand_t** %command, align 8
  %2 = load %struct.MoveSashCommand_t*, %struct.MoveSashCommand_t** %command, align 8
  %obj = getelementptr inbounds %struct.MoveSashCommand_t, %struct.MoveSashCommand_t* %2, i32 0, i32 2
  %3 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  call void @object_unref(%struct.Object_t* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @move_sash_command_execute(%struct.Command_t* %parent) #0 {
entry:
  %parent.addr = alloca %struct.Command_t*, align 8
  %command = alloca %struct.MoveSashCommand_t*, align 8
  store %struct.Command_t* %parent, %struct.Command_t** %parent.addr, align 8
  %0 = load %struct.Command_t*, %struct.Command_t** %parent.addr, align 8
  %1 = bitcast %struct.Command_t* %0 to %struct.MoveSashCommand_t*
  store %struct.MoveSashCommand_t* %1, %struct.MoveSashCommand_t** %command, align 8
  call void @hide_url()
  %2 = load %struct.MoveSashCommand_t*, %struct.MoveSashCommand_t** %command, align 8
  %widget = getelementptr inbounds %struct.MoveSashCommand_t, %struct.MoveSashCommand_t* %2, i32 0, i32 1
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %4 = bitcast %struct._GtkWidget* %3 to i8*
  %5 = load %struct.MoveSashCommand_t*, %struct.MoveSashCommand_t** %command, align 8
  %6 = bitcast %struct.MoveSashCommand_t* %5 to i8*
  %call = call i64 @g_signal_connect_data(i8* %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkEventButton*, i8*)* @sash_end to void ()*), i8* %6, void (i8*, %struct._GClosure*)* null, i32 0)
  %7 = load %struct.MoveSashCommand_t*, %struct.MoveSashCommand_t** %command, align 8
  %widget1 = getelementptr inbounds %struct.MoveSashCommand_t, %struct.MoveSashCommand_t* %7, i32 0, i32 1
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget1, align 8
  %9 = bitcast %struct._GtkWidget* %8 to i8*
  %10 = load %struct.MoveSashCommand_t*, %struct.MoveSashCommand_t** %command, align 8
  %11 = bitcast %struct.MoveSashCommand_t* %10 to i8*
  %call2 = call i64 @g_signal_connect_data(i8* %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkEventMotion*, i8*)* @sash_move to void ()*), i8* %11, void (i8*, %struct._GClosure*)* null, i32 0)
  %12 = load %struct.MoveSashCommand_t*, %struct.MoveSashCommand_t** %command, align 8
  %obj = getelementptr inbounds %struct.MoveSashCommand_t, %struct.MoveSashCommand_t* %12, i32 0, i32 2
  %13 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  call void @preview_set_tmp_obj(%struct.Object_t* %13)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @move_sash_command_redo(%struct.Command_t* %command) #0 {
entry:
  %command.addr = alloca %struct.Command_t*, align 8
  store %struct.Command_t* %command, %struct.Command_t** %command.addr, align 8
  ret void
}

declare void @object_unref(%struct.Object_t*) #1

declare void @hide_url() #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @sash_end(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %data.addr = alloca i8*, align 8
  %command = alloca %struct.MoveSashCommand_t*, align 8
  %obj = alloca %struct.Object_t*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.MoveSashCommand_t*
  store %struct.MoveSashCommand_t* %1, %struct.MoveSashCommand_t** %command, align 8
  %2 = load %struct.MoveSashCommand_t*, %struct.MoveSashCommand_t** %command, align 8
  %obj1 = getelementptr inbounds %struct.MoveSashCommand_t, %struct.MoveSashCommand_t* %2, i32 0, i32 2
  %3 = load %struct.Object_t*, %struct.Object_t** %obj1, align 8
  store %struct.Object_t* %3, %struct.Object_t** %obj, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to i8*
  %6 = load i8*, i8** %data.addr, align 8
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GdkEventMotion*, i8*)* @sash_move to i8*), i8* %6)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = bitcast %struct._GtkWidget* %7 to i8*
  %9 = load i8*, i8** %data.addr, align 8
  %call2 = call i32 @g_signal_handlers_disconnect_matched(i8* %8, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GdkEventButton*, i8*)* @sash_end to i8*), i8* %9)
  %10 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %class = getelementptr inbounds %struct.Object_t, %struct.Object_t* %10, i32 0, i32 0
  %11 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class, align 8
  %normalize = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %11, i32 0, i32 8
  %12 = load void (%struct.Object_t*)*, void (%struct.Object_t*)** %normalize, align 8
  %tobool = icmp ne void (%struct.Object_t*)* %12, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %class3 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %13, i32 0, i32 0
  %14 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class3, align 8
  %normalize4 = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %14, i32 0, i32 8
  %15 = load void (%struct.Object_t*)*, void (%struct.Object_t*)** %normalize4, align 8
  %16 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  call void %15(%struct.Object_t* %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct.MoveSashCommand_t*, %struct.MoveSashCommand_t** %command, align 8
  %obj5 = getelementptr inbounds %struct.MoveSashCommand_t, %struct.MoveSashCommand_t* %17, i32 0, i32 2
  %18 = load %struct.Object_t*, %struct.Object_t** %obj5, align 8
  call void @preview_unset_tmp_obj(%struct.Object_t* %18)
  call void @preview_redraw()
  call void @show_url()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sash_move(%struct._GtkWidget* %widget, %struct._GdkEventMotion* %event, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventMotion*, align 8
  %data.addr = alloca i8*, align 8
  %command = alloca %struct.MoveSashCommand_t*, align 8
  %obj = alloca %struct.Object_t*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventMotion* %event, %struct._GdkEventMotion** %event.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.MoveSashCommand_t*
  store %struct.MoveSashCommand_t* %1, %struct.MoveSashCommand_t** %command, align 8
  %2 = load %struct.MoveSashCommand_t*, %struct.MoveSashCommand_t** %command, align 8
  %obj1 = getelementptr inbounds %struct.MoveSashCommand_t, %struct.MoveSashCommand_t* %2, i32 0, i32 2
  %3 = load %struct.Object_t*, %struct.Object_t** %obj1, align 8
  store %struct.Object_t* %3, %struct.Object_t** %obj, align 8
  %4 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %x2 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %4, i32 0, i32 4
  %5 = load double, double* %x2, align 8
  %conv = fptosi double %5 to i32
  %call = call i32 @get_real_coord(i32 %conv)
  store i32 %call, i32* %x, align 4
  %6 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %y3 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %6, i32 0, i32 5
  %7 = load double, double* %y3, align 8
  %conv4 = fptosi double %7 to i32
  %call5 = call i32 @get_real_coord(i32 %conv4)
  store i32 %call5, i32* %y, align 4
  %8 = load i32, i32* %x, align 4
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %x, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %x, align 4
  %10 = load %struct.MoveSashCommand_t*, %struct.MoveSashCommand_t** %command, align 8
  %image_width = getelementptr inbounds %struct.MoveSashCommand_t, %struct.MoveSashCommand_t* %10, i32 0, i32 5
  %11 = load i32, i32* %image_width, align 4
  %cmp7 = icmp sgt i32 %9, %11
  br i1 %cmp7, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end
  %12 = load %struct.MoveSashCommand_t*, %struct.MoveSashCommand_t** %command, align 8
  %image_width10 = getelementptr inbounds %struct.MoveSashCommand_t, %struct.MoveSashCommand_t* %12, i32 0, i32 5
  %13 = load i32, i32* %image_width10, align 4
  store i32 %13, i32* %x, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end
  %14 = load i32, i32* %y, align 4
  %cmp12 = icmp slt i32 %14, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  store i32 0, i32* %y, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.11
  %15 = load i32, i32* %y, align 4
  %16 = load %struct.MoveSashCommand_t*, %struct.MoveSashCommand_t** %command, align 8
  %image_height = getelementptr inbounds %struct.MoveSashCommand_t, %struct.MoveSashCommand_t* %16, i32 0, i32 6
  %17 = load i32, i32* %image_height, align 4
  %cmp16 = icmp sgt i32 %15, %17
  br i1 %cmp16, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.15
  %18 = load %struct.MoveSashCommand_t*, %struct.MoveSashCommand_t** %command, align 8
  %image_height19 = getelementptr inbounds %struct.MoveSashCommand_t, %struct.MoveSashCommand_t* %18, i32 0, i32 6
  %19 = load i32, i32* %image_height19, align 4
  store i32 %19, i32* %y, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end.15
  %20 = load i32, i32* %x, align 4
  %21 = load %struct.MoveSashCommand_t*, %struct.MoveSashCommand_t** %command, align 8
  %x21 = getelementptr inbounds %struct.MoveSashCommand_t, %struct.MoveSashCommand_t* %21, i32 0, i32 3
  %22 = load i32, i32* %x21, align 4
  %sub = sub nsw i32 %20, %22
  store i32 %sub, i32* %dx, align 4
  %23 = load i32, i32* %y, align 4
  %24 = load %struct.MoveSashCommand_t*, %struct.MoveSashCommand_t** %command, align 8
  %y22 = getelementptr inbounds %struct.MoveSashCommand_t, %struct.MoveSashCommand_t* %24, i32 0, i32 4
  %25 = load i32, i32* %y22, align 4
  %sub23 = sub nsw i32 %23, %25
  store i32 %sub23, i32* %dy, align 4
  %26 = load i32, i32* %x, align 4
  %27 = load %struct.MoveSashCommand_t*, %struct.MoveSashCommand_t** %command, align 8
  %x24 = getelementptr inbounds %struct.MoveSashCommand_t, %struct.MoveSashCommand_t* %27, i32 0, i32 3
  store i32 %26, i32* %x24, align 4
  %28 = load i32, i32* %y, align 4
  %29 = load %struct.MoveSashCommand_t*, %struct.MoveSashCommand_t** %command, align 8
  %y25 = getelementptr inbounds %struct.MoveSashCommand_t, %struct.MoveSashCommand_t* %29, i32 0, i32 4
  store i32 %28, i32* %y25, align 4
  %30 = load %struct.MoveSashCommand_t*, %struct.MoveSashCommand_t** %command, align 8
  %sash_func = getelementptr inbounds %struct.MoveSashCommand_t, %struct.MoveSashCommand_t* %30, i32 0, i32 7
  %31 = load void (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32, i32)** %sash_func, align 8
  %32 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %33 = load i32, i32* %dx, align 4
  %34 = load i32, i32* %dy, align 4
  call void %31(%struct.Object_t* %32, i32 %33, i32 %34)
  %35 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  call void @object_emit_geometry_signal(%struct.Object_t* %35)
  call void @preview_redraw()
  ret void
}

declare void @preview_set_tmp_obj(%struct.Object_t*) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @preview_unset_tmp_obj(%struct.Object_t*) #1

declare void @preview_redraw() #1

declare void @show_url() #1

declare i32 @get_real_coord(i32) #1

declare void @object_emit_geometry_signal(%struct.Object_t*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
