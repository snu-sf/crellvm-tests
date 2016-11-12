; ModuleID = './app/actions/dock-actions.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpActionEntry = type { i8*, i8*, i8*, i8*, i8*, void ()*, i8* }
%struct._GimpToggleActionEntry = type { i8*, i8*, i8*, i8*, i8*, void ()*, i32, i8* }
%struct._GimpActionGroup = type { %struct._GtkActionGroup, %struct._Gimp*, i8*, i8*, i8*, void (%struct._GimpActionGroup*, i8*)* }
%struct._GtkActionGroup = type { %struct._GObject, %struct._GtkActionGroupPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkActionGroupPrivate = type opaque
%struct._Gimp = type opaque
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
%struct._GimpDockWindow = type { %struct._GimpWindow, %struct._GimpDockWindowPrivate* }
%struct._GimpWindow = type { %struct._GtkWindow, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpDockWindowPrivate = type opaque
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque

@.str = private unnamed_addr constant [12 x i8] c"dock-action\00", align 1
@dock_actions = internal constant [3 x %struct._GimpActionEntry] [%struct._GimpActionEntry { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0), i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @window_close_cmd_callback to void ()*), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @window_open_display_cmd_callback to void ()*), i8* null }], align 16
@dock_toggle_actions = internal constant [2 x %struct._GimpToggleActionEntry] [%struct._GimpToggleActionEntry { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @dock_toggle_image_menu_cmd_callback to void ()*), i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0) }, %struct._GimpToggleActionEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @dock_toggle_auto_cmd_callback to void ()*), i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0) }], align 16
@.str.1 = private unnamed_addr constant [24 x i8] c"gimp-dock-change-screen\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"dock-show-image-menu\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"dock-auto-follow-active\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"dock-move-to-screen-menu\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"gimp-move-to-screen\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"M_ove to Screen\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"dock-close\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"gtk-close\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Close Dock\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"gimp-dock-close\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"dock-open-display\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"_Open Display...\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Connect to another display\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"_Show Image Selection\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"gimp-dock-image-menu\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"Auto _Follow Active Image\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"gimp-dock-auto-button\00", align 1

; Function Attrs: nounwind uwtable
define void @dock_actions_setup(%struct._GimpActionGroup* %group) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_actions(%struct._GimpActionGroup* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), %struct._GimpActionEntry* getelementptr inbounds ([3 x %struct._GimpActionEntry], [3 x %struct._GimpActionEntry]* @dock_actions, i32 0, i32 0), i32 3)
  %1 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_toggle_actions(%struct._GimpActionGroup* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), %struct._GimpToggleActionEntry* getelementptr inbounds ([2 x %struct._GimpToggleActionEntry], [2 x %struct._GimpToggleActionEntry]* @dock_toggle_actions, i32 0, i32 0), i32 2)
  %2 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @window_actions_setup(%struct._GimpActionGroup* %2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0))
  ret void
}

declare void @gimp_action_group_add_actions(%struct._GimpActionGroup*, i8*, %struct._GimpActionEntry*, i32) #1

declare void @gimp_action_group_add_toggle_actions(%struct._GimpActionGroup*, i8*, %struct._GimpToggleActionEntry*, i32) #1

declare void @window_actions_setup(%struct._GimpActionGroup*, i8*) #1

; Function Attrs: nounwind uwtable
define void @dock_actions_update(%struct._GimpActionGroup* %group, i8* %data) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %data.addr = alloca i8*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %toplevel = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %dock_window = alloca %struct._GimpDockWindow*, align 8
  %show_image_menu = alloca i32, align 4
  %__inst31 = alloca %struct._GTypeInstance*, align 8
  %__t33 = alloca i64, align 8
  %__r36 = alloca i32, align 4
  %tmp52 = alloca i32, align 4
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GtkWidget* @action_data_get_widget(i8* %0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %widget, align 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %toplevel, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool = icmp ne %struct._GtkWidget* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call1 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %2)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %toplevel, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %4, %struct._GTypeInstance** %__inst, align 8
  %call2 = call i64 @gimp_dock_window_get_type() #4
  store i64 %call2, i64* %__t, align 8
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool3 = icmp ne %struct._GTypeInstance* %5, null
  br i1 %tobool3, label %if.else, label %if.then.4

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %__r, align 4
  br label %if.end.11

if.else:                                          ; preds = %if.end
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool5 = icmp ne %struct._GTypeClass* %7, null
  br i1 %tobool5, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %11 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %10, %11
  br i1 %cmp, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.10

if.else.8:                                        ; preds = %land.lhs.true, %if.else
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %13 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %12, i64 %13) #5
  store i32 %call9, i32* %__r, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.then.7
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.4
  %14 = load i32, i32* %__r, align 4
  store i32 %14, i32* %tmp
  %15 = load i32, i32* %tmp
  %tobool12 = icmp ne i32 %15, 0
  br i1 %tobool12, label %if.then.13, label %if.else.29

