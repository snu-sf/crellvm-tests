; ModuleID = './app/menus/windows-menu.bc'
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
%struct._GimpUIManager = type { %struct._GtkUIManager, i8*, %struct._Gimp*, %struct._GList* }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
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
%struct._GimpContext = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
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
%struct._GimpSessionInfo = type { %struct._GimpObject, %struct._GimpSessionInfoPrivate* }
%struct._GimpSessionInfoPrivate = type opaque
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct._GtkTooltip = type opaque
%struct._GimpAction = type { %struct._GtkAction, %struct._GimpContext*, %struct._GimpRGB*, %struct._GimpViewable*, i32, i32 }
%struct._GdkPixbuf = type opaque
%struct._GimpDialogFactoryEntry = type { i8*, i8*, i8*, i8*, i8*, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)*, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)*, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"Gimp-Menus\00", align 1
@__func__.windows_menu_setup = private unnamed_addr constant [19 x i8] c"windows_menu_setup\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"GIMP_IS_UI_MANAGER (manager)\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"ui_path != NULL\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"image-menu-ui-path\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"dock-window-added\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"dock-window-removed\00", align 1
@global_recent_docks = external global %struct._GimpContainer*, align 8
@.str.8 = private unnamed_addr constant [14 x i8] c"notify::image\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"windows-display-%04d-merge-id\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"%s/Windows/Images\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"windows\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"query-tooltip\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"%s/Windows/Docks\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"windows-dock-%04d-merge-id\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"gimp-toolbox-window\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"recent-action-id\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"windows-recent-%04d\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"%s/Windows/Recently Closed Docks\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"windows-recent-%04d-merge-id\00", align 1

; Function Attrs: nounwind uwtable
define void @windows_menu_setup(%struct._GimpUIManager* %manager, i8* %ui_path) #0 {
entry:
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  %ui_path.addr = alloca i8*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %display = alloca %struct._GimpDisplay*, align 8
  %dock_window = alloca %struct._GimpDockWindow*, align 8
  %__inst41 = alloca %struct._GTypeInstance*, align 8
  %__t43 = alloca i64, align 8
  %__r46 = alloca i32, align 4
  %tmp61 = alloca i32, align 4
  %info = alloca %struct._GimpSessionInfo*, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.windows_menu_setup, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0))
  br label %for.end.91

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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.windows_menu_setup, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0))
  br label %for.end.91

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %15 = bitcast %struct._GimpUIManager* %14 to %struct._GTypeInstance*
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 80)
  %16 = bitcast %struct._GTypeInstance* %call17 to %struct._GObject*
  %17 = load i8*, i8** %ui_path.addr, align 8
  call void @g_object_set_data(%struct._GObject* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i8* %17)
  %18 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %18, i32 0, i32 2
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %displays = getelementptr inbounds %struct._Gimp, %struct._Gimp* %19, i32 0, i32 31
  %20 = load %struct._GimpContainer*, %struct._GimpContainer** %displays, align 8
  %21 = bitcast %struct._GimpContainer* %20 to i8*
  %22 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %23 = bitcast %struct._GimpUIManager* %22 to i8*
  %call18 = call i64 @g_signal_connect_object(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpDisplay*, %struct._GimpUIManager*)* @windows_menu_display_add to void ()*), i8* %23, i32 0)
  %24 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %gimp19 = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %24, i32 0, i32 2
  %25 = load %struct._Gimp*, %struct._Gimp** %gimp19, align 8
  %displays20 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %25, i32 0, i32 31
  %26 = load %struct._GimpContainer*, %struct._GimpContainer** %displays20, align 8
  %27 = bitcast %struct._GimpContainer* %26 to i8*
  %28 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %29 = bitcast %struct._GimpUIManager* %28 to i8*
  %call21 = call i64 @g_signal_connect_object(i8* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpDisplay*, %struct._GimpUIManager*)* @windows_menu_display_remove to void ()*), i8* %29, i32 0)
  %30 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %gimp22 = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %30, i32 0, i32 2
  %31 = load %struct._Gimp*, %struct._Gimp** %gimp22, align 8
  %call23 = call %struct._GList* @gimp_get_display_iter(%struct._Gimp* %31)
  store %struct._GList* %call23, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.16
  %32 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool24 = icmp ne %struct._GList* %32, null
  br i1 %tobool24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %33, i32 0, i32 0
  %34 = load i8*, i8** %data, align 8
  %35 = bitcast i8* %34 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %35, %struct._GimpDisplay** %display, align 8
  %36 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %gimp26 = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %36, i32 0, i32 2
  %37 = load %struct._Gimp*, %struct._Gimp** %gimp26, align 8
  %displays27 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %37, i32 0, i32 31
  %38 = load %struct._GimpContainer*, %struct._GimpContainer** %displays27, align 8
  %39 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %40 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  call void @windows_menu_display_add(%struct._GimpContainer* %38, %struct._GimpDisplay* %39, %struct._GimpUIManager* %40)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool28 = icmp ne %struct._GList* %41, null
  br i1 %tobool28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %42 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %42, i32 0, i32 1
  %43 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %43, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call29 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %44 = bitcast %struct._GimpDialogFactory* %call29 to i8*
  %45 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %46 = bitcast %struct._GimpUIManager* %45 to i8*
  %call30 = call i64 @g_signal_connect_object(i8* %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDialogFactory*, %struct._GimpDockWindow*, %struct._GimpUIManager*)* @windows_menu_dock_window_added to void ()*), i8* %46, i32 0)
  %call31 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %47 = bitcast %struct._GimpDialogFactory* %call31 to i8*
  %48 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %49 = bitcast %struct._GimpUIManager* %48 to i8*
  %call32 = call i64 @g_signal_connect_object(i8* %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDialogFactory*, %struct._GimpDockWindow*, %struct._GimpUIManager*)* @windows_menu_dock_window_removed to void ()*), i8* %49, i32 0)
  %call33 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %call34 = call %struct._GList* @gimp_dialog_factory_get_open_dialogs(%struct._GimpDialogFactory* %call33)
  store %struct._GList* %call34, %struct._GList** %list, align 8
  br label %for.cond.35

