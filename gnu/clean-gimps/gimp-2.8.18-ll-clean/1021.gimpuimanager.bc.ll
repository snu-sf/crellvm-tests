; ModuleID = './app/widgets/gimpuimanager.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpUIManagerClass = type { %struct._GtkUIManagerClass, %struct._GHashTable*, void (%struct._GimpUIManager*, i8*)*, void (%struct._GimpUIManager*, i8*)*, void (%struct._GimpUIManager*)* }
%struct._GtkUIManagerClass = type { %struct._GObjectClass, void (%struct._GtkUIManager*, %struct._GtkWidget*)*, void (%struct._GtkUIManager*)*, void (%struct._GtkUIManager*, %struct._GtkAction*, %struct._GtkWidget*)*, void (%struct._GtkUIManager*, %struct._GtkAction*, %struct._GtkWidget*)*, void (%struct._GtkUIManager*, %struct._GtkAction*)*, void (%struct._GtkUIManager*, %struct._GtkAction*)*, %struct._GtkWidget* (%struct._GtkUIManager*, i8*)*, %struct._GtkAction* (%struct._GtkUIManager*, i8*)*, void ()*, void ()* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
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
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct._GHashTable = type opaque
%struct._GimpUIManager = type { %struct._GtkUIManager, i8*, %struct._Gimp*, %struct._GList* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type opaque
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
%struct._GimpActionGroup = type { %struct._GtkActionGroup, %struct._Gimp*, i8*, i8*, i8*, void (%struct._GimpActionGroup*, i8*)* }
%struct._GtkActionGroup = type { %struct._GObject, %struct._GtkActionGroupPrivate* }
%struct._GtkActionGroupPrivate = type opaque
%struct._GimpUIManagerUIEntry = type { i8*, i8*, void (%struct._GimpUIManager*, i8*)*, i32, %struct._GtkWidget* }
%struct._GtkMenu = type { %struct._GtkMenuShell, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAccelGroup*, i8*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i32, i32, i32, %struct._GdkRegion*, i32, i8 }
%struct._GtkMenuShell = type { %struct._GtkContainer, %struct._GList*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkAccelGroup = type { %struct._GObject, i32, i32, %struct._GSList*, i32, %struct._GtkAccelGroupEntry* }
%struct._GtkAccelGroupEntry = type { %struct._GtkAccelKey, %struct._GClosure*, i32 }
%struct._GtkAccelKey = type { i32, i32, i16 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GdkRegion = type opaque
%union._GdkEvent = type { %struct._GdkEventCrossing }
%struct._GdkEventCrossing = type { i32, %struct._GdkDrawable*, i8, %struct._GdkDrawable*, i32, double, double, double, double, i32, i32, i32, i32 }
%struct.MenuPos = type { i32, i32 }
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GtkMenuItem = type { %struct._GtkItem, %struct._GtkWidget*, %struct._GdkDrawable*, i16, i16, i8*, i8, i32 }
%struct._GtkItem = type { %struct._GtkBin }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GdkDisplayPointerHooks = type { {}*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GtkActivatable = type opaque
%struct._GdkEventKey = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32, i8*, i16, i8, i8 }
%struct.ChildLocation = type { %struct._GtkWidget*, %struct._GtkWidget*, i32, i32 }
%struct._GError = type { i32, i32, i8* }

@gimp_ui_manager_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"GimpUIManager\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_ui_manager_new = private unnamed_addr constant [20 x i8] c"gimp_ui_manager_new\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"gimp\00", align 1
@__func__.gimp_ui_managers_from_name = private unnamed_addr constant [27 x i8] c"gimp_ui_managers_from_name\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@__func__.gimp_ui_manager_update = private unnamed_addr constant [23 x i8] c"gimp_ui_manager_update\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"GIMP_IS_UI_MANAGER (manager)\00", align 1
@manager_signals = internal global [3 x i32] zeroinitializer, align 4
@__func__.gimp_ui_manager_get_action_group = private unnamed_addr constant [33 x i8] c"gimp_ui_manager_get_action_group\00", align 1
@__func__.gimp_ui_manager_find_action = private unnamed_addr constant [28 x i8] c"gimp_ui_manager_find_action\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"action_name != NULL\00", align 1
@__func__.gimp_ui_manager_activate_action = private unnamed_addr constant [32 x i8] c"gimp_ui_manager_activate_action\00", align 1
@__func__.gimp_ui_manager_ui_register = private unnamed_addr constant [28 x i8] c"gimp_ui_manager_ui_register\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"ui_path != NULL\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"basename != NULL\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"gimp_ui_manager_entry_get (manager, ui_path) == NULL\00", align 1
@__func__.gimp_ui_manager_ui_popup = private unnamed_addr constant [25 x i8] c"gimp_ui_manager_ui_popup\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"parent == NULL || GTK_IS_WIDGET (parent)\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"GTK_IS_MENU (widget)\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"menu-pos\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"popdown-data\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"selection-done\00", align 1
@gimp_ui_manager_parent_class = internal global i8* null, align 8
@GimpUIManager_private_offset = internal global i32 0, align 4
@.str.16 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"show-tooltip\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"hide-tooltip\00", align 1
@.str.19 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"gimpuimanager.c\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"deselect\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"realize\00", align 1
@gimp_ui_manager_item_realize.quark_key_press_connected = internal global i32 0, align 4
@.str.25 = private unnamed_addr constant [35 x i8] c"gimp-menu-item-key-press-connected\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"key-press-event\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"gimp-help\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"gimp-help-context\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"%s: no entry registered for \22%s\22\00", align 1
@__func__.gimp_ui_manager_entry_ensure = private unnamed_addr constant [29 x i8] c"gimp_ui_manager_entry_ensure\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"%s\0A\0A%s\0A\0A%s\00", align 1
@.str.31 = private unnamed_addr constant [38 x i8] c"Your GIMP installation is incomplete:\00", align 1
@.str.32 = private unnamed_addr constant [61 x i8] c"Please make sure the menu XML files are correctly installed.\00", align 1
@.str.33 = private unnamed_addr constant [59 x i8] c"There was an error parsing the menu definition from %s: %s\00", align 1
@.str.34 = private unnamed_addr constant [58 x i8] c"%s: \22%s\22 does not contain registered toplevel widget \22%s\22\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"GIMP_TESTING_MENUS_DIR\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"menus\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"loading menu '%s' for %s\0A\00", align 1
@__func__.gimp_ui_manager_menu_position = private unnamed_addr constant [30 x i8] c"gimp_ui_manager_menu_position\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"GTK_IS_MENU (menu)\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"x != NULL\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"y != NULL\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"GTK_IS_WIDGET (data)\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_ui_manager_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_ui_manager_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_ui_manager_get_type.g_define_type_id__volatile to i8*))
  %tobool2 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  store i32 %land.ext, i32* %tmp
  %4 = load i32, i32* %tmp
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %call5 = call i64 @gtk_ui_manager_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 248, void (i8*, i8*)* bitcast (void (i8*)* @gimp_ui_manager_class_intern_init to void (i8*, i8*)*), i32 56, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpUIManager*)* @gimp_ui_manager_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_ui_manager_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_ui_manager_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_ui_manager_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_ui_manager_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_ui_manager_parent_class, align 8
  %1 = load i32, i32* @GimpUIManager_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpUIManager_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpUIManagerClass*
  call void @gimp_ui_manager_class_init(%struct._GimpUIManagerClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_ui_manager_init(%struct._GimpUIManager* %manager) #3 {
entry:
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  %0 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %name = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %0, i32 0, i32 1
  store i8* null, i8** %name, align 8
  %1 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %1, i32 0, i32 2
  store %struct._Gimp* null, %struct._Gimp** %gimp, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpUIManager* @gimp_ui_manager_new(%struct._Gimp* %gimp, i8* %name) #3 {
entry:
  %retval = alloca %struct._GimpUIManager*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %name.addr = alloca i8*, align 8
  %manager = alloca %struct._GimpUIManager*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_ui_manager_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpUIManager* null, %struct._GimpUIManager** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_ui_manager_get_type() #7
  %13 = load i8*, i8** %name.addr, align 8
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), %struct._Gimp* %14, i8* null)
  %15 = bitcast i8* %call12 to %struct._GimpUIManager*
  store %struct._GimpUIManager* %15, %struct._GimpUIManager** %manager, align 8
  %16 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager, align 8
  store %struct._GimpUIManager* %16, %struct._GimpUIManager** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load %struct._GimpUIManager*, %struct._GimpUIManager** %retval
  ret %struct._GimpUIManager* %17
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_ui_managers_from_name(i8* %name) #3 {
entry:
  %retval = alloca %struct._GList*, align 8
  %name.addr = alloca i8*, align 8
  %manager_class = alloca %struct._GimpUIManagerClass*, align 8
  %list = alloca %struct._GList*, align 8
  store i8* %name, i8** %name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %name.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_ui_managers_from_name, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call i64 @gimp_ui_manager_get_type() #7
  %call1 = call i8* @g_type_class_ref(i64 %call)
  %1 = bitcast i8* %call1 to %struct._GimpUIManagerClass*
  store %struct._GimpUIManagerClass* %1, %struct._GimpUIManagerClass** %manager_class, align 8
  %2 = load %struct._GimpUIManagerClass*, %struct._GimpUIManagerClass** %manager_class, align 8
  %managers = getelementptr inbounds %struct._GimpUIManagerClass, %struct._GimpUIManagerClass* %2, i32 0, i32 1
  %3 = load %struct._GHashTable*, %struct._GHashTable** %managers, align 8
  %4 = load i8*, i8** %name.addr, align 8
  %call2 = call i8* @g_hash_table_lookup(%struct._GHashTable* %3, i8* %4)
  %5 = bitcast i8* %call2 to %struct._GList*
  store %struct._GList* %5, %struct._GList** %list, align 8
  %6 = load %struct._GimpUIManagerClass*, %struct._GimpUIManagerClass** %manager_class, align 8
  %7 = bitcast %struct._GimpUIManagerClass* %6 to i8*
  call void @g_type_class_unref(i8* %7)
  %8 = load %struct._GList*, %struct._GList** %list, align 8
  store %struct._GList* %8, %struct._GList** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %9 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %9
}

declare i8* @g_type_class_ref(i64) #1

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

declare void @g_type_class_unref(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_ui_manager_update(%struct._GimpUIManager* %manager, i8* %update_data) #3 {
entry:
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  %update_data.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  store i8* %update_data, i8** %update_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %1 = bitcast %struct._GimpUIManager* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_ui_manager_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_ui_manager_update, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %14 = bitcast %struct._GimpUIManager* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @manager_signals, i32 0, i64 0), align 4
  %16 = load i8*, i8** %update_data.addr, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0, i8* %16)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define %struct._GimpActionGroup* @gimp_ui_manager_get_action_group(%struct._GimpUIManager* %manager, i8* %name) #3 {
entry:
  %retval = alloca %struct._GimpActionGroup*, align 8
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  %name.addr = alloca i8*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %group = alloca %struct._GimpActionGroup*, align 8
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %1 = bitcast %struct._GimpUIManager* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_ui_manager_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_ui_manager_get_action_group, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpActionGroup* null, %struct._GimpActionGroup** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %name.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_ui_manager_get_action_group, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpActionGroup* null, %struct._GimpActionGroup** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %15 = bitcast %struct._GimpUIManager* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_ui_manager_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkUIManager*
  %call19 = call %struct._GList* @gtk_ui_manager_get_action_groups(%struct._GtkUIManager* %16)
  store %struct._GList* %call19, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.16
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool20 = icmp ne %struct._GList* %17, null
  br i1 %tobool20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 0
  %19 = load i8*, i8** %data, align 8
  %20 = bitcast i8* %19 to %struct._GimpActionGroup*
  store %struct._GimpActionGroup* %20, %struct._GimpActionGroup** %group, align 8
  %21 = load i8*, i8** %name.addr, align 8
  %22 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  %23 = bitcast %struct._GimpActionGroup* %22 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_action_group_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call22)
  %24 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkActionGroup*
  %call24 = call i8* @gtk_action_group_get_name(%struct._GtkActionGroup* %24)
  %call25 = call i32 @strcmp(i8* %21, i8* %call24) #8
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %for.body
  %25 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  store %struct._GimpActionGroup* %25, %struct._GimpActionGroup** %retval
  br label %return

if.end.28:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %26 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool29 = icmp ne %struct._GList* %26, null
  br i1 %tobool29, label %cond.true, label %cond.false

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
  store %struct._GimpActionGroup* null, %struct._GimpActionGroup** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.27, %if.else.14, %if.else.9
  %29 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %retval
  ret %struct._GimpActionGroup* %29
}

declare %struct._GList* @gtk_ui_manager_get_action_groups(%struct._GtkUIManager*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i8* @gtk_action_group_get_name(%struct._GtkActionGroup*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_action_group_get_type() #2

; Function Attrs: nounwind uwtable
define %struct._GtkAction* @gimp_ui_manager_find_action(%struct._GimpUIManager* %manager, i8* %group_name, i8* %action_name) #3 {
entry:
  %retval = alloca %struct._GtkAction*, align 8
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  %group_name.addr = alloca i8*, align 8
  %action_name.addr = alloca i8*, align 8
  %group = alloca %struct._GimpActionGroup*, align 8
  %action = alloca %struct._GtkAction*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  store i8* %group_name, i8** %group_name.addr, align 8
  store i8* %action_name, i8** %action_name.addr, align 8
  store %struct._GtkAction* null, %struct._GtkAction** %action, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %1 = bitcast %struct._GimpUIManager* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_ui_manager_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_ui_manager_find_action, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GtkAction* null, %struct._GtkAction** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %action_name.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_ui_manager_find_action, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GtkAction* null, %struct._GtkAction** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load i8*, i8** %group_name.addr, align 8
  %tobool17 = icmp ne i8* %14, null
  br i1 %tobool17, label %if.then.18, label %if.else.26

if.then.18:                                       ; preds = %do.end.16
  %15 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %16 = load i8*, i8** %group_name.addr, align 8
  %call19 = call %struct._GimpActionGroup* @gimp_ui_manager_get_action_group(%struct._GimpUIManager* %15, i8* %16)
  store %struct._GimpActionGroup* %call19, %struct._GimpActionGroup** %group, align 8
  %17 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  %tobool20 = icmp ne %struct._GimpActionGroup* %17, null
  br i1 %tobool20, label %if.then.21, label %if.end.25

if.then.21:                                       ; preds = %if.then.18
  %18 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  %19 = bitcast %struct._GimpActionGroup* %18 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_action_group_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call22)
  %20 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkActionGroup*
  %21 = load i8*, i8** %action_name.addr, align 8
  %call24 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %20, i8* %21)
  store %struct._GtkAction* %call24, %struct._GtkAction** %action, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.21, %if.then.18
  br label %if.end.39

if.else.26:                                       ; preds = %do.end.16
  %22 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %23 = bitcast %struct._GimpUIManager* %22 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_ui_manager_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call28)
  %24 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkUIManager*
  %call30 = call %struct._GList* @gtk_ui_manager_get_action_groups(%struct._GtkUIManager* %24)
  store %struct._GList* %call30, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.else.26
  %25 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool31 = icmp ne %struct._GList* %25, null
  br i1 %tobool31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %26, i32 0, i32 0
  %27 = load i8*, i8** %data, align 8
  %28 = bitcast i8* %27 to %struct._GimpActionGroup*
  store %struct._GimpActionGroup* %28, %struct._GimpActionGroup** %group, align 8
  %29 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  %30 = bitcast %struct._GimpActionGroup* %29 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_action_group_get_type() #7
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call32)
  %31 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkActionGroup*
  %32 = load i8*, i8** %action_name.addr, align 8
  %call34 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %31, i8* %32)
  store %struct._GtkAction* %call34, %struct._GtkAction** %action, align 8
  %33 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %tobool35 = icmp ne %struct._GtkAction* %33, null
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %for.body
  br label %for.end

if.end.37:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %34 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool38 = icmp ne %struct._GList* %34, null
  br i1 %tobool38, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %35 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %35, i32 0, i32 1
  %36 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %36, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.36, %for.cond
  br label %if.end.39

if.end.39:                                        ; preds = %for.end, %if.end.25
  %37 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  store %struct._GtkAction* %37, %struct._GtkAction** %retval
  br label %return

return:                                           ; preds = %if.end.39, %if.else.14, %if.else.9
  %38 = load %struct._GtkAction*, %struct._GtkAction** %retval
  ret %struct._GtkAction* %38
}

declare %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_ui_manager_activate_action(%struct._GimpUIManager* %manager, i8* %group_name, i8* %action_name) #3 {
entry:
  %retval = alloca i32, align 4
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  %group_name.addr = alloca i8*, align 8
  %action_name.addr = alloca i8*, align 8
  %action = alloca %struct._GtkAction*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  store i8* %group_name, i8** %group_name.addr, align 8
  store i8* %action_name, i8** %action_name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %1 = bitcast %struct._GimpUIManager* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_ui_manager_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_ui_manager_activate_action, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %action_name.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_ui_manager_activate_action, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %15 = load i8*, i8** %group_name.addr, align 8
  %16 = load i8*, i8** %action_name.addr, align 8
  %call17 = call %struct._GtkAction* @gimp_ui_manager_find_action(%struct._GimpUIManager* %14, i8* %15, i8* %16)
  store %struct._GtkAction* %call17, %struct._GtkAction** %action, align 8
  %17 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %tobool18 = icmp ne %struct._GtkAction* %17, null
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %do.end.16
  %18 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  call void @gtk_action_activate(%struct._GtkAction* %18)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %do.end.16
  %19 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %cmp21 = icmp ne %struct._GtkAction* %19, null
  %conv = zext i1 %cmp21 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.else.14, %if.else.9
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare void @gtk_action_activate(%struct._GtkAction*) #1

