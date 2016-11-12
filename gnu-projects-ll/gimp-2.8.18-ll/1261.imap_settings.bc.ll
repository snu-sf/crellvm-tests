; ModuleID = './plug-ins/imagemap/imap_settings.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SettingsDialog_t = type { %struct.DefaultDialog_t*, %struct.BrowseWidget_t*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkTextBuffer* }
%struct.DefaultDialog_t = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, void (i8*)*, i8*, void (i8*)*, i8*, void (i8*)*, i8* }
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
%struct._GtkTextBuffer = type { %struct._GObject, %struct._GtkTextTagTable*, %struct._GtkTextBTree*, %struct._GSList*, %struct._GSList*, %struct._GtkTextLogAttrCache*, i32, i8 }
%struct._GtkTextTagTable = type { %struct._GObject, %struct._GHashTable*, %struct._GSList*, i32, %struct._GSList* }
%struct._GHashTable = type opaque
%struct._GtkTextBTree = type opaque
%struct._GtkTextLogAttrCache = type opaque
%struct.MapInfo_t = type { i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GtkRadioButton = type { %struct._GtkCheckButton, %struct._GSList* }
%struct._GtkCheckButton = type { %struct._GtkToggleButton }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkTextIter = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i8* }

@do_settings_dialog.dialog = internal global %struct.SettingsDialog_t* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"<Untitled>\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Settings for this Mapfile\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Filename:\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Image name:\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Select Image File\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"_Title:\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Aut_hor:\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Default _URL:\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"_Description:\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Map File Format\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"_NCSA\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"C_ERN\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"C_SIM\00", align 1
@_map_format = internal global i32 2, align 4

