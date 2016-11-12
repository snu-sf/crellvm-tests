; ModuleID = './app/menus/window-menu.bc'
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
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }

@.str = private unnamed_addr constant [11 x i8] c"Gimp-Menus\00", align 1
@__func__.window_menu_setup = private unnamed_addr constant [18 x i8] c"window_menu_setup\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"GIMP_IS_UI_MANAGER (manager)\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"ui_path != NULL\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"move-to-screen-group-name\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"move-to-screen-ui-path\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"display-opened\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"%s/Move to Screen\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"eek\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"%s-display-merge-id\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"%s-move-to-screen-%s\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"closed\00", align 1

; Function Attrs: nounwind uwtable
define void @window_menu_setup(%struct._GimpUIManager* %manager, i8* %group_name, i8* %ui_path) #0 {
entry:
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  %group_name.addr = alloca i8*, align 8
  %ui_path.addr = alloca i8*, align 8
  %disp_manager = alloca %struct._GdkDisplayManager*, align 8
  %displays = alloca %struct._GSList*, align 8
  %list = alloca %struct._GSList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  store i8* %group_name, i8** %group_name.addr, align 8
  store i8* %ui_path, i8** %ui_path.addr, align 8
  %call = call %struct._GdkDisplayManager* @gdk_display_manager_get()
  store %struct._GdkDisplayManager* %call, %struct._GdkDisplayManager** %disp_manager, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %1 = bitcast %struct._GimpUIManager* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call1 = call i64 @gimp_ui_manager_get_type() #4
  store i64 %call1, i64* %__t, align 8
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
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.window_menu_setup, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.window_menu_setup, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %14 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %15 = bitcast %struct._GimpUIManager* %14 to %struct._GTypeInstance*
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 80)
  %16 = bitcast %struct._GTypeInstance* %call18 to %struct._GObject*
  %17 = load i8*, i8** %group_name.addr, align 8
  %call19 = call noalias i8* @g_strdup(i8* %17)
  call void @g_object_set_data_full(%struct._GObject* %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0), i8* %call19, void (i8*)* @g_free)
  %18 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %19 = bitcast %struct._GimpUIManager* %18 to %struct._GTypeInstance*
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 80)
  %20 = bitcast %struct._GTypeInstance* %call20 to %struct._GObject*
  %21 = load i8*, i8** %ui_path.addr, align 8
  %call21 = call noalias i8* @g_strdup(i8* %21)
  call void @g_object_set_data_full(%struct._GObject* %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8* %call21, void (i8*)* @g_free)
  %22 = load %struct._GdkDisplayManager*, %struct._GdkDisplayManager** %disp_manager, align 8
  %call22 = call %struct._GSList* @gdk_display_manager_list_displays(%struct._GdkDisplayManager* %22)
  store %struct._GSList* %call22, %struct._GSList** %displays, align 8
  %23 = load %struct._GSList*, %struct._GSList** %displays, align 8
  %call23 = call %struct._GSList* @g_slist_reverse(%struct._GSList* %23)
  store %struct._GSList* %call23, %struct._GSList** %displays, align 8
  %24 = load %struct._GSList*, %struct._GSList** %displays, align 8
  store %struct._GSList* %24, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.17
  %25 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool24 = icmp ne %struct._GSList* %25, null
  br i1 %tobool24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load %struct._GdkDisplayManager*, %struct._GdkDisplayManager** %disp_manager, align 8
  %27 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %27, i32 0, i32 0
  %28 = load i8*, i8** %data, align 8
  %29 = bitcast i8* %28 to %struct._GdkDisplay*
  %30 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  call void @window_menu_display_opened(%struct._GdkDisplayManager* %26, %struct._GdkDisplay* %29, %struct._GimpUIManager* %30)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool25 = icmp ne %struct._GSList* %31, null
  br i1 %tobool25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %32 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %32, i32 0, i32 1
  %33 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %33, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %struct._GSList*, %struct._GSList** %displays, align 8
  call void @g_slist_free(%struct._GSList* %34)
  %35 = load %struct._GdkDisplayManager*, %struct._GdkDisplayManager** %disp_manager, align 8
  %36 = bitcast %struct._GdkDisplayManager* %35 to i8*
  %37 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %38 = bitcast %struct._GimpUIManager* %37 to %struct._GTypeInstance*
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 80)
  %39 = bitcast %struct._GTypeInstance* %call26 to %struct._GObject*
  %40 = bitcast %struct._GObject* %39 to i8*
  %call27 = call i64 @g_signal_connect_object(i8* %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GdkDisplayManager*, %struct._GdkDisplay*, %struct._GimpUIManager*)* @window_menu_display_opened to void ()*), i8* %40, i32 0)
  br label %return

