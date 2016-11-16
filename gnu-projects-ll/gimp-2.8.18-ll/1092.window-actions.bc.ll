; ModuleID = './app/actions/window-actions.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpActionGroup = type { %struct._GtkActionGroup, %struct._Gimp*, i8*, i8*, i8*, void (%struct._GimpActionGroup*, i8*)* }
%struct._GtkActionGroup = type { %struct._GObject, %struct._GtkActionGroupPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkActionGroupPrivate = type opaque
%struct._Gimp = type opaque
%struct._GdkDisplayManager = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkDisplayPointerHooks = type { void (%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._GdkGC = type { %struct._GObject, i32, i32, i32, i32, %struct._GdkColormap* }
%struct._GdkColormap = type { %struct._GObject, i32, %struct._GdkColor*, %struct._GdkVisual*, i8* }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkVisual = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._cairo_font_options = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GimpRadioActionEntry = type { i8*, i8*, i8*, i8*, i8*, i32, i8* }
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GtkStyle = type { %struct._GObject, [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], %struct._GdkColor, %struct._GdkColor, %struct._PangoFontDescription*, i32, i32, [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], %struct._GdkGC*, %struct._GdkGC*, [5 x %struct._GdkDrawable*], i32, i32, %struct._GdkColormap*, %struct._GdkFont*, %struct._PangoFontDescription*, %struct._GtkRcStyle*, %struct._GSList*, %struct._GArray*, %struct._GSList* }
%struct._GdkFont = type opaque
%struct._PangoFontDescription = type opaque
%struct._GtkRcStyle = type { %struct._GObject, i8*, [5 x i8*], %struct._PangoFontDescription*, [5 x i32], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], i32, i32, %struct._GArray*, %struct._GSList*, %struct._GSList*, i8 }
%struct._GArray = type { i8*, i32 }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GtkRadioAction = type { %struct._GtkToggleAction, %struct._GtkRadioActionPrivate* }
%struct._GtkToggleAction = type { %struct._GtkAction, %struct._GtkToggleActionPrivate* }
%struct._GtkToggleActionPrivate = type opaque
%struct._GtkRadioActionPrivate = type opaque

@.str = private unnamed_addr constant [23 x i8] c"move-to-screen-help-id\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"display-opened\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"%s-move-to-screen-%s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"%s-move-to-screen-menu\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"change-to-screen-help-id\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"gimp-move-to-screen\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Screen %s\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Move this window to screen %s\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"change-to-screen-radio-group\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"screen\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"closed\00", align 1

; Function Attrs: nounwind uwtable
define void @window_actions_setup(%struct._GimpActionGroup* %group, i8* %move_to_screen_help_id) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %move_to_screen_help_id.addr = alloca i8*, align 8
  %manager = alloca %struct._GdkDisplayManager*, align 8
  %displays = alloca %struct._GSList*, align 8
  %list = alloca %struct._GSList*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %move_to_screen_help_id, i8** %move_to_screen_help_id.addr, align 8
  %call = call %struct._GdkDisplayManager* @gdk_display_manager_get()
  store %struct._GdkDisplayManager* %call, %struct._GdkDisplayManager** %manager, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %1 = bitcast %struct._GimpActionGroup* %0 to %struct._GTypeInstance*
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GObject*
  %3 = load i8*, i8** %move_to_screen_help_id.addr, align 8
  %call2 = call noalias i8* @g_strdup(i8* %3)
  call void @g_object_set_data_full(%struct._GObject* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i8* %call2, void (i8*)* @g_free)
  %4 = load %struct._GdkDisplayManager*, %struct._GdkDisplayManager** %manager, align 8
  %call3 = call %struct._GSList* @gdk_display_manager_list_displays(%struct._GdkDisplayManager* %4)
  store %struct._GSList* %call3, %struct._GSList** %displays, align 8
  %5 = load %struct._GSList*, %struct._GSList** %displays, align 8
  %call4 = call %struct._GSList* @g_slist_reverse(%struct._GSList* %5)
  store %struct._GSList* %call4, %struct._GSList** %displays, align 8
  %6 = load %struct._GSList*, %struct._GSList** %displays, align 8
  store %struct._GSList* %6, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %7 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool = icmp ne %struct._GSList* %7, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._GdkDisplayManager*, %struct._GdkDisplayManager** %manager, align 8
  %9 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %9, i32 0, i32 0
  %10 = load i8*, i8** %data, align 8
  %11 = bitcast i8* %10 to %struct._GdkDisplay*
  %12 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @window_actions_display_opened(%struct._GdkDisplayManager* %8, %struct._GdkDisplay* %11, %struct._GimpActionGroup* %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool5 = icmp ne %struct._GSList* %13, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %14 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %14, i32 0, i32 1
  %15 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %15, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct._GSList*, %struct._GSList** %displays, align 8
  call void @g_slist_free(%struct._GSList* %16)
  %17 = load %struct._GdkDisplayManager*, %struct._GdkDisplayManager** %manager, align 8
  %18 = bitcast %struct._GdkDisplayManager* %17 to i8*
  %19 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %20 = bitcast %struct._GimpActionGroup* %19 to %struct._GTypeInstance*
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 80)
  %21 = bitcast %struct._GTypeInstance* %call6 to %struct._GObject*
  %22 = bitcast %struct._GObject* %21 to i8*
  %call7 = call i64 @g_signal_connect_object(i8* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), void ()* bitcast (void (%struct._GdkDisplayManager*, %struct._GdkDisplay*, %struct._GimpActionGroup*)* @window_actions_display_opened to void ()*), i8* %22, i32 0)
  ret void
}

