; ModuleID = './app/core/gimp-gui.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { {}*, {}*, {}*, {}*, {}*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, {}* }
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
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_gui_init = private unnamed_addr constant [14 x i8] c"gimp_gui_init\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@__func__.gimp_gui_ungrab = private unnamed_addr constant [16 x i8] c"gimp_gui_ungrab\00", align 1
@__func__.gimp_threads_enter = private unnamed_addr constant [19 x i8] c"gimp_threads_enter\00", align 1
@__func__.gimp_threads_leave = private unnamed_addr constant [19 x i8] c"gimp_threads_leave\00", align 1
@__func__.gimp_set_busy = private unnamed_addr constant [14 x i8] c"gimp_set_busy\00", align 1
@__func__.gimp_set_busy_until_idle = private unnamed_addr constant [25 x i8] c"gimp_set_busy_until_idle\00", align 1
@__func__.gimp_unset_busy = private unnamed_addr constant [16 x i8] c"gimp_unset_busy\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"gimp->busy > 0\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Message\00", align 1
@__func__.gimp_show_message = private unnamed_addr constant [18 x i8] c"gimp_show_message\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"handler == NULL || G_IS_OBJECT (handler)\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"message != NULL\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"GIMP\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"%s-%s: %s\0A\0A\00", align 1
@__func__.gimp_help = private unnamed_addr constant [10 x i8] c"gimp_help\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"progress == NULL || GIMP_IS_PROGRESS (progress)\00", align 1
@__func__.gimp_get_program_class = private unnamed_addr constant [23 x i8] c"gimp_get_program_class\00", align 1
@__func__.gimp_get_display_name = private unnamed_addr constant [22 x i8] c"gimp_get_display_name\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"monitor_number != NULL\00", align 1
@__func__.gimp_get_user_time = private unnamed_addr constant [19 x i8] c"gimp_get_user_time\00", align 1
@__func__.gimp_get_theme_dir = private unnamed_addr constant [19 x i8] c"gimp_get_theme_dir\00", align 1
@__func__.gimp_get_window_strategy = private unnamed_addr constant [25 x i8] c"gimp_get_window_strategy\00", align 1
@__func__.gimp_get_empty_display = private unnamed_addr constant [23 x i8] c"gimp_get_empty_display\00", align 1
@__func__.gimp_get_display_by_ID = private unnamed_addr constant [23 x i8] c"gimp_get_display_by_ID\00", align 1
@__func__.gimp_get_display_ID = private unnamed_addr constant [20 x i8] c"gimp_get_display_ID\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"GIMP_IS_OBJECT (display)\00", align 1
@__func__.gimp_get_display_window_id = private unnamed_addr constant [27 x i8] c"gimp_get_display_window_id\00", align 1
@__func__.gimp_create_display = private unnamed_addr constant [20 x i8] c"gimp_create_display\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"image == NULL || GIMP_IS_IMAGE (image)\00", align 1
@__func__.gimp_delete_display = private unnamed_addr constant [20 x i8] c"gimp_delete_display\00", align 1
@__func__.gimp_reconnect_displays = private unnamed_addr constant [24 x i8] c"gimp_reconnect_displays\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"GIMP_IS_IMAGE (old_image)\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"GIMP_IS_IMAGE (new_image)\00", align 1
@__func__.gimp_new_progress = private unnamed_addr constant [18 x i8] c"gimp_new_progress\00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c"display == NULL || GIMP_IS_OBJECT (display)\00", align 1
@__func__.gimp_free_progress = private unnamed_addr constant [19 x i8] c"gimp_free_progress\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"GIMP_IS_PROGRESS (progress)\00", align 1
@__func__.gimp_pdb_dialog_new = private unnamed_addr constant [20 x i8] c"gimp_pdb_dialog_new\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"GIMP_IS_CONTAINER (container)\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"title != NULL\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"callback_name != NULL\00", align 1
@__func__.gimp_pdb_dialog_set = private unnamed_addr constant [20 x i8] c"gimp_pdb_dialog_set\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"object_name != NULL\00", align 1
@__func__.gimp_pdb_dialog_close = private unnamed_addr constant [22 x i8] c"gimp_pdb_dialog_close\00", align 1
@__func__.gimp_recent_list_add_uri = private unnamed_addr constant [25 x i8] c"gimp_recent_list_add_uri\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"uri != NULL\00", align 1
@__func__.gimp_recent_list_load = private unnamed_addr constant [22 x i8] c"gimp_recent_list_load\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_gui_init(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.gimp_gui_init, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 14
  %ungrab = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui, i32 0, i32 0
  %ungrab11 = bitcast {}** %ungrab to void (%struct._Gimp*)**
  store void (%struct._Gimp*)* null, void (%struct._Gimp*)** %ungrab11, align 8
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui12 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %14, i32 0, i32 14
  %threads_enter = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui12, i32 0, i32 1
  %threads_enter13 = bitcast {}** %threads_enter to void (%struct._Gimp*)**
  store void (%struct._Gimp*)* null, void (%struct._Gimp*)** %threads_enter13, align 8
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui14 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 14
  %threads_leave = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui14, i32 0, i32 2
  %threads_leave15 = bitcast {}** %threads_leave to void (%struct._Gimp*)**
  store void (%struct._Gimp*)* null, void (%struct._Gimp*)** %threads_leave15, align 8
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui16 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %16, i32 0, i32 14
  %set_busy = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui16, i32 0, i32 3
  %set_busy17 = bitcast {}** %set_busy to void (%struct._Gimp*)**
  store void (%struct._Gimp*)* null, void (%struct._Gimp*)** %set_busy17, align 8
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui18 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %17, i32 0, i32 14
  %unset_busy = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui18, i32 0, i32 4
  %unset_busy19 = bitcast {}** %unset_busy to void (%struct._Gimp*)**
  store void (%struct._Gimp*)* null, void (%struct._Gimp*)** %unset_busy19, align 8
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui20 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %18, i32 0, i32 14
  %show_message = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui20, i32 0, i32 5
  store void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)* null, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)** %show_message, align 8
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui21 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %19, i32 0, i32 14
  %help = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui21, i32 0, i32 6
  store void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)* null, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)** %help, align 8
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui22 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %20, i32 0, i32 14
  %get_program_class = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui22, i32 0, i32 7
  store i8* (%struct._Gimp*)* null, i8* (%struct._Gimp*)** %get_program_class, align 8
  %21 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui23 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %21, i32 0, i32 14
  %get_display_name = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui23, i32 0, i32 8
  store i8* (%struct._Gimp*, i32, i32*)* null, i8* (%struct._Gimp*, i32, i32*)** %get_display_name, align 8
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui24 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %22, i32 0, i32 14
  %get_user_time = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui24, i32 0, i32 9
  store i32 (%struct._Gimp*)* null, i32 (%struct._Gimp*)** %get_user_time, align 8
  %23 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui25 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %23, i32 0, i32 14
  %get_theme_dir = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui25, i32 0, i32 10
  store i8* (%struct._Gimp*)* null, i8* (%struct._Gimp*)** %get_theme_dir, align 8
  %24 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui26 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %24, i32 0, i32 14
  %display_get_by_id = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui26, i32 0, i32 13
  store %struct._GimpObject* (%struct._Gimp*, i32)* null, %struct._GimpObject* (%struct._Gimp*, i32)** %display_get_by_id, align 8
  %25 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui27 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %25, i32 0, i32 14
  %display_get_id = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui27, i32 0, i32 14
  store i32 (%struct._GimpObject*)* null, i32 (%struct._GimpObject*)** %display_get_id, align 8
  %26 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui28 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %26, i32 0, i32 14
  %display_get_window_id = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui28, i32 0, i32 15
  store i32 (%struct._GimpObject*)* null, i32 (%struct._GimpObject*)** %display_get_window_id, align 8
  %27 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui29 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %27, i32 0, i32 14
  %display_create = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui29, i32 0, i32 16
  store %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)* null, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)** %display_create, align 8
  %28 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui30 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %28, i32 0, i32 14
  %display_delete = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui30, i32 0, i32 17
  store void (%struct._GimpObject*)* null, void (%struct._GimpObject*)** %display_delete, align 8
  %29 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui31 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %29, i32 0, i32 14
  %displays_reconnect = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui31, i32 0, i32 18
  store void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)* null, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)** %displays_reconnect, align 8
  %30 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui32 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %30, i32 0, i32 14
  %progress_new = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui32, i32 0, i32 19
  store %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)* null, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)** %progress_new, align 8
  %31 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui33 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %31, i32 0, i32 14
  %progress_free = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui33, i32 0, i32 20
  store void (%struct._Gimp*, %struct._GimpProgress*)* null, void (%struct._Gimp*, %struct._GimpProgress*)** %progress_free, align 8
  %32 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui34 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %32, i32 0, i32 14
  %pdb_dialog_set = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui34, i32 0, i32 22
  store i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)* null, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)** %pdb_dialog_set, align 8
  %33 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui35 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %33, i32 0, i32 14
  %pdb_dialog_close = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui35, i32 0, i32 23
  store i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)* null, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)** %pdb_dialog_close, align 8
  %34 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui36 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %34, i32 0, i32 14
  %recent_list_add_uri = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui36, i32 0, i32 24
  store i32 (%struct._Gimp*, i8*, i8*)* null, i32 (%struct._Gimp*, i8*, i8*)** %recent_list_add_uri, align 8
  %35 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui37 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %35, i32 0, i32 14
  %recent_list_load = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui37, i32 0, i32 25
  %recent_list_load38 = bitcast {}** %recent_list_load to void (%struct._Gimp*)**
  store void (%struct._Gimp*)* null, void (%struct._Gimp*)** %recent_list_load38, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @gimp_gui_ungrab(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_gui_ungrab, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.17

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 14
  %ungrab = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui, i32 0, i32 0
  %ungrab11 = bitcast {}** %ungrab to void (%struct._Gimp*)**
  %14 = load void (%struct._Gimp*)*, void (%struct._Gimp*)** %ungrab11, align 8
  %tobool12 = icmp ne void (%struct._Gimp*)* %14, null
  br i1 %tobool12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %do.end
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui14 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 14
  %ungrab15 = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui14, i32 0, i32 0
  %ungrab16 = bitcast {}** %ungrab15 to void (%struct._Gimp*)**
  %16 = load void (%struct._Gimp*)*, void (%struct._Gimp*)** %ungrab16, align 8
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void %16(%struct._Gimp* %17)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_threads_enter(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_threads_enter, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.17

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 14
  %threads_enter = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui, i32 0, i32 1
  %threads_enter11 = bitcast {}** %threads_enter to void (%struct._Gimp*)**
  %14 = load void (%struct._Gimp*)*, void (%struct._Gimp*)** %threads_enter11, align 8
  %tobool12 = icmp ne void (%struct._Gimp*)* %14, null
  br i1 %tobool12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %do.end
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui14 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 14
  %threads_enter15 = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui14, i32 0, i32 1
  %threads_enter16 = bitcast {}** %threads_enter15 to void (%struct._Gimp*)**
  %16 = load void (%struct._Gimp*)*, void (%struct._Gimp*)** %threads_enter16, align 8
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void %16(%struct._Gimp* %17)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_threads_leave(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_threads_leave, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.17

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 14
  %threads_leave = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui, i32 0, i32 2
  %threads_leave11 = bitcast {}** %threads_leave to void (%struct._Gimp*)**
  %14 = load void (%struct._Gimp*)*, void (%struct._Gimp*)** %threads_leave11, align 8
  %tobool12 = icmp ne void (%struct._Gimp*)* %14, null
  br i1 %tobool12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %do.end
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui14 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 14
  %threads_leave15 = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui14, i32 0, i32 2
  %threads_leave16 = bitcast {}** %threads_leave15 to void (%struct._Gimp*)**
  %16 = load void (%struct._Gimp*)*, void (%struct._Gimp*)** %threads_leave16, align 8
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void %16(%struct._Gimp* %17)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_set_busy(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.gimp_set_busy, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.21

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %busy = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 16
  %14 = load i32, i32* %busy, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %busy, align 4
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %busy11 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 16
  %16 = load i32, i32* %busy11, align 4
  %cmp12 = icmp eq i32 %16, 1
  br i1 %cmp12, label %if.then.13, label %if.end.21

if.then.13:                                       ; preds = %do.end
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui = getelementptr inbounds %struct._Gimp, %struct._Gimp* %17, i32 0, i32 14
  %set_busy = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui, i32 0, i32 3
  %set_busy14 = bitcast {}** %set_busy to void (%struct._Gimp*)**
  %18 = load void (%struct._Gimp*)*, void (%struct._Gimp*)** %set_busy14, align 8
  %tobool15 = icmp ne void (%struct._Gimp*)* %18, null
  br i1 %tobool15, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %if.then.13
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui17 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %19, i32 0, i32 14
  %set_busy18 = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui17, i32 0, i32 3
  %set_busy19 = bitcast {}** %set_busy18 to void (%struct._Gimp*)**
  %20 = load void (%struct._Gimp*)*, void (%struct._Gimp*)** %set_busy19, align 8
  %21 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void %20(%struct._Gimp* %21)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %if.then.13
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.9, %if.end.20, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_set_busy_until_idle(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_set_busy_until_idle, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.15

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %busy_idle_id = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 17
  %14 = load i32, i32* %busy_idle_id, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.end.15, label %if.then.12

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_set_busy(%struct._Gimp* %15)
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %17 = bitcast %struct._Gimp* %16 to i8*
  %call13 = call i32 @g_idle_add_full(i32 -100, i32 (i8*)* @gimp_idle_unset_busy, i8* %17, void (i8*)* null)
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %busy_idle_id14 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %18, i32 0, i32 17
  store i32 %call13, i32* %busy_idle_id14, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.9, %if.then.12, %do.end
  ret void
}

declare i32 @g_idle_add_full(i32, i32 (i8*)*, i8*, void (i8*)*) #3

; Function Attrs: nounwind uwtable
define internal i32 @gimp_idle_unset_busy(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._Gimp*
  store %struct._Gimp* %1, %struct._Gimp** %gimp, align 8
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @gimp_unset_busy(%struct._Gimp* %2)
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %busy_idle_id = getelementptr inbounds %struct._Gimp, %struct._Gimp* %3, i32 0, i32 17
  store i32 0, i32* %busy_idle_id, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @gimp_unset_busy(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_unset_busy, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.28

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %busy = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 16
  %14 = load i32, i32* %busy, align 4
  %cmp12 = icmp sgt i32 %14, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_unset_busy, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.28

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %busy17 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 16
  %16 = load i32, i32* %busy17, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %busy17, align 4
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %busy18 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %17, i32 0, i32 16
  %18 = load i32, i32* %busy18, align 4
  %cmp19 = icmp eq i32 %18, 0
  br i1 %cmp19, label %if.then.20, label %if.end.28

if.then.20:                                       ; preds = %do.end.16
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui = getelementptr inbounds %struct._Gimp, %struct._Gimp* %19, i32 0, i32 14
  %unset_busy = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui, i32 0, i32 4
  %unset_busy21 = bitcast {}** %unset_busy to void (%struct._Gimp*)**
  %20 = load void (%struct._Gimp*)*, void (%struct._Gimp*)** %unset_busy21, align 8
  %tobool22 = icmp ne void (%struct._Gimp*)* %20, null
  br i1 %tobool22, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %if.then.20
  %21 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui24 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %21, i32 0, i32 14
  %unset_busy25 = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui24, i32 0, i32 4
  %unset_busy26 = bitcast {}** %unset_busy25 to void (%struct._Gimp*)**
  %22 = load void (%struct._Gimp*)*, void (%struct._Gimp*)** %unset_busy26, align 8
  %23 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void %22(%struct._Gimp* %23)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.23, %if.then.20
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.9, %if.else.14, %if.end.27, %do.end.16
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_show_message(%struct._Gimp* %gimp, %struct._GObject* %handler, i32 %severity, i8* %domain, i8* %message) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %handler.addr = alloca %struct._GObject*, align 8
  %severity.addr = alloca i32, align 4
  %domain.addr = alloca i8*, align 8
  %message.addr = alloca i8*, align 8
  %desc = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst37 = alloca %struct._GTypeInstance*, align 8
  %__t39 = alloca i64, align 8
  %__r42 = alloca i32, align 4
  %tmp57 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GObject* %handler, %struct._GObject** %handler.addr, align 8
  store i32 %severity, i32* %severity.addr, align 4
  store i8* %domain, i8** %domain.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8** %desc, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_show_message, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GObject*, %struct._GObject** %handler.addr, align 8
  %cmp12 = icmp eq %struct._GObject* %13, null
  br i1 %cmp12, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GObject*, %struct._GObject** %handler.addr, align 8
  %15 = bitcast %struct._GObject* %14 to %struct._GTypeInstance*
  %call13 = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %15, i64 80) #7
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %lor.lhs.false, %do.body.11
  br label %if.end.17

if.else.16:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_show_message, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %16 = load i8*, i8** %message.addr, align 8
  %cmp20 = icmp ne i8* %16, null
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.body.19
  br label %if.end.23

if.else.22:                                       ; preds = %do.body.19
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_show_message, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.23:                                        ; preds = %if.then.21
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  %17 = load i8*, i8** %domain.addr, align 8
  %tobool25 = icmp ne i8* %17, null
  br i1 %tobool25, label %if.end.28, label %if.then.26

if.then.26:                                       ; preds = %do.end.24
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0)) #5
  store i8* %call27, i8** %domain.addr, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %do.end.24
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %console_messages = getelementptr inbounds %struct._Gimp, %struct._Gimp* %18, i32 0, i32 11
  %19 = load i32, i32* %console_messages, align 4
  %tobool29 = icmp ne i32 %19, 0
  br i1 %tobool29, label %if.end.67, label %if.then.30

if.then.30:                                       ; preds = %if.end.28
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui = getelementptr inbounds %struct._Gimp, %struct._Gimp* %20, i32 0, i32 14
  %show_message = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui, i32 0, i32 5
  %21 = load void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)** %show_message, align 8
  %tobool31 = icmp ne void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)* %21, null
  br i1 %tobool31, label %if.then.32, label %if.else.35

if.then.32:                                       ; preds = %if.then.30
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui33 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %22, i32 0, i32 14
  %show_message34 = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui33, i32 0, i32 5
  %23 = load void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)** %show_message34, align 8
  %24 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %25 = load %struct._GObject*, %struct._GObject** %handler.addr, align 8
  %26 = load i32, i32* %severity.addr, align 4
  %27 = load i8*, i8** %domain.addr, align 8
  %28 = load i8*, i8** %message.addr, align 8
  call void %23(%struct._Gimp* %24, %struct._GObject* %25, i32 %26, i8* %27, i8* %28)
  br label %return

