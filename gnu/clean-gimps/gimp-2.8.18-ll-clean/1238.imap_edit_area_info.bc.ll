; ModuleID = './plug-ins/imagemap/imap_edit_area_info.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.Object_t = type { %struct.ObjectClass_t*, %struct.ObjectList_t*, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.ObjectClass_t = type { i8*, %struct.AreaInfoDialog_t*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32 (%struct.Object_t*)*, void (%struct.Object_t*)*, %struct.Object_t* (%struct.Object_t*)*, void (%struct.Object_t*, %struct.Object_t*)*, void (%struct.Object_t*)*, void (%struct.Object_t*, %struct._cairo*)*, void (%struct.Object_t*, %struct._cairo*)*, void (%struct.Object_t*, i32, i32)* (%struct.Object_t*, i32, i32)*, i32 (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32*, i32*, i32*, i32*)*, void (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32, i32)*, i8* (%struct._GtkWidget*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, %struct._GdkEventButton*)*, i8* ()* }
%struct._cairo = type opaque
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct.ObjectList_t = type { %struct._GList*, i32, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.ObjectListCallback_t = type { %struct._GList* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct.Command_t = type { %struct.CommandClass_t*, %struct.CommandList_t*, i8*, i32 }
%struct.CommandClass_t = type { {}*, i32 (%struct.Command_t*)*, {}*, {}* }
%struct.CommandList_t = type { %struct.CommandList_t*, i32, %struct._GList*, %struct._GList*, %struct._GList*, %struct.CommandListCallback_t }
%struct.CommandListCallback_t = type { %struct._GList* }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct.BrowseWidget_t = type { i8*, i8* (i8*, i8*)*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkRadioButton = type { %struct._GtkCheckButton, %struct._GSList* }
%struct._GtkCheckButton = type { %struct._GtkToggleButton }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }

@.str = private unnamed_addr constant [14 x i8] c"Area Settings\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"switch-page\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Area #%d Settings\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Link Type\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"_Web Site\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"_Ftp Site\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"_Gopher\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Ot_her\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"F_ile\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"WAI_S\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Tel_net\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"e-_mail\00", align 1
@.str.13 = private unnamed_addr constant [55 x i8] c"_URL to activate when this area is clicked: (required)\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"Select HTML file\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"Relati_ve link\00", align 1
@.str.17 = private unnamed_addr constant [57 x i8] c"_Target frame name/ID: (optional - used for FRAMES only)\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"ALT te_xt: (optional)\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"gimp-web\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"_Link\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"http://\00", align 1
@callback_lock = internal global i32 0, align 4
@.str.22 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"ftp://\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"gopher://\00", align 1
@.str.25 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"file:/\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"wais://\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"telnet://\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"mailto:\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"Dimensions\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"Pre_view\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"o_nMouseover:\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"on_Mouseout:\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"on_Focus (HTML 4.0):\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"on_Blur (HTML 4.0):\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"imap-java\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"_JavaScript\00", align 1

; Function Attrs: nounwind uwtable
define %struct.AreaInfoDialog_t* @create_edit_area_info_dialog(%struct.Object_t* %obj) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %data = alloca %struct.AreaInfoDialog_t*, align 8
  %notebook = alloca %struct._GtkWidget*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 200)
  %0 = bitcast i8* %call to %struct.AreaInfoDialog_t*
  store %struct.AreaInfoDialog_t* %0, %struct.AreaInfoDialog_t** %data, align 8
  %1 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %data, align 8
  %geometry_lock = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %1, i32 0, i32 4
  store i32 0, i32* %geometry_lock, align 4
  %2 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %data, align 8
  %preview = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %2, i32 0, i32 5
  store i32 0, i32* %preview, align 4
  %3 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %4 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %data, align 8
  %obj1 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %4, i32 0, i32 1
  store %struct.Object_t* %3, %struct.Object_t** %obj1, align 8
  %5 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %data, align 8
  %browse = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %5, i32 0, i32 23
  store %struct._GtkWidget* null, %struct._GtkWidget** %browse, align 8
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)) #5
  %call3 = call %struct.DefaultDialog_t* @make_default_dialog(i8* %call2)
  %6 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %data, align 8
  %dialog = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %6, i32 0, i32 0
  store %struct.DefaultDialog_t* %call3, %struct.DefaultDialog_t** %dialog, align 8
  %7 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %data, align 8
  %dialog4 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %7, i32 0, i32 0
  %8 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog4, align 8
  %9 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %data, align 8
  %10 = bitcast %struct.AreaInfoDialog_t* %9 to i8*
  call void @default_dialog_set_ok_cb(%struct.DefaultDialog_t* %8, void (i8*)* @edit_area_ok_cb, i8* %10)
  %11 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %data, align 8
  %dialog5 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %11, i32 0, i32 0
  %12 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog5, align 8
  %13 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %data, align 8
  %14 = bitcast %struct.AreaInfoDialog_t* %13 to i8*
  call void @default_dialog_set_apply_cb(%struct.DefaultDialog_t* %12, void (i8*)* @edit_area_apply_cb, i8* %14)
  %15 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %data, align 8
  %dialog6 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %15, i32 0, i32 0
  %16 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog6, align 8
  %17 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %data, align 8
  %18 = bitcast %struct.AreaInfoDialog_t* %17 to i8*
  call void @default_dialog_set_cancel_cb(%struct.DefaultDialog_t* %16, void (i8*)* @edit_area_cancel_cb, i8* %18)
  %call7 = call %struct._GtkWidget* @gtk_notebook_new()
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %notebook, align 8
  %19 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %data, align 8
  %notebook8 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %19, i32 0, i32 6
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %notebook8, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %21 = bitcast %struct._GtkWidget* %20 to i8*
  %22 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %data, align 8
  %23 = bitcast %struct.AreaInfoDialog_t* %22 to i8*
  %call9 = call i64 @g_signal_connect_data(i8* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*, i32, i8*)* @switch_page to void ()*), i8* %23, void (i8*, %struct._GClosure*)* null, i32 1)
  %24 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %data, align 8
  %dialog10 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %24, i32 0, i32 0
  %25 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog10, align 8
  %vbox = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %25, i32 0, i32 1
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_box_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call11)
  %28 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkBox*
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %28, %struct._GtkWidget* %29, i32 1, i32 1, i32 0)
  %30 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %data, align 8
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @create_link_tab(%struct.AreaInfoDialog_t* %30, %struct._GtkWidget* %31)
  %32 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %data, align 8
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @create_info_tab(%struct.AreaInfoDialog_t* %32, %struct._GtkWidget* %33)
  %34 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %data, align 8
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @create_java_script_tab(%struct.AreaInfoDialog_t* %34, %struct._GtkWidget* %35)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %36)
  %37 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %data, align 8
  ret %struct.AreaInfoDialog_t* %37
}

declare noalias i8* @g_malloc_n(i64, i64) #1