declare %struct._GdkDisplayManager* @gdk_display_manager_get() #1

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare noalias i8* @g_strdup(i8*) #1

declare void @g_free(i8*) #1

declare %struct._GSList* @gdk_display_manager_list_displays(%struct._GdkDisplayManager*) #1

declare %struct._GSList* @g_slist_reverse(%struct._GSList*) #1

; Function Attrs: nounwind uwtable
define internal void @window_actions_display_opened(%struct._GdkDisplayManager* %manager, %struct._GdkDisplay* %display, %struct._GimpActionGroup* %group) #0 {
entry:
  %manager.addr = alloca %struct._GdkDisplayManager*, align 8
  %display.addr = alloca %struct._GdkDisplay*, align 8
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %entries = alloca %struct._GimpRadioActionEntry*, align 8
  %help_id = alloca i8*, align 8
  %group_name = alloca i8*, align 8
  %radio_group = alloca %struct._GSList*, align 8
  %n_screens = alloca i32, align 4
  %i = alloca i32, align 4
  %screen = alloca %struct._GdkScreen*, align 8
  %screen_name = alloca i8*, align 8
  %screen37 = alloca %struct._GdkScreen*, align 8
  %action = alloca %struct._GtkAction*, align 8
  store %struct._GdkDisplayManager* %manager, %struct._GdkDisplayManager** %manager.addr, align 8
  store %struct._GdkDisplay* %display, %struct._GdkDisplay** %display.addr, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %1 = bitcast %struct._GimpActionGroup* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0))
  store i8* %call1, i8** %help_id, align 8
  %3 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %4 = bitcast %struct._GimpActionGroup* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_action_group_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkActionGroup*
  %call4 = call i8* @gtk_action_group_get_name(%struct._GtkActionGroup* %5)
  store i8* %call4, i8** %group_name, align 8
  %6 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display.addr, align 8
  %call5 = call i32 @gdk_display_get_n_screens(%struct._GdkDisplay* %6)
  store i32 %call5, i32* %n_screens, align 4
  %7 = load i32, i32* %n_screens, align 4
  %conv = sext i32 %7 to i64
  %call6 = call noalias i8* @g_malloc0_n(i64 %conv, i64 56)
  %8 = bitcast i8* %call6 to %struct._GimpRadioActionEntry*
  store %struct._GimpRadioActionEntry* %8, %struct._GimpRadioActionEntry** %entries, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %n_screens, align 4
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display.addr, align 8
  %12 = load i32, i32* %i, align 4
  %call8 = call %struct._GdkScreen* @gdk_display_get_screen(%struct._GdkDisplay* %11, i32 %12)
  store %struct._GdkScreen* %call8, %struct._GdkScreen** %screen, align 8
  %13 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %call9 = call i8* @gdk_screen_make_display_name(%struct._GdkScreen* %13)
  store i8* %call9, i8** %screen_name, align 8
  %14 = load i8*, i8** %group_name, align 8
  %15 = load i8*, i8** %screen_name, align 8
  %call10 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i8* %14, i8* %15)
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct._GimpRadioActionEntry*, %struct._GimpRadioActionEntry** %entries, align 8
  %arrayidx = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %17, i64 %idxprom
  %name = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %arrayidx, i32 0, i32 0
  store i8* %call10, i8** %name, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %18 to i64
  %19 = load %struct._GimpRadioActionEntry*, %struct._GimpRadioActionEntry** %entries, align 8
  %arrayidx12 = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %19, i64 %idxprom11
  %stock_id = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %arrayidx12, i32 0, i32 1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i8** %stock_id, align 8
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0)) #6
  %20 = load i8*, i8** %screen_name, align 8
  %call14 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call13, i8* %20)
  %21 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %21 to i64
  %22 = load %struct._GimpRadioActionEntry*, %struct._GimpRadioActionEntry** %entries, align 8
  %arrayidx16 = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %22, i64 %idxprom15
  %label = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %arrayidx16, i32 0, i32 2
  store i8* %call14, i8** %label, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %23 to i64
  %24 = load %struct._GimpRadioActionEntry*, %struct._GimpRadioActionEntry** %entries, align 8
  %arrayidx18 = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %24, i64 %idxprom17
  %accelerator = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %arrayidx18, i32 0, i32 3
  store i8* null, i8** %accelerator, align 8
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i32 0, i32 0)) #6
  %25 = load i8*, i8** %screen_name, align 8
  %call20 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call19, i8* %25)
  %26 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %26 to i64
  %27 = load %struct._GimpRadioActionEntry*, %struct._GimpRadioActionEntry** %entries, align 8
  %arrayidx22 = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %27, i64 %idxprom21
  %tooltip = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %arrayidx22, i32 0, i32 4
  store i8* %call20, i8** %tooltip, align 8
  %28 = load i8*, i8** %screen_name, align 8
  %call23 = call i32 @g_quark_from_string(i8* %28)
  %29 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %29 to i64
  %30 = load %struct._GimpRadioActionEntry*, %struct._GimpRadioActionEntry** %entries, align 8
  %arrayidx25 = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %30, i64 %idxprom24
  %value = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %arrayidx25, i32 0, i32 5
  store i32 %call23, i32* %value, align 4
  %31 = load i8*, i8** %help_id, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %32 to i64
  %33 = load %struct._GimpRadioActionEntry*, %struct._GimpRadioActionEntry** %entries, align 8
  %arrayidx27 = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %33, i64 %idxprom26
  %help_id28 = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %arrayidx27, i32 0, i32 6
  store i8* %31, i8** %help_id28, align 8
  %34 = load i8*, i8** %screen_name, align 8
  call void @g_free(i8* %34)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i32, i32* %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %37 = bitcast %struct._GimpActionGroup* %36 to %struct._GTypeInstance*
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 80)
  %38 = bitcast %struct._GTypeInstance* %call29 to %struct._GObject*
  %call30 = call i8* @g_object_get_data(%struct._GObject* %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0))
  %39 = bitcast i8* %call30 to %struct._GSList*
  store %struct._GSList* %39, %struct._GSList** %radio_group, align 8
  %40 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %41 = load %struct._GimpRadioActionEntry*, %struct._GimpRadioActionEntry** %entries, align 8
  %42 = load i32, i32* %n_screens, align 4
  %43 = load %struct._GSList*, %struct._GSList** %radio_group, align 8
  %call31 = call %struct._GSList* @gimp_action_group_add_radio_actions(%struct._GimpActionGroup* %40, i8* null, %struct._GimpRadioActionEntry* %41, i32 %42, %struct._GSList* %43, i32 0, void ()* bitcast (void (%struct._GtkAction*, %struct._GtkAction*, i8*)* @window_move_to_screen_cmd_callback to void ()*))
  store %struct._GSList* %call31, %struct._GSList** %radio_group, align 8
  %44 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %45 = bitcast %struct._GimpActionGroup* %44 to %struct._GTypeInstance*
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 80)
  %46 = bitcast %struct._GTypeInstance* %call32 to %struct._GObject*
  %47 = load %struct._GSList*, %struct._GSList** %radio_group, align 8
  %48 = bitcast %struct._GSList* %47 to i8*
  call void @g_object_set_data(%struct._GObject* %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0), i8* %48)
  store i32 0, i32* %i, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.55, %for.end
  %49 = load i32, i32* %i, align 4
  %50 = load i32, i32* %n_screens, align 4
  %cmp34 = icmp slt i32 %49, %50
  br i1 %cmp34, label %for.body.36, label %for.end.57

