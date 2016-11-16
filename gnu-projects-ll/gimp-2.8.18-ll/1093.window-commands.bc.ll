; ModuleID = './app/actions/window-commands.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkActionPrivate = type opaque
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
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
%union._GdkEvent = type { %struct._GdkEventCrossing }
%struct._GdkEventCrossing = type { i32, %struct._GdkDrawable*, i8, %struct._GdkDrawable*, i32, double, double, double, double, i32, i32, i32, i32 }
%struct._GdkEventAny = type { i32, %struct._GdkDrawable*, i8 }
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkDisplayPointerHooks = type { void (%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GimpMessageDialog = type { %struct._GimpDialog, %struct._GimpMessageBox* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpMessageBox = type { %struct._GtkBox, i8*, i32, [3 x %struct._GtkWidget*], %struct._GtkWidget* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GtkEditable = type opaque

@.str = private unnamed_addr constant [13 x i8] c"Open Display\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"gimp-wilber-eek\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.4 = private unnamed_addr constant [73 x i8] c"Experimental multi-display stuff!\0AClick OK and have fun crashing GIMP...\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Please enter the name of the new display:\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"Can't open display '%s'. Please try another one:\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"screen\00", align 1

; Function Attrs: nounwind uwtable
define void @window_close_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %event = alloca %union._GdkEvent*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GtkWidget* @action_data_get_widget(i8* %0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %widget, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool = icmp ne %struct._GtkWidget* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.14

if.end:                                           ; preds = %entry
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call1 = call i32 @gtk_widget_is_toplevel(%struct._GtkWidget* %2)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.5, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call4 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %3)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %widget, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool6 = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool6, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.end.5
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call7 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %5)
  %tobool8 = icmp ne %struct._GdkDrawable* %call7, null
  br i1 %tobool8, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %land.lhs.true
  %call10 = call %union._GdkEvent* @gdk_event_new(i32 0)
  store %union._GdkEvent* %call10, %union._GdkEvent** %event, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call11 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %6)
  %7 = bitcast %struct._GdkDrawable* %call11 to i8*
  %call12 = call i8* @g_object_ref(i8* %7)
  %8 = bitcast i8* %call12 to %struct._GdkDrawable*
  %9 = load %union._GdkEvent*, %union._GdkEvent** %event, align 8
  %any = bitcast %union._GdkEvent* %9 to %struct._GdkEventAny*
  %window = getelementptr inbounds %struct._GdkEventAny, %struct._GdkEventAny* %any, i32 0, i32 1
  store %struct._GdkDrawable* %8, %struct._GdkDrawable** %window, align 8
  %10 = load %union._GdkEvent*, %union._GdkEvent** %event, align 8
  %any13 = bitcast %union._GdkEvent* %10 to %struct._GdkEventAny*
  %send_event = getelementptr inbounds %struct._GdkEventAny, %struct._GdkEventAny* %any13, i32 0, i32 2
  store i8 1, i8* %send_event, align 1
  %11 = load %union._GdkEvent*, %union._GdkEvent** %event, align 8
  call void @gtk_main_do_event(%union._GdkEvent* %11)
  %12 = load %union._GdkEvent*, %union._GdkEvent** %event, align 8
  call void @gdk_event_free(%union._GdkEvent* %12)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then, %if.then.9, %land.lhs.true, %if.end.5
  ret void
}

declare %struct._GtkWidget* @action_data_get_widget(i8*) #1

declare i32 @gtk_widget_is_toplevel(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare %union._GdkEvent* @gdk_event_new(i32) #1

declare i8* @g_object_ref(i8*) #1

declare void @gtk_main_do_event(%union._GdkEvent*) #1

declare void @gdk_event_free(%union._GdkEvent*) #1

; Function Attrs: nounwind uwtable
define void @window_open_display_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %entry1 = alloca %struct._GtkWidget*, align 8
  %screen_name = alloca i8*, align 8
  %display = alloca %struct._GdkDisplay*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GtkWidget* @action_data_get_widget(i8* %0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %widget, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool = icmp ne %struct._GtkWidget* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call2 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_message_dialog_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), %struct._GtkWidget* %2, i32 1, void (i8*, i8*)* null, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %dialog, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_dialog_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %5, i32 -5, i32 -6, i32 -1)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_message_dialog_get_type() #4
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpMessageDialog*
  %box = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %8, i32 0, i32 1
  %9 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_primary_text(%struct._GimpMessageBox* %9, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i32 0, i32 0))
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_message_dialog_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call7)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpMessageDialog*
  %box9 = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %12, i32 0, i32 1
  %13 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box9, align 8
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_text(%struct._GimpMessageBox* %13, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i32 0, i32 0))
  %call10 = call %struct._GtkWidget* @gtk_entry_new()
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %entry1, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_entry_get_type() #4
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call11)
  %16 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkEntry*
  call void @gtk_entry_set_activates_default(%struct._GtkEntry* %16, i32 1)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_message_dialog_get_type() #4
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call13)
  %19 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpMessageDialog*
  %box15 = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %19, i32 0, i32 1
  %20 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box15, align 8
  %21 = bitcast %struct._GimpMessageBox* %20 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_box_get_type() #4
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call16)
  %22 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkBox*
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %22, %struct._GtkWidget* %23, i32 1, i32 1, i32 0)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %24)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show_all(%struct._GtkWidget* %25)
  br label %while.cond