; Function Attrs: nounwind uwtable
define void @gimp_ui_manager_ui_register(%struct._GimpUIManager* %manager, i8* %ui_path, i8* %basename, void (%struct._GimpUIManager*, i8*)* %setup_func) #3 {
entry:
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  %ui_path.addr = alloca i8*, align 8
  %basename.addr = alloca i8*, align 8
  %setup_func.addr = alloca void (%struct._GimpUIManager*, i8*)*, align 8
  %entry1 = alloca %struct._GimpUIManagerUIEntry*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  store i8* %ui_path, i8** %ui_path.addr, align 8
  store i8* %basename, i8** %basename.addr, align 8
  store void (%struct._GimpUIManager*, i8*)* %setup_func, void (%struct._GimpUIManager*, i8*)** %setup_func.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %1 = bitcast %struct._GimpUIManager* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_ui_manager_get_type() #7
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_ui_manager_ui_register, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %13 = load i8*, i8** %ui_path.addr, align 8
  %cmp13 = icmp ne i8* %13, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.12
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_ui_manager_ui_register, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %14 = load i8*, i8** %basename.addr, align 8
  %cmp19 = icmp ne i8* %14, null
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.18
  br label %if.end.22

if.else.21:                                       ; preds = %do.body.18
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_ui_manager_ui_register, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  br label %do.body.24

do.body.24:                                       ; preds = %do.end.23
  %15 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %16 = load i8*, i8** %ui_path.addr, align 8
  %call25 = call %struct._GimpUIManagerUIEntry* @gimp_ui_manager_entry_get(%struct._GimpUIManager* %15, i8* %16)
  %cmp26 = icmp eq %struct._GimpUIManagerUIEntry* %call25, null
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %do.body.24
  br label %if.end.29

if.else.28:                                       ; preds = %do.body.24
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_ui_manager_ui_register, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.29:                                        ; preds = %if.then.27
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  %call31 = call noalias i8* @g_slice_alloc0(i64 40)
  %17 = bitcast i8* %call31 to %struct._GimpUIManagerUIEntry*
  store %struct._GimpUIManagerUIEntry* %17, %struct._GimpUIManagerUIEntry** %entry1, align 8
  %18 = load i8*, i8** %ui_path.addr, align 8
  %call32 = call noalias i8* @g_strdup(i8* %18)
  %19 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %entry1, align 8
  %ui_path33 = getelementptr inbounds %struct._GimpUIManagerUIEntry, %struct._GimpUIManagerUIEntry* %19, i32 0, i32 0
  store i8* %call32, i8** %ui_path33, align 8
  %20 = load i8*, i8** %basename.addr, align 8
  %call34 = call noalias i8* @g_strdup(i8* %20)
  %21 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %entry1, align 8
  %basename35 = getelementptr inbounds %struct._GimpUIManagerUIEntry, %struct._GimpUIManagerUIEntry* %21, i32 0, i32 1
  store i8* %call34, i8** %basename35, align 8
  %22 = load void (%struct._GimpUIManager*, i8*)*, void (%struct._GimpUIManager*, i8*)** %setup_func.addr, align 8
  %23 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %entry1, align 8
  %setup_func36 = getelementptr inbounds %struct._GimpUIManagerUIEntry, %struct._GimpUIManagerUIEntry* %23, i32 0, i32 2
  store void (%struct._GimpUIManager*, i8*)* %22, void (%struct._GimpUIManager*, i8*)** %setup_func36, align 8
  %24 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %entry1, align 8
  %merge_id = getelementptr inbounds %struct._GimpUIManagerUIEntry, %struct._GimpUIManagerUIEntry* %24, i32 0, i32 3
  store i32 0, i32* %merge_id, align 4
  %25 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %entry1, align 8
  %widget = getelementptr inbounds %struct._GimpUIManagerUIEntry, %struct._GimpUIManagerUIEntry* %25, i32 0, i32 4
  store %struct._GtkWidget* null, %struct._GtkWidget** %widget, align 8
  %26 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %registered_uis = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %26, i32 0, i32 3
  %27 = load %struct._GList*, %struct._GList** %registered_uis, align 8
  %28 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %entry1, align 8
  %29 = bitcast %struct._GimpUIManagerUIEntry* %28 to i8*
  %call37 = call %struct._GList* @g_list_prepend(%struct._GList* %27, i8* %29)
  %30 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %registered_uis38 = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %30, i32 0, i32 3
  store %struct._GList* %call37, %struct._GList** %registered_uis38, align 8
  br label %return

return:                                           ; preds = %do.end.30, %if.else.28, %if.else.21, %if.else.15, %if.else.10
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpUIManagerUIEntry* @gimp_ui_manager_entry_get(%struct._GimpUIManager* %manager, i8* %ui_path) #3 {
entry:
  %retval = alloca %struct._GimpUIManagerUIEntry*, align 8
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  %ui_path.addr = alloca i8*, align 8
  %list = alloca %struct._GList*, align 8
  %path = alloca i8*, align 8
  %p = alloca i8*, align 8
  %entry6 = alloca %struct._GimpUIManagerUIEntry*, align 8
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  store i8* %ui_path, i8** %ui_path.addr, align 8
  %0 = load i8*, i8** %ui_path.addr, align 8
  %call = call noalias i8* @g_strdup(i8* %0)
  store i8* %call, i8** %path, align 8
  %1 = load i8*, i8** %path, align 8
  %call1 = call i64 @strlen(i8* %1) #8
  %cmp = icmp ugt i64 %call1, 1
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %path, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1
  %call2 = call i8* @strchr(i8* %add.ptr, i32 47) #8
  store i8* %call2, i8** %p, align 8
  %3 = load i8*, i8** %p, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %4 = load i8*, i8** %p, align 8
  store i8 0, i8* %4, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %5 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %registered_uis = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %5, i32 0, i32 3
  %6 = load %struct._GList*, %struct._GList** %registered_uis, align 8
  store %struct._GList* %6, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.4
  %7 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool5 = icmp ne %struct._GList* %7, null
  br i1 %tobool5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 0
  %9 = load i8*, i8** %data, align 8
  %10 = bitcast i8* %9 to %struct._GimpUIManagerUIEntry*
  store %struct._GimpUIManagerUIEntry* %10, %struct._GimpUIManagerUIEntry** %entry6, align 8
  %11 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %entry6, align 8
  %ui_path7 = getelementptr inbounds %struct._GimpUIManagerUIEntry, %struct._GimpUIManagerUIEntry* %11, i32 0, i32 0
  %12 = load i8*, i8** %ui_path7, align 8
  %13 = load i8*, i8** %path, align 8
  %call8 = call i32 @strcmp(i8* %12, i8* %13) #8
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %for.body
  %14 = load i8*, i8** %path, align 8
  call void @g_free(i8* %14)
  %15 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %entry6, align 8
  store %struct._GimpUIManagerUIEntry* %15, %struct._GimpUIManagerUIEntry** %retval
  br label %return

if.end.11:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool12 = icmp ne %struct._GList* %16, null
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 1
  %18 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %18, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i8*, i8** %path, align 8
  call void @g_free(i8* %19)
  store %struct._GimpUIManagerUIEntry* null, %struct._GimpUIManagerUIEntry** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.10
  %20 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %retval
  ret %struct._GimpUIManagerUIEntry* %20
}

declare noalias i8* @g_slice_alloc0(i64) #1

declare noalias i8* @g_strdup(i8*) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_ui_manager_ui_popup(%struct._GimpUIManager* %manager, i8* %ui_path, %struct._GtkWidget* %parent, void (%struct._GtkMenu*, i32*, i32*, i8*)* %position_func, i8* %position_data, void (i8*)* %popdown_func, i8* %popdown_data) #3 {
entry:
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  %ui_path.addr = alloca i8*, align 8
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %position_func.addr = alloca void (%struct._GtkMenu*, i32*, i32*, i8*)*, align 8
  %position_data.addr = alloca i8*, align 8
  %popdown_func.addr = alloca void (i8*)*, align 8
  %popdown_data.addr = alloca i8*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %current_event = alloca %union._GdkEvent*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %button = alloca i32, align 4
  %activate_time = alloca i32, align 4
  %menu_pos = alloca %struct.MenuPos*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst20 = alloca %struct._GTypeInstance*, align 8
  %__t22 = alloca i64, align 8
  %__r25 = alloca i32, align 4
  %tmp40 = alloca i32, align 4
  %__inst50 = alloca %struct._GTypeInstance*, align 8
  %__t52 = alloca i64, align 8
  %__r55 = alloca i32, align 4
  %tmp70 = alloca i32, align 4
  %__inst82 = alloca %struct._GTypeInstance*, align 8
  %__t84 = alloca i64, align 8
  %__r87 = alloca i32, align 4
  %tmp102 = alloca i32, align 4
  %bevent = alloca %struct._GdkEventButton*, align 8
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  store i8* %ui_path, i8** %ui_path.addr, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  store void (%struct._GtkMenu*, i32*, i32*, i8*)* %position_func, void (%struct._GtkMenu*, i32*, i32*, i8*)** %position_func.addr, align 8
  store i8* %position_data, i8** %position_data.addr, align 8
  store void (i8*)* %popdown_func, void (i8*)** %popdown_func.addr, align 8
  store i8* %popdown_data, i8** %popdown_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %1 = bitcast %struct._GimpUIManager* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_ui_manager_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_ui_manager_ui_popup, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_ui_manager_ui_popup, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %cmp18 = icmp eq %struct._GtkWidget* %14, null
  br i1 %cmp18, label %if.then.42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.17
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst20, align 8
  %call23 = call i64 @gtk_widget_get_type() #7
  store i64 %call23, i64* %__t22, align 8
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %tobool26 = icmp ne %struct._GTypeInstance* %17, null
  br i1 %tobool26, label %if.else.28, label %if.then.27

if.then.27:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r25, align 4
  br label %if.end.39

if.else.28:                                       ; preds = %lor.lhs.false
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class29 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class29, align 8
  %tobool30 = icmp ne %struct._GTypeClass* %19, null
  br i1 %tobool30, label %land.lhs.true.31, label %if.else.36

land.lhs.true.31:                                 ; preds = %if.else.28
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class32 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class32, align 8
  %g_type33 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type33, align 8
  %23 = load i64, i64* %__t22, align 8
  %cmp34 = icmp eq i64 %22, %23
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %land.lhs.true.31
  store i32 1, i32* %__r25, align 4
  br label %if.end.38

if.else.36:                                       ; preds = %land.lhs.true.31, %if.else.28
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %25 = load i64, i64* %__t22, align 8
  %call37 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %24, i64 %25) #8
  store i32 %call37, i32* %__r25, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.36, %if.then.35
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.27
  %26 = load i32, i32* %__r25, align 4
  store i32 %26, i32* %tmp40
  %27 = load i32, i32* %tmp40
  %tobool41 = icmp ne i32 %27, 0
  br i1 %tobool41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %if.end.39, %do.body.17
  br label %if.end.44

if.else.43:                                       ; preds = %if.end.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_ui_manager_ui_popup, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %28 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %29 = bitcast %struct._GimpUIManager* %28 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_ui_manager_get_type() #7
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call46)
  %30 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkUIManager*
  %31 = load i8*, i8** %ui_path.addr, align 8
  %call48 = call %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager* %30, i8* %31)
  store %struct._GtkWidget* %call48, %struct._GtkWidget** %widget, align 8
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %33, %struct._GTypeInstance** %__inst50, align 8
  %call53 = call i64 @gtk_menu_item_get_type() #7
  store i64 %call53, i64* %__t52, align 8
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %tobool56 = icmp ne %struct._GTypeInstance* %34, null
  br i1 %tobool56, label %if.else.58, label %if.then.57

if.then.57:                                       ; preds = %do.end.45
  store i32 0, i32* %__r55, align 4
  br label %if.end.69

if.else.58:                                       ; preds = %do.end.45
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %g_class59 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %35, i32 0, i32 0
  %36 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class59, align 8
  %tobool60 = icmp ne %struct._GTypeClass* %36, null
  br i1 %tobool60, label %land.lhs.true.61, label %if.else.66

land.lhs.true.61:                                 ; preds = %if.else.58
  %37 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %g_class62 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %37, i32 0, i32 0
  %38 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class62, align 8
  %g_type63 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %38, i32 0, i32 0
  %39 = load i64, i64* %g_type63, align 8
  %40 = load i64, i64* %__t52, align 8
  %cmp64 = icmp eq i64 %39, %40
  br i1 %cmp64, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %land.lhs.true.61
  store i32 1, i32* %__r55, align 4
  br label %if.end.68

if.else.66:                                       ; preds = %land.lhs.true.61, %if.else.58
  %41 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %42 = load i64, i64* %__t52, align 8
  %call67 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %41, i64 %42) #8
  store i32 %call67, i32* %__r55, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.66, %if.then.65
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then.57
  %43 = load i32, i32* %__r55, align 4
  store i32 %43, i32* %tmp70
  %44 = load i32, i32* %tmp70
  %tobool71 = icmp ne i32 %44, 0
  br i1 %tobool71, label %if.then.72, label %if.end.76

if.then.72:                                       ; preds = %if.end.69
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call73 = call i64 @gtk_menu_item_get_type() #7
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call73)
  %47 = bitcast %struct._GTypeInstance* %call74 to %struct._GtkMenuItem*
  %call75 = call %struct._GtkWidget* @gtk_menu_item_get_submenu(%struct._GtkMenuItem* %47)
  store %struct._GtkWidget* %call75, %struct._GtkWidget** %widget, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.72, %if.end.69
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool77 = icmp ne %struct._GtkWidget* %48, null
  br i1 %tobool77, label %if.end.79, label %if.then.78

if.then.78:                                       ; preds = %if.end.76
  br label %return

if.end.79:                                        ; preds = %if.end.76
  br label %do.body.80

do.body.80:                                       ; preds = %if.end.79
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %50, %struct._GTypeInstance** %__inst82, align 8
  %call85 = call i64 @gtk_menu_get_type() #7
  store i64 %call85, i64* %__t84, align 8
  %51 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst82, align 8
  %tobool88 = icmp ne %struct._GTypeInstance* %51, null
  br i1 %tobool88, label %if.else.90, label %if.then.89

if.then.89:                                       ; preds = %do.body.80
  store i32 0, i32* %__r87, align 4
  br label %if.end.101

if.else.90:                                       ; preds = %do.body.80
  %52 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst82, align 8
  %g_class91 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %52, i32 0, i32 0
  %53 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class91, align 8
  %tobool92 = icmp ne %struct._GTypeClass* %53, null
  br i1 %tobool92, label %land.lhs.true.93, label %if.else.98

land.lhs.true.93:                                 ; preds = %if.else.90
  %54 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst82, align 8
  %g_class94 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %54, i32 0, i32 0
  %55 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class94, align 8
  %g_type95 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %55, i32 0, i32 0
  %56 = load i64, i64* %g_type95, align 8
  %57 = load i64, i64* %__t84, align 8
  %cmp96 = icmp eq i64 %56, %57
  br i1 %cmp96, label %if.then.97, label %if.else.98

if.then.97:                                       ; preds = %land.lhs.true.93
  store i32 1, i32* %__r87, align 4
  br label %if.end.100

if.else.98:                                       ; preds = %land.lhs.true.93, %if.else.90
  %58 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst82, align 8
  %59 = load i64, i64* %__t84, align 8
  %call99 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %58, i64 %59) #8
  store i32 %call99, i32* %__r87, align 4
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.98, %if.then.97
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.then.89
  %60 = load i32, i32* %__r87, align 4
  store i32 %60, i32* %tmp102
  %61 = load i32, i32* %tmp102
  %tobool103 = icmp ne i32 %61, 0
  br i1 %tobool103, label %if.then.104, label %if.else.105

if.then.104:                                      ; preds = %if.end.101
  br label %if.end.106

if.else.105:                                      ; preds = %if.end.101
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_ui_manager_ui_popup, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0))
  br label %return

if.end.106:                                       ; preds = %if.then.104
  br label %do.end.107

do.end.107:                                       ; preds = %if.end.106
  %62 = load void (%struct._GtkMenu*, i32*, i32*, i8*)*, void (%struct._GtkMenu*, i32*, i32*, i8*)** %position_func.addr, align 8
  %tobool108 = icmp ne void (%struct._GtkMenu*, i32*, i32*, i8*)* %62, null
  br i1 %tobool108, label %if.end.110, label %if.then.109

if.then.109:                                      ; preds = %do.end.107
  store void (%struct._GtkMenu*, i32*, i32*, i8*)* @gimp_ui_manager_menu_position, void (%struct._GtkMenu*, i32*, i32*, i8*)** %position_func.addr, align 8
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %64 = bitcast %struct._GtkWidget* %63 to i8*
  store i8* %64, i8** %position_data.addr, align 8
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.109, %do.end.107
  %65 = load void (%struct._GtkMenu*, i32*, i32*, i8*)*, void (%struct._GtkMenu*, i32*, i32*, i8*)** %position_func.addr, align 8
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call111 = call i64 @gtk_menu_get_type() #7
  %call112 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call111)
  %68 = bitcast %struct._GTypeInstance* %call112 to %struct._GtkMenu*
  %69 = load i8*, i8** %position_data.addr, align 8
  call void %65(%struct._GtkMenu* %68, i32* %x, i32* %y, i8* %69)
  %call113 = call %union._GdkEvent* @gtk_get_current_event()
  store %union._GdkEvent* %call113, %union._GdkEvent** %current_event, align 8
  %70 = load %union._GdkEvent*, %union._GdkEvent** %current_event, align 8
  %tobool114 = icmp ne %union._GdkEvent* %70, null
  br i1 %tobool114, label %land.lhs.true.115, label %if.else.120