; Function Attrs: nounwind uwtable
define void @do_settings_dialog() #0 {
entry:
  %filename = alloca i8*, align 8
  %info = alloca %struct.MapInfo_t*, align 8
  %call = call i8* @get_filename()
  store i8* %call, i8** %filename, align 8
  %call1 = call %struct.MapInfo_t* @get_map_info()
  store %struct.MapInfo_t* %call1, %struct.MapInfo_t** %info, align 8
  %0 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** @do_settings_dialog.dialog, align 8
  %tobool = icmp ne %struct.SettingsDialog_t* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call %struct.SettingsDialog_t* @create_settings_dialog()
  store %struct.SettingsDialog_t* %call2, %struct.SettingsDialog_t** @do_settings_dialog.dialog, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** %filename, align 8
  %tobool3 = icmp ne i8* %1, null
  br i1 %tobool3, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0)) #4
  store i8* %call5, i8** %filename, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %2 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** @do_settings_dialog.dialog, align 8
  %filename7 = getelementptr inbounds %struct.SettingsDialog_t, %struct.SettingsDialog_t* %2, i32 0, i32 2
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %filename7, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_label_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call8)
  %5 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkLabel*
  %6 = load i8*, i8** %filename, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %5, i8* %6)
  %7 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** @do_settings_dialog.dialog, align 8
  %imagename = getelementptr inbounds %struct.SettingsDialog_t, %struct.SettingsDialog_t* %7, i32 0, i32 1
  %8 = load %struct.BrowseWidget_t*, %struct.BrowseWidget_t** %imagename, align 8
  %9 = load %struct.MapInfo_t*, %struct.MapInfo_t** %info, align 8
  %image_name = getelementptr inbounds %struct.MapInfo_t, %struct.MapInfo_t* %9, i32 0, i32 1
  %10 = load i8*, i8** %image_name, align 8
  call void @browse_widget_set_filename(%struct.BrowseWidget_t* %8, i8* %10)
  %11 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** @do_settings_dialog.dialog, align 8
  %title = getelementptr inbounds %struct.SettingsDialog_t, %struct.SettingsDialog_t* %11, i32 0, i32 3
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %title, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_entry_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call10)
  %14 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkEntry*
  %15 = load %struct.MapInfo_t*, %struct.MapInfo_t** %info, align 8
  %title12 = getelementptr inbounds %struct.MapInfo_t, %struct.MapInfo_t* %15, i32 0, i32 2
  %16 = load i8*, i8** %title12, align 8
  call void @gtk_entry_set_text(%struct._GtkEntry* %14, i8* %16)
  %17 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** @do_settings_dialog.dialog, align 8
  %author = getelementptr inbounds %struct.SettingsDialog_t, %struct.SettingsDialog_t* %17, i32 0, i32 4
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %author, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_entry_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call13)
  %20 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkEntry*
  %21 = load %struct.MapInfo_t*, %struct.MapInfo_t** %info, align 8
  %author15 = getelementptr inbounds %struct.MapInfo_t, %struct.MapInfo_t* %21, i32 0, i32 3
  %22 = load i8*, i8** %author15, align 8
  call void @gtk_entry_set_text(%struct._GtkEntry* %20, i8* %22)
  %23 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** @do_settings_dialog.dialog, align 8
  %default_url = getelementptr inbounds %struct.SettingsDialog_t, %struct.SettingsDialog_t* %23, i32 0, i32 5
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %default_url, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_entry_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call16)
  %26 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkEntry*
  %27 = load %struct.MapInfo_t*, %struct.MapInfo_t** %info, align 8
  %default_url18 = getelementptr inbounds %struct.MapInfo_t, %struct.MapInfo_t* %27, i32 0, i32 4
  %28 = load i8*, i8** %default_url18, align 8
  call void @gtk_entry_set_text(%struct._GtkEntry* %26, i8* %28)
  %29 = load %struct.MapInfo_t*, %struct.MapInfo_t** %info, align 8
  %map_format = getelementptr inbounds %struct.MapInfo_t, %struct.MapInfo_t* %29, i32 0, i32 0
  %30 = load i32, i32* %map_format, align 4
  %cmp = icmp eq i32 %30, 0
  br i1 %cmp, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.end.6
  %31 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** @do_settings_dialog.dialog, align 8
  %ncsa = getelementptr inbounds %struct.SettingsDialog_t, %struct.SettingsDialog_t* %31, i32 0, i32 6
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %ncsa, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_toggle_button_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call20)
  %34 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %34, i32 1)
  br label %if.end.31

if.else:                                          ; preds = %if.end.6
  %35 = load %struct.MapInfo_t*, %struct.MapInfo_t** %info, align 8
  %map_format22 = getelementptr inbounds %struct.MapInfo_t, %struct.MapInfo_t* %35, i32 0, i32 0
  %36 = load i32, i32* %map_format22, align 4
  %cmp23 = icmp eq i32 %36, 1
  br i1 %cmp23, label %if.then.24, label %if.else.27

if.then.24:                                       ; preds = %if.else
  %37 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** @do_settings_dialog.dialog, align 8
  %cern = getelementptr inbounds %struct.SettingsDialog_t, %struct.SettingsDialog_t* %37, i32 0, i32 7
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %cern, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_toggle_button_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call25)
  %40 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %40, i32 1)
  br label %if.end.30

