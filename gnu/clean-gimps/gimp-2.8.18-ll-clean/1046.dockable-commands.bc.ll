; ModuleID = './app/actions/dockable-commands.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkActionPrivate = type opaque
%struct._GimpDockbook = type { %struct._GtkNotebook, %struct._GimpDockbookPrivate* }
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
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
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpDockbookPrivate = type opaque
%struct._GimpDockable = type { %struct._GtkBin, %struct._GimpDockablePrivate* }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GimpDockablePrivate = type opaque
%struct._GtkToggleAction = type { %struct._GtkAction, %struct._GtkToggleActionPrivate* }
%struct._GtkToggleActionPrivate = type opaque
%struct._GimpDialogFactoryEntry = type { i8*, i8*, i8*, i8*, i8*, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)*, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GimpContext = type opaque
%struct._GimpUIManager = type opaque
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpSessionInfo = type { %struct._GimpObject, %struct._GimpSessionInfoPrivate* }
%struct._GimpSessionInfoPrivate = type opaque
%struct._GimpContainerView = type opaque
%struct._GimpDock = type { %struct._GtkBox, %struct._GimpDockPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpDockPrivate = type opaque
%struct._GimpDocked = type opaque
%struct._GtkRadioAction = type { %struct._GtkToggleAction, %struct._GtkRadioActionPrivate* }
%struct._GtkRadioActionPrivate = type opaque

@.str = private unnamed_addr constant [5 x i8] c"grid\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"list\00", align 1

; Function Attrs: nounwind uwtable
define void @dockable_add_tab_cmd_callback(%struct._GtkAction* %action, i8* %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %dockbook = alloca %struct._GimpDockbook*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dockbook_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDockbook*
  store %struct._GimpDockbook* %2, %struct._GimpDockbook** %dockbook, align 8
  %3 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %4 = load i8*, i8** %value.addr, align 8
  %call2 = call %struct._GtkWidget* @gimp_dockbook_add_from_dialog_factory(%struct._GimpDockbook* %3, i8* %4, i32 -1)
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dockbook_get_type() #2

declare %struct._GtkWidget* @gimp_dockbook_add_from_dialog_factory(%struct._GimpDockbook*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @dockable_close_tab_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %dockbook = alloca %struct._GimpDockbook*, align 8
  %dockable = alloca %struct._GimpDockable*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dockbook_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDockbook*
  store %struct._GimpDockbook* %2, %struct._GimpDockbook** %dockbook, align 8
  %3 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %call2 = call %struct._GimpDockable* @dockable_get_current(%struct._GimpDockbook* %3)
  store %struct._GimpDockable* %call2, %struct._GimpDockable** %dockable, align 8
  %4 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %tobool = icmp ne %struct._GimpDockable* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %6 = bitcast %struct._GimpDockable* %5 to i8*
  %call3 = call i8* @g_object_ref(i8* %6)
  %7 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %8 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  call void @gimp_dockbook_remove(%struct._GimpDockbook* %7, %struct._GimpDockable* %8)
  %9 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %10 = bitcast %struct._GimpDockable* %9 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_widget_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call4)
  %11 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWidget*
  call void @gtk_widget_destroy(%struct._GtkWidget* %11)
  %12 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %13 = bitcast %struct._GimpDockable* %12 to i8*
  call void @g_object_unref(i8* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpDockable* @dockable_get_current(%struct._GimpDockbook* %dockbook) #0 {
entry:
  %dockbook.addr = alloca %struct._GimpDockbook*, align 8
  %page_num = alloca i32, align 4
  store %struct._GimpDockbook* %dockbook, %struct._GimpDockbook** %dockbook.addr, align 8
  %0 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %1 = bitcast %struct._GimpDockbook* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_notebook_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkNotebook*
  %call2 = call i32 @gtk_notebook_get_current_page(%struct._GtkNotebook* %2)
  store i32 %call2, i32* %page_num, align 4
  %3 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %4 = bitcast %struct._GimpDockbook* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_notebook_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkNotebook*
  %6 = load i32, i32* %page_num, align 4
  %call5 = call %struct._GtkWidget* @gtk_notebook_get_nth_page(%struct._GtkNotebook* %5, i32 %6)
  %7 = bitcast %struct._GtkWidget* %call5 to %struct._GimpDockable*
  ret %struct._GimpDockable* %7
}

declare i8* @g_object_ref(i8*) #1

declare void @gimp_dockbook_remove(%struct._GimpDockbook*, %struct._GimpDockable*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define void @dockable_detach_tab_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %dockbook = alloca %struct._GimpDockbook*, align 8
  %dockable = alloca %struct._GimpDockable*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dockbook_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDockbook*
  store %struct._GimpDockbook* %2, %struct._GimpDockbook** %dockbook, align 8
  %3 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %call2 = call %struct._GimpDockable* @dockable_get_current(%struct._GimpDockbook* %3)
  store %struct._GimpDockable* %call2, %struct._GimpDockable** %dockable, align 8
  %4 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %tobool = icmp ne %struct._GimpDockable* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  call void @gimp_dockable_detach(%struct._GimpDockable* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gimp_dockable_detach(%struct._GimpDockable*) #1

; Function Attrs: nounwind uwtable
define void @dockable_lock_tab_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %dockbook = alloca %struct._GimpDockbook*, align 8
  %dockable = alloca %struct._GimpDockable*, align 8
  %lock = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dockbook_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDockbook*
  store %struct._GimpDockbook* %2, %struct._GimpDockbook** %dockbook, align 8
  %3 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %call2 = call %struct._GimpDockable* @dockable_get_current(%struct._GimpDockbook* %3)
  store %struct._GimpDockable* %call2, %struct._GimpDockable** %dockable, align 8
  %4 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %tobool = icmp ne %struct._GimpDockable* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %6 = bitcast %struct._GtkAction* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_toggle_action_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkToggleAction*
  %call5 = call i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction* %7)
  store i32 %call5, i32* %lock, align 4
  %8 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %9 = load i32, i32* %lock, align 4
  call void @gimp_dockable_set_locked(%struct._GimpDockable* %8, i32 %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_action_get_type() #2

declare void @gimp_dockable_set_locked(%struct._GimpDockable*, i32) #1

; Function Attrs: nounwind uwtable
define void @dockable_toggle_view_cmd_callback(%struct._GtkAction* %action, %struct._GtkAction* %current, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %current.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %dockbook = alloca %struct._GimpDockbook*, align 8
  %dockable = alloca %struct._GimpDockable*, align 8
  %view_type = alloca i32, align 4
  %page_num = alloca i32, align 4
  %entry11 = alloca %struct._GimpDialogFactoryEntry*, align 8
  %identifier = alloca i8*, align 8
  %substring = alloca i8*, align 8
  %old_view = alloca %struct._GimpContainerView*, align 8
  %new_dockable = alloca %struct._GtkWidget*, align 8
  %dock = alloca %struct._GimpDock*, align 8
  %view_size = alloca i32, align 4
  %old = alloca %struct._GimpDocked*, align 8
  %new = alloca %struct._GimpDocked*, align 8
  %show = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store %struct._GtkAction* %current, %struct._GtkAction** %current.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dockbook_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDockbook*
  store %struct._GimpDockbook* %2, %struct._GimpDockbook** %dockbook, align 8
  %3 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %4 = bitcast %struct._GtkAction* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_radio_action_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkRadioAction*
  %call4 = call i32 @gtk_radio_action_get_current_value(%struct._GtkRadioAction* %5)
  store i32 %call4, i32* %view_type, align 4
  %6 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %7 = bitcast %struct._GimpDockbook* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_notebook_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkNotebook*
  %call7 = call i32 @gtk_notebook_get_current_page(%struct._GtkNotebook* %8)
  store i32 %call7, i32* %page_num, align 4
  %9 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %10 = bitcast %struct._GimpDockbook* %9 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_notebook_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call8)
  %11 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkNotebook*
  %12 = load i32, i32* %page_num, align 4
  %call10 = call %struct._GtkWidget* @gtk_notebook_get_nth_page(%struct._GtkNotebook* %11, i32 %12)
  %13 = bitcast %struct._GtkWidget* %call10 to %struct._GimpDockable*
  store %struct._GimpDockable* %13, %struct._GimpDockable** %dockable, align 8
  %14 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %tobool = icmp ne %struct._GimpDockable* %14, null
  br i1 %tobool, label %if.then, label %if.end.79

if.then:                                          ; preds = %entry
  %15 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %16 = bitcast %struct._GimpDockable* %15 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_widget_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call12)
  %17 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkWidget*
  %call14 = call %struct._GimpDialogFactory* @gimp_dialog_factory_from_widget(%struct._GtkWidget* %17, %struct._GimpDialogFactoryEntry** %entry11)
  %18 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry11, align 8
  %tobool15 = icmp ne %struct._GimpDialogFactoryEntry* %18, null
  br i1 %tobool15, label %if.then.16, label %if.end.78

if.then.16:                                       ; preds = %if.then
  store i8* null, i8** %substring, align 8
  %19 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry11, align 8
  %identifier17 = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %19, i32 0, i32 0
  %20 = load i8*, i8** %identifier17, align 8
  %call18 = call noalias i8* @g_strdup(i8* %20)
  store i8* %call18, i8** %identifier, align 8
  %21 = load i8*, i8** %identifier, align 8
  %call19 = call i8* @strstr(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #6
  store i8* %call19, i8** %substring, align 8
  %22 = load i8*, i8** %substring, align 8
  %tobool20 = icmp ne i8* %22, null
  br i1 %tobool20, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then.16
  %23 = load i32, i32* %view_type, align 4
  %cmp = icmp eq i32 %23, 1
  br i1 %cmp, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %land.lhs.true
  %24 = load i8*, i8** %identifier, align 8
  call void @g_free(i8* %24)
  br label %if.end.79

if.end:                                           ; preds = %land.lhs.true, %if.then.16
  %25 = load i8*, i8** %substring, align 8
  %tobool22 = icmp ne i8* %25, null
  br i1 %tobool22, label %if.end.30, label %if.then.23

if.then.23:                                       ; preds = %if.end
  %26 = load i8*, i8** %identifier, align 8
  %call24 = call i8* @strstr(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)) #6
  store i8* %call24, i8** %substring, align 8
  %27 = load i8*, i8** %substring, align 8
  %tobool25 = icmp ne i8* %27, null
  br i1 %tobool25, label %land.lhs.true.26, label %if.end.29

land.lhs.true.26:                                 ; preds = %if.then.23
  %28 = load i32, i32* %view_type, align 4
  %cmp27 = icmp eq i32 %28, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %land.lhs.true.26
  %29 = load i8*, i8** %identifier, align 8
  call void @g_free(i8* %29)
  br label %if.end.79

if.end.29:                                        ; preds = %land.lhs.true.26, %if.then.23
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end
  %30 = load i8*, i8** %substring, align 8
  %tobool31 = icmp ne i8* %30, null
  br i1 %tobool31, label %if.then.32, label %if.end.77

if.then.32:                                       ; preds = %if.end.30
  store i32 -1, i32* %view_size, align 4
  %31 = load i32, i32* %view_type, align 4
  %cmp33 = icmp eq i32 %31, 0
  br i1 %cmp33, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %if.then.32
  %32 = load i8*, i8** %substring, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i64 4, i32 1, i1 false)
  br label %if.end.38

if.else:                                          ; preds = %if.then.32
  %33 = load i32, i32* %view_type, align 4
  %cmp35 = icmp eq i32 %33, 1
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.else
  %34 = load i8*, i8** %substring, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 4, i32 1, i1 false)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.else
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.34
  %35 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %call39 = call %struct._GimpContainerView* @gimp_container_view_get_by_dockable(%struct._GimpDockable* %35)
  store %struct._GimpContainerView* %call39, %struct._GimpContainerView** %old_view, align 8
  %36 = load %struct._GimpContainerView*, %struct._GimpContainerView** %old_view, align 8
  %tobool40 = icmp ne %struct._GimpContainerView* %36, null
  br i1 %tobool40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %if.end.38
  %37 = load %struct._GimpContainerView*, %struct._GimpContainerView** %old_view, align 8
  %call42 = call i32 @gimp_container_view_get_view_size(%struct._GimpContainerView* %37, i32* null)
  store i32 %call42, i32* %view_size, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %if.end.38
  %38 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %call44 = call %struct._GimpDock* @gimp_dockbook_get_dock(%struct._GimpDockbook* %38)
  store %struct._GimpDock* %call44, %struct._GimpDock** %dock, align 8
  %39 = load %struct._GimpDock*, %struct._GimpDock** %dock, align 8
  %call45 = call %struct._GimpDialogFactory* @gimp_dock_get_dialog_factory(%struct._GimpDock* %39)
  %40 = load %struct._GimpDock*, %struct._GimpDock** %dock, align 8
  %41 = load i8*, i8** %identifier, align 8
  %42 = load i32, i32* %view_size, align 4
  %call46 = call %struct._GtkWidget* @gimp_dialog_factory_dockable_new(%struct._GimpDialogFactory* %call45, %struct._GimpDock* %40, i8* %41, i32 %42)
  store %struct._GtkWidget* %call46, %struct._GtkWidget** %new_dockable, align 8
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %new_dockable, align 8
  %tobool47 = icmp ne %struct._GtkWidget* %43, null
  br i1 %tobool47, label %if.then.48, label %if.end.76

if.then.48:                                       ; preds = %if.end.43
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %new_dockable, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_dockable_get_type() #5
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call49)
  %46 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpDockable*
  %47 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %call51 = call i32 @gimp_dockable_is_locked(%struct._GimpDockable* %47)
  call void @gimp_dockable_set_locked(%struct._GimpDockable* %46, i32 %call51)
  %48 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %49 = bitcast %struct._GimpDockable* %48 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_bin_get_type() #5
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call52)
  %50 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkBin*
  %call54 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %50)
  %51 = bitcast %struct._GtkWidget* %call54 to %struct._GTypeInstance*
  %call55 = call i64 @gimp_docked_interface_get_type() #5
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call55)
  %52 = bitcast %struct._GTypeInstance* %call56 to %struct._GimpDocked*
  store %struct._GimpDocked* %52, %struct._GimpDocked** %old, align 8
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %new_dockable, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_bin_get_type() #5
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call57)
  %55 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkBin*
  %call59 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %55)
  %56 = bitcast %struct._GtkWidget* %call59 to %struct._GTypeInstance*
  %call60 = call i64 @gimp_docked_interface_get_type() #5
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call60)
  %57 = bitcast %struct._GTypeInstance* %call61 to %struct._GimpDocked*
  store %struct._GimpDocked* %57, %struct._GimpDocked** %new, align 8
  %58 = load %struct._GimpDocked*, %struct._GimpDocked** %old, align 8
  %call62 = call i32 @gimp_docked_get_show_button_bar(%struct._GimpDocked* %58)
  store i32 %call62, i32* %show, align 4
  %59 = load %struct._GimpDocked*, %struct._GimpDocked** %new, align 8
  %60 = load i32, i32* %show, align 4
  call void @gimp_docked_set_show_button_bar(%struct._GimpDocked* %59, i32 %60)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %new_dockable, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call63 = call i64 @gimp_dockable_get_type() #5
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call63)
  %63 = bitcast %struct._GTypeInstance* %call64 to %struct._GimpDockable*
  %call65 = call %struct._GimpDockbook* @gimp_dockable_get_dockbook(%struct._GimpDockable* %63)
  %tobool66 = icmp ne %struct._GimpDockbook* %call65, null
  br i1 %tobool66, label %if.end.75, label %if.then.67