declare %struct.DefaultDialog_t* @make_default_dialog(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @default_dialog_set_ok_cb(%struct.DefaultDialog_t*, void (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @edit_area_ok_cb(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %param = alloca %struct.AreaInfoDialog_t*, align 8
  %obj = alloca %struct.Object_t*, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.AreaInfoDialog_t*
  store %struct.AreaInfoDialog_t* %1, %struct.AreaInfoDialog_t** %param, align 8
  %2 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %param, align 8
  %obj1 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %2, i32 0, i32 1
  %3 = load %struct.Object_t*, %struct.Object_t** %obj1, align 8
  store %struct.Object_t* %3, %struct.Object_t** %obj, align 8
  %4 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %list = getelementptr inbounds %struct.Object_t, %struct.Object_t* %4, i32 0, i32 1
  %5 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list, align 8
  %6 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %param, align 8
  %geometry_cb_id = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %6, i32 0, i32 25
  %7 = load i8*, i8** %geometry_cb_id, align 8
  call void @object_list_remove_geometry_cb(%struct.ObjectList_t* %5, i8* %7)
  %8 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %param, align 8
  %add = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %8, i32 0, i32 3
  %9 = load i32, i32* %add, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %call = call %struct.Command_t* @edit_object_command_new(%struct.Object_t* %10)
  call void @command_list_add(%struct.Command_t* %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i8*, i8** %data.addr, align 8
  call void @edit_area_apply_cb(i8* %11)
  %12 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  call void @object_unlock(%struct.Object_t* %12)
  %13 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %param, align 8
  %clone = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %13, i32 0, i32 2
  %14 = load %struct.Object_t*, %struct.Object_t** %clone, align 8
  call void @object_unref(%struct.Object_t* %14)
  ret void
}

declare void @default_dialog_set_apply_cb(%struct.DefaultDialog_t*, void (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @edit_area_apply_cb(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %param = alloca %struct.AreaInfoDialog_t*, align 8
  %obj = alloca %struct.Object_t*, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.AreaInfoDialog_t*
  store %struct.AreaInfoDialog_t* %1, %struct.AreaInfoDialog_t** %param, align 8
  %2 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %param, align 8
  %obj1 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %2, i32 0, i32 1
  %3 = load %struct.Object_t*, %struct.Object_t** %obj1, align 8
  store %struct.Object_t* %3, %struct.Object_t** %obj, align 8
  %4 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %5 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %param, align 8
  %url = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %5, i32 0, i32 15
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %url, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call)
  %8 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkEntry*
  %call3 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %8)
  call void @object_set_url(%struct.Object_t* %4, i8* %call3)
  %9 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %10 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %param, align 8
  %target = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %10, i32 0, i32 17
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %target, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_entry_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call4)
  %13 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkEntry*
  %call6 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %13)
  call void @object_set_target(%struct.Object_t* %9, i8* %call6)
  %14 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %15 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %param, align 8
  %comment = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %15, i32 0, i32 18
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %comment, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_entry_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call7)
  %18 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkEntry*
  %call9 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %18)
  call void @object_set_comment(%struct.Object_t* %14, i8* %call9)
  %19 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %20 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %param, align 8
  %mouse_over = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %20, i32 0, i32 19
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %mouse_over, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_entry_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call10)
  %23 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkEntry*
  %call12 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %23)
  call void @object_set_mouse_over(%struct.Object_t* %19, i8* %call12)
  %24 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %25 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %param, align 8
  %mouse_out = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %25, i32 0, i32 20
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %mouse_out, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_entry_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call13)
  %28 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkEntry*
  %call15 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %28)
  call void @object_set_mouse_out(%struct.Object_t* %24, i8* %call15)
  %29 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %30 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %param, align 8
  %focus = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %30, i32 0, i32 21
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %focus, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_entry_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call16)
  %33 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkEntry*
  %call18 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %33)
  call void @object_set_focus(%struct.Object_t* %29, i8* %call18)
  %34 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %35 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %param, align 8
  %blur = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %35, i32 0, i32 22
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %blur, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_entry_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call19)
  %38 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkEntry*
  %call21 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %38)
  call void @object_set_blur(%struct.Object_t* %34, i8* %call21)
  %39 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %class = getelementptr inbounds %struct.Object_t, %struct.Object_t* %39, i32 0, i32 0
  %40 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class, align 8
  %update = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %40, i32 0, i32 20
  %41 = load void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)** %update, align 8
  %42 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %43 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %param, align 8
  %infotab = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %43, i32 0, i32 24
  %44 = load i8*, i8** %infotab, align 8
  call void %41(%struct.Object_t* %42, i8* %44)
  %45 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  call void @update_shape(%struct.Object_t* %45)
  %46 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %param, align 8
  %call22 = call i32 @object_was_changed(%struct.AreaInfoDialog_t* %46)
  %tobool = icmp ne i32 %call22, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @preview_redraw()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @default_dialog_set_cancel_cb(%struct.DefaultDialog_t*, void (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @edit_area_cancel_cb(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %dialog = alloca %struct.AreaInfoDialog_t*, align 8
  %obj = alloca %struct.Object_t*, align 8
  %changed = alloca i32, align 4
  %selected = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.AreaInfoDialog_t*
  store %struct.AreaInfoDialog_t* %1, %struct.AreaInfoDialog_t** %dialog, align 8
  %2 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog, align 8
  %obj1 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %2, i32 0, i32 1
  %3 = load %struct.Object_t*, %struct.Object_t** %obj1, align 8
  store %struct.Object_t* %3, %struct.Object_t** %obj, align 8
  %4 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog, align 8
  %call = call i32 @object_was_changed(%struct.AreaInfoDialog_t* %4)
  store i32 %call, i32* %changed, align 4
  %5 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %selected2 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %5, i32 0, i32 3
  %6 = load i32, i32* %selected2, align 4
  store i32 %6, i32* %selected, align 4
  %7 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %list = getelementptr inbounds %struct.Object_t, %struct.Object_t* %7, i32 0, i32 1
  %8 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list, align 8
  %9 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog, align 8
  %geometry_cb_id = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %9, i32 0, i32 25
  %10 = load i8*, i8** %geometry_cb_id, align 8
  call void @object_list_remove_geometry_cb(%struct.ObjectList_t* %8, i8* %10)
  %11 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  call void @object_unlock(%struct.Object_t* %11)
  %12 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog, align 8
  %clone = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %12, i32 0, i32 2
  %13 = load %struct.Object_t*, %struct.Object_t** %clone, align 8
  %14 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %call3 = call %struct.Object_t* @object_assign(%struct.Object_t* %13, %struct.Object_t* %14)
  %15 = load i32, i32* %selected, align 4
  %16 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %selected4 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %16, i32 0, i32 3
  store i32 %15, i32* %selected4, align 4
  %17 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog, align 8
  %clone5 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %17, i32 0, i32 2
  %18 = load %struct.Object_t*, %struct.Object_t** %clone5, align 8
  call void @object_unref(%struct.Object_t* %18)
  %19 = load i32, i32* %changed, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @preview_redraw()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GtkWidget* @gtk_notebook_new() #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @switch_page(%struct._GtkWidget* %widget, i8* %page, i32 %page_num, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %page.addr = alloca i8*, align 8
  %page_num.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %param = alloca %struct.AreaInfoDialog_t*, align 8
  %obj = alloca %struct.Object_t*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %page, i8** %page.addr, align 8
  store i32 %page_num, i32* %page_num.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.AreaInfoDialog_t*
  store %struct.AreaInfoDialog_t* %1, %struct.AreaInfoDialog_t** %param, align 8
  %2 = load i32, i32* %page_num.addr, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %param, align 8
  %url = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %3, i32 0, i32 15
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %url, align 8
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %4)
  br label %if.end.5

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %page_num.addr, align 4
  %cmp1 = icmp eq i32 %5, 1
  br i1 %cmp1, label %if.then.2, label %if.else.4

if.then.2:                                        ; preds = %if.else
  %6 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %param, align 8
  %obj3 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %6, i32 0, i32 1
  %7 = load %struct.Object_t*, %struct.Object_t** %obj3, align 8
  store %struct.Object_t* %7, %struct.Object_t** %obj, align 8
  %8 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %class = getelementptr inbounds %struct.Object_t, %struct.Object_t* %8, i32 0, i32 0
  %9 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class, align 8
  %set_initial_focus = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %9, i32 0, i32 19
  %10 = load void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)** %set_initial_focus, align 8
  %11 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %12 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %param, align 8
  %infotab = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %12, i32 0, i32 24
  %13 = load i8*, i8** %infotab, align 8
  call void %10(%struct.Object_t* %11, i8* %13)
  br label %if.end

if.else.4:                                        ; preds = %if.else
  %14 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %param, align 8
  %mouse_over = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %14, i32 0, i32 19
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %mouse_over, align 8
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %15)
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.2
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  ret void
}

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @create_link_tab(%struct.AreaInfoDialog_t* %dialog, %struct._GtkWidget* %notebook) #0 {
entry:
  %dialog.addr = alloca %struct.AreaInfoDialog_t*, align 8
  %notebook.addr = alloca %struct._GtkWidget*, align 8
  %browse = alloca %struct.BrowseWidget_t*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %subtable = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %group = alloca %struct._GSList*, align 8
  store %struct.AreaInfoDialog_t* %dialog, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  store %struct._GtkWidget* %notebook, %struct._GtkWidget** %notebook.addr, align 8
  %call = call %struct._GtkWidget* @gtk_table_new(i32 11, i32 1, i32 0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %table, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_container_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %2, i32 12)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_table_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %5, i32 6)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %6)
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0)) #5
  %call6 = call %struct._GtkWidget* @gimp_frame_new(i8* %call5)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %frame, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_table_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call7)
  %9 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkTable*
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %9, %struct._GtkWidget* %10, i32 0, i32 2, i32 0, i32 1)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %11)
  %call9 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 4, i32 0)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %subtable, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_container_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call10)
  %14 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkContainer*
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %subtable, align 8
  call void @gtk_container_add(%struct._GtkContainer* %14, %struct._GtkWidget* %15)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %subtable, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %16)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %subtable, align 8
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0)) #5
  %call13 = call %struct._GtkWidget* @create_radio_button_in_table(%struct._GtkWidget* %17, %struct._GSList* null, i32 0, i32 0, i8* %call12)
  %18 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %web_site = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %18, i32 0, i32 7
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %web_site, align 8
  %19 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %web_site14 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %19, i32 0, i32 7
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %web_site14, align 8
  %21 = bitcast %struct._GtkWidget* %20 to i8*
  %22 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %23 = bitcast %struct.AreaInfoDialog_t* %22 to i8*
  %call15 = call i64 @g_signal_connect_data(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.AreaInfoDialog_t*)* @select_web_cb to void ()*), i8* %23, void (i8*, %struct._GClosure*)* null, i32 0)
  %24 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %web_site16 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %24, i32 0, i32 7
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %web_site16, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_radio_button_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call17)
  %27 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkRadioButton*
  %call19 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %27)
  store %struct._GSList* %call19, %struct._GSList** %group, align 8
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %subtable, align 8
  %29 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0)) #5
  %call21 = call %struct._GtkWidget* @create_radio_button_in_table(%struct._GtkWidget* %28, %struct._GSList* %29, i32 0, i32 1, i8* %call20)
  %30 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %ftp_site = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %30, i32 0, i32 8
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %ftp_site, align 8
  %31 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %ftp_site22 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %31, i32 0, i32 8
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %ftp_site22, align 8
  %33 = bitcast %struct._GtkWidget* %32 to i8*
  %34 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %35 = bitcast %struct.AreaInfoDialog_t* %34 to i8*
  %call23 = call i64 @g_signal_connect_data(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.AreaInfoDialog_t*)* @select_ftp_cb to void ()*), i8* %35, void (i8*, %struct._GClosure*)* null, i32 0)
  %36 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %ftp_site24 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %36, i32 0, i32 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %ftp_site24, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_radio_button_get_type() #6
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call25)
  %39 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkRadioButton*
  %call27 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %39)
  store %struct._GSList* %call27, %struct._GSList** %group, align 8
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %subtable, align 8
  %41 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0)) #5
  %call29 = call %struct._GtkWidget* @create_radio_button_in_table(%struct._GtkWidget* %40, %struct._GSList* %41, i32 0, i32 2, i8* %call28)
  %42 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %gopher = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %42, i32 0, i32 9
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %gopher, align 8
  %43 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %gopher30 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %43, i32 0, i32 9
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %gopher30, align 8
  %45 = bitcast %struct._GtkWidget* %44 to i8*
  %46 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %47 = bitcast %struct.AreaInfoDialog_t* %46 to i8*
  %call31 = call i64 @g_signal_connect_data(i8* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.AreaInfoDialog_t*)* @select_gopher_cb to void ()*), i8* %47, void (i8*, %struct._GClosure*)* null, i32 0)
  %48 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %gopher32 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %48, i32 0, i32 9
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %gopher32, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_radio_button_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call33)
  %51 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkRadioButton*
  %call35 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %51)
  store %struct._GSList* %call35, %struct._GSList** %group, align 8
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %subtable, align 8
  %53 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call36 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0)) #5
  %call37 = call %struct._GtkWidget* @create_radio_button_in_table(%struct._GtkWidget* %52, %struct._GSList* %53, i32 0, i32 3, i8* %call36)
  %54 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %other = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %54, i32 0, i32 10
  store %struct._GtkWidget* %call37, %struct._GtkWidget** %other, align 8
  %55 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %other38 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %55, i32 0, i32 10
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %other38, align 8
  %57 = bitcast %struct._GtkWidget* %56 to i8*
  %58 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %59 = bitcast %struct.AreaInfoDialog_t* %58 to i8*
  %call39 = call i64 @g_signal_connect_data(i8* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.AreaInfoDialog_t*)* @select_other_cb to void ()*), i8* %59, void (i8*, %struct._GClosure*)* null, i32 0)
  %60 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %other40 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %60, i32 0, i32 10
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %other40, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_radio_button_get_type() #6
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call41)
  %63 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkRadioButton*
  %call43 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %63)
  store %struct._GSList* %call43, %struct._GSList** %group, align 8
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %subtable, align 8
  %65 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call44 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0)) #5
  %call45 = call %struct._GtkWidget* @create_radio_button_in_table(%struct._GtkWidget* %64, %struct._GSList* %65, i32 1, i32 0, i8* %call44)
  %66 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %file = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %66, i32 0, i32 11
  store %struct._GtkWidget* %call45, %struct._GtkWidget** %file, align 8
  %67 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %file46 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %67, i32 0, i32 11
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %file46, align 8
  %69 = bitcast %struct._GtkWidget* %68 to i8*
  %70 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %71 = bitcast %struct.AreaInfoDialog_t* %70 to i8*
  %call47 = call i64 @g_signal_connect_data(i8* %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.AreaInfoDialog_t*)* @select_file_cb to void ()*), i8* %71, void (i8*, %struct._GClosure*)* null, i32 0)
  %72 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %file48 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %72, i32 0, i32 11
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %file48, align 8
  %74 = bitcast %struct._GtkWidget* %73 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_radio_button_get_type() #6
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call49)
  %75 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkRadioButton*
  %call51 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %75)
  store %struct._GSList* %call51, %struct._GSList** %group, align 8
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %subtable, align 8
  %77 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call52 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0)) #5
  %call53 = call %struct._GtkWidget* @create_radio_button_in_table(%struct._GtkWidget* %76, %struct._GSList* %77, i32 1, i32 1, i8* %call52)
  %78 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %wais = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %78, i32 0, i32 12
  store %struct._GtkWidget* %call53, %struct._GtkWidget** %wais, align 8
  %79 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %wais54 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %79, i32 0, i32 12
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %wais54, align 8
  %81 = bitcast %struct._GtkWidget* %80 to i8*
  %82 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %83 = bitcast %struct.AreaInfoDialog_t* %82 to i8*
  %call55 = call i64 @g_signal_connect_data(i8* %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.AreaInfoDialog_t*)* @select_wais_cb to void ()*), i8* %83, void (i8*, %struct._GClosure*)* null, i32 0)
  %84 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %wais56 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %84, i32 0, i32 12
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %wais56, align 8
  %86 = bitcast %struct._GtkWidget* %85 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_radio_button_get_type() #6
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call57)
  %87 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkRadioButton*
  %call59 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %87)
  store %struct._GSList* %call59, %struct._GSList** %group, align 8
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %subtable, align 8
  %89 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call60 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0)) #5
  %call61 = call %struct._GtkWidget* @create_radio_button_in_table(%struct._GtkWidget* %88, %struct._GSList* %89, i32 1, i32 2, i8* %call60)
  %90 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %telnet = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %90, i32 0, i32 13
  store %struct._GtkWidget* %call61, %struct._GtkWidget** %telnet, align 8
  %91 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %telnet62 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %91, i32 0, i32 13
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %telnet62, align 8
  %93 = bitcast %struct._GtkWidget* %92 to i8*
  %94 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %95 = bitcast %struct.AreaInfoDialog_t* %94 to i8*
  %call63 = call i64 @g_signal_connect_data(i8* %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.AreaInfoDialog_t*)* @select_telnet_cb to void ()*), i8* %95, void (i8*, %struct._GClosure*)* null, i32 0)
  %96 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %telnet64 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %96, i32 0, i32 13
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %telnet64, align 8
  %98 = bitcast %struct._GtkWidget* %97 to %struct._GTypeInstance*
  %call65 = call i64 @gtk_radio_button_get_type() #6
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call65)
  %99 = bitcast %struct._GTypeInstance* %call66 to %struct._GtkRadioButton*
  %call67 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %99)
  store %struct._GSList* %call67, %struct._GSList** %group, align 8
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %subtable, align 8
  %101 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call68 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0)) #5
  %call69 = call %struct._GtkWidget* @create_radio_button_in_table(%struct._GtkWidget* %100, %struct._GSList* %101, i32 1, i32 3, i8* %call68)
  %102 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %email = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %102, i32 0, i32 14
  store %struct._GtkWidget* %call69, %struct._GtkWidget** %email, align 8
  %103 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %email70 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %103, i32 0, i32 14
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %email70, align 8
  %105 = bitcast %struct._GtkWidget* %104 to i8*
  %106 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %107 = bitcast %struct.AreaInfoDialog_t* %106 to i8*
  %call71 = call i64 @g_signal_connect_data(i8* %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.AreaInfoDialog_t*)* @select_email_cb to void ()*), i8* %107, void (i8*, %struct._GClosure*)* null, i32 0)
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call72 = call i8* @gettext(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.13, i32 0, i32 0)) #5
  %call73 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %108, i32 2, i32 0, i8* %call72)
  store %struct._GtkWidget* %call73, %struct._GtkWidget** %label, align 8
  %call74 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0)) #5
  %call75 = call %struct.BrowseWidget_t* @browse_widget_new(i8* %call74)
  store %struct.BrowseWidget_t* %call75, %struct.BrowseWidget_t** %browse, align 8
  %109 = load %struct.BrowseWidget_t*, %struct.BrowseWidget_t** %browse, align 8
  %110 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %111 = bitcast %struct.AreaInfoDialog_t* %110 to i8*
  call void @browse_widget_set_filter(%struct.BrowseWidget_t* %109, i8* (i8*, i8*)* @relative_filter, i8* %111)
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %113 = bitcast %struct._GtkWidget* %112 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_table_get_type() #6
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %113, i64 %call76)
  %114 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkTable*
  %115 = load %struct.BrowseWidget_t*, %struct.BrowseWidget_t** %browse, align 8
  %hbox = getelementptr inbounds %struct.BrowseWidget_t, %struct.BrowseWidget_t* %115, i32 0, i32 3
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %114, %struct._GtkWidget* %116, i32 0, i32 1, i32 3, i32 4)
  %117 = load %struct.BrowseWidget_t*, %struct.BrowseWidget_t** %browse, align 8
  %file78 = getelementptr inbounds %struct.BrowseWidget_t, %struct.BrowseWidget_t* %117, i32 0, i32 4
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %file78, align 8
  %119 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %url = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %119, i32 0, i32 15
  store %struct._GtkWidget* %118, %struct._GtkWidget** %url, align 8
  %120 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %url79 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %120, i32 0, i32 15
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %url79, align 8
  %122 = bitcast %struct._GtkWidget* %121 to i8*
  %123 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %124 = bitcast %struct.AreaInfoDialog_t* %123 to i8*
  %call80 = call i64 @g_signal_connect_data(i8* %122, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @url_changed to void ()*), i8* %124, void (i8*, %struct._GClosure*)* null, i32 0)
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %126 = bitcast %struct._GtkWidget* %125 to %struct._GTypeInstance*
  %call81 = call i64 @gtk_label_get_type() #6
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %126, i64 %call81)
  %127 = bitcast %struct._GTypeInstance* %call82 to %struct._GtkLabel*
  %128 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %url83 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %128, i32 0, i32 15
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %url83, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %127, %struct._GtkWidget* %129)
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call84 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0)) #5
  %call85 = call %struct._GtkWidget* @create_check_button_in_table(%struct._GtkWidget* %130, i32 4, i32 0, i8* %call84)
  %131 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %relative_link = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %131, i32 0, i32 16
  store %struct._GtkWidget* %call85, %struct._GtkWidget** %relative_link, align 8
  %132 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %relative_link86 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %132, i32 0, i32 16
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %relative_link86, align 8
  %134 = bitcast %struct._GtkWidget* %133 to %struct._GTypeInstance*
  %call87 = call i64 @gtk_toggle_button_get_type() #6
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %134, i64 %call87)
  %135 = bitcast %struct._GTypeInstance* %call88 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %135, i32 1)
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call89 = call i8* @gettext(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.17, i32 0, i32 0)) #5
  %call90 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %136, i32 6, i32 0, i8* %call89)
  store %struct._GtkWidget* %call90, %struct._GtkWidget** %label, align 8
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call91 = call %struct._GtkWidget* @create_entry_in_table(%struct._GtkWidget* %137, %struct._GtkWidget* %138, i32 7, i32 0)
  %139 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %target = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %139, i32 0, i32 17
  store %struct._GtkWidget* %call91, %struct._GtkWidget** %target, align 8
  %140 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call92 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0)) #5
  %call93 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %140, i32 9, i32 0, i8* %call92)
  store %struct._GtkWidget* %call93, %struct._GtkWidget** %label, align 8
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call94 = call %struct._GtkWidget* @create_entry_in_table(%struct._GtkWidget* %141, %struct._GtkWidget* %142, i32 10, i32 0)
  %143 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %comment = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %143, i32 0, i32 18
  store %struct._GtkWidget* %call94, %struct._GtkWidget** %comment, align 8
  %144 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook.addr, align 8
  %145 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call95 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0)) #5
  call void @append_page(%struct._GtkWidget* %144, %struct._GtkWidget* %145, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8* %call95)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @create_info_tab(%struct.AreaInfoDialog_t* %dialog, %struct._GtkWidget* %notebook) #0 {
