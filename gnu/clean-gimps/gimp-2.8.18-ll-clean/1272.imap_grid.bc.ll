; ModuleID = './plug-ins/imagemap/imap_grid.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GridDialog_t = type { %struct.DefaultDialog_t*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32 }
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
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkSpinButton = type { %struct._GtkEntry, %struct._GtkAdjustment*, %struct._GdkDrawable*, i32, double, double, i32, i24 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkRadioButton = type { %struct._GtkCheckButton, %struct._GSList* }
%struct._GtkCheckButton = type { %struct._GtkToggleButton }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._cairo = type opaque
%struct._GimpChainButton = type { %struct._GtkTable, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }

@do_grid_settings_dialog.dialog = internal global %struct.GridDialog_t* null, align 8
@grid_snap = internal global i32 0, align 4
@grid_width = internal global i32 15, align 4
@grid_height = internal global i32 15, align 4
@grid_left = internal global i32 0, align 4
@grid_top = internal global i32 0, align 4
@grid_type = internal global i32 1, align 4
@.str = private unnamed_addr constant [14 x i8] c"Grid Settings\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"_Snap-to grid enabled\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Grid Visibility and Type\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"_Hidden\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"_Lines\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"C_rosses\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Grid Granularity\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"_Width\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"pixels\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"_Height\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"Grid Offset\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"pixels from l_eft\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"pixels from _top\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"_Preview\00", align 1

; Function Attrs: nounwind uwtable
define void @do_grid_settings_dialog() #0 {
entry:
  %type = alloca %struct._GtkWidget*, align 8
  %0 = load %struct.GridDialog_t*, %struct.GridDialog_t** @do_grid_settings_dialog.dialog, align 8
  %tobool = icmp ne %struct.GridDialog_t* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct.GridDialog_t* @create_grid_settings_dialog()
  store %struct.GridDialog_t* %call, %struct.GridDialog_t** @do_grid_settings_dialog.dialog, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.GridDialog_t*, %struct.GridDialog_t** @do_grid_settings_dialog.dialog, align 8
  %snap = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %1, i32 0, i32 4
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %snap, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_toggle_button_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkToggleButton*
  %5 = load i32, i32* @grid_snap, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %4, i32 %5)
  %6 = load %struct.GridDialog_t*, %struct.GridDialog_t** @do_grid_settings_dialog.dialog, align 8
  %width = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %6, i32 0, i32 5
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_spin_button_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call3)
  %9 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkSpinButton*
  %10 = load i32, i32* @grid_width, align 4
  %conv = sitofp i32 %10 to double
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %9, double %conv)
  %11 = load %struct.GridDialog_t*, %struct.GridDialog_t** @do_grid_settings_dialog.dialog, align 8
  %height = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %11, i32 0, i32 6
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %height, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_spin_button_get_type() #4
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call5)
  %14 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkSpinButton*
  %15 = load i32, i32* @grid_height, align 4
  %conv7 = sitofp i32 %15 to double
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %14, double %conv7)
  %16 = load %struct.GridDialog_t*, %struct.GridDialog_t** @do_grid_settings_dialog.dialog, align 8
  %left = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %16, i32 0, i32 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %left, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_spin_button_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call8)
  %19 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkSpinButton*
  %20 = load i32, i32* @grid_left, align 4
  %conv10 = sitofp i32 %20 to double
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %19, double %conv10)
  %21 = load %struct.GridDialog_t*, %struct.GridDialog_t** @do_grid_settings_dialog.dialog, align 8
  %top = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %21, i32 0, i32 9
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %top, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_spin_button_get_type() #4
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call11)
  %24 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkSpinButton*
  %25 = load i32, i32* @grid_top, align 4
  %conv13 = sitofp i32 %25 to double
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %24, double %conv13)
  %26 = load i32, i32* @grid_type, align 4
  %cmp = icmp eq i32 %26, 0
  br i1 %cmp, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end
  %27 = load %struct.GridDialog_t*, %struct.GridDialog_t** @do_grid_settings_dialog.dialog, align 8
  %hidden = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %27, i32 0, i32 11
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %hidden, align 8
  store %struct._GtkWidget* %28, %struct._GtkWidget** %type, align 8
  br label %if.end.21

if.else:                                          ; preds = %if.end
  %29 = load i32, i32* @grid_type, align 4
  %cmp16 = icmp eq i32 %29, 1
  br i1 %cmp16, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.else
  %30 = load %struct.GridDialog_t*, %struct.GridDialog_t** @do_grid_settings_dialog.dialog, align 8
  %lines = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %30, i32 0, i32 12
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %lines, align 8
  store %struct._GtkWidget* %31, %struct._GtkWidget** %type, align 8
  br label %if.end.20

if.else.19:                                       ; preds = %if.else
  %32 = load %struct.GridDialog_t*, %struct.GridDialog_t** @do_grid_settings_dialog.dialog, align 8
  %crosses = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %32, i32 0, i32 13
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %crosses, align 8
  store %struct._GtkWidget* %33, %struct._GtkWidget** %type, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.19, %if.then.18
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.15
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %type, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_toggle_button_get_type() #4
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call22)
  %36 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %36, i32 1)
  %37 = load %struct.GridDialog_t*, %struct.GridDialog_t** @do_grid_settings_dialog.dialog, align 8
  %dialog = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %37, i32 0, i32 0
  %38 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog, align 8
  call void @default_dialog_show(%struct.DefaultDialog_t* %38)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.GridDialog_t* @create_grid_settings_dialog() #0 {
