; ModuleID = './app/menus/file-menu.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpUIManager = type { %struct._GtkUIManager, i8*, %struct._Gimp*, %struct._GList* }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkUIManagerPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpContext = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
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
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct._GimpGuiConfig = type { %struct._GimpDisplayConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayOptions = type opaque
%struct._GtkTooltip = type opaque
%struct._GimpAction = type { %struct._GtkAction, %struct._GimpContext*, %struct._GimpRGB*, %struct._GimpViewable*, i32, i32 }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GdkPixbuf = type opaque

@.str = private unnamed_addr constant [11 x i8] c"Gimp-Menus\00", align 1
@__func__.file_menu_setup = private unnamed_addr constant [16 x i8] c"file_menu_setup\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"GIMP_IS_UI_MANAGER (manager)\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"ui_path != NULL\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"file-open-recent-%02d\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"%s/File/Open Recent/Files\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"query-tooltip\00", align 1

; Function Attrs: nounwind uwtable
define void @file_menu_setup(%struct._GimpUIManager* %manager, i8* %ui_path) #0 {
entry:
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  %ui_path.addr = alloca i8*, align 8
  %ui_manager = alloca %struct._GtkUIManager*, align 8
  %n_entries = alloca i32, align 4
  %merge_id = alloca i32, align 4
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %widget = alloca %struct._GtkWidget*, align 8
  %action_name = alloca i8*, align 8
  %action_path = alloca i8*, align 8
  %full_path = alloca i8*, align 8
  %action = alloca %struct._GtkAction*, align 8
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  store i8* %ui_path, i8** %ui_path.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %1 = bitcast %struct._GimpUIManager* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_ui_manager_get_type() #4
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.file_menu_setup, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0))
  br label %for.end

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %ui_path.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.file_menu_setup, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0))
  br label %for.end

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %15 = bitcast %struct._GimpUIManager* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_ui_manager_get_type() #4
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkUIManager*
  store %struct._GtkUIManager* %16, %struct._GtkUIManager** %ui_manager, align 8
  %17 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %17, i32 0, i32 2
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %18, i32 0, i32 1
  %19 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %20 = bitcast %struct._GimpCoreConfig* %19 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_gui_config_get_type() #4
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call19)
  %21 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpGuiConfig*
  %last_opened_size = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %21, i32 0, i32 13
  %22 = load i32, i32* %last_opened_size, align 4
  store i32 %22, i32* %n_entries, align 4
  %23 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager, align 8
  %call21 = call i32 @gtk_ui_manager_new_merge_id(%struct._GtkUIManager* %23)
  store i32 %call21, i32* %merge_id, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.16
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %n_entries, align 4
  %cmp22 = icmp slt i32 %24, %25
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %i, align 4
  %add = add nsw i32 %26, 1
  %call27 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 %add)
  store i8* %call27, i8** %action_name, align 8
  %27 = load i8*, i8** %ui_path.addr, align 8
  %call28 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0), i8* %27)
  store i8* %call28, i8** %action_path, align 8
  %28 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager, align 8
  %29 = load i32, i32* %merge_id, align 4
  %30 = load i8*, i8** %action_path, align 8
  %31 = load i8*, i8** %action_name, align 8
  %32 = load i8*, i8** %action_name, align 8
  call void @gtk_ui_manager_add_ui(%struct._GtkUIManager* %28, i32 %29, i8* %30, i8* %31, i8* %32, i32 32, i32 0)
  %33 = load i8*, i8** %action_path, align 8
  %34 = load i8*, i8** %action_name, align 8
  %call29 = call noalias i8* (i8*, ...) @g_strconcat(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* %34, i8* null)
  store i8* %call29, i8** %full_path, align 8
  %35 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager, align 8
  %36 = load i8*, i8** %full_path, align 8
  %call30 = call %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager* %35, i8* %36)
  store %struct._GtkWidget* %call30, %struct._GtkWidget** %widget, align 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool31 = icmp ne %struct._GtkWidget* %37, null
  br i1 %tobool31, label %if.then.32, label %if.end.36