for.cond.35:                                      ; preds = %cond.end.71, %for.end
  %50 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool36 = icmp ne %struct._GList* %50, null
  br i1 %tobool36, label %for.body.37, label %for.end.73

for.body.37:                                      ; preds = %for.cond.35
  %51 = load %struct._GList*, %struct._GList** %list, align 8
  %data39 = getelementptr inbounds %struct._GList, %struct._GList* %51, i32 0, i32 0
  %52 = load i8*, i8** %data39, align 8
  %53 = bitcast i8* %52 to %struct._GimpDockWindow*
  store %struct._GimpDockWindow* %53, %struct._GimpDockWindow** %dock_window, align 8
  %54 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %55 = bitcast %struct._GimpDockWindow* %54 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %55, %struct._GTypeInstance** %__inst41, align 8
  %call44 = call i64 @gimp_dock_window_get_type() #4
  store i64 %call44, i64* %__t43, align 8
  %56 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %tobool47 = icmp ne %struct._GTypeInstance* %56, null
  br i1 %tobool47, label %if.else.49, label %if.then.48

if.then.48:                                       ; preds = %for.body.37
  store i32 0, i32* %__r46, align 4
  br label %if.end.60

if.else.49:                                       ; preds = %for.body.37
  %57 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class50 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %57, i32 0, i32 0
  %58 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class50, align 8
  %tobool51 = icmp ne %struct._GTypeClass* %58, null
  br i1 %tobool51, label %land.lhs.true.52, label %if.else.57

land.lhs.true.52:                                 ; preds = %if.else.49
  %59 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class53 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %59, i32 0, i32 0
  %60 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class53, align 8
  %g_type54 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %60, i32 0, i32 0
  %61 = load i64, i64* %g_type54, align 8
  %62 = load i64, i64* %__t43, align 8
  %cmp55 = icmp eq i64 %61, %62
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %land.lhs.true.52
  store i32 1, i32* %__r46, align 4
  br label %if.end.59

if.else.57:                                       ; preds = %land.lhs.true.52, %if.else.49
  %63 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %64 = load i64, i64* %__t43, align 8
  %call58 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %63, i64 %64) #5
  store i32 %call58, i32* %__r46, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.57, %if.then.56
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.48
  %65 = load i32, i32* %__r46, align 4
  store i32 %65, i32* %tmp61
  %66 = load i32, i32* %tmp61
  %tobool62 = icmp ne i32 %66, 0
  br i1 %tobool62, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %if.end.60
  %call64 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %67 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %68 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  call void @windows_menu_dock_window_added(%struct._GimpDialogFactory* %call64, %struct._GimpDockWindow* %67, %struct._GimpUIManager* %68)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %if.end.60
  br label %for.inc.66

for.inc.66:                                       ; preds = %if.end.65
  %69 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool67 = icmp ne %struct._GList* %69, null
  br i1 %tobool67, label %cond.true.68, label %cond.false.70

cond.true.68:                                     ; preds = %for.inc.66
  %70 = load %struct._GList*, %struct._GList** %list, align 8
  %next69 = getelementptr inbounds %struct._GList, %struct._GList* %70, i32 0, i32 1
  %71 = load %struct._GList*, %struct._GList** %next69, align 8
  br label %cond.end.71

cond.false.70:                                    ; preds = %for.inc.66
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.70, %cond.true.68
  %cond72 = phi %struct._GList* [ %71, %cond.true.68 ], [ null, %cond.false.70 ]
  store %struct._GList* %cond72, %struct._GList** %list, align 8
  br label %for.cond.35

for.end.73:                                       ; preds = %for.cond.35
  %72 = load %struct._GimpContainer*, %struct._GimpContainer** @global_recent_docks, align 8
  %73 = bitcast %struct._GimpContainer* %72 to i8*
  %74 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %75 = bitcast %struct._GimpUIManager* %74 to i8*
  %call74 = call i64 @g_signal_connect_object(i8* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpSessionInfo*, %struct._GimpUIManager*)* @windows_menu_recent_add to void ()*), i8* %75, i32 0)
  %76 = load %struct._GimpContainer*, %struct._GimpContainer** @global_recent_docks, align 8
  %77 = bitcast %struct._GimpContainer* %76 to i8*
  %78 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %79 = bitcast %struct._GimpUIManager* %78 to i8*
  %call75 = call i64 @g_signal_connect_object(i8* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpSessionInfo*, %struct._GimpUIManager*)* @windows_menu_recent_remove to void ()*), i8* %79, i32 0)
  %80 = load %struct._GimpContainer*, %struct._GimpContainer** @global_recent_docks, align 8
  %81 = bitcast %struct._GimpContainer* %80 to %struct._GTypeInstance*
  %call76 = call i64 @gimp_list_get_type() #4
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call76)
  %82 = bitcast %struct._GTypeInstance* %call77 to %struct._GimpList*
  %list78 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %82, i32 0, i32 1
  %83 = load %struct._GList*, %struct._GList** %list78, align 8
  %call79 = call %struct._GList* @g_list_last(%struct._GList* %83)
  store %struct._GList* %call79, %struct._GList** %list, align 8
  br label %for.cond.80

