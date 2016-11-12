; ModuleID = './plug-ins/imagemap/imap_cmd_move.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CommandClass_t = type { void (%struct.Command_t*)*, i32 (%struct.Command_t*)*, void (%struct.Command_t*)*, void (%struct.Command_t*)* }
%struct.Command_t = type { %struct.CommandClass_t*, %struct.CommandList_t*, i8*, i32 }
%struct.CommandList_t = type { %struct.CommandList_t*, i32, %struct._GList*, %struct._GList*, %struct._GList*, %struct.CommandListCallback_t }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.CommandListCallback_t = type { %struct._GList* }
%struct.Preview_t = type { %struct._GimpDrawable*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i32, i32, %struct._GimpPixelRgn, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
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
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
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
%struct.MoveCommand_t = type { %struct.Command_t, %struct.PreferencesData_t*, %struct.Preview_t*, %struct.Object_t*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.PreferencesData_t = type { i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, %struct.ColorSelData_t }
%struct.ColorSelData_t = type { %struct._GdkColor, %struct._GdkColor, %struct._GdkColor, %struct._GdkColor, %struct._GdkColor, %struct._GdkColor }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GdkEventMotion = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i16, %struct._GdkDevice*, double, double }

@.str = private unnamed_addr constant [5 x i8] c"Move\00", align 1
@move_command_class = internal global %struct.CommandClass_t { void (%struct.Command_t*)* @move_command_destruct, i32 (%struct.Command_t*)* @move_command_execute, void (%struct.Command_t*)* null, void (%struct.Command_t*)* null }, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"button-release-event\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"motion-notify-event\00", align 1

; Function Attrs: nounwind uwtable
define %struct.Command_t* @move_command_new(%struct.Preview_t* %preview, %struct.Object_t* %obj, i32 %x, i32 %y) #0 {
entry:
  %preview.addr = alloca %struct.Preview_t*, align 8
  %obj.addr = alloca %struct.Object_t*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %command = alloca %struct.MoveCommand_t*, align 8
  store %struct.Preview_t* %preview, %struct.Preview_t** %preview.addr, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %call = call noalias i8* @g_malloc_n(i64 1, i64 104)
  %0 = bitcast i8* %call to %struct.MoveCommand_t*
  store %struct.MoveCommand_t* %0, %struct.MoveCommand_t** %command, align 8
  %call1 = call %struct.PreferencesData_t* @get_preferences()
  %1 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %preferences = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %1, i32 0, i32 1
  store %struct.PreferencesData_t* %call1, %struct.PreferencesData_t** %preferences, align 8
  %2 = load %struct.Preview_t*, %struct.Preview_t** %preview.addr, align 8
  %3 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %preview2 = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %3, i32 0, i32 2
  store %struct.Preview_t* %2, %struct.Preview_t** %preview2, align 8
  %4 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %call3 = call %struct.Object_t* @object_ref(%struct.Object_t* %4)
  %5 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %obj4 = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %5, i32 0, i32 3
  store %struct.Object_t* %call3, %struct.Object_t** %obj4, align 8
  %6 = load i32, i32* %x.addr, align 4
  %7 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %start_x = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %7, i32 0, i32 4
  store i32 %6, i32* %start_x, align 4
  %8 = load i32, i32* %y.addr, align 4
  %9 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %start_y = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %9, i32 0, i32 5
  store i32 %8, i32* %start_y, align 4
  %10 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %class = getelementptr inbounds %struct.Object_t, %struct.Object_t* %10, i32 0, i32 0
  %11 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class, align 8
  %get_dimensions = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %11, i32 0, i32 13
  %12 = load void (%struct.Object_t*, i32*, i32*, i32*, i32*)*, void (%struct.Object_t*, i32*, i32*, i32*, i32*)** %get_dimensions, align 8
  %13 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %14 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %obj_x = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %14, i32 0, i32 8
  %15 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %obj_y = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %15, i32 0, i32 9
  %16 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %obj_width = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %16, i32 0, i32 10
  %17 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %obj_height = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %17, i32 0, i32 11
  call void %12(%struct.Object_t* %13, i32* %obj_x, i32* %obj_y, i32* %obj_width, i32* %obj_height)
  %18 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %obj_x5 = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %18, i32 0, i32 8
  %19 = load i32, i32* %obj_x5, align 4
  %20 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %obj_start_x = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %20, i32 0, i32 6
  store i32 %19, i32* %obj_start_x, align 4
  %21 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %obj_y6 = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %21, i32 0, i32 9
  %22 = load i32, i32* %obj_y6, align 4
  %23 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %obj_start_y = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %23, i32 0, i32 7
  store i32 %22, i32* %obj_start_y, align 4
  %call7 = call i32 @get_image_width()
  %24 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %image_width = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %24, i32 0, i32 12
  store i32 %call7, i32* %image_width, align 4
  %call8 = call i32 @get_image_height()
  %25 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %image_height = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %25, i32 0, i32 13
  store i32 %call8, i32* %image_height, align 4
  %26 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %moved_first_time = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %26, i32 0, i32 15
  store i32 1, i32* %moved_first_time, align 4
  %27 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %parent = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %27, i32 0, i32 0
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #3
  %call10 = call %struct.Command_t* @command_init(%struct.Command_t* %parent, i8* %call9, %struct.CommandClass_t* @move_command_class)
  ret %struct.Command_t* %call10
}

