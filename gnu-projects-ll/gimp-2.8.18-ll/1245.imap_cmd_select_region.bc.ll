; ModuleID = './plug-ins/imagemap/imap_cmd_select_region.bc'
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
%struct.ObjectList_t = type { %struct._GList*, i32, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t }
%struct.ObjectListCallback_t = type { %struct._GList* }
%struct.SelectRegionCommand_t = type { %struct.Command_t, %struct._GtkWidget*, %struct.ObjectList_t*, i32, i32, %struct.Object_t*, %struct.Command_t* }
%struct.Object_t = type { %struct.ObjectClass_t*, %struct.ObjectList_t*, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.ObjectClass_t = type { i8*, %struct.AreaInfoDialog_t*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32 (%struct.Object_t*)*, void (%struct.Object_t*)*, %struct.Object_t* (%struct.Object_t*)*, void (%struct.Object_t*, %struct.Object_t*)*, void (%struct.Object_t*)*, void (%struct.Object_t*, %struct._cairo*)*, void (%struct.Object_t*, %struct._cairo*)*, void (%struct.Object_t*, i32, i32)* (%struct.Object_t*, i32, i32)*, i32 (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32*, i32*, i32*, i32*)*, void (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32, i32)*, i8* (%struct._GtkWidget*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, %struct._GdkEventButton*)*, i8* ()* }
%struct.AreaInfoDialog_t = type { %struct.DefaultDialog_t*, %struct.Object_t*, %struct.Object_t*, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i8*, i8* }
%struct.DefaultDialog_t = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, void (i8*)*, i8*, void (i8*)*, i8*, void (i8*)*, i8* }
%struct._cairo = type opaque
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct.Rectangle_t = type { %struct.Object_t, i32, i32, i32, i32 }
%struct._GdkEventMotion = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i16, %struct._GdkDevice*, double, double }

@.str = private unnamed_addr constant [14 x i8] c"Select Region\00", align 1
@select_region_command_class = internal global %struct.CommandClass_t { void (%struct.Command_t*)* null, i32 (%struct.Command_t*)* @select_region_command_execute, void (%struct.Command_t*)* null, void (%struct.Command_t*)* null }, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"button-release-event\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"motion-notify-event\00", align 1

