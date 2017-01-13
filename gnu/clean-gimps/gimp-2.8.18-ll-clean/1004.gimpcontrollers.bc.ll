; ModuleID = './app/widgets/gimpcontrollers.bc'
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
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GimpControllerManager = type { %struct._GimpContainer*, i32, %struct._GimpController*, %struct._GimpController*, %struct._GimpController*, %struct._GimpUIManager* }
%struct._GimpController = type { %struct._GObject, i8*, i8* }
%struct._GimpUIManager = type { %struct._GtkUIManager, i8*, %struct._Gimp*, %struct._GList* }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpControllerInfo = type { %struct._GimpViewable, i32, i32, %struct._GimpController*, %struct._GHashTable*, i32 (%struct._GimpControllerInfo*, %struct._GimpController*, %union._GimpControllerEvent*, i8*)*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GHashTable = type opaque
%union._GimpControllerEvent = type { %struct._GimpControllerEventValue }
%struct._GimpControllerEventValue = type { i32, %struct._GimpController*, i32, %struct._GValue }
%struct._GtkActionGroup = type { %struct._GObject, %struct._GtkActionGroupPrivate* }
%struct._GtkActionGroupPrivate = type opaque
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct._GimpEnumAction = type { %struct._GimpAction, i32, i32 }
%struct._GimpAction = type { %struct._GtkAction, %struct._GimpContext*, %struct._GimpRGB*, %struct._GimpViewable*, i32, i32 }
%struct._GimpRGB = type { double, double, double, double }
%struct._GError = type { i32, i32, i8* }
%struct._GimpConfig = type opaque
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_controllers_init = private unnamed_addr constant [22 x i8] c"gimp_controllers_init\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"gimp_controller_manager_get (gimp) == NULL\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"gimp-controller-manager\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"event-mapped\00", align 1
@__func__.gimp_controllers_exit = private unnamed_addr constant [22 x i8] c"gimp_controllers_exit\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"gimp_controller_manager_get (gimp) != NULL\00", align 1
@__func__.gimp_controllers_restore = private unnamed_addr constant [25 x i8] c"gimp_controllers_restore\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"GIMP_IS_UI_MANAGER (ui_manager)\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"manager != NULL\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"manager->ui_manager == NULL\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"controllerrc\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"Parsing '%s'\0A\00", align 1
@.str.13 = private unnamed_addr constant [76 x i8] c"GIMP controllerrc\0A\0AThis file will be entirely rewritten each time you exit.\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"end of controllerrc\00", align 1
@__func__.gimp_controllers_save = private unnamed_addr constant [22 x i8] c"gimp_controllers_save\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"Writing '%s'\0A\00", align 1
@__func__.gimp_controllers_get_list = private unnamed_addr constant [26 x i8] c"gimp_controllers_get_list\00", align 1
@__func__.gimp_controllers_get_ui_manager = private unnamed_addr constant [32 x i8] c"gimp_controllers_get_ui_manager\00", align 1
@__func__.gimp_controllers_get_mouse = private unnamed_addr constant [27 x i8] c"gimp_controllers_get_mouse\00", align 1
@__func__.gimp_controllers_get_wheel = private unnamed_addr constant [27 x i8] c"gimp_controllers_get_wheel\00", align 1
@__func__.gimp_controllers_get_keyboard = private unnamed_addr constant [30 x i8] c"gimp_controllers_get_keyboard\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_controllers_init(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %manager = alloca %struct._GimpControllerManager*, align 8
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
  %call = call i64 @gimp_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_controllers_init, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call12 = call %struct._GimpControllerManager* @gimp_controller_manager_get(%struct._Gimp* %13)
  %cmp13 = icmp eq %struct._GimpControllerManager* %call12, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_controllers_init, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %call18 = call noalias i8* @g_slice_alloc0(i64 48)
  %14 = bitcast i8* %call18 to %struct._GimpControllerManager*
  store %struct._GimpControllerManager* %14, %struct._GimpControllerManager** %manager, align 8
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %16 = bitcast %struct._Gimp* %15 to %struct._GTypeInstance*
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 80)
  %17 = bitcast %struct._GTypeInstance* %call19 to %struct._GObject*
  %18 = load %struct._GimpControllerManager*, %struct._GimpControllerManager** %manager, align 8
  %19 = bitcast %struct._GimpControllerManager* %18 to i8*
  call void @g_object_set_data_full(%struct._GObject* %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i8* %19, void (i8*)* bitcast (void (%struct._GimpControllerManager*)* @gimp_controller_manager_free to void (i8*)*))
  %call20 = call i64 @gimp_controller_info_get_type() #4
  %call21 = call %struct._GimpContainer* @gimp_list_new(i64 %call20, i32 1)
  %20 = load %struct._GimpControllerManager*, %struct._GimpControllerManager** %manager, align 8
  %controllers = getelementptr inbounds %struct._GimpControllerManager, %struct._GimpControllerManager* %20, i32 0, i32 0
  store %struct._GimpContainer* %call21, %struct._GimpContainer** %controllers, align 8
  %21 = load %struct._GimpControllerManager*, %struct._GimpControllerManager** %manager, align 8
  %controllers22 = getelementptr inbounds %struct._GimpControllerManager, %struct._GimpControllerManager* %21, i32 0, i32 0
  %22 = load %struct._GimpContainer*, %struct._GimpContainer** %controllers22, align 8
  %23 = bitcast %struct._GimpContainer* %22 to i8*
  %24 = load %struct._GimpControllerManager*, %struct._GimpControllerManager** %manager, align 8
  %25 = bitcast %struct._GimpControllerManager* %24 to i8*
  %call23 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpControllerInfo*, %struct._GimpControllerManager*)* @gimp_controllers_add to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 0)
  %26 = load %struct._GimpControllerManager*, %struct._GimpControllerManager** %manager, align 8
  %controllers24 = getelementptr inbounds %struct._GimpControllerManager, %struct._GimpControllerManager* %26, i32 0, i32 0
  %27 = load %struct._GimpContainer*, %struct._GimpContainer** %controllers24, align 8
  %28 = bitcast %struct._GimpContainer* %27 to i8*
  %29 = load %struct._GimpControllerManager*, %struct._GimpControllerManager** %manager, align 8
  %30 = bitcast %struct._GimpControllerManager* %29 to i8*
  %call25 = call i64 @g_signal_connect_data(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpControllerInfo*, %struct._GimpControllerManager*)* @gimp_controllers_remove to void ()*), i8* %30, void (i8*, %struct._GClosure*)* null, i32 0)
  %31 = load %struct._GimpControllerManager*, %struct._GimpControllerManager** %manager, align 8
  %controllers26 = getelementptr inbounds %struct._GimpControllerManager, %struct._GimpControllerManager* %31, i32 0, i32 0
  %32 = load %struct._GimpContainer*, %struct._GimpContainer** %controllers26, align 8
  %33 = load %struct._GimpControllerManager*, %struct._GimpControllerManager** %manager, align 8
  %34 = bitcast %struct._GimpControllerManager* %33 to i8*
  %call27 = call i32 @gimp_container_add_handler(%struct._GimpContainer* %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (i32 (%struct._GimpControllerInfo*, %struct._GimpController*, %union._GimpControllerEvent*, i8*, %struct._GimpControllerManager*)* @gimp_controllers_event_mapped to void ()*), i8* %34)
  %35 = load %struct._GimpControllerManager*, %struct._GimpControllerManager** %manager, align 8
  %event_mapped_id = getelementptr inbounds %struct._GimpControllerManager, %struct._GimpControllerManager* %35, i32 0, i32 1
  store i32 %call27, i32* %event_mapped_id, align 4
  %call28 = call i64 @gimp_controller_mouse_get_type() #4
  %call29 = call i8* @g_type_class_ref(i64 %call28)
  %call30 = call i64 @gimp_controller_wheel_get_type() #4
  %call31 = call i8* @g_type_class_ref(i64 %call30)
  %call32 = call i64 @gimp_controller_keyboard_get_type() #4
  %call33 = call i8* @g_type_class_ref(i64 %call32)
  br label %return

