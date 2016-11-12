; ModuleID = './plug-ins/imagemap/imap_cmd_gimp_guides.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CommandClass_t = type { void (%struct.Command_t*)*, i32 (%struct.Command_t*)*, void (%struct.Command_t*)*, void (%struct.Command_t*)* }
%struct.Command_t = type { %struct.CommandClass_t*, %struct.CommandList_t*, i8*, i32 }
%struct.CommandList_t = type { %struct.CommandList_t*, i32, %struct._GList*, %struct._GList*, %struct._GList*, %struct.CommandListCallback_t }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.CommandListCallback_t = type { %struct._GList* }
%struct.GimpGuidesDialog_t = type { %struct.DefaultDialog_t*, %struct.ObjectList_t*, %struct._GimpDrawable*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct.DefaultDialog_t = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, void (i8*)*, i8*, void (i8*)*, i8*, void (i8*)*, i8* }
%struct.ObjectList_t = type { %struct._GList*, i32, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t }
%struct.ObjectListCallback_t = type { %struct._GList* }
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
%struct.GimpGuidesCommand_t = type { %struct.Command_t, %struct.ObjectList_t*, %struct._GimpDrawable* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkRadioButton = type { %struct._GtkCheckButton, %struct._GSList* }
%struct._GtkCheckButton = type { %struct._GtkToggleButton }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
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
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }

@.str = private unnamed_addr constant [16 x i8] c"Use Gimp Guides\00", align 1
@gimp_guides_command_class = internal global %struct.CommandClass_t { void (%struct.Command_t*)* null, i32 (%struct.Command_t*)* @gimp_guides_command_execute, void (%struct.Command_t*)* null, void (%struct.Command_t*)* null }, align 8
@do_create_gimp_guides_dialog.dialog = internal global %struct.GimpGuidesDialog_t* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"Create\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Al_ternate\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"A_ll\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Add Additional Guides\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"L_eft border\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"_Right border\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"_Upper border\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Lo_wer border\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"_Base URL:\00", align 1

; Function Attrs: nounwind uwtable
define %struct.Command_t* @gimp_guides_command_new(%struct.ObjectList_t* %list, %struct._GimpDrawable* %drawable) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %command = alloca %struct.GimpGuidesCommand_t*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 48)
  %0 = bitcast i8* %call to %struct.GimpGuidesCommand_t*
  store %struct.GimpGuidesCommand_t* %0, %struct.GimpGuidesCommand_t** %command, align 8
  %1 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %2 = load %struct.GimpGuidesCommand_t*, %struct.GimpGuidesCommand_t** %command, align 8
  %list1 = getelementptr inbounds %struct.GimpGuidesCommand_t, %struct.GimpGuidesCommand_t* %2, i32 0, i32 1
  store %struct.ObjectList_t* %1, %struct.ObjectList_t** %list1, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %4 = load %struct.GimpGuidesCommand_t*, %struct.GimpGuidesCommand_t** %command, align 8
  %drawable2 = getelementptr inbounds %struct.GimpGuidesCommand_t, %struct.GimpGuidesCommand_t* %4, i32 0, i32 2
  store %struct._GimpDrawable* %3, %struct._GimpDrawable** %drawable2, align 8
  %5 = load %struct.GimpGuidesCommand_t*, %struct.GimpGuidesCommand_t** %command, align 8
  %parent = getelementptr inbounds %struct.GimpGuidesCommand_t, %struct.GimpGuidesCommand_t* %5, i32 0, i32 0
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0)) #4
  %call4 = call %struct.Command_t* @command_init(%struct.Command_t* %parent, i8* %call3, %struct.CommandClass_t* @gimp_guides_command_class)
  ret %struct.Command_t* %call4
}

declare noalias i8* @g_malloc_n(i64, i64) #1