entry:
  %data = alloca %struct.GridDialog_t*, align 8
  %dialog = alloca %struct.DefaultDialog_t*, align 8
  %main_table = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %chain_button = alloca %struct._GtkWidget*, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 128)
  %0 = bitcast i8* %call to %struct.GridDialog_t*
  store %struct.GridDialog_t* %0, %struct.GridDialog_t** %data, align 8
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)) #5
  %call2 = call %struct.DefaultDialog_t* @make_default_dialog(i8* %call1)
  store %struct.DefaultDialog_t* %call2, %struct.DefaultDialog_t** %dialog, align 8
  %1 = load %struct.GridDialog_t*, %struct.GridDialog_t** %data, align 8
  %dialog3 = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %1, i32 0, i32 0
  store %struct.DefaultDialog_t* %call2, %struct.DefaultDialog_t** %dialog3, align 8
  %2 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog, align 8
  %3 = load %struct.GridDialog_t*, %struct.GridDialog_t** %data, align 8
  %4 = bitcast %struct.GridDialog_t* %3 to i8*
  call void @default_dialog_set_ok_cb(%struct.DefaultDialog_t* %2, void (i8*)* @grid_settings_ok_cb, i8* %4)
  %5 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog, align 8
  %call4 = call %struct._GtkWidget* @default_dialog_add_table(%struct.DefaultDialog_t* %5, i32 4, i32 2)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %main_table, align 8
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0)) #5
  %call6 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call5)
  %6 = load %struct.GridDialog_t*, %struct.GridDialog_t** %data, align 8
  %snap = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %6, i32 0, i32 4
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %snap, align 8
  %7 = load %struct.GridDialog_t*, %struct.GridDialog_t** %data, align 8
  %snap7 = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %7, i32 0, i32 4
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %snap7, align 8
  %9 = bitcast %struct._GtkWidget* %8 to i8*
  %10 = load %struct.GridDialog_t*, %struct.GridDialog_t** %data, align 8
  %11 = bitcast %struct.GridDialog_t* %10 to i8*
  %call8 = call i64 @g_signal_connect_data(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @snap_toggled_cb to void ()*), i8* %11, void (i8*, %struct._GClosure*)* null, i32 0)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %main_table, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_table_get_type() #4
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call9)
  %14 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkTable*
  %15 = load %struct.GridDialog_t*, %struct.GridDialog_t** %data, align 8
  %snap11 = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %15, i32 0, i32 4
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %snap11, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %14, %struct._GtkWidget* %16, i32 0, i32 1, i32 0, i32 1)
  %17 = load %struct.GridDialog_t*, %struct.GridDialog_t** %data, align 8
  %snap12 = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %17, i32 0, i32 4
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %snap12, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %18)
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0)) #5
  %call14 = call %struct._GtkWidget* @gimp_frame_new(i8* %call13)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %frame, align 8
  %19 = load %struct.GridDialog_t*, %struct.GridDialog_t** %data, align 8
  %type_frame = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %19, i32 0, i32 1
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %type_frame, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %main_table, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_table_get_type() #4
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call15)
  %23 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkTable*
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %23, %struct._GtkWidget* %24, i32 0, i32 2, i32 1, i32 2)
  %call17 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %hbox, align 8
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_container_get_type() #4
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call18)
  %27 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkContainer*
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %27, %struct._GtkWidget* %28)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %29)
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0)) #5
  %call21 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic_from_widget(%struct._GtkRadioButton* null, i8* %call20)
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %button, align 8
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %31 = load %struct.GridDialog_t*, %struct.GridDialog_t** %data, align 8
  %hidden = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %31, i32 0, i32 11
  store %struct._GtkWidget* %30, %struct._GtkWidget** %hidden, align 8
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %33 = bitcast %struct._GtkWidget* %32 to i8*
  %call22 = call i64 @g_signal_connect_data(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @type_toggled_cb to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #4
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call23)
  %36 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %36, %struct._GtkWidget* %37, i32 0, i32 0, i32 0)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %38)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_radio_button_get_type() #4
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call25)
  %41 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkRadioButton*
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)) #5
  %call28 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic_from_widget(%struct._GtkRadioButton* %41, i8* %call27)
  store %struct._GtkWidget* %call28, %struct._GtkWidget** %button, align 8
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %43 = load %struct.GridDialog_t*, %struct.GridDialog_t** %data, align 8
  %lines = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %43, i32 0, i32 12
  store %struct._GtkWidget* %42, %struct._GtkWidget** %lines, align 8
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %45 = bitcast %struct._GtkWidget* %44 to i8*
  %call29 = call i64 @g_signal_connect_data(i8* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @type_toggled_cb to void ()*), i8* inttoptr (i64 1 to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_toggle_button_get_type() #4
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call30)
  %48 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %48, i32 1)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_box_get_type() #4
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call32)
  %51 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkBox*
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %51, %struct._GtkWidget* %52, i32 0, i32 0, i32 0)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %53)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %55 = bitcast %struct._GtkWidget* %54 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_radio_button_get_type() #4
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call34)
  %56 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkRadioButton*
  %call36 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0)) #5
  %call37 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic_from_widget(%struct._GtkRadioButton* %56, i8* %call36)
  store %struct._GtkWidget* %call37, %struct._GtkWidget** %button, align 8
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %58 = load %struct.GridDialog_t*, %struct.GridDialog_t** %data, align 8
  %crosses = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %58, i32 0, i32 13
  store %struct._GtkWidget* %57, %struct._GtkWidget** %crosses, align 8
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %60 = bitcast %struct._GtkWidget* %59 to i8*
  %call38 = call i64 @g_signal_connect_data(i8* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @type_toggled_cb to void ()*), i8* inttoptr (i64 2 to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_box_get_type() #4
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call39)
  %63 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkBox*
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %63, %struct._GtkWidget* %64, i32 0, i32 0, i32 0)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %65)
  %call41 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0)) #5
  %call42 = call %struct._GtkWidget* @gimp_frame_new(i8* %call41)
  store %struct._GtkWidget* %call42, %struct._GtkWidget** %frame, align 8
  %66 = load %struct.GridDialog_t*, %struct.GridDialog_t** %data, align 8
  %granularity_frame = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %66, i32 0, i32 2
  store %struct._GtkWidget* %call42, %struct._GtkWidget** %granularity_frame, align 8
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %main_table, align 8
  %68 = bitcast %struct._GtkWidget* %67 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_table_get_type() #4
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call43)
  %69 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkTable*
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %69, %struct._GtkWidget* %70, i32 0, i32 1, i32 2, i32 3)
  %call45 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 4, i32 0)
  store %struct._GtkWidget* %call45, %struct._GtkWidget** %table, align 8
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %72 = bitcast %struct._GtkWidget* %71 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_table_get_type() #4
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call46)
  %73 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %73, i32 6)
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %75 = bitcast %struct._GtkWidget* %74 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_table_get_type() #4
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call48)
  %76 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %76, i32 6)
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %78 = bitcast %struct._GtkWidget* %77 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_container_get_type() #4
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call50)
  %79 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkContainer*
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %79, %struct._GtkWidget* %80)
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call52 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0)) #5
  %call53 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %81, i32 0, i32 0, i8* %call52)
  store %struct._GtkWidget* %call53, %struct._GtkWidget** %label, align 8
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call54 = call %struct._GtkWidget* @create_spin_button_in_table(%struct._GtkWidget* %82, %struct._GtkWidget* %83, i32 0, i32 1, i32 15, i32 1, i32 100)
  %84 = load %struct.GridDialog_t*, %struct.GridDialog_t** %data, align 8
  %width = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %84, i32 0, i32 5
  store %struct._GtkWidget* %call54, %struct._GtkWidget** %width, align 8
  %85 = load %struct.GridDialog_t*, %struct.GridDialog_t** %data, align 8
  %width55 = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %85, i32 0, i32 5
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %width55, align 8
  %87 = bitcast %struct._GtkWidget* %86 to i8*
  %88 = load %struct.GridDialog_t*, %struct.GridDialog_t** %data, align 8
  %89 = bitcast %struct.GridDialog_t* %88 to i8*
  %call56 = call i64 @g_signal_connect_data(i8* %87, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @width_changed_cb to void ()*), i8* %89, void (i8*, %struct._GClosure*)* null, i32 0)
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call57 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)) #5
  %call58 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %90, i32 0, i32 3, i8* %call57)
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call59 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0)) #5
  %call60 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %91, i32 1, i32 0, i8* %call59)
  store %struct._GtkWidget* %call60, %struct._GtkWidget** %label, align 8
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call61 = call %struct._GtkWidget* @create_spin_button_in_table(%struct._GtkWidget* %92, %struct._GtkWidget* %93, i32 1, i32 1, i32 15, i32 1, i32 100)
  %94 = load %struct.GridDialog_t*, %struct.GridDialog_t** %data, align 8
  %height = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %94, i32 0, i32 6
  store %struct._GtkWidget* %call61, %struct._GtkWidget** %height, align 8
  %95 = load %struct.GridDialog_t*, %struct.GridDialog_t** %data, align 8
  %height62 = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %95, i32 0, i32 6
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %height62, align 8
  %97 = bitcast %struct._GtkWidget* %96 to i8*
  %98 = load %struct.GridDialog_t*, %struct.GridDialog_t** %data, align 8
  %99 = bitcast %struct.GridDialog_t* %98 to i8*
  %call63 = call i64 @g_signal_connect_data(i8* %97, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @height_changed_cb to void ()*), i8* %99, void (i8*, %struct._GClosure*)* null, i32 0)
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call64 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)) #5
  %call65 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %100, i32 1, i32 3, i8* %call64)
  %call66 = call %struct._GtkWidget* @gimp_chain_button_new(i32 3)
  store %struct._GtkWidget* %call66, %struct._GtkWidget** %chain_button, align 8
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %chain_button, align 8
  %102 = load %struct.GridDialog_t*, %struct.GridDialog_t** %data, align 8
  %chain_width_height = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %102, i32 0, i32 7
  store %struct._GtkWidget* %101, %struct._GtkWidget** %chain_width_height, align 8
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %104 = bitcast %struct._GtkWidget* %103 to %struct._GTypeInstance*
  %call67 = call i64 @gtk_table_get_type() #4
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %104, i64 %call67)
  %105 = bitcast %struct._GTypeInstance* %call68 to %struct._GtkTable*
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %chain_button, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %105, %struct._GtkWidget* %106, i32 2, i32 3, i32 0, i32 2)
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %chain_button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %107)
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %108)
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %109)
  %call69 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0)) #5
  %call70 = call %struct._GtkWidget* @gimp_frame_new(i8* %call69)
  store %struct._GtkWidget* %call70, %struct._GtkWidget** %frame, align 8
  %110 = load %struct.GridDialog_t*, %struct.GridDialog_t** %data, align 8
  %offset_frame = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %110, i32 0, i32 3
  store %struct._GtkWidget* %call70, %struct._GtkWidget** %offset_frame, align 8
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %main_table, align 8
  %112 = bitcast %struct._GtkWidget* %111 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_table_get_type() #4
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %112, i64 %call71)
  %113 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkTable*
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %113, %struct._GtkWidget* %114, i32 1, i32 2, i32 2, i32 3)
  %call73 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 3, i32 0)
  store %struct._GtkWidget* %call73, %struct._GtkWidget** %table, align 8
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %116 = bitcast %struct._GtkWidget* %115 to %struct._GTypeInstance*
  %call74 = call i64 @gtk_table_get_type() #4
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %116, i64 %call74)
  %117 = bitcast %struct._GTypeInstance* %call75 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %117, i32 6)
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %119 = bitcast %struct._GtkWidget* %118 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_table_get_type() #4
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %119, i64 %call76)
  %120 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %120, i32 6)
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %122 = bitcast %struct._GtkWidget* %121 to %struct._GTypeInstance*
  %call78 = call i64 @gtk_container_get_type() #4
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %122, i64 %call78)
  %123 = bitcast %struct._GTypeInstance* %call79 to %struct._GtkContainer*
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %123, %struct._GtkWidget* %124)
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call80 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0)) #5
  %call81 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %125, i32 0, i32 2, i8* %call80)
  store %struct._GtkWidget* %call81, %struct._GtkWidget** %label, align 8
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call82 = call %struct._GtkWidget* @create_spin_button_in_table(%struct._GtkWidget* %126, %struct._GtkWidget* %127, i32 0, i32 0, i32 0, i32 0, i32 100)
  %128 = load %struct.GridDialog_t*, %struct.GridDialog_t** %data, align 8
  %left = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %128, i32 0, i32 8
  store %struct._GtkWidget* %call82, %struct._GtkWidget** %left, align 8
  %129 = load %struct.GridDialog_t*, %struct.GridDialog_t** %data, align 8
  %left83 = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %129, i32 0, i32 8
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %left83, align 8
  %131 = bitcast %struct._GtkWidget* %130 to i8*
  %132 = load %struct.GridDialog_t*, %struct.GridDialog_t** %data, align 8
  %133 = bitcast %struct.GridDialog_t* %132 to i8*
  %call84 = call i64 @g_signal_connect_data(i8* %131, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @left_changed_cb to void ()*), i8* %133, void (i8*, %struct._GClosure*)* null, i32 0)
  %134 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call85 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0)) #5
  %call86 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %134, i32 1, i32 2, i8* %call85)
  store %struct._GtkWidget* %call86, %struct._GtkWidget** %label, align 8
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call87 = call %struct._GtkWidget* @create_spin_button_in_table(%struct._GtkWidget* %135, %struct._GtkWidget* %136, i32 1, i32 0, i32 0, i32 0, i32 100)
  %137 = load %struct.GridDialog_t*, %struct.GridDialog_t** %data, align 8
  %top = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %137, i32 0, i32 9
  store %struct._GtkWidget* %call87, %struct._GtkWidget** %top, align 8
  %138 = load %struct.GridDialog_t*, %struct.GridDialog_t** %data, align 8
  %top88 = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %138, i32 0, i32 9
  %139 = load %struct._GtkWidget*, %struct._GtkWidget** %top88, align 8
  %140 = bitcast %struct._GtkWidget* %139 to i8*
  %141 = load %struct.GridDialog_t*, %struct.GridDialog_t** %data, align 8
  %142 = bitcast %struct.GridDialog_t* %141 to i8*
  %call89 = call i64 @g_signal_connect_data(i8* %140, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @top_changed_cb to void ()*), i8* %142, void (i8*, %struct._GClosure*)* null, i32 0)
  %call90 = call %struct._GtkWidget* @gimp_chain_button_new(i32 3)
  store %struct._GtkWidget* %call90, %struct._GtkWidget** %chain_button, align 8
  %143 = load %struct._GtkWidget*, %struct._GtkWidget** %chain_button, align 8
  %144 = load %struct.GridDialog_t*, %struct.GridDialog_t** %data, align 8
  %chain_left_top = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %144, i32 0, i32 10
  store %struct._GtkWidget* %143, %struct._GtkWidget** %chain_left_top, align 8
  %145 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %146 = bitcast %struct._GtkWidget* %145 to %struct._GTypeInstance*
  %call91 = call i64 @gtk_table_get_type() #4
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %146, i64 %call91)
  %147 = bitcast %struct._GTypeInstance* %call92 to %struct._GtkTable*
  %148 = load %struct._GtkWidget*, %struct._GtkWidget** %chain_button, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %147, %struct._GtkWidget* %148, i32 1, i32 2, i32 0, i32 2)
  %149 = load %struct._GtkWidget*, %struct._GtkWidget** %chain_button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %149)
  %150 = load %struct._GtkWidget*, %struct._GtkWidget** %main_table, align 8
  %call93 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0)) #5
  %call94 = call %struct._GtkWidget* @create_check_button_in_table(%struct._GtkWidget* %150, i32 3, i32 0, i8* %call93)
  %151 = load %struct.GridDialog_t*, %struct.GridDialog_t** %data, align 8
  %preview = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %151, i32 0, i32 14
  store %struct._GtkWidget* %call94, %struct._GtkWidget** %preview, align 8
  %152 = load %struct.GridDialog_t*, %struct.GridDialog_t** %data, align 8
  %preview95 = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %152, i32 0, i32 14
  %153 = load %struct._GtkWidget*, %struct._GtkWidget** %preview95, align 8
  %154 = bitcast %struct._GtkWidget* %153 to i8*
  %155 = load %struct.GridDialog_t*, %struct.GridDialog_t** %data, align 8
  %156 = bitcast %struct.GridDialog_t* %155 to i8*
  %call96 = call i64 @g_signal_connect_data(i8* %154, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.GridDialog_t*)* @toggle_preview_cb to void ()*), i8* %156, void (i8*, %struct._GClosure*)* null, i32 0)
  %157 = load %struct.GridDialog_t*, %struct.GridDialog_t** %data, align 8
  %preview97 = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %157, i32 0, i32 14
  %158 = load %struct._GtkWidget*, %struct._GtkWidget** %preview97, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %158)
  %159 = load %struct.GridDialog_t*, %struct.GridDialog_t** %data, align 8
  %snap98 = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %159, i32 0, i32 4
  %160 = load %struct._GtkWidget*, %struct._GtkWidget** %snap98, align 8
  %161 = load %struct.GridDialog_t*, %struct.GridDialog_t** %data, align 8
  %162 = bitcast %struct.GridDialog_t* %161 to i8*
  call void @snap_toggled_cb(%struct._GtkWidget* %160, i8* %162)
  %163 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %163)
  %164 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %164)
  %165 = load %struct.GridDialog_t*, %struct.GridDialog_t** %data, align 8
  ret %struct.GridDialog_t* %165
}

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #2

