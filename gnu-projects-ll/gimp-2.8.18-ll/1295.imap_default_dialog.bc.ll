; ModuleID = './plug-ins/imagemap/imap_default_dialog.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }

@.str = private unnamed_addr constant [14 x i8] c"gimp-imagemap\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"plug-in-imagemap\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"gtk-apply\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1

; Function Attrs: nounwind uwtable
define void @default_dialog_set_ok_cb(%struct.DefaultDialog_t* %dialog, void (i8*)* %ok_cb, i8* %ok_cb_data) #0 {
entry:
  %dialog.addr = alloca %struct.DefaultDialog_t*, align 8
  %ok_cb.addr = alloca void (i8*)*, align 8
  %ok_cb_data.addr = alloca i8*, align 8
  store %struct.DefaultDialog_t* %dialog, %struct.DefaultDialog_t** %dialog.addr, align 8
  store void (i8*)* %ok_cb, void (i8*)** %ok_cb.addr, align 8
  store i8* %ok_cb_data, i8** %ok_cb_data.addr, align 8
  %0 = load void (i8*)*, void (i8*)** %ok_cb.addr, align 8
  %1 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog.addr, align 8
  %ok_cb1 = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %1, i32 0, i32 5
  store void (i8*)* %0, void (i8*)** %ok_cb1, align 8
  %2 = load i8*, i8** %ok_cb_data.addr, align 8
  %3 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog.addr, align 8
  %ok_cb_data2 = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %3, i32 0, i32 6
  store i8* %2, i8** %ok_cb_data2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @default_dialog_set_apply_cb(%struct.DefaultDialog_t* %dialog, void (i8*)* %apply_cb, i8* %apply_cb_data) #0 {
entry:
  %dialog.addr = alloca %struct.DefaultDialog_t*, align 8
  %apply_cb.addr = alloca void (i8*)*, align 8
  %apply_cb_data.addr = alloca i8*, align 8
  store %struct.DefaultDialog_t* %dialog, %struct.DefaultDialog_t** %dialog.addr, align 8
  store void (i8*)* %apply_cb, void (i8*)** %apply_cb.addr, align 8
  store i8* %apply_cb_data, i8** %apply_cb_data.addr, align 8
  %0 = load void (i8*)*, void (i8*)** %apply_cb.addr, align 8
  %1 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog.addr, align 8
  %apply_cb1 = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %1, i32 0, i32 7
  store void (i8*)* %0, void (i8*)** %apply_cb1, align 8
  %2 = load i8*, i8** %apply_cb_data.addr, align 8
  %3 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog.addr, align 8
  %apply_cb_data2 = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %3, i32 0, i32 8
  store i8* %2, i8** %apply_cb_data2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @default_dialog_set_cancel_cb(%struct.DefaultDialog_t* %dialog, void (i8*)* %cancel_cb, i8* %cancel_cb_data) #0 {
entry:
  %dialog.addr = alloca %struct.DefaultDialog_t*, align 8
  %cancel_cb.addr = alloca void (i8*)*, align 8
  %cancel_cb_data.addr = alloca i8*, align 8
  store %struct.DefaultDialog_t* %dialog, %struct.DefaultDialog_t** %dialog.addr, align 8
  store void (i8*)* %cancel_cb, void (i8*)** %cancel_cb.addr, align 8
  store i8* %cancel_cb_data, i8** %cancel_cb_data.addr, align 8
  %0 = load void (i8*)*, void (i8*)** %cancel_cb.addr, align 8
  %1 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog.addr, align 8
  %cancel_cb1 = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %1, i32 0, i32 9
  store void (i8*)* %0, void (i8*)** %cancel_cb1, align 8
  %2 = load i8*, i8** %cancel_cb_data.addr, align 8
  %3 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog.addr, align 8
  %cancel_cb_data2 = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %3, i32 0, i32 10
  store i8* %2, i8** %cancel_cb_data2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.DefaultDialog_t* @make_default_dialog(i8* %title) #0 {