declare %struct.Command_t* @command_init(%struct.Command_t*, i8*, %struct.CommandClass_t*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @gimp_guides_command_execute(%struct.Command_t* %parent) #0 {
entry:
  %parent.addr = alloca %struct.Command_t*, align 8
  %command = alloca %struct.GimpGuidesCommand_t*, align 8
  store %struct.Command_t* %parent, %struct.Command_t** %parent.addr, align 8
  %0 = load %struct.Command_t*, %struct.Command_t** %parent.addr, align 8
  %1 = bitcast %struct.Command_t* %0 to %struct.GimpGuidesCommand_t*
  store %struct.GimpGuidesCommand_t* %1, %struct.GimpGuidesCommand_t** %command, align 8
  %2 = load %struct.GimpGuidesCommand_t*, %struct.GimpGuidesCommand_t** %command, align 8
  %list = getelementptr inbounds %struct.GimpGuidesCommand_t, %struct.GimpGuidesCommand_t* %2, i32 0, i32 1
  %3 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list, align 8
  %4 = load %struct.GimpGuidesCommand_t*, %struct.GimpGuidesCommand_t** %command, align 8
  %drawable = getelementptr inbounds %struct.GimpGuidesCommand_t, %struct.GimpGuidesCommand_t* %4, i32 0, i32 2
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @do_create_gimp_guides_dialog(%struct.ObjectList_t* %3, %struct._GimpDrawable* %5)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @do_create_gimp_guides_dialog(%struct.ObjectList_t* %list, %struct._GimpDrawable* %drawable) #0 {
entry:
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct.GimpGuidesDialog_t*, %struct.GimpGuidesDialog_t** @do_create_gimp_guides_dialog.dialog, align 8
  %tobool = icmp ne %struct.GimpGuidesDialog_t* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct.GimpGuidesDialog_t* @make_gimp_guides_dialog()
  store %struct.GimpGuidesDialog_t* %call, %struct.GimpGuidesDialog_t** @do_create_gimp_guides_dialog.dialog, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.GimpGuidesDialog_t*, %struct.GimpGuidesDialog_t** @do_create_gimp_guides_dialog.dialog, align 8
  %2 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @init_gimp_guides_dialog(%struct.GimpGuidesDialog_t* %1, %struct.ObjectList_t* %2, %struct._GimpDrawable* %3)
  %4 = load %struct.GimpGuidesDialog_t*, %struct.GimpGuidesDialog_t** @do_create_gimp_guides_dialog.dialog, align 8
  %dialog = getelementptr inbounds %struct.GimpGuidesDialog_t, %struct.GimpGuidesDialog_t* %4, i32 0, i32 0
  %5 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog, align 8
  call void @default_dialog_show(%struct.DefaultDialog_t* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.GimpGuidesDialog_t* @make_gimp_guides_dialog() #0 {
entry:
  %data = alloca %struct.GimpGuidesDialog_t*, align 8
  %dialog = alloca %struct.DefaultDialog_t*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 80)
  %0 = bitcast i8* %call to %struct.GimpGuidesDialog_t*
  store %struct.GimpGuidesDialog_t* %0, %struct.GimpGuidesDialog_t** %data, align 8
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0)) #4
  %call2 = call %struct.DefaultDialog_t* @make_default_dialog(i8* %call1)
  %1 = load %struct.GimpGuidesDialog_t*, %struct.GimpGuidesDialog_t** %data, align 8
  %dialog3 = getelementptr inbounds %struct.GimpGuidesDialog_t, %struct.GimpGuidesDialog_t* %1, i32 0, i32 0
  store %struct.DefaultDialog_t* %call2, %struct.DefaultDialog_t** %dialog3, align 8
  store %struct.DefaultDialog_t* %call2, %struct.DefaultDialog_t** %dialog, align 8
  %2 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog, align 8
  %3 = load %struct.GimpGuidesDialog_t*, %struct.GimpGuidesDialog_t** %data, align 8
  %4 = bitcast %struct.GimpGuidesDialog_t* %3 to i8*
  call void @default_dialog_set_ok_cb(%struct.DefaultDialog_t* %2, void (i8*)* @gimp_guides_ok_cb, i8* %4)
  %5 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog, align 8
  %call4 = call %struct._GtkWidget* @default_dialog_add_table(%struct.DefaultDialog_t* %5, i32 3, i32 2)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %table, align 8
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0)) #4
  %call6 = call %struct._GtkWidget* @gimp_frame_new(i8* %call5)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %frame, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %6)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_table_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call7)
  %9 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkTable*
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %9, %struct._GtkWidget* %10, i32 0, i32 1, i32 0, i32 1)
  %call9 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %hbox, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_container_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call10)
  %13 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkContainer*
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %13, %struct._GtkWidget* %14)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0)) #4
  %call13 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic_from_widget(%struct._GtkRadioButton* null, i8* %call12)
  %16 = load %struct.GimpGuidesDialog_t*, %struct.GimpGuidesDialog_t** %data, align 8
  %alternate = getelementptr inbounds %struct.GimpGuidesDialog_t, %struct.GimpGuidesDialog_t* %16, i32 0, i32 3
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %alternate, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_box_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call14)
  %19 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkBox*
  %20 = load %struct.GimpGuidesDialog_t*, %struct.GimpGuidesDialog_t** %data, align 8
  %alternate16 = getelementptr inbounds %struct.GimpGuidesDialog_t, %struct.GimpGuidesDialog_t* %20, i32 0, i32 3
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %alternate16, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %19, %struct._GtkWidget* %21, i32 0, i32 0, i32 0)
  %22 = load %struct.GimpGuidesDialog_t*, %struct.GimpGuidesDialog_t** %data, align 8
  %alternate17 = getelementptr inbounds %struct.GimpGuidesDialog_t, %struct.GimpGuidesDialog_t* %22, i32 0, i32 3
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %alternate17, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %23)
  %24 = load %struct.GimpGuidesDialog_t*, %struct.GimpGuidesDialog_t** %data, align 8
  %alternate18 = getelementptr inbounds %struct.GimpGuidesDialog_t, %struct.GimpGuidesDialog_t* %24, i32 0, i32 3
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %alternate18, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_radio_button_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call19)
  %27 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkRadioButton*
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)) #4
  %call22 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic_from_widget(%struct._GtkRadioButton* %27, i8* %call21)
  %28 = load %struct.GimpGuidesDialog_t*, %struct.GimpGuidesDialog_t** %data, align 8
  %all = getelementptr inbounds %struct.GimpGuidesDialog_t, %struct.GimpGuidesDialog_t* %28, i32 0, i32 4
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %all, align 8
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call23)
  %31 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %32 = load %struct.GimpGuidesDialog_t*, %struct.GimpGuidesDialog_t** %data, align 8
  %all25 = getelementptr inbounds %struct.GimpGuidesDialog_t, %struct.GimpGuidesDialog_t* %32, i32 0, i32 4
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %all25, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %31, %struct._GtkWidget* %33, i32 0, i32 0, i32 0)
  %34 = load %struct.GimpGuidesDialog_t*, %struct.GimpGuidesDialog_t** %data, align 8
  %all26 = getelementptr inbounds %struct.GimpGuidesDialog_t, %struct.GimpGuidesDialog_t* %34, i32 0, i32 4
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %all26, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %35)
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0)) #4
  %call28 = call %struct._GtkWidget* @gimp_frame_new(i8* %call27)
  store %struct._GtkWidget* %call28, %struct._GtkWidget** %frame, align 8
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %36)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_table_get_type() #5
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call29)
  %39 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkTable*
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %39, %struct._GtkWidget* %40, i32 0, i32 1, i32 1, i32 2)
  %call31 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 2)
  store %struct._GtkWidget* %call31, %struct._GtkWidget** %vbox, align 8
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_container_get_type() #5
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call32)
  %43 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkContainer*
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %43, %struct._GtkWidget* %44)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %45)
  %call34 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)) #4
  %call35 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call34)
  %46 = load %struct.GimpGuidesDialog_t*, %struct.GimpGuidesDialog_t** %data, align 8
  %left_border = getelementptr inbounds %struct.GimpGuidesDialog_t, %struct.GimpGuidesDialog_t* %46, i32 0, i32 5
  store %struct._GtkWidget* %call35, %struct._GtkWidget** %left_border, align 8
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_container_get_type() #5
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call36)
  %49 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkContainer*
  %50 = load %struct.GimpGuidesDialog_t*, %struct.GimpGuidesDialog_t** %data, align 8
  %left_border38 = getelementptr inbounds %struct.GimpGuidesDialog_t, %struct.GimpGuidesDialog_t* %50, i32 0, i32 5
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %left_border38, align 8
  call void @gtk_container_add(%struct._GtkContainer* %49, %struct._GtkWidget* %51)
  %52 = load %struct.GimpGuidesDialog_t*, %struct.GimpGuidesDialog_t** %data, align 8
  %left_border39 = getelementptr inbounds %struct.GimpGuidesDialog_t, %struct.GimpGuidesDialog_t* %52, i32 0, i32 5
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %left_border39, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %53)
  %call40 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0)) #4
  %call41 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call40)
  %54 = load %struct.GimpGuidesDialog_t*, %struct.GimpGuidesDialog_t** %data, align 8
  %right_border = getelementptr inbounds %struct.GimpGuidesDialog_t, %struct.GimpGuidesDialog_t* %54, i32 0, i32 6
  store %struct._GtkWidget* %call41, %struct._GtkWidget** %right_border, align 8
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_container_get_type() #5
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call42)
  %57 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkContainer*
  %58 = load %struct.GimpGuidesDialog_t*, %struct.GimpGuidesDialog_t** %data, align 8
  %right_border44 = getelementptr inbounds %struct.GimpGuidesDialog_t, %struct.GimpGuidesDialog_t* %58, i32 0, i32 6
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %right_border44, align 8
  call void @gtk_container_add(%struct._GtkContainer* %57, %struct._GtkWidget* %59)
  %60 = load %struct.GimpGuidesDialog_t*, %struct.GimpGuidesDialog_t** %data, align 8
  %right_border45 = getelementptr inbounds %struct.GimpGuidesDialog_t, %struct.GimpGuidesDialog_t* %60, i32 0, i32 6
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %right_border45, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %61)
  %call46 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0)) #4
  %call47 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call46)
  %62 = load %struct.GimpGuidesDialog_t*, %struct.GimpGuidesDialog_t** %data, align 8
  %upper_border = getelementptr inbounds %struct.GimpGuidesDialog_t, %struct.GimpGuidesDialog_t* %62, i32 0, i32 7
  store %struct._GtkWidget* %call47, %struct._GtkWidget** %upper_border, align 8
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_container_get_type() #5
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call48)
  %65 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkContainer*
  %66 = load %struct.GimpGuidesDialog_t*, %struct.GimpGuidesDialog_t** %data, align 8
  %upper_border50 = getelementptr inbounds %struct.GimpGuidesDialog_t, %struct.GimpGuidesDialog_t* %66, i32 0, i32 7
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %upper_border50, align 8
  call void @gtk_container_add(%struct._GtkContainer* %65, %struct._GtkWidget* %67)
  %68 = load %struct.GimpGuidesDialog_t*, %struct.GimpGuidesDialog_t** %data, align 8
  %upper_border51 = getelementptr inbounds %struct.GimpGuidesDialog_t, %struct.GimpGuidesDialog_t* %68, i32 0, i32 7
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %upper_border51, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %69)
  %call52 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0)) #4
  %call53 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call52)
  %70 = load %struct.GimpGuidesDialog_t*, %struct.GimpGuidesDialog_t** %data, align 8
  %lower_border = getelementptr inbounds %struct.GimpGuidesDialog_t, %struct.GimpGuidesDialog_t* %70, i32 0, i32 8
  store %struct._GtkWidget* %call53, %struct._GtkWidget** %lower_border, align 8
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %72 = bitcast %struct._GtkWidget* %71 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_container_get_type() #5
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call54)
  %73 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkContainer*
  %74 = load %struct.GimpGuidesDialog_t*, %struct.GimpGuidesDialog_t** %data, align 8
  %lower_border56 = getelementptr inbounds %struct.GimpGuidesDialog_t, %struct.GimpGuidesDialog_t* %74, i32 0, i32 8
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %lower_border56, align 8
  call void @gtk_container_add(%struct._GtkContainer* %73, %struct._GtkWidget* %75)
  %76 = load %struct.GimpGuidesDialog_t*, %struct.GimpGuidesDialog_t** %data, align 8
  %lower_border57 = getelementptr inbounds %struct.GimpGuidesDialog_t, %struct.GimpGuidesDialog_t* %76, i32 0, i32 8
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %lower_border57, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %77)
  %call58 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call58, %struct._GtkWidget** %hbox, align 8
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call59 = call i64 @gtk_table_get_type() #5
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call59)
  %80 = bitcast %struct._GTypeInstance* %call60 to %struct._GtkTable*
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %80, %struct._GtkWidget* %81, i32 0, i32 2, i32 2, i32 3)
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %82)
  %call61 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0)) #4
  %call62 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call61)
  store %struct._GtkWidget* %call62, %struct._GtkWidget** %label, align 8
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %83)
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %85 = bitcast %struct._GtkWidget* %84 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_box_get_type() #5
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call63)
  %86 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkBox*
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %86, %struct._GtkWidget* %87, i32 0, i32 0, i32 0)
  %call65 = call %struct._GtkWidget* @gtk_entry_new()
  %88 = load %struct.GimpGuidesDialog_t*, %struct.GimpGuidesDialog_t** %data, align 8
  %url = getelementptr inbounds %struct.GimpGuidesDialog_t, %struct.GimpGuidesDialog_t* %88, i32 0, i32 9
  store %struct._GtkWidget* %call65, %struct._GtkWidget** %url, align 8
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %90 = bitcast %struct._GtkWidget* %89 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_container_get_type() #5
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call66)
  %91 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkContainer*
  %92 = load %struct.GimpGuidesDialog_t*, %struct.GimpGuidesDialog_t** %data, align 8
  %url68 = getelementptr inbounds %struct.GimpGuidesDialog_t, %struct.GimpGuidesDialog_t* %92, i32 0, i32 9
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %url68, align 8
  call void @gtk_container_add(%struct._GtkContainer* %91, %struct._GtkWidget* %93)
  %94 = load %struct.GimpGuidesDialog_t*, %struct.GimpGuidesDialog_t** %data, align 8
  %url69 = getelementptr inbounds %struct.GimpGuidesDialog_t, %struct.GimpGuidesDialog_t* %94, i32 0, i32 9
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %url69, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %95)
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %97 = bitcast %struct._GtkWidget* %96 to %struct._GTypeInstance*
  %call70 = call i64 @gtk_label_get_type() #5
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 %call70)
  %98 = bitcast %struct._GTypeInstance* %call71 to %struct._GtkLabel*
  %99 = load %struct.GimpGuidesDialog_t*, %struct.GimpGuidesDialog_t** %data, align 8
  %url72 = getelementptr inbounds %struct.GimpGuidesDialog_t, %struct.GimpGuidesDialog_t* %99, i32 0, i32 9
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %url72, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %98, %struct._GtkWidget* %100)
  %101 = load %struct.GimpGuidesDialog_t*, %struct.GimpGuidesDialog_t** %data, align 8
  ret %struct.GimpGuidesDialog_t* %101
}