for.cond.80:                                      ; preds = %cond.end.89, %for.end.73
  %84 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool81 = icmp ne %struct._GList* %84, null
  br i1 %tobool81, label %for.body.82, label %for.end.91

for.body.82:                                      ; preds = %for.cond.80
  %85 = load %struct._GList*, %struct._GList** %list, align 8
  %data84 = getelementptr inbounds %struct._GList, %struct._GList* %85, i32 0, i32 0
  %86 = load i8*, i8** %data84, align 8
  %87 = bitcast i8* %86 to %struct._GimpSessionInfo*
  store %struct._GimpSessionInfo* %87, %struct._GimpSessionInfo** %info, align 8
  %88 = load %struct._GimpContainer*, %struct._GimpContainer** @global_recent_docks, align 8
  %89 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %90 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  call void @windows_menu_recent_add(%struct._GimpContainer* %88, %struct._GimpSessionInfo* %89, %struct._GimpUIManager* %90)
  br label %for.inc.85

for.inc.85:                                       ; preds = %for.body.82
  %91 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool86 = icmp ne %struct._GList* %91, null
  br i1 %tobool86, label %cond.true.87, label %cond.false.88

cond.true.87:                                     ; preds = %for.inc.85
  %92 = load %struct._GList*, %struct._GList** %list, align 8
  %prev = getelementptr inbounds %struct._GList, %struct._GList* %92, i32 0, i32 2
  %93 = load %struct._GList*, %struct._GList** %prev, align 8
  br label %cond.end.89

cond.false.88:                                    ; preds = %for.inc.85
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.false.88, %cond.true.87
  %cond90 = phi %struct._GList* [ %93, %cond.true.87 ], [ null, %cond.false.88 ]
  store %struct._GList* %cond90, %struct._GList** %list, align 8
  br label %for.cond.80

for.end.91:                                       ; preds = %if.else.9, %if.else.14, %for.cond.80
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_ui_manager_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @windows_menu_display_add(%struct._GimpContainer* %container, %struct._GimpDisplay* %display, %struct._GimpUIManager* %manager) #0 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %1 = bitcast %struct._GimpDisplay* %0 to i8*
  %2 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %3 = bitcast %struct._GimpUIManager* %2 to i8*
  %call = call i64 @g_signal_connect_object(i8* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDisplay*, %struct._GParamSpec*, %struct._GimpUIManager*)* @windows_menu_image_notify to void ()*), i8* %3, i32 0)
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call1 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %4)
  %tobool = icmp ne %struct._GimpImage* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %6 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  call void @windows_menu_image_notify(%struct._GimpDisplay* %5, %struct._GParamSpec* null, %struct._GimpUIManager* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @windows_menu_display_remove(%struct._GimpContainer* %container, %struct._GimpDisplay* %display, %struct._GimpUIManager* %manager) #0 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  %merge_key = alloca i8*, align 8
  %merge_id = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call = call i32 @gimp_display_get_ID(%struct._GimpDisplay* %0)
  %call1 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0), i32 %call)
  store i8* %call1, i8** %merge_key, align 8
  %1 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %2 = bitcast %struct._GimpUIManager* %1 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 80)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %4 = load i8*, i8** %merge_key, align 8
  %call3 = call i8* @g_object_get_data(%struct._GObject* %3, i8* %4)
  %5 = ptrtoint i8* %call3 to i64
  %conv = trunc i64 %5 to i32
  store i32 %conv, i32* %merge_id, align 4
  %6 = load i32, i32* %merge_id, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %8 = bitcast %struct._GimpUIManager* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_ui_manager_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkUIManager*
  %10 = load i32, i32* %merge_id, align 4
  call void @gtk_ui_manager_remove_ui(%struct._GtkUIManager* %9, i32 %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %12 = bitcast %struct._GimpUIManager* %11 to %struct._GTypeInstance*
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 80)
  %13 = bitcast %struct._GTypeInstance* %call6 to %struct._GObject*
  %14 = load i8*, i8** %merge_key, align 8
  call void @g_object_set_data(%struct._GObject* %13, i8* %14, i8* null)
  %15 = load i8*, i8** %merge_key, align 8
  call void @g_free(i8* %15)
  ret void
}

declare %struct._GList* @gimp_get_display_iter(%struct._Gimp*) #3

declare %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton() #3

