; ModuleID = './plug-ins/imagemap/imap_browse.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkTargetEntry = type { i8*, i32, i32 }
%struct.BrowseWidget_t = type { i8*, i8* (i8*, i8*)*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
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
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GdkDragContext = type { %struct._GObject, i32, i32, %struct._GdkDrawable*, %struct._GdkDrawable*, %struct._GList*, i32, i32, i32, i32, i8* }
%struct._GtkSelectionData = type { %struct._GdkAtom*, %struct._GdkAtom*, %struct._GdkAtom*, i32, i8*, i32, %struct._GdkDisplay* }
%struct._GdkAtom = type opaque
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkDisplayPointerHooks = type { void (%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkFileChooser = type opaque

@target_table = internal constant [2 x %struct._GtkTargetEntry] [%struct._GtkTargetEntry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 0, i32 1 }, %struct._GtkTargetEntry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 2 }], align 16
@.str = private unnamed_addr constant [19 x i8] c"drag-data-received\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"gtk-open\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"STRING\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"text/plain\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"response\00", align 1

; Function Attrs: nounwind uwtable
define %struct.BrowseWidget_t* @browse_widget_new(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %browse = alloca %struct.BrowseWidget_t*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %icon = alloca %struct._GtkWidget*, align 8
  store i8* %name, i8** %name.addr, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 56)
  %0 = bitcast i8* %call to %struct.BrowseWidget_t*
  store %struct.BrowseWidget_t* %0, %struct.BrowseWidget_t** %browse, align 8
  %1 = load %struct.BrowseWidget_t*, %struct.BrowseWidget_t** %browse, align 8
  %file_chooser = getelementptr inbounds %struct.BrowseWidget_t, %struct.BrowseWidget_t* %1, i32 0, i32 6
  store %struct._GtkWidget* null, %struct._GtkWidget** %file_chooser, align 8
  %2 = load i8*, i8** %name.addr, align 8
  %3 = load %struct.BrowseWidget_t*, %struct.BrowseWidget_t** %browse, align 8
  %name1 = getelementptr inbounds %struct.BrowseWidget_t, %struct.BrowseWidget_t* %3, i32 0, i32 0
  store i8* %2, i8** %name1, align 8
  %4 = load %struct.BrowseWidget_t*, %struct.BrowseWidget_t** %browse, align 8
  %filter = getelementptr inbounds %struct.BrowseWidget_t, %struct.BrowseWidget_t* %4, i32 0, i32 1
  store i8* (i8*, i8*)* null, i8* (i8*, i8*)** %filter, align 8
  %call2 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 1)
  %5 = load %struct.BrowseWidget_t*, %struct.BrowseWidget_t** %browse, align 8
  %hbox = getelementptr inbounds %struct.BrowseWidget_t, %struct.BrowseWidget_t* %5, i32 0, i32 3
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %hbox, align 8
  %6 = load %struct.BrowseWidget_t*, %struct.BrowseWidget_t** %browse, align 8
  %hbox3 = getelementptr inbounds %struct.BrowseWidget_t, %struct.BrowseWidget_t* %6, i32 0, i32 3
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox3, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %7)
  %call4 = call %struct._GtkWidget* @gtk_entry_new()
  %8 = load %struct.BrowseWidget_t*, %struct.BrowseWidget_t** %browse, align 8
  %file = getelementptr inbounds %struct.BrowseWidget_t, %struct.BrowseWidget_t* %8, i32 0, i32 4
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %file, align 8
  %9 = load %struct.BrowseWidget_t*, %struct.BrowseWidget_t** %browse, align 8
  %hbox5 = getelementptr inbounds %struct.BrowseWidget_t, %struct.BrowseWidget_t* %9, i32 0, i32 3
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox5, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_box_get_type() #3
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call6)
  %12 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkBox*
  %13 = load %struct.BrowseWidget_t*, %struct.BrowseWidget_t** %browse, align 8
  %file8 = getelementptr inbounds %struct.BrowseWidget_t, %struct.BrowseWidget_t* %13, i32 0, i32 4
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %file8, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %12, %struct._GtkWidget* %14, i32 1, i32 1, i32 0)
  %15 = load %struct.BrowseWidget_t*, %struct.BrowseWidget_t** %browse, align 8
  %file9 = getelementptr inbounds %struct.BrowseWidget_t, %struct.BrowseWidget_t* %15, i32 0, i32 4
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %file9, align 8
  call void @gtk_drag_dest_set(%struct._GtkWidget* %16, i32 7, %struct._GtkTargetEntry* getelementptr inbounds ([2 x %struct._GtkTargetEntry], [2 x %struct._GtkTargetEntry]* @target_table, i32 0, i32 0), i32 2, i32 2)
  %17 = load %struct.BrowseWidget_t*, %struct.BrowseWidget_t** %browse, align 8
  %file10 = getelementptr inbounds %struct.BrowseWidget_t, %struct.BrowseWidget_t* %17, i32 0, i32 4
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %file10, align 8
  %19 = bitcast %struct._GtkWidget* %18 to i8*
  %call11 = call i64 @g_signal_connect_data(i8* %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)* @handle_drop to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %20 = load %struct.BrowseWidget_t*, %struct.BrowseWidget_t** %browse, align 8
  %file12 = getelementptr inbounds %struct.BrowseWidget_t, %struct.BrowseWidget_t* %20, i32 0, i32 4
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %file12, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %21)
  %call13 = call %struct._GtkWidget* @gtk_button_new()
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %button, align 8
  %22 = load %struct.BrowseWidget_t*, %struct.BrowseWidget_t** %browse, align 8
  %button14 = getelementptr inbounds %struct.BrowseWidget_t, %struct.BrowseWidget_t* %22, i32 0, i32 5
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %button14, align 8
  %call15 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 4)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %icon, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_container_get_type() #3
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call16)
  %25 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkContainer*
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %icon, align 8
  call void @gtk_container_add(%struct._GtkContainer* %25, %struct._GtkWidget* %26)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %icon, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %27)
  %28 = load %struct.BrowseWidget_t*, %struct.BrowseWidget_t** %browse, align 8
  %hbox18 = getelementptr inbounds %struct.BrowseWidget_t, %struct.BrowseWidget_t* %28, i32 0, i32 3
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox18, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_box_get_type() #3
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call19)
  %31 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkBox*
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %31, %struct._GtkWidget* %32, i32 0, i32 0, i32 0)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %34 = bitcast %struct._GtkWidget* %33 to i8*
  %35 = load %struct.BrowseWidget_t*, %struct.BrowseWidget_t** %browse, align 8
  %36 = bitcast %struct.BrowseWidget_t* %35 to i8*
  %call21 = call i64 @g_signal_connect_data(i8* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.BrowseWidget_t*)* @browse_cb to void ()*), i8* %36, void (i8*, %struct._GClosure*)* null, i32 0)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %37)
  %38 = load %struct.BrowseWidget_t*, %struct.BrowseWidget_t** %browse, align 8
  ret %struct.BrowseWidget_t* %38
}