return:                                           ; preds = %do.end.17, %if.else.15, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct._GimpControllerManager* @gimp_controller_manager_get(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct._GimpControllerManager*
  ret %struct._GimpControllerManager* %3
}

declare noalias i8* @g_slice_alloc0(i64) #3

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_manager_free(%struct._GimpControllerManager* %manager) #0 {
entry:
  %manager.addr = alloca %struct._GimpControllerManager*, align 8
  store %struct._GimpControllerManager* %manager, %struct._GimpControllerManager** %manager.addr, align 8
  %0 = load %struct._GimpControllerManager*, %struct._GimpControllerManager** %manager.addr, align 8
  %controllers = getelementptr inbounds %struct._GimpControllerManager, %struct._GimpControllerManager* %0, i32 0, i32 0
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %controllers, align 8
  %2 = load %struct._GimpControllerManager*, %struct._GimpControllerManager** %manager.addr, align 8
  %event_mapped_id = getelementptr inbounds %struct._GimpControllerManager, %struct._GimpControllerManager* %2, i32 0, i32 1
  %3 = load i32, i32* %event_mapped_id, align 4
  call void @gimp_container_remove_handler(%struct._GimpContainer* %1, i32 %3)
  %4 = load %struct._GimpControllerManager*, %struct._GimpControllerManager** %manager.addr, align 8
  %controllers1 = getelementptr inbounds %struct._GimpControllerManager, %struct._GimpControllerManager* %4, i32 0, i32 0
  %5 = load %struct._GimpContainer*, %struct._GimpContainer** %controllers1, align 8
  %6 = bitcast %struct._GimpContainer* %5 to i8*
  call void @g_object_unref(i8* %6)
  %7 = load %struct._GimpControllerManager*, %struct._GimpControllerManager** %manager.addr, align 8
  %ui_manager = getelementptr inbounds %struct._GimpControllerManager, %struct._GimpControllerManager* %7, i32 0, i32 5
  %8 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager, align 8
  %9 = bitcast %struct._GimpUIManager* %8 to i8*
  call void @g_object_unref(i8* %9)
  br label %do.body