land.lhs.true.115:                                ; preds = %if.end.110
  %71 = load %union._GdkEvent*, %union._GdkEvent** %current_event, align 8
  %type = bitcast %union._GdkEvent* %71 to i32*
  %72 = load i32, i32* %type, align 4
  %cmp116 = icmp eq i32 %72, 4
  br i1 %cmp116, label %if.then.117, label %if.else.120

if.then.117:                                      ; preds = %land.lhs.true.115
  %73 = load %union._GdkEvent*, %union._GdkEvent** %current_event, align 8
  %74 = bitcast %union._GdkEvent* %73 to %struct._GdkEventButton*
  store %struct._GdkEventButton* %74, %struct._GdkEventButton** %bevent, align 8
  %75 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %button119 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %75, i32 0, i32 8
  %76 = load i32, i32* %button119, align 4
  store i32 %76, i32* %button, align 4
  %77 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %time = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %77, i32 0, i32 3
  %78 = load i32, i32* %time, align 4
  store i32 %78, i32* %activate_time, align 4
  br label %if.end.121

if.else.120:                                      ; preds = %land.lhs.true.115, %if.end.110
  store i32 0, i32* %button, align 4
  store i32 0, i32* %activate_time, align 4
  br label %if.end.121

if.end.121:                                       ; preds = %if.else.120, %if.then.117
  %79 = load %union._GdkEvent*, %union._GdkEvent** %current_event, align 8
  %tobool122 = icmp ne %union._GdkEvent* %79, null
  br i1 %tobool122, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %if.end.121
  %80 = load %union._GdkEvent*, %union._GdkEvent** %current_event, align 8
  call void @gdk_event_free(%union._GdkEvent* %80)
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.123, %if.end.121
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %82 = bitcast %struct._GtkWidget* %81 to %struct._GTypeInstance*
  %call125 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 80)
  %83 = bitcast %struct._GTypeInstance* %call125 to %struct._GObject*
  %call126 = call i8* @g_object_get_data(%struct._GObject* %83, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0))
  %84 = bitcast i8* %call126 to %struct.MenuPos*
  store %struct.MenuPos* %84, %struct.MenuPos** %menu_pos, align 8
  %85 = load %struct.MenuPos*, %struct.MenuPos** %menu_pos, align 8
  %tobool127 = icmp ne %struct.MenuPos* %85, null
  br i1 %tobool127, label %if.end.131, label %if.then.128

if.then.128:                                      ; preds = %if.end.124
  %call129 = call noalias i8* @g_slice_alloc0(i64 8)
  %86 = bitcast i8* %call129 to %struct.MenuPos*
  store %struct.MenuPos* %86, %struct.MenuPos** %menu_pos, align 8
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %88 = bitcast %struct._GtkWidget* %87 to %struct._GTypeInstance*
  %call130 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 80)
  %89 = bitcast %struct._GTypeInstance* %call130 to %struct._GObject*
  %90 = load %struct.MenuPos*, %struct.MenuPos** %menu_pos, align 8
  %91 = bitcast %struct.MenuPos* %90 to i8*
  call void @g_object_set_data_full(%struct._GObject* %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8* %91, void (i8*)* bitcast (void (%struct.MenuPos*)* @menu_pos_free to void (i8*)*))
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.128, %if.end.124
  %92 = load i32, i32* %x, align 4
  %93 = load %struct.MenuPos*, %struct.MenuPos** %menu_pos, align 8
  %x132 = getelementptr inbounds %struct.MenuPos, %struct.MenuPos* %93, i32 0, i32 0
  store i32 %92, i32* %x132, align 4
  %94 = load i32, i32* %y, align 4
  %95 = load %struct.MenuPos*, %struct.MenuPos** %menu_pos, align 8
  %y133 = getelementptr inbounds %struct.MenuPos, %struct.MenuPos* %95, i32 0, i32 1
  store i32 %94, i32* %y133, align 4
  %96 = load void (i8*)*, void (i8*)** %popdown_func.addr, align 8
  %tobool134 = icmp ne void (i8*)* %96, null
  br i1 %tobool134, label %land.lhs.true.135, label %if.end.140

land.lhs.true.135:                                ; preds = %if.end.131
  %97 = load i8*, i8** %popdown_data.addr, align 8
  %tobool136 = icmp ne i8* %97, null
  br i1 %tobool136, label %if.then.137, label %if.end.140

if.then.137:                                      ; preds = %land.lhs.true.135
  %98 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %99 = bitcast %struct._GimpUIManager* %98 to %struct._GTypeInstance*
  %call138 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %99, i64 80)
  %100 = bitcast %struct._GTypeInstance* %call138 to %struct._GObject*
  %101 = load i8*, i8** %popdown_data.addr, align 8
  %102 = load void (i8*)*, void (i8*)** %popdown_func.addr, align 8
  call void @g_object_set_data_full(%struct._GObject* %100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i8* %101, void (i8*)* %102)
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %104 = bitcast %struct._GtkWidget* %103 to i8*
  %105 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %106 = bitcast %struct._GimpUIManager* %105 to i8*
  %call139 = call i64 @g_signal_connect_data(i8* %104, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GtkObject*, %struct._GimpUIManager*)* @gimp_ui_manager_delete_popdown_data to void ()*), i8* %106, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.137, %land.lhs.true.135, %if.end.131
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %108 = bitcast %struct._GtkWidget* %107 to %struct._GTypeInstance*
  %call141 = call i64 @gtk_menu_get_type() #7
  %call142 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %108, i64 %call141)
  %109 = bitcast %struct._GTypeInstance* %call142 to %struct._GtkMenu*
  %110 = load %struct.MenuPos*, %struct.MenuPos** %menu_pos, align 8
  %111 = bitcast %struct.MenuPos* %110 to i8*
  %112 = load i32, i32* %button, align 4
  %113 = load i32, i32* %activate_time, align 4
  call void @gtk_menu_popup(%struct._GtkMenu* %109, %struct._GtkWidget* null, %struct._GtkWidget* null, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)* @gimp_ui_manager_menu_pos, i8* %111, i32 %112, i32 %113)
  br label %return

return:                                           ; preds = %if.end.140, %if.else.105, %if.then.78, %if.else.43, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_menu_item_get_type() #2

declare %struct._GtkWidget* @gtk_menu_item_get_submenu(%struct._GtkMenuItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_menu_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_ui_manager_menu_position(%struct._GtkMenu* %menu, i32* %x, i32* %y, i8* %data) #3 {
entry:
  %menu.addr = alloca %struct._GtkMenu*, align 8
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %data.addr = alloca i8*, align 8
  %screen = alloca %struct._GdkScreen*, align 8
  %requisition = alloca %struct._GtkRequisition, align 4
  %rect = alloca %struct._GdkRectangle, align 4
  %monitor = alloca i32, align 4
  %pointer_x = alloca i32, align 4
  %pointer_y = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst25 = alloca %struct._GTypeInstance*, align 8
  %__t27 = alloca i64, align 8
  %__r30 = alloca i32, align 4
  %tmp45 = alloca i32, align 4
  store %struct._GtkMenu* %menu, %struct._GtkMenu** %menu.addr, align 8
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkMenu*, %struct._GtkMenu** %menu.addr, align 8
  %1 = bitcast %struct._GtkMenu* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_menu_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_ui_manager_menu_position, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i32 0, i32 0))
  br label %if.end.101

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32*, i32** %x.addr, align 8
  %cmp12 = icmp ne i32* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_ui_manager_menu_position, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0))
  br label %if.end.101

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i32*, i32** %y.addr, align 8
  %cmp18 = icmp ne i32* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_ui_manager_menu_position, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end.101

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %15 = load i8*, i8** %data.addr, align 8
  %16 = bitcast i8* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst25, align 8
  %call28 = call i64 @gtk_widget_get_type() #7
  store i64 %call28, i64* %__t27, align 8
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst25, align 8
  %tobool31 = icmp ne %struct._GTypeInstance* %17, null
  br i1 %tobool31, label %if.else.33, label %if.then.32

if.then.32:                                       ; preds = %do.body.23
  store i32 0, i32* %__r30, align 4
  br label %if.end.44

if.else.33:                                       ; preds = %do.body.23
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst25, align 8
  %g_class34 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class34, align 8
  %tobool35 = icmp ne %struct._GTypeClass* %19, null
  br i1 %tobool35, label %land.lhs.true.36, label %if.else.41

land.lhs.true.36:                                 ; preds = %if.else.33
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst25, align 8
  %g_class37 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class37, align 8
  %g_type38 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type38, align 8
  %23 = load i64, i64* %__t27, align 8
  %cmp39 = icmp eq i64 %22, %23
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %land.lhs.true.36
  store i32 1, i32* %__r30, align 4
  br label %if.end.43

if.else.41:                                       ; preds = %land.lhs.true.36, %if.else.33
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst25, align 8
  %25 = load i64, i64* %__t27, align 8
  %call42 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %24, i64 %25) #8
  store i32 %call42, i32* %__r30, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.41, %if.then.40
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.32
  %26 = load i32, i32* %__r30, align 4
  store i32 %26, i32* %tmp45
  %27 = load i32, i32* %tmp45
  %tobool46 = icmp ne i32 %27, 0
  br i1 %tobool46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %if.end.44
  br label %if.end.49

if.else.48:                                       ; preds = %if.end.44
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_ui_manager_menu_position, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i32 0, i32 0))
  br label %if.end.101

if.end.49:                                        ; preds = %if.then.47
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  %28 = load i8*, i8** %data.addr, align 8
  %29 = bitcast i8* %28 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_widget_get_type() #7
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call51)
  %30 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkWidget*
  %call53 = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %30)
  call void @gdk_display_get_pointer(%struct._GdkDisplay* %call53, %struct._GdkScreen** %screen, i32* %pointer_x, i32* %pointer_y, i32* null)
  %31 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %32 = load i32, i32* %pointer_x, align 4
  %33 = load i32, i32* %pointer_y, align 4
  %call54 = call i32 @gdk_screen_get_monitor_at_point(%struct._GdkScreen* %31, i32 %32, i32 %33)
  store i32 %call54, i32* %monitor, align 4
  %34 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %35 = load i32, i32* %monitor, align 4
  call void @gdk_screen_get_monitor_geometry(%struct._GdkScreen* %34, i32 %35, %struct._GdkRectangle* %rect)
  %36 = load %struct._GtkMenu*, %struct._GtkMenu** %menu.addr, align 8
  %37 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  call void @gtk_menu_set_screen(%struct._GtkMenu* %36, %struct._GdkScreen* %37)
  %38 = load %struct._GtkMenu*, %struct._GtkMenu** %menu.addr, align 8
  %39 = bitcast %struct._GtkMenu* %38 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_widget_get_type() #7
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call55)
  %40 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkWidget*
  call void @gtk_widget_size_request(%struct._GtkWidget* %40, %struct._GtkRequisition* %requisition)
  %41 = load %struct._GtkMenu*, %struct._GtkMenu** %menu.addr, align 8
  %42 = bitcast %struct._GtkMenu* %41 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_widget_get_type() #7
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call57)
  %43 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkWidget*
  %call59 = call i32 @gtk_widget_get_direction(%struct._GtkWidget* %43)
  %cmp60 = icmp eq i32 %call59, 2
  br i1 %cmp60, label %if.then.61, label %if.else.67

if.then.61:                                       ; preds = %do.end.50
  %44 = load i32, i32* %pointer_x, align 4
  %sub = sub nsw i32 %44, 2
  %width = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition, i32 0, i32 0
  %45 = load i32, i32* %width, align 4
  %sub62 = sub nsw i32 %sub, %45
  %46 = load i32*, i32** %x.addr, align 8
  store i32 %sub62, i32* %46, align 4
  %47 = load i32*, i32** %x.addr, align 8
  %48 = load i32, i32* %47, align 4
  %x63 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  %49 = load i32, i32* %x63, align 4
  %cmp64 = icmp slt i32 %48, %49
  br i1 %cmp64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.then.61
  %50 = load i32, i32* %pointer_x, align 4
  %add = add nsw i32 %50, 2
  %51 = load i32*, i32** %x.addr, align 8
  store i32 %add, i32* %51, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %if.then.61
  br label %if.end.80

if.else.67:                                       ; preds = %do.end.50
  %52 = load i32, i32* %pointer_x, align 4
  %add68 = add nsw i32 %52, 2
  %53 = load i32*, i32** %x.addr, align 8
  store i32 %add68, i32* %53, align 4
  %54 = load i32*, i32** %x.addr, align 8
  %55 = load i32, i32* %54, align 4
  %width69 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition, i32 0, i32 0
  %56 = load i32, i32* %width69, align 4
  %add70 = add nsw i32 %55, %56
  %x71 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  %57 = load i32, i32* %x71, align 4
  %width72 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 2
  %58 = load i32, i32* %width72, align 4
  %add73 = add nsw i32 %57, %58
  %cmp74 = icmp sgt i32 %add70, %add73
  br i1 %cmp74, label %if.then.75, label %if.end.79

if.then.75:                                       ; preds = %if.else.67
  %59 = load i32, i32* %pointer_x, align 4
  %sub76 = sub nsw i32 %59, 2
  %width77 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition, i32 0, i32 0
  %60 = load i32, i32* %width77, align 4
  %sub78 = sub nsw i32 %sub76, %60
  %61 = load i32*, i32** %x.addr, align 8
  store i32 %sub78, i32* %61, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.75, %if.else.67
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.end.66
  %62 = load i32, i32* %pointer_y, align 4
  %add81 = add nsw i32 %62, 2
  %63 = load i32*, i32** %y.addr, align 8
  store i32 %add81, i32* %63, align 4
  %64 = load i32*, i32** %y.addr, align 8
  %65 = load i32, i32* %64, align 4
  %height = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition, i32 0, i32 1
  %66 = load i32, i32* %height, align 4
  %add82 = add nsw i32 %65, %66
  %y83 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  %67 = load i32, i32* %y83, align 4
  %height84 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 3
  %68 = load i32, i32* %height84, align 4
  %add85 = add nsw i32 %67, %68
  %cmp86 = icmp sgt i32 %add82, %add85
  br i1 %cmp86, label %if.then.87, label %if.end.91

if.then.87:                                       ; preds = %if.end.80
  %69 = load i32, i32* %pointer_y, align 4
  %sub88 = sub nsw i32 %69, 2
  %height89 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition, i32 0, i32 1
  %70 = load i32, i32* %height89, align 4
  %sub90 = sub nsw i32 %sub88, %70
  %71 = load i32*, i32** %y.addr, align 8
  store i32 %sub90, i32* %71, align 4
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.87, %if.end.80
  %72 = load i32*, i32** %x.addr, align 8
  %73 = load i32, i32* %72, align 4
  %x92 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  %74 = load i32, i32* %x92, align 4
  %cmp93 = icmp slt i32 %73, %74
  br i1 %cmp93, label %if.then.94, label %if.end.96

if.then.94:                                       ; preds = %if.end.91
  %x95 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  %75 = load i32, i32* %x95, align 4
  %76 = load i32*, i32** %x.addr, align 8
  store i32 %75, i32* %76, align 4
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.94, %if.end.91
  %77 = load i32*, i32** %y.addr, align 8
  %78 = load i32, i32* %77, align 4
  %y97 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  %79 = load i32, i32* %y97, align 4
  %cmp98 = icmp slt i32 %78, %79
  br i1 %cmp98, label %if.then.99, label %if.end.101

if.then.99:                                       ; preds = %if.end.96
  %y100 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  %80 = load i32, i32* %y100, align 4
  %81 = load i32*, i32** %y.addr, align 8
  store i32 %80, i32* %81, align 4
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.9, %if.else.14, %if.else.20, %if.else.48, %if.then.99, %if.end.96
  ret void
}

declare %union._GdkEvent* @gtk_get_current_event() #1

declare void @gdk_event_free(%union._GdkEvent*) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @menu_pos_free(%struct.MenuPos* %pos) #3 {
entry:
  %pos.addr = alloca %struct.MenuPos*, align 8
  store %struct.MenuPos* %pos, %struct.MenuPos** %pos.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.MenuPos*, %struct.MenuPos** %pos.addr, align 8
  %1 = bitcast %struct.MenuPos* %0 to i8*
  call void @g_slice_free1(i64 8, i8* %1)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_ui_manager_delete_popdown_data(%struct._GtkObject* %object, %struct._GimpUIManager* %manager) #3 {
entry:
  %object.addr = alloca %struct._GtkObject*, align 8
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  store %struct._GtkObject* %object, %struct._GtkObject** %object.addr, align 8
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  %0 = load %struct._GtkObject*, %struct._GtkObject** %object.addr, align 8
  %1 = bitcast %struct._GtkObject* %0 to i8*
  %2 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %3 = bitcast %struct._GimpUIManager* %2 to i8*
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %1, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkObject*, %struct._GimpUIManager*)* @gimp_ui_manager_delete_popdown_data to i8*), i8* %3)
  %4 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %5 = bitcast %struct._GimpUIManager* %4 to %struct._GTypeInstance*
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 80)
  %6 = bitcast %struct._GTypeInstance* %call1 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i8* null)
  ret void
}

