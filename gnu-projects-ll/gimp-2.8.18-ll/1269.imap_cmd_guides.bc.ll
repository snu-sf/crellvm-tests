; ModuleID = './plug-ins/imagemap/imap_cmd_guides.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CommandClass_t = type { void (%struct.Command_t*)*, i32 (%struct.Command_t*)*, void (%struct.Command_t*)*, void (%struct.Command_t*)* }
%struct.Command_t = type { %struct.CommandClass_t*, %struct.CommandList_t*, i8*, i32 }
%struct.CommandList_t = type { %struct.CommandList_t*, i32, %struct._GList*, %struct._GList*, %struct._GList*, %struct.CommandListCallback_t }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.CommandListCallback_t = type { %struct._GList* }
%struct.GuidesDialog_t = type { %struct.DefaultDialog_t*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct.ObjectList_t* }
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
%struct.ObjectList_t = type { %struct._GList*, i32, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t }
%struct.ObjectListCallback_t = type { %struct._GList* }
%struct.GuidesCommand_t = type { %struct.Command_t, %struct.ObjectList_t* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct.Object_t = type { %struct.ObjectClass_t*, %struct.ObjectList_t*, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.ObjectClass_t = type { i8*, %struct.AreaInfoDialog_t*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32 (%struct.Object_t*)*, void (%struct.Object_t*)*, %struct.Object_t* (%struct.Object_t*)*, void (%struct.Object_t*, %struct.Object_t*)*, void (%struct.Object_t*)*, void (%struct.Object_t*, %struct._cairo*)*, void (%struct.Object_t*, %struct._cairo*)*, void (%struct.Object_t*, i32, i32)* (%struct.Object_t*, i32, i32)*, i32 (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32*, i32*, i32*, i32*)*, void (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32, i32)*, i8* (%struct._GtkWidget*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, %struct._GdkEventButton*)*, i8* ()* }
%struct.AreaInfoDialog_t = type { %struct.DefaultDialog_t*, %struct.Object_t*, %struct.Object_t*, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i8*, i8* }
%struct._cairo = type opaque
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GtkSpinButton = type { %struct._GtkEntry, %struct._GtkAdjustment*, %struct._GdkDrawable*, i32, double, double, i32, i24 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }

@.str = private unnamed_addr constant [7 x i8] c"Guides\00", align 1
@guides_command_class = internal global %struct.CommandClass_t { void (%struct.Command_t*)* null, i32 (%struct.Command_t*)* @guides_command_execute, void (%struct.Command_t*)* null, void (%struct.Command_t*)* null }, align 8
@do_create_guides_dialog_local.dialog = internal global %struct.GuidesDialog_t* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"Create Guides\00", align 1
@.str.2 = private unnamed_addr constant [254 x i8] c"Guides are pre-defined rectangles covering the image. You define them by their width, height, and spacing from each other. This allows you to rapidly create the most common image map type - image collection of \22thumbnails\22, suitable for navigation bars.\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"_Width:\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"_Left start at:\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"_Height:\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"_Top start at:\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"_Horz. spacing:\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"_No. across:\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"_Vert. spacing:\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"No. _down:\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"Base _URL:\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"Resulting Guide Bounds: %d,%d to %d,%d (%d areas)\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"Image dimensions: %d \C3\97 %d\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"Resulting Guide Bounds: 0,0 to 0,0 (0 areas)\00", align 1

; Function Attrs: nounwind uwtable
define %struct.Command_t* @guides_command_new(%struct.ObjectList_t* %list) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %command = alloca %struct.GuidesCommand_t*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 40)
  %0 = bitcast i8* %call to %struct.GuidesCommand_t*
  store %struct.GuidesCommand_t* %0, %struct.GuidesCommand_t** %command, align 8
  %1 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %2 = load %struct.GuidesCommand_t*, %struct.GuidesCommand_t** %command, align 8
  %list1 = getelementptr inbounds %struct.GuidesCommand_t, %struct.GuidesCommand_t* %2, i32 0, i32 1
  store %struct.ObjectList_t* %1, %struct.ObjectList_t** %list1, align 8
  %3 = load %struct.GuidesCommand_t*, %struct.GuidesCommand_t** %command, align 8
  %parent = getelementptr inbounds %struct.GuidesCommand_t, %struct.GuidesCommand_t* %3, i32 0, i32 0
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)) #4
  %call3 = call %struct.Command_t* @command_init(%struct.Command_t* %parent, i8* %call2, %struct.CommandClass_t* @guides_command_class)
  ret %struct.Command_t* %call3
}