; Function Attrs: nounwind uwtable
define %struct.Command_t* @select_region_command_new(%struct._GtkWidget* %widget, %struct.ObjectList_t* %list, i32 %x, i32 %y) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %command = alloca %struct.SelectRegionCommand_t*, align 8
  %sub_command = alloca %struct.Command_t*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %call = call noalias i8* @g_malloc_n(i64 1, i64 72)
  %0 = bitcast i8* %call to %struct.SelectRegionCommand_t*
  store %struct.SelectRegionCommand_t* %0, %struct.SelectRegionCommand_t** %command, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %2 = load %struct.SelectRegionCommand_t*, %struct.SelectRegionCommand_t** %command, align 8
  %widget1 = getelementptr inbounds %struct.SelectRegionCommand_t, %struct.SelectRegionCommand_t* %2, i32 0, i32 1
  store %struct._GtkWidget* %1, %struct._GtkWidget** %widget1, align 8
  %3 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %4 = load %struct.SelectRegionCommand_t*, %struct.SelectRegionCommand_t** %command, align 8
  %list2 = getelementptr inbounds %struct.SelectRegionCommand_t, %struct.SelectRegionCommand_t* %4, i32 0, i32 2
  store %struct.ObjectList_t* %3, %struct.ObjectList_t** %list2, align 8
  %5 = load i32, i32* %x.addr, align 4
  %6 = load %struct.SelectRegionCommand_t*, %struct.SelectRegionCommand_t** %command, align 8
  %x3 = getelementptr inbounds %struct.SelectRegionCommand_t, %struct.SelectRegionCommand_t* %6, i32 0, i32 3
  store i32 %5, i32* %x3, align 4
  %7 = load i32, i32* %y.addr, align 4
  %8 = load %struct.SelectRegionCommand_t*, %struct.SelectRegionCommand_t** %command, align 8
  %y4 = getelementptr inbounds %struct.SelectRegionCommand_t, %struct.SelectRegionCommand_t* %8, i32 0, i32 4
  store i32 %7, i32* %y4, align 4
  %9 = load %struct.SelectRegionCommand_t*, %struct.SelectRegionCommand_t** %command, align 8
  %parent = getelementptr inbounds %struct.SelectRegionCommand_t, %struct.SelectRegionCommand_t* %9, i32 0, i32 0
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)) #3
  %call6 = call %struct.Command_t* @command_init(%struct.Command_t* %parent, i8* %call5, %struct.CommandClass_t* @select_region_command_class)
  %10 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %call7 = call %struct.Command_t* @unselect_all_command_new(%struct.ObjectList_t* %10, %struct.Object_t* null)
  store %struct.Command_t* %call7, %struct.Command_t** %sub_command, align 8
  %11 = load %struct.SelectRegionCommand_t*, %struct.SelectRegionCommand_t** %command, align 8
  %parent8 = getelementptr inbounds %struct.SelectRegionCommand_t, %struct.SelectRegionCommand_t* %11, i32 0, i32 0
  %12 = load %struct.Command_t*, %struct.Command_t** %sub_command, align 8
  call void @command_add_subcommand(%struct.Command_t* %parent8, %struct.Command_t* %12)
  %13 = load %struct.Command_t*, %struct.Command_t** %sub_command, align 8
  %14 = load %struct.SelectRegionCommand_t*, %struct.SelectRegionCommand_t** %command, align 8
  %unselect_command = getelementptr inbounds %struct.SelectRegionCommand_t, %struct.SelectRegionCommand_t* %14, i32 0, i32 6
  store %struct.Command_t* %13, %struct.Command_t** %unselect_command, align 8
  %15 = load %struct.SelectRegionCommand_t*, %struct.SelectRegionCommand_t** %command, align 8
  %parent9 = getelementptr inbounds %struct.SelectRegionCommand_t, %struct.SelectRegionCommand_t* %15, i32 0, i32 0
  ret %struct.Command_t* %parent9
}

declare noalias i8* @g_malloc_n(i64, i64) #1