entry:
  %dialog.addr = alloca %struct.AreaInfoDialog_t*, align 8
  %notebook.addr = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %obj = alloca %struct.Object_t*, align 8
  store %struct.AreaInfoDialog_t* %dialog, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  store %struct._GtkWidget* %notebook, %struct._GtkWidget** %notebook.addr, align 8
  %0 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %obj1 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %0, i32 0, i32 1
  %1 = load %struct.Object_t*, %struct.Object_t** %obj1, align 8
  store %struct.Object_t* %1, %struct.Object_t** %obj, align 8
  %call = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 1)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %vbox, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_container_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call2)
  %4 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %4, i32 12)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %5)
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0)) #5
  %call5 = call %struct._GtkWidget* @gimp_frame_new(i8* %call4)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %frame, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_box_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call6)
  %8 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkBox*
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %8, %struct._GtkWidget* %9, i32 0, i32 0, i32 0)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %10)
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0)) #5
  %call9 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call8)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %preview, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %12 = bitcast %struct._GtkWidget* %11 to i8*
  %13 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %14 = bitcast %struct.AreaInfoDialog_t* %13 to i8*
  %call10 = call i64 @g_signal_connect_data(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.AreaInfoDialog_t*)* @toggle_preview_cb to void ()*), i8* %14, void (i8*, %struct._GClosure*)* null, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_box_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkBox*
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %17, %struct._GtkWidget* %18, i32 0, i32 0, i32 0)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %19)
  %20 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %class = getelementptr inbounds %struct.Object_t, %struct.Object_t* %20, i32 0, i32 0
  %21 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class, align 8
  %create_info_widget = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %21, i32 0, i32 16
  %22 = load i8* (%struct._GtkWidget*)*, i8* (%struct._GtkWidget*)** %create_info_widget, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %call13 = call i8* %22(%struct._GtkWidget* %23)
  %24 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %infotab = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %24, i32 0, i32 24
  store i8* %call13, i8** %infotab, align 8
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook.addr, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %27 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %class14 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %27, i32 0, i32 0
  %28 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class14, align 8
  %get_stock_icon_name = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %28, i32 0, i32 25
  %29 = load i8* ()*, i8* ()** %get_stock_icon_name, align 8
  %call15 = call i8* %29()
  %30 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %class16 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %30, i32 0, i32 0
  %31 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class16, align 8
  %name = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %31, i32 0, i32 0
  %32 = load i8*, i8** %name, align 8
  %call17 = call i8* @gettext(i8* %32) #5
  call void @append_page(%struct._GtkWidget* %25, %struct._GtkWidget* %26, i8* %call15, i8* %call17)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @create_java_script_tab(%struct.AreaInfoDialog_t* %dialog, %struct._GtkWidget* %notebook) #0 {
