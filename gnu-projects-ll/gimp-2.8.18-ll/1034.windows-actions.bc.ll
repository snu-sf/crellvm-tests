; ModuleID = './app/actions/windows-actions.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpActionEntry = type { i8*, i8*, i8*, i8*, i8*, void ()*, i8* }
%struct._GimpToggleActionEntry = type { i8*, i8*, i8*, i8*, i8*, void ()*, i32, i8* }
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpContainerPriv = type opaque
%struct._GimpActionGroup = type { %struct._GtkActionGroup, %struct._Gimp*, i8*, i8*, i8*, void (%struct._GimpActionGroup*, i8*)* }
%struct._GtkActionGroup = type { %struct._GObject, %struct._GtkActionGroupPrivate* }
%struct._GtkActionGroupPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
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
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayOptions = type opaque
%struct._GimpDockWindow = type { %struct._GimpWindow, %struct._GimpDockWindowPrivate* }
%struct._GimpWindow = type { %struct._GtkWindow, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
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
%struct._GtkWindowGeometryInfo = type opaque
%struct._GdkDrawable = type { %struct._GObject }
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpDockWindowPrivate = type opaque
%struct._GimpSessionInfo = type opaque
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct._GimpGuiConfig = type { %struct._GimpDisplayConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"windows-action\00", align 1
@windows_actions = internal constant [5 x %struct._GimpActionEntry] [%struct._GimpActionEntry { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @windows_show_display_next_cmd_callback to void ()*), i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @windows_show_display_previous_cmd_callback to void ()*), i8* null }], align 16
@windows_toggle_actions = internal constant [2 x %struct._GimpToggleActionEntry] [%struct._GimpToggleActionEntry { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @windows_hide_docks_cmd_callback to void ()*), i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i32 0, i32 0) }, %struct._GimpToggleActionEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @windows_use_single_window_mode_cmd_callback to void ()*), i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.29, i32 0, i32 0) }], align 16
@.str.1 = private unnamed_addr constant [19 x i8] c"windows-docks-menu\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"dock-window-added\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"dock-window-removed\00", align 1
@global_recent_docks = external global %struct._GimpContainer*, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"notify::single-window-mode\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"windows-use-single-window-mode\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"windows-hide-docks\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"windows-dock-%04d\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"windows-menu\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"_Windows\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"_Recently Closed Docks\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"windows-dialogs-menu\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"_Dockable Dialogs\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"windows-show-display-next\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"Next Image\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"<alt>Tab\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"Switch to the next image\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"windows-show-display-previous\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"Previous Image\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"<alt><shift>Tab\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"Switch to the previous image\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"Hide Docks\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"Tab\00", align 1
@.str.25 = private unnamed_addr constant [77 x i8] c"When enabled docks and other dialogs are hidden, leaving only image windows.\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"gimp-windows-hide-docks\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"Single-Window Mode\00", align 1
@.str.28 = private unnamed_addr constant [46 x i8] c"When enabled GIMP is in a single-window mode.\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"gimp-windows-use-single-window-mode\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"notify::image\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"gimp-image\00", align 1
@.str.32 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"%s-%d.%d\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"tooltip\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"viewable\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"gimp-windows-show-dock\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"ellipsize\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"dock-window\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"notify::title\00", align 1
@windows_actions_recent_add.info_id_counter = internal global i32 1, align 4
@.str.43 = private unnamed_addr constant [17 x i8] c"recent-action-id\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"windows-recent-%04d\00", align 1
@.str.45 = private unnamed_addr constant [30 x i8] c"gimp-windows-open-recent-dock\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"max-width-chars\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"info\00", align 1