declare void @gtk_menu_popup(%struct._GtkMenu*, %struct._GtkWidget*, %struct._GtkWidget*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_ui_manager_menu_pos(%struct._GtkMenu* %menu, i32* %x, i32* %y, i32* %push_in, i8* %data) #3 {
entry:
  %menu.addr = alloca %struct._GtkMenu*, align 8
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %push_in.addr = alloca i32*, align 8
  %data.addr = alloca i8*, align 8
  %menu_pos = alloca %struct.MenuPos*, align 8
  store %struct._GtkMenu* %menu, %struct._GtkMenu** %menu.addr, align 8
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  store i32* %push_in, i32** %push_in.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.MenuPos*
  store %struct.MenuPos* %1, %struct.MenuPos** %menu_pos, align 8
  %2 = load %struct.MenuPos*, %struct.MenuPos** %menu_pos, align 8
  %x1 = getelementptr inbounds %struct.MenuPos, %struct.MenuPos* %2, i32 0, i32 0
  %3 = load i32, i32* %x1, align 4
  %4 = load i32*, i32** %x.addr, align 8
  store i32 %3, i32* %4, align 4
  %5 = load %struct.MenuPos*, %struct.MenuPos** %menu_pos, align 8
  %y2 = getelementptr inbounds %struct.MenuPos, %struct.MenuPos* %5, i32 0, i32 1
  %6 = load i32, i32* %y2, align 4
  %7 = load i32*, i32** %y.addr, align 8
  store i32 %6, i32* %7, align 4
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_ui_manager_class_init(%struct._GimpUIManagerClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpUIManagerClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %manager_class = alloca %struct._GtkUIManagerClass*, align 8
  store %struct._GimpUIManagerClass* %klass, %struct._GimpUIManagerClass** %klass.addr, align 8
  %0 = load %struct._GimpUIManagerClass*, %struct._GimpUIManagerClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpUIManagerClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpUIManagerClass*, %struct._GimpUIManagerClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpUIManagerClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_ui_manager_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkUIManagerClass*
  store %struct._GtkUIManagerClass* %5, %struct._GtkUIManagerClass** %manager_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_ui_manager_constructed, void (%struct._GObject*)** %constructed, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_ui_manager_dispose, void (%struct._GObject*)** %dispose, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_ui_manager_finalize, void (%struct._GObject*)** %finalize, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_ui_manager_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_ui_manager_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %11 = load %struct._GtkUIManagerClass*, %struct._GtkUIManagerClass** %manager_class, align 8
  %connect_proxy = getelementptr inbounds %struct._GtkUIManagerClass, %struct._GtkUIManagerClass* %11, i32 0, i32 3
  store void (%struct._GtkUIManager*, %struct._GtkAction*, %struct._GtkWidget*)* @gimp_ui_manager_connect_proxy, void (%struct._GtkUIManager*, %struct._GtkAction*, %struct._GtkWidget*)** %connect_proxy, align 8
  %12 = load %struct._GtkUIManagerClass*, %struct._GtkUIManagerClass** %manager_class, align 8
  %get_widget = getelementptr inbounds %struct._GtkUIManagerClass, %struct._GtkUIManagerClass* %12, i32 0, i32 7
  store %struct._GtkWidget* (%struct._GtkUIManager*, i8*)* @gimp_ui_manager_get_widget, %struct._GtkWidget* (%struct._GtkUIManager*, i8*)** %get_widget, align 8
  %13 = load %struct._GtkUIManagerClass*, %struct._GtkUIManagerClass** %manager_class, align 8
  %get_action = getelementptr inbounds %struct._GtkUIManagerClass, %struct._GtkUIManagerClass* %13, i32 0, i32 8
  store %struct._GtkAction* (%struct._GtkUIManager*, i8*)* @gimp_ui_manager_get_action, %struct._GtkAction* (%struct._GtkUIManager*, i8*)** %get_action, align 8
  %14 = load %struct._GimpUIManagerClass*, %struct._GimpUIManagerClass** %klass.addr, align 8
  %update = getelementptr inbounds %struct._GimpUIManagerClass, %struct._GimpUIManagerClass* %14, i32 0, i32 2
  store void (%struct._GimpUIManager*, i8*)* @gimp_ui_manager_real_update, void (%struct._GimpUIManager*, i8*)** %update, align 8
  %15 = load %struct._GimpUIManagerClass*, %struct._GimpUIManagerClass** %klass.addr, align 8
  %16 = bitcast %struct._GimpUIManagerClass* %15 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type, align 8
  %call3 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i64 %17, i32 2, i32 224, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__POINTER, i64 4, i32 1, i64 68)
  store i32 %call3, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @manager_signals, i32 0, i64 0), align 4
  %18 = load %struct._GimpUIManagerClass*, %struct._GimpUIManagerClass** %klass.addr, align 8
  %19 = bitcast %struct._GimpUIManagerClass* %18 to %struct._GTypeClass*
  %g_type4 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type4, align 8
  %call5 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i64 %20, i32 2, i32 232, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__STRING, i64 4, i32 1, i64 64)
  store i32 %call5, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @manager_signals, i32 0, i64 1), align 4
  %21 = load %struct._GimpUIManagerClass*, %struct._GimpUIManagerClass** %klass.addr, align 8
  %22 = bitcast %struct._GimpUIManagerClass* %21 to %struct._GTypeClass*
  %g_type6 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type6, align 8
  %call7 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i64 %23, i32 2, i32 240, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0, i64 4)
  store i32 %call7, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @manager_signals, i32 0, i64 2), align 4
  %24 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null, i8* null, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %24, i32 1, %struct._GParamSpec* %call8)
  %25 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call9 = call i64 @gimp_get_type() #7
  %call10 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i64 %call9, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %25, i32 2, %struct._GParamSpec* %call10)
  %call11 = call %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal, void (i8*)* @g_free, void (i8*)* null)
  %26 = load %struct._GimpUIManagerClass*, %struct._GimpUIManagerClass** %klass.addr, align 8
  %managers = getelementptr inbounds %struct._GimpUIManagerClass, %struct._GimpUIManagerClass* %26, i32 0, i32 1
  store %struct._GHashTable* %call11, %struct._GHashTable** %managers, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_ui_manager_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %manager = alloca %struct._GimpUIManager*, align 8
  %manager_class = alloca %struct._GimpUIManagerClass*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_ui_manager_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpUIManager*
  store %struct._GimpUIManager* %2, %struct._GimpUIManager** %manager, align 8
  %3 = load i8*, i8** @gimp_ui_manager_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_ui_manager_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed4 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed4, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager, align 8
  %name = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %12, i32 0, i32 1
  %13 = load i8*, i8** %name, align 8
  %tobool5 = icmp ne i8* %13, null
  br i1 %tobool5, label %if.then.6, label %if.end.14

if.then.6:                                        ; preds = %if.end
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %15 = bitcast %struct._GObject* %14 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %17 = bitcast %struct._GTypeClass* %16 to %struct._GimpUIManagerClass*
  store %struct._GimpUIManagerClass* %17, %struct._GimpUIManagerClass** %manager_class, align 8
  %18 = load %struct._GimpUIManagerClass*, %struct._GimpUIManagerClass** %manager_class, align 8
  %managers = getelementptr inbounds %struct._GimpUIManagerClass, %struct._GimpUIManagerClass* %18, i32 0, i32 1
  %19 = load %struct._GHashTable*, %struct._GHashTable** %managers, align 8
  %20 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager, align 8
  %name7 = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %20, i32 0, i32 1
  %21 = load i8*, i8** %name7, align 8
  %call8 = call i8* @g_hash_table_lookup(%struct._GHashTable* %19, i8* %21)
  %22 = bitcast i8* %call8 to %struct._GList*
  store %struct._GList* %22, %struct._GList** %list, align 8
  %23 = load %struct._GList*, %struct._GList** %list, align 8
  %24 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager, align 8
  %25 = bitcast %struct._GimpUIManager* %24 to i8*
  %call9 = call %struct._GList* @g_list_append(%struct._GList* %23, i8* %25)
  store %struct._GList* %call9, %struct._GList** %list, align 8
  %26 = load %struct._GimpUIManagerClass*, %struct._GimpUIManagerClass** %manager_class, align 8
  %managers10 = getelementptr inbounds %struct._GimpUIManagerClass, %struct._GimpUIManagerClass* %26, i32 0, i32 1
  %27 = load %struct._GHashTable*, %struct._GHashTable** %managers10, align 8
  %28 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager, align 8
  %name11 = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %28, i32 0, i32 1
  %29 = load i8*, i8** %name11, align 8
  %call12 = call noalias i8* @g_strdup(i8* %29)
  %30 = load %struct._GList*, %struct._GList** %list, align 8
  %31 = bitcast %struct._GList* %30 to i8*
  %call13 = call i32 @g_hash_table_replace(%struct._GHashTable* %27, i8* %call12, i8* %31)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.6, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_ui_manager_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %manager = alloca %struct._GimpUIManager*, align 8
  %manager_class = alloca %struct._GimpUIManagerClass*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_ui_manager_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpUIManager*
  store %struct._GimpUIManager* %2, %struct._GimpUIManager** %manager, align 8
  %3 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager, align 8
  %name = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %3, i32 0, i32 1
  %4 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end.17

if.then:                                          ; preds = %entry
  %5 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %6 = bitcast %struct._GObject* %5 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %8 = bitcast %struct._GTypeClass* %7 to %struct._GimpUIManagerClass*
  store %struct._GimpUIManagerClass* %8, %struct._GimpUIManagerClass** %manager_class, align 8
  %9 = load %struct._GimpUIManagerClass*, %struct._GimpUIManagerClass** %manager_class, align 8
  %managers = getelementptr inbounds %struct._GimpUIManagerClass, %struct._GimpUIManagerClass* %9, i32 0, i32 1
  %10 = load %struct._GHashTable*, %struct._GHashTable** %managers, align 8
  %11 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager, align 8
  %name2 = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %11, i32 0, i32 1
  %12 = load i8*, i8** %name2, align 8
  %call3 = call i8* @g_hash_table_lookup(%struct._GHashTable* %10, i8* %12)
  %13 = bitcast i8* %call3 to %struct._GList*
  store %struct._GList* %13, %struct._GList** %list, align 8
  %14 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool4 = icmp ne %struct._GList* %14, null
  br i1 %tobool4, label %if.then.5, label %if.end.16

if.then.5:                                        ; preds = %if.then
  %15 = load %struct._GList*, %struct._GList** %list, align 8
  %16 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager, align 8
  %17 = bitcast %struct._GimpUIManager* %16 to i8*
  %call6 = call %struct._GList* @g_list_remove(%struct._GList* %15, i8* %17)
  store %struct._GList* %call6, %struct._GList** %list, align 8
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool7 = icmp ne %struct._GList* %18, null
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then.5
  %19 = load %struct._GimpUIManagerClass*, %struct._GimpUIManagerClass** %manager_class, align 8
  %managers9 = getelementptr inbounds %struct._GimpUIManagerClass, %struct._GimpUIManagerClass* %19, i32 0, i32 1
  %20 = load %struct._GHashTable*, %struct._GHashTable** %managers9, align 8
  %21 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager, align 8
  %name10 = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %21, i32 0, i32 1
  %22 = load i8*, i8** %name10, align 8
  %call11 = call noalias i8* @g_strdup(i8* %22)
  %23 = load %struct._GList*, %struct._GList** %list, align 8
  %24 = bitcast %struct._GList* %23 to i8*
  %call12 = call i32 @g_hash_table_replace(%struct._GHashTable* %20, i8* %call11, i8* %24)
  br label %if.end

if.else:                                          ; preds = %if.then.5
  %25 = load %struct._GimpUIManagerClass*, %struct._GimpUIManagerClass** %manager_class, align 8
  %managers13 = getelementptr inbounds %struct._GimpUIManagerClass, %struct._GimpUIManagerClass* %25, i32 0, i32 1
  %26 = load %struct._GHashTable*, %struct._GHashTable** %managers13, align 8
  %27 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager, align 8
  %name14 = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %27, i32 0, i32 1
  %28 = load i8*, i8** %name14, align 8
  %call15 = call i32 @g_hash_table_remove(%struct._GHashTable* %26, i8* %28)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %if.then
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %entry
  %29 = load i8*, i8** @gimp_ui_manager_parent_class, align 8
  %30 = bitcast i8* %29 to %struct._GTypeClass*
  %call18 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %30, i64 80)
  %31 = bitcast %struct._GTypeClass* %call18 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %31, i32 0, i32 5
  %32 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %33 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %32(%struct._GObject* %33)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_ui_manager_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %manager = alloca %struct._GimpUIManager*, align 8
  %list = alloca %struct._GList*, align 8
  %entry2 = alloca %struct._GimpUIManagerUIEntry*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_ui_manager_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpUIManager*
  store %struct._GimpUIManager* %2, %struct._GimpUIManager** %manager, align 8
  %3 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager, align 8
  %registered_uis = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %3, i32 0, i32 3
  %4 = load %struct._GList*, %struct._GList** %registered_uis, align 8
  store %struct._GList* %4, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %6, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8
  %8 = bitcast i8* %7 to %struct._GimpUIManagerUIEntry*
  store %struct._GimpUIManagerUIEntry* %8, %struct._GimpUIManagerUIEntry** %entry2, align 8
  %9 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %entry2, align 8
  %ui_path = getelementptr inbounds %struct._GimpUIManagerUIEntry, %struct._GimpUIManagerUIEntry* %9, i32 0, i32 0
  %10 = load i8*, i8** %ui_path, align 8
  call void @g_free(i8* %10)
  %11 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %entry2, align 8
  %basename = getelementptr inbounds %struct._GimpUIManagerUIEntry, %struct._GimpUIManagerUIEntry* %11, i32 0, i32 1
  %12 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %12)
  %13 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %entry2, align 8
  %widget = getelementptr inbounds %struct._GimpUIManagerUIEntry, %struct._GimpUIManagerUIEntry* %13, i32 0, i32 4
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool3 = icmp ne %struct._GtkWidget* %14, null
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %15 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %entry2, align 8
  %widget4 = getelementptr inbounds %struct._GimpUIManagerUIEntry, %struct._GimpUIManagerUIEntry* %15, i32 0, i32 4
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget4, align 8
  %17 = bitcast %struct._GtkWidget* %16 to i8*
  call void @g_object_unref(i8* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %do.body

do.body:                                          ; preds = %if.end
  %18 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %entry2, align 8
  %19 = bitcast %struct._GimpUIManagerUIEntry* %18 to i8*
  call void @g_slice_free1(i64 40, i8* %19)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %20 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool5 = icmp ne %struct._GList* %20, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %21 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %21, i32 0, i32 1
  %22 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %22, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager, align 8
  %registered_uis6 = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %23, i32 0, i32 3
  %24 = load %struct._GList*, %struct._GList** %registered_uis6, align 8
  call void @g_list_free(%struct._GList* %24)
  %25 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager, align 8
  %registered_uis7 = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %25, i32 0, i32 3
  store %struct._GList* null, %struct._GList** %registered_uis7, align 8
  %26 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager, align 8
  %name = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %26, i32 0, i32 1
  %27 = load i8*, i8** %name, align 8
  %tobool8 = icmp ne i8* %27, null
  br i1 %tobool8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %for.end
  %28 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager, align 8
  %name10 = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %28, i32 0, i32 1
  %29 = load i8*, i8** %name10, align 8
  call void @g_free(i8* %29)
  %30 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager, align 8
  %name11 = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %30, i32 0, i32 1
  store i8* null, i8** %name11, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %for.end
  %31 = load i8*, i8** @gimp_ui_manager_parent_class, align 8
  %32 = bitcast i8* %31 to %struct._GTypeClass*
  %call13 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %32, i64 80)
  %33 = bitcast %struct._GTypeClass* %call13 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %33, i32 0, i32 6
  %34 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %35 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %34(%struct._GObject* %35)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_ui_manager_set_property(%struct._GObject* %object, i32 %prop_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %prop_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %manager = alloca %struct._GimpUIManager*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %prop_id, i32* %prop_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_ui_manager_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpUIManager*
  store %struct._GimpUIManager* %2, %struct._GimpUIManager** %manager, align 8
  %3 = load i32, i32* %prop_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager, align 8
  %name = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %4, i32 0, i32 1
  %5 = load i8*, i8** %name, align 8
  call void @g_free(i8* %5)
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_dup_string(%struct._GValue* %6)
  %7 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager, align 8
  %name3 = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %7, i32 0, i32 1
  store i8* %call2, i8** %name3, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call5 = call i8* @g_value_get_object(%struct._GValue* %8)
  %9 = bitcast i8* %call5 to %struct._Gimp*
  %10 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager, align 8
  %gimp = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %10, i32 0, i32 2
  store %struct._Gimp* %9, %struct._Gimp** %gimp, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %11, %struct._GObject** %_glib__object, align 8
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %12, %struct._GParamSpec** %_glib__pspec, align 8
  %13 = load i32, i32* %prop_id.addr, align 4
  store i32 %13, i32* %_glib__property_id, align 4
  %14 = load i32, i32* %_glib__property_id, align 4
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name6 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %15, i32 0, i32 1
  %16 = load i8*, i8** %name6, align 8
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %18 = bitcast %struct._GParamSpec* %17 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type, align 8
  %call7 = call i8* @g_type_name(i64 %20)
  %21 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %22 = bitcast %struct._GObject* %21 to %struct._GTypeInstance*
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type9 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type9, align 8
  %call10 = call i8* @g_type_name(i64 %24)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0), i32 300, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 %14, i8* %16, i8* %call7, i8* %call10)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.4, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_ui_manager_get_property(%struct._GObject* %object, i32 %prop_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %prop_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %manager = alloca %struct._GimpUIManager*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %prop_id, i32* %prop_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_ui_manager_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpUIManager*
  store %struct._GimpUIManager* %2, %struct._GimpUIManager** %manager, align 8
  %3 = load i32, i32* %prop_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager, align 8
  %name = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %5, i32 0, i32 1
  %6 = load i8*, i8** %name, align 8
  call void @g_value_set_string(%struct._GValue* %4, i8* %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager, align 8
  %gimp = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %8, i32 0, i32 2
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %10 = bitcast %struct._Gimp* %9 to i8*
  call void @g_value_set_object(%struct._GValue* %7, i8* %10)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %11, %struct._GObject** %_glib__object, align 8
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %12, %struct._GParamSpec** %_glib__pspec, align 8
  %13 = load i32, i32* %prop_id.addr, align 4
  store i32 %13, i32* %_glib__property_id, align 4
  %14 = load i32, i32* %_glib__property_id, align 4
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name3 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %15, i32 0, i32 1
  %16 = load i8*, i8** %name3, align 8
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %18 = bitcast %struct._GParamSpec* %17 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type, align 8
  %call4 = call i8* @g_type_name(i64 %20)
  %21 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %22 = bitcast %struct._GObject* %21 to %struct._GTypeInstance*
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type6 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type6, align 8
  %call7 = call i8* @g_type_name(i64 %24)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0), i32 324, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 %14, i8* %16, i8* %call4, i8* %call7)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_ui_manager_connect_proxy(%struct._GtkUIManager* %manager, %struct._GtkAction* %action, %struct._GtkWidget* %proxy) #3 {