entry:
  %dialog.addr = alloca %struct.AreaInfoDialog_t*, align 8
  %notebook.addr = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  store %struct.AreaInfoDialog_t* %dialog, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  store %struct._GtkWidget* %notebook, %struct._GtkWidget** %notebook.addr, align 8
  %call = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 1)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %vbox, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %0)
  %call1 = call %struct._GtkWidget* @gtk_table_new(i32 11, i32 1, i32 0)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %table, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_box_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call2)
  %3 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkBox*
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %3, %struct._GtkWidget* %4, i32 0, i32 0, i32 0)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_container_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %7, i32 12)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_table_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call6)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %10, i32 6)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %11)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call8 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %12, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0))
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %label, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call9 = call %struct._GtkWidget* @create_entry_in_table(%struct._GtkWidget* %13, %struct._GtkWidget* %14, i32 1, i32 0)
  %15 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %mouse_over = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %15, i32 0, i32 19
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %mouse_over, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call10 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %16, i32 3, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0))
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %label, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call11 = call %struct._GtkWidget* @create_entry_in_table(%struct._GtkWidget* %17, %struct._GtkWidget* %18, i32 4, i32 0)
  %19 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %mouse_out = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %19, i32 0, i32 20
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %mouse_out, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call12 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %20, i32 6, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i32 0, i32 0))
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %label, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call13 = call %struct._GtkWidget* @create_entry_in_table(%struct._GtkWidget* %21, %struct._GtkWidget* %22, i32 7, i32 0)
  %23 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %focus = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %23, i32 0, i32 21
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %focus, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call14 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %24, i32 9, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i32 0, i32 0))
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %label, align 8
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call15 = call %struct._GtkWidget* @create_entry_in_table(%struct._GtkWidget* %25, %struct._GtkWidget* %26, i32 10, i32 0)
  %27 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %blur = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %27, i32 0, i32 22
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %blur, align 8
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook.addr, align 8
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0)) #5
  call void @append_page(%struct._GtkWidget* %28, %struct._GtkWidget* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8* %call16)
  ret void
}

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @edit_area_info_dialog_show(%struct.AreaInfoDialog_t* %dialog, %struct.Object_t* %obj, i32 %add) #0 {
entry:
  %dialog.addr = alloca %struct.AreaInfoDialog_t*, align 8
  %obj.addr = alloca %struct.Object_t*, align 8
  %add.addr = alloca i32, align 4
  %title = alloca i8*, align 8
  store %struct.AreaInfoDialog_t* %dialog, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i32 %add, i32* %add.addr, align 4
  %0 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %obj1 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %0, i32 0, i32 1
  %1 = load %struct.Object_t*, %struct.Object_t** %obj1, align 8
  call void @object_unlock(%struct.Object_t* %1)
  %2 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  call void @object_lock(%struct.Object_t* %2)
  %3 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %4 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %obj2 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %4, i32 0, i32 1
  store %struct.Object_t* %3, %struct.Object_t** %obj2, align 8
  %5 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %call = call %struct.Object_t* @object_clone(%struct.Object_t* %5)
  %6 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %clone = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %6, i32 0, i32 2
  store %struct.Object_t* %call, %struct.Object_t** %clone, align 8
  %7 = load i32, i32* %add.addr, align 4
  %8 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %add3 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %8, i32 0, i32 3
  store i32 %7, i32* %add3, align 4
  %9 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %class = getelementptr inbounds %struct.Object_t, %struct.Object_t* %9, i32 0, i32 0
  %10 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class, align 8
  %fill_info_tab = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %10, i32 0, i32 18
  %11 = load void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)** %fill_info_tab, align 8
  %12 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %13 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %infotab = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %13, i32 0, i32 24
  %14 = load i8*, i8** %infotab, align 8
  call void %11(%struct.Object_t* %12, i8* %14)
  %15 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %url = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %15, i32 0, i32 15
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %url, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_entry_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call4)
  %18 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkEntry*
  %19 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %url6 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %19, i32 0, i32 5
  %20 = load i8*, i8** %url6, align 8
  call void @gtk_entry_set_text(%struct._GtkEntry* %18, i8* %20)
  %21 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %target = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %21, i32 0, i32 17
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %target, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_entry_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call7)
  %24 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkEntry*
  %25 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %target9 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %25, i32 0, i32 6
  %26 = load i8*, i8** %target9, align 8
  call void @gtk_entry_set_text(%struct._GtkEntry* %24, i8* %26)
  %27 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %comment = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %27, i32 0, i32 18
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %comment, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_entry_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call10)
  %30 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkEntry*
  %31 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %comment12 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %31, i32 0, i32 7
  %32 = load i8*, i8** %comment12, align 8
  call void @gtk_entry_set_text(%struct._GtkEntry* %30, i8* %32)
  %33 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %mouse_over = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %33, i32 0, i32 19
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %mouse_over, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_entry_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call13)
  %36 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkEntry*
  %37 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %mouse_over15 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %37, i32 0, i32 8
  %38 = load i8*, i8** %mouse_over15, align 8
  call void @gtk_entry_set_text(%struct._GtkEntry* %36, i8* %38)
  %39 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %mouse_out = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %39, i32 0, i32 20
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %mouse_out, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_entry_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call16)
  %42 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkEntry*
  %43 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %mouse_out18 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %43, i32 0, i32 9
  %44 = load i8*, i8** %mouse_out18, align 8
  call void @gtk_entry_set_text(%struct._GtkEntry* %42, i8* %44)
  %45 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %focus = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %45, i32 0, i32 21
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %focus, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_entry_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call19)
  %48 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkEntry*
  %49 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %focus21 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %49, i32 0, i32 10
  %50 = load i8*, i8** %focus21, align 8
  call void @gtk_entry_set_text(%struct._GtkEntry* %48, i8* %50)
  %51 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %blur = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %51, i32 0, i32 22
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %blur, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_entry_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call22)
  %54 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkEntry*
  %55 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %blur24 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %55, i32 0, i32 11
  %56 = load i8*, i8** %blur24, align 8
  call void @gtk_entry_set_text(%struct._GtkEntry* %54, i8* %56)
  %57 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %url25 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %57, i32 0, i32 15
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %url25, align 8
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %58)
  %59 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %list = getelementptr inbounds %struct.Object_t, %struct.Object_t* %59, i32 0, i32 1
  %60 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list, align 8
  %61 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %62 = bitcast %struct.AreaInfoDialog_t* %61 to i8*
  %call26 = call i8* @object_list_add_geometry_cb(%struct.ObjectList_t* %60, void (%struct.Object_t*, i8*)* @geometry_changed, i8* %62)
  %63 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %geometry_cb_id = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %63, i32 0, i32 25
  store i8* %call26, i8** %geometry_cb_id, align 8
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0)) #5
  %64 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %call28 = call i32 @object_get_position_in_list(%struct.Object_t* %64)
  %add29 = add nsw i32 %call28, 1
  %call30 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call27, i32 %add29)
  store i8* %call30, i8** %title, align 8
  %65 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %dialog31 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %65, i32 0, i32 0
  %66 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog31, align 8
  %67 = load i8*, i8** %title, align 8
  call void @default_dialog_set_title(%struct.DefaultDialog_t* %66, i8* %67)
  %68 = load i8*, i8** %title, align 8
  call void @g_free(i8* %68)
  %69 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %dialog32 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %69, i32 0, i32 0
  %70 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog32, align 8
  call void @default_dialog_show(%struct.DefaultDialog_t* %70)
  ret void
}