; Function Attrs: nounwind uwtable
define void @windows_actions_setup(%struct._GimpActionGroup* %group) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %list = alloca %struct._GList*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %dock_window = alloca %struct._GimpDockWindow*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %info = alloca %struct._GimpSessionInfo*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_actions(%struct._GimpActionGroup* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct._GimpActionEntry* getelementptr inbounds ([5 x %struct._GimpActionEntry], [5 x %struct._GimpActionEntry]* @windows_actions, i32 0, i32 0), i32 5)
  %1 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_toggle_actions(%struct._GimpActionGroup* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct._GimpToggleActionEntry* getelementptr inbounds ([2 x %struct._GimpToggleActionEntry], [2 x %struct._GimpToggleActionEntry]* @windows_toggle_actions, i32 0, i32 0), i32 2)
  %2 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_hide_empty(%struct._GimpActionGroup* %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 0)
  %3 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %3, i32 0, i32 1
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %displays = getelementptr inbounds %struct._Gimp, %struct._Gimp* %4, i32 0, i32 31
  %5 = load %struct._GimpContainer*, %struct._GimpContainer** %displays, align 8
  %6 = bitcast %struct._GimpContainer* %5 to i8*
  %7 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %8 = bitcast %struct._GimpActionGroup* %7 to i8*
  %call = call i64 @g_signal_connect_object(i8* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpDisplay*, %struct._GimpActionGroup*)* @windows_actions_display_add to void ()*), i8* %8, i32 0)
  %9 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %gimp1 = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %9, i32 0, i32 1
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp1, align 8
  %displays2 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %10, i32 0, i32 31
  %11 = load %struct._GimpContainer*, %struct._GimpContainer** %displays2, align 8
  %12 = bitcast %struct._GimpContainer* %11 to i8*
  %13 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %14 = bitcast %struct._GimpActionGroup* %13 to i8*
  %call3 = call i64 @g_signal_connect_object(i8* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpDisplay*, %struct._GimpActionGroup*)* @windows_actions_display_remove to void ()*), i8* %14, i32 0)
  %15 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %gimp4 = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %15, i32 0, i32 1
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp4, align 8
  %call5 = call %struct._GList* @gimp_get_display_iter(%struct._Gimp* %16)
  store %struct._GList* %call5, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %17, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 0
  %19 = load i8*, i8** %data, align 8
  %20 = bitcast i8* %19 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %20, %struct._GimpDisplay** %display, align 8
  %21 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %gimp6 = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %21, i32 0, i32 1
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp6, align 8
  %displays7 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %22, i32 0, i32 31
  %23 = load %struct._GimpContainer*, %struct._GimpContainer** %displays7, align 8
  %24 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %25 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @windows_actions_display_add(%struct._GimpContainer* %23, %struct._GimpDisplay* %24, %struct._GimpActionGroup* %25)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool8 = icmp ne %struct._GList* %26, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %27 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %27, i32 0, i32 1
  %28 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %28, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call9 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %29 = bitcast %struct._GimpDialogFactory* %call9 to i8*
  %30 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %31 = bitcast %struct._GimpActionGroup* %30 to i8*
  %call10 = call i64 @g_signal_connect_object(i8* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDialogFactory*, %struct._GimpDockWindow*, %struct._GimpActionGroup*)* @windows_actions_dock_window_added to void ()*), i8* %31, i32 0)
  %call11 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %32 = bitcast %struct._GimpDialogFactory* %call11 to i8*
  %33 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %34 = bitcast %struct._GimpActionGroup* %33 to i8*
  %call12 = call i64 @g_signal_connect_object(i8* %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDialogFactory*, %struct._GimpDockWindow*, %struct._GimpActionGroup*)* @windows_actions_dock_window_removed to void ()*), i8* %34, i32 0)
  %call13 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %call14 = call %struct._GList* @gimp_dialog_factory_get_open_dialogs(%struct._GimpDialogFactory* %call13)
  store %struct._GList* %call14, %struct._GList** %list, align 8
  br label %for.cond.15

for.cond.15:                                      ; preds = %cond.end.36, %for.end
  %35 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool16 = icmp ne %struct._GList* %35, null
  br i1 %tobool16, label %for.body.17, label %for.end.38

for.body.17:                                      ; preds = %for.cond.15
  %36 = load %struct._GList*, %struct._GList** %list, align 8
  %data18 = getelementptr inbounds %struct._GList, %struct._GList* %36, i32 0, i32 0
  %37 = load i8*, i8** %data18, align 8
  %38 = bitcast i8* %37 to %struct._GimpDockWindow*
  store %struct._GimpDockWindow* %38, %struct._GimpDockWindow** %dock_window, align 8
  %39 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %40 = bitcast %struct._GimpDockWindow* %39 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %40, %struct._GTypeInstance** %__inst, align 8
  %call19 = call i64 @gimp_dock_window_get_type() #4
  store i64 %call19, i64* %__t, align 8
  %41 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %41, null
  br i1 %tobool20, label %if.else, label %if.then

if.then:                                          ; preds = %for.body.17
  store i32 0, i32* %__r, align 4
  br label %if.end.26

if.else:                                          ; preds = %for.body.17
  %42 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %42, i32 0, i32 0
  %43 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool21 = icmp ne %struct._GTypeClass* %43, null
  br i1 %tobool21, label %land.lhs.true, label %if.else.24

land.lhs.true:                                    ; preds = %if.else
  %44 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %44, i32 0, i32 0
  %45 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %45, i32 0, i32 0
  %46 = load i64, i64* %g_type, align 8
  %47 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %46, %47
  br i1 %cmp, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.24:                                       ; preds = %land.lhs.true, %if.else
  %48 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %49 = load i64, i64* %__t, align 8
  %call25 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %48, i64 %49) #5
  store i32 %call25, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.24, %if.then.23
  br label %if.end.26

if.end.26:                                        ; preds = %if.end, %if.then
  %50 = load i32, i32* %__r, align 4
  store i32 %50, i32* %tmp
  %51 = load i32, i32* %tmp
  %tobool27 = icmp ne i32 %51, 0
  br i1 %tobool27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.end.26
  %call29 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %52 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %53 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @windows_actions_dock_window_added(%struct._GimpDialogFactory* %call29, %struct._GimpDockWindow* %52, %struct._GimpActionGroup* %53)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.end.26
  br label %for.inc.31