if.else.35:                                       ; preds = %if.then.30
  %29 = load %struct._GObject*, %struct._GObject** %handler.addr, align 8
  %30 = bitcast %struct._GObject* %29 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %30, %struct._GTypeInstance** %__inst37, align 8
  %call40 = call i64 @gimp_progress_interface_get_type() #6
  store i64 %call40, i64* %__t39, align 8
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst37, align 8
  %tobool43 = icmp ne %struct._GTypeInstance* %31, null
  br i1 %tobool43, label %if.else.45, label %if.then.44

if.then.44:                                       ; preds = %if.else.35
  store i32 0, i32* %__r42, align 4
  br label %if.end.56

if.else.45:                                       ; preds = %if.else.35
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst37, align 8
  %g_class46 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class46, align 8
  %tobool47 = icmp ne %struct._GTypeClass* %33, null
  br i1 %tobool47, label %land.lhs.true.48, label %if.else.53

land.lhs.true.48:                                 ; preds = %if.else.45
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst37, align 8
  %g_class49 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class49, align 8
  %g_type50 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %35, i32 0, i32 0
  %36 = load i64, i64* %g_type50, align 8
  %37 = load i64, i64* %__t39, align 8
  %cmp51 = icmp eq i64 %36, %37
  br i1 %cmp51, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %land.lhs.true.48
  store i32 1, i32* %__r42, align 4
  br label %if.end.55