declare void @object_unlock(%struct.Object_t*) #1

declare void @object_lock(%struct.Object_t*) #1

declare %struct.Object_t* @object_clone(%struct.Object_t*) #1

declare void @gtk_entry_set_text(%struct._GtkEntry*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #3

declare void @gtk_widget_grab_focus(%struct._GtkWidget*) #1

declare i8* @object_list_add_geometry_cb(%struct.ObjectList_t*, void (%struct.Object_t*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @geometry_changed(%struct.Object_t* %obj, i8* %data) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %data.addr = alloca i8*, align 8
  %dialog = alloca %struct.AreaInfoDialog_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.AreaInfoDialog_t*
  store %struct.AreaInfoDialog_t* %1, %struct.AreaInfoDialog_t** %dialog, align 8
  %2 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog, align 8
  %geometry_lock = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %2, i32 0, i32 4
  %3 = load i32, i32* %geometry_lock, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog, align 8
  %geometry_lock1 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %4, i32 0, i32 4
  store i32 0, i32* %geometry_lock1, align 4
  br label %if.end.5

if.else:                                          ; preds = %entry
  %5 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog, align 8
  %obj2 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %5, i32 0, i32 1
  %6 = load %struct.Object_t*, %struct.Object_t** %obj2, align 8
  %7 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %cmp = icmp eq %struct.Object_t* %6, %7
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  %8 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %class = getelementptr inbounds %struct.Object_t, %struct.Object_t* %8, i32 0, i32 0
  %9 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class, align 8
  %update_info_widget = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %9, i32 0, i32 17
  %10 = load void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)** %update_info_widget, align 8
  %11 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %12 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog, align 8
  %infotab = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %12, i32 0, i32 24
  %13 = load i8*, i8** %infotab, align 8
  call void %10(%struct.Object_t* %11, i8* %13)
  %14 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %class4 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %14, i32 0, i32 0
  %15 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class4, align 8
  %assign = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %15, i32 0, i32 7
  %16 = load void (%struct.Object_t*, %struct.Object_t*)*, void (%struct.Object_t*, %struct.Object_t*)** %assign, align 8
  %17 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %18 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog, align 8
  %clone = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %18, i32 0, i32 2
  %19 = load %struct.Object_t*, %struct.Object_t** %clone, align 8
  call void %16(%struct.Object_t* %17, %struct.Object_t* %19)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  ret void
}

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i32 @object_get_position_in_list(%struct.Object_t*) #1

declare void @default_dialog_set_title(%struct.DefaultDialog_t*, i8*) #1

declare void @g_free(i8*) #1

declare void @default_dialog_show(%struct.DefaultDialog_t*) #1

; Function Attrs: nounwind uwtable
define void @edit_area_info_dialog_emit_geometry_signal(%struct.AreaInfoDialog_t* %dialog) #0 {
entry:
  %dialog.addr = alloca %struct.AreaInfoDialog_t*, align 8
  store %struct.AreaInfoDialog_t* %dialog, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %0 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %preview = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %0, i32 0, i32 5
  %1 = load i32, i32* %preview, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %geometry_lock = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %2, i32 0, i32 4
  store i32 1, i32* %geometry_lock, align 4
  %3 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %obj = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %3, i32 0, i32 1
  %4 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  call void @object_emit_geometry_signal(%struct.Object_t* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @object_emit_geometry_signal(%struct.Object_t*) #1

declare void @object_list_remove_geometry_cb(%struct.ObjectList_t*, i8*) #1

declare void @command_list_add(%struct.Command_t*) #1

declare %struct.Command_t* @edit_object_command_new(%struct.Object_t*) #1

declare void @object_unref(%struct.Object_t*) #1

declare void @object_set_url(%struct.Object_t*, i8*) #1

declare i8* @gtk_entry_get_text(%struct._GtkEntry*) #1

declare void @object_set_target(%struct.Object_t*, i8*) #1

declare void @object_set_comment(%struct.Object_t*, i8*) #1

declare void @object_set_mouse_over(%struct.Object_t*, i8*) #1

declare void @object_set_mouse_out(%struct.Object_t*, i8*) #1

declare void @object_set_focus(%struct.Object_t*, i8*) #1

declare void @object_set_blur(%struct.Object_t*, i8*) #1

declare void @update_shape(%struct.Object_t*) #1

; Function Attrs: nounwind uwtable
define internal i32 @object_was_changed(%struct.AreaInfoDialog_t* %dialog) #0 {
entry:
  %dialog.addr = alloca %struct.AreaInfoDialog_t*, align 8
  %clone = alloca %struct.Object_t*, align 8
  %obj = alloca %struct.Object_t*, align 8
  %old_x = alloca i32, align 4
  %old_y = alloca i32, align 4
  %old_width = alloca i32, align 4
  %old_height = alloca i32, align 4
  %new_x = alloca i32, align 4
  %new_y = alloca i32, align 4
  %new_width = alloca i32, align 4
  %new_height = alloca i32, align 4
  store %struct.AreaInfoDialog_t* %dialog, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %0 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %clone1 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %0, i32 0, i32 2
  %1 = load %struct.Object_t*, %struct.Object_t** %clone1, align 8
  store %struct.Object_t* %1, %struct.Object_t** %clone, align 8
  %2 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %dialog.addr, align 8
  %obj2 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %2, i32 0, i32 1
  %3 = load %struct.Object_t*, %struct.Object_t** %obj2, align 8
  store %struct.Object_t* %3, %struct.Object_t** %obj, align 8
  %4 = load %struct.Object_t*, %struct.Object_t** %clone, align 8
  %class = getelementptr inbounds %struct.Object_t, %struct.Object_t* %4, i32 0, i32 0
  %5 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class, align 8
  %get_dimensions = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %5, i32 0, i32 13
  %6 = load void (%struct.Object_t*, i32*, i32*, i32*, i32*)*, void (%struct.Object_t*, i32*, i32*, i32*, i32*)** %get_dimensions, align 8
  %7 = load %struct.Object_t*, %struct.Object_t** %clone, align 8
  call void %6(%struct.Object_t* %7, i32* %old_x, i32* %old_y, i32* %old_width, i32* %old_height)
  %8 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %class3 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %8, i32 0, i32 0
  %9 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class3, align 8
  %get_dimensions4 = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %9, i32 0, i32 13
  %10 = load void (%struct.Object_t*, i32*, i32*, i32*, i32*)*, void (%struct.Object_t*, i32*, i32*, i32*, i32*)** %get_dimensions4, align 8
  %11 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  call void %10(%struct.Object_t* %11, i32* %new_x, i32* %new_y, i32* %new_width, i32* %new_height)
  %12 = load i32, i32* %new_x, align 4
  %13 = load i32, i32* %old_x, align 4
  %cmp = icmp ne i32 %12, %13
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %14 = load i32, i32* %new_y, align 4
  %15 = load i32, i32* %old_y, align 4
  %cmp5 = icmp ne i32 %14, %15
  br i1 %cmp5, label %lor.end, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %16 = load i32, i32* %new_width, align 4
  %17 = load i32, i32* %old_width, align 4
  %cmp7 = icmp ne i32 %16, %17
  br i1 %cmp7, label %lor.end, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.6
  %18 = load i32, i32* %new_height, align 4
  %19 = load i32, i32* %old_height, align 4
  %cmp9 = icmp ne i32 %18, %19
  br i1 %cmp9, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.8
  %20 = load %struct.Object_t*, %struct.Object_t** %clone, align 8
  %selected = getelementptr inbounds %struct.Object_t, %struct.Object_t* %20, i32 0, i32 3
  %21 = load i32, i32* %selected, align 4
  %22 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %selected10 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %22, i32 0, i32 3
  %23 = load i32, i32* %selected10, align 4
  %cmp11 = icmp ne i32 %21, %23
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.8, %lor.lhs.false.6, %lor.lhs.false, %entry
  %24 = phi i1 [ true, %lor.lhs.false.8 ], [ true, %lor.lhs.false.6 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp11, %lor.rhs ]
  %lor.ext = zext i1 %24 to i32
  ret i32 %lor.ext
}

declare void @preview_redraw() #1

declare %struct.Object_t* @object_assign(%struct.Object_t*, %struct.Object_t*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare void @gtk_table_attach_defaults(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @create_radio_button_in_table(%struct._GtkWidget*, %struct._GSList*, i32, i32, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @select_web_cb(%struct._GtkWidget* %widget, %struct.AreaInfoDialog_t* %param) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %param.addr = alloca %struct.AreaInfoDialog_t*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.AreaInfoDialog_t* %param, %struct.AreaInfoDialog_t** %param.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %param.addr, align 8
  call void @set_url(%struct._GtkWidget* %0, %struct.AreaInfoDialog_t* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0))
  ret void
}

declare %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_button_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @select_ftp_cb(%struct._GtkWidget* %widget, %struct.AreaInfoDialog_t* %param) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %param.addr = alloca %struct.AreaInfoDialog_t*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.AreaInfoDialog_t* %param, %struct.AreaInfoDialog_t** %param.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %param.addr, align 8
  call void @set_url(%struct._GtkWidget* %0, %struct.AreaInfoDialog_t* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @select_gopher_cb(%struct._GtkWidget* %widget, %struct.AreaInfoDialog_t* %param) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %param.addr = alloca %struct.AreaInfoDialog_t*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.AreaInfoDialog_t* %param, %struct.AreaInfoDialog_t** %param.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %param.addr, align 8
  call void @set_url(%struct._GtkWidget* %0, %struct.AreaInfoDialog_t* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @select_other_cb(%struct._GtkWidget* %widget, %struct.AreaInfoDialog_t* %param) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %param.addr = alloca %struct.AreaInfoDialog_t*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.AreaInfoDialog_t* %param, %struct.AreaInfoDialog_t** %param.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %param.addr, align 8
  call void @set_url(%struct._GtkWidget* %0, %struct.AreaInfoDialog_t* %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @select_file_cb(%struct._GtkWidget* %widget, %struct.AreaInfoDialog_t* %param) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %param.addr = alloca %struct.AreaInfoDialog_t*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.AreaInfoDialog_t* %param, %struct.AreaInfoDialog_t** %param.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %param.addr, align 8
  call void @set_url(%struct._GtkWidget* %0, %struct.AreaInfoDialog_t* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @select_wais_cb(%struct._GtkWidget* %widget, %struct.AreaInfoDialog_t* %param) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %param.addr = alloca %struct.AreaInfoDialog_t*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.AreaInfoDialog_t* %param, %struct.AreaInfoDialog_t** %param.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %param.addr, align 8
  call void @set_url(%struct._GtkWidget* %0, %struct.AreaInfoDialog_t* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @select_telnet_cb(%struct._GtkWidget* %widget, %struct.AreaInfoDialog_t* %param) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %param.addr = alloca %struct.AreaInfoDialog_t*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.AreaInfoDialog_t* %param, %struct.AreaInfoDialog_t** %param.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %param.addr, align 8
  call void @set_url(%struct._GtkWidget* %0, %struct.AreaInfoDialog_t* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @select_email_cb(%struct._GtkWidget* %widget, %struct.AreaInfoDialog_t* %param) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %param.addr = alloca %struct.AreaInfoDialog_t*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.AreaInfoDialog_t* %param, %struct.AreaInfoDialog_t** %param.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %param.addr, align 8
  call void @set_url(%struct._GtkWidget* %0, %struct.AreaInfoDialog_t* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0))
  ret void
}

declare %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget*, i32, i32, i8*) #1

declare %struct.BrowseWidget_t* @browse_widget_new(i8*) #1

declare void @browse_widget_set_filter(%struct.BrowseWidget_t*, i8* (i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @relative_filter(i8* %name, i8* %data) #0 {
entry:
  %retval = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %param = alloca %struct.AreaInfoDialog_t*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.AreaInfoDialog_t*
  store %struct.AreaInfoDialog_t* %1, %struct.AreaInfoDialog_t** %param, align 8
  %2 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %param, align 8
  %relative_link = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %2, i32 0, i32 16
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %relative_link, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %5)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** %name.addr, align 8
  %call3 = call noalias i8* @g_path_get_basename(i8* %6)
  store i8* %call3, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i8*, i8** %name.addr, align 8
  %call4 = call noalias i8* @g_strdup(i8* %7)
  store i8* %call4, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i8*, i8** %retval
  ret i8* %8
}

; Function Attrs: nounwind uwtable
define internal void @url_changed(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %param = alloca %struct.AreaInfoDialog_t*, align 8
  %url = alloca i8*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.AreaInfoDialog_t*
  store %struct.AreaInfoDialog_t* %1, %struct.AreaInfoDialog_t** %param, align 8
  %2 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %param, align 8
  %url1 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %2, i32 0, i32 15
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %url1, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkEntry*
  %call3 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %5)
  store i8* %call3, i8** %url, align 8
  %6 = load i8*, i8** %url, align 8
  %call4 = call i32 @g_ascii_strncasecmp(i8* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i64 7)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %param, align 8
  %web_site = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %7, i32 0, i32 7
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %web_site, align 8
  store %struct._GtkWidget* %8, %struct._GtkWidget** %button, align 8
  br label %if.end.34

if.else:                                          ; preds = %entry
  %9 = load i8*, i8** %url, align 8
  %call5 = call i32 @g_ascii_strncasecmp(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i64 6)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.else.8, label %if.then.7

if.then.7:                                        ; preds = %if.else
  %10 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %param, align 8
  %ftp_site = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %10, i32 0, i32 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %ftp_site, align 8
  store %struct._GtkWidget* %11, %struct._GtkWidget** %button, align 8
  br label %if.end.33

if.else.8:                                        ; preds = %if.else
  %12 = load i8*, i8** %url, align 8
  %call9 = call i32 @g_ascii_strncasecmp(i8* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i64 9)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.else.12, label %if.then.11

if.then.11:                                       ; preds = %if.else.8
  %13 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %param, align 8
  %gopher = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %13, i32 0, i32 9
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %gopher, align 8
  store %struct._GtkWidget* %14, %struct._GtkWidget** %button, align 8
  br label %if.end.32

if.else.12:                                       ; preds = %if.else.8
  %15 = load i8*, i8** %url, align 8
  %call13 = call i32 @g_ascii_strncasecmp(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i64 6)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.else.16, label %if.then.15

if.then.15:                                       ; preds = %if.else.12
  %16 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %param, align 8
  %file = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %16, i32 0, i32 11
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %file, align 8
  store %struct._GtkWidget* %17, %struct._GtkWidget** %button, align 8
  br label %if.end.31

if.else.16:                                       ; preds = %if.else.12
  %18 = load i8*, i8** %url, align 8
  %call17 = call i32 @g_ascii_strncasecmp(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i64 7)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.else.20, label %if.then.19

if.then.19:                                       ; preds = %if.else.16
  %19 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %param, align 8
  %wais = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %19, i32 0, i32 12
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %wais, align 8
  store %struct._GtkWidget* %20, %struct._GtkWidget** %button, align 8
  br label %if.end.30

if.else.20:                                       ; preds = %if.else.16
  %21 = load i8*, i8** %url, align 8
  %call21 = call i32 @g_ascii_strncasecmp(i8* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i64 9)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.else.24, label %if.then.23

if.then.23:                                       ; preds = %if.else.20
  %22 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %param, align 8
  %telnet = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %22, i32 0, i32 13
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %telnet, align 8
  store %struct._GtkWidget* %23, %struct._GtkWidget** %button, align 8
  br label %if.end.29

if.else.24:                                       ; preds = %if.else.20
  %24 = load i8*, i8** %url, align 8
  %call25 = call i32 @g_ascii_strncasecmp(i8* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i64 7)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.else.28, label %if.then.27

if.then.27:                                       ; preds = %if.else.24
  %25 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %param, align 8
  %email = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %25, i32 0, i32 14
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %email, align 8
  store %struct._GtkWidget* %26, %struct._GtkWidget** %button, align 8
  br label %if.end

if.else.28:                                       ; preds = %if.else.24
  %27 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %param, align 8
  %other = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %27, i32 0, i32 10
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %other, align 8
  store %struct._GtkWidget* %28, %struct._GtkWidget** %button, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.28, %if.then.27
  br label %if.end.29

if.end.29:                                        ; preds = %if.end, %if.then.23
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then.19
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.15
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.11
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.7
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then
  store i32 1, i32* @callback_lock, align 4
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_toggle_button_get_type() #6
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call35)
  %31 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %31, i32 1)
  ret void
}

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #3

declare %struct._GtkWidget* @create_check_button_in_table(%struct._GtkWidget*, i32, i32, i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare %struct._GtkWidget* @create_entry_in_table(%struct._GtkWidget*, %struct._GtkWidget*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @append_page(%struct._GtkWidget* %notebook, %struct._GtkWidget* %page, i8* %icon_name, i8* %label_name) #0 {
entry:
  %notebook.addr = alloca %struct._GtkWidget*, align 8
  %page.addr = alloca %struct._GtkWidget*, align 8
  %icon_name.addr = alloca i8*, align 8
  %label_name.addr = alloca i8*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %icon = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %notebook, %struct._GtkWidget** %notebook.addr, align 8
  store %struct._GtkWidget* %page, %struct._GtkWidget** %page.addr, align 8
  store i8* %icon_name, i8** %icon_name.addr, align 8
  store i8* %label_name, i8** %label_name.addr, align 8
  %call = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 1)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %hbox, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %0)
  %1 = load i8*, i8** %icon_name.addr, align 8
  %call1 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* %1, i32 1)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %icon, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_box_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call2)
  %4 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkBox*
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %icon, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %4, %struct._GtkWidget* %5, i32 0, i32 0, i32 0)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %icon, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %6)
  %7 = load i8*, i8** %label_name.addr, align 8
  %call4 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %7)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %label, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_box_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkBox*
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %10, %struct._GtkWidget* %11, i32 1, i32 1, i32 0)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %12)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_notebook_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call7)
  %15 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkNotebook*
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %page.addr, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %call9 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %15, %struct._GtkWidget* %16, %struct._GtkWidget* %17)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_url(%struct._GtkWidget* %widget, %struct.AreaInfoDialog_t* %param, i8* %prefix) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %param.addr = alloca %struct.AreaInfoDialog_t*, align 8
  %prefix.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %url = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.AreaInfoDialog_t* %param, %struct.AreaInfoDialog_t** %param.addr, align 8
  store i8* %prefix, i8** %prefix.addr, align 8
  %0 = load i32, i32* @callback_lock, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* @callback_lock, align 4
  br label %if.end.26