entry:
  %title.addr = alloca i8*, align 8
  %data = alloca %struct.DefaultDialog_t*, align 8
  store i8* %title, i8** %title.addr, align 8
  %call = call noalias i8* @g_malloc0_n(i64 1, i64 88)
  %0 = bitcast i8* %call to %struct.DefaultDialog_t*
  store %struct.DefaultDialog_t* %0, %struct.DefaultDialog_t** %data, align 8
  %1 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %data, align 8
  %ok_cb = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %1, i32 0, i32 5
  store void (i8*)* null, void (i8*)** %ok_cb, align 8
  %2 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %data, align 8
  %apply_cb = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %2, i32 0, i32 7
  store void (i8*)* null, void (i8*)** %apply_cb, align 8
  %3 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %data, align 8
  %cancel_cb = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %3, i32 0, i32 9
  store void (i8*)* null, void (i8*)** %cancel_cb, align 8
  %4 = load i8*, i8** %title.addr, align 8
  %call1 = call %struct._GtkWidget* @get_dialog()
  %call2 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), %struct._GtkWidget* %call1, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i8* null)
  %5 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %data, align 8
  %dialog = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %5, i32 0, i32 0
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %dialog, align 8
  %6 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %data, align 8
  %dialog3 = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %6, i32 0, i32 0
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog3, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_dialog_get_type() #3
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkDialog*
  %call6 = call %struct._GtkWidget* @gtk_dialog_add_button(%struct._GtkDialog* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 -10)
  %10 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %data, align 8
  %apply = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %10, i32 0, i32 3
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %apply, align 8
  %11 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %data, align 8
  %dialog7 = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %11, i32 0, i32 0
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog7, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_dialog_get_type() #3
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkDialog*
  %call10 = call %struct._GtkWidget* @gtk_dialog_add_button(%struct._GtkDialog* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 -6)
  %15 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %data, align 8
  %cancel = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %15, i32 0, i32 4
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %cancel, align 8
  %16 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %data, align 8
  %dialog11 = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %16, i32 0, i32 0
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog11, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_dialog_get_type() #3
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call12)
  %19 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkDialog*
  %call14 = call %struct._GtkWidget* @gtk_dialog_add_button(%struct._GtkDialog* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 -5)
  %20 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %data, align 8
  %ok = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %20, i32 0, i32 2
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %ok, align 8
  %21 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %data, align 8
  %dialog15 = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %21, i32 0, i32 0
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog15, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_dialog_get_type() #3
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call16)
  %24 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %24, i32 -5, i32 -10, i32 -6, i32 -1)
  %25 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %data, align 8
  %dialog18 = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %25, i32 0, i32 0
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog18, align 8
  %27 = bitcast %struct._GtkWidget* %26 to i8*
  %28 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %data, align 8
  %29 = bitcast %struct.DefaultDialog_t* %28 to i8*
  %call19 = call i64 @g_signal_connect_data(i8* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct.DefaultDialog_t*)* @dialog_response to void ()*), i8* %29, void (i8*, %struct._GClosure*)* null, i32 0)
  %30 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %data, align 8
  %dialog20 = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %30, i32 0, i32 0
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog20, align 8
  %32 = bitcast %struct._GtkWidget* %31 to i8*
  %33 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %data, align 8
  %dialog21 = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %33, i32 0, i32 0
  %34 = bitcast %struct._GtkWidget** %dialog21 to i8*
  %call22 = call i64 @g_signal_connect_data(i8* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget**)* @gtk_widget_destroyed to void ()*), i8* %34, void (i8*, %struct._GClosure*)* null, i32 0)
  %call23 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  %35 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %data, align 8
  %vbox = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %35, i32 0, i32 1
  store %struct._GtkWidget* %call23, %struct._GtkWidget** %vbox, align 8
  %36 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %data, align 8
  %vbox24 = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %36, i32 0, i32 1
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox24, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_container_get_type() #3
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call25)
  %39 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %39, i32 12)
  %40 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %data, align 8
  %dialog27 = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %40, i32 0, i32 0
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog27, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_dialog_get_type() #3
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call28)
  %43 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkDialog*
  %call30 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %43)
  %44 = bitcast %struct._GtkWidget* %call30 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_box_get_type() #3
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call31)
  %45 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkBox*
  %46 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %data, align 8
  %vbox33 = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %46, i32 0, i32 1
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox33, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %45, %struct._GtkWidget* %47, i32 1, i32 1, i32 0)
  %48 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %data, align 8
  %vbox34 = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %48, i32 0, i32 1
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox34, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %49)
  %50 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %data, align 8
  ret %struct.DefaultDialog_t* %50
}

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