if.else.27:                                       ; preds = %if.else
  %41 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** @do_settings_dialog.dialog, align 8
  %csim = getelementptr inbounds %struct.SettingsDialog_t, %struct.SettingsDialog_t* %41, i32 0, i32 8
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %csim, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_toggle_button_get_type() #5
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call28)
  %44 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %44, i32 1)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.24
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.19
  %45 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** @do_settings_dialog.dialog, align 8
  %imagename32 = getelementptr inbounds %struct.SettingsDialog_t, %struct.SettingsDialog_t* %45, i32 0, i32 1
  %46 = load %struct.BrowseWidget_t*, %struct.BrowseWidget_t** %imagename32, align 8
  %file = getelementptr inbounds %struct.BrowseWidget_t, %struct.BrowseWidget_t* %46, i32 0, i32 4
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %file, align 8
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %47)
  %48 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** @do_settings_dialog.dialog, align 8
  %dialog = getelementptr inbounds %struct.SettingsDialog_t, %struct.SettingsDialog_t* %48, i32 0, i32 0
  %49 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog, align 8
  call void @default_dialog_show(%struct.DefaultDialog_t* %49)
  %50 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** @do_settings_dialog.dialog, align 8
  %description = getelementptr inbounds %struct.SettingsDialog_t, %struct.SettingsDialog_t* %50, i32 0, i32 9
  %51 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %description, align 8
  %52 = load %struct.MapInfo_t*, %struct.MapInfo_t** %info, align 8
  %description33 = getelementptr inbounds %struct.MapInfo_t, %struct.MapInfo_t* %52, i32 0, i32 5
  %53 = load i8*, i8** %description33, align 8
  call void @gtk_text_buffer_set_text(%struct._GtkTextBuffer* %51, i8* %53, i32 -1)
  ret void
}

declare i8* @get_filename() #1

declare %struct.MapInfo_t* @get_map_info() #1