entry:
  %manager.addr = alloca %struct._GtkUIManager*, align 8
  %action.addr = alloca %struct._GtkAction*, align 8
  %proxy.addr = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkUIManager* %manager, %struct._GtkUIManager** %manager.addr, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store %struct._GtkWidget* %proxy, %struct._GtkWidget** %proxy.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i32 @gimp_help_id_quark() #7
  %3 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %4 = bitcast %struct._GtkAction* %3 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 80)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %call3 = call i32 @gimp_help_id_quark() #7
  %call4 = call i8* @g_object_get_qdata(%struct._GObject* %5, i32 %call3)
  call void @g_object_set_qdata(%struct._GObject* %2, i32 %call1, i8* %call4)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy.addr, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %7, %struct._GTypeInstance** %__inst, align 8
  %call5 = call i64 @gtk_menu_item_get_type() #7
  store i64 %call5, i64* %__t, align 8
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %8, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.11

if.else:                                          ; preds = %entry
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %9, i32 0, i32 0
  %10 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool6 = icmp ne %struct._GTypeClass* %10, null
  br i1 %tobool6, label %land.lhs.true, label %if.else.9

land.lhs.true:                                    ; preds = %if.else
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class7 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %11, i32 0, i32 0
  %12 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class7, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %12, i32 0, i32 0
  %13 = load i64, i64* %g_type, align 8
  %14 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %13, %14
  br i1 %cmp, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.9:                                        ; preds = %land.lhs.true, %if.else
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %16 = load i64, i64* %__t, align 8
  %call10 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %15, i64 %16) #8
  store i32 %call10, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.9, %if.then.8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then
  %17 = load i32, i32* %__r, align 4
  store i32 %17, i32* %tmp
  %18 = load i32, i32* %tmp
  %tobool12 = icmp ne i32 %18, 0
  br i1 %tobool12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %if.end.11
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy.addr, align 8
  %20 = bitcast %struct._GtkWidget* %19 to i8*
  %21 = load %struct._GtkUIManager*, %struct._GtkUIManager** %manager.addr, align 8
  %22 = bitcast %struct._GtkUIManager* %21 to i8*
  %call14 = call i64 @g_signal_connect_data(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpUIManager*)* @gimp_ui_manager_menu_item_select to void ()*), i8* %22, void (i8*, %struct._GClosure*)* null, i32 0)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy.addr, align 8
  %24 = bitcast %struct._GtkWidget* %23 to i8*
  %25 = load %struct._GtkUIManager*, %struct._GtkUIManager** %manager.addr, align 8
  %26 = bitcast %struct._GtkUIManager* %25 to i8*
  %call15 = call i64 @g_signal_connect_data(i8* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpUIManager*)* @gimp_ui_manager_menu_item_deselect to void ()*), i8* %26, void (i8*, %struct._GClosure*)* null, i32 0)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy.addr, align 8
  %28 = bitcast %struct._GtkWidget* %27 to i8*
  %29 = load %struct._GtkUIManager*, %struct._GtkUIManager** %manager.addr, align 8
  %30 = bitcast %struct._GtkUIManager* %29 to i8*
  %call16 = call i64 @g_signal_connect_data(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpUIManager*)* @gimp_ui_manager_item_realize to void ()*), i8* %30, void (i8*, %struct._GClosure*)* null, i32 1)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %if.end.11
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_ui_manager_get_widget(%struct._GtkUIManager* %manager, i8* %path) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %manager.addr = alloca %struct._GtkUIManager*, align 8
  %path.addr = alloca i8*, align 8
  %entry1 = alloca %struct._GimpUIManagerUIEntry*, align 8
  store %struct._GtkUIManager* %manager, %struct._GtkUIManager** %manager.addr, align 8
  store i8* %path, i8** %path.addr, align 8
  %0 = load %struct._GtkUIManager*, %struct._GtkUIManager** %manager.addr, align 8
  %1 = bitcast %struct._GtkUIManager* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_ui_manager_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpUIManager*
  %3 = load i8*, i8** %path.addr, align 8
  %call3 = call %struct._GimpUIManagerUIEntry* @gimp_ui_manager_entry_ensure(%struct._GimpUIManager* %2, i8* %3)
  store %struct._GimpUIManagerUIEntry* %call3, %struct._GimpUIManagerUIEntry** %entry1, align 8
  %4 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %entry1, align 8
  %tobool = icmp ne %struct._GimpUIManagerUIEntry* %4, null
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %entry1, align 8
  %ui_path = getelementptr inbounds %struct._GimpUIManagerUIEntry, %struct._GimpUIManagerUIEntry* %5, i32 0, i32 0
  %6 = load i8*, i8** %ui_path, align 8
  %7 = load i8*, i8** %path.addr, align 8
  %call4 = call i32 @strcmp(i8* %6, i8* %7) #8
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %if.then
  %8 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %entry1, align 8
  %widget = getelementptr inbounds %struct._GimpUIManagerUIEntry, %struct._GimpUIManagerUIEntry* %8, i32 0, i32 4
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  store %struct._GtkWidget* %9, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load i8*, i8** @gimp_ui_manager_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call7 = call i64 @gtk_ui_manager_get_type() #7
  %call8 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 %call7)
  %12 = bitcast %struct._GTypeClass* %call8 to %struct._GtkUIManagerClass*
  %get_widget = getelementptr inbounds %struct._GtkUIManagerClass, %struct._GtkUIManagerClass* %12, i32 0, i32 7
  %13 = load %struct._GtkWidget* (%struct._GtkUIManager*, i8*)*, %struct._GtkWidget* (%struct._GtkUIManager*, i8*)** %get_widget, align 8
  %14 = load %struct._GtkUIManager*, %struct._GtkUIManager** %manager.addr, align 8
  %15 = load i8*, i8** %path.addr, align 8
  %call9 = call %struct._GtkWidget* %13(%struct._GtkUIManager* %14, i8* %15)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %entry
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.end, %if.then.6
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %16
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkAction* @gimp_ui_manager_get_action(%struct._GtkUIManager* %manager, i8* %path) #3 {
entry:
  %retval = alloca %struct._GtkAction*, align 8
  %manager.addr = alloca %struct._GtkUIManager*, align 8
  %path.addr = alloca i8*, align 8
  store %struct._GtkUIManager* %manager, %struct._GtkUIManager** %manager.addr, align 8
  store i8* %path, i8** %path.addr, align 8
  %0 = load %struct._GtkUIManager*, %struct._GtkUIManager** %manager.addr, align 8
  %1 = bitcast %struct._GtkUIManager* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_ui_manager_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpUIManager*
  %3 = load i8*, i8** %path.addr, align 8
  %call2 = call %struct._GimpUIManagerUIEntry* @gimp_ui_manager_entry_ensure(%struct._GimpUIManager* %2, i8* %3)
  %tobool = icmp ne %struct._GimpUIManagerUIEntry* %call2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** @gimp_ui_manager_parent_class, align 8
  %5 = bitcast i8* %4 to %struct._GTypeClass*
  %call3 = call i64 @gtk_ui_manager_get_type() #7
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %5, i64 %call3)
  %6 = bitcast %struct._GTypeClass* %call4 to %struct._GtkUIManagerClass*
  %get_action = getelementptr inbounds %struct._GtkUIManagerClass, %struct._GtkUIManagerClass* %6, i32 0, i32 8
  %7 = load %struct._GtkAction* (%struct._GtkUIManager*, i8*)*, %struct._GtkAction* (%struct._GtkUIManager*, i8*)** %get_action, align 8
  %8 = load %struct._GtkUIManager*, %struct._GtkUIManager** %manager.addr, align 8
  %9 = load i8*, i8** %path.addr, align 8
  %call5 = call %struct._GtkAction* %7(%struct._GtkUIManager* %8, i8* %9)
  store %struct._GtkAction* %call5, %struct._GtkAction** %retval
  br label %return

if.end:                                           ; preds = %entry
  store %struct._GtkAction* null, %struct._GtkAction** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load %struct._GtkAction*, %struct._GtkAction** %retval
  ret %struct._GtkAction* %10
}

; Function Attrs: nounwind uwtable
define internal void @gimp_ui_manager_real_update(%struct._GimpUIManager* %manager, i8* %update_data) #3 {
entry:
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  %update_data.addr = alloca i8*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  store i8* %update_data, i8** %update_data.addr, align 8
  %0 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %1 = bitcast %struct._GimpUIManager* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_ui_manager_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkUIManager*
  %call2 = call %struct._GList* @gtk_ui_manager_get_action_groups(%struct._GtkUIManager* %2)
  store %struct._GList* %call2, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  %6 = bitcast i8* %5 to %struct._GimpActionGroup*
  %7 = load i8*, i8** %update_data.addr, align 8
  call void @gimp_action_group_update(%struct._GimpActionGroup* %6, i8* %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool3 = icmp ne %struct._GList* %8, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %9 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %9, i32 0, i32 1
  %10 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %10, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__POINTER(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare void @g_cclosure_marshal_VOID__STRING(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, void (i8*)*) #1

declare i32 @g_str_hash(i8*) #1

declare i32 @g_str_equal(i8*, i8*) #1

declare void @g_free(i8*) #1

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare i32 @g_hash_table_replace(%struct._GHashTable*, i8*, i8*) #1

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #1

declare i32 @g_hash_table_remove(%struct._GHashTable*, i8*) #1

declare void @g_object_unref(i8*) #1

declare void @g_slice_free1(i64, i8*) #1

declare void @g_list_free(%struct._GList*) #1

declare i8* @g_value_dup_string(%struct._GValue*) #1

declare i8* @g_value_get_object(%struct._GValue*) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #3 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @g_value_set_string(%struct._GValue*, i8*) #1

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare void @g_object_set_qdata(%struct._GObject*, i32, i8*) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_help_id_quark() #2

declare i8* @g_object_get_qdata(%struct._GObject*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_ui_manager_menu_item_select(%struct._GtkWidget* %widget, %struct._GimpUIManager* %manager) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  %action = alloca %struct._GtkAction*, align 8
  %tooltip = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_activatable_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkActivatable*
  %call2 = call %struct._GtkAction* @gtk_activatable_get_related_action(%struct._GtkActivatable* %2)
  store %struct._GtkAction* %call2, %struct._GtkAction** %action, align 8
  %3 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %tobool = icmp ne %struct._GtkAction* %3, null
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %4 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %call3 = call i8* @gtk_action_get_tooltip(%struct._GtkAction* %4)
  store i8* %call3, i8** %tooltip, align 8
  %5 = load i8*, i8** %tooltip, align 8
  %tobool4 = icmp ne i8* %5, null
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %6 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %7 = bitcast %struct._GimpUIManager* %6 to i8*
  %8 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @manager_signals, i32 0, i64 1), align 4
  %9 = load i8*, i8** %tooltip, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %7, i32 %8, i32 0, i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_ui_manager_menu_item_deselect(%struct._GtkWidget* %widget, %struct._GimpUIManager* %manager) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  %0 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %1 = bitcast %struct._GimpUIManager* %0 to i8*
  %2 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @manager_signals, i32 0, i64 2), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %1, i32 %2, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_ui_manager_item_realize(%struct._GtkWidget* %widget, %struct._GimpUIManager* %manager) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  %menu = alloca %struct._GtkWidget*, align 8
  %submenu = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to i8*
  %2 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %3 = bitcast %struct._GimpUIManager* %2 to i8*
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %1, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GimpUIManager*)* @gimp_ui_manager_item_realize to i8*), i8* %3)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call1 = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %4)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %menu, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %6, %struct._GTypeInstance** %__inst, align 8
  %call2 = call i64 @gtk_menu_shell_get_type() #7
  store i64 %call2, i64* %__t, align 8
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %7, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.8

if.else:                                          ; preds = %entry
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool3 = icmp ne %struct._GTypeClass* %9, null
  br i1 %tobool3, label %land.lhs.true, label %if.else.6

land.lhs.true:                                    ; preds = %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %11, i32 0, i32 0
  %12 = load i64, i64* %g_type, align 8
  %13 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %12, %13
  br i1 %cmp, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.6:                                        ; preds = %land.lhs.true, %if.else
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %15 = load i64, i64* %__t, align 8
  %call7 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %14, i64 %15) #8
  store i32 %call7, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %16 = load i32, i32* %__r, align 4
  store i32 %16, i32* %tmp
  %17 = load i32, i32* %tmp
  %tobool9 = icmp ne i32 %17, 0
  br i1 %tobool9, label %if.then.10, label %if.end.22

if.then.10:                                       ; preds = %if.end.8
  %18 = load i32, i32* @gimp_ui_manager_item_realize.quark_key_press_connected, align 4
  %tobool11 = icmp ne i32 %18, 0
  br i1 %tobool11, label %if.end.14, label %if.then.12

if.then.12:                                       ; preds = %if.then.10
  %call13 = call i32 @g_quark_from_static_string(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.25, i32 0, i32 0))
  store i32 %call13, i32* @gimp_ui_manager_item_realize.quark_key_press_connected, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.then.10
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 80)
  %21 = bitcast %struct._GTypeInstance* %call15 to %struct._GObject*
  %22 = load i32, i32* @gimp_ui_manager_item_realize.quark_key_press_connected, align 4
  %call16 = call i8* @g_object_get_qdata(%struct._GObject* %21, i32 %22)
  %23 = ptrtoint i8* %call16 to i64
  %conv = trunc i64 %23 to i32
  %tobool17 = icmp ne i32 %conv, 0
  br i1 %tobool17, label %if.end.21, label %if.then.18

if.then.18:                                       ; preds = %if.end.14
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %25 = bitcast %struct._GtkWidget* %24 to i8*
  %26 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %27 = bitcast %struct._GimpUIManager* %26 to i8*
  %call19 = call i64 @g_signal_connect_data(i8* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventKey*, %struct._GimpUIManager*)* @gimp_ui_manager_item_key_press to void ()*), i8* %27, void (i8*, %struct._GClosure*)* null, i32 0)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 80)
  %30 = bitcast %struct._GTypeInstance* %call20 to %struct._GObject*
  %31 = load i32, i32* @gimp_ui_manager_item_realize.quark_key_press_connected, align 4
  call void @g_object_set_qdata(%struct._GObject* %30, i32 %31, i8* inttoptr (i64 1 to i8*))
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %if.end.14
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end.8
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_menu_item_get_type() #7
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call23)
  %34 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkMenuItem*
  %call25 = call %struct._GtkWidget* @gtk_menu_item_get_submenu(%struct._GtkMenuItem* %34)
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %submenu, align 8
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %submenu, align 8
  %tobool26 = icmp ne %struct._GtkWidget* %35, null
  br i1 %tobool26, label %if.then.27, label %if.end.33

if.then.27:                                       ; preds = %if.end.22
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %submenu, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 80)
  %38 = bitcast %struct._GTypeInstance* %call28 to %struct._GObject*
  %call29 = call i32 @gimp_help_id_quark() #7
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 80)
  %41 = bitcast %struct._GTypeInstance* %call30 to %struct._GObject*
  %call31 = call i32 @gimp_help_id_quark() #7
  %call32 = call i8* @g_object_get_qdata(%struct._GObject* %41, i32 %call31)
  call void @g_object_set_qdata(%struct._GObject* %38, i32 %call29, i8* %call32)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.27, %if.end.22
  ret void
}

declare %struct._GtkAction* @gtk_activatable_get_related_action(%struct._GtkActivatable*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_activatable_get_type() #2

declare i8* @gtk_action_get_tooltip(%struct._GtkAction*) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_menu_shell_get_type() #2

declare i32 @g_quark_from_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_ui_manager_item_key_press(%struct._GtkWidget* %widget, %struct._GdkEventKey* %kevent, %struct._GimpUIManager* %manager) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %kevent.addr = alloca %struct._GdkEventKey*, align 8
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  %help_id = alloca i8*, align 8
  %menu_item = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %parent = alloca %struct._GtkWidget*, align 8
  %window = alloca %struct._GdkDrawable*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %__inst25 = alloca %struct._GTypeInstance*, align 8
  %__t27 = alloca i64, align 8
  %__r30 = alloca i32, align 4
  %tmp45 = alloca i32, align 4
  %__inst51 = alloca %struct._GTypeInstance*, align 8
  %__t53 = alloca i64, align 8
  %__r56 = alloca i32, align 4
  %tmp71 = alloca i32, align 4
  %__inst104 = alloca %struct._GTypeInstance*, align 8
  %__t106 = alloca i64, align 8
  %__r109 = alloca i32, align 4
  %tmp124 = alloca i32, align 4
  %help_domain = alloca i8*, align 8
  %help_string = alloca i8*, align 8
  %domain_separator = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventKey* %kevent, %struct._GdkEventKey** %kevent.addr, align 8
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  store i8* null, i8** %help_id, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.138, %entry
  %0 = load i8*, i8** %help_id, align 8
  %tobool = icmp ne i8* %0, null
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_menu_shell_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkMenuShell*
  %active_menu_item = getelementptr inbounds %struct._GtkMenuShell, %struct._GtkMenuShell* %3, i32 0, i32 2
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %active_menu_item, align 8
  store %struct._GtkWidget* %4, %struct._GtkWidget** %menu_item, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %menu_item, align 8
  %tobool2 = icmp ne %struct._GtkWidget* %5, null
  br i1 %tobool2, label %if.end.76, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %7, %struct._GTypeInstance** %__inst, align 8
  %call3 = call i64 @gtk_menu_get_type() #7
  store i64 %call3, i64* %__t, align 8
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool4 = icmp ne %struct._GTypeInstance* %8, null
  br i1 %tobool4, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %__r, align 4
  br label %if.end.11

if.else:                                          ; preds = %land.lhs.true
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %9, i32 0, i32 0
  %10 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool5 = icmp ne %struct._GTypeClass* %10, null
  br i1 %tobool5, label %land.lhs.true.6, label %if.else.9

land.lhs.true.6:                                  ; preds = %if.else
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class7 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %11, i32 0, i32 0
  %12 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class7, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %12, i32 0, i32 0
  %13 = load i64, i64* %g_type, align 8
  %14 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %13, %14
  br i1 %cmp, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %land.lhs.true.6
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.9:                                        ; preds = %land.lhs.true.6, %if.else
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %16 = load i64, i64* %__t, align 8
  %call10 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %15, i64 %16) #8
  store i32 %call10, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.9, %if.then.8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then
  %17 = load i32, i32* %__r, align 4
  store i32 %17, i32* %tmp
  %18 = load i32, i32* %tmp
  %tobool12 = icmp ne i32 %18, 0
  br i1 %tobool12, label %if.then.13, label %if.end.76