for.inc.31:                                       ; preds = %if.end.30
  %54 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool32 = icmp ne %struct._GList* %54, null
  br i1 %tobool32, label %cond.true.33, label %cond.false.35

cond.true.33:                                     ; preds = %for.inc.31
  %55 = load %struct._GList*, %struct._GList** %list, align 8
  %next34 = getelementptr inbounds %struct._GList, %struct._GList* %55, i32 0, i32 1
  %56 = load %struct._GList*, %struct._GList** %next34, align 8
  br label %cond.end.36

cond.false.35:                                    ; preds = %for.inc.31
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.35, %cond.true.33
  %cond37 = phi %struct._GList* [ %56, %cond.true.33 ], [ null, %cond.false.35 ]
  store %struct._GList* %cond37, %struct._GList** %list, align 8
  br label %for.cond.15

for.end.38:                                       ; preds = %for.cond.15
  %57 = load %struct._GimpContainer*, %struct._GimpContainer** @global_recent_docks, align 8
  %58 = bitcast %struct._GimpContainer* %57 to i8*
  %59 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %60 = bitcast %struct._GimpActionGroup* %59 to i8*
  %call39 = call i64 @g_signal_connect_object(i8* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpSessionInfo*, %struct._GimpActionGroup*)* @windows_actions_recent_add to void ()*), i8* %60, i32 0)
  %61 = load %struct._GimpContainer*, %struct._GimpContainer** @global_recent_docks, align 8
  %62 = bitcast %struct._GimpContainer* %61 to i8*
  %63 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %64 = bitcast %struct._GimpActionGroup* %63 to i8*
  %call40 = call i64 @g_signal_connect_object(i8* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpSessionInfo*, %struct._GimpActionGroup*)* @windows_actions_recent_remove to void ()*), i8* %64, i32 0)
  %65 = load %struct._GimpContainer*, %struct._GimpContainer** @global_recent_docks, align 8
  %66 = bitcast %struct._GimpContainer* %65 to %struct._GTypeInstance*
  %call41 = call i64 @gimp_list_get_type() #4
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call41)
  %67 = bitcast %struct._GTypeInstance* %call42 to %struct._GimpList*
  %list43 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %67, i32 0, i32 1
  %68 = load %struct._GList*, %struct._GList** %list43, align 8
  store %struct._GList* %68, %struct._GList** %list, align 8
  br label %for.cond.44

for.cond.44:                                      ; preds = %cond.end.54, %for.end.38
  %69 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool45 = icmp ne %struct._GList* %69, null
  br i1 %tobool45, label %for.body.46, label %for.end.56

for.body.46:                                      ; preds = %for.cond.44
  %70 = load %struct._GList*, %struct._GList** %list, align 8
  %data48 = getelementptr inbounds %struct._GList, %struct._GList* %70, i32 0, i32 0
  %71 = load i8*, i8** %data48, align 8
  %72 = bitcast i8* %71 to %struct._GimpSessionInfo*
  store %struct._GimpSessionInfo* %72, %struct._GimpSessionInfo** %info, align 8
  %73 = load %struct._GimpContainer*, %struct._GimpContainer** @global_recent_docks, align 8
  %74 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %75 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @windows_actions_recent_add(%struct._GimpContainer* %73, %struct._GimpSessionInfo* %74, %struct._GimpActionGroup* %75)
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.body.46
  %76 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool50 = icmp ne %struct._GList* %76, null
  br i1 %tobool50, label %cond.true.51, label %cond.false.53

cond.true.51:                                     ; preds = %for.inc.49
  %77 = load %struct._GList*, %struct._GList** %list, align 8
  %next52 = getelementptr inbounds %struct._GList, %struct._GList* %77, i32 0, i32 1
  %78 = load %struct._GList*, %struct._GList** %next52, align 8
  br label %cond.end.54

cond.false.53:                                    ; preds = %for.inc.49
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.false.53, %cond.true.51
  %cond55 = phi %struct._GList* [ %78, %cond.true.51 ], [ null, %cond.false.53 ]
  store %struct._GList* %cond55, %struct._GList** %list, align 8
  br label %for.cond.44

for.end.56:                                       ; preds = %for.cond.44
  %79 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %gimp57 = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %79, i32 0, i32 1
  %80 = load %struct._Gimp*, %struct._Gimp** %gimp57, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %80, i32 0, i32 1
  %81 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %82 = bitcast %struct._GimpCoreConfig* %81 to i8*
  %83 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %84 = bitcast %struct._GimpActionGroup* %83 to i8*
  %call58 = call i64 @g_signal_connect_object(i8* %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDisplayConfig*, %struct._GParamSpec*, %struct._GimpActionGroup*)* @windows_actions_single_window_mode_notify to void ()*), i8* %84, i32 0)
  ret void
}

declare void @gimp_action_group_add_actions(%struct._GimpActionGroup*, i8*, %struct._GimpActionEntry*, i32) #1