; Function Attrs: nounwind uwtable
define internal void @windows_menu_dock_window_added(%struct._GimpDialogFactory* %factory, %struct._GimpDockWindow* %dock_window, %struct._GimpUIManager* %manager) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %dock_window.addr = alloca %struct._GimpDockWindow*, align 8
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  %ui_path = alloca i8*, align 8
  %action_name = alloca i8*, align 8
  %action_path = alloca i8*, align 8
  %merge_key = alloca i8*, align 8
  %merge_id = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpDockWindow* %dock_window, %struct._GimpDockWindow** %dock_window.addr, align 8
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  %0 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %1 = bitcast %struct._GimpUIManager* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0))
  store i8* %call1, i8** %ui_path, align 8
  %3 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %call2 = call i8* @windows_actions_dock_window_to_action_name(%struct._GimpDockWindow* %3)
  store i8* %call2, i8** %action_name, align 8
  %4 = load i8*, i8** %ui_path, align 8
  %call3 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i8* %4)
  store i8* %call3, i8** %action_path, align 8
  %5 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %call4 = call i8* @windows_menu_dock_window_to_merge_id(%struct._GimpDockWindow* %5)
  store i8* %call4, i8** %merge_key, align 8
  %6 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %7 = bitcast %struct._GimpUIManager* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_ui_manager_get_type() #4
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkUIManager*
  %call7 = call i32 @gtk_ui_manager_new_merge_id(%struct._GtkUIManager* %8)
  store i32 %call7, i32* %merge_id, align 4
  %9 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %10 = bitcast %struct._GimpUIManager* %9 to %struct._GTypeInstance*
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 80)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GObject*
  %12 = load i8*, i8** %merge_key, align 8
  %13 = load i32, i32* %merge_id, align 4
  %conv = zext i32 %13 to i64
  %14 = inttoptr i64 %conv to i8*
  call void @g_object_set_data(%struct._GObject* %11, i8* %12, i8* %14)
  %15 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %16 = bitcast %struct._GimpUIManager* %15 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_ui_manager_get_type() #4
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call9)
  %17 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkUIManager*
  %18 = load i32, i32* %merge_id, align 4
  %19 = load i8*, i8** %action_path, align 8
  %20 = load i8*, i8** %action_name, align 8
  %21 = load i8*, i8** %action_name, align 8
  call void @gtk_ui_manager_add_ui(%struct._GtkUIManager* %17, i32 %18, i8* %19, i8* %20, i8* %21, i32 32, i32 0)
  %22 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %call11 = call i32 @windows_menu_is_toolbox_dock_window(%struct._GimpDockWindow* %22)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %23 = load %struct._GimpContainer*, %struct._GimpContainer** @global_recent_docks, align 8
  call void @windows_menu_remove_toolbox_entries(%struct._GimpContainer* %23)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %24 = load i8*, i8** %merge_key, align 8
  call void @g_free(i8* %24)
  %25 = load i8*, i8** %action_path, align 8
  call void @g_free(i8* %25)
  %26 = load i8*, i8** %action_name, align 8
  call void @g_free(i8* %26)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @windows_menu_dock_window_removed(%struct._GimpDialogFactory* %factory, %struct._GimpDockWindow* %dock_window, %struct._GimpUIManager* %manager) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %dock_window.addr = alloca %struct._GimpDockWindow*, align 8
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  %merge_key = alloca i8*, align 8
  %merge_id = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpDockWindow* %dock_window, %struct._GimpDockWindow** %dock_window.addr, align 8
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  %0 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %call = call i8* @windows_menu_dock_window_to_merge_id(%struct._GimpDockWindow* %0)
  store i8* %call, i8** %merge_key, align 8
  %1 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %2 = bitcast %struct._GimpUIManager* %1 to %struct._GTypeInstance*
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 80)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GObject*
  %4 = load i8*, i8** %merge_key, align 8
  %call2 = call i8* @g_object_get_data(%struct._GObject* %3, i8* %4)
  %5 = ptrtoint i8* %call2 to i64
  %conv = trunc i64 %5 to i32
  store i32 %conv, i32* %merge_id, align 4
  %6 = load i32, i32* %merge_id, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %8 = bitcast %struct._GimpUIManager* %7 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_ui_manager_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call3)
  %9 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkUIManager*
  %10 = load i32, i32* %merge_id, align 4
  call void @gtk_ui_manager_remove_ui(%struct._GtkUIManager* %9, i32 %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %12 = bitcast %struct._GimpUIManager* %11 to %struct._GTypeInstance*
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 80)
  %13 = bitcast %struct._GTypeInstance* %call5 to %struct._GObject*
  %14 = load i8*, i8** %merge_key, align 8
  call void @g_object_set_data(%struct._GObject* %13, i8* %14, i8* null)
  %15 = load i8*, i8** %merge_key, align 8
  call void @g_free(i8* %15)
  ret void
}