; Function Attrs: nounwind uwtable
define internal void @init_gimp_guides_dialog(%struct.GimpGuidesDialog_t* %dialog, %struct.ObjectList_t* %list, %struct._GimpDrawable* %drawable) #0 {
entry:
  %dialog.addr = alloca %struct.GimpGuidesDialog_t*, align 8
  %list.addr = alloca %struct.ObjectList_t*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  store %struct.GimpGuidesDialog_t* %dialog, %struct.GimpGuidesDialog_t** %dialog.addr, align 8
  store %struct.ObjectList_t* %list, %struct.ObjectList_t** %list.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list.addr, align 8
  %1 = load %struct.GimpGuidesDialog_t*, %struct.GimpGuidesDialog_t** %dialog.addr, align 8
  %list1 = getelementptr inbounds %struct.GimpGuidesDialog_t, %struct.GimpGuidesDialog_t* %1, i32 0, i32 1
  store %struct.ObjectList_t* %0, %struct.ObjectList_t** %list1, align 8
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %3 = load %struct.GimpGuidesDialog_t*, %struct.GimpGuidesDialog_t** %dialog.addr, align 8
  %drawable2 = getelementptr inbounds %struct.GimpGuidesDialog_t, %struct.GimpGuidesDialog_t* %3, i32 0, i32 2
  store %struct._GimpDrawable* %2, %struct._GimpDrawable** %drawable2, align 8
  ret void
}