; Function Attrs: nounwind uwtable
define internal %struct.SettingsDialog_t* @create_settings_dialog() #0 {
entry:
  %data = alloca %struct.SettingsDialog_t*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %view = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %swin = alloca %struct._GtkWidget*, align 8
  %dialog = alloca %struct.DefaultDialog_t*, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 80)
  %0 = bitcast i8* %call to %struct.SettingsDialog_t*
  store %struct.SettingsDialog_t* %0, %struct.SettingsDialog_t** %data, align 8
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)) #4
  %call2 = call %struct.DefaultDialog_t* @make_default_dialog(i8* %call1)
  %1 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** %data, align 8
  %dialog3 = getelementptr inbounds %struct.SettingsDialog_t, %struct.SettingsDialog_t* %1, i32 0, i32 0
  store %struct.DefaultDialog_t* %call2, %struct.DefaultDialog_t** %dialog3, align 8
  store %struct.DefaultDialog_t* %call2, %struct.DefaultDialog_t** %dialog, align 8
  %2 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog, align 8
  %3 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** %data, align 8
  %4 = bitcast %struct.SettingsDialog_t* %3 to i8*
  call void @default_dialog_set_ok_cb(%struct.DefaultDialog_t* %2, void (i8*)* @settings_ok_cb, i8* %4)
  %5 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog, align 8
  %call4 = call %struct._GtkWidget* @default_dialog_add_table(%struct.DefaultDialog_t* %5, i32 9, i32 2)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %table, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0)) #4
  %call6 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %6, i32 0, i32 0, i8* %call5)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call7 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %7, i32 0, i32 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0))
  %8 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** %data, align 8
  %filename = getelementptr inbounds %struct.SettingsDialog_t, %struct.SettingsDialog_t* %8, i32 0, i32 2
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %filename, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0)) #4
  %call9 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %9, i32 1, i32 0, i8* %call8)
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0)) #4
  %call11 = call %struct.BrowseWidget_t* @browse_widget_new(i8* %call10)
  %10 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** %data, align 8
  %imagename = getelementptr inbounds %struct.SettingsDialog_t, %struct.SettingsDialog_t* %10, i32 0, i32 1
  store %struct.BrowseWidget_t* %call11, %struct.BrowseWidget_t** %imagename, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_table_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call12)
  %13 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkTable*
  %14 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** %data, align 8
  %imagename14 = getelementptr inbounds %struct.SettingsDialog_t, %struct.SettingsDialog_t* %14, i32 0, i32 1
  %15 = load %struct.BrowseWidget_t*, %struct.BrowseWidget_t** %imagename14, align 8
  %hbox15 = getelementptr inbounds %struct.BrowseWidget_t, %struct.BrowseWidget_t* %15, i32 0, i32 3
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox15, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %13, %struct._GtkWidget* %16, i32 1, i32 2, i32 1, i32 2)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0)) #4
  %call17 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %17, i32 2, i32 0, i8* %call16)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %label, align 8
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call18 = call %struct._GtkWidget* @create_entry_in_table(%struct._GtkWidget* %18, %struct._GtkWidget* %19, i32 2, i32 1)
  %20 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** %data, align 8
  %title = getelementptr inbounds %struct.SettingsDialog_t, %struct.SettingsDialog_t* %20, i32 0, i32 3
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %title, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0)) #4
  %call20 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %21, i32 3, i32 0, i8* %call19)
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %label, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call21 = call %struct._GtkWidget* @create_entry_in_table(%struct._GtkWidget* %22, %struct._GtkWidget* %23, i32 3, i32 1)
  %24 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** %data, align 8
  %author = getelementptr inbounds %struct.SettingsDialog_t, %struct.SettingsDialog_t* %24, i32 0, i32 4
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %author, align 8
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call22 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0)) #4
  %call23 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %25, i32 4, i32 0, i8* %call22)
  store %struct._GtkWidget* %call23, %struct._GtkWidget** %label, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call24 = call %struct._GtkWidget* @create_entry_in_table(%struct._GtkWidget* %26, %struct._GtkWidget* %27, i32 4, i32 1)
  %28 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** %data, align 8
  %default_url = getelementptr inbounds %struct.SettingsDialog_t, %struct.SettingsDialog_t* %28, i32 0, i32 5
  store %struct._GtkWidget* %call24, %struct._GtkWidget** %default_url, align 8
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0)) #4
  %call26 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %29, i32 5, i32 0, i8* %call25)
  store %struct._GtkWidget* %call26, %struct._GtkWidget** %label, align 8
  %call27 = call %struct._GtkTextBuffer* @gtk_text_buffer_new(%struct._GtkTextTagTable* null)
  %30 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** %data, align 8
  %description = getelementptr inbounds %struct.SettingsDialog_t, %struct.SettingsDialog_t* %30, i32 0, i32 9
  store %struct._GtkTextBuffer* %call27, %struct._GtkTextBuffer** %description, align 8
  %31 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** %data, align 8
  %description28 = getelementptr inbounds %struct.SettingsDialog_t, %struct.SettingsDialog_t* %31, i32 0, i32 9
  %32 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %description28, align 8
  %call29 = call %struct._GtkWidget* @gtk_text_view_new_with_buffer(%struct._GtkTextBuffer* %32)
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %view, align 8
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %33, i32 -1, i32 128)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %34)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_label_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call30)
  %37 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkLabel*
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %37, %struct._GtkWidget* %38)
  %call32 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call32, %struct._GtkWidget** %swin, align 8
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %swin, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_scrolled_window_get_type() #5
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call33)
  %41 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow* %41, i32 1)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_table_get_type() #5
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call35)
  %44 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkTable*
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %swin, align 8
  call void @gtk_table_attach(%struct._GtkTable* %44, %struct._GtkWidget* %45, i32 1, i32 2, i32 5, i32 8, i32 7, i32 7, i32 0, i32 0)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %swin, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_scrolled_window_get_type() #5
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call37)
  %48 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %48, i32 2, i32 1)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %swin, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %49)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %swin, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_container_get_type() #5
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call39)
  %52 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkContainer*
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_container_add(%struct._GtkContainer* %52, %struct._GtkWidget* %53)
  %call41 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0)) #4
  %call42 = call %struct._GtkWidget* @gimp_frame_new(i8* %call41)
  store %struct._GtkWidget* %call42, %struct._GtkWidget** %frame, align 8
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %54)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_table_get_type() #5
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call43)
  %57 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkTable*
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %57, %struct._GtkWidget* %58, i32 0, i32 2, i32 9, i32 10)
  %call45 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call45, %struct._GtkWidget** %hbox, align 8
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_container_get_type() #5
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call46)
  %61 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkContainer*
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %61, %struct._GtkWidget* %62)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %63)
  %call48 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic_from_widget(%struct._GtkRadioButton* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0))
  %64 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** %data, align 8
  %ncsa = getelementptr inbounds %struct.SettingsDialog_t, %struct.SettingsDialog_t* %64, i32 0, i32 6
  store %struct._GtkWidget* %call48, %struct._GtkWidget** %ncsa, align 8
  %65 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** %data, align 8
  %ncsa49 = getelementptr inbounds %struct.SettingsDialog_t, %struct.SettingsDialog_t* %65, i32 0, i32 6
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %ncsa49, align 8
  %67 = bitcast %struct._GtkWidget* %66 to i8*
  %call50 = call i64 @g_signal_connect_data(i8* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @type_toggled_cb to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_box_get_type() #5
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call51)
  %70 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkBox*
  %71 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** %data, align 8
  %ncsa53 = getelementptr inbounds %struct.SettingsDialog_t, %struct.SettingsDialog_t* %71, i32 0, i32 6
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %ncsa53, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %70, %struct._GtkWidget* %72, i32 0, i32 0, i32 0)
  %73 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** %data, align 8
  %ncsa54 = getelementptr inbounds %struct.SettingsDialog_t, %struct.SettingsDialog_t* %73, i32 0, i32 6
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %ncsa54, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %74)
  %75 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** %data, align 8
  %ncsa55 = getelementptr inbounds %struct.SettingsDialog_t, %struct.SettingsDialog_t* %75, i32 0, i32 6
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %ncsa55, align 8
  %77 = bitcast %struct._GtkWidget* %76 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_radio_button_get_type() #5
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call56)
  %78 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkRadioButton*
  %call58 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic_from_widget(%struct._GtkRadioButton* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0))
  %79 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** %data, align 8
  %cern = getelementptr inbounds %struct.SettingsDialog_t, %struct.SettingsDialog_t* %79, i32 0, i32 7
  store %struct._GtkWidget* %call58, %struct._GtkWidget** %cern, align 8
  %80 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** %data, align 8
  %cern59 = getelementptr inbounds %struct.SettingsDialog_t, %struct.SettingsDialog_t* %80, i32 0, i32 7
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %cern59, align 8
  %82 = bitcast %struct._GtkWidget* %81 to i8*
  %call60 = call i64 @g_signal_connect_data(i8* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @type_toggled_cb to void ()*), i8* inttoptr (i64 1 to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %84 = bitcast %struct._GtkWidget* %83 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_box_get_type() #5
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call61)
  %85 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkBox*
  %86 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** %data, align 8
  %cern63 = getelementptr inbounds %struct.SettingsDialog_t, %struct.SettingsDialog_t* %86, i32 0, i32 7
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %cern63, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %85, %struct._GtkWidget* %87, i32 0, i32 0, i32 0)
  %88 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** %data, align 8
  %cern64 = getelementptr inbounds %struct.SettingsDialog_t, %struct.SettingsDialog_t* %88, i32 0, i32 7
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %cern64, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %89)
  %90 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** %data, align 8
  %cern65 = getelementptr inbounds %struct.SettingsDialog_t, %struct.SettingsDialog_t* %90, i32 0, i32 7
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %cern65, align 8
  %92 = bitcast %struct._GtkWidget* %91 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_radio_button_get_type() #5
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call66)
  %93 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkRadioButton*
  %call68 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic_from_widget(%struct._GtkRadioButton* %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0))
  %94 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** %data, align 8
  %csim = getelementptr inbounds %struct.SettingsDialog_t, %struct.SettingsDialog_t* %94, i32 0, i32 8
  store %struct._GtkWidget* %call68, %struct._GtkWidget** %csim, align 8
  %95 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** %data, align 8
  %csim69 = getelementptr inbounds %struct.SettingsDialog_t, %struct.SettingsDialog_t* %95, i32 0, i32 8
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %csim69, align 8
  %97 = bitcast %struct._GtkWidget* %96 to i8*
  %call70 = call i64 @g_signal_connect_data(i8* %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @type_toggled_cb to void ()*), i8* inttoptr (i64 2 to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %99 = bitcast %struct._GtkWidget* %98 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_box_get_type() #5
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %99, i64 %call71)
  %100 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkBox*
  %101 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** %data, align 8
  %csim73 = getelementptr inbounds %struct.SettingsDialog_t, %struct.SettingsDialog_t* %101, i32 0, i32 8
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %csim73, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %100, %struct._GtkWidget* %102, i32 0, i32 0, i32 0)
  %103 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** %data, align 8
  %csim74 = getelementptr inbounds %struct.SettingsDialog_t, %struct.SettingsDialog_t* %103, i32 0, i32 8
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %csim74, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %104)
  %105 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** %data, align 8
  ret %struct.SettingsDialog_t* %105
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @gtk_label_set_text(%struct._GtkLabel*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #3

declare void @browse_widget_set_filename(%struct.BrowseWidget_t*, i8*) #1

declare void @gtk_entry_set_text(%struct._GtkEntry*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #3

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare void @gtk_widget_grab_focus(%struct._GtkWidget*) #1

declare void @default_dialog_show(%struct.DefaultDialog_t*) #1

declare void @gtk_text_buffer_set_text(%struct._GtkTextBuffer*, i8*, i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare %struct.DefaultDialog_t* @make_default_dialog(i8*) #1

declare void @default_dialog_set_ok_cb(%struct.DefaultDialog_t*, void (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @settings_ok_cb(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %param = alloca %struct.SettingsDialog_t*, align 8
  %info = alloca %struct.MapInfo_t*, align 8
  %description = alloca i8*, align 8
  %start = alloca %struct._GtkTextIter, align 8
  %end = alloca %struct._GtkTextIter, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.SettingsDialog_t*
  store %struct.SettingsDialog_t* %1, %struct.SettingsDialog_t** %param, align 8
  %call = call %struct.MapInfo_t* @get_map_info()
  store %struct.MapInfo_t* %call, %struct.MapInfo_t** %info, align 8
  %2 = load %struct.MapInfo_t*, %struct.MapInfo_t** %info, align 8
  %image_name = getelementptr inbounds %struct.MapInfo_t, %struct.MapInfo_t* %2, i32 0, i32 1
  %3 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** %param, align 8
  %imagename = getelementptr inbounds %struct.SettingsDialog_t, %struct.SettingsDialog_t* %3, i32 0, i32 1
  %4 = load %struct.BrowseWidget_t*, %struct.BrowseWidget_t** %imagename, align 8
  %file = getelementptr inbounds %struct.BrowseWidget_t, %struct.BrowseWidget_t* %4, i32 0, i32 4
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %file, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_entry_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call1)
  %7 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkEntry*
  %call3 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %7)
  %call4 = call i8* @g_strreplace(i8** %image_name, i8* %call3)
  %8 = load %struct.MapInfo_t*, %struct.MapInfo_t** %info, align 8
  %title = getelementptr inbounds %struct.MapInfo_t, %struct.MapInfo_t* %8, i32 0, i32 2
  %9 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** %param, align 8
  %title5 = getelementptr inbounds %struct.SettingsDialog_t, %struct.SettingsDialog_t* %9, i32 0, i32 3
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %title5, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_entry_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call6)
  %12 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkEntry*
  %call8 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %12)
  %call9 = call i8* @g_strreplace(i8** %title, i8* %call8)
  %13 = load %struct.MapInfo_t*, %struct.MapInfo_t** %info, align 8
  %author = getelementptr inbounds %struct.MapInfo_t, %struct.MapInfo_t* %13, i32 0, i32 3
  %14 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** %param, align 8
  %author10 = getelementptr inbounds %struct.SettingsDialog_t, %struct.SettingsDialog_t* %14, i32 0, i32 4
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %author10, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_entry_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkEntry*
  %call13 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %17)
  %call14 = call i8* @g_strreplace(i8** %author, i8* %call13)
  %18 = load %struct.MapInfo_t*, %struct.MapInfo_t** %info, align 8
  %default_url = getelementptr inbounds %struct.MapInfo_t, %struct.MapInfo_t* %18, i32 0, i32 4
  %19 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** %param, align 8
  %default_url15 = getelementptr inbounds %struct.SettingsDialog_t, %struct.SettingsDialog_t* %19, i32 0, i32 5
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %default_url15, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_entry_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call16)
  %22 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkEntry*
  %call18 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %22)
  %call19 = call i8* @g_strreplace(i8** %default_url, i8* %call18)
  %23 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** %param, align 8
  %description20 = getelementptr inbounds %struct.SettingsDialog_t, %struct.SettingsDialog_t* %23, i32 0, i32 9
  %24 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %description20, align 8
  call void @gtk_text_buffer_get_bounds(%struct._GtkTextBuffer* %24, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end)
  %25 = load %struct.SettingsDialog_t*, %struct.SettingsDialog_t** %param, align 8
  %description21 = getelementptr inbounds %struct.SettingsDialog_t, %struct.SettingsDialog_t* %25, i32 0, i32 9
  %26 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %description21, align 8
  %call22 = call i8* @gtk_text_buffer_get_text(%struct._GtkTextBuffer* %26, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end, i32 0)
  store i8* %call22, i8** %description, align 8
  %27 = load %struct.MapInfo_t*, %struct.MapInfo_t** %info, align 8
  %description23 = getelementptr inbounds %struct.MapInfo_t, %struct.MapInfo_t* %27, i32 0, i32 5
  %28 = load i8*, i8** %description, align 8
  %call24 = call i8* @g_strreplace(i8** %description23, i8* %28)
  %29 = load i8*, i8** %description, align 8
  call void @g_free(i8* %29)
  %30 = load i32, i32* @_map_format, align 4
  %31 = load %struct.MapInfo_t*, %struct.MapInfo_t** %info, align 8
  %map_format = getelementptr inbounds %struct.MapInfo_t, %struct.MapInfo_t* %31, i32 0, i32 0
  store i32 %30, i32* %map_format, align 4
  ret void
}