declare %struct._GList* @gimp_dialog_factory_get_open_dialogs(%struct._GimpDialogFactory*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_dock_window_get_type() #1

; Function Attrs: nounwind uwtable
define internal void @windows_menu_recent_add(%struct._GimpContainer* %container, %struct._GimpSessionInfo* %info, %struct._GimpUIManager* %manager) #0 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %info.addr = alloca %struct._GimpSessionInfo*, align 8
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  %ui_path = alloca i8*, align 8
  %action_name = alloca i8*, align 8
  %action_path = alloca i8*, align 8
  %info_id = alloca i32, align 4
  %merge_key = alloca i8*, align 8
  %merge_id = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpSessionInfo* %info, %struct._GimpSessionInfo** %info.addr, align 8
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  %0 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %1 = bitcast %struct._GimpUIManager* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0))
  store i8* %call1, i8** %ui_path, align 8
  %3 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %4 = bitcast %struct._GimpSessionInfo* %3 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 80)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %call3 = call i8* @g_object_get_data(%struct._GObject* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0))
  %6 = ptrtoint i8* %call3 to i64
  %conv = trunc i64 %6 to i32
  store i32 %conv, i32* %info_id, align 4
  %7 = load i32, i32* %info_id, align 4
  %call4 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i32 %7)
  store i8* %call4, i8** %action_name, align 8
  %8 = load i8*, i8** %ui_path, align 8
  %call5 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i32 0, i32 0), i8* %8)
  store i8* %call5, i8** %action_path, align 8
  %9 = load i32, i32* %info_id, align 4
  %call6 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i32 0, i32 0), i32 %9)
  store i8* %call6, i8** %merge_key, align 8
  %10 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %11 = bitcast %struct._GimpUIManager* %10 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_ui_manager_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call7)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkUIManager*
  %call9 = call i32 @gtk_ui_manager_new_merge_id(%struct._GtkUIManager* %12)
  store i32 %call9, i32* %merge_id, align 4
  %13 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %14 = bitcast %struct._GimpUIManager* %13 to %struct._GTypeInstance*
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call10 to %struct._GObject*
  %16 = load i8*, i8** %merge_key, align 8
  %17 = load i32, i32* %merge_id, align 4
  %conv11 = zext i32 %17 to i64
  %18 = inttoptr i64 %conv11 to i8*
  call void @g_object_set_data(%struct._GObject* %15, i8* %16, i8* %18)
  %19 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %20 = bitcast %struct._GimpUIManager* %19 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_ui_manager_get_type() #4
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call12)
  %21 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkUIManager*
  %22 = load i32, i32* %merge_id, align 4
  %23 = load i8*, i8** %action_path, align 8
  %24 = load i8*, i8** %action_name, align 8
  %25 = load i8*, i8** %action_name, align 8
  call void @gtk_ui_manager_add_ui(%struct._GtkUIManager* %21, i32 %22, i8* %23, i8* %24, i8* %25, i32 32, i32 1)
  %26 = load i8*, i8** %merge_key, align 8
  call void @g_free(i8* %26)
  %27 = load i8*, i8** %action_path, align 8
  call void @g_free(i8* %27)
  %28 = load i8*, i8** %action_name, align 8
  call void @g_free(i8* %28)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @windows_menu_recent_remove(%struct._GimpContainer* %container, %struct._GimpSessionInfo* %info, %struct._GimpUIManager* %manager) #0 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %info.addr = alloca %struct._GimpSessionInfo*, align 8
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  %info_id = alloca i32, align 4
  %merge_key = alloca i8*, align 8
  %merge_id = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpSessionInfo* %info, %struct._GimpSessionInfo** %info.addr, align 8
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  %0 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpSessionInfo* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0))
  %3 = ptrtoint i8* %call1 to i64
  %conv = trunc i64 %3 to i32
  store i32 %conv, i32* %info_id, align 4
  %4 = load i32, i32* %info_id, align 4
  %call2 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i32 0, i32 0), i32 %4)
  store i8* %call2, i8** %merge_key, align 8
  %5 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %6 = bitcast %struct._GimpUIManager* %5 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 80)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %8 = load i8*, i8** %merge_key, align 8
  %call4 = call i8* @g_object_get_data(%struct._GObject* %7, i8* %8)
  %9 = ptrtoint i8* %call4 to i64
  %conv5 = trunc i64 %9 to i32
  store i32 %conv5, i32* %merge_id, align 4
  %10 = load i32, i32* %merge_id, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %12 = bitcast %struct._GimpUIManager* %11 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_ui_manager_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call6)
  %13 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkUIManager*
  %14 = load i32, i32* %merge_id, align 4
  call void @gtk_ui_manager_remove_ui(%struct._GtkUIManager* %13, i32 %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %16 = bitcast %struct._GimpUIManager* %15 to %struct._GTypeInstance*
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 80)
  %17 = bitcast %struct._GTypeInstance* %call8 to %struct._GObject*
  %18 = load i8*, i8** %merge_key, align 8
  call void @g_object_set_data(%struct._GObject* %17, i8* %18, i8* null)
  %19 = load i8*, i8** %merge_key, align 8
  call void @g_free(i8* %19)
  ret void
}

declare %struct._GList* @g_list_last(%struct._GList*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_list_get_type() #1

; Function Attrs: nounwind uwtable
define internal void @windows_menu_image_notify(%struct._GimpDisplay* %display, %struct._GParamSpec* %unused, %struct._GimpUIManager* %manager) #0 {
entry:
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %unused.addr = alloca %struct._GParamSpec*, align 8
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  %merge_key = alloca i8*, align 8
  %merge_id = alloca i32, align 4
  %widget = alloca %struct._GtkWidget*, align 8
  %ui_path = alloca i8*, align 8
  %action_name = alloca i8*, align 8
  %action_path = alloca i8*, align 8
  %full_path = alloca i8*, align 8
  %action = alloca %struct._GtkAction*, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store %struct._GParamSpec* %unused, %struct._GParamSpec** %unused.addr, align 8
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %0)
  %tobool = icmp ne %struct._GimpImage* %call, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call1 = call i32 @gimp_display_get_ID(%struct._GimpDisplay* %1)
  %call2 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0), i32 %call1)
  store i8* %call2, i8** %merge_key, align 8
  %2 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %3 = bitcast %struct._GimpUIManager* %2 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 80)
  %4 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %5 = load i8*, i8** %merge_key, align 8
  %call4 = call i8* @g_object_get_data(%struct._GObject* %4, i8* %5)
  %6 = ptrtoint i8* %call4 to i64
  %conv = trunc i64 %6 to i32
  store i32 %conv, i32* %merge_id, align 4
  %7 = load i32, i32* %merge_id, align 4
  %tobool5 = icmp ne i32 %7, 0
  br i1 %tobool5, label %if.end.26, label %if.then.6