declare noalias i8* @g_malloc_n(i64, i64) #1

declare %struct.Command_t* @command_init(%struct.Command_t*, i8*, %struct.CommandClass_t*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @guides_command_execute(%struct.Command_t* %parent) #0 {
entry:
  %parent.addr = alloca %struct.Command_t*, align 8
  %command = alloca %struct.GuidesCommand_t*, align 8
  store %struct.Command_t* %parent, %struct.Command_t** %parent.addr, align 8
  %0 = load %struct.Command_t*, %struct.Command_t** %parent.addr, align 8
  %1 = bitcast %struct.Command_t* %0 to %struct.GuidesCommand_t*
  store %struct.GuidesCommand_t* %1, %struct.GuidesCommand_t** %command, align 8
  %2 = load %struct.GuidesCommand_t*, %struct.GuidesCommand_t** %command, align 8
  %list = getelementptr inbounds %struct.GuidesCommand_t, %struct.GuidesCommand_t* %2, i32 0, i32 1
  %3 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list, align 8
  call void @do_create_guides_dialog_local(%struct.ObjectList_t* %3)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @do_create_guides_dialog_local(%struct.ObjectList_t* %list) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  %0 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** @do_create_guides_dialog_local.dialog, align 8
  %tobool = icmp ne %struct.GuidesDialog_t* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct.GuidesDialog_t* @make_guides_dialog()
  store %struct.GuidesDialog_t* %call, %struct.GuidesDialog_t** @do_create_guides_dialog_local.dialog, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** @do_create_guides_dialog_local.dialog, align 8
  %2 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  call void @init_guides_dialog(%struct.GuidesDialog_t* %1, %struct.ObjectList_t* %2)
  %3 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** @do_create_guides_dialog_local.dialog, align 8
  %dialog = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %3, i32 0, i32 0
  %4 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog, align 8
  call void @default_dialog_show(%struct.DefaultDialog_t* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.GuidesDialog_t* @make_guides_dialog() #0 {
entry:
  %data = alloca %struct.GuidesDialog_t*, align 8
  %dialog = alloca %struct.DefaultDialog_t*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 104)
  %0 = bitcast i8* %call to %struct.GuidesDialog_t*
  store %struct.GuidesDialog_t* %0, %struct.GuidesDialog_t** %data, align 8
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)) #4
  %call2 = call %struct.DefaultDialog_t* @make_default_dialog(i8* %call1)
  %1 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %data, align 8
  %dialog3 = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %1, i32 0, i32 0
  store %struct.DefaultDialog_t* %call2, %struct.DefaultDialog_t** %dialog3, align 8
  store %struct.DefaultDialog_t* %call2, %struct.DefaultDialog_t** %dialog, align 8
  %2 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog, align 8
  %3 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %data, align 8
  %4 = bitcast %struct.GuidesDialog_t* %3 to i8*
  call void @default_dialog_set_ok_cb(%struct.DefaultDialog_t* %2, void (i8*)* @guides_ok_cb, i8* %4)
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([254 x i8], [254 x i8]* @.str.2, i32 0, i32 0)) #4
  %call5 = call %struct._GtkWidget* @gimp_hint_box_new(i8* %call4)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %hbox, align 8
  %5 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog, align 8
  %vbox = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %5, i32 0, i32 1
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_box_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call6)
  %8 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkBox*
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %8, %struct._GtkWidget* %9, i32 0, i32 0, i32 0)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %10)
  %call8 = call %struct._GtkWidget* @gtk_label_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0))
  %11 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %data, align 8
  %image_dimensions = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %11, i32 0, i32 1
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %image_dimensions, align 8
  %12 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %data, align 8
  %image_dimensions9 = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %12, i32 0, i32 1
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %image_dimensions9, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_misc_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call10)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %15, float 0.000000e+00, float 5.000000e-01)
  %16 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog, align 8
  %vbox12 = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %16, i32 0, i32 1
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox12, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_box_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call13)
  %19 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkBox*
  %20 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %data, align 8
  %image_dimensions15 = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %20, i32 0, i32 1
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %image_dimensions15, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %19, %struct._GtkWidget* %21, i32 0, i32 0, i32 0)
  %22 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %data, align 8
  %image_dimensions16 = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %22, i32 0, i32 1
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %image_dimensions16, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %23)
  %call17 = call %struct._GtkWidget* @gtk_label_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0))
  %24 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %data, align 8
  %guide_bounds = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %24, i32 0, i32 2
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %guide_bounds, align 8
  %25 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %data, align 8
  %guide_bounds18 = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %25, i32 0, i32 2
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %guide_bounds18, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_misc_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call19)
  %28 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %28, float 0.000000e+00, float 5.000000e-01)
  %29 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog, align 8
  %vbox21 = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %29, i32 0, i32 1
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox21, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_box_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call22)
  %32 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkBox*
  %33 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %data, align 8
  %guide_bounds24 = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %33, i32 0, i32 2
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %guide_bounds24, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %32, %struct._GtkWidget* %34, i32 0, i32 0, i32 0)
  %35 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %data, align 8
  %guide_bounds25 = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %35, i32 0, i32 2
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %guide_bounds25, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %36)
  %37 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog, align 8
  %call26 = call %struct._GtkWidget* @default_dialog_add_table(%struct.DefaultDialog_t* %37, i32 4, i32 4)
  store %struct._GtkWidget* %call26, %struct._GtkWidget** %table, align 8
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0)) #4
  %call28 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %38, i32 0, i32 0, i8* %call27)
  store %struct._GtkWidget* %call28, %struct._GtkWidget** %label, align 8
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call29 = call %struct._GtkWidget* @create_spin_button_in_table(%struct._GtkWidget* %39, %struct._GtkWidget* %40, i32 0, i32 1, i32 32, i32 1, i32 100)
  %41 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %data, align 8
  %width = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %41, i32 0, i32 3
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %width, align 8
  %42 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %data, align 8
  %width30 = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %42, i32 0, i32 3
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %width30, align 8
  %44 = bitcast %struct._GtkWidget* %43 to i8*
  %45 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %data, align 8
  %46 = bitcast %struct.GuidesDialog_t* %45 to i8*
  %call31 = call i64 @g_signal_connect_data(i8* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @recalc_bounds to void ()*), i8* %46, void (i8*, %struct._GClosure*)* null, i32 0)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)) #4
  %call33 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %47, i32 0, i32 2, i8* %call32)
  store %struct._GtkWidget* %call33, %struct._GtkWidget** %label, align 8
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call34 = call %struct._GtkWidget* @create_spin_button_in_table(%struct._GtkWidget* %48, %struct._GtkWidget* %49, i32 0, i32 3, i32 0, i32 0, i32 100)
  %50 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %data, align 8
  %left = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %50, i32 0, i32 5
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %left, align 8
  %51 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %data, align 8
  %left35 = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %51, i32 0, i32 5
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %left35, align 8
  %53 = bitcast %struct._GtkWidget* %52 to i8*
  %54 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %data, align 8
  %55 = bitcast %struct.GuidesDialog_t* %54 to i8*
  %call36 = call i64 @g_signal_connect_data(i8* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @recalc_bounds to void ()*), i8* %55, void (i8*, %struct._GClosure*)* null, i32 0)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call37 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0)) #4
  %call38 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %56, i32 1, i32 0, i8* %call37)
  store %struct._GtkWidget* %call38, %struct._GtkWidget** %label, align 8
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call39 = call %struct._GtkWidget* @create_spin_button_in_table(%struct._GtkWidget* %57, %struct._GtkWidget* %58, i32 1, i32 1, i32 32, i32 1, i32 100)
  %59 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %data, align 8
  %height = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %59, i32 0, i32 4
  store %struct._GtkWidget* %call39, %struct._GtkWidget** %height, align 8
  %60 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %data, align 8
  %height40 = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %60, i32 0, i32 4
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %height40, align 8
  %62 = bitcast %struct._GtkWidget* %61 to i8*
  %63 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %data, align 8
  %64 = bitcast %struct.GuidesDialog_t* %63 to i8*
  %call41 = call i64 @g_signal_connect_data(i8* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @recalc_bounds to void ()*), i8* %64, void (i8*, %struct._GClosure*)* null, i32 0)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call42 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0)) #4
  %call43 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %65, i32 1, i32 2, i8* %call42)
  store %struct._GtkWidget* %call43, %struct._GtkWidget** %label, align 8
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call44 = call %struct._GtkWidget* @create_spin_button_in_table(%struct._GtkWidget* %66, %struct._GtkWidget* %67, i32 1, i32 3, i32 0, i32 0, i32 100)
  %68 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %data, align 8
  %top = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %68, i32 0, i32 6
  store %struct._GtkWidget* %call44, %struct._GtkWidget** %top, align 8
  %69 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %data, align 8
  %top45 = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %69, i32 0, i32 6
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %top45, align 8
  %71 = bitcast %struct._GtkWidget* %70 to i8*
  %72 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %data, align 8
  %73 = bitcast %struct.GuidesDialog_t* %72 to i8*
  %call46 = call i64 @g_signal_connect_data(i8* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @recalc_bounds to void ()*), i8* %73, void (i8*, %struct._GClosure*)* null, i32 0)
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call47 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0)) #4
  %call48 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %74, i32 2, i32 0, i8* %call47)
  store %struct._GtkWidget* %call48, %struct._GtkWidget** %label, align 8
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call49 = call %struct._GtkWidget* @create_spin_button_in_table(%struct._GtkWidget* %75, %struct._GtkWidget* %76, i32 2, i32 1, i32 0, i32 0, i32 100)
  %77 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %data, align 8
  %horz_spacing = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %77, i32 0, i32 7
  store %struct._GtkWidget* %call49, %struct._GtkWidget** %horz_spacing, align 8
  %78 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %data, align 8
  %horz_spacing50 = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %78, i32 0, i32 7
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %horz_spacing50, align 8
  %80 = bitcast %struct._GtkWidget* %79 to i8*
  %81 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %data, align 8
  %82 = bitcast %struct.GuidesDialog_t* %81 to i8*
  %call51 = call i64 @g_signal_connect_data(i8* %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @recalc_bounds to void ()*), i8* %82, void (i8*, %struct._GClosure*)* null, i32 0)
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call52 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0)) #4
  %call53 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %83, i32 2, i32 2, i8* %call52)
  store %struct._GtkWidget* %call53, %struct._GtkWidget** %label, align 8
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call54 = call %struct._GtkWidget* @create_spin_button_in_table(%struct._GtkWidget* %84, %struct._GtkWidget* %85, i32 2, i32 3, i32 0, i32 0, i32 100)
  %86 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %data, align 8
  %no_across = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %86, i32 0, i32 9
  store %struct._GtkWidget* %call54, %struct._GtkWidget** %no_across, align 8
  %87 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %data, align 8
  %no_across55 = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %87, i32 0, i32 9
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %no_across55, align 8
  %89 = bitcast %struct._GtkWidget* %88 to i8*
  %90 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %data, align 8
  %91 = bitcast %struct.GuidesDialog_t* %90 to i8*
  %call56 = call i64 @g_signal_connect_data(i8* %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @recalc_bounds to void ()*), i8* %91, void (i8*, %struct._GClosure*)* null, i32 0)
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call57 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0)) #4
  %call58 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %92, i32 3, i32 0, i8* %call57)
  store %struct._GtkWidget* %call58, %struct._GtkWidget** %label, align 8
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call59 = call %struct._GtkWidget* @create_spin_button_in_table(%struct._GtkWidget* %93, %struct._GtkWidget* %94, i32 3, i32 1, i32 0, i32 0, i32 100)
  %95 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %data, align 8
  %vert_spacing = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %95, i32 0, i32 8
  store %struct._GtkWidget* %call59, %struct._GtkWidget** %vert_spacing, align 8
  %96 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %data, align 8
  %vert_spacing60 = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %96, i32 0, i32 8
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %vert_spacing60, align 8
  %98 = bitcast %struct._GtkWidget* %97 to i8*
  %99 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %data, align 8
  %100 = bitcast %struct.GuidesDialog_t* %99 to i8*
  %call61 = call i64 @g_signal_connect_data(i8* %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @recalc_bounds to void ()*), i8* %100, void (i8*, %struct._GClosure*)* null, i32 0)
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call62 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0)) #4
  %call63 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %101, i32 3, i32 2, i8* %call62)
  store %struct._GtkWidget* %call63, %struct._GtkWidget** %label, align 8
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call64 = call %struct._GtkWidget* @create_spin_button_in_table(%struct._GtkWidget* %102, %struct._GtkWidget* %103, i32 3, i32 3, i32 0, i32 0, i32 100)
  %104 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %data, align 8
  %no_down = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %104, i32 0, i32 10
  store %struct._GtkWidget* %call64, %struct._GtkWidget** %no_down, align 8
  %105 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %data, align 8
  %no_down65 = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %105, i32 0, i32 10
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %no_down65, align 8
  %107 = bitcast %struct._GtkWidget* %106 to i8*
  %108 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %data, align 8
  %109 = bitcast %struct.GuidesDialog_t* %108 to i8*
  %call66 = call i64 @g_signal_connect_data(i8* %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @recalc_bounds to void ()*), i8* %109, void (i8*, %struct._GClosure*)* null, i32 0)
  %call67 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call67, %struct._GtkWidget** %hbox, align 8
  %110 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog, align 8
  %vbox68 = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %110, i32 0, i32 1
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox68, align 8
  %112 = bitcast %struct._GtkWidget* %111 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_box_get_type() #5
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %112, i64 %call69)
  %113 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkBox*
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %113, %struct._GtkWidget* %114, i32 1, i32 1, i32 0)
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %115)
  %call71 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0)) #4
  %call72 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call71)
  store %struct._GtkWidget* %call72, %struct._GtkWidget** %label, align 8
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %117 = bitcast %struct._GtkWidget* %116 to %struct._GTypeInstance*
  %call73 = call i64 @gtk_box_get_type() #5
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %117, i64 %call73)
  %118 = bitcast %struct._GTypeInstance* %call74 to %struct._GtkBox*
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %118, %struct._GtkWidget* %119, i32 0, i32 0, i32 0)
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %120)
  %call75 = call %struct._GtkWidget* @gtk_entry_new()
  %121 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %data, align 8
  %base_url = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %121, i32 0, i32 11
  store %struct._GtkWidget* %call75, %struct._GtkWidget** %base_url, align 8
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %123 = bitcast %struct._GtkWidget* %122 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_box_get_type() #5
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %123, i64 %call76)
  %124 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkBox*
  %125 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %data, align 8
  %base_url78 = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %125, i32 0, i32 11
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %base_url78, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %124, %struct._GtkWidget* %126, i32 1, i32 1, i32 0)
  %127 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %data, align 8
  %base_url79 = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %127, i32 0, i32 11
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %base_url79, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %128)
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %130 = bitcast %struct._GtkWidget* %129 to %struct._GTypeInstance*
  %call80 = call i64 @gtk_label_get_type() #5
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %130, i64 %call80)
  %131 = bitcast %struct._GTypeInstance* %call81 to %struct._GtkLabel*
  %132 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %data, align 8
  %base_url82 = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %132, i32 0, i32 11
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %base_url82, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %131, %struct._GtkWidget* %133)
  %134 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %data, align 8
  ret %struct.GuidesDialog_t* %134
}