do.body:                                          ; preds = %entry
  %10 = load %struct._GimpControllerManager*, %struct._GimpControllerManager** %manager.addr, align 8
  %11 = bitcast %struct._GimpControllerManager* %10 to i8*
  call void @g_slice_free1(i64 48, i8* %11)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare %struct._GimpContainer* @gimp_list_new(i64, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_controller_info_get_type() #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_controllers_add(%struct._GimpContainer* %container, %struct._GimpControllerInfo* %info, %struct._GimpControllerManager* %manager) #0 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %info.addr = alloca %struct._GimpControllerInfo*, align 8
  %manager.addr = alloca %struct._GimpControllerManager*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst12 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst39 = alloca %struct._GTypeInstance*, align 8
  %__t42 = alloca i64, align 8
  %__r45 = alloca i32, align 4
  %tmp60 = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpControllerInfo* %info, %struct._GimpControllerInfo** %info.addr, align 8
  store %struct._GimpControllerManager* %manager, %struct._GimpControllerManager** %manager.addr, align 8
  %0 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info.addr, align 8
  %controller = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %0, i32 0, i32 3
  %1 = load %struct._GimpController*, %struct._GimpController** %controller, align 8
  %2 = bitcast %struct._GimpController* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_controller_wheel_get_type() #4
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %entry
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %8, %9
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #5
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %if.end.6
  %14 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info.addr, align 8
  %controller9 = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %14, i32 0, i32 3
  %15 = load %struct._GimpController*, %struct._GimpController** %controller9, align 8
  %16 = load %struct._GimpControllerManager*, %struct._GimpControllerManager** %manager.addr, align 8
  %wheel = getelementptr inbounds %struct._GimpControllerManager, %struct._GimpControllerManager* %16, i32 0, i32 3
  store %struct._GimpController* %15, %struct._GimpController** %wheel, align 8
  br label %if.end.66

if.else.10:                                       ; preds = %if.end.6
  %17 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info.addr, align 8
  %controller13 = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %17, i32 0, i32 3
  %18 = load %struct._GimpController*, %struct._GimpController** %controller13, align 8
  %19 = bitcast %struct._GimpController* %18 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %19, %struct._GTypeInstance** %__inst12, align 8
  %call16 = call i64 @gimp_controller_keyboard_get_type() #4
  store i64 %call16, i64* %__t15, align 8
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst12, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %20, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %if.else.10
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %if.else.10
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst12, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %22, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst12, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %24, i32 0, i32 0
  %25 = load i64, i64* %g_type26, align 8
  %26 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %25, %26
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %27 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst12, align 8
  %28 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %27, i64 %28) #5
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %29 = load i32, i32* %__r18, align 4
  store i32 %29, i32* %tmp33
  %30 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %30, 0
  br i1 %tobool34, label %if.then.35, label %if.else.37

if.then.35:                                       ; preds = %if.end.32
  %31 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info.addr, align 8
  %controller36 = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %31, i32 0, i32 3
  %32 = load %struct._GimpController*, %struct._GimpController** %controller36, align 8
  %33 = load %struct._GimpControllerManager*, %struct._GimpControllerManager** %manager.addr, align 8
  %keyboard = getelementptr inbounds %struct._GimpControllerManager, %struct._GimpControllerManager* %33, i32 0, i32 4
  store %struct._GimpController* %32, %struct._GimpController** %keyboard, align 8
  br label %if.end.65

if.else.37:                                       ; preds = %if.end.32
  %34 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info.addr, align 8
  %controller40 = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %34, i32 0, i32 3
  %35 = load %struct._GimpController*, %struct._GimpController** %controller40, align 8
  %36 = bitcast %struct._GimpController* %35 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %36, %struct._GTypeInstance** %__inst39, align 8
  %call43 = call i64 @gimp_controller_mouse_get_type() #4
  store i64 %call43, i64* %__t42, align 8
  %37 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst39, align 8
  %tobool46 = icmp ne %struct._GTypeInstance* %37, null
  br i1 %tobool46, label %if.else.48, label %if.then.47

if.then.47:                                       ; preds = %if.else.37
  store i32 0, i32* %__r45, align 4
  br label %if.end.59

if.else.48:                                       ; preds = %if.else.37
  %38 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst39, align 8
  %g_class49 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %38, i32 0, i32 0
  %39 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class49, align 8
  %tobool50 = icmp ne %struct._GTypeClass* %39, null
  br i1 %tobool50, label %land.lhs.true.51, label %if.else.56

land.lhs.true.51:                                 ; preds = %if.else.48
  %40 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst39, align 8
  %g_class52 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %40, i32 0, i32 0
  %41 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class52, align 8
  %g_type53 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %41, i32 0, i32 0
  %42 = load i64, i64* %g_type53, align 8
  %43 = load i64, i64* %__t42, align 8
  %cmp54 = icmp eq i64 %42, %43
  br i1 %cmp54, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %land.lhs.true.51
  store i32 1, i32* %__r45, align 4
  br label %if.end.58

if.else.56:                                       ; preds = %land.lhs.true.51, %if.else.48
  %44 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst39, align 8
  %45 = load i64, i64* %__t42, align 8
  %call57 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %44, i64 %45) #5
  store i32 %call57, i32* %__r45, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.56, %if.then.55
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.47
  %46 = load i32, i32* %__r45, align 4
  store i32 %46, i32* %tmp60
  %47 = load i32, i32* %tmp60
  %tobool61 = icmp ne i32 %47, 0
  br i1 %tobool61, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %if.end.59
  %48 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info.addr, align 8
  %controller63 = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %48, i32 0, i32 3
  %49 = load %struct._GimpController*, %struct._GimpController** %controller63, align 8
  %50 = load %struct._GimpControllerManager*, %struct._GimpControllerManager** %manager.addr, align 8
  %mouse = getelementptr inbounds %struct._GimpControllerManager, %struct._GimpControllerManager* %50, i32 0, i32 2
  store %struct._GimpController* %49, %struct._GimpController** %mouse, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %if.end.59
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.35
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_controllers_remove(%struct._GimpContainer* %container, %struct._GimpControllerInfo* %info, %struct._GimpControllerManager* %manager) #0 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %info.addr = alloca %struct._GimpControllerInfo*, align 8
  %manager.addr = alloca %struct._GimpControllerManager*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpControllerInfo* %info, %struct._GimpControllerInfo** %info.addr, align 8
  store %struct._GimpControllerManager* %manager, %struct._GimpControllerManager** %manager.addr, align 8
  %0 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info.addr, align 8
  %controller = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %0, i32 0, i32 3
  %1 = load %struct._GimpController*, %struct._GimpController** %controller, align 8
  %2 = load %struct._GimpControllerManager*, %struct._GimpControllerManager** %manager.addr, align 8
  %wheel = getelementptr inbounds %struct._GimpControllerManager, %struct._GimpControllerManager* %2, i32 0, i32 3
  %3 = load %struct._GimpController*, %struct._GimpController** %wheel, align 8
  %cmp = icmp eq %struct._GimpController* %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpControllerManager*, %struct._GimpControllerManager** %manager.addr, align 8
  %wheel1 = getelementptr inbounds %struct._GimpControllerManager, %struct._GimpControllerManager* %4, i32 0, i32 3
  store %struct._GimpController* null, %struct._GimpController** %wheel1, align 8
  br label %if.end.6