declare %struct.Command_t* @command_init(%struct.Command_t*, i8*, %struct.CommandClass_t*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare %struct.Command_t* @unselect_all_command_new(%struct.ObjectList_t*, %struct.Object_t*) #1

declare void @command_add_subcommand(%struct.Command_t*, %struct.Command_t*) #1

; Function Attrs: nounwind uwtable
define internal i32 @select_region_command_execute(%struct.Command_t* %parent) #0 {
entry:
  %parent.addr = alloca %struct.Command_t*, align 8
  %command = alloca %struct.SelectRegionCommand_t*, align 8
  store %struct.Command_t* %parent, %struct.Command_t** %parent.addr, align 8
  %0 = load %struct.Command_t*, %struct.Command_t** %parent.addr, align 8
  %1 = bitcast %struct.Command_t* %0 to %struct.SelectRegionCommand_t*
  store %struct.SelectRegionCommand_t* %1, %struct.SelectRegionCommand_t** %command, align 8
  %2 = load %struct.SelectRegionCommand_t*, %struct.SelectRegionCommand_t** %command, align 8
  %x = getelementptr inbounds %struct.SelectRegionCommand_t, %struct.SelectRegionCommand_t* %2, i32 0, i32 3
  %3 = load i32, i32* %x, align 4
  %4 = load %struct.SelectRegionCommand_t*, %struct.SelectRegionCommand_t** %command, align 8
  %y = getelementptr inbounds %struct.SelectRegionCommand_t, %struct.SelectRegionCommand_t* %4, i32 0, i32 4
  %5 = load i32, i32* %y, align 4
  %call = call %struct.Object_t* @create_rectangle(i32 %3, i32 %5, i32 0, i32 0)
  %6 = load %struct.SelectRegionCommand_t*, %struct.SelectRegionCommand_t** %command, align 8
  %obj = getelementptr inbounds %struct.SelectRegionCommand_t, %struct.SelectRegionCommand_t* %6, i32 0, i32 5
  store %struct.Object_t* %call, %struct.Object_t** %obj, align 8
  %7 = load %struct.SelectRegionCommand_t*, %struct.SelectRegionCommand_t** %command, align 8
  %obj1 = getelementptr inbounds %struct.SelectRegionCommand_t, %struct.SelectRegionCommand_t* %7, i32 0, i32 5
  %8 = load %struct.Object_t*, %struct.Object_t** %obj1, align 8
  call void @preview_set_tmp_obj(%struct.Object_t* %8)
  %9 = load %struct.SelectRegionCommand_t*, %struct.SelectRegionCommand_t** %command, align 8
  %widget = getelementptr inbounds %struct.SelectRegionCommand_t, %struct.SelectRegionCommand_t* %9, i32 0, i32 1
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %11 = bitcast %struct._GtkWidget* %10 to i8*
  %12 = load %struct.SelectRegionCommand_t*, %struct.SelectRegionCommand_t** %command, align 8
  %13 = bitcast %struct.SelectRegionCommand_t* %12 to i8*
  %call2 = call i64 @g_signal_connect_data(i8* %11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkEventButton*, i8*)* @select_release to void ()*), i8* %13, void (i8*, %struct._GClosure*)* null, i32 0)
  %14 = load %struct.SelectRegionCommand_t*, %struct.SelectRegionCommand_t** %command, align 8
  %widget3 = getelementptr inbounds %struct.SelectRegionCommand_t, %struct.SelectRegionCommand_t* %14, i32 0, i32 1
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget3, align 8
  %16 = bitcast %struct._GtkWidget* %15 to i8*
  %17 = load %struct.SelectRegionCommand_t*, %struct.SelectRegionCommand_t** %command, align 8
  %18 = bitcast %struct.SelectRegionCommand_t* %17 to i8*
  %call4 = call i64 @g_signal_connect_data(i8* %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkEventMotion*, i8*)* @select_motion to void ()*), i8* %18, void (i8*, %struct._GClosure*)* null, i32 0)
  ret i32 2
}

declare %struct.Object_t* @create_rectangle(i32, i32, i32, i32) #1