for.body.36:                                      ; preds = %for.cond.33
  %51 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display.addr, align 8
  %52 = load i32, i32* %i, align 4
  %call38 = call %struct._GdkScreen* @gdk_display_get_screen(%struct._GdkDisplay* %51, i32 %52)
  store %struct._GdkScreen* %call38, %struct._GdkScreen** %screen37, align 8
  %53 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %54 = bitcast %struct._GimpActionGroup* %53 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_action_group_get_type() #5
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call39)
  %55 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkActionGroup*
  %56 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %56 to i64
  %57 = load %struct._GimpRadioActionEntry*, %struct._GimpRadioActionEntry** %entries, align 8
  %arrayidx42 = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %57, i64 %idxprom41
  %name43 = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %arrayidx42, i32 0, i32 0
  %58 = load i8*, i8** %name43, align 8
  %call44 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %55, i8* %58)
  store %struct._GtkAction* %call44, %struct._GtkAction** %action, align 8
  %59 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %tobool = icmp ne %struct._GtkAction* %59, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.36
  %60 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %61 = bitcast %struct._GtkAction* %60 to %struct._GTypeInstance*
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 80)
  %62 = bitcast %struct._GTypeInstance* %call45 to %struct._GObject*
  %63 = load %struct._GdkScreen*, %struct._GdkScreen** %screen37, align 8
  %64 = bitcast %struct._GdkScreen* %63 to i8*
  call void @g_object_set_data(%struct._GObject* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* %64)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.36
  %65 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %65 to i64
  %66 = load %struct._GimpRadioActionEntry*, %struct._GimpRadioActionEntry** %entries, align 8
  %arrayidx47 = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %66, i64 %idxprom46
  %name48 = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %arrayidx47, i32 0, i32 0
  %67 = load i8*, i8** %name48, align 8
  call void @g_free(i8* %67)
  %68 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %68 to i64
  %69 = load %struct._GimpRadioActionEntry*, %struct._GimpRadioActionEntry** %entries, align 8
  %arrayidx50 = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %69, i64 %idxprom49
  %tooltip51 = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %arrayidx50, i32 0, i32 4
  %70 = load i8*, i8** %tooltip51, align 8
  call void @g_free(i8* %70)
  %71 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %71 to i64
  %72 = load %struct._GimpRadioActionEntry*, %struct._GimpRadioActionEntry** %entries, align 8
  %arrayidx53 = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %72, i64 %idxprom52
  %label54 = getelementptr inbounds %struct._GimpRadioActionEntry, %struct._GimpRadioActionEntry* %arrayidx53, i32 0, i32 2
  %73 = load i8*, i8** %label54, align 8
  call void @g_free(i8* %73)
  br label %for.inc.55