declare void @gimp_action_group_add_toggle_actions(%struct._GimpActionGroup*, i8*, %struct._GimpToggleActionEntry*, i32) #1

declare void @gimp_action_group_set_action_hide_empty(%struct._GimpActionGroup*, i8*, i32) #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @windows_actions_display_add(%struct._GimpContainer* %container, %struct._GimpDisplay* %display, %struct._GimpActionGroup* %group) #0 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %1 = bitcast %struct._GimpDisplay* %0 to i8*
  %2 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %3 = bitcast %struct._GimpActionGroup* %2 to i8*
  %call = call i64 @g_signal_connect_object(i8* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDisplay*, %struct._GParamSpec*, %struct._GimpActionGroup*)* @windows_actions_image_notify to void ()*), i8* %3, i32 0)
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call1 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %4)
  %tobool = icmp ne %struct._GimpImage* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %6 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @windows_actions_image_notify(%struct._GimpDisplay* %5, %struct._GParamSpec* null, %struct._GimpActionGroup* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @windows_actions_display_remove(%struct._GimpContainer* %container, %struct._GimpDisplay* %display, %struct._GimpActionGroup* %group) #0 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %action = alloca %struct._GtkAction*, align 8
  %action_name = alloca i8*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call = call i8* @gimp_display_get_action_name(%struct._GimpDisplay* %0)
  store i8* %call, i8** %action_name, align 8
  %1 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %2 = bitcast %struct._GimpActionGroup* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_action_group_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkActionGroup*
  %4 = load i8*, i8** %action_name, align 8
  %call3 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %3, i8* %4)
  store %struct._GtkAction* %call3, %struct._GtkAction** %action, align 8
  %5 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %tobool = icmp ne %struct._GtkAction* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %7 = bitcast %struct._GimpActionGroup* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_action_group_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkActionGroup*
  %9 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  call void @gtk_action_group_remove_action(%struct._GtkActionGroup* %8, %struct._GtkAction* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i8*, i8** %action_name, align 8
  call void @g_free(i8* %10)
  %11 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @windows_actions_update_display_accels(%struct._GimpActionGroup* %11)
  ret void
}

declare %struct._GList* @gimp_get_display_iter(%struct._Gimp*) #1

declare %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton() #1

; Function Attrs: nounwind uwtable
define internal void @windows_actions_dock_window_added(%struct._GimpDialogFactory* %factory, %struct._GimpDockWindow* %dock_window, %struct._GimpActionGroup* %group) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %dock_window.addr = alloca %struct._GimpDockWindow*, align 8
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %action = alloca %struct._GtkAction*, align 8
  %entry1 = alloca %struct._GimpActionEntry, align 8
  %action_name = alloca i8*, align 8
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpDockWindow* %dock_window, %struct._GimpDockWindow** %dock_window.addr, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %call = call i8* @windows_actions_dock_window_to_action_name(%struct._GimpDockWindow* %0)
  store i8* %call, i8** %action_name, align 8
  %1 = load i8*, i8** %action_name, align 8
  %name = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %entry1, i32 0, i32 0
  store i8* %1, i8** %name, align 8
  %stock_id = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %entry1, i32 0, i32 1
  store i8* null, i8** %stock_id, align 8
  %label = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %entry1, i32 0, i32 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i32 0, i32 0), i8** %label, align 8
  %accelerator = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %entry1, i32 0, i32 3
  store i8* null, i8** %accelerator, align 8
  %tooltip = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %entry1, i32 0, i32 4
  store i8* null, i8** %tooltip, align 8
  %callback = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %entry1, i32 0, i32 5
  store void ()* bitcast (void (%struct._GtkAction*, i8*)* @windows_show_dock_cmd_callback to void ()*), void ()** %callback, align 8
  %help_id = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %entry1, i32 0, i32 6
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i32 0, i32 0), i8** %help_id, align 8
  %2 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_actions(%struct._GimpActionGroup* %2, i8* null, %struct._GimpActionEntry* %entry1, i32 1)
  %3 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %4 = bitcast %struct._GimpActionGroup* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_action_group_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkActionGroup*
  %6 = load i8*, i8** %action_name, align 8
  %call4 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %5, i8* %6)
  store %struct._GtkAction* %call4, %struct._GtkAction** %action, align 8
  %7 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %8 = bitcast %struct._GtkAction* %7 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i32 3, i8* null)
  %9 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %10 = bitcast %struct._GtkAction* %9 to %struct._GTypeInstance*
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 80)
  %11 = bitcast %struct._GTypeInstance* %call5 to %struct._GObject*
  %12 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %13 = bitcast %struct._GimpDockWindow* %12 to i8*
  call void @g_object_set_data(%struct._GObject* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i8* %13)
  %14 = load i8*, i8** %action_name, align 8
  call void @g_free(i8* %14)
  %15 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %16 = bitcast %struct._GimpDockWindow* %15 to i8*
  %17 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %18 = bitcast %struct._GimpActionGroup* %17 to i8*
  %call6 = call i64 @g_signal_connect_object(i8* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDockWindow*, %struct._GParamSpec*, %struct._GimpActionGroup*)* @windows_actions_dock_window_notify to void ()*), i8* %18, i32 0)
  %19 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %20 = bitcast %struct._GimpDockWindow* %19 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_window_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call7)
  %21 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkWindow*
  %call9 = call i8* @gtk_window_get_title(%struct._GtkWindow* %21)
  %tobool = icmp ne i8* %call9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %22 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %23 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @windows_actions_dock_window_notify(%struct._GimpDockWindow* %22, %struct._GParamSpec* null, %struct._GimpActionGroup* %23)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @windows_actions_dock_window_removed(%struct._GimpDialogFactory* %factory, %struct._GimpDockWindow* %dock_window, %struct._GimpActionGroup* %group) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %dock_window.addr = alloca %struct._GimpDockWindow*, align 8
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %action = alloca %struct._GtkAction*, align 8
  %action_name = alloca i8*, align 8
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpDockWindow* %dock_window, %struct._GimpDockWindow** %dock_window.addr, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %call = call i8* @windows_actions_dock_window_to_action_name(%struct._GimpDockWindow* %0)
  store i8* %call, i8** %action_name, align 8
  %1 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %2 = bitcast %struct._GimpActionGroup* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_action_group_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkActionGroup*
  %4 = load i8*, i8** %action_name, align 8
  %call3 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %3, i8* %4)
  store %struct._GtkAction* %call3, %struct._GtkAction** %action, align 8
  %5 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %tobool = icmp ne %struct._GtkAction* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %7 = bitcast %struct._GimpActionGroup* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_action_group_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkActionGroup*
  %9 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  call void @gtk_action_group_remove_action(%struct._GtkActionGroup* %8, %struct._GtkAction* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i8*, i8** %action_name, align 8
  call void @g_free(i8* %10)
  ret void
}