declare void @preview_set_tmp_obj(%struct.Object_t*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @select_release(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %data.addr = alloca i8*, align 8
  %command = alloca %struct.SelectRegionCommand_t*, align 8
  %obj = alloca %struct.Object_t*, align 8
  %rectangle = alloca %struct.Rectangle_t*, align 8
  %id = alloca i8*, align 8
  %count = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.SelectRegionCommand_t*
  store %struct.SelectRegionCommand_t* %1, %struct.SelectRegionCommand_t** %command, align 8
  %2 = load %struct.SelectRegionCommand_t*, %struct.SelectRegionCommand_t** %command, align 8
  %obj1 = getelementptr inbounds %struct.SelectRegionCommand_t, %struct.SelectRegionCommand_t* %2, i32 0, i32 5
  %3 = load %struct.Object_t*, %struct.Object_t** %obj1, align 8
  store %struct.Object_t* %3, %struct.Object_t** %obj, align 8
  %4 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %5 = bitcast %struct.Object_t* %4 to %struct.Rectangle_t*
  store %struct.Rectangle_t* %5, %struct.Rectangle_t** %rectangle, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %7 = bitcast %struct._GtkWidget* %6 to i8*
  %8 = load i8*, i8** %data.addr, align 8
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GdkEventMotion*, i8*)* @select_motion to i8*), i8* %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %10 = bitcast %struct._GtkWidget* %9 to i8*
  %11 = load i8*, i8** %data.addr, align 8
  %call2 = call i32 @g_signal_handlers_disconnect_matched(i8* %10, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GdkEventButton*, i8*)* @select_release to i8*), i8* %11)
  %12 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %class = getelementptr inbounds %struct.Object_t, %struct.Object_t* %12, i32 0, i32 0
  %13 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class, align 8
  %normalize = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %13, i32 0, i32 8
  %14 = load void (%struct.Object_t*)*, void (%struct.Object_t*)** %normalize, align 8
  %15 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  call void %14(%struct.Object_t* %15)
  %16 = load %struct.SelectRegionCommand_t*, %struct.SelectRegionCommand_t** %command, align 8
  %list = getelementptr inbounds %struct.SelectRegionCommand_t, %struct.SelectRegionCommand_t* %16, i32 0, i32 2
  %17 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list, align 8
  %18 = load %struct.SelectRegionCommand_t*, %struct.SelectRegionCommand_t** %command, align 8
  %19 = bitcast %struct.SelectRegionCommand_t* %18 to i8*
  %call3 = call i8* @object_list_add_select_cb(%struct.ObjectList_t* %17, void (%struct.Object_t*, i8*)* @select_one_object, i8* %19)
  store i8* %call3, i8** %id, align 8
  %20 = load %struct.SelectRegionCommand_t*, %struct.SelectRegionCommand_t** %command, align 8
  %list4 = getelementptr inbounds %struct.SelectRegionCommand_t, %struct.SelectRegionCommand_t* %20, i32 0, i32 2
  %21 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list4, align 8
  %22 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %22, i32 0, i32 1
  %23 = load i32, i32* %x, align 4
  %24 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %24, i32 0, i32 2
  %25 = load i32, i32* %y, align 4
  %26 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %26, i32 0, i32 3
  %27 = load i32, i32* %width, align 4
  %28 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %28, i32 0, i32 4
  %29 = load i32, i32* %height, align 4
  %call5 = call i32 @object_list_select_region(%struct.ObjectList_t* %21, i32 %23, i32 %25, i32 %27, i32 %29)
  store i32 %call5, i32* %count, align 4
  %30 = load %struct.SelectRegionCommand_t*, %struct.SelectRegionCommand_t** %command, align 8
  %list6 = getelementptr inbounds %struct.SelectRegionCommand_t, %struct.SelectRegionCommand_t* %30, i32 0, i32 2
  %31 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list6, align 8
  %32 = load i8*, i8** %id, align 8
  call void @object_list_remove_select_cb(%struct.ObjectList_t* %31, i8* %32)
  %33 = load i32, i32* %count, align 4
  %tobool = icmp ne i32 %33, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %34 = load %struct.SelectRegionCommand_t*, %struct.SelectRegionCommand_t** %command, align 8
  %parent = getelementptr inbounds %struct.SelectRegionCommand_t, %struct.SelectRegionCommand_t* %34, i32 0, i32 0
  call void @command_list_add(%struct.Command_t* %parent)
  br label %if.end.10