if.then.13:                                       ; preds = %if.end.11
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call15 = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %19)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %parent, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %call17 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %20)
  store %struct._GdkDrawable* %call17, %struct._GdkDrawable** %window, align 8
  %21 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %call20 = call %struct._GdkDrawable* @gdk_window_get_pointer(%struct._GdkDrawable* %21, i32* %x, i32* %y, i32* null)
  %22 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %call21 = call %struct._GtkWidget* @find_widget_under_pointer(%struct._GdkDrawable* %22, i32* %x, i32* %y)
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %menu_item, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %menu_item, align 8
  %tobool22 = icmp ne %struct._GtkWidget* %23, null
  br i1 %tobool22, label %land.lhs.true.23, label %if.end.75

land.lhs.true.23:                                 ; preds = %if.then.13
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %menu_item, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %25, %struct._GTypeInstance** %__inst25, align 8
  %call28 = call i64 @gtk_menu_item_get_type() #7
  store i64 %call28, i64* %__t27, align 8
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst25, align 8
  %tobool31 = icmp ne %struct._GTypeInstance* %26, null
  br i1 %tobool31, label %if.else.33, label %if.then.32

if.then.32:                                       ; preds = %land.lhs.true.23
  store i32 0, i32* %__r30, align 4
  br label %if.end.44

if.else.33:                                       ; preds = %land.lhs.true.23
  %27 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst25, align 8
  %g_class34 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %27, i32 0, i32 0
  %28 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class34, align 8
  %tobool35 = icmp ne %struct._GTypeClass* %28, null
  br i1 %tobool35, label %land.lhs.true.36, label %if.else.41

land.lhs.true.36:                                 ; preds = %if.else.33
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst25, align 8
  %g_class37 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class37, align 8
  %g_type38 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %30, i32 0, i32 0
  %31 = load i64, i64* %g_type38, align 8
  %32 = load i64, i64* %__t27, align 8
  %cmp39 = icmp eq i64 %31, %32
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %land.lhs.true.36
  store i32 1, i32* %__r30, align 4
  br label %if.end.43

if.else.41:                                       ; preds = %land.lhs.true.36, %if.else.33
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst25, align 8
  %34 = load i64, i64* %__t27, align 8
  %call42 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %33, i64 %34) #8
  store i32 %call42, i32* %__r30, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.41, %if.then.40
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.32
  %35 = load i32, i32* %__r30, align 4
  store i32 %35, i32* %tmp45
  %36 = load i32, i32* %tmp45
  %tobool46 = icmp ne i32 %36, 0
  br i1 %tobool46, label %if.end.75, label %if.then.47

if.then.47:                                       ; preds = %if.end.44
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %menu_item, align 8
  %call48 = call i64 @gtk_menu_item_get_type() #7
  %call49 = call %struct._GtkWidget* @gtk_widget_get_ancestor(%struct._GtkWidget* %37, i64 %call48)
  store %struct._GtkWidget* %call49, %struct._GtkWidget** %menu_item, align 8
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %menu_item, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %39, %struct._GTypeInstance** %__inst51, align 8
  %call54 = call i64 @gtk_menu_item_get_type() #7
  store i64 %call54, i64* %__t53, align 8
  %40 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst51, align 8
  %tobool57 = icmp ne %struct._GTypeInstance* %40, null
  br i1 %tobool57, label %if.else.59, label %if.then.58

if.then.58:                                       ; preds = %if.then.47
  store i32 0, i32* %__r56, align 4
  br label %if.end.70

if.else.59:                                       ; preds = %if.then.47
  %41 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst51, align 8
  %g_class60 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %41, i32 0, i32 0
  %42 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class60, align 8
  %tobool61 = icmp ne %struct._GTypeClass* %42, null
  br i1 %tobool61, label %land.lhs.true.62, label %if.else.67

land.lhs.true.62:                                 ; preds = %if.else.59
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst51, align 8
  %g_class63 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %43, i32 0, i32 0
  %44 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class63, align 8
  %g_type64 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %44, i32 0, i32 0
  %45 = load i64, i64* %g_type64, align 8
  %46 = load i64, i64* %__t53, align 8
  %cmp65 = icmp eq i64 %45, %46
  br i1 %cmp65, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %land.lhs.true.62
  store i32 1, i32* %__r56, align 4
  br label %if.end.69

if.else.67:                                       ; preds = %land.lhs.true.62, %if.else.59
  %47 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst51, align 8
  %48 = load i64, i64* %__t53, align 8
  %call68 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %47, i64 %48) #8
  store i32 %call68, i32* %__r56, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.67, %if.then.66
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.58
  %49 = load i32, i32* %__r56, align 4
  store i32 %49, i32* %tmp71
  %50 = load i32, i32* %tmp71
  %tobool72 = icmp ne i32 %50, 0
  br i1 %tobool72, label %if.end.74, label %if.then.73

if.then.73:                                       ; preds = %if.end.70
  store %struct._GtkWidget* null, %struct._GtkWidget** %menu_item, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %if.end.70
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.end.44, %if.then.13
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.end.11, %while.body
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %menu_item, align 8
  %tobool77 = icmp ne %struct._GtkWidget* %51, null
  br i1 %tobool77, label %if.then.78, label %if.end.88

if.then.78:                                       ; preds = %if.end.76
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %menu_item, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 80)
  %54 = bitcast %struct._GTypeInstance* %call79 to %struct._GObject*
  %call80 = call i32 @gimp_help_id_quark() #7
  %call81 = call i8* @g_object_get_qdata(%struct._GObject* %54, i32 %call80)
  store i8* %call81, i8** %help_id, align 8
  %55 = load i8*, i8** %help_id, align 8
  %tobool82 = icmp ne i8* %55, null
  br i1 %tobool82, label %land.lhs.true.83, label %if.end.87

land.lhs.true.83:                                 ; preds = %if.then.78
  %56 = load i8*, i8** %help_id, align 8
  %call84 = call i64 @strlen(i8* %56) #8
  %tobool85 = icmp ne i64 %call84, 0
  br i1 %tobool85, label %if.end.87, label %if.then.86

if.then.86:                                       ; preds = %land.lhs.true.83
  store i8* null, i8** %help_id, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.86, %land.lhs.true.83, %if.then.78
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %if.end.76
  %57 = load i8*, i8** %help_id, align 8
  %tobool89 = icmp ne i8* %57, null
  br i1 %tobool89, label %if.end.100, label %if.then.90

if.then.90:                                       ; preds = %if.end.88
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 80)
  %60 = bitcast %struct._GTypeInstance* %call91 to %struct._GObject*
  %call92 = call i32 @gimp_help_id_quark() #7
  %call93 = call i8* @g_object_get_qdata(%struct._GObject* %60, i32 %call92)
  store i8* %call93, i8** %help_id, align 8
  %61 = load i8*, i8** %help_id, align 8
  %tobool94 = icmp ne i8* %61, null
  br i1 %tobool94, label %land.lhs.true.95, label %if.end.99

land.lhs.true.95:                                 ; preds = %if.then.90
  %62 = load i8*, i8** %help_id, align 8
  %call96 = call i64 @strlen(i8* %62) #8
  %tobool97 = icmp ne i64 %call96, 0
  br i1 %tobool97, label %if.end.99, label %if.then.98

if.then.98:                                       ; preds = %land.lhs.true.95
  store i8* null, i8** %help_id, align 8
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.98, %land.lhs.true.95, %if.then.90
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.end.88
  %63 = load i8*, i8** %help_id, align 8
  %tobool101 = icmp ne i8* %63, null
  br i1 %tobool101, label %if.end.138, label %if.then.102

if.then.102:                                      ; preds = %if.end.100
  store %struct._GtkWidget* null, %struct._GtkWidget** %menu_item, align 8
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %65 = bitcast %struct._GtkWidget* %64 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %65, %struct._GTypeInstance** %__inst104, align 8
  %call107 = call i64 @gtk_menu_get_type() #7
  store i64 %call107, i64* %__t106, align 8
  %66 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst104, align 8
  %tobool110 = icmp ne %struct._GTypeInstance* %66, null
  br i1 %tobool110, label %if.else.112, label %if.then.111

if.then.111:                                      ; preds = %if.then.102
  store i32 0, i32* %__r109, align 4
  br label %if.end.123

if.else.112:                                      ; preds = %if.then.102
  %67 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst104, align 8
  %g_class113 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %67, i32 0, i32 0
  %68 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class113, align 8
  %tobool114 = icmp ne %struct._GTypeClass* %68, null
  br i1 %tobool114, label %land.lhs.true.115, label %if.else.120

land.lhs.true.115:                                ; preds = %if.else.112
  %69 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst104, align 8
  %g_class116 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %69, i32 0, i32 0
  %70 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class116, align 8
  %g_type117 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %70, i32 0, i32 0
  %71 = load i64, i64* %g_type117, align 8
  %72 = load i64, i64* %__t106, align 8
  %cmp118 = icmp eq i64 %71, %72
  br i1 %cmp118, label %if.then.119, label %if.else.120

if.then.119:                                      ; preds = %land.lhs.true.115
  store i32 1, i32* %__r109, align 4
  br label %if.end.122

if.else.120:                                      ; preds = %land.lhs.true.115, %if.else.112
  %73 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst104, align 8
  %74 = load i64, i64* %__t106, align 8
  %call121 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %73, i64 %74) #8
  store i32 %call121, i32* %__r109, align 4
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.120, %if.then.119
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.then.111
  %75 = load i32, i32* %__r109, align 4
  store i32 %75, i32* %tmp124
  %76 = load i32, i32* %tmp124
  %tobool125 = icmp ne i32 %76, 0
  br i1 %tobool125, label %if.then.126, label %if.end.130

if.then.126:                                      ; preds = %if.end.123
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %78 = bitcast %struct._GtkWidget* %77 to %struct._GTypeInstance*
  %call127 = call i64 @gtk_menu_get_type() #7
  %call128 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call127)
  %79 = bitcast %struct._GTypeInstance* %call128 to %struct._GtkMenu*
  %call129 = call %struct._GtkWidget* @gtk_menu_get_attach_widget(%struct._GtkMenu* %79)
  store %struct._GtkWidget* %call129, %struct._GtkWidget** %menu_item, align 8
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.126, %if.end.123
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %menu_item, align 8
  %tobool131 = icmp ne %struct._GtkWidget* %80, null
  br i1 %tobool131, label %if.end.133, label %if.then.132

if.then.132:                                      ; preds = %if.end.130
  br label %while.end

if.end.133:                                       ; preds = %if.end.130
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %menu_item, align 8
  %call134 = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %81)
  store %struct._GtkWidget* %call134, %struct._GtkWidget** %widget.addr, align 8
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %tobool135 = icmp ne %struct._GtkWidget* %82, null
  br i1 %tobool135, label %if.end.137, label %if.then.136

if.then.136:                                      ; preds = %if.end.133
  br label %while.end

if.end.137:                                       ; preds = %if.end.133
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %if.end.100
  br label %while.cond

while.end:                                        ; preds = %if.then.136, %if.then.132, %while.cond
  %83 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %keyval = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %83, i32 0, i32 5
  %84 = load i32, i32* %keyval, align 4
  %cmp139 = icmp ne i32 %84, 65470
  br i1 %cmp139, label %if.then.140, label %if.end.153

if.then.140:                                      ; preds = %while.end
  %85 = load i8*, i8** %help_id, align 8
  %tobool141 = icmp ne i8* %85, null
  br i1 %tobool141, label %land.lhs.true.142, label %if.end.152

land.lhs.true.142:                                ; preds = %if.then.140
  %86 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %keyval143 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %86, i32 0, i32 5
  %87 = load i32, i32* %keyval143, align 4
  %call144 = call i32 @gtk_accelerator_valid(i32 %87, i32 0) #7
  %tobool145 = icmp ne i32 %call144, 0
  br i1 %tobool145, label %land.lhs.true.146, label %if.end.152

land.lhs.true.146:                                ; preds = %land.lhs.true.142
  %88 = load i8*, i8** %help_id, align 8
  %call147 = call i32 @strcmp(i8* %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0)) #8
  %cmp148 = icmp eq i32 %call147, 0
  br i1 %cmp148, label %if.then.151, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.146
  %89 = load i8*, i8** %help_id, align 8
  %call149 = call i32 @strcmp(i8* %89, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0)) #8
  %cmp150 = icmp eq i32 %call149, 0
  br i1 %cmp150, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %lor.lhs.false, %land.lhs.true.146
  store i32 1, i32* %retval
  br label %return

if.end.152:                                       ; preds = %lor.lhs.false, %land.lhs.true.142, %if.then.140
  store i32 0, i32* %retval
  br label %return

if.end.153:                                       ; preds = %while.end
  %90 = load i8*, i8** %help_id, align 8
  %tobool154 = icmp ne i8* %90, null
  br i1 %tobool154, label %if.then.155, label %if.end.168

if.then.155:                                      ; preds = %if.end.153
  store i8* null, i8** %help_domain, align 8
  store i8* null, i8** %help_string, align 8
  %91 = load i8*, i8** %help_id, align 8
  %call159 = call noalias i8* @g_strdup(i8* %91)
  store i8* %call159, i8** %help_id, align 8
  %92 = load i8*, i8** %help_id, align 8
  %call160 = call i8* @strchr(i8* %92, i32 63) #8
  store i8* %call160, i8** %domain_separator, align 8
  %93 = load i8*, i8** %domain_separator, align 8
  %tobool161 = icmp ne i8* %93, null
  br i1 %tobool161, label %if.then.162, label %if.else.165

if.then.162:                                      ; preds = %if.then.155
  %94 = load i8*, i8** %domain_separator, align 8
  store i8 0, i8* %94, align 1
  %95 = load i8*, i8** %help_id, align 8
  %call163 = call noalias i8* @g_strdup(i8* %95)
  store i8* %call163, i8** %help_domain, align 8
  %96 = load i8*, i8** %domain_separator, align 8
  %add.ptr = getelementptr inbounds i8, i8* %96, i64 1
  %call164 = call noalias i8* @g_strdup(i8* %add.ptr)
  store i8* %call164, i8** %help_string, align 8
  br label %if.end.167

if.else.165:                                      ; preds = %if.then.155
  %97 = load i8*, i8** %help_id, align 8
  %call166 = call noalias i8* @g_strdup(i8* %97)
  store i8* %call166, i8** %help_string, align 8
  br label %if.end.167