declare %struct._GList* @gimp_dialog_factory_get_open_dialogs(%struct._GimpDialogFactory*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dock_window_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind uwtable
define internal void @windows_actions_recent_add(%struct._GimpContainer* %container, %struct._GimpSessionInfo* %info, %struct._GimpActionGroup* %group) #0 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %info.addr = alloca %struct._GimpSessionInfo*, align 8
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %action = alloca %struct._GtkAction*, align 8
  %entry1 = alloca %struct._GimpActionEntry, align 8
  %info_id = alloca i32, align 4
  %action_name = alloca i8*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpSessionInfo* %info, %struct._GimpSessionInfo** %info.addr, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpSessionInfo* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call2 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0))
  %3 = ptrtoint i8* %call2 to i64
  %conv = trunc i64 %3 to i32
  store i32 %conv, i32* %info_id, align 4
  %4 = load i32, i32* %info_id, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load i32, i32* @windows_actions_recent_add.info_id_counter, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* @windows_actions_recent_add.info_id_counter, align 4
  store i32 %5, i32* %info_id, align 4
  %6 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %7 = bitcast %struct._GimpSessionInfo* %6 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 80)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %9 = load i32, i32* %info_id, align 4
  %conv4 = sext i32 %9 to i64
  %10 = inttoptr i64 %conv4 to i8*
  call void @g_object_set_data(%struct._GObject* %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0), i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, i32* %info_id, align 4
  %call5 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i32 0, i32 0), i32 %11)
  store i8* %call5, i8** %action_name, align 8
  %12 = load i8*, i8** %action_name, align 8
  %name = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %entry1, i32 0, i32 0
  store i8* %12, i8** %name, align 8
  %stock_id = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %entry1, i32 0, i32 1
  store i8* null, i8** %stock_id, align 8
  %13 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %14 = bitcast %struct._GimpSessionInfo* %13 to i8*
  %call6 = call i8* @gimp_object_get_name(i8* %14)
  %label = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %entry1, i32 0, i32 2
  store i8* %call6, i8** %label, align 8
  %accelerator = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %entry1, i32 0, i32 3
  store i8* null, i8** %accelerator, align 8
  %15 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %16 = bitcast %struct._GimpSessionInfo* %15 to i8*
  %call7 = call i8* @gimp_object_get_name(i8* %16)
  %tooltip = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %entry1, i32 0, i32 4
  store i8* %call7, i8** %tooltip, align 8
  %callback = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %entry1, i32 0, i32 5
  store void ()* bitcast (void (%struct._GtkAction*, i8*)* @windows_open_recent_cmd_callback to void ()*), void ()** %callback, align 8
  %help_id = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %entry1, i32 0, i32 6
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.45, i32 0, i32 0), i8** %help_id, align 8
  %17 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_actions(%struct._GimpActionGroup* %17, i8* null, %struct._GimpActionEntry* %entry1, i32 1)
  %18 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %19 = bitcast %struct._GimpActionGroup* %18 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_action_group_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call8)
  %20 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkActionGroup*
  %21 = load i8*, i8** %action_name, align 8
  %call10 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %20, i8* %21)
  store %struct._GtkAction* %call10, %struct._GtkAction** %action, align 8
  %22 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %23 = bitcast %struct._GtkAction* %22 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i32 0, i32 0), i32 30, i8* null)
  %24 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %25 = bitcast %struct._GtkAction* %24 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 80)
  %26 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  %27 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %28 = bitcast %struct._GimpSessionInfo* %27 to i8*
  call void @g_object_set_data(%struct._GObject* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i8* %28)
  %29 = load i8*, i8** %action_name, align 8
  call void @g_free(i8* %29)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @windows_actions_recent_remove(%struct._GimpContainer* %container, %struct._GimpSessionInfo* %info, %struct._GimpActionGroup* %group) #0 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %info.addr = alloca %struct._GimpSessionInfo*, align 8
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %action = alloca %struct._GtkAction*, align 8
  %info_id = alloca i32, align 4
  %action_name = alloca i8*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpSessionInfo* %info, %struct._GimpSessionInfo** %info.addr, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpSessionInfo* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0))
  %3 = ptrtoint i8* %call1 to i64
  %conv = trunc i64 %3 to i32
  store i32 %conv, i32* %info_id, align 4
  %4 = load i32, i32* %info_id, align 4
  %call2 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i32 0, i32 0), i32 %4)
  store i8* %call2, i8** %action_name, align 8
  %5 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %6 = bitcast %struct._GimpActionGroup* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_action_group_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkActionGroup*
  %8 = load i8*, i8** %action_name, align 8
  %call5 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %7, i8* %8)
  store %struct._GtkAction* %call5, %struct._GtkAction** %action, align 8
  %9 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %tobool = icmp ne %struct._GtkAction* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %11 = bitcast %struct._GimpActionGroup* %10 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_action_group_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call6)
  %12 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkActionGroup*
  %13 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  call void @gtk_action_group_remove_action(%struct._GtkActionGroup* %12, %struct._GtkAction* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load i8*, i8** %action_name, align 8
  call void @g_free(i8* %14)
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_list_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @windows_actions_single_window_mode_notify(%struct._GimpDisplayConfig* %config, %struct._GParamSpec* %pspec, %struct._GimpActionGroup* %group) #0 {
entry:
  %config.addr = alloca %struct._GimpDisplayConfig*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  store %struct._GimpDisplayConfig* %config, %struct._GimpDisplayConfig** %config.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %1 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config.addr, align 8
  %2 = bitcast %struct._GimpDisplayConfig* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_gui_config_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGuiConfig*
  %single_window_mode = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %3, i32 0, i32 32
  %4 = load i32, i32* %single_window_mode, align 4
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0), i32 %4)
  ret void
}

