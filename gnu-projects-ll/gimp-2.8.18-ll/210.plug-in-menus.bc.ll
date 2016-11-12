; ModuleID = './app/menus/plug-in-menus.bc'
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
%struct._GimpPlugInManager = type { %struct._GimpObject, %struct._Gimp*, %struct._GSList*, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugIn*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugInShm*, %struct._GimpInterpreterDB*, %struct._GimpEnvironTable*, %struct._GimpPlugInDebug*, %struct._GList* }
%struct._GimpPlugIn = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GimpPlugInShm = type opaque
%struct._GimpInterpreterDB = type opaque
%struct._GimpEnvironTable = type opaque
%struct._GimpPlugInDebug = type opaque
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
%struct._GTree = type opaque
%struct._GimpPlugInProcedure = type { %struct._GimpProcedure, i8*, i32, i32, i8*, %struct._GList*, i8*, i32, i32, i8*, i8*, i32, i64, i32, i32, i8*, i8*, i8*, i8*, %struct._GSList*, %struct._GSList*, %struct._GSList*, i8* }
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GError = type { i32, i32, i8* }
%struct._PlugInMenuEntry = type { %struct._GimpPlugInProcedure*, i8* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
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
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }

@.str = private unnamed_addr constant [11 x i8] c"Gimp-Menus\00", align 1
@__func__.plug_in_menus_setup = private unnamed_addr constant [20 x i8] c"plug_in_menus_setup\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"GIMP_IS_UI_MANAGER (manager)\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"ui_path != NULL\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"plug-in-recent-%02d\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"%s/Filters/Recently Used/Plug-Ins\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"menu-path-added\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"ui-path\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"register-procedure\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"unregister-procedure\00", align 1
@gimp_log_flags = external global i32, align 4
@__func__.plug_in_menus_register_procedure = private unnamed_addr constant [33 x i8] c"plug_in_menus_register_procedure\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"register procedure: %s\00", align 1
@__func__.plug_in_menus_unregister_procedure = private unnamed_addr constant [35 x i8] c"plug_in_menus_unregister_procedure\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"unregister procedure: %s\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"%s-merge-id\00", align 1
@__func__.plug_in_menus_menu_path_added = private unnamed_addr constant [30 x i8] c"plug_in_menus_menu_path_added\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"menu path added: %s (%s)\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"<Image>\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"/image-menubar\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"/dummy-menubar/image-popup\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"<Toolbox>\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"/toolbox-menubar\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"<Layers>\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"/layers-popup\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"<Channels>\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"/channels-popup\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"<Vectors>\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"/vectors-popup\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"<Colormap>\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"/colormap-popup\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"<Brushes>\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"/brushes-popup\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"<Dynamics>\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"/dynamics-popup\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"<Gradients>\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"/gradients-popup\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"<Palettes>\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"/palettes-popup\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"<Patterns>\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"/patterns-popup\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"<ToolPresets>\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"/tool-presets-popup\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"<Fonts>\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"/fonts-popup\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"<Buffers>\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"/buffers-popup\00", align 1
@__func__.plug_in_menus_add_proc = private unnamed_addr constant [23 x i8] c"plug_in_menus_add_proc\00", align 1
@.str.43 = private unnamed_addr constant [33 x i8] c"GIMP_IS_PLUG_IN_PROCEDURE (proc)\00", align 1
@.str.44 = private unnamed_addr constant [22 x i8] c"plug-in-menu-merge-id\00", align 1
@.str.45 = private unnamed_addr constant [33 x i8] c"adding menu item for '%s' (@ %s)\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@__func__.plug_in_menus_build_path = private unnamed_addr constant [25 x i8] c"plug_in_menus_build_path\00", align 1
@.str.48 = private unnamed_addr constant [46 x i8] c"adding menu '%s' at path '%s' for action '%s'\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"Menus\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"Separator\00", align 1

; Function Attrs: nounwind uwtable
define void @plug_in_menus_setup(%struct._GimpUIManager* %manager, i8* %ui_path) #0 {
entry:
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  %ui_path.addr = alloca i8*, align 8
  %plug_in_manager = alloca %struct._GimpPlugInManager*, align 8
  %menu_entries = alloca %struct._GTree*, align 8
  %list = alloca %struct._GSList*, align 8
  %merge_id = alloca i32, align 4
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %action_name = alloca i8*, align 8
  %action_path = alloca i8*, align 8
  %plug_in_proc = alloca %struct._GimpPlugInProcedure*, align 8
  %path = alloca %struct._GList*, align 8
  %entry52 = alloca %struct._PlugInMenuEntry*, align 8
  %progname = alloca i8*, align 8
  %locale_domain = alloca i8*, align 8
  %menu = alloca i8*, align 8
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  store i8* %ui_path, i8** %ui_path.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %1 = bitcast %struct._GimpUIManager* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_ui_manager_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.plug_in_menus_setup, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0))
  br label %return

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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.plug_in_menus_setup, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %14, i32 0, i32 2
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %plug_in_manager17 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 25
  %16 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager17, align 8
  store %struct._GimpPlugInManager* %16, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %17 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %18 = bitcast %struct._GimpUIManager* %17 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_ui_manager_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call18)
  %19 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkUIManager*
  %call20 = call i32 @gtk_ui_manager_new_merge_id(%struct._GtkUIManager* %19)
  store i32 %call20, i32* %merge_id, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.16
  %20 = load i32, i32* %i, align 4
  %21 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %gimp21 = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %21, i32 0, i32 2
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp21, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %22, i32 0, i32 1
  %23 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %plug_in_history_size = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %23, i32 0, i32 40
  %24 = load i32, i32* %plug_in_history_size, align 4
  %cmp22 = icmp slt i32 %20, %24
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %i, align 4
  %add = add nsw i32 %25, 1
  %call25 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i32 %add)
  store i8* %call25, i8** %action_name, align 8
  %26 = load i8*, i8** %ui_path.addr, align 8
  %call26 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0), i8* %26)
  store i8* %call26, i8** %action_path, align 8
  %27 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %28 = bitcast %struct._GimpUIManager* %27 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_ui_manager_get_type() #5
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call27)
  %29 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkUIManager*
  %30 = load i32, i32* %merge_id, align 4
  %31 = load i8*, i8** %action_path, align 8
  %32 = load i8*, i8** %action_name, align 8
  %33 = load i8*, i8** %action_name, align 8
  call void @gtk_ui_manager_add_ui(%struct._GtkUIManager* %29, i32 %30, i8* %31, i8* %32, i8* %33, i32 32, i32 0)
  %34 = load i8*, i8** %action_name, align 8
  call void @g_free(i8* %34)
  %35 = load i8*, i8** %action_path, align 8
  call void @g_free(i8* %35)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %i, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call29 = call %struct._GTree* @g_tree_new_full(i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, i8*)* @strcmp to i32 (i8*, i8*, i8*)*), i8* null, void (i8*)* @g_free, void (i8*)* bitcast (void (%struct._PlugInMenuEntry*)* @plug_in_menu_entry_free to void (i8*)*))
  store %struct._GTree* %call29, %struct._GTree** %menu_entries, align 8
  %37 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %plug_in_procedures = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %37, i32 0, i32 4
  %38 = load %struct._GSList*, %struct._GSList** %plug_in_procedures, align 8
  store %struct._GSList* %38, %struct._GSList** %list, align 8
  br label %for.cond.30

for.cond.30:                                      ; preds = %cond.end.81, %for.end
  %39 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool31 = icmp ne %struct._GSList* %39, null
  br i1 %tobool31, label %for.body.32, label %for.end.83