if.else:                                          ; preds = %entry
  %5 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info.addr, align 8
  %controller2 = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %5, i32 0, i32 3
  %6 = load %struct._GimpController*, %struct._GimpController** %controller2, align 8
  %7 = load %struct._GimpControllerManager*, %struct._GimpControllerManager** %manager.addr, align 8
  %keyboard = getelementptr inbounds %struct._GimpControllerManager, %struct._GimpControllerManager* %7, i32 0, i32 4
  %8 = load %struct._GimpController*, %struct._GimpController** %keyboard, align 8
  %cmp3 = icmp eq %struct._GimpController* %6, %8
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %9 = load %struct._GimpControllerManager*, %struct._GimpControllerManager** %manager.addr, align 8
  %keyboard5 = getelementptr inbounds %struct._GimpControllerManager, %struct._GimpControllerManager* %9, i32 0, i32 4
  store %struct._GimpController* null, %struct._GimpController** %keyboard5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  ret void
}

declare i32 @gimp_container_add_handler(%struct._GimpContainer*, i8*, void ()*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @gimp_controllers_event_mapped(%struct._GimpControllerInfo* %info, %struct._GimpController* %controller, %union._GimpControllerEvent* %event, i8* %action_name, %struct._GimpControllerManager* %manager) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._GimpControllerInfo*, align 8
  %controller.addr = alloca %struct._GimpController*, align 8
  %event.addr = alloca %union._GimpControllerEvent*, align 8
  %action_name.addr = alloca i8*, align 8
  %manager.addr = alloca %struct._GimpControllerManager*, align 8
  %ui_manager = alloca %struct._GtkUIManager*, align 8
  %list = alloca %struct._GList*, align 8
  %group = alloca %struct._GtkActionGroup*, align 8
  %action = alloca %struct._GtkAction*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %value41 = alloca double, align 8
  store %struct._GimpControllerInfo* %info, %struct._GimpControllerInfo** %info.addr, align 8
  store %struct._GimpController* %controller, %struct._GimpController** %controller.addr, align 8
  store %union._GimpControllerEvent* %event, %union._GimpControllerEvent** %event.addr, align 8
  store i8* %action_name, i8** %action_name.addr, align 8
  store %struct._GimpControllerManager* %manager, %struct._GimpControllerManager** %manager.addr, align 8
  %0 = load %struct._GimpControllerManager*, %struct._GimpControllerManager** %manager.addr, align 8
  %ui_manager1 = getelementptr inbounds %struct._GimpControllerManager, %struct._GimpControllerManager* %0, i32 0, i32 5
  %1 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager1, align 8
  %2 = bitcast %struct._GimpUIManager* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_ui_manager_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkUIManager*
  store %struct._GtkUIManager* %3, %struct._GtkUIManager** %ui_manager, align 8
  %4 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager, align 8
  %call3 = call %struct._GList* @gtk_ui_manager_get_action_groups(%struct._GtkUIManager* %4)
  store %struct._GList* %call3, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %6, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8
  %8 = bitcast i8* %7 to %struct._GtkActionGroup*
  store %struct._GtkActionGroup* %8, %struct._GtkActionGroup** %group, align 8
  %9 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** %group, align 8
  %10 = load i8*, i8** %action_name.addr, align 8
  %call4 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %9, i8* %10)
  store %struct._GtkAction* %call4, %struct._GtkAction** %action, align 8
  %11 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %tobool5 = icmp ne %struct._GtkAction* %11, null
  br i1 %tobool5, label %if.then, label %if.end.49

if.then:                                          ; preds = %for.body
  %12 = load %union._GimpControllerEvent*, %union._GimpControllerEvent** %event.addr, align 8
  %type = bitcast %union._GimpControllerEvent* %12 to i32*
  %13 = load i32, i32* %type, align 4
  switch i32 %13, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.48
  ]

sw.bb:                                            ; preds = %if.then
  %14 = load %union._GimpControllerEvent*, %union._GimpControllerEvent** %event.addr, align 8
  %value = bitcast %union._GimpControllerEvent* %14 to %struct._GimpControllerEventValue*
  %value6 = getelementptr inbounds %struct._GimpControllerEventValue, %struct._GimpControllerEventValue* %value, i32 0, i32 3
  store %struct._GValue* %value6, %struct._GValue** %__val, align 8
  store i64 60, i64* %__t, align 8
  %15 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool7 = icmp ne %struct._GValue* %15, null
  br i1 %tobool7, label %if.else, label %if.then.8

if.then.8:                                        ; preds = %sw.bb
  store i32 0, i32* %__r, align 4
  br label %if.end.12