; Function Attrs: nounwind uwtable
define void @windows_actions_update(%struct._GimpActionGroup* %group, i8* %data) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %data.addr = alloca i8*, align 8
  %config = alloca %struct._GimpGuiConfig*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config1 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 1
  %2 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config1, align 8
  %3 = bitcast %struct._GimpCoreConfig* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_gui_config_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpGuiConfig*
  store %struct._GimpGuiConfig* %4, %struct._GimpGuiConfig** %config, align 8
  %5 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %6 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %single_window_mode = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %6, i32 0, i32 32
  %7 = load i32, i32* %single_window_mode, align 4
  %cmp = icmp ne i32 %7, 0
  %conv = zext i1 %cmp to i32
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0), i32 %conv)
  %8 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %9 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %hide_docks = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %9, i32 0, i32 31
  %10 = load i32, i32* %hide_docks, align 4
  %cmp3 = icmp ne i32 %10, 0
  %conv4 = zext i1 %cmp3 to i32
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), i32 %conv4)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_gui_config_get_type() #2

declare void @gimp_action_group_set_action_active(%struct._GimpActionGroup*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define i8* @windows_actions_dock_window_to_action_name(%struct._GimpDockWindow* %dock_window) #0 {
entry:
  %dock_window.addr = alloca %struct._GimpDockWindow*, align 8
  store %struct._GimpDockWindow* %dock_window, %struct._GimpDockWindow** %dock_window.addr, align 8
  %0 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %call = call i32 @gimp_dock_window_get_id(%struct._GimpDockWindow* %0)
  %call1 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i32 %call)
  ret i8* %call1
}

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i32 @gimp_dock_window_get_id(%struct._GimpDockWindow*) #1