if.then.32:                                       ; preds = %for.body
  %38 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %39 = load i8*, i8** %action_name, align 8
  %call34 = call %struct._GtkAction* @gimp_ui_manager_find_action(%struct._GimpUIManager* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* %39)
  store %struct._GtkAction* %call34, %struct._GtkAction** %action, align 8
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %41 = bitcast %struct._GtkWidget* %40 to i8*
  %42 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %43 = bitcast %struct._GtkAction* %42 to i8*
  %call35 = call i64 @g_signal_connect_object(i8* %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, i32, i32, i32, %struct._GtkTooltip*, %struct._GimpAction*)* @file_menu_open_recent_query_tooltip to void ()*), i8* %43, i32 0)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.32, %for.body
  %44 = load i8*, i8** %action_name, align 8
  call void @g_free(i8* %44)
  %45 = load i8*, i8** %action_path, align 8
  call void @g_free(i8* %45)
  %46 = load i8*, i8** %full_path, align 8
  call void @g_free(i8* %46)
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %47 = load i32, i32* %i, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else.9, %if.else.14, %for.cond
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_ui_manager_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_ui_manager_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_gui_config_get_type() #1

declare i32 @gtk_ui_manager_new_merge_id(%struct._GtkUIManager*) #3

declare noalias i8* @g_strdup_printf(i8*, ...) #3

declare void @gtk_ui_manager_add_ui(%struct._GtkUIManager*, i32, i8*, i8*, i8*, i32, i32) #3

declare noalias i8* @g_strconcat(i8*, ...) #3

declare %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager*, i8*) #3

declare %struct._GtkAction* @gimp_ui_manager_find_action(%struct._GimpUIManager*, i8*, i8*) #3

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @file_menu_open_recent_query_tooltip(%struct._GtkWidget* %widget, i32 %x, i32 %y, i32 %keyboard_mode, %struct._GtkTooltip* %tooltip, %struct._GimpAction* %action) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %keyboard_mode.addr = alloca i32, align 4
  %tooltip.addr = alloca %struct._GtkTooltip*, align 8
  %action.addr = alloca %struct._GimpAction*, align 8
  %text = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %keyboard_mode, i32* %keyboard_mode.addr, align 4
  store %struct._GtkTooltip* %tooltip, %struct._GtkTooltip** %tooltip.addr, align 8
  store %struct._GimpAction* %action, %struct._GimpAction** %action.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call i8* @gtk_widget_get_tooltip_text(%struct._GtkWidget* %0)
  store i8* %call, i8** %text, align 8
  %1 = load %struct._GtkTooltip*, %struct._GtkTooltip** %tooltip.addr, align 8
  %2 = load i8*, i8** %text, align 8
  call void @gtk_tooltip_set_text(%struct._GtkTooltip* %1, i8* %2)
  %3 = load i8*, i8** %text, align 8
  call void @g_free(i8* %3)
  %4 = load %struct._GtkTooltip*, %struct._GtkTooltip** %tooltip.addr, align 8
  %5 = load %struct._GimpAction*, %struct._GimpAction** %action.addr, align 8
  %viewable = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %5, i32 0, i32 3
  %6 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %7 = load %struct._GimpAction*, %struct._GimpAction** %action.addr, align 8
  %context = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %7, i32 0, i32 1
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call1 = call %struct._GdkPixbuf* @gimp_viewable_get_pixbuf(%struct._GimpViewable* %6, %struct._GimpContext* %8, i32 128, i32 128)
  call void @gtk_tooltip_set_icon(%struct._GtkTooltip* %4, %struct._GdkPixbuf* %call1)
  ret i32 1
}

declare void @g_free(i8*) #3

declare i8* @gtk_widget_get_tooltip_text(%struct._GtkWidget*) #3

declare void @gtk_tooltip_set_text(%struct._GtkTooltip*, i8*) #3

declare void @gtk_tooltip_set_icon(%struct._GtkTooltip*, %struct._GdkPixbuf*) #3

declare %struct._GdkPixbuf* @gimp_viewable_get_pixbuf(%struct._GimpViewable*, %struct._GimpContext*, i32, i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