if.then.67:                                       ; preds = %if.then.48
  %64 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %new_dockable, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call68 = call i64 @gimp_dockable_get_type() #5
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call68)
  %67 = bitcast %struct._GTypeInstance* %call69 to %struct._GimpDockable*
  %68 = load i32, i32* %page_num, align 4
  call void @gimp_dockbook_add(%struct._GimpDockbook* %64, %struct._GimpDockable* %67, i32 %68)
  %69 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %70 = bitcast %struct._GimpDockable* %69 to i8*
  %call70 = call i8* @g_object_ref(i8* %70)
  %71 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %72 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  call void @gimp_dockbook_remove(%struct._GimpDockbook* %71, %struct._GimpDockable* %72)
  %73 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %74 = bitcast %struct._GimpDockable* %73 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_widget_get_type() #5
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call71)
  %75 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkWidget*
  call void @gtk_widget_destroy(%struct._GtkWidget* %75)
  %76 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %77 = bitcast %struct._GimpDockable* %76 to i8*
  call void @g_object_unref(i8* %77)
  %78 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %79 = bitcast %struct._GimpDockbook* %78 to %struct._GTypeInstance*
  %call73 = call i64 @gtk_notebook_get_type() #5
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call73)
  %80 = bitcast %struct._GTypeInstance* %call74 to %struct._GtkNotebook*
  %81 = load i32, i32* %page_num, align 4
  call void @gtk_notebook_set_current_page(%struct._GtkNotebook* %80, i32 %81)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.67, %if.then.48
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.end.43
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.end.30
  %82 = load i8*, i8** %identifier, align 8
  call void @g_free(i8* %82)
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.21, %if.then.28, %if.end.78, %entry
  ret void
}