while.cond:                                       ; preds = %if.end.37, %if.end
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_dialog_get_type() #4
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call18)
  %28 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkDialog*
  %call20 = call i32 @gtk_dialog_run(%struct._GtkDialog* %28)
  %cmp = icmp eq i32 %call20, -5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_editable_get_type() #4
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call21)
  %31 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkEditable*
  %call23 = call i8* @gtk_editable_get_chars(%struct._GtkEditable* %31, i32 0, i32 -1)
  store i8* %call23, i8** %screen_name, align 8
  %32 = load i8*, i8** %screen_name, align 8
  %call24 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0)) #5
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.37

if.then.26:                                       ; preds = %while.body
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %33, i32 0)
  %34 = load i8*, i8** %screen_name, align 8
  %call27 = call %struct._GdkDisplay* @gdk_display_open(i8* %34)
  store %struct._GdkDisplay* %call27, %struct._GdkDisplay** %display, align 8
  %35 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %tobool28 = icmp ne %struct._GdkDisplay* %35, null
  br i1 %tobool28, label %if.end.33, label %if.then.29

if.then.29:                                       ; preds = %if.then.26
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_message_dialog_get_type() #4
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call30)
  %38 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpMessageDialog*
  %box32 = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %38, i32 0, i32 1
  %39 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box32, align 8
  %40 = load i8*, i8** %screen_name, align 8
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_text(%struct._GimpMessageBox* %39, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i32 0, i32 0), i8* %40)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.29, %if.then.26
  %41 = load i8*, i8** %screen_name, align 8
  call void @g_free(i8* %41)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %42, i32 1)
  %43 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %tobool34 = icmp ne %struct._GdkDisplay* %43, null
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.33
  br label %while.end

if.end.36:                                        ; preds = %if.end.33
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %while.body
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %44)
  br label %while.cond

while.end:                                        ; preds = %if.then.35, %while.cond
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %45)
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

declare %struct._GtkWidget* @gimp_message_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

declare void @gimp_message_box_set_primary_text(%struct._GimpMessageBox*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_message_dialog_get_type() #2

declare void @gimp_message_box_set_text(%struct._GimpMessageBox*, i8*, ...) #1

declare %struct._GtkWidget* @gtk_entry_new() #1

declare void @gtk_entry_set_activates_default(%struct._GtkEntry*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #2

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_grab_focus(%struct._GtkWidget*) #1

declare void @gtk_widget_show_all(%struct._GtkWidget*) #1

declare i32 @gtk_dialog_run(%struct._GtkDialog*) #1

declare i8* @gtk_editable_get_chars(%struct._GtkEditable*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_editable_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare %struct._GdkDisplay* @gdk_display_open(i8*) #1

declare void @g_free(i8*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @window_move_to_screen_cmd_callback(%struct._GtkAction* %action, %struct._GtkAction* %current, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %current.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %screen = alloca %struct._GdkScreen*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store %struct._GtkAction* %current, %struct._GtkAction** %current.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GtkWidget* @action_data_get_widget(i8* %0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %widget, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool = icmp ne %struct._GtkWidget* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.25

if.end:                                           ; preds = %entry
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call1 = call i32 @gtk_widget_is_toplevel(%struct._GtkWidget* %2)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.5, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call4 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %3)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %widget, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %4 = load %struct._GtkAction*, %struct._GtkAction** %current.addr, align 8
  %5 = bitcast %struct._GtkAction* %4 to %struct._GTypeInstance*
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 80)
  %6 = bitcast %struct._GTypeInstance* %call6 to %struct._GObject*
  %call7 = call i8* @g_object_get_data(%struct._GObject* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0))
  %7 = bitcast i8* %call7 to %struct._GdkScreen*
  store %struct._GdkScreen* %7, %struct._GdkScreen** %screen, align 8
  %8 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %9 = bitcast %struct._GdkScreen* %8 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %9, %struct._GTypeInstance** %__inst, align 8
  %call8 = call i64 @gdk_screen_get_type() #4
  store i64 %call8, i64* %__t, align 8
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool9 = icmp ne %struct._GTypeInstance* %10, null
  br i1 %tobool9, label %if.else, label %if.then.10

if.then.10:                                       ; preds = %if.end.5
  store i32 0, i32* %__r, align 4
  br label %if.end.17

if.else:                                          ; preds = %if.end.5
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %11, i32 0, i32 0
  %12 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool11 = icmp ne %struct._GTypeClass* %12, null
  br i1 %tobool11, label %land.lhs.true, label %if.else.14

land.lhs.true:                                    ; preds = %if.else
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class12 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %13, i32 0, i32 0
  %14 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class12, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %14, i32 0, i32 0
  %15 = load i64, i64* %g_type, align 8
  %16 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %15, %16
  br i1 %cmp, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.16

if.else.14:                                       ; preds = %land.lhs.true, %if.else
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %18 = load i64, i64* %__t, align 8
  %call15 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %17, i64 %18) #5
  store i32 %call15, i32* %__r, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.14, %if.then.13
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.10
  %19 = load i32, i32* %__r, align 4
  store i32 %19, i32* %tmp
  %20 = load i32, i32* %tmp
  %tobool18 = icmp ne i32 %20, 0
  br i1 %tobool18, label %land.lhs.true.19, label %if.end.25

land.lhs.true.19:                                 ; preds = %if.end.17
  %21 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call20 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %22)
  %cmp21 = icmp ne %struct._GdkScreen* %21, %call20
  br i1 %cmp21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %land.lhs.true.19
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_window_get_type() #4
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call23)
  %25 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkWindow*
  %26 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  call void @gtk_window_set_screen(%struct._GtkWindow* %25, %struct._GdkScreen* %26)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then, %if.then.22, %land.lhs.true.19, %if.end.17
  ret void
}

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gdk_screen_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #1

declare void @gtk_window_set_screen(%struct._GtkWindow*, %struct._GdkScreen*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