declare %struct._GtkWidget* @default_dialog_add_table(%struct.DefaultDialog_t*, i32, i32) #1

declare %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget*, i32, i32, i8*) #1

declare %struct.BrowseWidget_t* @browse_widget_new(i8*) #1

declare void @gtk_table_attach_defaults(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare %struct._GtkWidget* @create_entry_in_table(%struct._GtkWidget*, %struct._GtkWidget*, i32, i32) #1

declare %struct._GtkTextBuffer* @gtk_text_buffer_new(%struct._GtkTextTagTable*) #1

declare %struct._GtkWidget* @gtk_text_view_new_with_buffer(%struct._GtkTextBuffer*) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment*, %struct._GtkAdjustment*) #1

declare void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #3

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow*, i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic_from_widget(%struct._GtkRadioButton*, i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

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
  %2 = ptrtoint i8* %1 to i32
  store i32 %2, i32* @_map_format, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_button_get_type() #3

declare i8* @g_strreplace(i8**, i8*) #1

declare i8* @gtk_entry_get_text(%struct._GtkEntry*) #1

declare void @gtk_text_buffer_get_bounds(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*) #1

declare i8* @gtk_text_buffer_get_text(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*, i32) #1

declare void @g_free(i8*) #1

declare i32 @gtk_widget_get_state(%struct._GtkWidget*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