if.else:                                          ; preds = %sw.bb
  %16 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type, align 8
  %18 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %17, %18
  br i1 %cmp, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.10:                                       ; preds = %if.else
  %19 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %20 = load i64, i64* %__t, align 8
  %call11 = call i32 @g_type_check_value_holds(%struct._GValue* %19, i64 %20) #5
  store i32 %call11, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.10, %if.then.9
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then.8
  %21 = load i32, i32* %__r, align 4
  store i32 %21, i32* %tmp
  %22 = load i32, i32* %tmp
  %tobool13 = icmp ne i32 %22, 0
  br i1 %tobool13, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %if.end.12
  %23 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %24 = bitcast %struct._GtkAction* %23 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %24, %struct._GTypeInstance** %__inst, align 8
  %call17 = call i64 @gimp_enum_action_get_type() #4
  store i64 %call17, i64* %__t16, align 8
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %25, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %land.lhs.true
  store i32 0, i32* %__r19, align 4
  br label %if.end.32

if.else.22:                                       ; preds = %land.lhs.true
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %26, i32 0, i32 0
  %27 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %27, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.22
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %28, i32 0, i32 0
  %29 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %29, i32 0, i32 0
  %30 = load i64, i64* %g_type26, align 8
  %31 = load i64, i64* %__t16, align 8
  %cmp27 = icmp eq i64 %30, %31
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r19, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.22
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %33 = load i64, i64* %__t16, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %32, i64 %33) #5
  store i32 %call30, i32* %__r19, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.21
  %34 = load i32, i32* %__r19, align 4
  store i32 %34, i32* %tmp33
  %35 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %35, 0
  br i1 %tobool34, label %land.lhs.true.35, label %if.end.47

land.lhs.true.35:                                 ; preds = %if.end.32
  %36 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %37 = bitcast %struct._GtkAction* %36 to %struct._GTypeInstance*
  %call36 = call i64 @gimp_enum_action_get_type() #4
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call36)
  %38 = bitcast %struct._GTypeInstance* %call37 to %struct._GimpEnumAction*
  %value_variable = getelementptr inbounds %struct._GimpEnumAction, %struct._GimpEnumAction* %38, i32 0, i32 2
  %39 = load i32, i32* %value_variable, align 4
  %tobool38 = icmp ne i32 %39, 0
  br i1 %tobool38, label %if.then.39, label %if.end.47

if.then.39:                                       ; preds = %land.lhs.true.35
  %40 = load %union._GimpControllerEvent*, %union._GimpControllerEvent** %event.addr, align 8
  %value42 = bitcast %union._GimpControllerEvent* %40 to %struct._GimpControllerEventValue*
  %value43 = getelementptr inbounds %struct._GimpControllerEventValue, %struct._GimpControllerEventValue* %value42, i32 0, i32 3
  %call44 = call double @g_value_get_double(%struct._GValue* %value43)
  store double %call44, double* %value41, align 8
  %41 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %42 = bitcast %struct._GtkAction* %41 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_enum_action_get_type() #4
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call45)
  %43 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpEnumAction*
  %44 = load double, double* %value41, align 8
  %mul = fmul double %44, 1.000000e+03
  %conv = fptosi double %mul to i32
  call void @gimp_enum_action_selected(%struct._GimpEnumAction* %43, i32 %conv)
  br label %sw.epilog

if.end.47:                                        ; preds = %land.lhs.true.35, %if.end.32, %if.end.12
  br label %sw.bb.48

sw.bb.48:                                         ; preds = %if.then, %if.end.47
  br label %sw.default

sw.default:                                       ; preds = %if.then, %sw.bb.48
  %45 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  call void @gtk_action_activate(%struct._GtkAction* %45)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then.39
  store i32 1, i32* %retval
  br label %return

if.end.49:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.49
  %46 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool50 = icmp ne %struct._GList* %46, null
  br i1 %tobool50, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %47 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %47, i32 0, i32 1
  %48 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %48, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %sw.epilog
  %49 = load i32, i32* %retval
  ret i32 %49
}

declare i8* @g_type_class_ref(i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_controller_mouse_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_controller_wheel_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_controller_keyboard_get_type() #1

; Function Attrs: nounwind uwtable
define void @gimp_controllers_exit(%struct._Gimp* %gimp) #0 {
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
  %call = call i64 @gimp_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_controllers_exit, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call12 = call %struct._GimpControllerManager* @gimp_controller_manager_get(%struct._Gimp* %13)
  %cmp13 = icmp ne %struct._GimpControllerManager* %call12, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_controllers_exit, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %15 = bitcast %struct._Gimp* %14 to %struct._GTypeInstance*
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 80)
  %16 = bitcast %struct._GTypeInstance* %call18 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i8* null)
  %call19 = call i64 @gimp_controller_wheel_get_type() #4
  %call20 = call i8* @g_type_class_peek(i64 %call19)
  call void @g_type_class_unref(i8* %call20)
  %call21 = call i64 @gimp_controller_keyboard_get_type() #4
  %call22 = call i8* @g_type_class_peek(i64 %call21)
  call void @g_type_class_unref(i8* %call22)
  br label %return

return:                                           ; preds = %do.end.17, %if.else.15, %if.else.9
  ret void
}

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #3

declare void @g_type_class_unref(i8*) #3

declare i8* @g_type_class_peek(i64) #3

; Function Attrs: nounwind uwtable
define void @gimp_controllers_restore(%struct._Gimp* %gimp, %struct._GimpUIManager* %ui_manager) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %manager = alloca %struct._GimpControllerManager*, align 8
  %filename = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_controllers_restore, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager.addr, align 8
  %14 = bitcast %struct._GimpUIManager* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_ui_manager_get_type() #4
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_controllers_restore, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call39 = call %struct._GimpControllerManager* @gimp_controller_manager_get(%struct._Gimp* %26)
  store %struct._GimpControllerManager* %call39, %struct._GimpControllerManager** %manager, align 8
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.38
  %27 = load %struct._GimpControllerManager*, %struct._GimpControllerManager** %manager, align 8
  %cmp41 = icmp ne %struct._GimpControllerManager* %27, null
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.40
  br label %if.end.44