declare noalias i8* @g_malloc_n(i64, i64) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_entry_new() #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_drag_dest_set(%struct._GtkWidget*, i32, %struct._GtkTargetEntry*, i32, i32) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @handle_drop(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, i32 %x, i32 %y, %struct._GtkSelectionData* %data, i32 %info, i32 %time) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %data.addr = alloca %struct._GtkSelectionData*, align 8
  %info.addr = alloca i32, align 4
  %time.addr = alloca i32, align 4
  %success = alloca i32, align 4
  %text = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GtkSelectionData* %data, %struct._GtkSelectionData** %data.addr, align 8
  store i32 %info, i32* %info.addr, align 4
  store i32 %time, i32* %time.addr, align 4
  store i32 0, i32* %success, align 4
  %0 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %data.addr, align 8
  %call = call i32 @gtk_selection_data_get_length(%struct._GtkSelectionData* %0)
  %cmp = icmp sge i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %data.addr, align 8
  %call1 = call i32 @gtk_selection_data_get_format(%struct._GtkSelectionData* %1)
  %cmp2 = icmp eq i32 %call1, 8
  br i1 %cmp2, label %if.then, label %if.end.8

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %data.addr, align 8
  %call3 = call i8* @gtk_selection_data_get_data(%struct._GtkSelectionData* %2)
  store i8* %call3, i8** %text, align 8
  %3 = load i8*, i8** %text, align 8
  %call4 = call i32 @g_utf8_validate(i8* %3, i64 -1, i8** null)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_entry_get_type() #3
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call6)
  %6 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkEntry*
  %7 = load i8*, i8** %text, align 8
  call void @gtk_entry_set_text(%struct._GtkEntry* %6, i8* %7)
  store i32 1, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %land.lhs.true, %entry
  %8 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %9 = load i32, i32* %success, align 4
  %10 = load i32, i32* %time.addr, align 4
  call void @gtk_drag_finish(%struct._GdkDragContext* %8, i32 %9, i32 0, i32 %10)
  ret void
}