declare void @default_dialog_show(%struct.DefaultDialog_t*) #1

declare %struct.DefaultDialog_t* @make_default_dialog(i8*) #1

declare void @default_dialog_set_ok_cb(%struct.DefaultDialog_t*, void (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_guides_ok_cb(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %param = alloca %struct.GimpGuidesDialog_t*, align 8
  %guide_num = alloca i32, align 4
  %hguides = alloca %struct._GSList*, align 8
  %hg = alloca %struct._GSList*, align 8
  %vguides = alloca %struct._GSList*, align 8
  %vg = alloca %struct._GSList*, align 8
  %all = alloca i32, align 4
  %url = alloca i8*, align 8
  %image_ID = alloca i32, align 4
  %position = alloca i32, align 4
  %y = alloca i32, align 4
  %height = alloca i32, align 4
  %x = alloca i32, align 4
  %width = alloca i32, align 4
  %obj = alloca %struct.Object_t*, align 8
  %command = alloca %struct.Command_t*, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.GimpGuidesDialog_t*
  store %struct.GimpGuidesDialog_t* %1, %struct.GimpGuidesDialog_t** %param, align 8
  %2 = load %struct.GimpGuidesDialog_t*, %struct.GimpGuidesDialog_t** %param, align 8
  %drawable = getelementptr inbounds %struct.GimpGuidesDialog_t, %struct.GimpGuidesDialog_t* %2, i32 0, i32 2
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 0
  %4 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_item_get_image(i32 %4)
  store i32 %call, i32* %image_ID, align 4
  %5 = load %struct.GimpGuidesDialog_t*, %struct.GimpGuidesDialog_t** %param, align 8
  %all1 = getelementptr inbounds %struct.GimpGuidesDialog_t, %struct.GimpGuidesDialog_t* %5, i32 0, i32 4
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %all1, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_toggle_button_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call2)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkToggleButton*
  %call4 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %8)
  store i32 %call4, i32* %all, align 4
  %9 = load %struct.GimpGuidesDialog_t*, %struct.GimpGuidesDialog_t** %param, align 8
  %left_border = getelementptr inbounds %struct.GimpGuidesDialog_t, %struct.GimpGuidesDialog_t* %9, i32 0, i32 5
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %left_border, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_toggle_button_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call5)
  %12 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkToggleButton*
  %call7 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %12)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call8 = call %struct._GSList* @g_slist_append(%struct._GSList* null, i8* null)
  store %struct._GSList* %call8, %struct._GSList** %vguides, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store %struct._GSList* null, %struct._GSList** %vguides, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load %struct.GimpGuidesDialog_t*, %struct.GimpGuidesDialog_t** %param, align 8
  %right_border = getelementptr inbounds %struct.GimpGuidesDialog_t, %struct.GimpGuidesDialog_t* %13, i32 0, i32 6
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %right_border, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_toggle_button_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call9)
  %16 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkToggleButton*
  %call11 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %16)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end
  %17 = load %struct._GSList*, %struct._GSList** %vguides, align 8
  %18 = load i32, i32* %image_ID, align 4
  %call14 = call i32 @gimp_image_width(i32 %18)
  %conv = sext i32 %call14 to i64
  %19 = inttoptr i64 %conv to i8*
  %call15 = call %struct._GSList* @g_slist_append(%struct._GSList* %17, i8* %19)
  store %struct._GSList* %call15, %struct._GSList** %vguides, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.end
  %20 = load %struct.GimpGuidesDialog_t*, %struct.GimpGuidesDialog_t** %param, align 8
  %upper_border = getelementptr inbounds %struct.GimpGuidesDialog_t, %struct.GimpGuidesDialog_t* %20, i32 0, i32 7
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %upper_border, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_toggle_button_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call17)
  %23 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkToggleButton*
  %call19 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %23)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %if.end.16
  %call22 = call %struct._GSList* @g_slist_append(%struct._GSList* null, i8* null)
  store %struct._GSList* %call22, %struct._GSList** %hguides, align 8
  br label %if.end.24