if.else.43:                                       ; preds = %do.body.40
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_controllers_restore, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  br label %do.body.46

do.body.46:                                       ; preds = %do.end.45
  %28 = load %struct._GimpControllerManager*, %struct._GimpControllerManager** %manager, align 8
  %ui_manager47 = getelementptr inbounds %struct._GimpControllerManager, %struct._GimpControllerManager* %28, i32 0, i32 5
  %29 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager47, align 8
  %cmp48 = icmp eq %struct._GimpUIManager* %29, null
  br i1 %cmp48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %do.body.46
  br label %if.end.51

if.else.50:                                       ; preds = %do.body.46
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_controllers_restore, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.51:                                        ; preds = %if.then.49
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  %30 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager.addr, align 8
  %31 = bitcast %struct._GimpUIManager* %30 to i8*
  %call53 = call i8* @g_object_ref(i8* %31)
  %32 = bitcast i8* %call53 to %struct._GimpUIManager*
  %33 = load %struct._GimpControllerManager*, %struct._GimpControllerManager** %manager, align 8
  %ui_manager54 = getelementptr inbounds %struct._GimpControllerManager, %struct._GimpControllerManager* %33, i32 0, i32 5
  store %struct._GimpUIManager* %32, %struct._GimpUIManager** %ui_manager54, align 8
  %call55 = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0))
  store i8* %call55, i8** %filename, align 8
  %34 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %34, i32 0, i32 4
  %35 = load i32, i32* %be_verbose, align 4
  %tobool56 = icmp ne i32 %35, 0
  br i1 %tobool56, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %do.end.52
  %36 = load i8*, i8** %filename, align 8
  %call58 = call i8* @gimp_filename_to_utf8(i8* %36)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* %call58)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %do.end.52
  %37 = load %struct._GimpControllerManager*, %struct._GimpControllerManager** %manager, align 8
  %controllers = getelementptr inbounds %struct._GimpControllerManager, %struct._GimpControllerManager* %37, i32 0, i32 0
  %38 = load %struct._GimpContainer*, %struct._GimpContainer** %controllers, align 8
  %39 = bitcast %struct._GimpContainer* %38 to %struct._GTypeInstance*
  %call60 = call i64 @gimp_config_interface_get_type() #4
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call60)
  %40 = bitcast %struct._GTypeInstance* %call61 to %struct._GimpConfig*
  %41 = load i8*, i8** %filename, align 8
  %call62 = call i32 @gimp_config_deserialize_file(%struct._GimpConfig* %40, i8* %41, i8* null, %struct._GError** %error)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.end.79, label %if.then.64

if.then.64:                                       ; preds = %if.end.59
  %42 = load %struct._GError*, %struct._GError** %error, align 8
  %code = getelementptr inbounds %struct._GError, %struct._GError* %42, i32 0, i32 1
  %43 = load i32, i32* %code, align 4
  %cmp65 = icmp eq i32 %43, 1
  br i1 %cmp65, label %if.then.66, label %if.else.76

if.then.66:                                       ; preds = %if.then.64
  call void @g_clear_error(%struct._GError** %error)
  %44 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %44)
  %call67 = call i8* @gimp_sysconf_directory() #4
  %call68 = call noalias i8* (i8*, ...) @g_build_filename(i8* %call67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* null)
  store i8* %call68, i8** %filename, align 8
  %45 = load %struct._GimpControllerManager*, %struct._GimpControllerManager** %manager, align 8
  %controllers69 = getelementptr inbounds %struct._GimpControllerManager, %struct._GimpControllerManager* %45, i32 0, i32 0
  %46 = load %struct._GimpContainer*, %struct._GimpContainer** %controllers69, align 8
  %47 = bitcast %struct._GimpContainer* %46 to %struct._GTypeInstance*
  %call70 = call i64 @gimp_config_interface_get_type() #4
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call70)
  %48 = bitcast %struct._GTypeInstance* %call71 to %struct._GimpConfig*
  %49 = load i8*, i8** %filename, align 8
  %call72 = call i32 @gimp_config_deserialize_file(%struct._GimpConfig* %48, i8* %49, i8* null, %struct._GError** %error)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.end.75, label %if.then.74

if.then.74:                                       ; preds = %if.then.66
  %50 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %51 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %51, i32 0, i32 2
  %52 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %50, %struct._GObject* null, i32 2, i8* %52)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.74, %if.then.66
  br label %if.end.78

if.else.76:                                       ; preds = %if.then.64
  %53 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %54 = load %struct._GError*, %struct._GError** %error, align 8
  %message77 = getelementptr inbounds %struct._GError, %struct._GError* %54, i32 0, i32 2
  %55 = load i8*, i8** %message77, align 8
  call void @gimp_message_literal(%struct._Gimp* %53, %struct._GObject* null, i32 2, i8* %55)
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.76, %if.end.75
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.end.59
  %56 = load %struct._GimpControllerManager*, %struct._GimpControllerManager** %manager, align 8
  %controllers80 = getelementptr inbounds %struct._GimpControllerManager, %struct._GimpControllerManager* %56, i32 0, i32 0
  %57 = load %struct._GimpContainer*, %struct._GimpContainer** %controllers80, align 8
  %58 = bitcast %struct._GimpContainer* %57 to %struct._GTypeInstance*
  %call81 = call i64 @gimp_list_get_type() #4
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call81)
  %59 = bitcast %struct._GTypeInstance* %call82 to %struct._GimpList*
  call void @gimp_list_reverse(%struct._GimpList* %59)
  %60 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %60)
  br label %return