if.else.53:                                       ; preds = %land.lhs.true.48, %if.else.45
  %38 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst37, align 8
  %39 = load i64, i64* %__t39, align 8
  %call54 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %38, i64 %39) #7
  store i32 %call54, i32* %__r42, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.53, %if.then.52
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then.44
  %40 = load i32, i32* %__r42, align 4
  store i32 %40, i32* %tmp57
  %41 = load i32, i32* %tmp57
  %tobool58 = icmp ne i32 %41, 0
  br i1 %tobool58, label %land.lhs.true.59, label %if.end.65

land.lhs.true.59:                                 ; preds = %if.end.56
  %42 = load %struct._GObject*, %struct._GObject** %handler.addr, align 8
  %43 = bitcast %struct._GObject* %42 to %struct._GTypeInstance*
  %call60 = call i64 @gimp_progress_interface_get_type() #6
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call60)
  %44 = bitcast %struct._GTypeInstance* %call61 to %struct._GimpProgress*
  %45 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %46 = load i32, i32* %severity.addr, align 4
  %47 = load i8*, i8** %domain.addr, align 8
  %48 = load i8*, i8** %message.addr, align 8
  %call62 = call i32 @gimp_progress_message(%struct._GimpProgress* %44, %struct._Gimp* %45, i32 %46, i8* %47, i8* %48)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %land.lhs.true.59
  br label %return

if.end.65:                                        ; preds = %land.lhs.true.59, %if.end.56
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.end.28
  %call68 = call i64 @gimp_message_severity_get_type() #6
  %49 = load i32, i32* %severity.addr, align 4
  %call69 = call i32 @gimp_enum_get_value(i64 %call68, i32 %49, i8** null, i8** null, i8** %desc, i8** null)
  %50 = load i8*, i8** %domain.addr, align 8
  %51 = load i8*, i8** %desc, align 8
  %52 = load i8*, i8** %message.addr, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* %50, i8* %51, i8* %52)
  br label %return

return:                                           ; preds = %if.end.67, %if.then.64, %if.then.32, %if.else.22, %if.else.16, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance*, i64) #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #1