declare void @gtk_spin_button_set_value(%struct._GtkSpinButton*, double) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_spin_button_get_type() #2

declare void @default_dialog_show(%struct.DefaultDialog_t*) #1

; Function Attrs: nounwind uwtable
define void @draw_grid(%struct._cairo* %cr, i32 %width, i32 %height) #0 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load i32, i32* @grid_snap, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.3

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @grid_type, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_save(%struct._cairo* %2)
  %3 = load i32, i32* @grid_type, align 4
  %cmp1 = icmp eq i32 %3, 1
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %4 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %5 = load i32, i32* %width.addr, align 4
  %6 = load i32, i32* %height.addr, align 4
  call void @draw_lines(%struct._cairo* %4, i32 %5, i32 %6)
  br label %if.end

if.else:                                          ; preds = %if.then
  %7 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %8 = load i32, i32* %width.addr, align 4
  %9 = load i32, i32* %height.addr, align 4
  call void @draw_crosses(%struct._cairo* %7, i32 %8, i32 %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  %10 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_restore(%struct._cairo* %10)
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %land.lhs.true, %entry
  ret void
}

declare void @cairo_save(%struct._cairo*) #1

; Function Attrs: nounwind uwtable
define internal void @draw_lines(%struct._cairo* %cr, i32 %width, i32 %height) #0 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %dash = alloca double, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store double 4.000000e+00, double* %dash, align 8
  %0 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_dash(%struct._cairo* %0, double* %dash, i32 1, double 0.000000e+00)
  %1 = load i32, i32* @grid_left, align 4
  %2 = load i32, i32* @grid_width, align 4
  %rem = srem i32 %1, %2
  store i32 %rem, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %x, align 4
  %4 = load i32, i32* %width.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %6 = load i32, i32* %x, align 4
  %7 = load i32, i32* %x, align 4
  %8 = load i32, i32* %height.addr, align 4
  call void @draw_line(%struct._cairo* %5, i32 %6, i32 1, i32 %7, i32 %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* @grid_width, align 4
  %10 = load i32, i32* %x, align 4
  %add = add nsw i32 %10, %9
  store i32 %add, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* @grid_top, align 4
  %12 = load i32, i32* @grid_height, align 4
  %rem1 = srem i32 %11, %12
  store i32 %rem1, i32* %y, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.5, %for.end
  %13 = load i32, i32* %y, align 4
  %14 = load i32, i32* %height.addr, align 4
  %cmp3 = icmp slt i32 %13, %14
  br i1 %cmp3, label %for.body.4, label %for.end.7

for.body.4:                                       ; preds = %for.cond.2
  %15 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %16 = load i32, i32* %y, align 4
  %17 = load i32, i32* %width.addr, align 4
  %18 = load i32, i32* %y, align 4
  call void @draw_line(%struct._cairo* %15, i32 1, i32 %16, i32 %17, i32 %18)
  br label %for.inc.5

for.inc.5:                                        ; preds = %for.body.4
  %19 = load i32, i32* @grid_height, align 4
  %20 = load i32, i32* %y, align 4
  %add6 = add nsw i32 %20, %19
  store i32 %add6, i32* %y, align 4
  br label %for.cond.2

for.end.7:                                        ; preds = %for.cond.2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @draw_crosses(%struct._cairo* %cr, i32 %width, i32 %height) #0 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %dash = alloca [4 x double], align 16
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %arrayinit.begin = getelementptr inbounds [4 x double], [4 x double]* %dash, i64 0, i64 0
  store double 7.000000e+00, double* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds double, double* %arrayinit.begin, i64 1
  %0 = load i32, i32* @grid_height, align 4
  %conv = sitofp i32 %0 to double
  %sub = fsub double %conv, 7.000000e+00
  store double %sub, double* %arrayinit.element
  %arrayinit.element1 = getelementptr inbounds double, double* %arrayinit.element, i64 1
  store double 7.000000e+00, double* %arrayinit.element1
  %arrayinit.element2 = getelementptr inbounds double, double* %arrayinit.element1, i64 1
  %1 = load i32, i32* @grid_width, align 4
  %conv3 = sitofp i32 %1 to double
  %sub4 = fsub double %conv3, 7.000000e+00
  store double %sub4, double* %arrayinit.element2
  %2 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %arraydecay = getelementptr inbounds [4 x double], [4 x double]* %dash, i32 0, i32 0
  %3 = load i32, i32* @grid_top, align 4
  %conv5 = sitofp i32 %3 to double
  %sub6 = fsub double 4.500000e+00, %conv5
  call void @cairo_set_dash(%struct._cairo* %2, double* %arraydecay, i32 2, double %sub6)
  %4 = load i32, i32* @grid_left, align 4
  %5 = load i32, i32* @grid_width, align 4
  %rem = srem i32 %4, %5
  store i32 %rem, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %x, align 4
  %7 = load i32, i32* %width.addr, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %9 = load i32, i32* %x, align 4
  %10 = load i32, i32* %x, align 4
  %11 = load i32, i32* %height.addr, align 4
  call void @draw_line(%struct._cairo* %8, i32 %9, i32 1, i32 %10, i32 %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* @grid_width, align 4
  %13 = load i32, i32* %x, align 4
  %add = add nsw i32 %13, %12
  store i32 %add, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %arraydecay8 = getelementptr inbounds [4 x double], [4 x double]* %dash, i32 0, i32 0
  %add.ptr = getelementptr inbounds double, double* %arraydecay8, i64 2
  %15 = load i32, i32* @grid_left, align 4
  %conv9 = sitofp i32 %15 to double
  %sub10 = fsub double 4.500000e+00, %conv9
  call void @cairo_set_dash(%struct._cairo* %14, double* %add.ptr, i32 2, double %sub10)
  %16 = load i32, i32* @grid_top, align 4
  %17 = load i32, i32* @grid_height, align 4
  %rem11 = srem i32 %16, %17
  store i32 %rem11, i32* %y, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.16, %for.end
  %18 = load i32, i32* %y, align 4
  %19 = load i32, i32* %height.addr, align 4
  %cmp13 = icmp slt i32 %18, %19
  br i1 %cmp13, label %for.body.15, label %for.end.18

for.body.15:                                      ; preds = %for.cond.12
  %20 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %21 = load i32, i32* %y, align 4
  %22 = load i32, i32* %width.addr, align 4
  %23 = load i32, i32* %y, align 4
  call void @draw_line(%struct._cairo* %20, i32 1, i32 %21, i32 %22, i32 %23)
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.body.15
  %24 = load i32, i32* @grid_height, align 4
  %25 = load i32, i32* %y, align 4
  %add17 = add nsw i32 %25, %24
  store i32 %add17, i32* %y, align 4
  br label %for.cond.12

for.end.18:                                       ; preds = %for.cond.12
  ret void
}

declare void @cairo_restore(%struct._cairo*) #1

; Function Attrs: nounwind uwtable
define void @toggle_grid() #0 {
entry:
  %0 = load i32, i32* @grid_snap, align 4
  %tobool = icmp ne i32 %0, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* @grid_snap, align 4
  call void @preview_redraw()
  ret void
}