; Function Attrs: nounwind uwtable
define internal void @init_guides_dialog(%struct.GuidesDialog_t* %dialog, %struct.ObjectList_t* %list) #0 {
entry:
  %dialog.addr = alloca %struct.GuidesDialog_t*, align 8
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %dimension = alloca i8*, align 8
  store %struct.GuidesDialog_t* %dialog, %struct.GuidesDialog_t** %dialog.addr, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %1 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %dialog.addr, align 8
  %list1 = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %1, i32 0, i32 12
  store %struct.ObjectList_t* %0, %struct.ObjectList_t** %list1, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i32 0, i32 0)) #4
  %call2 = call i32 @get_image_width()
  %call3 = call i32 @get_image_height()
  %call4 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call, i32 %call2, i32 %call3)
  store i8* %call4, i8** %dimension, align 8
  %2 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %dialog.addr, align 8
  %image_dimensions = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %2, i32 0, i32 1
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %image_dimensions, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_label_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call5)
  %5 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkLabel*
  %6 = load i8*, i8** %dimension, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %5, i8* %6)
  %7 = load i8*, i8** %dimension, align 8
  call void @g_free(i8* %7)
  %8 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %dialog.addr, align 8
  %guide_bounds = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %8, i32 0, i32 2
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %guide_bounds, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_label_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkLabel*
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i32 0, i32 0)) #4
  call void @gtk_label_set_text(%struct._GtkLabel* %11, i8* %call9)
  %12 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %dialog.addr, align 8
  %width = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %12, i32 0, i32 3
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %13)
  ret void
}