for.body.32:                                      ; preds = %for.cond.30
  %40 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %40, i32 0, i32 0
  %41 = load i8*, i8** %data, align 8
  %42 = bitcast i8* %41 to %struct._GimpPlugInProcedure*
  store %struct._GimpPlugInProcedure* %42, %struct._GimpPlugInProcedure** %plug_in_proc, align 8
  %43 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc, align 8
  %prog = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %43, i32 0, i32 1
  %44 = load i8*, i8** %prog, align 8
  %tobool34 = icmp ne i8* %44, null
  br i1 %tobool34, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %for.body.32
  br label %for.inc.76

if.end.36:                                        ; preds = %for.body.32
  %45 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc, align 8
  %46 = bitcast %struct._GimpPlugInProcedure* %45 to i8*
  %47 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %48 = bitcast %struct._GimpUIManager* %47 to i8*
  %call37 = call i64 @g_signal_connect_object(i8* %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPlugInProcedure*, i8*, %struct._GimpUIManager*)* @plug_in_menus_menu_path_added to void ()*), i8* %48, i32 0)
  %49 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc, align 8
  %menu_paths = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %49, i32 0, i32 5
  %50 = load %struct._GList*, %struct._GList** %menu_paths, align 8
  %tobool38 = icmp ne %struct._GList* %50, null
  br i1 %tobool38, label %land.lhs.true.39, label %if.end.75

land.lhs.true.39:                                 ; preds = %if.end.36
  %51 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc, align 8
  %file_proc = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %51, i32 0, i32 14
  %52 = load i32, i32* %file_proc, align 4
  %tobool40 = icmp ne i32 %52, 0
  br i1 %tobool40, label %if.end.75, label %if.then.41

if.then.41:                                       ; preds = %land.lhs.true.39
  %53 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc, align 8
  %menu_paths43 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %53, i32 0, i32 5
  %54 = load %struct._GList*, %struct._GList** %menu_paths43, align 8
  store %struct._GList* %54, %struct._GList** %path, align 8
  br label %for.cond.44

for.cond.44:                                      ; preds = %cond.end, %if.then.41
  %55 = load %struct._GList*, %struct._GList** %path, align 8
  %tobool45 = icmp ne %struct._GList* %55, null
  br i1 %tobool45, label %for.body.46, label %for.end.74

for.body.46:                                      ; preds = %for.cond.44
  %56 = load %struct._GList*, %struct._GList** %path, align 8
  %data47 = getelementptr inbounds %struct._GList, %struct._GList* %56, i32 0, i32 0
  %57 = load i8*, i8** %data47, align 8
  %58 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %name = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %58, i32 0, i32 1
  %59 = load i8*, i8** %name, align 8
  %call48 = call i32 @g_str_has_prefix(i8* %57, i8* %59)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.then.50, label %if.end.71

if.then.50:                                       ; preds = %for.body.46
  %call53 = call noalias i8* @g_slice_alloc0(i64 16)
  %60 = bitcast i8* %call53 to %struct._PlugInMenuEntry*
  store %struct._PlugInMenuEntry* %60, %struct._PlugInMenuEntry** %entry52, align 8
  %61 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc, align 8
  %62 = load %struct._PlugInMenuEntry*, %struct._PlugInMenuEntry** %entry52, align 8
  %proc = getelementptr inbounds %struct._PlugInMenuEntry, %struct._PlugInMenuEntry* %62, i32 0, i32 0
  store %struct._GimpPlugInProcedure* %61, %struct._GimpPlugInProcedure** %proc, align 8
  %63 = load %struct._GList*, %struct._GList** %path, align 8
  %data56 = getelementptr inbounds %struct._GList, %struct._GList* %63, i32 0, i32 0
  %64 = load i8*, i8** %data56, align 8
  %65 = load %struct._PlugInMenuEntry*, %struct._PlugInMenuEntry** %entry52, align 8
  %menu_path = getelementptr inbounds %struct._PlugInMenuEntry, %struct._PlugInMenuEntry* %65, i32 0, i32 1
  store i8* %64, i8** %menu_path, align 8
  %66 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc, align 8
  %call57 = call i8* @gimp_plug_in_procedure_get_progname(%struct._GimpPlugInProcedure* %66)
  store i8* %call57, i8** %progname, align 8
  %67 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %68 = load i8*, i8** %progname, align 8
  %call58 = call i8* @gimp_plug_in_manager_get_locale_domain(%struct._GimpPlugInManager* %67, i8* %68, i8** null)
  store i8* %call58, i8** %locale_domain, align 8
  %69 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc, align 8
  %menu_label = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %69, i32 0, i32 4
  %70 = load i8*, i8** %menu_label, align 8
  %tobool59 = icmp ne i8* %70, null
  br i1 %tobool59, label %if.then.60, label %if.else.67

if.then.60:                                       ; preds = %if.then.50
  %71 = load i8*, i8** %locale_domain, align 8
  %72 = load %struct._GList*, %struct._GList** %path, align 8
  %data62 = getelementptr inbounds %struct._GList, %struct._GList* %72, i32 0, i32 0
  %73 = load i8*, i8** %data62, align 8
  %call63 = call i8* @dgettext(i8* %71, i8* %73) #7
  %74 = load i8*, i8** %locale_domain, align 8
  %75 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc, align 8
  %menu_label64 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %75, i32 0, i32 4
  %76 = load i8*, i8** %menu_label64, align 8
  %call65 = call i8* @dgettext(i8* %74, i8* %76) #7
  %call66 = call noalias i8* (i8*, ...) @g_strconcat(i8* %call63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* %call65, i8* null)
  store i8* %call66, i8** %menu, align 8
  %77 = load %struct._GTree*, %struct._GTree** %menu_entries, align 8
  %78 = load i8*, i8** %menu, align 8
  %79 = load %struct._PlugInMenuEntry*, %struct._PlugInMenuEntry** %entry52, align 8
  call void @plug_in_menus_tree_insert(%struct._GTree* %77, i8* %78, %struct._PlugInMenuEntry* %79)
  %80 = load i8*, i8** %menu, align 8
  call void @g_free(i8* %80)
  br label %if.end.70

if.else.67:                                       ; preds = %if.then.50
  %81 = load %struct._GTree*, %struct._GTree** %menu_entries, align 8
  %82 = load i8*, i8** %locale_domain, align 8
  %83 = load %struct._GList*, %struct._GList** %path, align 8
  %data68 = getelementptr inbounds %struct._GList, %struct._GList* %83, i32 0, i32 0
  %84 = load i8*, i8** %data68, align 8
  %call69 = call i8* @dgettext(i8* %82, i8* %84) #7
  %85 = load %struct._PlugInMenuEntry*, %struct._PlugInMenuEntry** %entry52, align 8
  call void @plug_in_menus_tree_insert(%struct._GTree* %81, i8* %call69, %struct._PlugInMenuEntry* %85)
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.67, %if.then.60
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %for.body.46
  br label %for.inc.72

for.inc.72:                                       ; preds = %if.end.71
  %86 = load %struct._GList*, %struct._GList** %path, align 8
  %tobool73 = icmp ne %struct._GList* %86, null
  br i1 %tobool73, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc.72
  %87 = load %struct._GList*, %struct._GList** %path, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %87, i32 0, i32 1
  %88 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc.72
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %88, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %path, align 8
  br label %for.cond.44

for.end.74:                                       ; preds = %for.cond.44
  br label %if.end.75

if.end.75:                                        ; preds = %for.end.74, %land.lhs.true.39, %if.end.36
  br label %for.inc.76