declare i32 @gimp_progress_message(%struct._GimpProgress*, %struct._Gimp*, i32, i8*, i8*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare i32 @gimp_enum_get_value(i64, i32, i8**, i8**, i8**, i8**) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_message_severity_get_type() #1

declare void @g_printerr(i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @gimp_help(%struct._Gimp* %gimp, %struct._GimpProgress* %progress, i8* %help_domain, i8* %help_id) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %help_domain.addr = alloca i8*, align 8
  %help_id.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i8* %help_domain, i8** %help_domain.addr, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.gimp_help, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.44

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %cmp12 = icmp eq %struct._GimpProgress* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %15 = bitcast %struct._GimpProgress* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_progress_interface_get_type() #6
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %lor.lhs.false
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type27, align 8
  %22 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %21, %22
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %24 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #7
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %25 = load i32, i32* %__r19, align 4
  store i32 %25, i32* %tmp34
  %26 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %26, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33, %do.body.11
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.gimp_help, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.44

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui = getelementptr inbounds %struct._Gimp, %struct._Gimp* %27, i32 0, i32 14
  %help = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui, i32 0, i32 6
  %28 = load void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)** %help, align 8
  %tobool40 = icmp ne void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)* %28, null
  br i1 %tobool40, label %if.then.41, label %if.end.44

if.then.41:                                       ; preds = %do.end.39
  %29 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui42 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %29, i32 0, i32 14
  %help43 = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui42, i32 0, i32 6
  %30 = load void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)** %help43, align 8
  %31 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %32 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %33 = load i8*, i8** %help_domain.addr, align 8
  %34 = load i8*, i8** %help_id.addr, align 8
  call void %30(%struct._Gimp* %31, %struct._GimpProgress* %32, i8* %33, i8* %34)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.9, %if.else.37, %if.then.41, %do.end.39
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @gimp_get_program_class(%struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca i8*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_get_program_class, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 14
  %get_program_class = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui, i32 0, i32 7
  %14 = load i8* (%struct._Gimp*)*, i8* (%struct._Gimp*)** %get_program_class, align 8
  %tobool11 = icmp ne i8* (%struct._Gimp*)* %14, null
  br i1 %tobool11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui13 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 14
  %get_program_class14 = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui13, i32 0, i32 7
  %16 = load i8* (%struct._Gimp*)*, i8* (%struct._Gimp*)** %get_program_class14, align 8
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call15 = call i8* %16(%struct._Gimp* %17)
  store i8* %call15, i8** %retval
  br label %return

if.end.16:                                        ; preds = %do.end
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.12, %if.else.9
  %18 = load i8*, i8** %retval
  ret i8* %18
}

; Function Attrs: nounwind uwtable
define i8* @gimp_get_display_name(%struct._Gimp* %gimp, i32 %display_ID, i32* %monitor_number) #0 {
entry:
  %retval = alloca i8*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %display_ID.addr = alloca i32, align 4
  %monitor_number.addr = alloca i32*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %display_ID, i32* %display_ID.addr, align 4
  store i32* %monitor_number, i32** %monitor_number.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_get_display_name, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32*, i32** %monitor_number.addr, align 8
  %cmp12 = icmp ne i32* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_get_display_name, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui = getelementptr inbounds %struct._Gimp, %struct._Gimp* %14, i32 0, i32 14
  %get_display_name = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui, i32 0, i32 8
  %15 = load i8* (%struct._Gimp*, i32, i32*)*, i8* (%struct._Gimp*, i32, i32*)** %get_display_name, align 8
  %tobool17 = icmp ne i8* (%struct._Gimp*, i32, i32*)* %15, null
  br i1 %tobool17, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %do.end.16
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui19 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %16, i32 0, i32 14
  %get_display_name20 = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui19, i32 0, i32 8
  %17 = load i8* (%struct._Gimp*, i32, i32*)*, i8* (%struct._Gimp*, i32, i32*)** %get_display_name20, align 8
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %19 = load i32, i32* %display_ID.addr, align 4
  %20 = load i32*, i32** %monitor_number.addr, align 8
  %call21 = call i8* %17(%struct._Gimp* %18, i32 %19, i32* %20)
  store i8* %call21, i8** %retval
  br label %return

if.end.22:                                        ; preds = %do.end.16
  %21 = load i32*, i32** %monitor_number.addr, align 8
  store i32 0, i32* %21, align 4
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.18, %if.else.14, %if.else.9
  %22 = load i8*, i8** %retval
  ret i8* %22
}

; Function Attrs: nounwind uwtable
define i32 @gimp_get_user_time(%struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_get_user_time, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 14
  %get_user_time = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui, i32 0, i32 9
  %14 = load i32 (%struct._Gimp*)*, i32 (%struct._Gimp*)** %get_user_time, align 8
  %tobool11 = icmp ne i32 (%struct._Gimp*)* %14, null
  br i1 %tobool11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui13 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 14
  %get_user_time14 = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui13, i32 0, i32 9
  %16 = load i32 (%struct._Gimp*)*, i32 (%struct._Gimp*)** %get_user_time14, align 8
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call15 = call i32 %16(%struct._Gimp* %17)
  store i32 %call15, i32* %retval
  br label %return

if.end.16:                                        ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.12, %if.else.9
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i8* @gimp_get_theme_dir(%struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca i8*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_get_theme_dir, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 14
  %get_theme_dir = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui, i32 0, i32 10
  %14 = load i8* (%struct._Gimp*)*, i8* (%struct._Gimp*)** %get_theme_dir, align 8
  %tobool11 = icmp ne i8* (%struct._Gimp*)* %14, null
  br i1 %tobool11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui13 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 14
  %get_theme_dir14 = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui13, i32 0, i32 10
  %16 = load i8* (%struct._Gimp*)*, i8* (%struct._Gimp*)** %get_theme_dir14, align 8
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call15 = call i8* %16(%struct._Gimp* %17)
  store i8* %call15, i8** %retval
  br label %return

if.end.16:                                        ; preds = %do.end
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.12, %if.else.9
  %18 = load i8*, i8** %retval
  ret i8* %18
}

; Function Attrs: nounwind uwtable
define %struct._GimpObject* @gimp_get_window_strategy(%struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca %struct._GimpObject*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_get_window_strategy, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpObject* null, %struct._GimpObject** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 14
  %get_window_strategy = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui, i32 0, i32 11
  %14 = load %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)** %get_window_strategy, align 8
  %tobool11 = icmp ne %struct._GimpObject* (%struct._Gimp*)* %14, null
  br i1 %tobool11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui13 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 14
  %get_window_strategy14 = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui13, i32 0, i32 11
  %16 = load %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)** %get_window_strategy14, align 8
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call15 = call %struct._GimpObject* %16(%struct._Gimp* %17)
  store %struct._GimpObject* %call15, %struct._GimpObject** %retval
  br label %return

if.end.16:                                        ; preds = %do.end
  store %struct._GimpObject* null, %struct._GimpObject** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.12, %if.else.9
  %18 = load %struct._GimpObject*, %struct._GimpObject** %retval
  ret %struct._GimpObject* %18
}

; Function Attrs: nounwind uwtable
define %struct._GimpObject* @gimp_get_empty_display(%struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca %struct._GimpObject*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_get_empty_display, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpObject* null, %struct._GimpObject** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 14
  %get_empty_display = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui, i32 0, i32 12
  %14 = load %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)** %get_empty_display, align 8
  %tobool11 = icmp ne %struct._GimpObject* (%struct._Gimp*)* %14, null
  br i1 %tobool11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui13 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 14
  %get_empty_display14 = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui13, i32 0, i32 12
  %16 = load %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)** %get_empty_display14, align 8
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call15 = call %struct._GimpObject* %16(%struct._Gimp* %17)
  store %struct._GimpObject* %call15, %struct._GimpObject** %retval
  br label %return