return:                                           ; preds = %for.end, %if.else.15, %if.else.10
  ret void
}

declare %struct._GdkDisplayManager* @gdk_display_manager_get() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_ui_manager_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare noalias i8* @g_strdup(i8*) #1

declare void @g_free(i8*) #1

declare %struct._GSList* @gdk_display_manager_list_displays(%struct._GdkDisplayManager*) #1

declare %struct._GSList* @g_slist_reverse(%struct._GSList*) #1

; Function Attrs: nounwind uwtable
define internal void @window_menu_display_opened(%struct._GdkDisplayManager* %disp_manager, %struct._GdkDisplay* %display, %struct._GimpUIManager* %manager) #0 {
entry:
  %disp_manager.addr = alloca %struct._GdkDisplayManager*, align 8
  %display.addr = alloca %struct._GdkDisplay*, align 8
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  %ui_manager = alloca %struct._GtkUIManager*, align 8
  %group_name = alloca i8*, align 8
  %ui_path = alloca i8*, align 8
  %display_name = alloca i8*, align 8
  %action_path = alloca i8*, align 8
  %merge_key = alloca i8*, align 8
  %merge_id = alloca i32, align 4
  %n_screens = alloca i32, align 4
  %i = alloca i32, align 4
  %screen = alloca %struct._GdkScreen*, align 8
  %screen_name = alloca i8*, align 8
  %action_name = alloca i8*, align 8
  store %struct._GdkDisplayManager* %disp_manager, %struct._GdkDisplayManager** %disp_manager.addr, align 8
  store %struct._GdkDisplay* %display, %struct._GdkDisplay** %display.addr, align 8
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  %0 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %1 = bitcast %struct._GimpUIManager* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_ui_manager_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkUIManager*
  store %struct._GtkUIManager* %2, %struct._GtkUIManager** %ui_manager, align 8
  %3 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %4 = bitcast %struct._GimpUIManager* %3 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 80)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %call3 = call i8* @g_object_get_data(%struct._GObject* %5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store i8* %call3, i8** %group_name, align 8
  %6 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %7 = bitcast %struct._GimpUIManager* %6 to %struct._GTypeInstance*
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 80)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GObject*
  %call5 = call i8* @g_object_get_data(%struct._GObject* %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0))
  store i8* %call5, i8** %ui_path, align 8
  %9 = load i8*, i8** %ui_path, align 8
  %call6 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i8* %9)
  store i8* %call6, i8** %action_path, align 8
  %10 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display.addr, align 8
  %call7 = call i8* @gdk_display_get_name(%struct._GdkDisplay* %10)
  store i8* %call7, i8** %display_name, align 8
  %11 = load i8*, i8** %display_name, align 8
  %tobool = icmp ne i8* %11, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8** %display_name, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i8*, i8** %display_name, align 8
  %call8 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i8* %12)
  store i8* %call8, i8** %merge_key, align 8
  %13 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager, align 8
  %call9 = call i32 @gtk_ui_manager_new_merge_id(%struct._GtkUIManager* %13)
  store i32 %call9, i32* %merge_id, align 4
  %14 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %15 = bitcast %struct._GimpUIManager* %14 to %struct._GTypeInstance*
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 80)
  %16 = bitcast %struct._GTypeInstance* %call10 to %struct._GObject*
  %17 = load i8*, i8** %merge_key, align 8
  %18 = load i32, i32* %merge_id, align 4
  %conv = zext i32 %18 to i64
  %19 = inttoptr i64 %conv to i8*
  call void @g_object_set_data(%struct._GObject* %16, i8* %17, i8* %19)
  %20 = load i8*, i8** %merge_key, align 8
  call void @g_free(i8* %20)
  %21 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display.addr, align 8
  %call11 = call i32 @gdk_display_get_n_screens(%struct._GdkDisplay* %21)
  store i32 %call11, i32* %n_screens, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %n_screens, align 4
  %cmp = icmp slt i32 %22, %23
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display.addr, align 8
  %25 = load i32, i32* %i, align 4
  %call13 = call %struct._GdkScreen* @gdk_display_get_screen(%struct._GdkDisplay* %24, i32 %25)
  store %struct._GdkScreen* %call13, %struct._GdkScreen** %screen, align 8
  %26 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %call14 = call i8* @gdk_screen_make_display_name(%struct._GdkScreen* %26)
  store i8* %call14, i8** %screen_name, align 8
  %27 = load i8*, i8** %group_name, align 8
  %28 = load i8*, i8** %screen_name, align 8
  %call15 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), i8* %27, i8* %28)
  store i8* %call15, i8** %action_name, align 8
  %29 = load i8*, i8** %screen_name, align 8
  call void @g_free(i8* %29)
  %30 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager, align 8
  %31 = load i32, i32* %merge_id, align 4
  %32 = load i8*, i8** %action_path, align 8
  %33 = load i8*, i8** %action_name, align 8
  %34 = load i8*, i8** %action_name, align 8
  call void @gtk_ui_manager_add_ui(%struct._GtkUIManager* %30, i32 %31, i8* %32, i8* %33, i8* %34, i32 32, i32 0)
  %35 = load i8*, i8** %action_name, align 8
  call void @g_free(i8* %35)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %i, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load i8*, i8** %action_path, align 8
  call void @g_free(i8* %37)
  %38 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display.addr, align 8
  %39 = bitcast %struct._GdkDisplay* %38 to i8*
  %40 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %41 = bitcast %struct._GimpUIManager* %40 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 80)
  %42 = bitcast %struct._GTypeInstance* %call16 to %struct._GObject*
  %43 = bitcast %struct._GObject* %42 to i8*
  %call17 = call i64 @g_signal_connect_object(i8* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GdkDisplay*, i32, %struct._GimpUIManager*)* @window_menu_display_closed to void ()*), i8* %43, i32 0)
  ret void
}