for.inc.76:                                       ; preds = %if.end.75, %if.then.35
  %89 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool77 = icmp ne %struct._GSList* %89, null
  br i1 %tobool77, label %cond.true.78, label %cond.false.80

cond.true.78:                                     ; preds = %for.inc.76
  %90 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next79 = getelementptr inbounds %struct._GSList, %struct._GSList* %90, i32 0, i32 1
  %91 = load %struct._GSList*, %struct._GSList** %next79, align 8
  br label %cond.end.81

cond.false.80:                                    ; preds = %for.inc.76
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.80, %cond.true.78
  %cond82 = phi %struct._GSList* [ %91, %cond.true.78 ], [ null, %cond.false.80 ]
  store %struct._GSList* %cond82, %struct._GSList** %list, align 8
  br label %for.cond.30

for.end.83:                                       ; preds = %for.cond.30
  %92 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %93 = bitcast %struct._GimpUIManager* %92 to %struct._GTypeInstance*
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 80)
  %94 = bitcast %struct._GTypeInstance* %call84 to %struct._GObject*
  %95 = load i8*, i8** %ui_path.addr, align 8
  call void @g_object_set_data(%struct._GObject* %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* %95)
  %96 = load %struct._GTree*, %struct._GTree** %menu_entries, align 8
  %97 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %98 = bitcast %struct._GimpUIManager* %97 to i8*
  call void @g_tree_foreach(%struct._GTree* %96, i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct._PlugInMenuEntry*, %struct._GimpUIManager*)* @plug_in_menus_tree_traverse to i32 (i8*, i8*, i8*)*), i8* %98)
  %99 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %100 = bitcast %struct._GimpUIManager* %99 to %struct._GTypeInstance*
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %100, i64 80)
  %101 = bitcast %struct._GTypeInstance* %call85 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* null)
  %102 = load %struct._GTree*, %struct._GTree** %menu_entries, align 8
  call void @g_tree_destroy(%struct._GTree* %102)
  %103 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %gimp86 = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %103, i32 0, i32 2
  %104 = load %struct._Gimp*, %struct._Gimp** %gimp86, align 8
  %pdb = getelementptr inbounds %struct._Gimp, %struct._Gimp* %104, i32 0, i32 44
  %105 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %106 = bitcast %struct._GimpPDB* %105 to i8*
  %107 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %108 = bitcast %struct._GimpUIManager* %107 to i8*
  %call87 = call i64 @g_signal_connect_object(i8* %106, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPDB*, %struct._GimpProcedure*, %struct._GimpUIManager*)* @plug_in_menus_register_procedure to void ()*), i8* %108, i32 0)
  %109 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %gimp88 = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %109, i32 0, i32 2
  %110 = load %struct._Gimp*, %struct._Gimp** %gimp88, align 8
  %pdb89 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %110, i32 0, i32 44
  %111 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb89, align 8
  %112 = bitcast %struct._GimpPDB* %111 to i8*
  %113 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %114 = bitcast %struct._GimpUIManager* %113 to i8*
  %call90 = call i64 @g_signal_connect_object(i8* %112, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPDB*, %struct._GimpProcedure*, %struct._GimpUIManager*)* @plug_in_menus_unregister_procedure to void ()*), i8* %114, i32 0)
  br label %return

return:                                           ; preds = %for.end.83, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_ui_manager_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare i32 @gtk_ui_manager_new_merge_id(%struct._GtkUIManager*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_ui_manager_get_type() #1

declare noalias i8* @g_strdup_printf(i8*, ...) #3

declare void @gtk_ui_manager_add_ui(%struct._GtkUIManager*, i32, i8*, i8*, i8*, i32, i32) #3

declare void @g_free(i8*) #3

declare %struct._GTree* @g_tree_new_full(i32 (i8*, i8*, i8*)*, i8*, void (i8*)*, void (i8*)*) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @plug_in_menu_entry_free(%struct._PlugInMenuEntry* %entry1) #0 {
entry:
  %entry.addr = alloca %struct._PlugInMenuEntry*, align 8
  store %struct._PlugInMenuEntry* %entry1, %struct._PlugInMenuEntry** %entry.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._PlugInMenuEntry*, %struct._PlugInMenuEntry** %entry.addr, align 8
  %1 = bitcast %struct._PlugInMenuEntry* %0 to i8*
  call void @g_slice_free1(i64 16, i8* %1)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @plug_in_menus_menu_path_added(%struct._GimpPlugInProcedure* %plug_in_proc, i8* %menu_path, %struct._GimpUIManager* %manager) #0 {
entry:
  %plug_in_proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %menu_path.addr = alloca i8*, align 8
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  store %struct._GimpPlugInProcedure* %plug_in_proc, %struct._GimpPlugInProcedure** %plug_in_proc.addr, align 8
  store i8* %menu_path, i8** %menu_path.addr, align 8
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %0, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %1 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc.addr, align 8
  %2 = bitcast %struct._GimpPlugInProcedure* %1 to i8*
  %call = call i8* @gimp_object_get_name(i8* %2)
  %3 = load i8*, i8** %menu_path.addr, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.plug_in_menus_menu_path_added, i32 0, i32 0), i32 284, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i8* %call, i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load i8*, i8** %menu_path.addr, align 8
  %5 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %name = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %5, i32 0, i32 1
  %6 = load i8*, i8** %name, align 8
  %call1 = call i32 @g_str_has_prefix(i8* %4, i8* %6)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.86

if.then.3:                                        ; preds = %do.end
  %7 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %name4 = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %7, i32 0, i32 1
  %8 = load i8*, i8** %name4, align 8
  %call5 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0)) #6
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.else, label %if.then.7

if.then.7:                                        ; preds = %if.then.3
  %9 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %10 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc.addr, align 8
  %11 = load i8*, i8** %menu_path.addr, align 8
  call void @plug_in_menus_add_proc(%struct._GimpUIManager* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), %struct._GimpPlugInProcedure* %10, i8* %11)
  %12 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %13 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc.addr, align 8
  %14 = load i8*, i8** %menu_path.addr, align 8
  call void @plug_in_menus_add_proc(%struct._GimpUIManager* %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), %struct._GimpPlugInProcedure* %13, i8* %14)
  br label %if.end.85

if.else:                                          ; preds = %if.then.3
  %15 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %name8 = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %15, i32 0, i32 1
  %16 = load i8*, i8** %name8, align 8
  %call9 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0)) #6
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.else.12, label %if.then.11

if.then.11:                                       ; preds = %if.else
  %17 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %18 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc.addr, align 8
  %19 = load i8*, i8** %menu_path.addr, align 8
  call void @plug_in_menus_add_proc(%struct._GimpUIManager* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), %struct._GimpPlugInProcedure* %18, i8* %19)
  br label %if.end.84

if.else.12:                                       ; preds = %if.else
  %20 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %name13 = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %20, i32 0, i32 1
  %21 = load i8*, i8** %name13, align 8
  %call14 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0)) #6
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.else.17, label %if.then.16

if.then.16:                                       ; preds = %if.else.12
  %22 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %23 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc.addr, align 8
  %24 = load i8*, i8** %menu_path.addr, align 8
  call void @plug_in_menus_add_proc(%struct._GimpUIManager* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), %struct._GimpPlugInProcedure* %23, i8* %24)
  br label %if.end.83

if.else.17:                                       ; preds = %if.else.12
  %25 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %name18 = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %25, i32 0, i32 1
  %26 = load i8*, i8** %name18, align 8
  %call19 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0)) #6
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %if.else.17
  %27 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %28 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc.addr, align 8
  %29 = load i8*, i8** %menu_path.addr, align 8
  call void @plug_in_menus_add_proc(%struct._GimpUIManager* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0), %struct._GimpPlugInProcedure* %28, i8* %29)
  br label %if.end.82