for.inc.55:                                       ; preds = %if.end
  %74 = load i32, i32* %i, align 4
  %inc56 = add nsw i32 %74, 1
  store i32 %inc56, i32* %i, align 4
  br label %for.cond.33

for.end.57:                                       ; preds = %for.cond.33
  %75 = load %struct._GimpRadioActionEntry*, %struct._GimpRadioActionEntry** %entries, align 8
  %76 = bitcast %struct._GimpRadioActionEntry* %75 to i8*
  call void @g_free(i8* %76)
  %77 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display.addr, align 8
  %78 = bitcast %struct._GdkDisplay* %77 to i8*
  %79 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %80 = bitcast %struct._GimpActionGroup* %79 to %struct._GTypeInstance*
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 80)
  %81 = bitcast %struct._GTypeInstance* %call58 to %struct._GObject*
  %82 = bitcast %struct._GObject* %81 to i8*
  %call59 = call i64 @g_signal_connect_object(i8* %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GdkDisplay*, i32, %struct._GimpActionGroup*)* @window_actions_display_closed to void ()*), i8* %82, i32 0)
  ret void
}

declare void @g_slist_free(%struct._GSList*) #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @window_actions_update(%struct._GimpActionGroup* %group, %struct._GtkWidget* %window) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %window.addr = alloca %struct._GtkWidget*, align 8
  %group_name = alloca i8*, align 8
  %show_menu = alloca i32, align 4
  %name = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %screen = alloca %struct._GdkScreen*, align 8
  %screen_name = alloca i8*, align 8
  %display = alloca %struct._GdkDisplay*, align 8
  %manager = alloca %struct._GdkDisplayManager*, align 8
  %displays = alloca %struct._GSList*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store %struct._GtkWidget* %window, %struct._GtkWidget** %window.addr, align 8
  store i32 0, i32* %show_menu, align 4
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %1 = bitcast %struct._GimpActionGroup* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_action_group_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkActionGroup*
  %call2 = call i8* @gtk_action_group_get_name(%struct._GtkActionGroup* %2)
  store i8* %call2, i8** %group_name, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %window.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %4, %struct._GTypeInstance** %__inst, align 8
  %call3 = call i64 @gtk_window_get_type() #5
  store i64 %call3, i64* %__t, align 8
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %5, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.9