declare void @g_slist_free(%struct._GSList*) #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_ui_manager_get_type() #2

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i8* @gdk_display_get_name(%struct._GdkDisplay*) #1

declare i32 @gtk_ui_manager_new_merge_id(%struct._GtkUIManager*) #1

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare i32 @gdk_display_get_n_screens(%struct._GdkDisplay*) #1

declare %struct._GdkScreen* @gdk_display_get_screen(%struct._GdkDisplay*, i32) #1

declare i8* @gdk_screen_make_display_name(%struct._GdkScreen*) #1

declare void @gtk_ui_manager_add_ui(%struct._GtkUIManager*, i32, i8*, i8*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @window_menu_display_closed(%struct._GdkDisplay* %display, i32 %is_error, %struct._GimpUIManager* %manager) #0 {
entry:
  %display.addr = alloca %struct._GdkDisplay*, align 8
  %is_error.addr = alloca i32, align 4
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  %display_name = alloca i8*, align 8
  %merge_key = alloca i8*, align 8
  %merge_id = alloca i32, align 4
  store %struct._GdkDisplay* %display, %struct._GdkDisplay** %display.addr, align 8
  store i32 %is_error, i32* %is_error.addr, align 4
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  %0 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display.addr, align 8
  %call = call i8* @gdk_display_get_name(%struct._GdkDisplay* %0)
  store i8* %call, i8** %display_name, align 8
  %1 = load i8*, i8** %display_name, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8** %display_name, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %display_name, align 8
  %call1 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i8* %2)
  store i8* %call1, i8** %merge_key, align 8
  %3 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %4 = bitcast %struct._GimpUIManager* %3 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 80)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %6 = load i8*, i8** %merge_key, align 8
  %call3 = call i8* @g_object_get_data(%struct._GObject* %5, i8* %6)
  %7 = ptrtoint i8* %call3 to i64
  %conv = trunc i64 %7 to i32
  store i32 %conv, i32* %merge_id, align 4
  %8 = load i8*, i8** %merge_key, align 8
  call void @g_free(i8* %8)
  %9 = load i32, i32* %merge_id, align 4
  %tobool4 = icmp ne i32 %9, 0
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %10 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %11 = bitcast %struct._GimpUIManager* %10 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_ui_manager_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call6)
  %12 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkUIManager*
  %13 = load i32, i32* %merge_id, align 4
  call void @gtk_ui_manager_remove_ui(%struct._GtkUIManager* %12, i32 %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  ret void
}

declare void @gtk_ui_manager_remove_ui(%struct._GtkUIManager*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