declare void @preview_redraw() #1

; Function Attrs: nounwind uwtable
define void @round_to_grid(i32* %x, i32* %y) #0 {
entry:
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  %0 = load i32, i32* @grid_snap, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %x.addr, align 8
  %2 = load i32, i32* %1, align 4
  %call = call i32 @grid_nearest_x(i32 %2)
  %3 = load i32*, i32** %x.addr, align 8
  store i32 %call, i32* %3, align 4
  %4 = load i32*, i32** %y.addr, align 8
  %5 = load i32, i32* %4, align 4
  %call1 = call i32 @grid_nearest_y(i32 %5)
  %6 = load i32*, i32** %y.addr, align 8
  store i32 %call1, i32* %6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @grid_nearest_x(i32 %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* @grid_left, align 4
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* @grid_left, align 4
  %sub = sub nsw i32 %1, %2
  %3 = load i32, i32* @grid_width, align 4
  %div = sdiv i32 %3, 2
  %add = add nsw i32 %sub, %div
  %4 = load i32, i32* @grid_width, align 4
  %div1 = sdiv i32 %add, %4
  %5 = load i32, i32* @grid_width, align 4
  %mul = mul nsw i32 %div1, %5
  %add2 = add nsw i32 %0, %mul
  ret i32 %add2
}