declare void @windows_show_display_next_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @windows_show_display_previous_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @windows_hide_docks_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @windows_use_single_window_mode_cmd_callback(%struct._GtkAction*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @windows_actions_image_notify(%struct._GimpDisplay* %display, %struct._GParamSpec* %unused, %struct._GimpActionGroup* %group) #0 {
entry:
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %unused.addr = alloca %struct._GParamSpec*, align 8
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %action = alloca %struct._GtkAction*, align 8
  %action_name = alloca i8*, align 8
  %entry7 = alloca %struct._GimpActionEntry, align 8
  %display_name = alloca i8*, align 8
  %escaped = alloca i8*, align 8
  %title = alloca i8*, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store %struct._GParamSpec* %unused, %struct._GParamSpec** %unused.addr, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call1 = call i8* @gimp_display_get_action_name(%struct._GimpDisplay* %2)
  store i8* %call1, i8** %action_name, align 8
  %3 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %4 = bitcast %struct._GimpActionGroup* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_action_group_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkActionGroup*
  %6 = load i8*, i8** %action_name, align 8
  %call4 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %5, i8* %6)
  store %struct._GtkAction* %call4, %struct._GtkAction** %action, align 8
  %7 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %tobool5 = icmp ne %struct._GtkAction* %7, null
  br i1 %tobool5, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %if.then
  %8 = load i8*, i8** %action_name, align 8
  %name = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %entry7, i32 0, i32 0
  store i8* %8, i8** %name, align 8
  %stock_id = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %entry7, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i8** %stock_id, align 8
  %label = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %entry7, i32 0, i32 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i32 0, i32 0), i8** %label, align 8
  %accelerator = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %entry7, i32 0, i32 3
  store i8* null, i8** %accelerator, align 8
  %tooltip = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %entry7, i32 0, i32 4
  store i8* null, i8** %tooltip, align 8
  %callback = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %entry7, i32 0, i32 5
  store void ()* bitcast (void (%struct._GtkAction*, i8*)* @windows_show_display_cmd_callback to void ()*), void ()** %callback, align 8
  %help_id = getelementptr inbounds %struct._GimpActionEntry, %struct._GimpActionEntry* %entry7, i32 0, i32 6
  store i8* null, i8** %help_id, align 8
  %9 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_actions(%struct._GimpActionGroup* %9, i8* null, %struct._GimpActionEntry* %entry7, i32 1)
  %10 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %11 = load i8*, i8** %action_name, align 8
  call void @gimp_action_group_set_action_always_show_image(%struct._GimpActionGroup* %10, i8* %11, i32 1)
  %12 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %13 = bitcast %struct._GimpActionGroup* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_action_group_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkActionGroup*
  %15 = load i8*, i8** %action_name, align 8
  %call10 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %14, i8* %15)
  store %struct._GtkAction* %call10, %struct._GtkAction** %action, align 8
  %16 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %17 = bitcast %struct._GtkAction* %16 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 80)
  %18 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  %19 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %20 = bitcast %struct._GimpDisplay* %19 to i8*
  call void @g_object_set_data(%struct._GObject* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i8* %20)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call12 = call i8* @gimp_image_get_display_name(%struct._GimpImage* %21)
  store i8* %call12, i8** %display_name, align 8
  %22 = load i8*, i8** %display_name, align 8
  %call13 = call noalias i8* @gimp_escape_uline(i8* %22)
  store i8* %call13, i8** %escaped, align 8
  %23 = load i8*, i8** %escaped, align 8
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call14 = call i32 @gimp_image_get_ID(%struct._GimpImage* %24)
  %25 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call15 = call i32 @gimp_display_get_instance(%struct._GimpDisplay* %25)
  %call16 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i8* %23, i32 %call14, i32 %call15)
  store i8* %call16, i8** %title, align 8
  %26 = load i8*, i8** %escaped, align 8
  call void @g_free(i8* %26)
  %27 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %28 = bitcast %struct._GtkAction* %27 to i8*
  %29 = load i8*, i8** %title, align 8
  %30 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call17 = call i8* @gimp_image_get_display_path(%struct._GimpImage* %30)
  %31 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %32 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %32, i32 0, i32 1
  %33 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call18 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %33)
  call void (i8*, i8*, ...) @g_object_set(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i8* %call17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), %struct._GimpImage* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), %struct._GimpContext* %call18, i8* null)
  %34 = load i8*, i8** %title, align 8
  call void @g_free(i8* %34)
  %35 = load i8*, i8** %action_name, align 8
  call void @g_free(i8* %35)
  %36 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @windows_actions_update_display_accels(%struct._GimpActionGroup* %36)
  br label %if.end.20

if.else:                                          ; preds = %entry
  %37 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %gimp19 = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %37, i32 0, i32 1
  %38 = load %struct._Gimp*, %struct._Gimp** %gimp19, align 8
  %displays = getelementptr inbounds %struct._Gimp, %struct._Gimp* %38, i32 0, i32 31
  %39 = load %struct._GimpContainer*, %struct._GimpContainer** %displays, align 8
  %40 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %41 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @windows_actions_display_remove(%struct._GimpContainer* %39, %struct._GimpDisplay* %40, %struct._GimpActionGroup* %41)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.end
  ret void
}

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare i8* @gimp_display_get_action_name(%struct._GimpDisplay*) #1

declare %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_action_group_get_type() #2

declare void @windows_show_display_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @gimp_action_group_set_action_always_show_image(%struct._GimpActionGroup*, i8*, i32) #1

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare i8* @gimp_image_get_display_name(%struct._GimpImage*) #1

declare noalias i8* @gimp_escape_uline(i8*) #1