if.else:                                          ; preds = %entry
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %7, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.7

land.lhs.true:                                    ; preds = %if.else
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %11 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %10, %11
  br i1 %cmp, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.7:                                        ; preds = %land.lhs.true, %if.else
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %13 = load i64, i64* %__t, align 8
  %call8 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %12, i64 %13) #7
  store i32 %call8, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.6
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %14 = load i32, i32* %__r, align 4
  store i32 %14, i32* %tmp
  %15 = load i32, i32* %tmp
  %tobool10 = icmp ne i32 %15, 0
  br i1 %tobool10, label %if.then.11, label %if.end.30

if.then.11:                                       ; preds = %if.end.9
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %window.addr, align 8
  %call15 = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %16)
  store %struct._GdkDisplay* %call15, %struct._GdkDisplay** %display, align 8
  %17 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %call16 = call i32 @gdk_display_get_n_screens(%struct._GdkDisplay* %17)
  %cmp17 = icmp sgt i32 %call16, 1
  %conv = zext i1 %cmp17 to i32
  store i32 %conv, i32* %show_menu, align 4
  %18 = load i32, i32* %show_menu, align 4
  %tobool18 = icmp ne i32 %18, 0
  br i1 %tobool18, label %if.end.26, label %if.then.19

if.then.19:                                       ; preds = %if.then.11
  %call21 = call %struct._GdkDisplayManager* @gdk_display_manager_get()
  store %struct._GdkDisplayManager* %call21, %struct._GdkDisplayManager** %manager, align 8
  %19 = load %struct._GdkDisplayManager*, %struct._GdkDisplayManager** %manager, align 8
  %call23 = call %struct._GSList* @gdk_display_manager_list_displays(%struct._GdkDisplayManager* %19)
  store %struct._GSList* %call23, %struct._GSList** %displays, align 8
  %20 = load %struct._GSList*, %struct._GSList** %displays, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %20, i32 0, i32 1
  %21 = load %struct._GSList*, %struct._GSList** %next, align 8
  %cmp24 = icmp ne %struct._GSList* %21, null
  %conv25 = zext i1 %cmp24 to i32
  store i32 %conv25, i32* %show_menu, align 4
  %22 = load %struct._GSList*, %struct._GSList** %displays, align 8
  call void @g_slist_free(%struct._GSList* %22)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.19, %if.then.11
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %window.addr, align 8
  %call27 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %23)
  store %struct._GdkScreen* %call27, %struct._GdkScreen** %screen, align 8
  %24 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %call28 = call i8* @gdk_screen_make_display_name(%struct._GdkScreen* %24)
  store i8* %call28, i8** %screen_name, align 8
  %25 = load i8*, i8** %group_name, align 8
  %26 = load i8*, i8** %screen_name, align 8
  %call29 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i8* %25, i8* %26)
  store i8* %call29, i8** %name, align 8
  %27 = load i8*, i8** %screen_name, align 8
  call void @g_free(i8* %27)
  %28 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %29 = load i8*, i8** %name, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %28, i8* %29, i32 1)
  %30 = load i8*, i8** %name, align 8
  call void @g_free(i8* %30)
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.26, %if.end.9
  %31 = load i8*, i8** %group_name, align 8
  %call31 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i8* %31)
  store i8* %call31, i8** %name, align 8
  %32 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %33 = load i8*, i8** %name, align 8
  %34 = load i32, i32* %show_menu, align 4
  %cmp32 = icmp ne i32 %34, 0
  %conv33 = zext i1 %cmp32 to i32
  call void @gimp_action_group_set_action_visible(%struct._GimpActionGroup* %32, i8* %33, i32 %conv33)
  %35 = load i8*, i8** %name, align 8
  call void @g_free(i8* %35)
  ret void
}