declare noalias i8* @g_malloc_n(i64, i64) #1

declare %struct.PreferencesData_t* @get_preferences() #1

declare %struct.Object_t* @object_ref(%struct.Object_t*) #1

declare i32 @get_image_width() #1

declare i32 @get_image_height() #1

declare %struct.Command_t* @command_init(%struct.Command_t*, i8*, %struct.CommandClass_t*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @move_command_destruct(%struct.Command_t* %parent) #0 {
entry:
  %parent.addr = alloca %struct.Command_t*, align 8
  %command = alloca %struct.MoveCommand_t*, align 8
  store %struct.Command_t* %parent, %struct.Command_t** %parent.addr, align 8
  %0 = load %struct.Command_t*, %struct.Command_t** %parent.addr, align 8
  %1 = bitcast %struct.Command_t* %0 to %struct.MoveCommand_t*
  store %struct.MoveCommand_t* %1, %struct.MoveCommand_t** %command, align 8
  %2 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %obj = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %2, i32 0, i32 3
  %3 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  call void @object_unref(%struct.Object_t* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @move_command_execute(%struct.Command_t* %parent) #0 {
entry:
  %parent.addr = alloca %struct.Command_t*, align 8
  %command = alloca %struct.MoveCommand_t*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  store %struct.Command_t* %parent, %struct.Command_t** %parent.addr, align 8
  %0 = load %struct.Command_t*, %struct.Command_t** %parent.addr, align 8
  %1 = bitcast %struct.Command_t* %0 to %struct.MoveCommand_t*
  store %struct.MoveCommand_t* %1, %struct.MoveCommand_t** %command, align 8
  %2 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %preview = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %2, i32 0, i32 2
  %3 = load %struct.Preview_t*, %struct.Preview_t** %preview, align 8
  %preview1 = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %3, i32 0, i32 2
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %preview1, align 8
  store %struct._GtkWidget* %4, %struct._GtkWidget** %widget, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %6 = bitcast %struct._GtkWidget* %5 to i8*
  %7 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %8 = bitcast %struct.MoveCommand_t* %7 to i8*
  %call = call i64 @g_signal_connect_data(i8* %6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkEventButton*, i8*)* @button_release to void ()*), i8* %8, void (i8*, %struct._GClosure*)* null, i32 0)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %10 = bitcast %struct._GtkWidget* %9 to i8*
  %11 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %12 = bitcast %struct.MoveCommand_t* %11 to i8*
  %call2 = call i64 @g_signal_connect_data(i8* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkEventMotion*, i8*)* @button_motion to void ()*), i8* %12, void (i8*, %struct._GClosure*)* null, i32 0)
  ret i32 1
}