return:                                           ; preds = %if.end.79, %if.else.50, %if.else.43, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_ui_manager_get_type() #1

declare i8* @g_object_ref(i8*) #3

declare noalias i8* @gimp_personal_rc_file(i8*) #3

declare void @g_print(i8*, ...) #3

declare i8* @gimp_filename_to_utf8(i8*) #3

declare i32 @gimp_config_deserialize_file(%struct._GimpConfig*, i8*, i8*, %struct._GError**) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #1

declare void @g_clear_error(%struct._GError**) #3

declare void @g_free(i8*) #3

declare noalias i8* @g_build_filename(i8*, ...) #3

; Function Attrs: nounwind readnone
declare i8* @gimp_sysconf_directory() #1

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #3

declare void @gimp_list_reverse(%struct._GimpList*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_list_get_type() #1

; Function Attrs: nounwind uwtable
define void @gimp_controllers_save(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %header = alloca i8*, align 8
  %footer = alloca i8*, align 8
  %manager = alloca %struct._GimpControllerManager*, align 8
  %filename = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.13, i32 0, i32 0), i8** %header, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i8** %footer, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_controllers_save, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call11 = call %struct._GimpControllerManager* @gimp_controller_manager_get(%struct._Gimp* %13)
  store %struct._GimpControllerManager* %call11, %struct._GimpControllerManager** %manager, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load %struct._GimpControllerManager*, %struct._GimpControllerManager** %manager, align 8
  %cmp13 = icmp ne %struct._GimpControllerManager* %14, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.12
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_controllers_save, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %call18 = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0))
  store i8* %call18, i8** %filename, align 8
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 4
  %16 = load i32, i32* %be_verbose, align 4
  %tobool19 = icmp ne i32 %16, 0
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %do.end.17
  %17 = load i8*, i8** %filename, align 8
  %call21 = call i8* @gimp_filename_to_utf8(i8* %17)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i8* %call21)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %do.end.17
  %18 = load %struct._GimpControllerManager*, %struct._GimpControllerManager** %manager, align 8
  %controllers = getelementptr inbounds %struct._GimpControllerManager, %struct._GimpControllerManager* %18, i32 0, i32 0
  %19 = load %struct._GimpContainer*, %struct._GimpContainer** %controllers, align 8
  %20 = bitcast %struct._GimpContainer* %19 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_config_interface_get_type() #4
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call23)
  %21 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpConfig*
  %22 = load i8*, i8** %filename, align 8
  %23 = load i8*, i8** %header, align 8
  %24 = load i8*, i8** %footer, align 8
  %call25 = call i32 @gimp_config_serialize_to_file(%struct._GimpConfig* %21, i8* %22, i8* %23, i8* %24, i8* null, %struct._GError** %error)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %if.end.22
  %25 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %26 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %26, i32 0, i32 2
  %27 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %25, %struct._GObject* null, i32 2, i8* %27)
  %28 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %28)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.end.22
  %29 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %29)
  br label %return

return:                                           ; preds = %if.end.28, %if.else.15, %if.else.9
  ret void
}

declare i32 @gimp_config_serialize_to_file(%struct._GimpConfig*, i8*, i8*, i8*, i8*, %struct._GError**) #3

declare void @g_error_free(%struct._GError*) #3

; Function Attrs: nounwind uwtable
define %struct._GimpContainer* @gimp_controllers_get_list(%struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca %struct._GimpContainer*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %manager = alloca %struct._GimpControllerManager*, align 8
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
  %call = call i64 @gimp_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_controllers_get_list, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpContainer* null, %struct._GimpContainer** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call11 = call %struct._GimpControllerManager* @gimp_controller_manager_get(%struct._Gimp* %13)
  store %struct._GimpControllerManager* %call11, %struct._GimpControllerManager** %manager, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load %struct._GimpControllerManager*, %struct._GimpControllerManager** %manager, align 8
  %cmp13 = icmp ne %struct._GimpControllerManager* %14, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.12
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_controllers_get_list, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0))
  store %struct._GimpContainer* null, %struct._GimpContainer** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %15 = load %struct._GimpControllerManager*, %struct._GimpControllerManager** %manager, align 8
  %controllers = getelementptr inbounds %struct._GimpControllerManager, %struct._GimpControllerManager* %15, i32 0, i32 0
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %controllers, align 8
  store %struct._GimpContainer* %16, %struct._GimpContainer** %retval
  br label %return

return:                                           ; preds = %do.end.17, %if.else.15, %if.else.9
  %17 = load %struct._GimpContainer*, %struct._GimpContainer** %retval
  ret %struct._GimpContainer* %17
}

; Function Attrs: nounwind uwtable
define %struct._GimpUIManager* @gimp_controllers_get_ui_manager(%struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca %struct._GimpUIManager*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %manager = alloca %struct._GimpControllerManager*, align 8
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
  %call = call i64 @gimp_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_controllers_get_ui_manager, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpUIManager* null, %struct._GimpUIManager** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call11 = call %struct._GimpControllerManager* @gimp_controller_manager_get(%struct._Gimp* %13)
  store %struct._GimpControllerManager* %call11, %struct._GimpControllerManager** %manager, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load %struct._GimpControllerManager*, %struct._GimpControllerManager** %manager, align 8
  %cmp13 = icmp ne %struct._GimpControllerManager* %14, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.12
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_controllers_get_ui_manager, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0))
  store %struct._GimpUIManager* null, %struct._GimpUIManager** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %15 = load %struct._GimpControllerManager*, %struct._GimpControllerManager** %manager, align 8
  %ui_manager = getelementptr inbounds %struct._GimpControllerManager, %struct._GimpControllerManager* %15, i32 0, i32 5
  %16 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager, align 8
  store %struct._GimpUIManager* %16, %struct._GimpUIManager** %retval
  br label %return