if.then.13:                                       ; preds = %if.end.11
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_dock_window_get_type() #4
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call15)
  %18 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpDockWindow*
  store %struct._GimpDockWindow* %18, %struct._GimpDockWindow** %dock_window, align 8
  %19 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %call18 = call i32 @gimp_dock_window_has_toolbox(%struct._GimpDockWindow* %19)
  %tobool19 = icmp ne i32 %call18, 0
  %lnot = xor i1 %tobool19, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %show_image_menu, align 4
  %20 = load i32, i32* %show_image_menu, align 4
  %tobool20 = icmp ne i32 %20, 0
  br i1 %tobool20, label %if.then.21, label %if.else.27

if.then.21:                                       ; preds = %if.then.13
  %21 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_visible(%struct._GimpActionGroup* %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i32 1)
  %22 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_visible(%struct._GimpActionGroup* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i32 1)
  %23 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %24 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %call22 = call i32 @gimp_dock_window_get_show_image_menu(%struct._GimpDockWindow* %24)
  %cmp23 = icmp ne i32 %call22, 0
  %conv = zext i1 %cmp23 to i32
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i32 %conv)
  %25 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %26 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %call24 = call i32 @gimp_dock_window_get_auto_follow_active(%struct._GimpDockWindow* %26)
  %cmp25 = icmp ne i32 %call24, 0
  %conv26 = zext i1 %cmp25 to i32
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i32 %conv26)
  br label %if.end.28

if.else.27:                                       ; preds = %if.then.13
  %27 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_visible(%struct._GimpActionGroup* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i32 0)
  %28 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_visible(%struct._GimpActionGroup* %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i32 0)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.27, %if.then.21
  %29 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  call void @window_actions_update(%struct._GimpActionGroup* %29, %struct._GtkWidget* %30)
  br label %if.end.56

if.else.29:                                       ; preds = %if.end.11
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %32, %struct._GTypeInstance** %__inst31, align 8
  %call34 = call i64 @gimp_image_window_get_type() #4
  store i64 %call34, i64* %__t33, align 8
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst31, align 8
  %tobool37 = icmp ne %struct._GTypeInstance* %33, null
  br i1 %tobool37, label %if.else.39, label %if.then.38

if.then.38:                                       ; preds = %if.else.29
  store i32 0, i32* %__r36, align 4
  br label %if.end.51

if.else.39:                                       ; preds = %if.else.29
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst31, align 8
  %g_class40 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class40, align 8
  %tobool41 = icmp ne %struct._GTypeClass* %35, null
  br i1 %tobool41, label %land.lhs.true.42, label %if.else.48

land.lhs.true.42:                                 ; preds = %if.else.39
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst31, align 8
  %g_class43 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %36, i32 0, i32 0
  %37 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class43, align 8
  %g_type44 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %37, i32 0, i32 0
  %38 = load i64, i64* %g_type44, align 8
  %39 = load i64, i64* %__t33, align 8
  %cmp45 = icmp eq i64 %38, %39
  br i1 %cmp45, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %land.lhs.true.42
  store i32 1, i32* %__r36, align 4
  br label %if.end.50

if.else.48:                                       ; preds = %land.lhs.true.42, %if.else.39
  %40 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst31, align 8
  %41 = load i64, i64* %__t33, align 8
  %call49 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %40, i64 %41) #5
  store i32 %call49, i32* %__r36, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.48, %if.then.47
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then.38
  %42 = load i32, i32* %__r36, align 4
  store i32 %42, i32* %tmp52
  %43 = load i32, i32* %tmp52
  %tobool53 = icmp ne i32 %43, 0
  br i1 %tobool53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.51
  %44 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_visible(%struct._GimpActionGroup* %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i32 0)
  %45 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_visible(%struct._GimpActionGroup* %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i32 0)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.end.51
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end.28
  ret void
}

declare %struct._GtkWidget* @action_data_get_widget(i8*) #1

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dock_window_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i32 @gimp_dock_window_has_toolbox(%struct._GimpDockWindow*) #1

declare void @gimp_action_group_set_action_visible(%struct._GimpActionGroup*, i8*, i32) #1

declare void @gimp_action_group_set_action_active(%struct._GimpActionGroup*, i8*, i32) #1

declare i32 @gimp_dock_window_get_show_image_menu(%struct._GimpDockWindow*) #1

declare i32 @gimp_dock_window_get_auto_follow_active(%struct._GimpDockWindow*) #1

declare void @window_actions_update(%struct._GimpActionGroup*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_window_get_type() #2

declare void @window_close_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @window_open_display_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @dock_toggle_image_menu_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @dock_toggle_auto_cmd_callback(%struct._GtkAction*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