declare i8* @gtk_action_group_get_name(%struct._GtkActionGroup*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_action_group_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget*) #1

declare i32 @gdk_display_get_n_screens(%struct._GdkDisplay*) #1

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #1

declare i8* @gdk_screen_make_display_name(%struct._GdkScreen*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare void @gimp_action_group_set_action_active(%struct._GimpActionGroup*, i8*, i32) #1

declare void @gimp_action_group_set_action_visible(%struct._GimpActionGroup*, i8*, i32) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare %struct._GdkScreen* @gdk_display_get_screen(%struct._GdkDisplay*, i32) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i32 @g_quark_from_string(i8*) #1

declare %struct._GSList* @gimp_action_group_add_radio_actions(%struct._GimpActionGroup*, i8*, %struct._GimpRadioActionEntry*, i32, %struct._GSList*, i32, void ()*) #1

declare void @window_move_to_screen_cmd_callback(%struct._GtkAction*, %struct._GtkAction*, i8*) #1

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @window_actions_display_closed(%struct._GdkDisplay* %display, i32 %is_error, %struct._GimpActionGroup* %group) #0 {
entry:
  %display.addr = alloca %struct._GdkDisplay*, align 8
  %is_error.addr = alloca i32, align 4
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %group_name = alloca i8*, align 8
  %n_screens = alloca i32, align 4
  %i = alloca i32, align 4
  %screen = alloca %struct._GdkScreen*, align 8
  %action = alloca %struct._GtkAction*, align 8
  %screen_name = alloca i8*, align 8
  %action_name = alloca i8*, align 8
  %radio_group = alloca %struct._GSList*, align 8
  store %struct._GdkDisplay* %display, %struct._GdkDisplay** %display.addr, align 8
  store i32 %is_error, i32* %is_error.addr, align 4
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %1 = bitcast %struct._GimpActionGroup* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_action_group_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkActionGroup*
  %call2 = call i8* @gtk_action_group_get_name(%struct._GtkActionGroup* %2)
  store i8* %call2, i8** %group_name, align 8
  %3 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display.addr, align 8
  %call3 = call i32 @gdk_display_get_n_screens(%struct._GdkDisplay* %3)
  store i32 %call3, i32* %n_screens, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %n_screens, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display.addr, align 8
  %7 = load i32, i32* %i, align 4
  %call4 = call %struct._GdkScreen* @gdk_display_get_screen(%struct._GdkDisplay* %6, i32 %7)
  store %struct._GdkScreen* %call4, %struct._GdkScreen** %screen, align 8
  %8 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %call5 = call i8* @gdk_screen_make_display_name(%struct._GdkScreen* %8)
  store i8* %call5, i8** %screen_name, align 8
  %9 = load i8*, i8** %group_name, align 8
  %10 = load i8*, i8** %screen_name, align 8
  %call6 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i8* %9, i8* %10)
  store i8* %call6, i8** %action_name, align 8
  %11 = load i8*, i8** %screen_name, align 8
  call void @g_free(i8* %11)
  %12 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %13 = bitcast %struct._GimpActionGroup* %12 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_action_group_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call7)
  %14 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkActionGroup*
  %15 = load i8*, i8** %action_name, align 8
  %call9 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %14, i8* %15)
  store %struct._GtkAction* %call9, %struct._GtkAction** %action, align 8
  %16 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %tobool = icmp ne %struct._GtkAction* %16, null
  br i1 %tobool, label %if.then, label %if.end.18