declare %struct._GtkWidget* @gtk_button_new() #1

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @browse_cb(%struct._GtkWidget* %widget, %struct.BrowseWidget_t* %browse) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %browse.addr = alloca %struct.BrowseWidget_t*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.BrowseWidget_t* %browse, %struct.BrowseWidget_t** %browse.addr, align 8
  %0 = load %struct.BrowseWidget_t*, %struct.BrowseWidget_t** %browse.addr, align 8
  %file_chooser = getelementptr inbounds %struct.BrowseWidget_t, %struct.BrowseWidget_t* %0, i32 0, i32 6
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %file_chooser, align 8
  %tobool = icmp ne %struct._GtkWidget* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.BrowseWidget_t*, %struct.BrowseWidget_t** %browse.addr, align 8
  %name = getelementptr inbounds %struct.BrowseWidget_t, %struct.BrowseWidget_t* %2, i32 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %4)
  %5 = bitcast %struct._GtkWidget* %call to %struct._GTypeInstance*
  %call1 = call i64 @gtk_window_get_type() #3
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWindow*
  %call3 = call %struct._GtkWidget* (i8*, %struct._GtkWindow*, i32, i8*, ...) @gtk_file_chooser_dialog_new(i8* %3, %struct._GtkWindow* %6, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 -5, i8* null)
  %7 = load %struct.BrowseWidget_t*, %struct.BrowseWidget_t** %browse.addr, align 8
  %file_chooser4 = getelementptr inbounds %struct.BrowseWidget_t, %struct.BrowseWidget_t* %7, i32 0, i32 6
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %file_chooser4, align 8
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %dialog, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_dialog_get_type() #3
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %10, i32 -5, i32 -6, i32 -1)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_dialog_get_type() #3
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call7)
  %13 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %13, i32 -5)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %15 = bitcast %struct._GtkWidget* %14 to i8*
  %16 = bitcast %struct._GtkWidget** %dialog to i8*
  %call9 = call i64 @g_signal_connect_data(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget**)* @gtk_widget_destroyed to void ()*), i8* %16, void (i8*, %struct._GClosure*)* null, i32 0)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %18 = bitcast %struct._GtkWidget* %17 to i8*
  %19 = load %struct.BrowseWidget_t*, %struct.BrowseWidget_t** %browse.addr, align 8
  %20 = bitcast %struct.BrowseWidget_t* %19 to i8*
  %call10 = call i64 @g_signal_connect_data(i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct.BrowseWidget_t*)* @select_cb to void ()*), i8* %20, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %21 = load %struct.BrowseWidget_t*, %struct.BrowseWidget_t** %browse.addr, align 8
  %file_chooser11 = getelementptr inbounds %struct.BrowseWidget_t, %struct.BrowseWidget_t* %21, i32 0, i32 6
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %file_chooser11, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_window_get_type() #3
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call12)
  %24 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %24)
  ret void
}

; Function Attrs: nounwind uwtable
define void @browse_widget_set_filename(%struct.BrowseWidget_t* %browse, i8* %filename) #0 {
entry:
  %browse.addr = alloca %struct.BrowseWidget_t*, align 8
  %filename.addr = alloca i8*, align 8
  store %struct.BrowseWidget_t* %browse, %struct.BrowseWidget_t** %browse.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load %struct.BrowseWidget_t*, %struct.BrowseWidget_t** %browse.addr, align 8
  %file = getelementptr inbounds %struct.BrowseWidget_t, %struct.BrowseWidget_t* %0, i32 0, i32 4
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %file, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #3
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkEntry*
  %4 = load i8*, i8** %filename.addr, align 8
  call void @gtk_entry_set_text(%struct._GtkEntry* %3, i8* %4)
  ret void
}