declare void @default_dialog_show(%struct.DefaultDialog_t*) #1

declare %struct.DefaultDialog_t* @make_default_dialog(i8*) #1

declare void @default_dialog_set_ok_cb(%struct.DefaultDialog_t*, void (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @guides_ok_cb(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %param = alloca %struct.GuidesDialog_t*, align 8
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %left = alloca i32, align 4
  %top = alloca i32, align 4
  %hspace = alloca i32, align 4
  %vspace = alloca i32, align 4
  %rows = alloca i32, align 4
  %cols = alloca i32, align 4
  %x = alloca i32, align 4
  %obj = alloca %struct.Object_t*, align 8
  %command = alloca %struct.Command_t*, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.GuidesDialog_t*
  store %struct.GuidesDialog_t* %1, %struct.GuidesDialog_t** %param, align 8
  %2 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %param, align 8
  %width1 = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %2, i32 0, i32 3
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %width1, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call = call i64 @gtk_spin_button_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkSpinButton*
  %call3 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %5)
  store i32 %call3, i32* %width, align 4
  %6 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %param, align 8
  %height4 = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %6, i32 0, i32 4
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %height4, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_spin_button_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkSpinButton*
  %call7 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %9)
  store i32 %call7, i32* %height, align 4
  %10 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %param, align 8
  %left8 = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %10, i32 0, i32 5
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %left8, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_spin_button_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call9)
  %13 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkSpinButton*
  %call11 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %13)
  store i32 %call11, i32* %left, align 4
  %14 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %param, align 8
  %top12 = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %14, i32 0, i32 6
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %top12, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_spin_button_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call13)
  %17 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkSpinButton*
  %call15 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %17)
  store i32 %call15, i32* %top, align 4
  %18 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %param, align 8
  %horz_spacing = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %18, i32 0, i32 7
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %horz_spacing, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_spin_button_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call16)
  %21 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkSpinButton*
  %call18 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %21)
  store i32 %call18, i32* %hspace, align 4
  %22 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %param, align 8
  %vert_spacing = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %22, i32 0, i32 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %vert_spacing, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_spin_button_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call19)
  %25 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkSpinButton*
  %call21 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %25)
  store i32 %call21, i32* %vspace, align 4
  %26 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %param, align 8
  %no_down = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %26, i32 0, i32 10
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %no_down, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_spin_button_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call22)
  %29 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkSpinButton*
  %call24 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %29)
  store i32 %call24, i32* %rows, align 4
  %30 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %param, align 8
  %no_across = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %30, i32 0, i32 9
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %no_across, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_spin_button_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call25)
  %33 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkSpinButton*
  %call27 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %33)
  store i32 %call27, i32* %cols, align 4
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)) #4
  %call29 = call %struct.Command_t* @subcommand_start(i8* %call28)
  %34 = load i32, i32* %top, align 4
  store i32 %34, i32* %y, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.41, %entry
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* %rows, align 4
  %cmp = icmp slt i32 %35, %36
  br i1 %cmp, label %for.body, label %for.end.43