if.else.22:                                       ; preds = %if.else.17
  %30 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %name23 = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %30, i32 0, i32 1
  %31 = load i8*, i8** %name23, align 8
  %call24 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0)) #6
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.else.27, label %if.then.26

if.then.26:                                       ; preds = %if.else.22
  %32 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %33 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc.addr, align 8
  %34 = load i8*, i8** %menu_path.addr, align 8
  call void @plug_in_menus_add_proc(%struct._GimpUIManager* %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), %struct._GimpPlugInProcedure* %33, i8* %34)
  br label %if.end.81

if.else.27:                                       ; preds = %if.else.22
  %35 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %name28 = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %35, i32 0, i32 1
  %36 = load i8*, i8** %name28, align 8
  %call29 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0)) #6
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.else.32, label %if.then.31

if.then.31:                                       ; preds = %if.else.27
  %37 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %38 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc.addr, align 8
  %39 = load i8*, i8** %menu_path.addr, align 8
  call void @plug_in_menus_add_proc(%struct._GimpUIManager* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0), %struct._GimpPlugInProcedure* %38, i8* %39)
  br label %if.end.80

if.else.32:                                       ; preds = %if.else.27
  %40 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %name33 = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %40, i32 0, i32 1
  %41 = load i8*, i8** %name33, align 8
  %call34 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0)) #6
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.else.37, label %if.then.36

if.then.36:                                       ; preds = %if.else.32
  %42 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %43 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc.addr, align 8
  %44 = load i8*, i8** %menu_path.addr, align 8
  call void @plug_in_menus_add_proc(%struct._GimpUIManager* %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), %struct._GimpPlugInProcedure* %43, i8* %44)
  br label %if.end.79

if.else.37:                                       ; preds = %if.else.32
  %45 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %name38 = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %45, i32 0, i32 1
  %46 = load i8*, i8** %name38, align 8
  %call39 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0)) #6
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.else.42, label %if.then.41

if.then.41:                                       ; preds = %if.else.37
  %47 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %48 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc.addr, align 8
  %49 = load i8*, i8** %menu_path.addr, align 8
  call void @plug_in_menus_add_proc(%struct._GimpUIManager* %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0), %struct._GimpPlugInProcedure* %48, i8* %49)
  br label %if.end.78

if.else.42:                                       ; preds = %if.else.37
  %50 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %name43 = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %50, i32 0, i32 1
  %51 = load i8*, i8** %name43, align 8
  %call44 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0)) #6
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.else.47, label %if.then.46

if.then.46:                                       ; preds = %if.else.42
  %52 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %53 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc.addr, align 8
  %54 = load i8*, i8** %menu_path.addr, align 8
  call void @plug_in_menus_add_proc(%struct._GimpUIManager* %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i32 0, i32 0), %struct._GimpPlugInProcedure* %53, i8* %54)
  br label %if.end.77

if.else.47:                                       ; preds = %if.else.42
  %55 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %name48 = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %55, i32 0, i32 1
  %56 = load i8*, i8** %name48, align 8
  %call49 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0)) #6
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.else.52, label %if.then.51

if.then.51:                                       ; preds = %if.else.47
  %57 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %58 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc.addr, align 8
  %59 = load i8*, i8** %menu_path.addr, align 8
  call void @plug_in_menus_add_proc(%struct._GimpUIManager* %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0), %struct._GimpPlugInProcedure* %58, i8* %59)
  br label %if.end.76

if.else.52:                                       ; preds = %if.else.47
  %60 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %name53 = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %60, i32 0, i32 1
  %61 = load i8*, i8** %name53, align 8
  %call54 = call i32 @strcmp(i8* %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0)) #6
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.else.57, label %if.then.56

if.then.56:                                       ; preds = %if.else.52
  %62 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %63 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc.addr, align 8
  %64 = load i8*, i8** %menu_path.addr, align 8
  call void @plug_in_menus_add_proc(%struct._GimpUIManager* %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i32 0, i32 0), %struct._GimpPlugInProcedure* %63, i8* %64)
  br label %if.end.75

if.else.57:                                       ; preds = %if.else.52
  %65 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %name58 = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %65, i32 0, i32 1
  %66 = load i8*, i8** %name58, align 8
  %call59 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0)) #6
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.else.62, label %if.then.61

if.then.61:                                       ; preds = %if.else.57
  %67 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %68 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc.addr, align 8
  %69 = load i8*, i8** %menu_path.addr, align 8
  call void @plug_in_menus_add_proc(%struct._GimpUIManager* %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i32 0, i32 0), %struct._GimpPlugInProcedure* %68, i8* %69)
  br label %if.end.74

if.else.62:                                       ; preds = %if.else.57
  %70 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %name63 = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %70, i32 0, i32 1
  %71 = load i8*, i8** %name63, align 8
  %call64 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0)) #6
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.else.67, label %if.then.66

if.then.66:                                       ; preds = %if.else.62
  %72 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %73 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc.addr, align 8
  %74 = load i8*, i8** %menu_path.addr, align 8
  call void @plug_in_menus_add_proc(%struct._GimpUIManager* %72, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i32 0, i32 0), %struct._GimpPlugInProcedure* %73, i8* %74)
  br label %if.end.73

if.else.67:                                       ; preds = %if.else.62
  %75 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %name68 = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %75, i32 0, i32 1
  %76 = load i8*, i8** %name68, align 8
  %call69 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0)) #6
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.end.72, label %if.then.71

if.then.71:                                       ; preds = %if.else.67
  %77 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %78 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc.addr, align 8
  %79 = load i8*, i8** %menu_path.addr, align 8
  call void @plug_in_menus_add_proc(%struct._GimpUIManager* %77, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i32 0, i32 0), %struct._GimpPlugInProcedure* %78, i8* %79)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %if.else.67
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.then.66
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.61
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.56
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.then.51
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then.46
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.41
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then.36
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.31
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.then.26
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.then.21
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then.16
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.11
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.then.7
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %do.end
  ret void
}

declare i32 @g_str_has_prefix(i8*, i8*) #3

declare noalias i8* @g_slice_alloc0(i64) #3

declare i8* @gimp_plug_in_procedure_get_progname(%struct._GimpPlugInProcedure*) #3

declare i8* @gimp_plug_in_manager_get_locale_domain(%struct._GimpPlugInManager*, i8*, i8**) #3