if.end.16:                                        ; preds = %do.end
  store %struct._GimpObject* null, %struct._GimpObject** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.12, %if.else.9
  %18 = load %struct._GimpObject*, %struct._GimpObject** %retval
  ret %struct._GimpObject* %18
}

; Function Attrs: nounwind uwtable
define %struct._GimpObject* @gimp_get_display_by_ID(%struct._Gimp* %gimp, i32 %ID) #0 {
entry:
  %retval = alloca %struct._GimpObject*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %ID.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %ID, i32* %ID.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_get_display_by_ID, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpObject* null, %struct._GimpObject** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 14
  %display_get_by_id = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui, i32 0, i32 13
  %14 = load %struct._GimpObject* (%struct._Gimp*, i32)*, %struct._GimpObject* (%struct._Gimp*, i32)** %display_get_by_id, align 8
  %tobool11 = icmp ne %struct._GimpObject* (%struct._Gimp*, i32)* %14, null
  br i1 %tobool11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui13 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 14
  %display_get_by_id14 = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui13, i32 0, i32 13
  %16 = load %struct._GimpObject* (%struct._Gimp*, i32)*, %struct._GimpObject* (%struct._Gimp*, i32)** %display_get_by_id14, align 8
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %18 = load i32, i32* %ID.addr, align 4
  %call15 = call %struct._GimpObject* %16(%struct._Gimp* %17, i32 %18)
  store %struct._GimpObject* %call15, %struct._GimpObject** %retval
  br label %return

if.end.16:                                        ; preds = %do.end
  store %struct._GimpObject* null, %struct._GimpObject** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.12, %if.else.9
  %19 = load %struct._GimpObject*, %struct._GimpObject** %retval
  ret %struct._GimpObject* %19
}

; Function Attrs: nounwind uwtable
define i32 @gimp_get_display_ID(%struct._Gimp* %gimp, %struct._GimpObject* %display) #0 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %display.addr = alloca %struct._GimpObject*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpObject* %display, %struct._GimpObject** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_get_display_ID, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpObject*, %struct._GimpObject** %display.addr, align 8
  %14 = bitcast %struct._GimpObject* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_object_get_type() #6
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_get_display_ID, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui = getelementptr inbounds %struct._Gimp, %struct._Gimp* %26, i32 0, i32 14
  %display_get_id = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui, i32 0, i32 14
  %27 = load i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)** %display_get_id, align 8
  %tobool39 = icmp ne i32 (%struct._GimpObject*)* %27, null
  br i1 %tobool39, label %if.then.40, label %if.end.44

if.then.40:                                       ; preds = %do.end.38
  %28 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui41 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %28, i32 0, i32 14
  %display_get_id42 = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui41, i32 0, i32 14
  %29 = load i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)** %display_get_id42, align 8
  %30 = load %struct._GimpObject*, %struct._GimpObject** %display.addr, align 8
  %call43 = call i32 %29(%struct._GimpObject* %30)
  store i32 %call43, i32* %retval
  br label %return

if.end.44:                                        ; preds = %do.end.38
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.44, %if.then.40, %if.else.36, %if.else.9
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #1

; Function Attrs: nounwind uwtable
define i32 @gimp_get_display_window_id(%struct._Gimp* %gimp, %struct._GimpObject* %display) #0 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %display.addr = alloca %struct._GimpObject*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpObject* %display, %struct._GimpObject** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_get_display_window_id, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpObject*, %struct._GimpObject** %display.addr, align 8
  %14 = bitcast %struct._GimpObject* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_object_get_type() #6
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_get_display_window_id, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui = getelementptr inbounds %struct._Gimp, %struct._Gimp* %26, i32 0, i32 14
  %display_get_window_id = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui, i32 0, i32 15
  %27 = load i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)** %display_get_window_id, align 8
  %tobool39 = icmp ne i32 (%struct._GimpObject*)* %27, null
  br i1 %tobool39, label %if.then.40, label %if.end.44

if.then.40:                                       ; preds = %do.end.38
  %28 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui41 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %28, i32 0, i32 14
  %display_get_window_id42 = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui41, i32 0, i32 15
  %29 = load i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)** %display_get_window_id42, align 8
  %30 = load %struct._GimpObject*, %struct._GimpObject** %display.addr, align 8
  %call43 = call i32 %29(%struct._GimpObject* %30)
  store i32 %call43, i32* %retval
  br label %return

if.end.44:                                        ; preds = %do.end.38
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.44, %if.then.40, %if.else.36, %if.else.9
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define %struct._GimpObject* @gimp_create_display(%struct._Gimp* %gimp, %struct._GimpImage* %image, i32 %unit, double %scale) #0 {
entry:
  %retval = alloca %struct._GimpObject*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %unit.addr = alloca i32, align 4
  %scale.addr = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %unit, i32* %unit.addr, align 4
  store double %scale, double* %scale.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_create_display, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpObject* null, %struct._GimpObject** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp12 = icmp eq %struct._GimpImage* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %15 = bitcast %struct._GimpImage* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_image_get_type() #6
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %lor.lhs.false
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type27, align 8
  %22 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %21, %22
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %24 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #7
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %25 = load i32, i32* %__r19, align 4
  store i32 %25, i32* %tmp34
  %26 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %26, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33, %do.body.11
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_create_display, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i32 0, i32 0))
  store %struct._GimpObject* null, %struct._GimpObject** %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui = getelementptr inbounds %struct._Gimp, %struct._Gimp* %27, i32 0, i32 14
  %display_create = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui, i32 0, i32 16
  %28 = load %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)** %display_create, align 8
  %tobool40 = icmp ne %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)* %28, null
  br i1 %tobool40, label %if.then.41, label %if.end.45

if.then.41:                                       ; preds = %do.end.39
  %29 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui42 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %29, i32 0, i32 14
  %display_create43 = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui42, i32 0, i32 16
  %30 = load %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)** %display_create43, align 8
  %31 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %32 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %33 = load i32, i32* %unit.addr, align 4
  %34 = load double, double* %scale.addr, align 8
  %call44 = call %struct._GimpObject* %30(%struct._Gimp* %31, %struct._GimpImage* %32, i32 %33, double %34)
  store %struct._GimpObject* %call44, %struct._GimpObject** %retval
  br label %return

if.end.45:                                        ; preds = %do.end.39
  store %struct._GimpObject* null, %struct._GimpObject** %retval
  br label %return

return:                                           ; preds = %if.end.45, %if.then.41, %if.else.37, %if.else.9
  %35 = load %struct._GimpObject*, %struct._GimpObject** %retval
  ret %struct._GimpObject* %35
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