if.then.6:                                        ; preds = %if.then
  %8 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %9 = bitcast %struct._GimpUIManager* %8 to %struct._GTypeInstance*
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 80)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GObject*
  %call8 = call i8* @g_object_get_data(%struct._GObject* %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0))
  store i8* %call8, i8** %ui_path, align 8
  %11 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call9 = call i8* @gimp_display_get_action_name(%struct._GimpDisplay* %11)
  store i8* %call9, i8** %action_name, align 8
  %12 = load i8*, i8** %ui_path, align 8
  %call10 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i8* %12)
  store i8* %call10, i8** %action_path, align 8
  %13 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %14 = bitcast %struct._GimpUIManager* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_ui_manager_get_type() #4
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkUIManager*
  %call13 = call i32 @gtk_ui_manager_new_merge_id(%struct._GtkUIManager* %15)
  store i32 %call13, i32* %merge_id, align 4
  %16 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %17 = bitcast %struct._GimpUIManager* %16 to %struct._GTypeInstance*
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 80)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GObject*
  %19 = load i8*, i8** %merge_key, align 8
  %20 = load i32, i32* %merge_id, align 4
  %conv15 = zext i32 %20 to i64
  %21 = inttoptr i64 %conv15 to i8*
  call void @g_object_set_data(%struct._GObject* %18, i8* %19, i8* %21)
  %22 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %23 = bitcast %struct._GimpUIManager* %22 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_ui_manager_get_type() #4
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call16)
  %24 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkUIManager*
  %25 = load i32, i32* %merge_id, align 4
  %26 = load i8*, i8** %action_path, align 8
  %27 = load i8*, i8** %action_name, align 8
  %28 = load i8*, i8** %action_name, align 8
  call void @gtk_ui_manager_add_ui(%struct._GtkUIManager* %24, i32 %25, i8* %26, i8* %27, i8* %28, i32 32, i32 0)
  %29 = load i8*, i8** %action_path, align 8
  %30 = load i8*, i8** %action_name, align 8
  %call18 = call noalias i8* (i8*, ...) @g_strconcat(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i8* %30, i8* null)
  store i8* %call18, i8** %full_path, align 8
  %31 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %32 = bitcast %struct._GimpUIManager* %31 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_ui_manager_get_type() #4
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call19)
  %33 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkUIManager*
  %34 = load i8*, i8** %full_path, align 8
  %call21 = call %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager* %33, i8* %34)
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %widget, align 8
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool22 = icmp ne %struct._GtkWidget* %35, null
  br i1 %tobool22, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %if.then.6
  %36 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %37 = load i8*, i8** %action_name, align 8
  %call24 = call %struct._GtkAction* @gimp_ui_manager_find_action(%struct._GimpUIManager* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* %37)
  store %struct._GtkAction* %call24, %struct._GtkAction** %action, align 8
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %39 = bitcast %struct._GtkWidget* %38 to i8*
  %40 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %41 = bitcast %struct._GtkAction* %40 to i8*
  %call25 = call i64 @g_signal_connect_object(i8* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, i32, i32, i32, %struct._GtkTooltip*, %struct._GimpAction*)* @windows_menu_display_query_tooltip to void ()*), i8* %41, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.23, %if.then.6
  %42 = load i8*, i8** %action_name, align 8
  call void @g_free(i8* %42)
  %43 = load i8*, i8** %action_path, align 8
  call void @g_free(i8* %43)
  %44 = load i8*, i8** %full_path, align 8
  call void @g_free(i8* %44)
  br label %if.end.26

if.end.26:                                        ; preds = %if.end, %if.then
  %45 = load i8*, i8** %merge_key, align 8
  call void @g_free(i8* %45)
  br label %if.end.27

if.else:                                          ; preds = %entry
  %46 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %46, i32 0, i32 2
  %47 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %displays = getelementptr inbounds %struct._Gimp, %struct._Gimp* %47, i32 0, i32 31
  %48 = load %struct._GimpContainer*, %struct._GimpContainer** %displays, align 8
  %49 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %50 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  call void @windows_menu_display_remove(%struct._GimpContainer* %48, %struct._GimpDisplay* %49, %struct._GimpUIManager* %50)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.end.26
  ret void
}

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #3

declare noalias i8* @g_strdup_printf(i8*, ...) #3

declare i32 @gimp_display_get_ID(%struct._GimpDisplay*) #3

declare i8* @g_object_get_data(%struct._GObject*, i8*) #3

declare i8* @gimp_display_get_action_name(%struct._GimpDisplay*) #3

declare i32 @gtk_ui_manager_new_merge_id(%struct._GtkUIManager*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_ui_manager_get_type() #1

declare void @gtk_ui_manager_add_ui(%struct._GtkUIManager*, i32, i8*, i8*, i8*, i32, i32) #3

declare noalias i8* @g_strconcat(i8*, ...) #3

declare %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager*, i8*) #3