declare %struct._GtkWidget* @get_dialog() #1

declare void @gimp_standard_help_func(i8*, i8*) #1

declare %struct._GtkWidget* @gtk_dialog_add_button(%struct._GtkDialog*, i8*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @dialog_response(%struct._GtkWidget* %widget, i32 %response_id, %struct.DefaultDialog_t* %dialog) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %dialog.addr = alloca %struct.DefaultDialog_t*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct.DefaultDialog_t* %dialog, %struct.DefaultDialog_t** %dialog.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  switch i32 %0, label %sw.default [
    i32 -10, label %sw.bb
    i32 -5, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog.addr, align 8
  %apply_cb = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %1, i32 0, i32 7
  %2 = load void (i8*)*, void (i8*)** %apply_cb, align 8
  %tobool = icmp ne void (i8*)* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %3 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog.addr, align 8
  %apply_cb1 = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %3, i32 0, i32 7
  %4 = load void (i8*)*, void (i8*)** %apply_cb1, align 8
  %5 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog.addr, align 8
  %apply_cb_data = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %5, i32 0, i32 8
  %6 = load i8*, i8** %apply_cb_data, align 8
  call void %4(i8* %6)
  br label %if.end.5

if.else:                                          ; preds = %sw.bb
  %7 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog.addr, align 8
  %ok_cb = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %7, i32 0, i32 5
  %8 = load void (i8*)*, void (i8*)** %ok_cb, align 8
  %tobool2 = icmp ne void (i8*)* %8, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  %9 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog.addr, align 8
  %ok_cb4 = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %9, i32 0, i32 5
  %10 = load void (i8*)*, void (i8*)** %ok_cb4, align 8
  %11 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog.addr, align 8
  %ok_cb_data = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %11, i32 0, i32 6
  %12 = load i8*, i8** %ok_cb_data, align 8
  call void %10(i8* %12)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %13 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog.addr, align 8
  %dialog7 = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %13, i32 0, i32 0
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog7, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %14)
  %15 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog.addr, align 8
  %ok_cb8 = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %15, i32 0, i32 5
  %16 = load void (i8*)*, void (i8*)** %ok_cb8, align 8
  %tobool9 = icmp ne void (i8*)* %16, null
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %sw.bb.6
  %17 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog.addr, align 8
  %ok_cb11 = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %17, i32 0, i32 5
  %18 = load void (i8*)*, void (i8*)** %ok_cb11, align 8
  %19 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog.addr, align 8
  %ok_cb_data12 = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %19, i32 0, i32 6
  %20 = load i8*, i8** %ok_cb_data12, align 8
  call void %18(i8* %20)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %sw.bb.6
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %21 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog.addr, align 8
  %dialog14 = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %21, i32 0, i32 0
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog14, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %22)
  %23 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog.addr, align 8
  %cancel_cb = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %23, i32 0, i32 9
  %24 = load void (i8*)*, void (i8*)** %cancel_cb, align 8
  %tobool15 = icmp ne void (i8*)* %24, null
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %sw.default
  %25 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog.addr, align 8
  %cancel_cb17 = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %25, i32 0, i32 9
  %26 = load void (i8*)*, void (i8*)** %cancel_cb17, align 8
  %27 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog.addr, align 8
  %cancel_cb_data = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %27, i32 0, i32 10
  %28 = load i8*, i8** %cancel_cb_data, align 8
  call void %26(i8* %28)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.18, %if.end.13, %if.end.5
  ret void
}