; Function Attrs: nounwind uwtable
define void @gimp_delete_display(%struct._Gimp* %gimp, %struct._GimpObject* %display) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %display.addr = alloca %struct._GimpObject*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpObject* %display, %struct._GimpObject** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_delete_display, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.43

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpObject*, %struct._GimpObject** %display.addr, align 8
  %14 = bitcast %struct._GimpObject* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_object_get_type() #6
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_delete_display, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.43

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui = getelementptr inbounds %struct._Gimp, %struct._Gimp* %26, i32 0, i32 14
  %display_delete = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui, i32 0, i32 17
  %27 = load void (%struct._GimpObject*)*, void (%struct._GimpObject*)** %display_delete, align 8
  %tobool39 = icmp ne void (%struct._GimpObject*)* %27, null
  br i1 %tobool39, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %do.end.38
  %28 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui41 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %28, i32 0, i32 14
  %display_delete42 = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui41, i32 0, i32 17
  %29 = load void (%struct._GimpObject*)*, void (%struct._GimpObject*)** %display_delete42, align 8
  %30 = load %struct._GimpObject*, %struct._GimpObject** %display.addr, align 8
  call void %29(%struct._GimpObject* %30)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.9, %if.else.36, %if.then.40, %do.end.38
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_reconnect_displays(%struct._Gimp* %gimp, %struct._GimpImage* %old_image, %struct._GimpImage* %new_image) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %old_image.addr = alloca %struct._GimpImage*, align 8
  %new_image.addr = alloca %struct._GimpImage*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst41 = alloca %struct._GTypeInstance*, align 8
  %__t43 = alloca i64, align 8
  %__r46 = alloca i32, align 4
  %tmp61 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpImage* %old_image, %struct._GimpImage** %old_image.addr, align 8
  store %struct._GimpImage* %new_image, %struct._GimpImage** %new_image.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_reconnect_displays, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.71

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpImage*, %struct._GimpImage** %old_image.addr, align 8
  %14 = bitcast %struct._GimpImage* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_image_get_type() #6
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_reconnect_displays, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.71

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpImage*, %struct._GimpImage** %new_image.addr, align 8
  %27 = bitcast %struct._GimpImage* %26 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %27, %struct._GTypeInstance** %__inst41, align 8
  %call44 = call i64 @gimp_image_get_type() #6
  store i64 %call44, i64* %__t43, align 8
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %tobool47 = icmp ne %struct._GTypeInstance* %28, null
  br i1 %tobool47, label %if.else.49, label %if.then.48

if.then.48:                                       ; preds = %do.body.39
  store i32 0, i32* %__r46, align 4
  br label %if.end.60

if.else.49:                                       ; preds = %do.body.39
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class50 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class50, align 8
  %tobool51 = icmp ne %struct._GTypeClass* %30, null
  br i1 %tobool51, label %land.lhs.true.52, label %if.else.57

land.lhs.true.52:                                 ; preds = %if.else.49
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class53 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class53, align 8
  %g_type54 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type54, align 8
  %34 = load i64, i64* %__t43, align 8
  %cmp55 = icmp eq i64 %33, %34
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %land.lhs.true.52
  store i32 1, i32* %__r46, align 4
  br label %if.end.59

if.else.57:                                       ; preds = %land.lhs.true.52, %if.else.49
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %36 = load i64, i64* %__t43, align 8
  %call58 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %35, i64 %36) #7
  store i32 %call58, i32* %__r46, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.57, %if.then.56
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.48
  %37 = load i32, i32* %__r46, align 4
  store i32 %37, i32* %tmp61
  %38 = load i32, i32* %tmp61
  %tobool62 = icmp ne i32 %38, 0
  br i1 %tobool62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %if.end.60
  br label %if.end.65

if.else.64:                                       ; preds = %if.end.60
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_reconnect_displays, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.71

if.end.65:                                        ; preds = %if.then.63
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  %39 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui = getelementptr inbounds %struct._Gimp, %struct._Gimp* %39, i32 0, i32 14
  %displays_reconnect = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui, i32 0, i32 18
  %40 = load void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)** %displays_reconnect, align 8
  %tobool67 = icmp ne void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)* %40, null
  br i1 %tobool67, label %if.then.68, label %if.end.71

if.then.68:                                       ; preds = %do.end.66
  %41 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui69 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %41, i32 0, i32 14
  %displays_reconnect70 = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui69, i32 0, i32 18
  %42 = load void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)** %displays_reconnect70, align 8
  %43 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %44 = load %struct._GimpImage*, %struct._GimpImage** %old_image.addr, align 8
  %45 = load %struct._GimpImage*, %struct._GimpImage** %new_image.addr, align 8
  call void %42(%struct._Gimp* %43, %struct._GimpImage* %44, %struct._GimpImage* %45)
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.9, %if.else.36, %if.else.64, %if.then.68, %do.end.66
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpProgress* @gimp_new_progress(%struct._Gimp* %gimp, %struct._GimpObject* %display) #0 {
entry:
  %retval = alloca %struct._GimpProgress*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %display.addr = alloca %struct._GimpObject*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpObject* %display, %struct._GimpObject** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_new_progress, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpProgress* null, %struct._GimpProgress** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpObject*, %struct._GimpObject** %display.addr, align 8
  %cmp12 = icmp eq %struct._GimpObject* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpObject*, %struct._GimpObject** %display.addr, align 8
  %15 = bitcast %struct._GimpObject* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_object_get_type() #6
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %lor.lhs.false
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type27, align 8
  %22 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %21, %22
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %24 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #7
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %25 = load i32, i32* %__r19, align 4
  store i32 %25, i32* %tmp34
  %26 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %26, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33, %do.body.11
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_new_progress, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.14, i32 0, i32 0))
  store %struct._GimpProgress* null, %struct._GimpProgress** %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui = getelementptr inbounds %struct._Gimp, %struct._Gimp* %27, i32 0, i32 14
  %progress_new = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui, i32 0, i32 19
  %28 = load %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)** %progress_new, align 8
  %tobool40 = icmp ne %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)* %28, null
  br i1 %tobool40, label %if.then.41, label %if.end.45

if.then.41:                                       ; preds = %do.end.39
  %29 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui42 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %29, i32 0, i32 14
  %progress_new43 = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui42, i32 0, i32 19
  %30 = load %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)** %progress_new43, align 8
  %31 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %32 = load %struct._GimpObject*, %struct._GimpObject** %display.addr, align 8
  %call44 = call %struct._GimpProgress* %30(%struct._Gimp* %31, %struct._GimpObject* %32)
  store %struct._GimpProgress* %call44, %struct._GimpProgress** %retval
  br label %return

if.end.45:                                        ; preds = %do.end.39
  store %struct._GimpProgress* null, %struct._GimpProgress** %retval
  br label %return

return:                                           ; preds = %if.end.45, %if.then.41, %if.else.37, %if.else.9
  %33 = load %struct._GimpProgress*, %struct._GimpProgress** %retval
  ret %struct._GimpProgress* %33
}