declare %struct._GtkAction* @gimp_ui_manager_find_action(%struct._GimpUIManager*, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @windows_menu_display_query_tooltip(%struct._GtkWidget* %widget, i32 %x, i32 %y, i32 %keyboard_mode, %struct._GtkTooltip* %tooltip, %struct._GimpAction* %action) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %keyboard_mode.addr = alloca i32, align 4
  %tooltip.addr = alloca %struct._GtkTooltip*, align 8
  %action.addr = alloca %struct._GimpAction*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %text = alloca i8*, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %keyboard_mode, i32* %keyboard_mode.addr, align 4
  store %struct._GtkTooltip* %tooltip, %struct._GtkTooltip** %tooltip.addr, align 8
  store %struct._GimpAction* %action, %struct._GimpAction** %action.addr, align 8
  %0 = load %struct._GimpAction*, %struct._GimpAction** %action.addr, align 8
  %viewable = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %0, i32 0, i32 3
  %1 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %2 = bitcast %struct._GimpViewable* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImage*
  store %struct._GimpImage* %3, %struct._GimpImage** %image, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call2 = call i8* @gtk_widget_get_tooltip_text(%struct._GtkWidget* %4)
  store i8* %call2, i8** %text, align 8
  %5 = load %struct._GtkTooltip*, %struct._GtkTooltip** %tooltip.addr, align 8
  %6 = load i8*, i8** %text, align 8
  call void @gtk_tooltip_set_text(%struct._GtkTooltip* %5, i8* %6)
  %7 = load i8*, i8** %text, align 8
  call void @g_free(i8* %7)
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %8, double* %xres, double* %yres)
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call3 = call i32 @gimp_image_get_width(%struct._GimpImage* %9)
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call4 = call i32 @gimp_image_get_height(%struct._GimpImage* %10)
  %11 = load double, double* %xres, align 8
  %12 = load double, double* %yres, align 8
  call void @gimp_viewable_calc_preview_size(i32 %call3, i32 %call4, i32 96, i32 96, i32 0, double %11, double %12, i32* %width, i32* %height, i32* null)
  %13 = load %struct._GtkTooltip*, %struct._GtkTooltip** %tooltip.addr, align 8
  %14 = load %struct._GimpAction*, %struct._GimpAction** %action.addr, align 8
  %viewable5 = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %14, i32 0, i32 3
  %15 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable5, align 8
  %16 = load %struct._GimpAction*, %struct._GimpAction** %action.addr, align 8
  %context = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %16, i32 0, i32 1
  %17 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %18 = load i32, i32* %width, align 4
  %19 = load i32, i32* %height, align 4
  %call6 = call %struct._GdkPixbuf* @gimp_viewable_get_pixbuf(%struct._GimpViewable* %15, %struct._GimpContext* %17, i32 %18, i32 %19)
  call void @gtk_tooltip_set_icon(%struct._GtkTooltip* %13, %struct._GdkPixbuf* %call6)
  ret i32 1
}

declare void @g_free(i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

declare i8* @gtk_widget_get_tooltip_text(%struct._GtkWidget*) #3

declare void @gtk_tooltip_set_text(%struct._GtkTooltip*, i8*) #3

declare void @gimp_image_get_resolution(%struct._GimpImage*, double*, double*) #3

declare void @gimp_viewable_calc_preview_size(i32, i32, i32, i32, i32, double, double, i32*, i32*, i32*) #3

declare i32 @gimp_image_get_width(%struct._GimpImage*) #3

declare i32 @gimp_image_get_height(%struct._GimpImage*) #3

declare void @gtk_tooltip_set_icon(%struct._GtkTooltip*, %struct._GdkPixbuf*) #3

declare %struct._GdkPixbuf* @gimp_viewable_get_pixbuf(%struct._GimpViewable*, %struct._GimpContext*, i32, i32) #3

declare void @gtk_ui_manager_remove_ui(%struct._GtkUIManager*, i32) #3

declare i8* @windows_actions_dock_window_to_action_name(%struct._GimpDockWindow*) #3

; Function Attrs: nounwind uwtable
define internal i8* @windows_menu_dock_window_to_merge_id(%struct._GimpDockWindow* %dock_window) #0 {
entry:
  %dock_window.addr = alloca %struct._GimpDockWindow*, align 8
  store %struct._GimpDockWindow* %dock_window, %struct._GimpDockWindow** %dock_window.addr, align 8
  %0 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %call = call i32 @gimp_dock_window_get_id(%struct._GimpDockWindow* %0)
  %call1 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i32 0, i32 0), i32 %call)
  ret i8* %call1
}