declare noalias i8* @g_strconcat(i8*, ...) #3

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @plug_in_menus_tree_insert(%struct._GTree* %entries, i8* %path, %struct._PlugInMenuEntry* %entry1) #0 {
entry:
  %entries.addr = alloca %struct._GTree*, align 8
  %path.addr = alloca i8*, align 8
  %entry.addr = alloca %struct._PlugInMenuEntry*, align 8
  %strip = alloca i8*, align 8
  %key = alloca i8*, align 8
  store %struct._GTree* %entries, %struct._GTree** %entries.addr, align 8
  store i8* %path, i8** %path.addr, align 8
  store %struct._PlugInMenuEntry* %entry1, %struct._PlugInMenuEntry** %entry.addr, align 8
  %0 = load i8*, i8** %path.addr, align 8
  %call = call noalias i8* @gimp_strip_uline(i8* %0)
  store i8* %call, i8** %strip, align 8
  %1 = load i8*, i8** %strip, align 8
  %2 = load %struct._PlugInMenuEntry*, %struct._PlugInMenuEntry** %entry.addr, align 8
  %proc = getelementptr inbounds %struct._PlugInMenuEntry, %struct._PlugInMenuEntry* %2, i32 0, i32 0
  %3 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %4 = bitcast %struct._GimpPlugInProcedure* %3 to i8*
  %call2 = call i8* @gimp_object_get_name(i8* %4)
  %call3 = call noalias i8* (i8*, ...) @g_strconcat(i8* %1, i8* %call2, i8* null)
  store i8* %call3, i8** %key, align 8
  %5 = load %struct._GTree*, %struct._GTree** %entries.addr, align 8
  %6 = load i8*, i8** %key, align 8
  %call4 = call noalias i8* @g_utf8_collate_key(i8* %6, i64 -1)
  %7 = load %struct._PlugInMenuEntry*, %struct._PlugInMenuEntry** %entry.addr, align 8
  %8 = bitcast %struct._PlugInMenuEntry* %7 to i8*
  call void @g_tree_insert(%struct._GTree* %5, i8* %call4, i8* %8)
  %9 = load i8*, i8** %key, align 8
  call void @g_free(i8* %9)
  %10 = load i8*, i8** %strip, align 8
  call void @g_free(i8* %10)
  ret void
}

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #3

declare void @g_tree_foreach(%struct._GTree*, i32 (i8*, i8*, i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @plug_in_menus_tree_traverse(i8* %key, %struct._PlugInMenuEntry* %entry1, %struct._GimpUIManager* %manager) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %entry.addr = alloca %struct._PlugInMenuEntry*, align 8
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  %ui_path = alloca i8*, align 8
  store i8* %key, i8** %key.addr, align 8
  store %struct._PlugInMenuEntry* %entry1, %struct._PlugInMenuEntry** %entry.addr, align 8
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  %0 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %1 = bitcast %struct._GimpUIManager* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call2 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0))
  store i8* %call2, i8** %ui_path, align 8
  %3 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %4 = load i8*, i8** %ui_path, align 8
  %5 = load %struct._PlugInMenuEntry*, %struct._PlugInMenuEntry** %entry.addr, align 8
  %proc = getelementptr inbounds %struct._PlugInMenuEntry, %struct._PlugInMenuEntry* %5, i32 0, i32 0
  %6 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %7 = load %struct._PlugInMenuEntry*, %struct._PlugInMenuEntry** %entry.addr, align 8
  %menu_path = getelementptr inbounds %struct._PlugInMenuEntry, %struct._PlugInMenuEntry* %7, i32 0, i32 1
  %8 = load i8*, i8** %menu_path, align 8
  call void @plug_in_menus_add_proc(%struct._GimpUIManager* %3, i8* %4, %struct._GimpPlugInProcedure* %6, i8* %8)
  ret i32 0
}

declare void @g_tree_destroy(%struct._GTree*) #3

; Function Attrs: nounwind uwtable
define internal void @plug_in_menus_register_procedure(%struct._GimpPDB* %pdb, %struct._GimpProcedure* %procedure, %struct._GimpUIManager* %manager) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %plug_in_proc = alloca %struct._GimpPlugInProcedure*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_procedure_get_type() #5
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %entry
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.end.27

if.then.8:                                        ; preds = %if.end.6
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %14 = bitcast %struct._GimpProcedure* %13 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_plug_in_procedure_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call10)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpPlugInProcedure*
  store %struct._GimpPlugInProcedure* %15, %struct._GimpPlugInProcedure** %plug_in_proc, align 8
  %16 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc, align 8
  %17 = bitcast %struct._GimpPlugInProcedure* %16 to i8*
  %18 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %19 = bitcast %struct._GimpUIManager* %18 to i8*
  %call12 = call i64 @g_signal_connect_object(i8* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPlugInProcedure*, i8*, %struct._GimpUIManager*)* @plug_in_menus_menu_path_added to void ()*), i8* %19, i32 0)
  %20 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc, align 8
  %menu_label = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %20, i32 0, i32 4
  %21 = load i8*, i8** %menu_label, align 8
  %tobool13 = icmp ne i8* %21, null
  br i1 %tobool13, label %land.lhs.true.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.8
  %22 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc, align 8
  %menu_paths = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %22, i32 0, i32 5
  %23 = load %struct._GList*, %struct._GList** %menu_paths, align 8
  %tobool14 = icmp ne %struct._GList* %23, null
  br i1 %tobool14, label %land.lhs.true.15, label %if.end.26

land.lhs.true.15:                                 ; preds = %lor.lhs.false, %if.then.8
  %24 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc, align 8
  %file_proc = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %24, i32 0, i32 14
  %25 = load i32, i32* %file_proc, align 4
  %tobool16 = icmp ne i32 %25, 0
  br i1 %tobool16, label %if.end.26, label %if.then.17

if.then.17:                                       ; preds = %land.lhs.true.15
  br label %do.body

do.body:                                          ; preds = %if.then.17
  %26 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %26, 32
  %tobool19 = icmp ne i32 %and, 0
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %do.body
  %27 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %28 = bitcast %struct._GimpProcedure* %27 to i8*
  %call21 = call i8* @gimp_object_get_name(i8* %28)
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.plug_in_menus_register_procedure, i32 0, i32 0), i32 225, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), i8* %call21)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.22
  %29 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc, align 8
  %menu_paths23 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %29, i32 0, i32 5
  %30 = load %struct._GList*, %struct._GList** %menu_paths23, align 8
  store %struct._GList* %30, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %31 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool24 = icmp ne %struct._GList* %31, null
  br i1 %tobool24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc, align 8
  %33 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %33, i32 0, i32 0
  %34 = load i8*, i8** %data, align 8
  %35 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  call void @plug_in_menus_menu_path_added(%struct._GimpPlugInProcedure* %32, i8* %34, %struct._GimpUIManager* %35)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool25 = icmp ne %struct._GList* %36, null
  br i1 %tobool25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %37 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %37, i32 0, i32 1
  %38 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %38, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.26

if.end.26:                                        ; preds = %for.end, %land.lhs.true.15, %lor.lhs.false
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @plug_in_menus_unregister_procedure(%struct._GimpPDB* %pdb, %struct._GimpProcedure* %procedure, %struct._GimpUIManager* %manager) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %plug_in_proc = alloca %struct._GimpPlugInProcedure*, align 8
  %list = alloca %struct._GList*, align 8
  %merge_key = alloca i8*, align 8
  %merge_id = alloca i32, align 4
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_procedure_get_type() #5
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %entry
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.end.42

if.then.8:                                        ; preds = %if.end.6
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %14 = bitcast %struct._GimpProcedure* %13 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_plug_in_procedure_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call10)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpPlugInProcedure*
  store %struct._GimpPlugInProcedure* %15, %struct._GimpPlugInProcedure** %plug_in_proc, align 8
  %16 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc, align 8
  %17 = bitcast %struct._GimpPlugInProcedure* %16 to i8*
  %18 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %19 = bitcast %struct._GimpUIManager* %18 to i8*
  %call12 = call i32 @g_signal_handlers_disconnect_matched(i8* %17, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpPlugInProcedure*, i8*, %struct._GimpUIManager*)* @plug_in_menus_menu_path_added to i8*), i8* %19)
  %20 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc, align 8
  %menu_label = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %20, i32 0, i32 4
  %21 = load i8*, i8** %menu_label, align 8
  %tobool13 = icmp ne i8* %21, null
  br i1 %tobool13, label %land.lhs.true.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.8
  %22 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc, align 8
  %menu_paths = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %22, i32 0, i32 5
  %23 = load %struct._GList*, %struct._GList** %menu_paths, align 8
  %tobool14 = icmp ne %struct._GList* %23, null
  br i1 %tobool14, label %land.lhs.true.15, label %if.end.41