if.end.167:                                       ; preds = %if.else.165, %if.then.162
  %98 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %98, i32 0, i32 2
  %99 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %100 = load i8*, i8** %help_domain, align 8
  %101 = load i8*, i8** %help_string, align 8
  call void @gimp_help(%struct._Gimp* %99, %struct._GimpProgress* null, i8* %100, i8* %101)
  %102 = load i8*, i8** %help_domain, align 8
  call void @g_free(i8* %102)
  %103 = load i8*, i8** %help_string, align 8
  call void @g_free(i8* %103)
  %104 = load i8*, i8** %help_id, align 8
  call void @g_free(i8* %104)
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %if.end.153
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.168, %if.end.152, %if.then.151
  %105 = load i32, i32* %retval
  ret i32 %105
}

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare %struct._GdkDrawable* @gdk_window_get_pointer(%struct._GdkDrawable*, i32*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @find_widget_under_pointer(%struct._GdkDrawable* %window, i32* %x, i32* %y) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %window.addr = alloca %struct._GdkDrawable*, align 8
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %event_widget = alloca %struct._GtkWidget*, align 8
  %child_loc = alloca %struct.ChildLocation, align 8
  %px = alloca i32, align 4
  %py = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %container = alloca %struct._GtkWidget*, align 8
  store %struct._GdkDrawable* %window, %struct._GdkDrawable** %window.addr, align 8
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  %0 = bitcast %struct.ChildLocation* %child_loc to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 8, i1 false)
  %1 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window.addr, align 8
  %2 = bitcast %struct._GtkWidget** %event_widget to i8**
  call void @gdk_window_get_user_data(%struct._GdkDrawable* %1, i8** %2)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %event_widget, align 8
  %tobool = icmp ne %struct._GtkWidget* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32*, i32** %x.addr, align 8
  %5 = load i32, i32* %4, align 4
  %x1 = getelementptr inbounds %struct.ChildLocation, %struct.ChildLocation* %child_loc, i32 0, i32 2
  store i32 %5, i32* %x1, align 4
  %6 = load i32*, i32** %y.addr, align 8
  %7 = load i32, i32* %6, align 4
  %y2 = getelementptr inbounds %struct.ChildLocation, %struct.ChildLocation* %child_loc, i32 0, i32 3
  store i32 %7, i32* %y2, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %8 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window.addr, align 8
  %tobool3 = icmp ne %struct._GdkDrawable* %8, null
  br i1 %tobool3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %9 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window.addr, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %event_widget, align 8
  %call = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %10)
  %cmp = icmp ne %struct._GdkDrawable* %9, %call
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window.addr, align 8
  call void @gdk_window_get_position(%struct._GdkDrawable* %12, i32* %px, i32* %py)
  %13 = load i32, i32* %px, align 4
  %x4 = getelementptr inbounds %struct.ChildLocation, %struct.ChildLocation* %child_loc, i32 0, i32 2
  %14 = load i32, i32* %x4, align 4
  %add = add nsw i32 %14, %13
  store i32 %add, i32* %x4, align 4
  %15 = load i32, i32* %py, align 4
  %y5 = getelementptr inbounds %struct.ChildLocation, %struct.ChildLocation* %child_loc, i32 0, i32 3
  %16 = load i32, i32* %y5, align 4
  %add6 = add nsw i32 %16, %15
  store i32 %add6, i32* %y5, align 4
  %17 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window.addr, align 8
  %call7 = call %struct._GdkDrawable* @gdk_window_get_parent(%struct._GdkDrawable* %17)
  store %struct._GdkDrawable* %call7, %struct._GdkDrawable** %window.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %18 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window.addr, align 8
  %tobool8 = icmp ne %struct._GdkDrawable* %18, null
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %while.end
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %while.end
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %event_widget, align 8
  %x11 = getelementptr inbounds %struct.ChildLocation, %struct.ChildLocation* %child_loc, i32 0, i32 2
  %20 = load i32, i32* %x11, align 4
  %y12 = getelementptr inbounds %struct.ChildLocation, %struct.ChildLocation* %child_loc, i32 0, i32 3
  %21 = load i32, i32* %y12, align 4
  %x13 = getelementptr inbounds %struct.ChildLocation, %struct.ChildLocation* %child_loc, i32 0, i32 2
  %y14 = getelementptr inbounds %struct.ChildLocation, %struct.ChildLocation* %child_loc, i32 0, i32 3
  call void @window_to_alloc(%struct._GtkWidget* %19, i32 %20, i32 %21, i32* %x13, i32* %y14)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %event_widget, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %23, %struct._GTypeInstance** %__inst, align 8
  %call15 = call i64 @gtk_container_get_type() #7
  store i64 %call15, i64* %__t, align 8
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool16 = icmp ne %struct._GTypeInstance* %24, null
  br i1 %tobool16, label %if.else, label %if.then.17

if.then.17:                                       ; preds = %if.end.10
  store i32 0, i32* %__r, align 4
  br label %if.end.25

if.else:                                          ; preds = %if.end.10
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %25, i32 0, i32 0
  %26 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool18 = icmp ne %struct._GTypeClass* %26, null
  br i1 %tobool18, label %land.lhs.true, label %if.else.22

land.lhs.true:                                    ; preds = %if.else
  %27 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class19 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %27, i32 0, i32 0
  %28 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class19, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %28, i32 0, i32 0
  %29 = load i64, i64* %g_type, align 8
  %30 = load i64, i64* %__t, align 8
  %cmp20 = icmp eq i64 %29, %30
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.24

if.else.22:                                       ; preds = %land.lhs.true, %if.else
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %32 = load i64, i64* %__t, align 8
  %call23 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %31, i64 %32) #8
  store i32 %call23, i32* %__r, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.22, %if.then.21
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.17
  %33 = load i32, i32* %__r, align 4
  store i32 %33, i32* %tmp
  %34 = load i32, i32* %tmp
  %tobool26 = icmp ne i32 %34, 0
  br i1 %tobool26, label %if.then.27, label %if.end.48

if.then.27:                                       ; preds = %if.end.25
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %event_widget, align 8
  store %struct._GtkWidget* %35, %struct._GtkWidget** %container, align 8
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %event_widget, align 8
  %container29 = getelementptr inbounds %struct.ChildLocation, %struct.ChildLocation* %child_loc, i32 0, i32 1
  store %struct._GtkWidget* %36, %struct._GtkWidget** %container29, align 8
  %child = getelementptr inbounds %struct.ChildLocation, %struct.ChildLocation* %child_loc, i32 0, i32 0
  store %struct._GtkWidget* null, %struct._GtkWidget** %child, align 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %event_widget, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_container_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call30)
  %39 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkContainer*
  %40 = bitcast %struct.ChildLocation* %child_loc to i8*
  call void @gtk_container_forall(%struct._GtkContainer* %39, void (%struct._GtkWidget*, i8*)* @child_location_foreach, i8* %40)
  %child32 = getelementptr inbounds %struct.ChildLocation, %struct.ChildLocation* %child_loc, i32 0, i32 0
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %child32, align 8
  %tobool33 = icmp ne %struct._GtkWidget* %41, null
  br i1 %tobool33, label %if.then.34, label %if.else.36

if.then.34:                                       ; preds = %if.then.27
  %child35 = getelementptr inbounds %struct.ChildLocation, %struct.ChildLocation* %child_loc, i32 0, i32 0
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %child35, align 8
  store %struct._GtkWidget* %42, %struct._GtkWidget** %event_widget, align 8
  br label %if.end.42

if.else.36:                                       ; preds = %if.then.27
  %container37 = getelementptr inbounds %struct.ChildLocation, %struct.ChildLocation* %child_loc, i32 0, i32 1
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %container37, align 8
  %tobool38 = icmp ne %struct._GtkWidget* %43, null
  br i1 %tobool38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.else.36
  %container40 = getelementptr inbounds %struct.ChildLocation, %struct.ChildLocation* %child_loc, i32 0, i32 1
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %container40, align 8
  store %struct._GtkWidget* %44, %struct._GtkWidget** %event_widget, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.else.36
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.34
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %container, align 8
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %event_widget, align 8
  %x43 = getelementptr inbounds %struct.ChildLocation, %struct.ChildLocation* %child_loc, i32 0, i32 2
  %47 = load i32, i32* %x43, align 4
  %y44 = getelementptr inbounds %struct.ChildLocation, %struct.ChildLocation* %child_loc, i32 0, i32 3
  %48 = load i32, i32* %y44, align 4
  %x45 = getelementptr inbounds %struct.ChildLocation, %struct.ChildLocation* %child_loc, i32 0, i32 2
  %y46 = getelementptr inbounds %struct.ChildLocation, %struct.ChildLocation* %child_loc, i32 0, i32 3
  %call47 = call i32 @gtk_widget_translate_coordinates(%struct._GtkWidget* %45, %struct._GtkWidget* %46, i32 %47, i32 %48, i32* %x45, i32* %y46)
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.42, %if.end.25
  %49 = load i32*, i32** %x.addr, align 8
  %tobool49 = icmp ne i32* %49, null
  br i1 %tobool49, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.end.48
  %x51 = getelementptr inbounds %struct.ChildLocation, %struct.ChildLocation* %child_loc, i32 0, i32 2
  %50 = load i32, i32* %x51, align 4
  %51 = load i32*, i32** %x.addr, align 8
  store i32 %50, i32* %51, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %if.end.48
  %52 = load i32*, i32** %y.addr, align 8
  %tobool53 = icmp ne i32* %52, null
  br i1 %tobool53, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %if.end.52
  %y55 = getelementptr inbounds %struct.ChildLocation, %struct.ChildLocation* %child_loc, i32 0, i32 3
  %53 = load i32, i32* %y55, align 4
  %54 = load i32*, i32** %y.addr, align 8
  store i32 %53, i32* %54, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %if.end.52
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %event_widget, align 8
  store %struct._GtkWidget* %55, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.56, %if.then.9, %if.then
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %56
}

declare %struct._GtkWidget* @gtk_widget_get_ancestor(%struct._GtkWidget*, i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare %struct._GtkWidget* @gtk_menu_get_attach_widget(%struct._GtkMenu*) #1

; Function Attrs: nounwind readnone
declare i32 @gtk_accelerator_valid(i32, i32) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

declare void @gimp_help(%struct._Gimp*, %struct._GimpProgress*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare void @gdk_window_get_user_data(%struct._GdkDrawable*, i8**) #1

declare void @gdk_window_get_position(%struct._GdkDrawable*, i32*, i32*) #1

declare %struct._GdkDrawable* @gdk_window_get_parent(%struct._GdkDrawable*) #1

; Function Attrs: nounwind uwtable
define internal void @window_to_alloc(%struct._GtkWidget* %dest_widget, i32 %src_x, i32 %src_y, i32* %dest_x, i32* %dest_y) #3 {
entry:
  %dest_widget.addr = alloca %struct._GtkWidget*, align 8
  %src_x.addr = alloca i32, align 4
  %src_y.addr = alloca i32, align 4
  %dest_x.addr = alloca i32*, align 8
  %dest_y.addr = alloca i32*, align 8
  %dest_allocation = alloca %struct._GdkRectangle, align 4
  %wx = alloca i32, align 4
  %wy = alloca i32, align 4
  store %struct._GtkWidget* %dest_widget, %struct._GtkWidget** %dest_widget.addr, align 8
  store i32 %src_x, i32* %src_x.addr, align 4
  store i32 %src_y, i32* %src_y.addr, align 4
  store i32* %dest_x, i32** %dest_x.addr, align 8
  store i32* %dest_y, i32** %dest_y.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dest_widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %0, %struct._GdkRectangle* %dest_allocation)
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dest_widget.addr, align 8
  %call = call i32 @gtk_widget_get_has_window(%struct._GtkWidget* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %dest_widget.addr, align 8
  %call1 = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %2)
  %tobool2 = icmp ne %struct._GtkWidget* %call1, null
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dest_widget.addr, align 8
  %call3 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %3)
  call void @gdk_window_get_position(%struct._GdkDrawable* %call3, i32* %wx, i32* %wy)
  %4 = load i32, i32* %wx, align 4
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %dest_allocation, i32 0, i32 0
  %5 = load i32, i32* %x, align 4
  %sub = sub nsw i32 %4, %5
  %6 = load i32, i32* %src_x.addr, align 4
  %add = add nsw i32 %6, %sub
  store i32 %add, i32* %src_x.addr, align 4
  %7 = load i32, i32* %wy, align 4
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %dest_allocation, i32 0, i32 1
  %8 = load i32, i32* %y, align 4
  %sub4 = sub nsw i32 %7, %8
  %9 = load i32, i32* %src_y.addr, align 4
  %add5 = add nsw i32 %9, %sub4
  store i32 %add5, i32* %src_y.addr, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %x6 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %dest_allocation, i32 0, i32 0
  %10 = load i32, i32* %x6, align 4
  %11 = load i32, i32* %src_x.addr, align 4
  %sub7 = sub nsw i32 %11, %10
  store i32 %sub7, i32* %src_x.addr, align 4
  %y8 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %dest_allocation, i32 0, i32 1
  %12 = load i32, i32* %y8, align 4
  %13 = load i32, i32* %src_y.addr, align 4
  %sub9 = sub nsw i32 %13, %12
  store i32 %sub9, i32* %src_y.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load i32*, i32** %dest_x.addr, align 8
  %tobool10 = icmp ne i32* %14, null
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  %15 = load i32, i32* %src_x.addr, align 4
  %16 = load i32*, i32** %dest_x.addr, align 8
  store i32 %15, i32* %16, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end
  %17 = load i32*, i32** %dest_y.addr, align 8
  %tobool13 = icmp ne i32* %17, null
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.12
  %18 = load i32, i32* %src_y.addr, align 4
  %19 = load i32*, i32** %dest_y.addr, align 8
  store i32 %18, i32* %19, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.12
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_container_forall(%struct._GtkContainer*, void (%struct._GtkWidget*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @child_location_foreach(%struct._GtkWidget* %child, i8* %data) #3 {
entry:
  %child.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %child_loc = alloca %struct.ChildLocation*, align 8
  %child_allocation = alloca %struct._GdkRectangle, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp30 = alloca %struct.ChildLocation, align 8
  store %struct._GtkWidget* %child, %struct._GtkWidget** %child.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.ChildLocation*
  store %struct.ChildLocation* %1, %struct.ChildLocation** %child_loc, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  %call = call i32 @gtk_widget_is_drawable(%struct._GtkWidget* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.48

if.end:                                           ; preds = %entry
  %3 = load %struct.ChildLocation*, %struct.ChildLocation** %child_loc, align 8
  %child1 = getelementptr inbounds %struct.ChildLocation, %struct.ChildLocation* %3, i32 0, i32 0
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %child1, align 8
  %tobool2 = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool2, label %if.end.48, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.ChildLocation*, %struct.ChildLocation** %child_loc, align 8
  %container = getelementptr inbounds %struct.ChildLocation, %struct.ChildLocation* %5, i32 0, i32 1
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %container, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  %8 = load %struct.ChildLocation*, %struct.ChildLocation** %child_loc, align 8
  %x3 = getelementptr inbounds %struct.ChildLocation, %struct.ChildLocation* %8, i32 0, i32 2
  %9 = load i32, i32* %x3, align 4
  %10 = load %struct.ChildLocation*, %struct.ChildLocation** %child_loc, align 8
  %y4 = getelementptr inbounds %struct.ChildLocation, %struct.ChildLocation* %10, i32 0, i32 3
  %11 = load i32, i32* %y4, align 4
  %call5 = call i32 @gtk_widget_translate_coordinates(%struct._GtkWidget* %6, %struct._GtkWidget* %7, i32 %9, i32 %11, i32* %x, i32* %y)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.48

if.then.7:                                        ; preds = %land.lhs.true
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %12, %struct._GdkRectangle* %child_allocation)
  %13 = load i32, i32* %x, align 4
  %cmp = icmp sge i32 %13, 0
  br i1 %cmp, label %land.lhs.true.8, label %if.end.47

land.lhs.true.8:                                  ; preds = %if.then.7
  %14 = load i32, i32* %x, align 4
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 2
  %15 = load i32, i32* %width, align 4
  %cmp9 = icmp slt i32 %14, %15
  br i1 %cmp9, label %land.lhs.true.10, label %if.end.47

land.lhs.true.10:                                 ; preds = %land.lhs.true.8
  %16 = load i32, i32* %y, align 4
  %cmp11 = icmp sge i32 %16, 0
  br i1 %cmp11, label %land.lhs.true.12, label %if.end.47

land.lhs.true.12:                                 ; preds = %land.lhs.true.10
  %17 = load i32, i32* %y, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 3
  %18 = load i32, i32* %height, align 4
  %cmp13 = icmp slt i32 %17, %18
  br i1 %cmp13, label %if.then.14, label %if.end.47

if.then.14:                                       ; preds = %land.lhs.true.12
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %20, %struct._GTypeInstance** %__inst, align 8
  %call15 = call i64 @gtk_container_get_type() #7
  store i64 %call15, i64* %__t, align 8
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool16 = icmp ne %struct._GTypeInstance* %21, null
  br i1 %tobool16, label %if.else, label %if.then.17

if.then.17:                                       ; preds = %if.then.14
  store i32 0, i32* %__r, align 4
  br label %if.end.26

if.else:                                          ; preds = %if.then.14
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool18 = icmp ne %struct._GTypeClass* %23, null
  br i1 %tobool18, label %land.lhs.true.19, label %if.else.23

land.lhs.true.19:                                 ; preds = %if.else
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class20 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class20, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type, align 8
  %27 = load i64, i64* %__t, align 8
  %cmp21 = icmp eq i64 %26, %27
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %land.lhs.true.19
  store i32 1, i32* %__r, align 4
  br label %if.end.25

if.else.23:                                       ; preds = %land.lhs.true.19, %if.else
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %29 = load i64, i64* %__t, align 8
  %call24 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %28, i64 %29) #8
  store i32 %call24, i32* %__r, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.23, %if.then.22
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.17
  %30 = load i32, i32* %__r, align 4
  store i32 %30, i32* %tmp
  %31 = load i32, i32* %tmp
  %tobool27 = icmp ne i32 %31, 0
  br i1 %tobool27, label %if.then.28, label %if.else.44

if.then.28:                                       ; preds = %if.end.26
  %32 = bitcast %struct.ChildLocation* %tmp30 to i8*
  call void @llvm.memset.p0i8.i64(i8* %32, i8 0, i64 24, i32 8, i1 false)
  %33 = load i32, i32* %x, align 4
  %x31 = getelementptr inbounds %struct.ChildLocation, %struct.ChildLocation* %tmp30, i32 0, i32 2
  store i32 %33, i32* %x31, align 4
  %34 = load i32, i32* %y, align 4
  %y32 = getelementptr inbounds %struct.ChildLocation, %struct.ChildLocation* %tmp30, i32 0, i32 3
  store i32 %34, i32* %y32, align 4
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  %container33 = getelementptr inbounds %struct.ChildLocation, %struct.ChildLocation* %tmp30, i32 0, i32 1
  store %struct._GtkWidget* %35, %struct._GtkWidget** %container33, align 8
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_container_get_type() #7
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call34)
  %38 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkContainer*
  %39 = bitcast %struct.ChildLocation* %tmp30 to i8*
  call void @gtk_container_forall(%struct._GtkContainer* %38, void (%struct._GtkWidget*, i8*)* @child_location_foreach, i8* %39)
  %child36 = getelementptr inbounds %struct.ChildLocation, %struct.ChildLocation* %tmp30, i32 0, i32 0
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %child36, align 8
  %tobool37 = icmp ne %struct._GtkWidget* %40, null
  br i1 %tobool37, label %if.then.38, label %if.else.41