declare i32 @gimp_image_get_ID(%struct._GimpImage*) #1

declare i32 @gimp_display_get_instance(%struct._GimpDisplay*) #1

declare void @g_free(i8*) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare i8* @gimp_image_get_display_path(%struct._GimpImage*) #1

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #1

; Function Attrs: nounwind uwtable
define internal void @windows_actions_update_display_accels(%struct._GimpActionGroup* %group) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %list = alloca %struct._GList*, align 8
  %i = alloca i32, align 4
  %display = alloca %struct._GimpDisplay*, align 8
  %action = alloca %struct._GtkAction*, align 8
  %action_name = alloca i8*, align 8
  %accel_path = alloca i8*, align 8
  %accel_key = alloca i32, align 4
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call = call %struct._GList* @gimp_get_display_iter(%struct._Gimp* %1)
  store %struct._GList* %call, %struct._GList** %list, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8
  %7 = bitcast i8* %6 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %7, %struct._GimpDisplay** %display, align 8
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call1 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %8)
  %tobool2 = icmp ne %struct._GimpImage* %call1, null
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %9 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call3 = call i8* @gimp_display_get_action_name(%struct._GimpDisplay* %9)
  store i8* %call3, i8** %action_name, align 8
  %10 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %11 = bitcast %struct._GimpActionGroup* %10 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_action_group_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call4)
  %12 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkActionGroup*
  %13 = load i8*, i8** %action_name, align 8
  %call6 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %12, i8* %13)
  store %struct._GtkAction* %call6, %struct._GtkAction** %action, align 8
  %14 = load i8*, i8** %action_name, align 8
  call void @g_free(i8* %14)
  %15 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %tobool7 = icmp ne %struct._GtkAction* %15, null
  br i1 %tobool7, label %if.then.8, label %if.end.14

if.then.8:                                        ; preds = %if.end
  %16 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %call9 = call i8* @gtk_action_get_accel_path(%struct._GtkAction* %16)
  store i8* %call9, i8** %accel_path, align 8
  %17 = load i32, i32* %i, align 4
  %cmp10 = icmp slt i32 %17, 9
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then.8
  %18 = load i32, i32* %i, align 4
  %add = add nsw i32 49, %18
  store i32 %add, i32* %accel_key, align 4
  br label %if.end.12

if.else:                                          ; preds = %if.then.8
  store i32 48, i32* %accel_key, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.11
  %19 = load i8*, i8** %accel_path, align 8
  %20 = load i32, i32* %accel_key, align 4
  %call13 = call i32 @gtk_accel_map_change_entry(i8* %19, i32 %20, i32 8, i32 1)
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.12, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %21 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool15 = icmp ne %struct._GList* %21, null
  br i1 %tobool15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %22 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %22, i32 0, i32 1
  %23 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %23, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %land.end
  ret void
}

declare i8* @gtk_action_get_accel_path(%struct._GtkAction*) #1

declare i32 @gtk_accel_map_change_entry(i8*, i32, i32, i32) #1

declare void @gtk_action_group_remove_action(%struct._GtkActionGroup*, %struct._GtkAction*) #1

declare void @windows_show_dock_cmd_callback(%struct._GtkAction*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @windows_actions_dock_window_notify(%struct._GimpDockWindow* %dock_window, %struct._GParamSpec* %pspec, %struct._GimpActionGroup* %group) #0 {
entry:
  %dock_window.addr = alloca %struct._GimpDockWindow*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %action = alloca %struct._GtkAction*, align 8
  %action_name = alloca i8*, align 8
  store %struct._GimpDockWindow* %dock_window, %struct._GimpDockWindow** %dock_window.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %call = call i8* @windows_actions_dock_window_to_action_name(%struct._GimpDockWindow* %0)
  store i8* %call, i8** %action_name, align 8
  %1 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %2 = bitcast %struct._GimpActionGroup* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_action_group_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkActionGroup*
  %4 = load i8*, i8** %action_name, align 8
  %call3 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %3, i8* %4)
  store %struct._GtkAction* %call3, %struct._GtkAction** %action, align 8
  %5 = load i8*, i8** %action_name, align 8
  call void @g_free(i8* %5)
  %6 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %tobool = icmp ne %struct._GtkAction* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %8 = bitcast %struct._GtkAction* %7 to i8*
  %9 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %10 = bitcast %struct._GimpDockWindow* %9 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_window_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call4)
  %11 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWindow*
  %call6 = call i8* @gtk_window_get_title(%struct._GtkWindow* %11)
  %12 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %13 = bitcast %struct._GimpDockWindow* %12 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_window_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call7)
  %14 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkWindow*
  %call9 = call i8* @gtk_window_get_title(%struct._GtkWindow* %14)
  call void (i8*, i8*, ...) @g_object_set(i8* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i8* %call6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i8* %call9, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i8* @gtk_window_get_title(%struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare i8* @gimp_object_get_name(i8*) #1

declare void @windows_open_recent_cmd_callback(%struct._GtkAction*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