land.lhs.true.15:                                 ; preds = %lor.lhs.false, %if.then.8
  %24 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc, align 8
  %file_proc = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %24, i32 0, i32 14
  %25 = load i32, i32* %file_proc, align 4
  %tobool16 = icmp ne i32 %25, 0
  br i1 %tobool16, label %if.end.41, label %if.then.17

if.then.17:                                       ; preds = %land.lhs.true.15
  br label %do.body

do.body:                                          ; preds = %if.then.17
  %26 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %26, 32
  %tobool19 = icmp ne i32 %and, 0
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %do.body
  %27 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %28 = bitcast %struct._GimpProcedure* %27 to i8*
  %call21 = call i8* @gimp_object_get_name(i8* %28)
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.plug_in_menus_unregister_procedure, i32 0, i32 0), i32 252, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0), i8* %call21)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.22
  %29 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc, align 8
  %menu_paths23 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %29, i32 0, i32 5
  %30 = load %struct._GList*, %struct._GList** %menu_paths23, align 8
  store %struct._GList* %30, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %31 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool24 = icmp ne %struct._GList* %31, null
  br i1 %tobool24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %32, i32 0, i32 0
  %33 = load i8*, i8** %data, align 8
  %34 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %name = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %34, i32 0, i32 1
  %35 = load i8*, i8** %name, align 8
  %call25 = call i32 @g_str_has_prefix(i8* %33, i8* %35)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.39

if.then.27:                                       ; preds = %for.body
  %36 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc, align 8
  %37 = bitcast %struct._GimpPlugInProcedure* %36 to i8*
  %call30 = call i8* @gimp_object_get_name(i8* %37)
  %call31 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8* %call30)
  store i8* %call31, i8** %merge_key, align 8
  %38 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %39 = bitcast %struct._GimpUIManager* %38 to %struct._GTypeInstance*
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 80)
  %40 = bitcast %struct._GTypeInstance* %call32 to %struct._GObject*
  %41 = load i8*, i8** %merge_key, align 8
  %call33 = call i8* @g_object_get_data(%struct._GObject* %40, i8* %41)
  %42 = ptrtoint i8* %call33 to i64
  %conv = trunc i64 %42 to i32
  store i32 %conv, i32* %merge_id, align 4
  %43 = load i8*, i8** %merge_key, align 8
  call void @g_free(i8* %43)
  %44 = load i32, i32* %merge_id, align 4
  %tobool34 = icmp ne i32 %44, 0
  br i1 %tobool34, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %if.then.27
  %45 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %46 = bitcast %struct._GimpUIManager* %45 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_ui_manager_get_type() #5
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call36)
  %47 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkUIManager*
  %48 = load i32, i32* %merge_id, align 4
  call void @gtk_ui_manager_remove_ui(%struct._GtkUIManager* %47, i32 %48)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %if.then.27
  br label %for.end

if.end.39:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.39
  %49 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool40 = icmp ne %struct._GList* %49, null
  br i1 %tobool40, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %50 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %50, i32 0, i32 1
  %51 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %51, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.end.38, %for.cond
  br label %if.end.41

if.end.41:                                        ; preds = %for.end, %land.lhs.true.15, %lor.lhs.false
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.end.6
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_plug_in_procedure_get_type() #1

declare void @gimp_log(i32, i8*, i32, i8*, ...) #3

declare i8* @gimp_object_get_name(i8*) #3

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #3

declare i8* @g_object_get_data(%struct._GObject*, i8*) #3

declare void @gtk_ui_manager_remove_ui(%struct._GtkUIManager*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @plug_in_menus_add_proc(%struct._GimpUIManager* %manager, i8* %ui_path, %struct._GimpPlugInProcedure* %proc, i8* %menu_path) #0 {
entry:
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  %ui_path.addr = alloca i8*, align 8
  %proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %menu_path.addr = alloca i8*, align 8
  %path = alloca i8*, align 8
  %merge_key = alloca i8*, align 8
  %stripped_path = alloca i8*, align 8
  %action_path = alloca i8*, align 8
  %merge_id = alloca i32, align 4
  %menu_merge_id = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst19 = alloca %struct._GTypeInstance*, align 8
  %__t21 = alloca i64, align 8
  %__r24 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  %p = alloca i8*, align 8
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  store i8* %ui_path, i8** %ui_path.addr, align 8
  store %struct._GimpPlugInProcedure* %proc, %struct._GimpPlugInProcedure** %proc.addr, align 8
  store i8* %menu_path, i8** %menu_path.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %1 = bitcast %struct._GimpUIManager* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_ui_manager_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.plug_in_menus_add_proc, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0))
  br label %return

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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.plug_in_menus_add_proc, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %15 = bitcast %struct._GimpPlugInProcedure* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst19, align 8
  %call22 = call i64 @gimp_plug_in_procedure_get_type() #5
  store i64 %call22, i64* %__t21, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %tobool25 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool25, label %if.else.27, label %if.then.26

if.then.26:                                       ; preds = %do.body.17
  store i32 0, i32* %__r24, align 4
  br label %if.end.38

if.else.27:                                       ; preds = %do.body.17
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %tobool29 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool29, label %land.lhs.true.30, label %if.else.35

land.lhs.true.30:                                 ; preds = %if.else.27
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class31 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class31, align 8
  %g_type32 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type32, align 8
  %22 = load i64, i64* %__t21, align 8
  %cmp33 = icmp eq i64 %21, %22
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %land.lhs.true.30
  store i32 1, i32* %__r24, align 4
  br label %if.end.37

if.else.35:                                       ; preds = %land.lhs.true.30, %if.else.27
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %24 = load i64, i64* %__t21, align 8
  %call36 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #6
  store i32 %call36, i32* %__r24, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.then.34
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.26
  %25 = load i32, i32* %__r24, align 4
  store i32 %25, i32* %tmp39
  %26 = load i32, i32* %tmp39
  %tobool40 = icmp ne i32 %26, 0
  br i1 %tobool40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %if.end.38
  br label %if.end.43

if.else.42:                                       ; preds = %if.end.38
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.plug_in_menus_add_proc, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.43, i32 0, i32 0))
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %27 = load i8*, i8** %menu_path.addr, align 8
  %call45 = call noalias i8* @g_strdup(i8* %27)
  store i8* %call45, i8** %path, align 8
  %28 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %menu_label = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %28, i32 0, i32 4
  %29 = load i8*, i8** %menu_label, align 8
  %tobool46 = icmp ne i8* %29, null
  br i1 %tobool46, label %if.end.56, label %if.then.47

if.then.47:                                       ; preds = %do.end.44
  %30 = load i8*, i8** %path, align 8
  %tobool49 = icmp ne i8* %30, null
  br i1 %tobool49, label %if.end.51, label %if.then.50

if.then.50:                                       ; preds = %if.then.47
  br label %return

if.end.51:                                        ; preds = %if.then.47
  %31 = load i8*, i8** %path, align 8
  %call52 = call i8* @strrchr(i8* %31, i32 47) #6
  store i8* %call52, i8** %p, align 8
  %32 = load i8*, i8** %p, align 8
  %tobool53 = icmp ne i8* %32, null
  br i1 %tobool53, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %if.end.51
  %33 = load i8*, i8** %path, align 8
  call void @g_free(i8* %33)
  br label %return