; Function Attrs: nounwind uwtable
define internal i32 @grid_nearest_y(i32 %y) #0 {
entry:
  %y.addr = alloca i32, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* @grid_top, align 4
  %1 = load i32, i32* %y.addr, align 4
  %2 = load i32, i32* @grid_top, align 4
  %sub = sub nsw i32 %1, %2
  %3 = load i32, i32* @grid_height, align 4
  %div = sdiv i32 %3, 2
  %add = add nsw i32 %sub, %div
  %4 = load i32, i32* @grid_height, align 4
  %div1 = sdiv i32 %add, %4
  %5 = load i32, i32* @grid_height, align 4
  %mul = mul nsw i32 %div1, %5
  %add2 = add nsw i32 %0, %mul
  ret i32 %add2
}

; Function Attrs: nounwind uwtable
define i32 @grid_near_x(i32 %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* @grid_snap, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @grid_type, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %2 = load i32, i32* %x.addr, align 4
  %call = call i32 @grid_nearest_x(i32 %2)
  %3 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 %call, %3
  %call1 = call i32 @abs(i32 %sub) #4
  %cmp2 = icmp sle i32 %call1, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %4 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp2, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #2

; Function Attrs: nounwind uwtable
define i32 @grid_near_y(i32 %y) #0 {
entry:
  %y.addr = alloca i32, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* @grid_snap, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @grid_type, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %2 = load i32, i32* %y.addr, align 4
  %call = call i32 @grid_nearest_x(i32 %2)
  %3 = load i32, i32* %y.addr, align 4
  %sub = sub nsw i32 %call, %3
  %call1 = call i32 @abs(i32 %sub) #4
  %cmp2 = icmp sle i32 %call1, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %4 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp2, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  ret i32 %land.ext
}