if.else:                                          ; preds = %entry
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call i32 @gtk_widget_get_state(%struct._GtkWidget* %1)
  %and = and i32 %call, 3
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then.2, label %if.end.25

if.then.2:                                        ; preds = %if.else
  %2 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %param.addr, align 8
  %url3 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %2, i32 0, i32 15
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %url3, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_entry_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkEntry*
  %call6 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %5)
  %call7 = call noalias i8* @g_strdup(i8* %call6)
  store i8* %call7, i8** %url, align 8
  %6 = load i8*, i8** %url, align 8
  %call8 = call i8* @strstr(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0)) #7
  store i8* %call8, i8** %p, align 8
  %7 = load i8*, i8** %p, align 8
  %tobool9 = icmp ne i8* %7, null
  br i1 %tobool9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.then.2
  %8 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 2
  store i8* %add.ptr, i8** %p, align 8
  br label %if.end.20

if.else.11:                                       ; preds = %if.then.2
  %9 = load i8*, i8** %url, align 8
  %call12 = call i8* @strchr(i8* %9, i32 58) #7
  store i8* %call12, i8** %p, align 8
  %10 = load i8*, i8** %p, align 8
  %tobool13 = icmp ne i8* %10, null
  br i1 %tobool13, label %if.then.14, label %if.else.18