if.end.55:                                        ; preds = %if.end.51
  %34 = load i8*, i8** %p, align 8
  store i8 0, i8* %34, align 1
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %do.end.44
  %35 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %36 = bitcast %struct._GimpPlugInProcedure* %35 to i8*
  %call57 = call i8* @gimp_object_get_name(i8* %36)
  %call58 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8* %call57)
  store i8* %call58, i8** %merge_key, align 8
  %37 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %38 = bitcast %struct._GimpUIManager* %37 to %struct._GTypeInstance*
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 80)
  %39 = bitcast %struct._GTypeInstance* %call59 to %struct._GObject*
  %40 = load i8*, i8** %merge_key, align 8
  %call60 = call i8* @g_object_get_data(%struct._GObject* %39, i8* %40)
  %41 = ptrtoint i8* %call60 to i64
  %conv = trunc i64 %41 to i32
  store i32 %conv, i32* %merge_id, align 4
  %42 = load i32, i32* %merge_id, align 4
  %tobool61 = icmp ne i32 %42, 0
  br i1 %tobool61, label %if.end.68, label %if.then.62

if.then.62:                                       ; preds = %if.end.56
  %43 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %44 = bitcast %struct._GimpUIManager* %43 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_ui_manager_get_type() #5
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call63)
  %45 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkUIManager*
  %call65 = call i32 @gtk_ui_manager_new_merge_id(%struct._GtkUIManager* %45)
  store i32 %call65, i32* %merge_id, align 4
  %46 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %47 = bitcast %struct._GimpUIManager* %46 to %struct._GTypeInstance*
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 80)
  %48 = bitcast %struct._GTypeInstance* %call66 to %struct._GObject*
  %49 = load i8*, i8** %merge_key, align 8
  %50 = load i32, i32* %merge_id, align 4
  %conv67 = zext i32 %50 to i64
  %51 = inttoptr i64 %conv67 to i8*
  call void @g_object_set_data(%struct._GObject* %48, i8* %49, i8* %51)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.62, %if.end.56
  %52 = load i8*, i8** %merge_key, align 8
  call void @g_free(i8* %52)
  %53 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %54 = bitcast %struct._GimpUIManager* %53 to %struct._GTypeInstance*
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 80)
  %55 = bitcast %struct._GTypeInstance* %call69 to %struct._GObject*
  %call70 = call i8* @g_object_get_data(%struct._GObject* %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.44, i32 0, i32 0))
  %56 = ptrtoint i8* %call70 to i64
  %conv71 = trunc i64 %56 to i32
  store i32 %conv71, i32* %menu_merge_id, align 4
  %57 = load i32, i32* %menu_merge_id, align 4
  %tobool72 = icmp ne i32 %57, 0
  br i1 %tobool72, label %if.end.79, label %if.then.73

if.then.73:                                       ; preds = %if.end.68
  %58 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %59 = bitcast %struct._GimpUIManager* %58 to %struct._GTypeInstance*
  %call74 = call i64 @gtk_ui_manager_get_type() #5
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call74)
  %60 = bitcast %struct._GTypeInstance* %call75 to %struct._GtkUIManager*
  %call76 = call i32 @gtk_ui_manager_new_merge_id(%struct._GtkUIManager* %60)
  store i32 %call76, i32* %menu_merge_id, align 4
  %61 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %62 = bitcast %struct._GimpUIManager* %61 to %struct._GTypeInstance*
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 80)
  %63 = bitcast %struct._GTypeInstance* %call77 to %struct._GObject*
  %64 = load i32, i32* %menu_merge_id, align 4
  %conv78 = zext i32 %64 to i64
  %65 = inttoptr i64 %conv78 to i8*
  call void @g_object_set_data(%struct._GObject* %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.44, i32 0, i32 0), i8* %65)
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.73, %if.end.68
  %66 = load i8*, i8** %path, align 8
  %call80 = call noalias i8* @gimp_strip_uline(i8* %66)
  store i8* %call80, i8** %stripped_path, align 8
  %67 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %68 = load i8*, i8** %ui_path.addr, align 8
  %69 = load i32, i32* %menu_merge_id, align 4
  %70 = load i8*, i8** %stripped_path, align 8
  %call81 = call i8* @plug_in_menus_build_path(%struct._GimpUIManager* %67, i8* %68, i32 %69, i8* %70, i32 0)
  store i8* %call81, i8** %action_path, align 8
  %71 = load i8*, i8** %stripped_path, align 8
  call void @g_free(i8* %71)
  %72 = load i8*, i8** %action_path, align 8
  %tobool82 = icmp ne i8* %72, null
  br i1 %tobool82, label %if.end.84, label %if.then.83

if.then.83:                                       ; preds = %if.end.79
  %73 = load i8*, i8** %path, align 8
  call void @g_free(i8* %73)
  br label %return

if.end.84:                                        ; preds = %if.end.79
  br label %do.body.85

do.body.85:                                       ; preds = %if.end.84
  %74 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %74, 32
  %tobool86 = icmp ne i32 %and, 0
  br i1 %tobool86, label %if.then.87, label %if.end.89

if.then.87:                                       ; preds = %do.body.85
  %75 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %76 = bitcast %struct._GimpPlugInProcedure* %75 to i8*
  %call88 = call i8* @gimp_object_get_name(i8* %76)
  %77 = load i8*, i8** %action_path, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.plug_in_menus_add_proc, i32 0, i32 0), i32 435, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.45, i32 0, i32 0), i8* %call88, i8* %77)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.87, %do.body.85
  br label %do.end.90

do.end.90:                                        ; preds = %if.end.89
  %78 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %79 = bitcast %struct._GimpUIManager* %78 to %struct._GTypeInstance*
  %call91 = call i64 @gtk_ui_manager_get_type() #5
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call91)
  %80 = bitcast %struct._GTypeInstance* %call92 to %struct._GtkUIManager*
  %81 = load i32, i32* %merge_id, align 4
  %82 = load i8*, i8** %action_path, align 8
  %83 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %84 = bitcast %struct._GimpPlugInProcedure* %83 to i8*
  %call93 = call i8* @gimp_object_get_name(i8* %84)
  %85 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %86 = bitcast %struct._GimpPlugInProcedure* %85 to i8*
  %call94 = call i8* @gimp_object_get_name(i8* %86)
  call void @gtk_ui_manager_add_ui(%struct._GtkUIManager* %80, i32 %81, i8* %82, i8* %call93, i8* %call94, i32 32, i32 0)
  %87 = load i8*, i8** %action_path, align 8
  call void @g_free(i8* %87)
  %88 = load i8*, i8** %path, align 8
  call void @g_free(i8* %88)
  br label %return

return:                                           ; preds = %do.end.90, %if.then.83, %if.then.54, %if.then.50, %if.else.42, %if.else.14, %if.else.9
  ret void
}

declare noalias i8* @g_strdup(i8*) #3

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #2

declare noalias i8* @gimp_strip_uline(i8*) #3