declare noalias i8* @g_malloc_n(i64, i64) #1

declare %struct.DefaultDialog_t* @make_default_dialog(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare void @default_dialog_set_ok_cb(%struct.DefaultDialog_t*, void (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @grid_settings_ok_cb(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %param = alloca %struct.GridDialog_t*, align 8
  %new_snap = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.GridDialog_t*
  store %struct.GridDialog_t* %1, %struct.GridDialog_t** %param, align 8
  %2 = load %struct.GridDialog_t*, %struct.GridDialog_t** %param, align 8
  %snap = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %2, i32 0, i32 4
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %snap, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %5)
  store i32 %call2, i32* %new_snap, align 4
  %6 = load %struct.GridDialog_t*, %struct.GridDialog_t** %param, align 8
  %width = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %6, i32 0, i32 5
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_spin_button_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call3)
  %9 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkSpinButton*
  %call5 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %9)
  store i32 %call5, i32* @grid_width, align 4
  %10 = load %struct.GridDialog_t*, %struct.GridDialog_t** %param, align 8
  %height = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %10, i32 0, i32 6
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %height, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_spin_button_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call6)
  %13 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkSpinButton*
  %call8 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %13)
  store i32 %call8, i32* @grid_height, align 4
  %14 = load %struct.GridDialog_t*, %struct.GridDialog_t** %param, align 8
  %left = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %14, i32 0, i32 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %left, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_spin_button_get_type() #4
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call9)
  %17 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkSpinButton*
  %call11 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %17)
  store i32 %call11, i32* @grid_left, align 4
  %18 = load %struct.GridDialog_t*, %struct.GridDialog_t** %param, align 8
  %top = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %18, i32 0, i32 9
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %top, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_spin_button_get_type() #4
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call12)
  %21 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkSpinButton*
  %call14 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %21)
  store i32 %call14, i32* @grid_top, align 4
  %22 = load i32, i32* @grid_snap, align 4
  %23 = load i32, i32* %new_snap, align 4
  %cmp = icmp ne i32 %22, %23
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %24 = load i32, i32* %new_snap, align 4
  store i32 %24, i32* @grid_snap, align 4
  %25 = load i32, i32* @grid_snap, align 4
  call void @menu_check_grid(i32 %25)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @preview_redraw()
  ret void
}