; Function Attrs: nounwind uwtable
define internal i32 @windows_menu_is_toolbox_dock_window(%struct._GimpDockWindow* %dock_window) #0 {
entry:
  %dock_window.addr = alloca %struct._GimpDockWindow*, align 8
  %entry1 = alloca %struct._GimpDialogFactoryEntry*, align 8
  %is_for_toolbox = alloca i32, align 4
  store %struct._GimpDockWindow* %dock_window, %struct._GimpDockWindow** %dock_window.addr, align 8
  store %struct._GimpDialogFactoryEntry* null, %struct._GimpDialogFactoryEntry** %entry1, align 8
  store i32 0, i32* %is_for_toolbox, align 4
  %0 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %1 = bitcast %struct._GimpDockWindow* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWidget*
  %call3 = call %struct._GimpDialogFactory* @gimp_dialog_factory_from_widget(%struct._GtkWidget* %2, %struct._GimpDialogFactoryEntry** %entry1)
  %3 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %tobool = icmp ne %struct._GimpDialogFactoryEntry* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %identifier = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %4, i32 0, i32 0
  %5 = load i8*, i8** %identifier, align 8
  %call4 = call i32 @strcmp(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0), i8* %5) #5
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %is_for_toolbox, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %6 = load i32, i32* %is_for_toolbox, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal void @windows_menu_remove_toolbox_entries(%struct._GimpContainer* %docks) #0 {
entry:
  %docks.addr = alloca %struct._GimpContainer*, align 8
  %iter = alloca %struct._GList*, align 8
  %for_removal = alloca %struct._GList*, align 8
  %info = alloca %struct._GimpSessionInfo*, align 8
  %entry2 = alloca %struct._GimpDialogFactoryEntry*, align 8
  %info11 = alloca %struct._GimpSessionInfo*, align 8
  store %struct._GimpContainer* %docks, %struct._GimpContainer** %docks.addr, align 8
  store %struct._GList* null, %struct._GList** %iter, align 8
  store %struct._GList* null, %struct._GList** %for_removal, align 8
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %docks.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_list_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpList*
  %list = getelementptr inbounds %struct._GimpList, %struct._GimpList* %2, i32 0, i32 1
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  store %struct._GList* %3, %struct._GList** %iter, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %4 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool = icmp ne %struct._GList* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._GList*, %struct._GList** %iter, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8
  %7 = bitcast i8* %6 to %struct._GimpSessionInfo*
  store %struct._GimpSessionInfo* %7, %struct._GimpSessionInfo** %info, align 8
  %8 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %call3 = call %struct._GimpDialogFactoryEntry* @gimp_session_info_get_factory_entry(%struct._GimpSessionInfo* %8)
  store %struct._GimpDialogFactoryEntry* %call3, %struct._GimpDialogFactoryEntry** %entry2, align 8
  %9 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry2, align 8
  %tobool4 = icmp ne %struct._GimpDialogFactoryEntry* %9, null
  br i1 %tobool4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %10 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry2, align 8
  %identifier = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %10, i32 0, i32 0
  %11 = load i8*, i8** %identifier, align 8
  %call5 = call i32 @strcmp(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0), i8* %11) #5
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct._GList*, %struct._GList** %for_removal, align 8
  %13 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %14 = bitcast %struct._GimpSessionInfo* %13 to i8*
  %call6 = call %struct._GList* @g_list_prepend(%struct._GList* %12, i8* %14)
  store %struct._GList* %call6, %struct._GList** %for_removal, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool7 = icmp ne %struct._GList* %15, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %16 = load %struct._GList*, %struct._GList** %iter, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %16, i32 0, i32 1
  %17 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %17, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %iter, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct._GList*, %struct._GList** %for_removal, align 8
  store %struct._GList* %18, %struct._GList** %iter, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %cond.end.21, %for.end
  %19 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool9 = icmp ne %struct._GList* %19, null
  br i1 %tobool9, label %for.body.10, label %for.end.23

for.body.10:                                      ; preds = %for.cond.8
  %20 = load %struct._GList*, %struct._GList** %iter, align 8
  %data12 = getelementptr inbounds %struct._GList, %struct._GList* %20, i32 0, i32 0
  %21 = load i8*, i8** %data12, align 8
  %22 = bitcast i8* %21 to %struct._GimpSessionInfo*
  store %struct._GimpSessionInfo* %22, %struct._GimpSessionInfo** %info11, align 8
  %23 = load %struct._GimpContainer*, %struct._GimpContainer** %docks.addr, align 8
  %24 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info11, align 8
  %25 = bitcast %struct._GimpSessionInfo* %24 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_object_get_type() #4
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call13)
  %26 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpObject*
  %call15 = call i32 @gimp_container_remove(%struct._GimpContainer* %23, %struct._GimpObject* %26)
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.body.10
  %27 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool17 = icmp ne %struct._GList* %27, null
  br i1 %tobool17, label %cond.true.18, label %cond.false.20

cond.true.18:                                     ; preds = %for.inc.16
  %28 = load %struct._GList*, %struct._GList** %iter, align 8
  %next19 = getelementptr inbounds %struct._GList, %struct._GList* %28, i32 0, i32 1
  %29 = load %struct._GList*, %struct._GList** %next19, align 8
  br label %cond.end.21

cond.false.20:                                    ; preds = %for.inc.16
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.20, %cond.true.18
  %cond22 = phi %struct._GList* [ %29, %cond.true.18 ], [ null, %cond.false.20 ]
  store %struct._GList* %cond22, %struct._GList** %iter, align 8
  br label %for.cond.8

for.end.23:                                       ; preds = %for.cond.8
  %30 = load %struct._GList*, %struct._GList** %for_removal, align 8
  call void @g_list_free(%struct._GList* %30)
  ret void
}

declare i32 @gimp_dock_window_get_id(%struct._GimpDockWindow*) #3

declare %struct._GimpDialogFactory* @gimp_dialog_factory_from_widget(%struct._GtkWidget*, %struct._GimpDialogFactoryEntry**) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare %struct._GimpDialogFactoryEntry* @gimp_session_info_get_factory_entry(%struct._GimpSessionInfo*) #3

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #3

declare i32 @gimp_container_remove(%struct._GimpContainer*, %struct._GimpObject*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #1

declare void @g_list_free(%struct._GList*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