if.else.23:                                       ; preds = %if.end.16
  store %struct._GSList* null, %struct._GSList** %hguides, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.23, %if.then.21
  %24 = load %struct.GimpGuidesDialog_t*, %struct.GimpGuidesDialog_t** %param, align 8
  %lower_border = getelementptr inbounds %struct.GimpGuidesDialog_t, %struct.GimpGuidesDialog_t* %24, i32 0, i32 8
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %lower_border, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_toggle_button_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call25)
  %27 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkToggleButton*
  %call27 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %27)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.33

if.then.29:                                       ; preds = %if.end.24
  %28 = load %struct._GSList*, %struct._GSList** %hguides, align 8
  %29 = load i32, i32* %image_ID, align 4
  %call30 = call i32 @gimp_image_height(i32 %29)
  %conv31 = sext i32 %call30 to i64
  %30 = inttoptr i64 %conv31 to i8*
  %call32 = call %struct._GSList* @g_slist_append(%struct._GSList* %28, i8* %30)
  store %struct._GSList* %call32, %struct._GSList** %hguides, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.29, %if.end.24
  %31 = load %struct.GimpGuidesDialog_t*, %struct.GimpGuidesDialog_t** %param, align 8
  %url34 = getelementptr inbounds %struct.GimpGuidesDialog_t, %struct.GimpGuidesDialog_t* %31, i32 0, i32 9
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %url34, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_entry_get_type() #5
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call35)
  %34 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkEntry*
  %call37 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %34)
  store i8* %call37, i8** %url, align 8
  %35 = load i32, i32* %image_ID, align 4
  %call38 = call i32 @gimp_image_find_next_guide(i32 %35, i32 0)
  store i32 %call38, i32* %guide_num, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.50, %if.end.33
  %36 = load i32, i32* %guide_num, align 4
  %cmp = icmp sgt i32 %36, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %37 = load i32, i32* %image_ID, align 4
  %38 = load i32, i32* %guide_num, align 4
  %call40 = call i32 @gimp_image_get_guide_position(i32 %37, i32 %38)
  store i32 %call40, i32* %position, align 4
  %39 = load i32, i32* %image_ID, align 4
  %40 = load i32, i32* %guide_num, align 4
  %call41 = call i32 @gimp_image_get_guide_orientation(i32 %39, i32 %40)
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %if.then.44, label %if.else.47