declare i32 @gtk_radio_action_get_current_value(%struct._GtkRadioAction*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_action_get_type() #2

declare i32 @gtk_notebook_get_current_page(%struct._GtkNotebook*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_notebook_get_type() #2

declare %struct._GtkWidget* @gtk_notebook_get_nth_page(%struct._GtkNotebook*, i32) #1

declare %struct._GimpDialogFactory* @gimp_dialog_factory_from_widget(%struct._GtkWidget*, %struct._GimpDialogFactoryEntry**) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #3

declare void @g_free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare %struct._GimpContainerView* @gimp_container_view_get_by_dockable(%struct._GimpDockable*) #1

declare i32 @gimp_container_view_get_view_size(%struct._GimpContainerView*, i32*) #1

declare %struct._GimpDock* @gimp_dockbook_get_dock(%struct._GimpDockbook*) #1

declare %struct._GtkWidget* @gimp_dialog_factory_dockable_new(%struct._GimpDialogFactory*, %struct._GimpDock*, i8*, i32) #1

declare %struct._GimpDialogFactory* @gimp_dock_get_dialog_factory(%struct._GimpDock*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dockable_get_type() #2

declare i32 @gimp_dockable_is_locked(%struct._GimpDockable*) #1

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_docked_interface_get_type() #2

declare i32 @gimp_docked_get_show_button_bar(%struct._GimpDocked*) #1

declare void @gimp_docked_set_show_button_bar(%struct._GimpDocked*, i32) #1

declare %struct._GimpDockbook* @gimp_dockable_get_dockbook(%struct._GimpDockable*) #1

declare void @gimp_dockbook_add(%struct._GimpDockbook*, %struct._GimpDockable*, i32) #1

declare void @gtk_notebook_set_current_page(%struct._GtkNotebook*, i32) #1

; Function Attrs: nounwind uwtable
define void @dockable_view_size_cmd_callback(%struct._GtkAction* %action, %struct._GtkAction* %current, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %current.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %dockbook = alloca %struct._GimpDockbook*, align 8
  %dockable = alloca %struct._GimpDockable*, align 8
  %view_size = alloca i32, align 4
  %view = alloca %struct._GimpContainerView*, align 8
  %old_size = alloca i32, align 4
  %border_width = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store %struct._GtkAction* %current, %struct._GtkAction** %current.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dockbook_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDockbook*
  store %struct._GimpDockbook* %2, %struct._GimpDockbook** %dockbook, align 8
  %3 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %call2 = call %struct._GimpDockable* @dockable_get_current(%struct._GimpDockbook* %3)
  store %struct._GimpDockable* %call2, %struct._GimpDockable** %dockable, align 8
  %4 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %5 = bitcast %struct._GtkAction* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_radio_action_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkRadioAction*
  %call5 = call i32 @gtk_radio_action_get_current_value(%struct._GtkRadioAction* %6)
  store i32 %call5, i32* %view_size, align 4
  %7 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %tobool = icmp ne %struct._GimpDockable* %7, null
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %call6 = call %struct._GimpContainerView* @gimp_container_view_get_by_dockable(%struct._GimpDockable* %8)
  store %struct._GimpContainerView* %call6, %struct._GimpContainerView** %view, align 8
  %9 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %tobool7 = icmp ne %struct._GimpContainerView* %9, null
  br i1 %tobool7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.then
  %10 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call9 = call i32 @gimp_container_view_get_view_size(%struct._GimpContainerView* %10, i32* %border_width)
  store i32 %call9, i32* %old_size, align 4
  %11 = load i32, i32* %old_size, align 4
  %12 = load i32, i32* %view_size, align 4
  %cmp = icmp ne i32 %11, %12
  br i1 %cmp, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then.8
  %13 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %14 = load i32, i32* %view_size, align 4
  %15 = load i32, i32* %border_width, align 4
  call void @gimp_container_view_set_view_size(%struct._GimpContainerView* %13, i32 %14, i32 %15)
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then.8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %entry
  ret void
}

declare void @gimp_container_view_set_view_size(%struct._GimpContainerView*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @dockable_tab_style_cmd_callback(%struct._GtkAction* %action, %struct._GtkAction* %current, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %current.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %dockbook = alloca %struct._GimpDockbook*, align 8
  %dockable = alloca %struct._GimpDockable*, align 8
  %tab_style = alloca i32, align 4
  %tab_widget = alloca %struct._GtkWidget*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store %struct._GtkAction* %current, %struct._GtkAction** %current.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dockbook_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDockbook*
  store %struct._GimpDockbook* %2, %struct._GimpDockbook** %dockbook, align 8
  %3 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %call2 = call %struct._GimpDockable* @dockable_get_current(%struct._GimpDockbook* %3)
  store %struct._GimpDockable* %call2, %struct._GimpDockable** %dockable, align 8
  %4 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %5 = bitcast %struct._GtkAction* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_radio_action_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkRadioAction*
  %call5 = call i32 @gtk_radio_action_get_current_value(%struct._GtkRadioAction* %6)
  store i32 %call5, i32* %tab_style, align 4
  %7 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %tobool = icmp ne %struct._GimpDockable* %7, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %call6 = call i32 @gimp_dockable_get_tab_style(%struct._GimpDockable* %8)
  %9 = load i32, i32* %tab_style, align 4
  %cmp = icmp ne i32 %call6, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %11 = load i32, i32* %tab_style, align 4
  call void @gimp_dockable_set_tab_style(%struct._GimpDockable* %10, i32 %11)
  %12 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %13 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %call7 = call %struct._GtkWidget* @gimp_dockbook_create_tab_widget(%struct._GimpDockbook* %12, %struct._GimpDockable* %13)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %tab_widget, align 8
  %14 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %15 = bitcast %struct._GimpDockbook* %14 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_notebook_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call8)
  %16 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkNotebook*
  %17 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %18 = bitcast %struct._GimpDockable* %17 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_widget_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call10)
  %19 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkWidget*
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %tab_widget, align 8
  call void @gtk_notebook_set_tab_label(%struct._GtkNotebook* %16, %struct._GtkWidget* %19, %struct._GtkWidget* %20)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare i32 @gimp_dockable_get_tab_style(%struct._GimpDockable*) #1

declare void @gimp_dockable_set_tab_style(%struct._GimpDockable*, i32) #1

declare %struct._GtkWidget* @gimp_dockbook_create_tab_widget(%struct._GimpDockbook*, %struct._GimpDockable*) #1

declare void @gtk_notebook_set_tab_label(%struct._GtkNotebook*, %struct._GtkWidget*, %struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @dockable_show_button_bar_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %dockbook = alloca %struct._GimpDockbook*, align 8
  %dockable = alloca %struct._GimpDockable*, align 8
  %docked = alloca %struct._GimpDocked*, align 8
  %show = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dockbook_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDockbook*
  store %struct._GimpDockbook* %2, %struct._GimpDockbook** %dockbook, align 8
  %3 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %call2 = call %struct._GimpDockable* @dockable_get_current(%struct._GimpDockbook* %3)
  store %struct._GimpDockable* %call2, %struct._GimpDockable** %dockable, align 8
  %4 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %tobool = icmp ne %struct._GimpDockable* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %6 = bitcast %struct._GimpDockable* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_bin_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkBin*
  %call5 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %7)
  %8 = bitcast %struct._GtkWidget* %call5 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_docked_interface_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call6)
  %9 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpDocked*
  store %struct._GimpDocked* %9, %struct._GimpDocked** %docked, align 8
  %10 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %11 = bitcast %struct._GtkAction* %10 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_toggle_action_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call8)
  %12 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkToggleAction*
  %call10 = call i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction* %12)
  store i32 %call10, i32* %show, align 4
  %13 = load %struct._GimpDocked*, %struct._GimpDocked** %docked, align 8
  %14 = load i32, i32* %show, align 4
  call void @gimp_docked_set_show_button_bar(%struct._GimpDocked* %13, i32 %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