declare %struct._GtkWidget* @default_dialog_add_table(%struct.DefaultDialog_t*, i32, i32) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @snap_toggled_cb(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %param = alloca %struct.GridDialog_t*, align 8
  %sensitive = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.GridDialog_t*
  store %struct.GridDialog_t* %1, %struct.GridDialog_t** %param, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %4)
  store i32 %call2, i32* %sensitive, align 4
  %5 = load %struct.GridDialog_t*, %struct.GridDialog_t** %param, align 8
  %type_frame = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %5, i32 0, i32 1
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %type_frame, align 8
  %7 = load i32, i32* %sensitive, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %6, i32 %7)
  %8 = load %struct.GridDialog_t*, %struct.GridDialog_t** %param, align 8
  %granularity_frame = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %8, i32 0, i32 2
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %granularity_frame, align 8
  %10 = load i32, i32* %sensitive, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %9, i32 %10)
  %11 = load %struct.GridDialog_t*, %struct.GridDialog_t** %param, align 8
  %offset_frame = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %11, i32 0, i32 3
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %offset_frame, align 8
  %13 = load i32, i32* %sensitive, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %12, i32 %13)
  %14 = load %struct.GridDialog_t*, %struct.GridDialog_t** %param, align 8
  %preview = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %14, i32 0, i32 14
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %16 = load i32, i32* %sensitive, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %15, i32 %16)
  ret void
}

declare void @gtk_table_attach_defaults(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic_from_widget(%struct._GtkRadioButton*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @type_toggled_cb(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call i32 @gtk_widget_get_state(%struct._GtkWidget* %0)
  %and = and i32 %call, 3
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %data.addr, align 8
  %2 = ptrtoint i8* %1 to i64
  %conv = trunc i64 %2 to i32
  store i32 %conv, i32* @grid_type, align 4
  call void @preview_redraw()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_button_get_type() #2

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget*, i32, i32, i8*) #1

declare %struct._GtkWidget* @create_spin_button_in_table(%struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @width_changed_cb(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %dialog = alloca %struct.GridDialog_t*, align 8
  %value = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.GridDialog_t*
  store %struct.GridDialog_t* %1, %struct.GridDialog_t** %dialog, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = load i8*, i8** %data.addr, align 8
  call void @grid_assign_value(%struct._GtkWidget* %2, i8* %3, i32* @grid_width)
  %4 = load %struct.GridDialog_t*, %struct.GridDialog_t** %dialog, align 8
  %chain_width_height = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %4, i32 0, i32 7
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %chain_width_height, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call = call i64 @gimp_chain_button_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call)
  %7 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpChainButton*
  %call2 = call i32 @gimp_chain_button_get_active(%struct._GimpChainButton* %7)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_spin_button_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call3)
  %10 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkSpinButton*
  %call5 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %10)
  store i32 %call5, i32* %value, align 4
  %11 = load %struct.GridDialog_t*, %struct.GridDialog_t** %dialog, align 8
  %height = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %11, i32 0, i32 6
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %height, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_spin_button_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call6)
  %14 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkSpinButton*
  %15 = load i32, i32* %value, align 4
  %conv = sitofp i32 %15 to double
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %14, double %conv)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @height_changed_cb(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %dialog = alloca %struct.GridDialog_t*, align 8
  %value = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.GridDialog_t*
  store %struct.GridDialog_t* %1, %struct.GridDialog_t** %dialog, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = load i8*, i8** %data.addr, align 8
  call void @grid_assign_value(%struct._GtkWidget* %2, i8* %3, i32* @grid_height)
  %4 = load %struct.GridDialog_t*, %struct.GridDialog_t** %dialog, align 8
  %chain_width_height = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %4, i32 0, i32 7
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %chain_width_height, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call = call i64 @gimp_chain_button_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call)
  %7 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpChainButton*
  %call2 = call i32 @gimp_chain_button_get_active(%struct._GimpChainButton* %7)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_spin_button_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call3)
  %10 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkSpinButton*
  %call5 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %10)
  store i32 %call5, i32* %value, align 4
  %11 = load %struct.GridDialog_t*, %struct.GridDialog_t** %dialog, align 8
  %width = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %11, i32 0, i32 5
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_spin_button_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call6)
  %14 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkSpinButton*
  %15 = load i32, i32* %value, align 4
  %conv = sitofp i32 %15 to double
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %14, double %conv)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GtkWidget* @gimp_chain_button_new(i32) #1