; Function Attrs: nounwind uwtable
define internal i8* @plug_in_menus_build_path(%struct._GimpUIManager* %manager, i8* %ui_path, i32 %merge_id, i8* %menu_path, i32 %for_menu) #0 {
entry:
  %retval = alloca i8*, align 8
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  %ui_path.addr = alloca i8*, align 8
  %merge_id.addr = alloca i32, align 4
  %menu_path.addr = alloca i8*, align 8
  %for_menu.addr = alloca i32, align 4
  %action_path = alloca i8*, align 8
  %parent_menu_path = alloca i8*, align 8
  %parent_action_path = alloca i8*, align 8
  %menu_item_name = alloca i8*, align 8
  %placeholder_path = alloca i8*, align 8
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  store i8* %ui_path, i8** %ui_path.addr, align 8
  store i32 %merge_id, i32* %merge_id.addr, align 4
  store i8* %menu_path, i8** %menu_path.addr, align 8
  store i32 %for_menu, i32* %for_menu.addr, align 4
  %0 = load i8*, i8** %menu_path.addr, align 8
  %call = call i8* @strchr(i8* %0, i32 47) #6
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %ui_path.addr, align 8
  %call1 = call noalias i8* @g_strdup(i8* %1)
  store i8* %call1, i8** %action_path, align 8
  br label %make_placeholder

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %ui_path.addr, align 8
  %3 = load i8*, i8** %menu_path.addr, align 8
  %call2 = call i8* @strchr(i8* %3, i32 47) #6
  %call3 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i8* %2, i8* %call2)
  store i8* %call3, i8** %action_path, align 8
  %4 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %5 = bitcast %struct._GimpUIManager* %4 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_ui_manager_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkUIManager*
  %7 = load i8*, i8** %action_path, align 8
  %call6 = call %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager* %6, i8* %7)
  %tobool7 = icmp ne %struct._GtkWidget* %call6, null
  br i1 %tobool7, label %if.end.34, label %if.then.8

if.then.8:                                        ; preds = %if.end
  %8 = load i8*, i8** %menu_path.addr, align 8
  %call9 = call noalias i8* @g_strdup(i8* %8)
  store i8* %call9, i8** %parent_menu_path, align 8
  store i8* null, i8** %parent_action_path, align 8
  %9 = load i8*, i8** %parent_menu_path, align 8
  %call10 = call i8* @strrchr(i8* %9, i32 47) #6
  store i8* %call10, i8** %menu_item_name, align 8
  %10 = load i8*, i8** %menu_item_name, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %menu_item_name, align 8
  store i8 0, i8* %10, align 1
  %11 = load i8*, i8** %menu_item_name, align 8
  %tobool11 = icmp ne i8* %11, null
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.then.8
  %12 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %13 = load i8*, i8** %ui_path.addr, align 8
  %14 = load i32, i32* %merge_id.addr, align 4
  %15 = load i8*, i8** %parent_menu_path, align 8
  %call13 = call i8* @plug_in_menus_build_path(%struct._GimpUIManager* %12, i8* %13, i32 %14, i8* %15, i32 1)
  store i8* %call13, i8** %parent_action_path, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.then.8
  %16 = load i8*, i8** %parent_action_path, align 8
  %tobool15 = icmp ne i8* %16, null
  br i1 %tobool15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.end.14
  %17 = load i8*, i8** %action_path, align 8
  call void @g_free(i8* %17)
  %18 = load i8*, i8** %parent_action_path, align 8
  %19 = load i8*, i8** %menu_item_name, align 8
  %call17 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i8* %18, i8* %19)
  store i8* %call17, i8** %action_path, align 8
  %20 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %21 = bitcast %struct._GimpUIManager* %20 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_ui_manager_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call18)
  %22 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkUIManager*
  %23 = load i8*, i8** %action_path, align 8
  %call20 = call %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager* %22, i8* %23)
  %tobool21 = icmp ne %struct._GtkWidget* %call20, null
  br i1 %tobool21, label %if.end.32, label %if.then.22

if.then.22:                                       ; preds = %if.then.16
  br label %do.body

do.body:                                          ; preds = %if.then.22
  %24 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %24, 32
  %tobool23 = icmp ne i32 %and, 0
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %do.body
  %25 = load i8*, i8** %menu_item_name, align 8
  %26 = load i8*, i8** %action_path, align 8
  %27 = load i8*, i8** %menu_path.addr, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.plug_in_menus_build_path, i32 0, i32 0), i32 520, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.48, i32 0, i32 0), i8* %25, i8* %26, i8* %27)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.25
  %28 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %29 = bitcast %struct._GimpUIManager* %28 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_ui_manager_get_type() #5
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call26)
  %30 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkUIManager*
  %31 = load i32, i32* %merge_id.addr, align 4
  %32 = load i8*, i8** %parent_action_path, align 8
  %33 = load i8*, i8** %menu_item_name, align 8
  %34 = load i8*, i8** %menu_path.addr, align 8
  call void @gtk_ui_manager_add_ui(%struct._GtkUIManager* %30, i32 %31, i8* %32, i8* %33, i8* %34, i32 2, i32 0)
  %35 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %36 = bitcast %struct._GimpUIManager* %35 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_ui_manager_get_type() #5
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call28)
  %37 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkUIManager*
  %38 = load i32, i32* %merge_id.addr, align 4
  %39 = load i8*, i8** %action_path, align 8
  call void @gtk_ui_manager_add_ui(%struct._GtkUIManager* %37, i32 %38, i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i8* null, i32 8, i32 0)
  %40 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %41 = bitcast %struct._GimpUIManager* %40 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_ui_manager_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call30)
  %42 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkUIManager*
  %43 = load i32, i32* %merge_id.addr, align 4
  %44 = load i8*, i8** %action_path, align 8
  call void @gtk_ui_manager_add_ui(%struct._GtkUIManager* %42, i32 %43, i8* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i8* null, i32 128, i32 0)
  br label %if.end.32

if.end.32:                                        ; preds = %do.end, %if.then.16
  %45 = load i8*, i8** %parent_action_path, align 8
  call void @g_free(i8* %45)
  br label %if.end.33

if.else:                                          ; preds = %if.end.14
  %46 = load i8*, i8** %action_path, align 8
  call void @g_free(i8* %46)
  store i8* null, i8** %action_path, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.end.32
  %47 = load i8*, i8** %parent_menu_path, align 8
  call void @g_free(i8* %47)
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end
  br label %make_placeholder

make_placeholder:                                 ; preds = %if.end.34, %if.then
  %48 = load i8*, i8** %action_path, align 8
  %tobool35 = icmp ne i8* %48, null
  br i1 %tobool35, label %land.lhs.true, label %if.end.45

land.lhs.true:                                    ; preds = %make_placeholder
  %49 = load i32, i32* %for_menu.addr, align 4
  %tobool36 = icmp ne i32 %49, 0
  br i1 %tobool36, label %if.then.37, label %if.end.45

if.then.37:                                       ; preds = %land.lhs.true
  %50 = load i8*, i8** %action_path, align 8
  %call38 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i8* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0))
  store i8* %call38, i8** %placeholder_path, align 8
  %51 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %52 = bitcast %struct._GimpUIManager* %51 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_ui_manager_get_type() #5
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call39)
  %53 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkUIManager*
  %54 = load i8*, i8** %placeholder_path, align 8
  %call41 = call %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager* %53, i8* %54)
  %tobool42 = icmp ne %struct._GtkWidget* %call41, null
  br i1 %tobool42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.then.37
  %55 = load i8*, i8** %action_path, align 8
  call void @g_free(i8* %55)
  %56 = load i8*, i8** %placeholder_path, align 8
  store i8* %56, i8** %retval
  br label %return

if.end.44:                                        ; preds = %if.then.37
  %57 = load i8*, i8** %placeholder_path, align 8
  call void @g_free(i8* %57)
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %land.lhs.true, %make_placeholder
  %58 = load i8*, i8** %action_path, align 8
  store i8* %58, i8** %retval
  br label %return

return:                                           ; preds = %if.end.45, %if.then.43
  %59 = load i8*, i8** %retval
  ret i8* %59
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

declare %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager*, i8*) #3

declare void @g_tree_insert(%struct._GTree*, i8*, i8*) #3

declare noalias i8* @g_utf8_collate_key(i8*, i64) #3

declare void @g_slice_free1(i64, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