if.then.14:                                       ; preds = %if.else.11
  %11 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %12 = load i8*, i8** %p, align 8
  %13 = load i8, i8* %12, align 1
  %conv = sext i8 %13 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %if.then.14
  %14 = load i8*, i8** %p, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr17, i8** %p, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.16, %if.then.14
  br label %if.end.19

if.else.18:                                       ; preds = %if.else.11
  %15 = load i8*, i8** %url, align 8
  store i8* %15, i8** %p, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.18, %if.end
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.10
  %16 = load i8*, i8** %prefix.addr, align 8
  %17 = load i8*, i8** %p, align 8
  %call21 = call noalias i8* (i8*, ...) @g_strconcat(i8* %16, i8* %17, i8* null)
  store i8* %call21, i8** %p, align 8
  %18 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %param.addr, align 8
  %url22 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %18, i32 0, i32 15
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %url22, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_entry_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call23)
  %21 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkEntry*
  %22 = load i8*, i8** %p, align 8
  call void @gtk_entry_set_text(%struct._GtkEntry* %21, i8* %22)
  %23 = load i8*, i8** %p, align 8
  call void @g_free(i8* %23)
  %24 = load i8*, i8** %url, align 8
  call void @g_free(i8* %24)
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.20, %if.else
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then
  %25 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %param.addr, align 8
  %url27 = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %25, i32 0, i32 15
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %url27, align 8
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %26)
  ret void
}

declare i32 @gtk_widget_get_state(%struct._GtkWidget*) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

declare noalias i8* @g_strconcat(i8*, ...) #1

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

declare noalias i8* @g_path_get_basename(i8*) #1

declare i32 @g_ascii_strncasecmp(i8*, i8*, i64) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #1

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

declare i32 @gtk_notebook_append_page(%struct._GtkNotebook*, %struct._GtkWidget*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_notebook_get_type() #3

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @toggle_preview_cb(%struct._GtkWidget* %widget, %struct.AreaInfoDialog_t* %param) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %param.addr = alloca %struct.AreaInfoDialog_t*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.AreaInfoDialog_t* %param, %struct.AreaInfoDialog_t** %param.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %2)
  %3 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %param.addr, align 8
  %preview = getelementptr inbounds %struct.AreaInfoDialog_t, %struct.AreaInfoDialog_t* %3, i32 0, i32 5
  store i32 %call2, i32* %preview, align 4
  %4 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %param.addr, align 8
  call void @edit_area_info_dialog_emit_geometry_signal(%struct.AreaInfoDialog_t* %4)
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