; Function Attrs: nounwind uwtable
define internal void @left_changed_cb(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %dialog = alloca %struct.GridDialog_t*, align 8
  %value = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.GridDialog_t*
  store %struct.GridDialog_t* %1, %struct.GridDialog_t** %dialog, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = load i8*, i8** %data.addr, align 8
  call void @grid_assign_value(%struct._GtkWidget* %2, i8* %3, i32* @grid_left)
  %4 = load %struct.GridDialog_t*, %struct.GridDialog_t** %dialog, align 8
  %chain_left_top = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %4, i32 0, i32 10
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %chain_left_top, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call = call i64 @gimp_chain_button_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call)
  %7 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpChainButton*
  %call2 = call i32 @gimp_chain_button_get_active(%struct._GimpChainButton* %7)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_spin_button_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call3)
  %10 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkSpinButton*
  %call5 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %10)
  store i32 %call5, i32* %value, align 4
  %11 = load %struct.GridDialog_t*, %struct.GridDialog_t** %dialog, align 8
  %top = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %11, i32 0, i32 9
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %top, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_spin_button_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call6)
  %14 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkSpinButton*
  %15 = load i32, i32* %value, align 4
  %conv = sitofp i32 %15 to double
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %14, double %conv)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @top_changed_cb(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %dialog = alloca %struct.GridDialog_t*, align 8
  %value = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.GridDialog_t*
  store %struct.GridDialog_t* %1, %struct.GridDialog_t** %dialog, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = load i8*, i8** %data.addr, align 8
  call void @grid_assign_value(%struct._GtkWidget* %2, i8* %3, i32* @grid_top)
  %4 = load %struct.GridDialog_t*, %struct.GridDialog_t** %dialog, align 8
  %chain_left_top = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %4, i32 0, i32 10
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %chain_left_top, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call = call i64 @gimp_chain_button_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call)
  %7 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpChainButton*
  %call2 = call i32 @gimp_chain_button_get_active(%struct._GimpChainButton* %7)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_spin_button_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call3)
  %10 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkSpinButton*
  %call5 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %10)
  store i32 %call5, i32* %value, align 4
  %11 = load %struct.GridDialog_t*, %struct.GridDialog_t** %dialog, align 8
  %left = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %11, i32 0, i32 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %left, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_spin_button_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call6)
  %14 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkSpinButton*
  %15 = load i32, i32* %value, align 4
  %conv = sitofp i32 %15 to double
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %14, double %conv)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GtkWidget* @create_check_button_in_table(%struct._GtkWidget*, i32, i32, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @toggle_preview_cb(%struct._GtkWidget* %widget, %struct.GridDialog_t* %param) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %param.addr = alloca %struct.GridDialog_t*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.GridDialog_t* %param, %struct.GridDialog_t** %param.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %2)
  %3 = load %struct.GridDialog_t*, %struct.GridDialog_t** %param.addr, align 8
  %enable_preview = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %3, i32 0, i32 15
  store i32 %call2, i32* %enable_preview, align 4
  call void @preview_redraw()
  ret void
}

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

declare i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton*) #1

declare void @menu_check_grid(i32) #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare i32 @gtk_widget_get_state(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @grid_assign_value(%struct._GtkWidget* %widget, i8* %data, i32* %value) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %value.addr = alloca i32*, align 8
  %dialog = alloca %struct.GridDialog_t*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32* %value, i32** %value.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.GridDialog_t*
  store %struct.GridDialog_t* %1, %struct.GridDialog_t** %dialog, align 8
  %2 = load %struct.GridDialog_t*, %struct.GridDialog_t** %dialog, align 8
  %enable_preview = getelementptr inbounds %struct.GridDialog_t, %struct.GridDialog_t* %2, i32 0, i32 15
  %3 = load i32, i32* %enable_preview, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call = call i64 @gtk_spin_button_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call)
  %6 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkSpinButton*
  %call2 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %6)
  %7 = load i32*, i32** %value.addr, align 8
  store i32 %call2, i32* %7, align 4
  call void @preview_redraw()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @gimp_chain_button_get_active(%struct._GimpChainButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_chain_button_get_type() #2

declare void @cairo_set_dash(%struct._cairo*, double*, i32, double) #1

declare void @draw_line(%struct._cairo*, i32, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