if.then.38:                                       ; preds = %if.then.28
  %child39 = getelementptr inbounds %struct.ChildLocation, %struct.ChildLocation* %tmp30, i32 0, i32 0
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %child39, align 8
  %42 = load %struct.ChildLocation*, %struct.ChildLocation** %child_loc, align 8
  %child40 = getelementptr inbounds %struct.ChildLocation, %struct.ChildLocation* %42, i32 0, i32 0
  store %struct._GtkWidget* %41, %struct._GtkWidget** %child40, align 8
  br label %if.end.43

if.else.41:                                       ; preds = %if.then.28
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  %44 = load %struct.ChildLocation*, %struct.ChildLocation** %child_loc, align 8
  %child42 = getelementptr inbounds %struct.ChildLocation, %struct.ChildLocation* %44, i32 0, i32 0
  store %struct._GtkWidget* %43, %struct._GtkWidget** %child42, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.41, %if.then.38
  br label %if.end.46

if.else.44:                                       ; preds = %if.end.26
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  %46 = load %struct.ChildLocation*, %struct.ChildLocation** %child_loc, align 8
  %child45 = getelementptr inbounds %struct.ChildLocation, %struct.ChildLocation* %46, i32 0, i32 0
  store %struct._GtkWidget* %45, %struct._GtkWidget** %child45, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.44, %if.end.43
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %land.lhs.true.12, %land.lhs.true.10, %land.lhs.true.8, %if.then.7
  br label %if.end.48

if.end.48:                                        ; preds = %if.then, %if.end.47, %land.lhs.true, %if.end
  ret void
}

declare i32 @gtk_widget_translate_coordinates(%struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i32*, i32*) #1

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare i32 @gtk_widget_get_has_window(%struct._GtkWidget*) #1

declare i32 @gtk_widget_is_drawable(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpUIManagerUIEntry* @gimp_ui_manager_entry_ensure(%struct._GimpUIManager* %manager, i8* %path) #3 {
entry:
  %retval = alloca %struct._GimpUIManagerUIEntry*, align 8
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  %path.addr = alloca i8*, align 8
  %entry1 = alloca %struct._GimpUIManagerUIEntry*, align 8
  %error = alloca %struct._GError*, align 8
  %gtk_manager = alloca %struct._GtkUIManager*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  store i8* %path, i8** %path.addr, align 8
  %0 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %1 = load i8*, i8** %path.addr, align 8
  %call = call %struct._GimpUIManagerUIEntry* @gimp_ui_manager_entry_get(%struct._GimpUIManager* %0, i8* %1)
  store %struct._GimpUIManagerUIEntry* %call, %struct._GimpUIManagerUIEntry** %entry1, align 8
  %2 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %entry1, align 8
  %tobool = icmp ne %struct._GimpUIManagerUIEntry* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %path.addr, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_ui_manager_entry_ensure, i32 0, i32 0), i8* %3)
  store %struct._GimpUIManagerUIEntry* null, %struct._GimpUIManagerUIEntry** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %entry1, align 8
  %merge_id = getelementptr inbounds %struct._GimpUIManagerUIEntry, %struct._GimpUIManagerUIEntry* %4, i32 0, i32 3
  %5 = load i32, i32* %merge_id, align 4
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %if.end.18, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._GError* null, %struct._GError** %error, align 8
  %6 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %7 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %entry1, align 8
  %call4 = call i32 @gimp_ui_manager_entry_load(%struct._GimpUIManager* %6, %struct._GimpUIManagerUIEntry* %7, %struct._GError** %error)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.17, label %if.then.6

if.then.6:                                        ; preds = %if.then.3
  %8 = load %struct._GError*, %struct._GError** %error, align 8
  %domain = getelementptr inbounds %struct._GError, %struct._GError* %8, i32 0, i32 0
  %9 = load i32, i32* %domain, align 4
  %call7 = call i32 @g_file_error_quark()
  %cmp = icmp eq i32 %9, %call7
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.6
  %10 = load %struct._GError*, %struct._GError** %error, align 8
  %code = getelementptr inbounds %struct._GError, %struct._GError* %10, i32 0, i32 1
  %11 = load i32, i32* %code, align 4
  %cmp8 = icmp eq i32 %11, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %land.lhs.true
  %12 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %12, i32 0, i32 2
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.31, i32 0, i32 0)) #5
  %14 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %14, i32 0, i32 2
  %15 = load i8*, i8** %message, align 8
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.32, i32 0, i32 0)) #5
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %13, %struct._GObject* null, i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), i8* %call10, i8* %15, i8* %call11)
  br label %if.end.16

if.else:                                          ; preds = %land.lhs.true, %if.then.6
  %16 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %gimp12 = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %16, i32 0, i32 2
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp12, align 8
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.33, i32 0, i32 0)) #5
  %18 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %entry1, align 8
  %basename = getelementptr inbounds %struct._GimpUIManagerUIEntry, %struct._GimpUIManagerUIEntry* %18, i32 0, i32 1
  %19 = load i8*, i8** %basename, align 8
  %call14 = call i8* @gimp_filename_to_utf8(i8* %19)
  %20 = load %struct._GError*, %struct._GError** %error, align 8
  %message15 = getelementptr inbounds %struct._GError, %struct._GError* %20, i32 0, i32 2
  %21 = load i8*, i8** %message15, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %17, %struct._GObject* null, i32 2, i8* %call13, i8* %call14, i8* %21)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.9
  call void @g_clear_error(%struct._GError** %error)
  store %struct._GimpUIManagerUIEntry* null, %struct._GimpUIManagerUIEntry** %retval
  br label %return

if.end.17:                                        ; preds = %if.then.3
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end
  %22 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %entry1, align 8
  %widget = getelementptr inbounds %struct._GimpUIManagerUIEntry, %struct._GimpUIManagerUIEntry* %22, i32 0, i32 4
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool19 = icmp ne %struct._GtkWidget* %23, null
  br i1 %tobool19, label %if.end.61, label %if.then.20

if.then.20:                                       ; preds = %if.end.18
  %24 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %25 = bitcast %struct._GimpUIManager* %24 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_ui_manager_get_type() #7
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call21)
  %26 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkUIManager*
  store %struct._GtkUIManager* %26, %struct._GtkUIManager** %gtk_manager, align 8
  %27 = load i8*, i8** @gimp_ui_manager_parent_class, align 8
  %28 = bitcast i8* %27 to %struct._GTypeClass*
  %call23 = call i64 @gtk_ui_manager_get_type() #7
  %call24 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %28, i64 %call23)
  %29 = bitcast %struct._GTypeClass* %call24 to %struct._GtkUIManagerClass*
  %get_widget = getelementptr inbounds %struct._GtkUIManagerClass, %struct._GtkUIManagerClass* %29, i32 0, i32 7
  %30 = load %struct._GtkWidget* (%struct._GtkUIManager*, i8*)*, %struct._GtkWidget* (%struct._GtkUIManager*, i8*)** %get_widget, align 8
  %31 = load %struct._GtkUIManager*, %struct._GtkUIManager** %gtk_manager, align 8
  %32 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %entry1, align 8
  %ui_path = getelementptr inbounds %struct._GimpUIManagerUIEntry, %struct._GimpUIManagerUIEntry* %32, i32 0, i32 0
  %33 = load i8*, i8** %ui_path, align 8
  %call25 = call %struct._GtkWidget* %30(%struct._GtkUIManager* %31, i8* %33)
  %34 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %entry1, align 8
  %widget26 = getelementptr inbounds %struct._GimpUIManagerUIEntry, %struct._GimpUIManagerUIEntry* %34, i32 0, i32 4
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %widget26, align 8
  %35 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %entry1, align 8
  %widget27 = getelementptr inbounds %struct._GimpUIManagerUIEntry, %struct._GimpUIManagerUIEntry* %35, i32 0, i32 4
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %widget27, align 8
  %tobool28 = icmp ne %struct._GtkWidget* %36, null
  br i1 %tobool28, label %if.then.29, label %if.else.57

if.then.29:                                       ; preds = %if.then.20
  %37 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %entry1, align 8
  %widget30 = getelementptr inbounds %struct._GimpUIManagerUIEntry, %struct._GimpUIManagerUIEntry* %37, i32 0, i32 4
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %widget30, align 8
  %39 = bitcast %struct._GtkWidget* %38 to i8*
  %call31 = call i8* @g_object_ref(i8* %39)
  %40 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %entry1, align 8
  %widget32 = getelementptr inbounds %struct._GimpUIManagerUIEntry, %struct._GimpUIManagerUIEntry* %40, i32 0, i32 4
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %widget32, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %42, %struct._GTypeInstance** %__inst, align 8
  %call33 = call i64 @gtk_menu_get_type() #7
  store i64 %call33, i64* %__t, align 8
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool34 = icmp ne %struct._GTypeInstance* %43, null
  br i1 %tobool34, label %if.else.36, label %if.then.35

if.then.35:                                       ; preds = %if.then.29
  store i32 0, i32* %__r, align 4
  br label %if.end.45

if.else.36:                                       ; preds = %if.then.29
  %44 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %44, i32 0, i32 0
  %45 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool37 = icmp ne %struct._GTypeClass* %45, null
  br i1 %tobool37, label %land.lhs.true.38, label %if.else.42

land.lhs.true.38:                                 ; preds = %if.else.36
  %46 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class39 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %46, i32 0, i32 0
  %47 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class39, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %47, i32 0, i32 0
  %48 = load i64, i64* %g_type, align 8
  %49 = load i64, i64* %__t, align 8
  %cmp40 = icmp eq i64 %48, %49
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %land.lhs.true.38
  store i32 1, i32* %__r, align 4
  br label %if.end.44

if.else.42:                                       ; preds = %land.lhs.true.38, %if.else.36
  %50 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %51 = load i64, i64* %__t, align 8
  %call43 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %50, i64 %51) #8
  store i32 %call43, i32* %__r, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.42, %if.then.41
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.35
  %52 = load i32, i32* %__r, align 4
  store i32 %52, i32* %tmp
  %53 = load i32, i32* %tmp
  %tobool46 = icmp ne i32 %53, 0
  br i1 %tobool46, label %if.then.47, label %if.end.51

if.then.47:                                       ; preds = %if.end.45
  %54 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %entry1, align 8
  %widget48 = getelementptr inbounds %struct._GimpUIManagerUIEntry, %struct._GimpUIManagerUIEntry* %54, i32 0, i32 4
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %widget48, align 8
  %56 = bitcast %struct._GtkWidget* %55 to i8*
  %call49 = call i8* @g_object_ref_sink(i8* %56)
  %57 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %entry1, align 8
  %widget50 = getelementptr inbounds %struct._GimpUIManagerUIEntry, %struct._GimpUIManagerUIEntry* %57, i32 0, i32 4
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %widget50, align 8
  %59 = bitcast %struct._GtkWidget* %58 to i8*
  call void @g_object_unref(i8* %59)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.47, %if.end.45
  %60 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %entry1, align 8
  %setup_func = getelementptr inbounds %struct._GimpUIManagerUIEntry, %struct._GimpUIManagerUIEntry* %60, i32 0, i32 2
  %61 = load void (%struct._GimpUIManager*, i8*)*, void (%struct._GimpUIManager*, i8*)** %setup_func, align 8
  %tobool52 = icmp ne void (%struct._GimpUIManager*, i8*)* %61, null
  br i1 %tobool52, label %if.then.53, label %if.end.56

if.then.53:                                       ; preds = %if.end.51
  %62 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %entry1, align 8
  %setup_func54 = getelementptr inbounds %struct._GimpUIManagerUIEntry, %struct._GimpUIManagerUIEntry* %62, i32 0, i32 2
  %63 = load void (%struct._GimpUIManager*, i8*)*, void (%struct._GimpUIManager*, i8*)** %setup_func54, align 8
  %64 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %65 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %entry1, align 8
  %ui_path55 = getelementptr inbounds %struct._GimpUIManagerUIEntry, %struct._GimpUIManagerUIEntry* %65, i32 0, i32 0
  %66 = load i8*, i8** %ui_path55, align 8
  call void %63(%struct._GimpUIManager* %64, i8* %66)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.53, %if.end.51
  br label %if.end.60

if.else.57:                                       ; preds = %if.then.20
  %67 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %entry1, align 8
  %basename58 = getelementptr inbounds %struct._GimpUIManagerUIEntry, %struct._GimpUIManagerUIEntry* %67, i32 0, i32 1
  %68 = load i8*, i8** %basename58, align 8
  %69 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %entry1, align 8
  %ui_path59 = getelementptr inbounds %struct._GimpUIManagerUIEntry, %struct._GimpUIManagerUIEntry* %69, i32 0, i32 0
  %70 = load i8*, i8** %ui_path59, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_ui_manager_entry_ensure, i32 0, i32 0), i8* %68, i8* %70)
  store %struct._GimpUIManagerUIEntry* null, %struct._GimpUIManagerUIEntry** %retval
  br label %return

if.end.60:                                        ; preds = %if.end.56
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.end.18
  %71 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %entry1, align 8
  store %struct._GimpUIManagerUIEntry* %71, %struct._GimpUIManagerUIEntry** %retval
  br label %return

return:                                           ; preds = %if.end.61, %if.else.57, %if.end.16, %if.then
  %72 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %retval
  ret %struct._GimpUIManagerUIEntry* %72
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_ui_manager_entry_load(%struct._GimpUIManager* %manager, %struct._GimpUIManagerUIEntry* %entry1, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  %entry.addr = alloca %struct._GimpUIManagerUIEntry*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %filename = alloca i8*, align 8
  %menus_dir_override = alloca i8*, align 8
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  store %struct._GimpUIManagerUIEntry* %entry1, %struct._GimpUIManagerUIEntry** %entry.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i8* null, i8** %filename, align 8
  %call = call i8* @g_getenv(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i32 0, i32 0))
  store i8* %call, i8** %menus_dir_override, align 8
  %0 = load i8*, i8** %menus_dir_override, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %menus_dir_override, align 8
  %2 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %entry.addr, align 8
  %basename = getelementptr inbounds %struct._GimpUIManagerUIEntry, %struct._GimpUIManagerUIEntry* %2, i32 0, i32 1
  %3 = load i8*, i8** %basename, align 8
  %call2 = call noalias i8* (i8*, ...) @g_build_filename(i8* %1, i8* %3, i8* null)
  store i8* %call2, i8** %filename, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call3 = call i8* @gimp_data_directory() #7
  %4 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %entry.addr, align 8
  %basename4 = getelementptr inbounds %struct._GimpUIManagerUIEntry, %struct._GimpUIManagerUIEntry* %4, i32 0, i32 1
  %5 = load i8*, i8** %basename4, align 8
  %call5 = call noalias i8* (i8*, ...) @g_build_filename(i8* %call3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i8* %5, i8* null)
  store i8* %call5, i8** %filename, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %6, i32 0, i32 2
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %7, i32 0, i32 4
  %8 = load i32, i32* %be_verbose, align 4
  %tobool6 = icmp ne i32 %8, 0
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %9 = load i8*, i8** %filename, align 8
  %call8 = call i8* @gimp_filename_to_utf8(i8* %9)
  %10 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %entry.addr, align 8
  %ui_path = getelementptr inbounds %struct._GimpUIManagerUIEntry, %struct._GimpUIManagerUIEntry* %10, i32 0, i32 0
  %11 = load i8*, i8** %ui_path, align 8
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.37, i32 0, i32 0), i8* %call8, i8* %11)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  %12 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %13 = bitcast %struct._GimpUIManager* %12 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_ui_manager_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call10)
  %14 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkUIManager*
  %15 = load i8*, i8** %filename, align 8
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call12 = call i32 @gtk_ui_manager_add_ui_from_file(%struct._GtkUIManager* %14, i8* %15, %struct._GError** %16)
  %17 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %entry.addr, align 8
  %merge_id = getelementptr inbounds %struct._GimpUIManagerUIEntry, %struct._GimpUIManagerUIEntry* %17, i32 0, i32 3
  store i32 %call12, i32* %merge_id, align 4
  %18 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %18)
  %19 = load %struct._GimpUIManagerUIEntry*, %struct._GimpUIManagerUIEntry** %entry.addr, align 8
  %merge_id13 = getelementptr inbounds %struct._GimpUIManagerUIEntry, %struct._GimpUIManagerUIEntry* %19, i32 0, i32 3
  %20 = load i32, i32* %merge_id13, align 4
  %tobool14 = icmp ne i32 %20, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.end.9
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.9
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.15
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i32 @g_file_error_quark() #1

declare void @gimp_message(%struct._Gimp*, %struct._GObject*, i32, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #6

declare i8* @gimp_filename_to_utf8(i8*) #1

declare void @g_clear_error(%struct._GError**) #1

declare i8* @g_object_ref(i8*) #1

declare i8* @g_object_ref_sink(i8*) #1

declare i8* @g_getenv(i8*) #1

declare noalias i8* @g_build_filename(i8*, ...) #1

; Function Attrs: nounwind readnone
declare i8* @gimp_data_directory() #2

declare void @g_print(i8*, ...) #1

declare i32 @gtk_ui_manager_add_ui_from_file(%struct._GtkUIManager*, i8*, %struct._GError**) #1

declare void @gimp_action_group_update(%struct._GimpActionGroup*, i8*) #1

declare void @gdk_display_get_pointer(%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*) #1

declare %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget*) #1

declare i32 @gdk_screen_get_monitor_at_point(%struct._GdkScreen*, i32, i32) #1

declare void @gdk_screen_get_monitor_geometry(%struct._GdkScreen*, i32, %struct._GdkRectangle*) #1

declare void @gtk_menu_set_screen(%struct._GtkMenu*, %struct._GdkScreen*) #1

declare void @gtk_widget_size_request(%struct._GtkWidget*, %struct._GtkRequisition*) #1

declare i32 @gtk_widget_get_direction(%struct._GtkWidget*) #1

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