declare void @gtk_widget_destroyed(%struct._GtkWidget*, %struct._GtkWidget**) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @default_dialog_show(%struct.DefaultDialog_t* %dialog) #0 {
entry:
  %dialog.addr = alloca %struct.DefaultDialog_t*, align 8
  store %struct.DefaultDialog_t* %dialog, %struct.DefaultDialog_t** %dialog.addr, align 8
  %0 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog.addr, align 8
  %dialog1 = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %0, i32 0, i32 0
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog1, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @default_dialog_hide_cancel_button(%struct.DefaultDialog_t* %dialog) #0 {
entry:
  %dialog.addr = alloca %struct.DefaultDialog_t*, align 8
  store %struct.DefaultDialog_t* %dialog, %struct.DefaultDialog_t** %dialog.addr, align 8
  %0 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog.addr, align 8
  %cancel = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %0, i32 0, i32 4
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %cancel, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %1)
  ret void
}

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @default_dialog_hide_apply_button(%struct.DefaultDialog_t* %dialog) #0 {
entry:
  %dialog.addr = alloca %struct.DefaultDialog_t*, align 8
  store %struct.DefaultDialog_t* %dialog, %struct.DefaultDialog_t** %dialog.addr, align 8
  %0 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog.addr, align 8
  %apply = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %0, i32 0, i32 3
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %apply, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @default_dialog_hide_help_button(%struct.DefaultDialog_t* %dialog) #0 {
entry:
  %dialog.addr = alloca %struct.DefaultDialog_t*, align 8
  store %struct.DefaultDialog_t* %dialog, %struct.DefaultDialog_t** %dialog.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @default_dialog_set_title(%struct.DefaultDialog_t* %dialog, i8* %title) #0 {
entry:
  %dialog.addr = alloca %struct.DefaultDialog_t*, align 8
  %title.addr = alloca i8*, align 8
  store %struct.DefaultDialog_t* %dialog, %struct.DefaultDialog_t** %dialog.addr, align 8
  store i8* %title, i8** %title.addr, align 8
  %0 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog.addr, align 8
  %dialog1 = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %0, i32 0, i32 0
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog1, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_window_get_type() #3
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWindow*
  %4 = load i8*, i8** %title.addr, align 8
  call void @gtk_window_set_title(%struct._GtkWindow* %3, i8* %4)
  ret void
}

declare void @gtk_window_set_title(%struct._GtkWindow*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

; Function Attrs: nounwind uwtable
define void @default_dialog_set_label(%struct.DefaultDialog_t* %dialog, i8* %text) #0 {
entry:
  %dialog.addr = alloca %struct.DefaultDialog_t*, align 8
  %text.addr = alloca i8*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  store %struct.DefaultDialog_t* %dialog, %struct.DefaultDialog_t** %dialog.addr, align 8
  store i8* %text, i8** %text.addr, align 8
  %0 = load i8*, i8** %text.addr, align 8
  %call = call %struct._GtkWidget* @gtk_label_new(i8* %0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %label, align 8
  %1 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog.addr, align 8
  %vbox = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %1, i32 0, i32 1
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_box_get_type() #3
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkBox*
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %4, %struct._GtkWidget* %5, i32 1, i32 1, i32 0)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %6)
  ret void
}

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @default_dialog_add_table(%struct.DefaultDialog_t* %dialog, i32 %rows, i32 %cols) #0 {
entry:
  %dialog.addr = alloca %struct.DefaultDialog_t*, align 8
  %rows.addr = alloca i32, align 4
  %cols.addr = alloca i32, align 4
  %table = alloca %struct._GtkWidget*, align 8
  store %struct.DefaultDialog_t* %dialog, %struct.DefaultDialog_t** %dialog.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %cols, i32* %cols.addr, align 4
  %0 = load i32, i32* %rows.addr, align 4
  %1 = load i32, i32* %cols.addr, align 4
  %call = call %struct._GtkWidget* @gtk_table_new(i32 %0, i32 %1, i32 0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %table, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_table_get_type() #3
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %4, i32 6)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_table_get_type() #3
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %7, i32 6)
  %8 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog.addr, align 8
  %vbox = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %8, i32 0, i32 1
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_box_get_type() #3
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkBox*
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %11, %struct._GtkWidget* %12, i32 1, i32 1, i32 0)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %13)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  ret %struct._GtkWidget* %14
}

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