if.then:                                          ; preds = %for.body
  %17 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %18 = bitcast %struct._GtkAction* %17 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_radio_action_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call10)
  %19 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkRadioAction*
  %call12 = call %struct._GSList* @gtk_radio_action_get_group(%struct._GtkRadioAction* %19)
  store %struct._GSList* %call12, %struct._GSList** %radio_group, align 8
  %20 = load %struct._GSList*, %struct._GSList** %radio_group, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %20, i32 0, i32 0
  %21 = load i8*, i8** %data, align 8
  %22 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %23 = bitcast %struct._GtkAction* %22 to i8*
  %cmp13 = icmp eq i8* %21, %23
  br i1 %cmp13, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %if.then
  %24 = load %struct._GSList*, %struct._GSList** %radio_group, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %24, i32 0, i32 1
  %25 = load %struct._GSList*, %struct._GSList** %next, align 8
  store %struct._GSList* %25, %struct._GSList** %radio_group, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.14, %if.then
  %26 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %27 = bitcast %struct._GimpActionGroup* %26 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_action_group_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call15)
  %28 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkActionGroup*
  %29 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  call void @gtk_action_group_remove_action(%struct._GtkActionGroup* %28, %struct._GtkAction* %29)
  %30 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %31 = bitcast %struct._GimpActionGroup* %30 to %struct._GTypeInstance*
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 80)
  %32 = bitcast %struct._GTypeInstance* %call17 to %struct._GObject*
  %33 = load %struct._GSList*, %struct._GSList** %radio_group, align 8
  %34 = bitcast %struct._GSList* %33 to i8*
  call void @g_object_set_data(%struct._GObject* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0), i8* %34)
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %for.body
  %35 = load i8*, i8** %action_name, align 8
  call void @g_free(i8* %35)
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %36 = load i32, i32* %i, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct._GSList* @gtk_radio_action_get_group(%struct._GtkRadioAction*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_action_get_type() #2

declare void @gtk_action_group_remove_action(%struct._GtkActionGroup*, %struct._GtkAction*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