declare void @object_unref(%struct.Object_t*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @button_release(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %data.addr = alloca i8*, align 8
  %command = alloca %struct.MoveCommand_t*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.MoveCommand_t*
  store %struct.MoveCommand_t* %1, %struct.MoveCommand_t** %command, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to i8*
  %4 = load i8*, i8** %data.addr, align 8
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %3, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GdkEventMotion*, i8*)* @button_motion to i8*), i8* %4)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %6 = bitcast %struct._GtkWidget* %5 to i8*
  %7 = load i8*, i8** %data.addr, align 8
  %call1 = call i32 @g_signal_handlers_disconnect_matched(i8* %6, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GdkEventButton*, i8*)* @button_release to i8*), i8* %7)
  %8 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %moved_first_time = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %8, i32 0, i32 15
  %9 = load i32, i32* %moved_first_time, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %10 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %preview = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %10, i32 0, i32 2
  %11 = load %struct.Preview_t*, %struct.Preview_t** %preview, align 8
  %12 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %cursor = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %12, i32 0, i32 14
  %13 = load i32, i32* %cursor, align 4
  %call2 = call i32 @preview_set_cursor(%struct.Preview_t* %11, i32 %13)
  call void @show_url()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %obj_start_x = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %14, i32 0, i32 6
  %15 = load i32, i32* %obj_start_x, align 4
  %16 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %obj_x = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %16, i32 0, i32 8
  %17 = load i32, i32* %obj_x, align 4
  %sub = sub nsw i32 %17, %15
  store i32 %sub, i32* %obj_x, align 4
  %18 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %obj_start_y = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %18, i32 0, i32 7
  %19 = load i32, i32* %obj_start_y, align 4
  %20 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %obj_y = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %20, i32 0, i32 9
  %21 = load i32, i32* %obj_y, align 4
  %sub3 = sub nsw i32 %21, %19
  store i32 %sub3, i32* %obj_y, align 4
  %22 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %obj_x4 = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %22, i32 0, i32 8
  %23 = load i32, i32* %obj_x4, align 4
  %tobool5 = icmp ne i32 %23, 0
  br i1 %tobool5, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %24 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %obj_y6 = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %24, i32 0, i32 9
  %25 = load i32, i32* %obj_y6, align 4
  %tobool7 = icmp ne i32 %25, 0
  br i1 %tobool7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  %26 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %obj = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %26, i32 0, i32 3
  %27 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %28 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %obj_x9 = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %28, i32 0, i32 8
  %29 = load i32, i32* %obj_x9, align 4
  %30 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %obj_y10 = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %30, i32 0, i32 9
  %31 = load i32, i32* %obj_y10, align 4
  %call11 = call %struct.Command_t* @object_move_command_new(%struct.Object_t* %27, i32 %29, i32 %31)
  call void @command_list_add(%struct.Command_t* %call11)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @button_motion(%struct._GtkWidget* %widget, %struct._GdkEventMotion* %event, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventMotion*, align 8
  %data.addr = alloca i8*, align 8
  %command = alloca %struct.MoveCommand_t*, align 8
  %obj = alloca %struct.Object_t*, align 8
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventMotion* %event, %struct._GdkEventMotion** %event.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.MoveCommand_t*
  store %struct.MoveCommand_t* %1, %struct.MoveCommand_t** %command, align 8
  %2 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %obj1 = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %2, i32 0, i32 3
  %3 = load %struct.Object_t*, %struct.Object_t** %obj1, align 8
  store %struct.Object_t* %3, %struct.Object_t** %obj, align 8
  %4 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %x = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %4, i32 0, i32 4
  %5 = load double, double* %x, align 8
  %conv = fptosi double %5 to i32
  %call = call i32 @get_real_coord(i32 %conv)
  %6 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %start_x = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %6, i32 0, i32 4
  %7 = load i32, i32* %start_x, align 4
  %sub = sub nsw i32 %call, %7
  store i32 %sub, i32* %dx, align 4
  %8 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %y = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %8, i32 0, i32 5
  %9 = load double, double* %y, align 8
  %conv2 = fptosi double %9 to i32
  %call3 = call i32 @get_real_coord(i32 %conv2)
  %10 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %start_y = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %10, i32 0, i32 5
  %11 = load i32, i32* %start_y, align 4
  %sub4 = sub nsw i32 %call3, %11
  store i32 %sub4, i32* %dy, align 4
  %12 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %moved_first_time = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %12, i32 0, i32 15
  %13 = load i32, i32* %moved_first_time, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %moved_first_time5 = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %14, i32 0, i32 15
  store i32 0, i32* %moved_first_time5, align 4
  %15 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %preview = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %15, i32 0, i32 2
  %16 = load %struct.Preview_t*, %struct.Preview_t** %preview, align 8
  %call6 = call i32 @preview_set_cursor(%struct.Preview_t* %16, i32 52)
  %17 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %cursor = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %17, i32 0, i32 14
  store i32 %call6, i32* %cursor, align 4
  call void @hide_url()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %obj_x = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %18, i32 0, i32 8
  %19 = load i32, i32* %obj_x, align 4
  %20 = load i32, i32* %dx, align 4
  %add = add nsw i32 %19, %20
  %cmp = icmp slt i32 %add, 0
  br i1 %cmp, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end
  %21 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %obj_x9 = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %21, i32 0, i32 8
  %22 = load i32, i32* %obj_x9, align 4
  %sub10 = sub nsw i32 0, %22
  store i32 %sub10, i32* %dx, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end
  %23 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %obj_x12 = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %23, i32 0, i32 8
  %24 = load i32, i32* %obj_x12, align 4
  %25 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %obj_width = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %25, i32 0, i32 10
  %26 = load i32, i32* %obj_width, align 4
  %add13 = add nsw i32 %24, %26
  %27 = load i32, i32* %dx, align 4
  %add14 = add nsw i32 %add13, %27
  %28 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %image_width = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %28, i32 0, i32 12
  %29 = load i32, i32* %image_width, align 4
  %cmp15 = icmp sgt i32 %add14, %29
  br i1 %cmp15, label %if.then.17, label %if.end.23

if.then.17:                                       ; preds = %if.end.11
  %30 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %image_width18 = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %30, i32 0, i32 12
  %31 = load i32, i32* %image_width18, align 4
  %32 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %obj_width19 = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %32, i32 0, i32 10
  %33 = load i32, i32* %obj_width19, align 4
  %sub20 = sub nsw i32 %31, %33
  %34 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %obj_x21 = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %34, i32 0, i32 8
  %35 = load i32, i32* %obj_x21, align 4
  %sub22 = sub nsw i32 %sub20, %35
  store i32 %sub22, i32* %dx, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.17, %if.end.11
  %36 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %obj_y = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %36, i32 0, i32 9
  %37 = load i32, i32* %obj_y, align 4
  %38 = load i32, i32* %dy, align 4
  %add24 = add nsw i32 %37, %38
  %cmp25 = icmp slt i32 %add24, 0
  br i1 %cmp25, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %if.end.23
  %39 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %obj_y28 = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %39, i32 0, i32 9
  %40 = load i32, i32* %obj_y28, align 4
  %sub29 = sub nsw i32 0, %40
  store i32 %sub29, i32* %dy, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %if.end.23
  %41 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %obj_y31 = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %41, i32 0, i32 9
  %42 = load i32, i32* %obj_y31, align 4
  %43 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %obj_height = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %43, i32 0, i32 11
  %44 = load i32, i32* %obj_height, align 4
  %add32 = add nsw i32 %42, %44
  %45 = load i32, i32* %dy, align 4
  %add33 = add nsw i32 %add32, %45
  %46 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %image_height = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %46, i32 0, i32 13
  %47 = load i32, i32* %image_height, align 4
  %cmp34 = icmp sgt i32 %add33, %47
  br i1 %cmp34, label %if.then.36, label %if.end.42

if.then.36:                                       ; preds = %if.end.30
  %48 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %image_height37 = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %48, i32 0, i32 13
  %49 = load i32, i32* %image_height37, align 4
  %50 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %obj_height38 = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %50, i32 0, i32 11
  %51 = load i32, i32* %obj_height38, align 4
  %sub39 = sub nsw i32 %49, %51
  %52 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %obj_y40 = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %52, i32 0, i32 9
  %53 = load i32, i32* %obj_y40, align 4
  %sub41 = sub nsw i32 %sub39, %53
  store i32 %sub41, i32* %dy, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.36, %if.end.30
  %54 = load i32, i32* %dx, align 4
  %tobool43 = icmp ne i32 %54, 0
  br i1 %tobool43, label %if.then.45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.42
  %55 = load i32, i32* %dy, align 4
  %tobool44 = icmp ne i32 %55, 0
  br i1 %tobool44, label %if.then.45, label %if.end.58

if.then.45:                                       ; preds = %lor.lhs.false, %if.end.42
  %56 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %x46 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %56, i32 0, i32 4
  %57 = load double, double* %x46, align 8
  %conv47 = fptosi double %57 to i32
  %call48 = call i32 @get_real_coord(i32 %conv47)
  %58 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %start_x49 = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %58, i32 0, i32 4
  store i32 %call48, i32* %start_x49, align 4
  %59 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %y50 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %59, i32 0, i32 5
  %60 = load double, double* %y50, align 8
  %conv51 = fptosi double %60 to i32
  %call52 = call i32 @get_real_coord(i32 %conv51)
  %61 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %start_y53 = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %61, i32 0, i32 5
  store i32 %call52, i32* %start_y53, align 4
  %62 = load i32, i32* %dx, align 4
  %63 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %obj_x54 = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %63, i32 0, i32 8
  %64 = load i32, i32* %obj_x54, align 4
  %add55 = add nsw i32 %64, %62
  store i32 %add55, i32* %obj_x54, align 4
  %65 = load i32, i32* %dy, align 4
  %66 = load %struct.MoveCommand_t*, %struct.MoveCommand_t** %command, align 8
  %obj_y56 = getelementptr inbounds %struct.MoveCommand_t, %struct.MoveCommand_t* %66, i32 0, i32 9
  %67 = load i32, i32* %obj_y56, align 4
  %add57 = add nsw i32 %67, %65
  store i32 %add57, i32* %obj_y56, align 4
  %68 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %69 = load i32, i32* %dx, align 4
  %70 = load i32, i32* %dy, align 4
  call void @object_move(%struct.Object_t* %68, i32 %69, i32 %70)
  call void @preview_redraw()
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.45, %lor.lhs.false
  ret void
}

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare i32 @preview_set_cursor(%struct.Preview_t*, i32) #1

declare void @show_url() #1

declare void @command_list_add(%struct.Command_t*) #1

declare %struct.Command_t* @object_move_command_new(%struct.Object_t*, i32, i32) #1

declare i32 @get_real_coord(i32) #1

declare void @hide_url() #1

declare void @object_move(%struct.Object_t*, i32, i32) #1

declare void @preview_redraw() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