if.then.44:                                       ; preds = %while.body
  %41 = load %struct._GSList*, %struct._GSList** %hguides, align 8
  %42 = load i32, i32* %position, align 4
  %conv45 = sext i32 %42 to i64
  %43 = inttoptr i64 %conv45 to i8*
  %call46 = call %struct._GSList* @g_slist_insert_sorted(%struct._GSList* %41, i8* %43, i32 (i8*, i8*)* @guide_sort_func)
  store %struct._GSList* %call46, %struct._GSList** %hguides, align 8
  br label %if.end.50

if.else.47:                                       ; preds = %while.body
  %44 = load %struct._GSList*, %struct._GSList** %vguides, align 8
  %45 = load i32, i32* %position, align 4
  %conv48 = sext i32 %45 to i64
  %46 = inttoptr i64 %conv48 to i8*
  %call49 = call %struct._GSList* @g_slist_insert_sorted(%struct._GSList* %44, i8* %46, i32 (i8*, i8*)* @guide_sort_func)
  store %struct._GSList* %call49, %struct._GSList** %vguides, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.47, %if.then.44
  %47 = load i32, i32* %image_ID, align 4
  %48 = load i32, i32* %guide_num, align 4
  %call51 = call i32 @gimp_image_find_next_guide(i32 %47, i32 %48)
  store i32 %call51, i32* %guide_num, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call52 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0)) #4
  %call53 = call %struct.Command_t* @subcommand_start(i8* %call52)
  %49 = load %struct._GSList*, %struct._GSList** %hguides, align 8
  store %struct._GSList* %49, %struct._GSList** %hg, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.87, %while.end
  %50 = load %struct._GSList*, %struct._GSList** %hg, align 8
  %tobool54 = icmp ne %struct._GSList* %50, null
  br i1 %tobool54, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %51 = load %struct._GSList*, %struct._GSList** %hg, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %51, i32 0, i32 1
  %52 = load %struct._GSList*, %struct._GSList** %next, align 8
  %tobool55 = icmp ne %struct._GSList* %52, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %53 = phi i1 [ false, %for.cond ], [ %tobool55, %land.rhs ]
  br i1 %53, label %for.body, label %for.end.89