return:                                           ; preds = %do.end.17, %if.else.15, %if.else.9
  %17 = load %struct._GimpUIManager*, %struct._GimpUIManager** %retval
  ret %struct._GimpUIManager* %17
}

; Function Attrs: nounwind uwtable
define %struct._GimpController* @gimp_controllers_get_mouse(%struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca %struct._GimpController*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %manager = alloca %struct._GimpControllerManager*, align 8
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
  %call = call i64 @gimp_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_controllers_get_mouse, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpController* null, %struct._GimpController** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call11 = call %struct._GimpControllerManager* @gimp_controller_manager_get(%struct._Gimp* %13)
  store %struct._GimpControllerManager* %call11, %struct._GimpControllerManager** %manager, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load %struct._GimpControllerManager*, %struct._GimpControllerManager** %manager, align 8
  %cmp13 = icmp ne %struct._GimpControllerManager* %14, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.12
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_controllers_get_mouse, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0))
  store %struct._GimpController* null, %struct._GimpController** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %15 = load %struct._GimpControllerManager*, %struct._GimpControllerManager** %manager, align 8
  %mouse = getelementptr inbounds %struct._GimpControllerManager, %struct._GimpControllerManager* %15, i32 0, i32 2
  %16 = load %struct._GimpController*, %struct._GimpController** %mouse, align 8
  store %struct._GimpController* %16, %struct._GimpController** %retval
  br label %return

return:                                           ; preds = %do.end.17, %if.else.15, %if.else.9
  %17 = load %struct._GimpController*, %struct._GimpController** %retval
  ret %struct._GimpController* %17
}

; Function Attrs: nounwind uwtable
define %struct._GimpController* @gimp_controllers_get_wheel(%struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca %struct._GimpController*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %manager = alloca %struct._GimpControllerManager*, align 8
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
  %call = call i64 @gimp_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_controllers_get_wheel, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpController* null, %struct._GimpController** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call11 = call %struct._GimpControllerManager* @gimp_controller_manager_get(%struct._Gimp* %13)
  store %struct._GimpControllerManager* %call11, %struct._GimpControllerManager** %manager, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load %struct._GimpControllerManager*, %struct._GimpControllerManager** %manager, align 8
  %cmp13 = icmp ne %struct._GimpControllerManager* %14, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.12
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_controllers_get_wheel, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0))
  store %struct._GimpController* null, %struct._GimpController** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %15 = load %struct._GimpControllerManager*, %struct._GimpControllerManager** %manager, align 8
  %wheel = getelementptr inbounds %struct._GimpControllerManager, %struct._GimpControllerManager* %15, i32 0, i32 3
  %16 = load %struct._GimpController*, %struct._GimpController** %wheel, align 8
  store %struct._GimpController* %16, %struct._GimpController** %retval
  br label %return

return:                                           ; preds = %do.end.17, %if.else.15, %if.else.9
  %17 = load %struct._GimpController*, %struct._GimpController** %retval
  ret %struct._GimpController* %17
}

; Function Attrs: nounwind uwtable
define %struct._GimpController* @gimp_controllers_get_keyboard(%struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca %struct._GimpController*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %manager = alloca %struct._GimpControllerManager*, align 8
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
  %call = call i64 @gimp_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_controllers_get_keyboard, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpController* null, %struct._GimpController** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call11 = call %struct._GimpControllerManager* @gimp_controller_manager_get(%struct._Gimp* %13)
  store %struct._GimpControllerManager* %call11, %struct._GimpControllerManager** %manager, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load %struct._GimpControllerManager*, %struct._GimpControllerManager** %manager, align 8
  %cmp13 = icmp ne %struct._GimpControllerManager* %14, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.12
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_controllers_get_keyboard, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0))
  store %struct._GimpController* null, %struct._GimpController** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %15 = load %struct._GimpControllerManager*, %struct._GimpControllerManager** %manager, align 8
  %keyboard = getelementptr inbounds %struct._GimpControllerManager, %struct._GimpControllerManager* %15, i32 0, i32 4
  %16 = load %struct._GimpController*, %struct._GimpController** %keyboard, align 8
  store %struct._GimpController* %16, %struct._GimpController** %retval
  br label %return

return:                                           ; preds = %do.end.17, %if.else.15, %if.else.9
  %17 = load %struct._GimpController*, %struct._GimpController** %retval
  ret %struct._GimpController* %17
}

declare i8* @g_object_get_data(%struct._GObject*, i8*) #3

declare void @gimp_container_remove_handler(%struct._GimpContainer*, i32) #3

declare void @g_object_unref(i8*) #3

declare void @g_slice_free1(i64, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_ui_manager_get_type() #1

declare %struct._GList* @gtk_ui_manager_get_action_groups(%struct._GtkUIManager*) #3

declare %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup*, i8*) #3

; Function Attrs: nounwind readonly
declare i32 @g_type_check_value_holds(%struct._GValue*, i64) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_enum_action_get_type() #1

declare double @g_value_get_double(%struct._GValue*) #3

declare void @gimp_enum_action_selected(%struct._GimpEnumAction*, i32) #3

declare void @gtk_action_activate(%struct._GtkAction*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
