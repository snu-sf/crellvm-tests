; ModuleID = './app/actions/windows-commands.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpContainerPriv = type opaque
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
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
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GtkToggleAction = type { %struct._GtkAction, %struct._GtkToggleActionPrivate* }
%struct._GtkToggleActionPrivate = type opaque
%struct._GimpGuiConfig = type { %struct._GimpDisplayConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayOptions = type opaque
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpDisplayShell = type { %struct._GtkBox, %struct._GimpDisplay*, %struct._GimpUIManager*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct._GimpZoomModel*, double, i32, i32, i32, double, i32, i32, i32, %struct._Selection*, %struct._GList*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._cairo_surface*, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, i32, i8*, i8*, i32, i32, %struct._GdkPixbuf*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpColorDisplayStack*, i32, %struct._GtkWidget*, i32, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, %struct._GimpDrawable*, %struct._GimpRGB, %struct._GimpMotionBuffer*, %struct._GQueue* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
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
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpUIManager = type opaque
%struct._GimpZoomModel = type { %struct._GObject, i8* }
%struct._Selection = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GimpCanvasItem = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpColorDisplayStack = type { %struct._GObject, %struct._GList* }
%struct._GimpTreeHandler = type opaque
%struct._GimpDrawable = type opaque
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpSessionInfo = type { %struct._GimpObject, %struct._GimpSessionInfoPrivate* }
%struct._GimpSessionInfoPrivate = type opaque
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque

@.str = private unnamed_addr constant [11 x i8] c"hide-docks\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"single-window-mode\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"dock-window\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@global_recent_docks = external global %struct._GimpContainer*, align 8

; Function Attrs: nounwind uwtable
define void @windows_hide_docks_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %active = alloca i32, align 4
  %gimp = alloca %struct._Gimp*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %1 = bitcast %struct._GtkAction* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_action_get_type() #3
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleAction*
  %call2 = call i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction* %2)
  store i32 %call2, i32* %active, align 4
  %3 = load i8*, i8** %data.addr, align 8
  %call3 = call %struct._Gimp* @action_data_get_gimp(i8* %3)
  store %struct._Gimp* %call3, %struct._Gimp** %gimp, align 8
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tobool = icmp ne %struct._Gimp* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %5, i32 0, i32 1
  %6 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %7 = bitcast %struct._GimpCoreConfig* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_gui_config_get_type() #3
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpGuiConfig*
  %hide_docks = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %8, i32 0, i32 31
  %9 = load i32, i32* %hide_docks, align 4
  %10 = load i32, i32* %active, align 4
  %cmp = icmp eq i32 %9, %10
  br i1 %cmp, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  br label %return

if.end.7:                                         ; preds = %if.end
  %11 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config8 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %11, i32 0, i32 1
  %12 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config8, align 8
  %13 = bitcast %struct._GimpCoreConfig* %12 to i8*
  %14 = load i32, i32* %active, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 %14, i8* null)
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then
  ret void
}

declare i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_action_get_type() #2

declare %struct._Gimp* @action_data_get_gimp(i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_gui_config_get_type() #2

declare void @g_object_set(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @windows_use_single_window_mode_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %active = alloca i32, align 4
  %gimp = alloca %struct._Gimp*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %1 = bitcast %struct._GtkAction* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_action_get_type() #3
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleAction*
  %call2 = call i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction* %2)
  store i32 %call2, i32* %active, align 4
  %3 = load i8*, i8** %data.addr, align 8
  %call3 = call %struct._Gimp* @action_data_get_gimp(i8* %3)
  store %struct._Gimp* %call3, %struct._Gimp** %gimp, align 8
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tobool = icmp ne %struct._Gimp* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %5, i32 0, i32 1
  %6 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %7 = bitcast %struct._GimpCoreConfig* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_gui_config_get_type() #3
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpGuiConfig*
  %single_window_mode = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %8, i32 0, i32 32
  %9 = load i32, i32* %single_window_mode, align 4
  %10 = load i32, i32* %active, align 4
  %cmp = icmp eq i32 %9, %10
  br i1 %cmp, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  br label %return

if.end.7:                                         ; preds = %if.end
  %11 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config8 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %11, i32 0, i32 1
  %12 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config8, align 8
  %13 = bitcast %struct._GimpCoreConfig* %12 to i8*
  %14 = load i32, i32* %active, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 %14, i8* null)
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @windows_show_display_next_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %index = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpDisplay* @action_data_get_display(i8* %0)
  store %struct._GimpDisplay* %call, %struct._GimpDisplay** %display, align 8
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8
  %call1 = call %struct._Gimp* @action_data_get_gimp(i8* %2)
  store %struct._Gimp* %call1, %struct._Gimp** %gimp, align 8
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tobool2 = icmp ne %struct._Gimp* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %displays = getelementptr inbounds %struct._Gimp, %struct._Gimp* %4, i32 0, i32 31
  %5 = load %struct._GimpContainer*, %struct._GimpContainer** %displays, align 8
  %6 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %7 = bitcast %struct._GimpDisplay* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_object_get_type() #3
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpObject*
  %call7 = call i32 @gimp_container_get_child_index(%struct._GimpContainer* %5, %struct._GimpObject* %8)
  store i32 %call7, i32* %index, align 4
  %9 = load i32, i32* %index, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %index, align 4
  %10 = load i32, i32* %index, align 4
  %11 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %displays8 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %11, i32 0, i32 31
  %12 = load %struct._GimpContainer*, %struct._GimpContainer** %displays8, align 8
  %call9 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %12)
  %cmp = icmp sge i32 %10, %call9
  br i1 %cmp, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.4
  store i32 0, i32* %index, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.4
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %displays12 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 31
  %14 = load %struct._GimpContainer*, %struct._GimpContainer** %displays12, align 8
  %15 = load i32, i32* %index, align 4
  %call13 = call %struct._GimpObject* @gimp_container_get_child_by_index(%struct._GimpContainer* %14, i32 %15)
  %16 = bitcast %struct._GimpObject* %call13 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_display_get_type() #3
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call14)
  %17 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %17, %struct._GimpDisplay** %display, align 8
  %18 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call16 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %18)
  call void @gimp_display_shell_present(%struct._GimpDisplayShell* %call16)
  br label %return