; Function Attrs: nounwind uwtable
define void @gimp_free_progress(%struct._Gimp* %gimp, %struct._GimpProgress* %progress) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_free_progress, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.43

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %14 = bitcast %struct._GimpProgress* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_progress_interface_get_type() #6
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_free_progress, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.43

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui = getelementptr inbounds %struct._Gimp, %struct._Gimp* %26, i32 0, i32 14
  %progress_free = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui, i32 0, i32 20
  %27 = load void (%struct._Gimp*, %struct._GimpProgress*)*, void (%struct._Gimp*, %struct._GimpProgress*)** %progress_free, align 8
  %tobool39 = icmp ne void (%struct._Gimp*, %struct._GimpProgress*)* %27, null
  br i1 %tobool39, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %do.end.38
  %28 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui41 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %28, i32 0, i32 14
  %progress_free42 = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui41, i32 0, i32 20
  %29 = load void (%struct._Gimp*, %struct._GimpProgress*)*, void (%struct._Gimp*, %struct._GimpProgress*)** %progress_free42, align 8
  %30 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %31 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void %29(%struct._Gimp* %30, %struct._GimpProgress* %31)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.9, %if.else.36, %if.then.40, %do.end.38
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_pdb_dialog_new(%struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GimpContainer* %container, i8* %title, i8* %callback_name, i8* %object_name, ...) #0 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %title.addr = alloca i8*, align 8
  %callback_name.addr = alloca i8*, align 8
  %object_name.addr = alloca i8*, align 8
  %retval1 = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %__inst43 = alloca %struct._GTypeInstance*, align 8
  %__t45 = alloca i64, align 8
  %__r48 = alloca i32, align 4
  %tmp63 = alloca i32, align 4
  %__inst71 = alloca %struct._GTypeInstance*, align 8
  %__t73 = alloca i64, align 8
  %__r76 = alloca i32, align 4
  %tmp91 = alloca i32, align 4
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store i8* %title, i8** %title.addr, align 8
  store i8* %callback_name, i8** %callback_name.addr, align 8
  store i8* %object_name, i8** %object_name.addr, align 8
  store i32 0, i32* %retval1, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_pdb_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_context_get_type() #6
  store i64 %call17, i64* %__t16, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %do.body.12
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %do.body.12
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type27, align 8
  %21 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %20, %21
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %23 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %24 = load i32, i32* %__r19, align 4
  store i32 %24, i32* %tmp34
  %25 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %25, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_pdb_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  %26 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %cmp41 = icmp eq %struct._GimpProgress* %26, null
  br i1 %cmp41, label %if.then.65, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.40
  %27 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %28 = bitcast %struct._GimpProgress* %27 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %28, %struct._GTypeInstance** %__inst43, align 8
  %call46 = call i64 @gimp_progress_interface_get_type() #6
  store i64 %call46, i64* %__t45, align 8
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst43, align 8
  %tobool49 = icmp ne %struct._GTypeInstance* %29, null
  br i1 %tobool49, label %if.else.51, label %if.then.50

if.then.50:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r48, align 4
  br label %if.end.62

if.else.51:                                       ; preds = %lor.lhs.false
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst43, align 8
  %g_class52 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class52, align 8
  %tobool53 = icmp ne %struct._GTypeClass* %31, null
  br i1 %tobool53, label %land.lhs.true.54, label %if.else.59

land.lhs.true.54:                                 ; preds = %if.else.51
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst43, align 8
  %g_class55 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class55, align 8
  %g_type56 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type56, align 8
  %35 = load i64, i64* %__t45, align 8
  %cmp57 = icmp eq i64 %34, %35
  br i1 %cmp57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %land.lhs.true.54
  store i32 1, i32* %__r48, align 4
  br label %if.end.61

if.else.59:                                       ; preds = %land.lhs.true.54, %if.else.51
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst43, align 8
  %37 = load i64, i64* %__t45, align 8
  %call60 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %36, i64 %37) #7
  store i32 %call60, i32* %__r48, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.59, %if.then.58
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.50
  %38 = load i32, i32* %__r48, align 4
  store i32 %38, i32* %tmp63
  %39 = load i32, i32* %tmp63
  %tobool64 = icmp ne i32 %39, 0
  br i1 %tobool64, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %if.end.62, %do.body.40
  br label %if.end.67

if.else.66:                                       ; preds = %if.end.62
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_pdb_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.67:                                        ; preds = %if.then.65
  br label %do.end.68

do.end.68:                                        ; preds = %if.end.67
  br label %do.body.69

do.body.69:                                       ; preds = %do.end.68
  %40 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %41 = bitcast %struct._GimpContainer* %40 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %41, %struct._GTypeInstance** %__inst71, align 8
  %call74 = call i64 @gimp_container_get_type() #6
  store i64 %call74, i64* %__t73, align 8
  %42 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst71, align 8
  %tobool77 = icmp ne %struct._GTypeInstance* %42, null
  br i1 %tobool77, label %if.else.79, label %if.then.78

if.then.78:                                       ; preds = %do.body.69
  store i32 0, i32* %__r76, align 4
  br label %if.end.90

if.else.79:                                       ; preds = %do.body.69
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst71, align 8
  %g_class80 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %43, i32 0, i32 0
  %44 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class80, align 8
  %tobool81 = icmp ne %struct._GTypeClass* %44, null
  br i1 %tobool81, label %land.lhs.true.82, label %if.else.87

land.lhs.true.82:                                 ; preds = %if.else.79
  %45 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst71, align 8
  %g_class83 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %45, i32 0, i32 0
  %46 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class83, align 8
  %g_type84 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %46, i32 0, i32 0
  %47 = load i64, i64* %g_type84, align 8
  %48 = load i64, i64* %__t73, align 8
  %cmp85 = icmp eq i64 %47, %48
  br i1 %cmp85, label %if.then.86, label %if.else.87

if.then.86:                                       ; preds = %land.lhs.true.82
  store i32 1, i32* %__r76, align 4
  br label %if.end.89

if.else.87:                                       ; preds = %land.lhs.true.82, %if.else.79
  %49 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst71, align 8
  %50 = load i64, i64* %__t73, align 8
  %call88 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %49, i64 %50) #7
  store i32 %call88, i32* %__r76, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.87, %if.then.86
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.then.78
  %51 = load i32, i32* %__r76, align 4
  store i32 %51, i32* %tmp91
  %52 = load i32, i32* %tmp91
  %tobool92 = icmp ne i32 %52, 0
  br i1 %tobool92, label %if.then.93, label %if.else.94

if.then.93:                                       ; preds = %if.end.90
  br label %if.end.95

if.else.94:                                       ; preds = %if.end.90
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_pdb_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.95:                                        ; preds = %if.then.93
  br label %do.end.96

do.end.96:                                        ; preds = %if.end.95
  br label %do.body.97

do.body.97:                                       ; preds = %do.end.96
  %53 = load i8*, i8** %title.addr, align 8
  %cmp98 = icmp ne i8* %53, null
  br i1 %cmp98, label %if.then.99, label %if.else.100

if.then.99:                                       ; preds = %do.body.97
  br label %if.end.101

if.else.100:                                      ; preds = %do.body.97
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_pdb_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.101:                                       ; preds = %if.then.99
  br label %do.end.102

do.end.102:                                       ; preds = %if.end.101
  br label %do.body.103

do.body.103:                                      ; preds = %do.end.102
  %54 = load i8*, i8** %callback_name.addr, align 8
  %cmp104 = icmp ne i8* %54, null
  br i1 %cmp104, label %if.then.105, label %if.else.106

if.then.105:                                      ; preds = %do.body.103
  br label %if.end.107

if.else.106:                                      ; preds = %do.body.103
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_pdb_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.107:                                       ; preds = %if.then.105
  br label %do.end.108

do.end.108:                                       ; preds = %if.end.107
  %55 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui = getelementptr inbounds %struct._Gimp, %struct._Gimp* %55, i32 0, i32 14
  %pdb_dialog_new = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui, i32 0, i32 21
  %56 = load i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)** %pdb_dialog_new, align 8
  %tobool109 = icmp ne i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)* %56, null
  br i1 %tobool109, label %if.then.110, label %if.end.119

if.then.110:                                      ; preds = %do.end.108
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay112 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay112)
  %57 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui113 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %57, i32 0, i32 14
  %pdb_dialog_new114 = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui113, i32 0, i32 21
  %58 = load i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)** %pdb_dialog_new114, align 8
  %59 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %60 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %61 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %62 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %63 = load i8*, i8** %title.addr, align 8
  %64 = load i8*, i8** %callback_name.addr, align 8
  %65 = load i8*, i8** %object_name.addr, align 8
  %arraydecay115 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call116 = call i32 %58(%struct._Gimp* %59, %struct._GimpContext* %60, %struct._GimpProgress* %61, %struct._GimpContainer* %62, i8* %63, i8* %64, i8* %65, %struct.__va_list_tag* %arraydecay115)
  store i32 %call116, i32* %retval1, align 4
  %arraydecay117 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay117118 = bitcast %struct.__va_list_tag* %arraydecay117 to i8*
  call void @llvm.va_end(i8* %arraydecay117118)
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.110, %do.end.108
  %66 = load i32, i32* %retval1, align 4
  store i32 %66, i32* %retval
  br label %return