for.body:                                         ; preds = %for.cond
  %37 = load i32, i32* %left, align 4
  store i32 %37, i32* %x, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc, %for.body
  %38 = load i32, i32* %j, align 4
  %39 = load i32, i32* %cols, align 4
  %cmp31 = icmp slt i32 %38, %39
  br i1 %cmp31, label %for.body.32, label %for.end

for.body.32:                                      ; preds = %for.cond.30
  %40 = load i32, i32* %x, align 4
  %41 = load i32, i32* %y, align 4
  %42 = load i32, i32* %width, align 4
  %43 = load i32, i32* %height, align 4
  %call33 = call %struct.Object_t* @create_rectangle(i32 %40, i32 %41, i32 %42, i32 %43)
  store %struct.Object_t* %call33, %struct.Object_t** %obj, align 8
  %44 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %param, align 8
  %list = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %44, i32 0, i32 12
  %45 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list, align 8
  %46 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %call34 = call %struct.Command_t* @create_command_new(%struct.ObjectList_t* %45, %struct.Object_t* %46)
  store %struct.Command_t* %call34, %struct.Command_t** %command, align 8
  %47 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %48 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %param, align 8
  %base_url = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %48, i32 0, i32 11
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %base_url, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_entry_get_type() #5
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call35)
  %51 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkEntry*
  %call37 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %51)
  call void @object_set_url(%struct.Object_t* %47, i8* %call37)
  %52 = load %struct.Command_t*, %struct.Command_t** %command, align 8
  call void @command_execute(%struct.Command_t* %52)
  %53 = load i32, i32* %width, align 4
  %54 = load i32, i32* %hspace, align 4
  %add = add nsw i32 %53, %54
  %55 = load i32, i32* %x, align 4
  %add38 = add nsw i32 %55, %add
  store i32 %add38, i32* %x, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.32
  %56 = load i32, i32* %j, align 4
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.30