for.body:                                         ; preds = %land.end
  %54 = load %struct._GSList*, %struct._GSList** %hg, align 8
  %data56 = getelementptr inbounds %struct._GSList, %struct._GSList* %54, i32 0, i32 0
  %55 = load i8*, i8** %data56, align 8
  %56 = ptrtoint i8* %55 to i64
  %conv57 = trunc i64 %56 to i32
  store i32 %conv57, i32* %y, align 4
  %57 = load %struct._GSList*, %struct._GSList** %hg, align 8
  %next58 = getelementptr inbounds %struct._GSList, %struct._GSList* %57, i32 0, i32 1
  %58 = load %struct._GSList*, %struct._GSList** %next58, align 8
  %data59 = getelementptr inbounds %struct._GSList, %struct._GSList* %58, i32 0, i32 0
  %59 = load i8*, i8** %data59, align 8
  %60 = ptrtoint i8* %59 to i64
  %conv60 = trunc i64 %60 to i32
  %61 = load i32, i32* %y, align 4
  %sub = sub nsw i32 %conv60, %61
  store i32 %sub, i32* %height, align 4
  %62 = load %struct._GSList*, %struct._GSList** %vguides, align 8
  store %struct._GSList* %62, %struct._GSList** %vg, align 8
  br label %for.cond.61

for.cond.61:                                      ; preds = %cond.end, %for.body
  %63 = load %struct._GSList*, %struct._GSList** %vg, align 8
  %tobool62 = icmp ne %struct._GSList* %63, null
  br i1 %tobool62, label %land.rhs.63, label %land.end.66

land.rhs.63:                                      ; preds = %for.cond.61
  %64 = load %struct._GSList*, %struct._GSList** %vg, align 8
  %next64 = getelementptr inbounds %struct._GSList, %struct._GSList* %64, i32 0, i32 1
  %65 = load %struct._GSList*, %struct._GSList** %next64, align 8
  %tobool65 = icmp ne %struct._GSList* %65, null
  br label %land.end.66

land.end.66:                                      ; preds = %land.rhs.63, %for.cond.61
  %66 = phi i1 [ false, %for.cond.61 ], [ %tobool65, %land.rhs.63 ]
  br i1 %66, label %for.body.67, label %for.end

for.body.67:                                      ; preds = %land.end.66
  %67 = load %struct._GSList*, %struct._GSList** %vg, align 8
  %data68 = getelementptr inbounds %struct._GSList, %struct._GSList* %67, i32 0, i32 0
  %68 = load i8*, i8** %data68, align 8
  %69 = ptrtoint i8* %68 to i64
  %conv69 = trunc i64 %69 to i32
  store i32 %conv69, i32* %x, align 4
  %70 = load %struct._GSList*, %struct._GSList** %vg, align 8
  %next70 = getelementptr inbounds %struct._GSList, %struct._GSList* %70, i32 0, i32 1
  %71 = load %struct._GSList*, %struct._GSList** %next70, align 8
  %data71 = getelementptr inbounds %struct._GSList, %struct._GSList* %71, i32 0, i32 0
  %72 = load i8*, i8** %data71, align 8
  %73 = ptrtoint i8* %72 to i64
  %conv72 = trunc i64 %73 to i32
  %74 = load i32, i32* %x, align 4
  %sub73 = sub nsw i32 %conv72, %74
  store i32 %sub73, i32* %width, align 4
  %75 = load i32, i32* %x, align 4
  %76 = load i32, i32* %y, align 4
  %77 = load i32, i32* %width, align 4
  %78 = load i32, i32* %height, align 4
  %call74 = call %struct.Object_t* @create_rectangle(i32 %75, i32 %76, i32 %77, i32 %78)
  store %struct.Object_t* %call74, %struct.Object_t** %obj, align 8
  %79 = load %struct.GimpGuidesDialog_t*, %struct.GimpGuidesDialog_t** %param, align 8
  %list = getelementptr inbounds %struct.GimpGuidesDialog_t, %struct.GimpGuidesDialog_t* %79, i32 0, i32 1
  %80 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list, align 8
  %81 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %call75 = call %struct.Command_t* @create_command_new(%struct.ObjectList_t* %80, %struct.Object_t* %81)
  store %struct.Command_t* %call75, %struct.Command_t** %command, align 8
  %82 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %83 = load i8*, i8** %url, align 8
  call void @object_set_url(%struct.Object_t* %82, i8* %83)
  %84 = load %struct.Command_t*, %struct.Command_t** %command, align 8
  call void @command_execute(%struct.Command_t* %84)
  br label %for.inc