return:                                           ; preds = %if.end.119, %if.else.106, %if.else.100, %if.else.94, %if.else.66, %if.else.37, %if.else.10
  %67 = load i32, i32* %retval
  ret i32 %67
}

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_get_type() #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind uwtable
define i32 @gimp_pdb_dialog_set(%struct._Gimp* %gimp, %struct._GimpContainer* %container, i8* %callback_name, i8* %object_name, ...) #0 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %callback_name.addr = alloca i8*, align 8
  %object_name.addr = alloca i8*, align 8
  %retval1 = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store i8* %callback_name, i8** %callback_name.addr, align 8
  store i8* %object_name, i8** %object_name.addr, align 8
  store i32 0, i32* %retval1, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_pdb_dialog_set, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %13 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %14 = bitcast %struct._GimpContainer* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_container_get_type() #6
  store i64 %call17, i64* %__t16, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %do.body.12
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %do.body.12
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type27, align 8
  %21 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %20, %21
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %23 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %24 = load i32, i32* %__r19, align 4
  store i32 %24, i32* %tmp34
  %25 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %25, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_pdb_dialog_set, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  %26 = load i8*, i8** %callback_name.addr, align 8
  %cmp41 = icmp ne i8* %26, null
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.40
  br label %if.end.44

if.else.43:                                       ; preds = %do.body.40
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_pdb_dialog_set, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  br label %do.body.46

do.body.46:                                       ; preds = %do.end.45
  %27 = load i8*, i8** %object_name.addr, align 8
  %cmp47 = icmp ne i8* %27, null
  br i1 %cmp47, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %do.body.46
  br label %if.end.50

if.else.49:                                       ; preds = %do.body.46
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_pdb_dialog_set, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.50:                                        ; preds = %if.then.48
  br label %do.end.51

do.end.51:                                        ; preds = %if.end.50
  %28 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui = getelementptr inbounds %struct._Gimp, %struct._Gimp* %28, i32 0, i32 14
  %pdb_dialog_set = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui, i32 0, i32 22
  %29 = load i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)** %pdb_dialog_set, align 8
  %tobool52 = icmp ne i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)* %29, null
  br i1 %tobool52, label %if.then.53, label %if.end.62

if.then.53:                                       ; preds = %do.end.51
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay55 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay55)
  %30 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui56 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %30, i32 0, i32 14
  %pdb_dialog_set57 = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui56, i32 0, i32 22
  %31 = load i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)** %pdb_dialog_set57, align 8
  %32 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %33 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %34 = load i8*, i8** %callback_name.addr, align 8
  %35 = load i8*, i8** %object_name.addr, align 8
  %arraydecay58 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call59 = call i32 %31(%struct._Gimp* %32, %struct._GimpContainer* %33, i8* %34, i8* %35, %struct.__va_list_tag* %arraydecay58)
  store i32 %call59, i32* %retval1, align 4
  %arraydecay60 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay6061 = bitcast %struct.__va_list_tag* %arraydecay60 to i8*
  call void @llvm.va_end(i8* %arraydecay6061)
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.53, %do.end.51
  %36 = load i32, i32* %retval1, align 4
  store i32 %36, i32* %retval
  br label %return

return:                                           ; preds = %if.end.62, %if.else.49, %if.else.43, %if.else.37, %if.else.10
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define i32 @gimp_pdb_dialog_close(%struct._Gimp* %gimp, %struct._GimpContainer* %container, i8* %callback_name) #0 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %callback_name.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store i8* %callback_name, i8** %callback_name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_pdb_dialog_close, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %14 = bitcast %struct._GimpContainer* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_container_get_type() #6
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_pdb_dialog_close, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load i8*, i8** %callback_name.addr, align 8
  %cmp40 = icmp ne i8* %26, null
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.39
  br label %if.end.43

if.else.42:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_pdb_dialog_close, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %27 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui = getelementptr inbounds %struct._Gimp, %struct._Gimp* %27, i32 0, i32 14
  %pdb_dialog_close = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui, i32 0, i32 23
  %28 = load i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)** %pdb_dialog_close, align 8
  %tobool45 = icmp ne i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)* %28, null
  br i1 %tobool45, label %if.then.46, label %if.end.50

if.then.46:                                       ; preds = %do.end.44
  %29 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui47 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %29, i32 0, i32 14
  %pdb_dialog_close48 = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui47, i32 0, i32 23
  %30 = load i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)** %pdb_dialog_close48, align 8
  %31 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %32 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %33 = load i8*, i8** %callback_name.addr, align 8
  %call49 = call i32 %30(%struct._Gimp* %31, %struct._GimpContainer* %32, i8* %33)
  store i32 %call49, i32* %retval
  br label %return

if.end.50:                                        ; preds = %do.end.44
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.50, %if.then.46, %if.else.42, %if.else.36, %if.else.9
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define i32 @gimp_recent_list_add_uri(%struct._Gimp* %gimp, i8* %uri, i8* %mime_type) #0 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %uri.addr = alloca i8*, align 8
  %mime_type.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* %uri, i8** %uri.addr, align 8
  store i8* %mime_type, i8** %mime_type.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_recent_list_add_uri, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %uri.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_recent_list_add_uri, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui = getelementptr inbounds %struct._Gimp, %struct._Gimp* %14, i32 0, i32 14
  %recent_list_add_uri = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui, i32 0, i32 24
  %15 = load i32 (%struct._Gimp*, i8*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)** %recent_list_add_uri, align 8
  %tobool17 = icmp ne i32 (%struct._Gimp*, i8*, i8*)* %15, null
  br i1 %tobool17, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %do.end.16
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui19 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %16, i32 0, i32 14
  %recent_list_add_uri20 = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui19, i32 0, i32 24
  %17 = load i32 (%struct._Gimp*, i8*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)** %recent_list_add_uri20, align 8
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %19 = load i8*, i8** %uri.addr, align 8
  %20 = load i8*, i8** %mime_type.addr, align 8
  %call21 = call i32 %17(%struct._Gimp* %18, i8* %19, i8* %20)
  store i32 %call21, i32* %retval
  br label %return

if.end.22:                                        ; preds = %do.end.16
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.18, %if.else.14, %if.else.9
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define void @gimp_recent_list_load(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_recent_list_load, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.17

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 14
  %recent_list_load = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui, i32 0, i32 25
  %recent_list_load11 = bitcast {}** %recent_list_load to void (%struct._Gimp*)**
  %14 = load void (%struct._Gimp*)*, void (%struct._Gimp*)** %recent_list_load11, align 8
  %tobool12 = icmp ne void (%struct._Gimp*)* %14, null
  br i1 %tobool12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %do.end
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui14 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 14
  %recent_list_load15 = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui14, i32 0, i32 25
  %recent_list_load16 = bitcast {}** %recent_list_load15 to void (%struct._Gimp*)**
  %16 = load void (%struct._Gimp*)*, void (%struct._Gimp*)** %recent_list_load16, align 8
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void %16(%struct._Gimp* %17)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