for.end:                                          ; preds = %for.cond.30
  %57 = load i32, i32* %height, align 4
  %58 = load i32, i32* %vspace, align 4
  %add39 = add nsw i32 %57, %58
  %59 = load i32, i32* %y, align 4
  %add40 = add nsw i32 %59, %add39
  store i32 %add40, i32* %y, align 4
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.end
  %60 = load i32, i32* %i, align 4
  %inc42 = add nsw i32 %60, 1
  store i32 %inc42, i32* %i, align 4
  br label %for.cond

for.end.43:                                       ; preds = %for.cond
  call void @subcommand_end()
  ret void
}

declare %struct._GtkWidget* @gimp_hint_box_new(i8*) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #3

declare %struct._GtkWidget* @default_dialog_add_table(%struct.DefaultDialog_t*, i32, i32) #1

declare %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget*, i32, i32, i8*) #1

declare %struct._GtkWidget* @create_spin_button_in_table(%struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i32, i32, i32) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @recalc_bounds(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %param = alloca %struct.GuidesDialog_t*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %left = alloca i32, align 4
  %top = alloca i32, align 4
  %hspace = alloca i32, align 4
  %vspace = alloca i32, align 4
  %rows = alloca i32, align 4
  %cols = alloca i32, align 4
  %bound_w = alloca i32, align 4
  %bound_h = alloca i32, align 4
  %bounds = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.GuidesDialog_t*
  store %struct.GuidesDialog_t* %1, %struct.GuidesDialog_t** %param, align 8
  %2 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %param, align 8
  %width1 = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %2, i32 0, i32 3
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %width1, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call = call i64 @gtk_spin_button_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkSpinButton*
  %call3 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %5)
  store i32 %call3, i32* %width, align 4
  %6 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %param, align 8
  %height4 = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %6, i32 0, i32 4
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %height4, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_spin_button_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkSpinButton*
  %call7 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %9)
  store i32 %call7, i32* %height, align 4
  %10 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %param, align 8
  %left8 = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %10, i32 0, i32 5
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %left8, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_spin_button_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call9)
  %13 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkSpinButton*
  %call11 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %13)
  store i32 %call11, i32* %left, align 4
  %14 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %param, align 8
  %top12 = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %14, i32 0, i32 6
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %top12, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_spin_button_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call13)
  %17 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkSpinButton*
  %call15 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %17)
  store i32 %call15, i32* %top, align 4
  %18 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %param, align 8
  %horz_spacing = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %18, i32 0, i32 7
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %horz_spacing, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_spin_button_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call16)
  %21 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkSpinButton*
  %call18 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %21)
  store i32 %call18, i32* %hspace, align 4
  %22 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %param, align 8
  %vert_spacing = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %22, i32 0, i32 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %vert_spacing, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_spin_button_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call19)
  %25 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkSpinButton*
  %call21 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %25)
  store i32 %call21, i32* %vspace, align 4
  %26 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %param, align 8
  %no_down = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %26, i32 0, i32 10
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %no_down, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_spin_button_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call22)
  %29 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkSpinButton*
  %call24 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %29)
  store i32 %call24, i32* %rows, align 4
  %30 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %param, align 8
  %no_across = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %30, i32 0, i32 9
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %no_across, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_spin_button_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call25)
  %33 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkSpinButton*
  %call27 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %33)
  store i32 %call27, i32* %cols, align 4
  %34 = load i32, i32* %width, align 4
  %35 = load i32, i32* %hspace, align 4
  %add = add nsw i32 %34, %35
  %36 = load i32, i32* %cols, align 4
  %mul = mul nsw i32 %add, %36
  %37 = load i32, i32* %hspace, align 4
  %sub = sub nsw i32 %mul, %37
  store i32 %sub, i32* %bound_w, align 4
  %38 = load i32, i32* %height, align 4
  %39 = load i32, i32* %vspace, align 4
  %add28 = add nsw i32 %38, %39
  %40 = load i32, i32* %rows, align 4
  %mul29 = mul nsw i32 %add28, %40
  %41 = load i32, i32* %vspace, align 4
  %sub30 = sub nsw i32 %mul29, %41
  store i32 %sub30, i32* %bound_h, align 4
  %call31 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.14, i32 0, i32 0)) #4
  %42 = load i32, i32* %left, align 4
  %43 = load i32, i32* %top, align 4
  %44 = load i32, i32* %left, align 4
  %45 = load i32, i32* %bound_w, align 4
  %add32 = add nsw i32 %44, %45
  %46 = load i32, i32* %top, align 4
  %47 = load i32, i32* %bound_h, align 4
  %add33 = add nsw i32 %46, %47
  %48 = load i32, i32* %rows, align 4
  %49 = load i32, i32* %cols, align 4
  %mul34 = mul nsw i32 %48, %49
  %call35 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call31, i32 %42, i32 %43, i32 %add32, i32 %add33, i32 %mul34)
  store i8* %call35, i8** %bounds, align 8
  %50 = load i32, i32* %left, align 4
  %51 = load i32, i32* %bound_w, align 4
  %add36 = add nsw i32 %50, %51
  %call37 = call i32 @get_image_width()
  %cmp = icmp sgt i32 %add36, %call37
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %52 = load i32, i32* %top, align 4
  %53 = load i32, i32* %bound_h, align 4
  %add38 = add nsw i32 %52, %53
  %call39 = call i32 @get_image_height()
  %cmp40 = icmp sgt i32 %add38, %call39
  br i1 %cmp40, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %54 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %param, align 8
  %dialog = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %54, i32 0, i32 0
  %55 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog, align 8
  %dialog41 = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %55, i32 0, i32 0
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog41, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_dialog_get_type() #5
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call42)
  %58 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkDialog*
  call void @gtk_dialog_set_response_sensitive(%struct._GtkDialog* %58, i32 -5, i32 0)
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %59 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %param, align 8
  %dialog44 = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %59, i32 0, i32 0
  %60 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog44, align 8
  %dialog45 = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %60, i32 0, i32 0
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog45, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_dialog_get_type() #5
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call46)
  %63 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkDialog*
  call void @gtk_dialog_set_response_sensitive(%struct._GtkDialog* %63, i32 -5, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %64 = load %struct.GuidesDialog_t*, %struct.GuidesDialog_t** %param, align 8
  %guide_bounds = getelementptr inbounds %struct.GuidesDialog_t, %struct.GuidesDialog_t* %64, i32 0, i32 2
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %guide_bounds, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_label_get_type() #5
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call48)
  %67 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkLabel*
  %68 = load i8*, i8** %bounds, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %67, i8* %68)
  %69 = load i8*, i8** %bounds, align 8
  call void @g_free(i8* %69)
  ret void
}

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

declare %struct._GtkWidget* @gtk_entry_new() #1

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #3

declare i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_spin_button_get_type() #3

declare %struct.Command_t* @subcommand_start(i8*) #1

declare %struct.Object_t* @create_rectangle(i32, i32, i32, i32) #1

declare %struct.Command_t* @create_command_new(%struct.ObjectList_t*, %struct.Object_t*) #1

declare void @object_set_url(%struct.Object_t*, i8*) #1

declare i8* @gtk_entry_get_text(%struct._GtkEntry*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #3

declare void @command_execute(%struct.Command_t*) #1

declare void @subcommand_end() #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i32 @get_image_width() #1

declare i32 @get_image_height() #1

declare void @gtk_dialog_set_response_sensitive(%struct._GtkDialog*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #3

declare void @gtk_label_set_text(%struct._GtkLabel*, i8*) #1

declare void @g_free(i8*) #1

declare void @gtk_widget_grab_focus(%struct._GtkWidget*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