for.inc:                                          ; preds = %for.body.67
  %85 = load i32, i32* %all, align 4
  %tobool76 = icmp ne i32 %85, 0
  br i1 %tobool76, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %86 = load %struct._GSList*, %struct._GSList** %vg, align 8
  %next77 = getelementptr inbounds %struct._GSList, %struct._GSList* %86, i32 0, i32 1
  %87 = load %struct._GSList*, %struct._GSList** %next77, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  %88 = load %struct._GSList*, %struct._GSList** %vg, align 8
  %next78 = getelementptr inbounds %struct._GSList, %struct._GSList* %88, i32 0, i32 1
  %89 = load %struct._GSList*, %struct._GSList** %next78, align 8
  %next79 = getelementptr inbounds %struct._GSList, %struct._GSList* %89, i32 0, i32 1
  %90 = load %struct._GSList*, %struct._GSList** %next79, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %87, %cond.true ], [ %90, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %vg, align 8
  br label %for.cond.61

for.end:                                          ; preds = %land.end.66
  br label %for.inc.80

for.inc.80:                                       ; preds = %for.end
  %91 = load i32, i32* %all, align 4
  %tobool81 = icmp ne i32 %91, 0
  br i1 %tobool81, label %cond.true.82, label %cond.false.84

cond.true.82:                                     ; preds = %for.inc.80
  %92 = load %struct._GSList*, %struct._GSList** %hg, align 8
  %next83 = getelementptr inbounds %struct._GSList, %struct._GSList* %92, i32 0, i32 1
  %93 = load %struct._GSList*, %struct._GSList** %next83, align 8
  br label %cond.end.87

cond.false.84:                                    ; preds = %for.inc.80
  %94 = load %struct._GSList*, %struct._GSList** %hg, align 8
  %next85 = getelementptr inbounds %struct._GSList, %struct._GSList* %94, i32 0, i32 1
  %95 = load %struct._GSList*, %struct._GSList** %next85, align 8
  %next86 = getelementptr inbounds %struct._GSList, %struct._GSList* %95, i32 0, i32 1
  %96 = load %struct._GSList*, %struct._GSList** %next86, align 8
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.false.84, %cond.true.82
  %cond88 = phi %struct._GSList* [ %93, %cond.true.82 ], [ %96, %cond.false.84 ]
  store %struct._GSList* %cond88, %struct._GSList** %hg, align 8
  br label %for.cond

for.end.89:                                       ; preds = %land.end
  call void @subcommand_end()
  call void @preview_redraw()
  ret void
}

declare %struct._GtkWidget* @default_dialog_add_table(%struct.DefaultDialog_t*, i32, i32) #1

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @gtk_table_attach_defaults(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic_from_widget(%struct._GtkRadioButton*, i8*) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_button_get_type() #3

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

declare %struct._GtkWidget* @gtk_entry_new() #1

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #3

declare i32 @gimp_item_get_image(i32) #1

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #1

declare i32 @gimp_image_width(i32) #1

declare i32 @gimp_image_height(i32) #1

declare i8* @gtk_entry_get_text(%struct._GtkEntry*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #3

declare i32 @gimp_image_find_next_guide(i32, i32) #1

declare i32 @gimp_image_get_guide_position(i32, i32) #1

declare i32 @gimp_image_get_guide_orientation(i32, i32) #1

declare %struct._GSList* @g_slist_insert_sorted(%struct._GSList*, i8*, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @guide_sort_func(i8* %a, i8* %b) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  %conv = trunc i64 %1 to i32
  %2 = load i8*, i8** %b.addr, align 8
  %3 = ptrtoint i8* %2 to i64
  %conv1 = trunc i64 %3 to i32
  %sub = sub nsw i32 %conv, %conv1
  ret i32 %sub
}

declare %struct.Command_t* @subcommand_start(i8*) #1

declare %struct.Object_t* @create_rectangle(i32, i32, i32, i32) #1

declare %struct.Command_t* @create_command_new(%struct.ObjectList_t*, %struct.Object_t*) #1

declare void @object_set_url(%struct.Object_t*, i8*) #1

declare void @command_execute(%struct.Command_t*) #1

declare void @subcommand_end() #1

declare void @preview_redraw() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