declare void @gtk_entry_set_text(%struct._GtkEntry*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #2

; Function Attrs: nounwind uwtable
define void @browse_widget_set_filter(%struct.BrowseWidget_t* %browse, i8* (i8*, i8*)* %filter, i8* %data) #0 {
entry:
  %browse.addr = alloca %struct.BrowseWidget_t*, align 8
  %filter.addr = alloca i8* (i8*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.BrowseWidget_t* %browse, %struct.BrowseWidget_t** %browse.addr, align 8
  store i8* (i8*, i8*)* %filter, i8* (i8*, i8*)** %filter.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %filter.addr, align 8
  %1 = load %struct.BrowseWidget_t*, %struct.BrowseWidget_t** %browse.addr, align 8
  %filter1 = getelementptr inbounds %struct.BrowseWidget_t, %struct.BrowseWidget_t* %1, i32 0, i32 1
  store i8* (i8*, i8*)* %0, i8* (i8*, i8*)** %filter1, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %3 = load %struct.BrowseWidget_t*, %struct.BrowseWidget_t** %browse.addr, align 8
  %filter_data = getelementptr inbounds %struct.BrowseWidget_t, %struct.BrowseWidget_t* %3, i32 0, i32 2
  store i8* %2, i8** %filter_data, align 8
  ret void
}

declare i32 @gtk_selection_data_get_length(%struct._GtkSelectionData*) #1

declare i32 @gtk_selection_data_get_format(%struct._GtkSelectionData*) #1

declare i8* @gtk_selection_data_get_data(%struct._GtkSelectionData*) #1

declare i32 @g_utf8_validate(i8*, i64, i8**) #1

declare void @gtk_drag_finish(%struct._GdkDragContext*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_file_chooser_dialog_new(i8*, %struct._GtkWindow*, i32, i8*, ...) #1

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

declare void @gtk_dialog_set_default_response(%struct._GtkDialog*, i32) #1

declare void @gtk_widget_destroyed(%struct._GtkWidget*, %struct._GtkWidget**) #1

; Function Attrs: nounwind uwtable
define internal void @select_cb(%struct._GtkWidget* %dialog, i32 %response_id, %struct.BrowseWidget_t* %browse) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %browse.addr = alloca %struct.BrowseWidget_t*, align 8
  %p = alloca i8*, align 8
  %file = alloca i8*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct.BrowseWidget_t* %browse, %struct.BrowseWidget_t** %browse.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_file_chooser_get_type() #3
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkFileChooser*
  %call2 = call i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser* %3)
  store i8* %call2, i8** %file, align 8
  %4 = load %struct.BrowseWidget_t*, %struct.BrowseWidget_t** %browse.addr, align 8
  %filter = getelementptr inbounds %struct.BrowseWidget_t, %struct.BrowseWidget_t* %4, i32 0, i32 1
  %5 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %filter, align 8
  %tobool = icmp ne i8* (i8*, i8*)* %5, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %6 = load %struct.BrowseWidget_t*, %struct.BrowseWidget_t** %browse.addr, align 8
  %filter3 = getelementptr inbounds %struct.BrowseWidget_t, %struct.BrowseWidget_t* %6, i32 0, i32 1
  %7 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %filter3, align 8
  %8 = load i8*, i8** %file, align 8
  %9 = load %struct.BrowseWidget_t*, %struct.BrowseWidget_t** %browse.addr, align 8
  %filter_data = getelementptr inbounds %struct.BrowseWidget_t, %struct.BrowseWidget_t* %9, i32 0, i32 2
  %10 = load i8*, i8** %filter_data, align 8
  %call4 = call i8* %7(i8* %8, i8* %10)
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %11 = load i8*, i8** %file, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call4, %cond.true ], [ %11, %cond.false ]
  store i8* %cond, i8** %p, align 8
  %12 = load %struct.BrowseWidget_t*, %struct.BrowseWidget_t** %browse.addr, align 8
  %file5 = getelementptr inbounds %struct.BrowseWidget_t, %struct.BrowseWidget_t* %12, i32 0, i32 4
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %file5, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_entry_get_type() #3
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call6)
  %15 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkEntry*
  %16 = load i8*, i8** %p, align 8
  call void @gtk_entry_set_text(%struct._GtkEntry* %15, i8* %16)
  %17 = load %struct.BrowseWidget_t*, %struct.BrowseWidget_t** %browse.addr, align 8
  %filter8 = getelementptr inbounds %struct.BrowseWidget_t, %struct.BrowseWidget_t* %17, i32 0, i32 1
  %18 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %filter8, align 8
  %tobool9 = icmp ne i8* (i8*, i8*)* %18, null
  br i1 %tobool9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %cond.end
  %19 = load i8*, i8** %p, align 8
  call void @g_free(i8* %19)
  br label %if.end

if.end:                                           ; preds = %if.then.10, %cond.end
  %20 = load i8*, i8** %file, align 8
  call void @g_free(i8* %20)
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %entry
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %21)
  %22 = load %struct.BrowseWidget_t*, %struct.BrowseWidget_t** %browse.addr, align 8
  %file12 = getelementptr inbounds %struct.BrowseWidget_t, %struct.BrowseWidget_t* %22, i32 0, i32 4
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %file12, align 8
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %23)
  ret void
}

declare void @gtk_window_present(%struct._GtkWindow*) #1

declare i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_file_chooser_get_type() #2

declare void @g_free(i8*) #1

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

declare void @gtk_widget_grab_focus(%struct._GtkWidget*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