return:                                           ; preds = %if.end.11, %if.then.3, %if.then
  ret void
}

declare %struct._GimpDisplay* @action_data_get_display(i8*) #1

declare i32 @gimp_container_get_child_index(%struct._GimpContainer*, %struct._GimpObject*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i32 @gimp_container_get_n_children(%struct._GimpContainer*) #1

declare %struct._GimpObject* @gimp_container_get_child_by_index(%struct._GimpContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_display_get_type() #2

declare void @gimp_display_shell_present(%struct._GimpDisplayShell*) #1

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

; Function Attrs: nounwind uwtable
define void @windows_show_display_previous_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %index = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpDisplay* @action_data_get_display(i8* %0)
  store %struct._GimpDisplay* %call, %struct._GimpDisplay** %display, align 8
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8
  %call1 = call %struct._Gimp* @action_data_get_gimp(i8* %2)
  store %struct._Gimp* %call1, %struct._Gimp** %gimp, align 8
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tobool2 = icmp ne %struct._Gimp* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %displays = getelementptr inbounds %struct._Gimp, %struct._Gimp* %4, i32 0, i32 31
  %5 = load %struct._GimpContainer*, %struct._GimpContainer** %displays, align 8
  %6 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %7 = bitcast %struct._GimpDisplay* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_object_get_type() #3
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpObject*
  %call7 = call i32 @gimp_container_get_child_index(%struct._GimpContainer* %5, %struct._GimpObject* %8)
  store i32 %call7, i32* %index, align 4
  %9 = load i32, i32* %index, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %index, align 4
  %10 = load i32, i32* %index, align 4
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end.4
  %11 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %displays9 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %11, i32 0, i32 31
  %12 = load %struct._GimpContainer*, %struct._GimpContainer** %displays9, align 8
  %call10 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %12)
  %sub = sub nsw i32 %call10, 1
  store i32 %sub, i32* %index, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end.4
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %displays12 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 31
  %14 = load %struct._GimpContainer*, %struct._GimpContainer** %displays12, align 8
  %15 = load i32, i32* %index, align 4
  %call13 = call %struct._GimpObject* @gimp_container_get_child_by_index(%struct._GimpContainer* %14, i32 %15)
  %16 = bitcast %struct._GimpObject* %call13 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_display_get_type() #3
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call14)
  %17 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %17, %struct._GimpDisplay** %display, align 8
  %18 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call16 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %18)
  call void @gimp_display_shell_present(%struct._GimpDisplayShell* %call16)
  br label %return

return:                                           ; preds = %if.end.11, %if.then.3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @windows_show_display_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %1 = bitcast %struct._GtkAction* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %3, %struct._GimpDisplay** %display, align 8
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call2 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %4)
  call void @gimp_display_shell_present(%struct._GimpDisplayShell* %call2)
  ret void
}

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

; Function Attrs: nounwind uwtable
define void @windows_show_dock_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %dock_window = alloca %struct._GtkWindow*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %1 = bitcast %struct._GtkAction* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct._GtkWindow*
  store %struct._GtkWindow* %3, %struct._GtkWindow** %dock_window, align 8
  %4 = load %struct._GtkWindow*, %struct._GtkWindow** %dock_window, align 8
  call void @gtk_window_present(%struct._GtkWindow* %4)
  ret void
}

declare void @gtk_window_present(%struct._GtkWindow*) #1

; Function Attrs: nounwind uwtable
define void @windows_open_recent_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %info = alloca %struct._GimpSessionInfo*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %1 = bitcast %struct._GtkAction* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct._GimpSessionInfo*
  store %struct._GimpSessionInfo* %3, %struct._GimpSessionInfo** %info, align 8
  %4 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %5 = bitcast %struct._GimpSessionInfo* %4 to i8*
  %call2 = call i8* @g_object_ref(i8* %5)
  %6 = load %struct._GimpContainer*, %struct._GimpContainer** @global_recent_docks, align 8
  %7 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %8 = bitcast %struct._GimpSessionInfo* %7 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_object_get_type() #3
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call3)
  %9 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpObject*
  %call5 = call i32 @gimp_container_remove(%struct._GimpContainer* %6, %struct._GimpObject* %9)
  %call6 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %10 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  call void @gimp_dialog_factory_add_session_info(%struct._GimpDialogFactory* %call6, %struct._GimpSessionInfo* %10)
  %11 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %call7 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  call void @gimp_session_info_restore(%struct._GimpSessionInfo* %11, %struct._GimpDialogFactory* %call7)
  %12 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %13 = bitcast %struct._GimpSessionInfo* %12 to i8*
  call void @g_object_unref(i8* %13)
  ret void
}

declare i8* @g_object_ref(i8*) #1

declare i32 @gimp_container_remove(%struct._GimpContainer*, %struct._GimpObject*) #1

declare void @gimp_dialog_factory_add_session_info(%struct._GimpDialogFactory*, %struct._GimpSessionInfo*) #1

declare %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton() #1

declare void @gimp_session_info_restore(%struct._GimpSessionInfo*, %struct._GimpDialogFactory*) #1

declare void @g_object_unref(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