if.else:                                          ; preds = %entry
  %35 = load %struct.SelectRegionCommand_t*, %struct.SelectRegionCommand_t** %command, align 8
  %unselect_command = getelementptr inbounds %struct.SelectRegionCommand_t, %struct.SelectRegionCommand_t* %35, i32 0, i32 6
  %36 = load %struct.Command_t*, %struct.Command_t** %unselect_command, align 8
  %sub_commands = getelementptr inbounds %struct.Command_t, %struct.Command_t* %36, i32 0, i32 1
  %37 = load %struct.CommandList_t*, %struct.CommandList_t** %sub_commands, align 8
  %tobool7 = icmp ne %struct.CommandList_t* %37, null
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.else
  %38 = load %struct.SelectRegionCommand_t*, %struct.SelectRegionCommand_t** %command, align 8
  %parent9 = getelementptr inbounds %struct.SelectRegionCommand_t, %struct.SelectRegionCommand_t* %38, i32 0, i32 0
  call void @command_list_add(%struct.Command_t* %parent9)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  %39 = load %struct.SelectRegionCommand_t*, %struct.SelectRegionCommand_t** %command, align 8
  %obj11 = getelementptr inbounds %struct.SelectRegionCommand_t, %struct.SelectRegionCommand_t* %39, i32 0, i32 5
  %40 = load %struct.Object_t*, %struct.Object_t** %obj11, align 8
  call void @preview_unset_tmp_obj(%struct.Object_t* %40)
  call void @preview_redraw()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @select_motion(%struct._GtkWidget* %widget, %struct._GdkEventMotion* %event, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventMotion*, align 8
  %data.addr = alloca i8*, align 8
  %command = alloca %struct.SelectRegionCommand_t*, align 8
  %obj = alloca %struct.Object_t*, align 8
  %rectangle = alloca %struct.Rectangle_t*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventMotion* %event, %struct._GdkEventMotion** %event.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.SelectRegionCommand_t*
  store %struct.SelectRegionCommand_t* %1, %struct.SelectRegionCommand_t** %command, align 8
  %2 = load %struct.SelectRegionCommand_t*, %struct.SelectRegionCommand_t** %command, align 8
  %obj1 = getelementptr inbounds %struct.SelectRegionCommand_t, %struct.SelectRegionCommand_t* %2, i32 0, i32 5
  %3 = load %struct.Object_t*, %struct.Object_t** %obj1, align 8
  store %struct.Object_t* %3, %struct.Object_t** %obj, align 8
  %4 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %5 = bitcast %struct.Object_t* %4 to %struct.Rectangle_t*
  store %struct.Rectangle_t* %5, %struct.Rectangle_t** %rectangle, align 8
  %6 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %x2 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %6, i32 0, i32 4
  %7 = load double, double* %x2, align 8
  %conv = fptosi double %7 to i32
  %call = call i32 @get_real_coord(i32 %conv)
  store i32 %call, i32* %x, align 4
  %8 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %y3 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %8, i32 0, i32 5
  %9 = load double, double* %y3, align 8
  %conv4 = fptosi double %9 to i32
  %call5 = call i32 @get_real_coord(i32 %conv4)
  store i32 %call5, i32* %y, align 4
  %10 = load i32, i32* %x, align 4
  %11 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x6 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %11, i32 0, i32 1
  %12 = load i32, i32* %x6, align 4
  %sub = sub nsw i32 %10, %12
  %13 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %13, i32 0, i32 3
  store i32 %sub, i32* %width, align 4
  %14 = load i32, i32* %y, align 4
  %15 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y7 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %15, i32 0, i32 2
  %16 = load i32, i32* %y7, align 4
  %sub8 = sub nsw i32 %14, %16
  %17 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %17, i32 0, i32 4
  store i32 %sub8, i32* %height, align 4
  call void @preview_redraw()
  ret void
}

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare i8* @object_list_add_select_cb(%struct.ObjectList_t*, void (%struct.Object_t*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @select_one_object(%struct.Object_t* %obj, i8* %data) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %data.addr = alloca i8*, align 8
  %command = alloca %struct.SelectRegionCommand_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.SelectRegionCommand_t*
  store %struct.SelectRegionCommand_t* %1, %struct.SelectRegionCommand_t** %command, align 8
  %2 = load %struct.SelectRegionCommand_t*, %struct.SelectRegionCommand_t** %command, align 8
  %parent = getelementptr inbounds %struct.SelectRegionCommand_t, %struct.SelectRegionCommand_t* %2, i32 0, i32 0
  %3 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %call = call %struct.Command_t* @select_command_new(%struct.Object_t* %3)
  call void @command_add_subcommand(%struct.Command_t* %parent, %struct.Command_t* %call)
  ret void
}

declare i32 @object_list_select_region(%struct.ObjectList_t*, i32, i32, i32, i32) #1

declare void @object_list_remove_select_cb(%struct.ObjectList_t*, i8*) #1

declare void @command_list_add(%struct.Command_t*) #1

declare void @preview_unset_tmp_obj(%struct.Object_t*) #1

declare void @preview_redraw() #1

declare %struct.Command_t* @select_command_new(%struct.Object_t*) #1

declare i32 @get_real_coord(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
