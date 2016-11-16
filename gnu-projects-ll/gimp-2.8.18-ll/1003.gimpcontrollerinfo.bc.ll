; ModuleID = './app/widgets/gimpcontrollerinfo.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpControllerInfoClass = type { %struct._GimpViewableClass, i32 (%struct._GimpControllerInfo*, %struct._GimpController*, %union._GimpControllerEvent*, i8*)* }
%struct._GimpViewableClass = type { %struct._GimpObjectClass, i8*, i8*, void (%struct._GimpViewable*)*, void (%struct._GimpViewable*)*, i32 (%struct._GimpViewable*, i32*, i32*)*, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, i8* (%struct._GimpViewable*, i8**)*, %struct._GimpContainer* (%struct._GimpViewable*)*, void (%struct._GimpViewable*, i32)*, i32 (%struct._GimpViewable*)* }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpViewable = type { %struct._GimpObject }
%struct._TempBuf = type opaque
%struct._GimpContext = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpContainer = type opaque
%struct._GimpControllerInfo = type { %struct._GimpViewable, i32, i32, %struct._GimpController*, %struct._GHashTable*, i32 (%struct._GimpControllerInfo*, %struct._GimpController*, %union._GimpControllerEvent*, i8*)*, i8* }
%struct._GHashTable = type opaque
%struct._GimpController = type { %struct._GObject, i8*, i8* }
%union._GimpControllerEvent = type { %struct._GimpControllerEventValue }
%struct._GimpControllerEventValue = type { i32, %struct._GimpController*, i32, %struct._GValue }
%struct._GimpConfigInterface = type { %struct._GTypeInterface, i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)*, i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)*, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GimpConfigWriter*)*, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GScanner*, i32*)*, %struct._GimpConfig* (%struct._GimpConfig*)*, i32 (%struct._GimpConfig*, %struct._GimpConfig*)*, void (%struct._GimpConfig*)*, i32 (%struct._GimpConfig*, %struct._GimpConfig*, i32)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpConfig = type opaque
%struct._GimpConfigWriter = type opaque
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
%struct._GimpControllerClass = type { %struct._GObjectClass, i8*, i8*, i8*, i32 (%struct._GimpController*)*, i8* (%struct._GimpController*, i32)*, i8* (%struct._GimpController*, i32)*, i32 (%struct._GimpController*, %union._GimpControllerEvent*)*, i8*, void ()*, void ()*, void ()* }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GimpControllerEventAny = type { i32, %struct._GimpController*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_controller_info_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"GimpControllerInfo\00", align 1
@gimp_controller_info_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpConfigInterface*)* @gimp_controller_info_config_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_controller_info_new = private unnamed_addr constant [25 x i8] c"gimp_controller_info_new\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"g_type_is_a (type, GIMP_TYPE_CONTROLLER)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"controller\00", align 1
@__func__.gimp_controller_info_set_enabled = private unnamed_addr constant [33 x i8] c"gimp_controller_info_set_enabled\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"GIMP_IS_CONTROLLER_INFO (info)\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@__func__.gimp_controller_info_get_enabled = private unnamed_addr constant [33 x i8] c"gimp_controller_info_get_enabled\00", align 1
@__func__.gimp_controller_info_set_event_snooper = private unnamed_addr constant [39 x i8] c"gimp_controller_info_set_event_snooper\00", align 1
@gimp_controller_info_parent_class = internal global i8* null, align 8
@GimpControllerInfo_private_offset = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"gimp-controller\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"debug-events\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"mapping\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"event-mapped\00", align 1
@info_signals = internal global [1 x i32] zeroinitializer, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"gimpcontrollerinfo.c\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.15 = private unnamed_addr constant [59 x i8] c"Received '%s' (class '%s')\0A    controller event '%s (%s)'\0A\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"    (trigger event)\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"    (value event, value = %f)\0A\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"    (value event, unhandled type '%s')\0A\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"    intercepted by event snooper\0A\0A\00", align 1
@.str.20 = private unnamed_addr constant [46 x i8] c"    ignoring because controller is disabled\0A\0A\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"    maps to action '%s'\0A\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"    action was found\0A\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"    action NOT found\0A\0A\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"    doesn't map to action\0A\0A\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"map\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_controller_info_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_controller_info_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_controller_info_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_viewable_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 288, void (i8*, i8*)* bitcast (void (i8*)* @gimp_controller_info_class_intern_init to void (i8*, i8*)*), i32 72, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpControllerInfo*)* @gimp_controller_info_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_config_interface_get_type() #6
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_controller_info_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_controller_info_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_controller_info_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_info_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_controller_info_parent_class, align 8
  %1 = load i32, i32* @GimpControllerInfo_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpControllerInfo_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpControllerInfoClass*
  call void @gimp_controller_info_class_init(%struct._GimpControllerInfoClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_info_init(%struct._GimpControllerInfo* %info) #3 {
entry:
  %info.addr = alloca %struct._GimpControllerInfo*, align 8
  store %struct._GimpControllerInfo* %info, %struct._GimpControllerInfo** %info.addr, align 8
  %0 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info.addr, align 8
  %controller = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %0, i32 0, i32 3
  store %struct._GimpController* null, %struct._GimpController** %controller, align 8
  %call = call %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal, void (i8*)* @g_free, void (i8*)* @g_free)
  %1 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info.addr, align 8
  %mapping = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %1, i32 0, i32 4
  store %struct._GHashTable* %call, %struct._GHashTable** %mapping, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_info_config_iface_init(%struct._GimpConfigInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpConfigInterface*, align 8
  store %struct._GimpConfigInterface* %iface, %struct._GimpConfigInterface** %iface.addr, align 8
  %0 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %iface.addr, align 8
  %serialize_property = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %0, i32 0, i32 3
  store i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GimpConfigWriter*)* @gimp_controller_info_serialize_property, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GimpConfigWriter*)** %serialize_property, align 8
  %1 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %iface.addr, align 8
  %deserialize_property = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %1, i32 0, i32 4
  store i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GScanner*, i32*)* @gimp_controller_info_deserialize_property, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GScanner*, i32*)** %deserialize_property, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpControllerInfo* @gimp_controller_info_new(i64 %type) #3 {
entry:
  %retval = alloca %struct._GimpControllerInfo*, align 8
  %type.addr = alloca i64, align 8
  %controller_class = alloca %struct._GimpControllerClass*, align 8
  %controller = alloca %struct._GimpController*, align 8
  %info = alloca %struct._GimpControllerInfo*, align 8
  store i64 %type, i64* %type.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %type.addr, align 8
  %call = call i64 @gimp_controller_get_type() #6
  %call1 = call i32 @g_type_is_a(i64 %0, i64 %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_controller_info_new, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpControllerInfo* null, %struct._GimpControllerInfo** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i64, i64* %type.addr, align 8
  %call2 = call i8* @g_type_class_ref(i64 %1)
  %2 = bitcast i8* %call2 to %struct._GimpControllerClass*
  store %struct._GimpControllerClass* %2, %struct._GimpControllerClass** %controller_class, align 8
  %3 = load i64, i64* %type.addr, align 8
  %call3 = call %struct._GimpController* @gimp_controller_new(i64 %3)
  store %struct._GimpController* %call3, %struct._GimpController** %controller, align 8
  %call4 = call i64 @gimp_controller_info_get_type() #6
  %4 = load %struct._GimpControllerClass*, %struct._GimpControllerClass** %controller_class, align 8
  %name = getelementptr inbounds %struct._GimpControllerClass, %struct._GimpControllerClass* %4, i32 0, i32 1
  %5 = load i8*, i8** %name, align 8
  %6 = load %struct._GimpController*, %struct._GimpController** %controller, align 8
  %call5 = call i8* (i64, i8*, ...) @g_object_new(i64 %call4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), %struct._GimpController* %6, i8* null)
  %7 = bitcast i8* %call5 to %struct._GimpControllerInfo*
  store %struct._GimpControllerInfo* %7, %struct._GimpControllerInfo** %info, align 8
  %8 = load %struct._GimpController*, %struct._GimpController** %controller, align 8
  %9 = bitcast %struct._GimpController* %8 to i8*
  call void @g_object_unref(i8* %9)
  %10 = load %struct._GimpControllerClass*, %struct._GimpControllerClass** %controller_class, align 8
  %11 = bitcast %struct._GimpControllerClass* %10 to i8*
  call void @g_type_class_unref(i8* %11)
  %12 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info, align 8
  store %struct._GimpControllerInfo* %12, %struct._GimpControllerInfo** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %13 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %retval
  ret %struct._GimpControllerInfo* %13
}

declare i32 @g_type_is_a(i64, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_controller_get_type() #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_type_class_ref(i64) #1

declare %struct._GimpController* @gimp_controller_new(i64) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare void @g_object_unref(i8*) #1

declare void @g_type_class_unref(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_controller_info_set_enabled(%struct._GimpControllerInfo* %info, i32 %enabled) #3 {
entry:
  %info.addr = alloca %struct._GimpControllerInfo*, align 8
  %enabled.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpControllerInfo* %info, %struct._GimpControllerInfo** %info.addr, align 8
  store i32 %enabled, i32* %enabled.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpControllerInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_controller_info_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_controller_info_set_enabled, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.14

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %enabled.addr, align 4
  %14 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info.addr, align 8
  %enabled11 = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %14, i32 0, i32 1
  %15 = load i32, i32* %enabled11, align 4
  %cmp12 = icmp ne i32 %13, %15
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.end
  %16 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info.addr, align 8
  %17 = bitcast %struct._GimpControllerInfo* %16 to i8*
  %18 = load i32, i32* %enabled.addr, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 %18, i8* null)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_object_set(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_controller_info_get_enabled(%struct._GimpControllerInfo* %info) #3 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._GimpControllerInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpControllerInfo* %info, %struct._GimpControllerInfo** %info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpControllerInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_controller_info_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_controller_info_get_enabled, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info.addr, align 8
  %enabled = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %13, i32 0, i32 1
  %14 = load i32, i32* %enabled, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @gimp_controller_info_set_event_snooper(%struct._GimpControllerInfo* %info, i32 (%struct._GimpControllerInfo*, %struct._GimpController*, %union._GimpControllerEvent*, i8*)* %snooper, i8* %snooper_data) #3 {
entry:
  %info.addr = alloca %struct._GimpControllerInfo*, align 8
  %snooper.addr = alloca i32 (%struct._GimpControllerInfo*, %struct._GimpController*, %union._GimpControllerEvent*, i8*)*, align 8
  %snooper_data.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpControllerInfo* %info, %struct._GimpControllerInfo** %info.addr, align 8
  store i32 (%struct._GimpControllerInfo*, %struct._GimpController*, %union._GimpControllerEvent*, i8*)* %snooper, i32 (%struct._GimpControllerInfo*, %struct._GimpController*, %union._GimpControllerEvent*, i8*)** %snooper.addr, align 8
  store i8* %snooper_data, i8** %snooper_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpControllerInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_controller_info_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_controller_info_set_event_snooper, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32 (%struct._GimpControllerInfo*, %struct._GimpController*, %union._GimpControllerEvent*, i8*)*, i32 (%struct._GimpControllerInfo*, %struct._GimpController*, %union._GimpControllerEvent*, i8*)** %snooper.addr, align 8
  %14 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info.addr, align 8
  %snooper11 = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %14, i32 0, i32 5
  store i32 (%struct._GimpControllerInfo*, %struct._GimpController*, %union._GimpControllerEvent*, i8*)* %13, i32 (%struct._GimpControllerInfo*, %struct._GimpController*, %union._GimpControllerEvent*, i8*)** %snooper11, align 8
  %15 = load i8*, i8** %snooper_data.addr, align 8
  %16 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info.addr, align 8
  %snooper_data12 = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %16, i32 0, i32 6
  store i8* %15, i8** %snooper_data12, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_info_class_init(%struct._GimpControllerInfoClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpControllerInfoClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %viewable_class = alloca %struct._GimpViewableClass*, align 8
  store %struct._GimpControllerInfoClass* %klass, %struct._GimpControllerInfoClass** %klass.addr, align 8
  %0 = load %struct._GimpControllerInfoClass*, %struct._GimpControllerInfoClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpControllerInfoClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpControllerInfoClass*, %struct._GimpControllerInfoClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpControllerInfoClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_viewable_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpViewableClass*
  store %struct._GimpViewableClass* %5, %struct._GimpViewableClass** %viewable_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_controller_info_finalize, void (%struct._GObject*)** %finalize, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_controller_info_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_controller_info_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %9 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %default_stock_id = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %9, i32 0, i32 1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i8** %default_stock_id, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 1, %struct._GParamSpec* %call3)
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call4 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 2, %struct._GParamSpec* %call4)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call i64 @gimp_controller_get_type() #6
  %call6 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i64 %call5, i32 483)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 3, %struct._GParamSpec* %call6)
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call i64 @g_hash_table_get_type() #6
  %call8 = call %struct._GParamSpec* @g_param_spec_boxed(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null, i64 %call7, i32 483)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 4, %struct._GParamSpec* %call8)
  %14 = load %struct._GimpControllerInfoClass*, %struct._GimpControllerInfoClass** %klass.addr, align 8
  %15 = bitcast %struct._GimpControllerInfoClass* %14 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type, align 8
  %call9 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i64 %16, i32 2, i32 280, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* @g_signal_accumulator_true_handled, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @gimp_marshal_BOOLEAN__OBJECT_POINTER_STRING, i64 20, i32 3, i64 80, i64 68, i64 64)
  store i32 %call9, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @info_signals, i32 0, i64 0), align 4
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_info_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %info = alloca %struct._GimpControllerInfo*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_controller_info_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpControllerInfo*
  store %struct._GimpControllerInfo* %2, %struct._GimpControllerInfo** %info, align 8
  %3 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info, align 8
  %controller = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %3, i32 0, i32 3
  %4 = load %struct._GimpController*, %struct._GimpController** %controller, align 8
  %tobool = icmp ne %struct._GimpController* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info, align 8
  %controller2 = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %5, i32 0, i32 3
  %6 = load %struct._GimpController*, %struct._GimpController** %controller2, align 8
  %7 = bitcast %struct._GimpController* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info, align 8
  %controller3 = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %8, i32 0, i32 3
  store %struct._GimpController* null, %struct._GimpController** %controller3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info, align 8
  %mapping = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %9, i32 0, i32 4
  %10 = load %struct._GHashTable*, %struct._GHashTable** %mapping, align 8
  %tobool4 = icmp ne %struct._GHashTable* %10, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %11 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info, align 8
  %mapping6 = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %11, i32 0, i32 4
  %12 = load %struct._GHashTable*, %struct._GHashTable** %mapping6, align 8
  call void @g_hash_table_unref(%struct._GHashTable* %12)
  %13 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info, align 8
  %mapping7 = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %13, i32 0, i32 4
  store %struct._GHashTable* null, %struct._GHashTable** %mapping7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %14 = load i8*, i8** @gimp_controller_info_parent_class, align 8
  %15 = bitcast i8* %14 to %struct._GTypeClass*
  %call9 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %15, i64 80)
  %16 = bitcast %struct._GTypeClass* %call9 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %16, i32 0, i32 6
  %17 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %18 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %17(%struct._GObject* %18)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_info_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %info = alloca %struct._GimpControllerInfo*, align 8
  %controller_class = alloca %struct._GimpControllerClass*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_controller_info_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpControllerInfo*
  store %struct._GimpControllerInfo* %2, %struct._GimpControllerInfo** %info, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_boolean(%struct._GValue* %4)
  %5 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info, align 8
  %enabled = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %5, i32 0, i32 1
  store i32 %call2, i32* %enabled, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i32 @g_value_get_boolean(%struct._GValue* %6)
  %7 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info, align 8
  %debug_events = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %7, i32 0, i32 2
  store i32 %call4, i32* %debug_events, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %8 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info, align 8
  %controller = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %8, i32 0, i32 3
  %9 = load %struct._GimpController*, %struct._GimpController** %controller, align 8
  %tobool = icmp ne %struct._GimpController* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.5
  %10 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info, align 8
  %controller6 = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %10, i32 0, i32 3
  %11 = load %struct._GimpController*, %struct._GimpController** %controller6, align 8
  %12 = bitcast %struct._GimpController* %11 to i8*
  %13 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info, align 8
  %14 = bitcast %struct._GimpControllerInfo* %13 to i8*
  %call7 = call i32 @g_signal_handlers_disconnect_matched(i8* %12, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (i32 (%struct._GimpController*, %union._GimpControllerEvent*, %struct._GimpControllerInfo*)* @gimp_controller_info_event to i8*), i8* %14)
  %15 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info, align 8
  %controller8 = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %15, i32 0, i32 3
  %16 = load %struct._GimpController*, %struct._GimpController** %controller8, align 8
  %17 = bitcast %struct._GimpController* %16 to i8*
  call void @g_object_unref(i8* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.5
  %18 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call9 = call i8* @g_value_dup_object(%struct._GValue* %18)
  %19 = bitcast i8* %call9 to %struct._GimpController*
  %20 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info, align 8
  %controller10 = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %20, i32 0, i32 3
  store %struct._GimpController* %19, %struct._GimpController** %controller10, align 8
  %21 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info, align 8
  %controller11 = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %21, i32 0, i32 3
  %22 = load %struct._GimpController*, %struct._GimpController** %controller11, align 8
  %tobool12 = icmp ne %struct._GimpController* %22, null
  br i1 %tobool12, label %if.then.13, label %if.end.20

if.then.13:                                       ; preds = %if.end
  %23 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info, align 8
  %controller14 = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %23, i32 0, i32 3
  %24 = load %struct._GimpController*, %struct._GimpController** %controller14, align 8
  %25 = bitcast %struct._GimpController* %24 to i8*
  %26 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info, align 8
  %27 = bitcast %struct._GimpControllerInfo* %26 to %struct._GTypeInstance*
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 80)
  %28 = bitcast %struct._GTypeInstance* %call15 to %struct._GObject*
  %29 = bitcast %struct._GObject* %28 to i8*
  %call16 = call i64 @g_signal_connect_object(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (i32 (%struct._GimpController*, %union._GimpControllerEvent*, %struct._GimpControllerInfo*)* @gimp_controller_info_event to void ()*), i8* %29, i32 0)
  %30 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info, align 8
  %controller17 = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %30, i32 0, i32 3
  %31 = load %struct._GimpController*, %struct._GimpController** %controller17, align 8
  %32 = bitcast %struct._GimpController* %31 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %34 = bitcast %struct._GTypeClass* %33 to %struct._GimpControllerClass*
  store %struct._GimpControllerClass* %34, %struct._GimpControllerClass** %controller_class, align 8
  %35 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info, align 8
  %36 = bitcast %struct._GimpControllerInfo* %35 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_viewable_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call18)
  %37 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpViewable*
  %38 = load %struct._GimpControllerClass*, %struct._GimpControllerClass** %controller_class, align 8
  %stock_id = getelementptr inbounds %struct._GimpControllerClass, %struct._GimpControllerClass* %38, i32 0, i32 8
  %39 = load i8*, i8** %stock_id, align 8
  call void @gimp_viewable_set_stock_id(%struct._GimpViewable* %37, i8* %39)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.13, %if.end
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %40 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info, align 8
  %mapping = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %40, i32 0, i32 4
  %41 = load %struct._GHashTable*, %struct._GHashTable** %mapping, align 8
  %tobool22 = icmp ne %struct._GHashTable* %41, null
  br i1 %tobool22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %sw.bb.21
  %42 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info, align 8
  %mapping24 = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %42, i32 0, i32 4
  %43 = load %struct._GHashTable*, %struct._GHashTable** %mapping24, align 8
  call void @g_hash_table_unref(%struct._GHashTable* %43)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %sw.bb.21
  %44 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call26 = call i8* @g_value_dup_boxed(%struct._GValue* %44)
  %45 = bitcast i8* %call26 to %struct._GHashTable*
  %46 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info, align 8
  %mapping27 = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %46, i32 0, i32 4
  store %struct._GHashTable* %45, %struct._GHashTable** %mapping27, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %47 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %47, %struct._GObject** %_glib__object, align 8
  %48 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %48, %struct._GParamSpec** %_glib__pspec, align 8
  %49 = load i32, i32* %property_id.addr, align 4
  store i32 %49, i32* %_glib__property_id, align 4
  %50 = load i32, i32* %_glib__property_id, align 4
  %51 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %51, i32 0, i32 1
  %52 = load i8*, i8** %name, align 8
  %53 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %54 = bitcast %struct._GParamSpec* %53 to %struct._GTypeInstance*
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %54, i32 0, i32 0
  %55 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %55, i32 0, i32 0
  %56 = load i64, i64* %g_type, align 8
  %call29 = call i8* @g_type_name(i64 %56)
  %57 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %58 = bitcast %struct._GObject* %57 to %struct._GTypeInstance*
  %g_class30 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %58, i32 0, i32 0
  %59 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class30, align 8
  %g_type31 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %59, i32 0, i32 0
  %60 = load i64, i64* %g_type31, align 8
  %call32 = call i8* @g_type_name(i64 %60)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0), i32 224, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 %50, i8* %52, i8* %call29, i8* %call32)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end.25, %if.end.20, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_info_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %info = alloca %struct._GimpControllerInfo*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_controller_info_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpControllerInfo*
  store %struct._GimpControllerInfo* %2, %struct._GimpControllerInfo** %info, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info, align 8
  %enabled = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %5, i32 0, i32 1
  %6 = load i32, i32* %enabled, align 4
  call void @g_value_set_boolean(%struct._GValue* %4, i32 %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info, align 8
  %debug_events = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %8, i32 0, i32 2
  %9 = load i32, i32* %debug_events, align 4
  call void @g_value_set_boolean(%struct._GValue* %7, i32 %9)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info, align 8
  %controller = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %11, i32 0, i32 3
  %12 = load %struct._GimpController*, %struct._GimpController** %controller, align 8
  %13 = bitcast %struct._GimpController* %12 to i8*
  call void @g_value_set_object(%struct._GValue* %10, i8* %13)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %15 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info, align 8
  %mapping = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %15, i32 0, i32 4
  %16 = load %struct._GHashTable*, %struct._GHashTable** %mapping, align 8
  %17 = bitcast %struct._GHashTable* %16 to i8*
  call void @g_value_set_boxed(%struct._GValue* %14, i8* %17)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %18 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %18, %struct._GObject** %_glib__object, align 8
  %19 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %19, %struct._GParamSpec** %_glib__pspec, align 8
  %20 = load i32, i32* %property_id.addr, align 4
  store i32 %20, i32* %_glib__property_id, align 4
  %21 = load i32, i32* %_glib__property_id, align 4
  %22 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %22, i32 0, i32 1
  %23 = load i8*, i8** %name, align 8
  %24 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %25 = bitcast %struct._GParamSpec* %24 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %25, i32 0, i32 0
  %26 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %26, i32 0, i32 0
  %27 = load i64, i64* %g_type, align 8
  %call5 = call i8* @g_type_name(i64 %27)
  %28 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %29 = bitcast %struct._GObject* %28 to %struct._GTypeInstance*
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type7 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %30, i32 0, i32 0
  %31 = load i64, i64* %g_type7, align 8
  %call8 = call i8* @g_type_name(i64 %31)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0), i32 253, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 %21, i8* %23, i8* %call5, i8* %call8)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare %struct._GParamSpec* @g_param_spec_boxed(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @g_hash_table_get_type() #2

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare i32 @g_signal_accumulator_true_handled(%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*) #1

declare void @gimp_marshal_BOOLEAN__OBJECT_POINTER_STRING(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @g_hash_table_unref(%struct._GHashTable*) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_controller_info_event(%struct._GimpController* %controller, %union._GimpControllerEvent* %event, %struct._GimpControllerInfo* %info) #3 {
entry:
  %retval = alloca i32, align 4
  %controller.addr = alloca %struct._GimpController*, align 8
  %event.addr = alloca %union._GimpControllerEvent*, align 8
  %info.addr = alloca %struct._GimpControllerInfo*, align 8
  %event_name = alloca i8*, align 8
  %event_blurb = alloca i8*, align 8
  %action_name = alloca i8*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %retval53 = alloca i32, align 4
  store %struct._GimpController* %controller, %struct._GimpController** %controller.addr, align 8
  store %union._GimpControllerEvent* %event, %union._GimpControllerEvent** %event.addr, align 8
  store %struct._GimpControllerInfo* %info, %struct._GimpControllerInfo** %info.addr, align 8
  store i8* null, i8** %action_name, align 8
  %0 = load %struct._GimpController*, %struct._GimpController** %controller.addr, align 8
  %1 = load %union._GimpControllerEvent*, %union._GimpControllerEvent** %event.addr, align 8
  %any = bitcast %union._GimpControllerEvent* %1 to %struct._GimpControllerEventAny*
  %event_id = getelementptr inbounds %struct._GimpControllerEventAny, %struct._GimpControllerEventAny* %any, i32 0, i32 2
  %2 = load i32, i32* %event_id, align 4
  %call = call i8* @gimp_controller_get_event_name(%struct._GimpController* %0, i32 %2)
  store i8* %call, i8** %event_name, align 8
  %3 = load %struct._GimpController*, %struct._GimpController** %controller.addr, align 8
  %4 = load %union._GimpControllerEvent*, %union._GimpControllerEvent** %event.addr, align 8
  %any1 = bitcast %union._GimpControllerEvent* %4 to %struct._GimpControllerEventAny*
  %event_id2 = getelementptr inbounds %struct._GimpControllerEventAny, %struct._GimpControllerEventAny* %any1, i32 0, i32 2
  %5 = load i32, i32* %event_id2, align 4
  %call3 = call i8* @gimp_controller_get_event_blurb(%struct._GimpController* %3, i32 %5)
  store i8* %call3, i8** %event_blurb, align 8
  %6 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info.addr, align 8
  %debug_events = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %6, i32 0, i32 2
  %7 = load i32, i32* %debug_events, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.25

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpController*, %struct._GimpController** %controller.addr, align 8
  %name = getelementptr inbounds %struct._GimpController, %struct._GimpController* %8, i32 0, i32 1
  %9 = load i8*, i8** %name, align 8
  %10 = load %struct._GimpController*, %struct._GimpController** %controller.addr, align 8
  %11 = bitcast %struct._GimpController* %10 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %11, i32 0, i32 0
  %12 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %13 = bitcast %struct._GTypeClass* %12 to %struct._GimpControllerClass*
  %name4 = getelementptr inbounds %struct._GimpControllerClass, %struct._GimpControllerClass* %13, i32 0, i32 1
  %14 = load i8*, i8** %name4, align 8
  %15 = load i8*, i8** %event_name, align 8
  %16 = load i8*, i8** %event_blurb, align 8
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.15, i32 0, i32 0), i8* %9, i8* %14, i8* %15, i8* %16)
  %17 = load %union._GimpControllerEvent*, %union._GimpControllerEvent** %event.addr, align 8
  %any5 = bitcast %union._GimpControllerEvent* %17 to %struct._GimpControllerEventAny*
  %type = getelementptr inbounds %struct._GimpControllerEventAny, %struct._GimpControllerEventAny* %any5, i32 0, i32 0
  %18 = load i32, i32* %type, align 4
  switch i32 %18, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %if.then
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0))
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.then
  %19 = load %union._GimpControllerEvent*, %union._GimpControllerEvent** %event.addr, align 8
  %value = bitcast %union._GimpControllerEvent* %19 to %struct._GimpControllerEventValue*
  %value7 = getelementptr inbounds %struct._GimpControllerEventValue, %struct._GimpControllerEventValue* %value, i32 0, i32 3
  store %struct._GValue* %value7, %struct._GValue** %__val, align 8
  store i64 60, i64* %__t, align 8
  %20 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool8 = icmp ne %struct._GValue* %20, null
  br i1 %tobool8, label %if.else, label %if.then.9

if.then.9:                                        ; preds = %sw.bb.6
  store i32 0, i32* %__r, align 4
  br label %if.end.13

if.else:                                          ; preds = %sw.bb.6
  %21 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type, align 8
  %23 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %22, %23
  br i1 %cmp, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.11:                                       ; preds = %if.else
  %24 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %25 = load i64, i64* %__t, align 8
  %call12 = call i32 @g_type_check_value_holds(%struct._GValue* %24, i64 %25) #7
  store i32 %call12, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.11, %if.then.10
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then.9
  %26 = load i32, i32* %__r, align 4
  store i32 %26, i32* %tmp
  %27 = load i32, i32* %tmp
  %tobool14 = icmp ne i32 %27, 0
  br i1 %tobool14, label %if.then.15, label %if.else.19

if.then.15:                                       ; preds = %if.end.13
  %28 = load %union._GimpControllerEvent*, %union._GimpControllerEvent** %event.addr, align 8
  %value16 = bitcast %union._GimpControllerEvent* %28 to %struct._GimpControllerEventValue*
  %value17 = getelementptr inbounds %struct._GimpControllerEventValue, %struct._GimpControllerEventValue* %value16, i32 0, i32 3
  %call18 = call double @g_value_get_double(%struct._GValue* %value17)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i32 0, i32 0), double %call18)
  br label %if.end.24

if.else.19:                                       ; preds = %if.end.13
  %29 = load %union._GimpControllerEvent*, %union._GimpControllerEvent** %event.addr, align 8
  %value20 = bitcast %union._GimpControllerEvent* %29 to %struct._GimpControllerEventValue*
  %value21 = getelementptr inbounds %struct._GimpControllerEventValue, %struct._GimpControllerEventValue* %value20, i32 0, i32 3
  %g_type22 = getelementptr inbounds %struct._GValue, %struct._GValue* %value21, i32 0, i32 0
  %30 = load i64, i64* %g_type22, align 8
  %call23 = call i8* @g_type_name(i64 %30)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i32 0, i32 0), i8* %call23)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.19, %if.then.15
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %if.end.24, %sw.bb
  br label %if.end.25

if.end.25:                                        ; preds = %sw.epilog, %entry
  %31 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info.addr, align 8
  %snooper = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %31, i32 0, i32 5
  %32 = load i32 (%struct._GimpControllerInfo*, %struct._GimpController*, %union._GimpControllerEvent*, i8*)*, i32 (%struct._GimpControllerInfo*, %struct._GimpController*, %union._GimpControllerEvent*, i8*)** %snooper, align 8
  %tobool26 = icmp ne i32 (%struct._GimpControllerInfo*, %struct._GimpController*, %union._GimpControllerEvent*, i8*)* %32, null
  br i1 %tobool26, label %if.then.27, label %if.end.37

if.then.27:                                       ; preds = %if.end.25
  %33 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info.addr, align 8
  %snooper28 = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %33, i32 0, i32 5
  %34 = load i32 (%struct._GimpControllerInfo*, %struct._GimpController*, %union._GimpControllerEvent*, i8*)*, i32 (%struct._GimpControllerInfo*, %struct._GimpController*, %union._GimpControllerEvent*, i8*)** %snooper28, align 8
  %35 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info.addr, align 8
  %36 = load %struct._GimpController*, %struct._GimpController** %controller.addr, align 8
  %37 = load %union._GimpControllerEvent*, %union._GimpControllerEvent** %event.addr, align 8
  %38 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info.addr, align 8
  %snooper_data = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %38, i32 0, i32 6
  %39 = load i8*, i8** %snooper_data, align 8
  %call29 = call i32 %34(%struct._GimpControllerInfo* %35, %struct._GimpController* %36, %union._GimpControllerEvent* %37, i8* %39)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.36

if.then.31:                                       ; preds = %if.then.27
  %40 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info.addr, align 8
  %debug_events32 = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %40, i32 0, i32 2
  %41 = load i32, i32* %debug_events32, align 4
  %tobool33 = icmp ne i32 %41, 0
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.31
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.then.31
  store i32 1, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.then.27
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.25
  %42 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info.addr, align 8
  %enabled = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %42, i32 0, i32 1
  %43 = load i32, i32* %enabled, align 4
  %tobool38 = icmp ne i32 %43, 0
  br i1 %tobool38, label %if.end.44, label %if.then.39

if.then.39:                                       ; preds = %if.end.37
  %44 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info.addr, align 8
  %debug_events40 = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %44, i32 0, i32 2
  %45 = load i32, i32* %debug_events40, align 4
  %tobool41 = icmp ne i32 %45, 0
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.then.39
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.then.39
  store i32 0, i32* %retval
  br label %return

if.end.44:                                        ; preds = %if.end.37
  %46 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info.addr, align 8
  %mapping = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %46, i32 0, i32 4
  %47 = load %struct._GHashTable*, %struct._GHashTable** %mapping, align 8
  %tobool45 = icmp ne %struct._GHashTable* %47, null
  br i1 %tobool45, label %if.then.46, label %if.end.49

if.then.46:                                       ; preds = %if.end.44
  %48 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info.addr, align 8
  %mapping47 = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %48, i32 0, i32 4
  %49 = load %struct._GHashTable*, %struct._GHashTable** %mapping47, align 8
  %50 = load i8*, i8** %event_name, align 8
  %call48 = call i8* @g_hash_table_lookup(%struct._GHashTable* %49, i8* %50)
  store i8* %call48, i8** %action_name, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.46, %if.end.44
  %51 = load i8*, i8** %action_name, align 8
  %tobool50 = icmp ne i8* %51, null
  br i1 %tobool50, label %if.then.51, label %if.else.66

if.then.51:                                       ; preds = %if.end.49
  store i32 0, i32* %retval53, align 4
  %52 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info.addr, align 8
  %debug_events54 = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %52, i32 0, i32 2
  %53 = load i32, i32* %debug_events54, align 4
  %tobool55 = icmp ne i32 %53, 0
  br i1 %tobool55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.then.51
  %54 = load i8*, i8** %action_name, align 8
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i32 0, i32 0), i8* %54)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %if.then.51
  %55 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info.addr, align 8
  %56 = bitcast %struct._GimpControllerInfo* %55 to i8*
  %57 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @info_signals, i32 0, i64 0), align 4
  %58 = load %struct._GimpController*, %struct._GimpController** %controller.addr, align 8
  %59 = load %union._GimpControllerEvent*, %union._GimpControllerEvent** %event.addr, align 8
  %60 = load i8*, i8** %action_name, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %56, i32 %57, i32 0, %struct._GimpController* %58, %union._GimpControllerEvent* %59, i8* %60, i32* %retval53)
  %61 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info.addr, align 8
  %debug_events58 = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %61, i32 0, i32 2
  %62 = load i32, i32* %debug_events58, align 4
  %tobool59 = icmp ne i32 %62, 0
  br i1 %tobool59, label %if.then.60, label %if.end.65

if.then.60:                                       ; preds = %if.end.57
  %63 = load i32, i32* %retval53, align 4
  %tobool61 = icmp ne i32 %63, 0
  br i1 %tobool61, label %if.then.62, label %if.else.63

if.then.62:                                       ; preds = %if.then.60
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.64

if.else.63:                                       ; preds = %if.then.60
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i32 0, i32 0))
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.63, %if.then.62
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.end.57
  %64 = load i32, i32* %retval53, align 4
  store i32 %64, i32* %retval
  br label %return

if.else.66:                                       ; preds = %if.end.49
  %65 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info.addr, align 8
  %debug_events67 = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %65, i32 0, i32 2
  %66 = load i32, i32* %debug_events67, align 4
  %tobool68 = icmp ne i32 %66, 0
  br i1 %tobool68, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.else.66
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.69, %if.else.66
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.71, %if.end.65, %if.end.43, %if.end.35
  %67 = load i32, i32* %retval
  ret i32 %67
}

declare i8* @g_value_dup_object(%struct._GValue*) #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

declare void @gimp_viewable_set_stock_id(%struct._GimpViewable*, i8*) #1

declare i8* @g_value_dup_boxed(%struct._GValue*) #1

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

declare i8* @gimp_controller_get_event_name(%struct._GimpController*, i32) #1

declare i8* @gimp_controller_get_event_blurb(%struct._GimpController*, i32) #1

declare void @g_print(i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_value_holds(%struct._GValue*, i64) #4

declare double @g_value_get_double(%struct._GValue*) #1

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare void @g_value_set_boxed(%struct._GValue*, i8*) #1

declare %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, void (i8*)*) #1

declare i32 @g_str_hash(i8*) #1

declare i32 @g_str_equal(i8*, i8*) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_controller_info_serialize_property(%struct._GimpConfig* %config, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec, %struct._GimpConfigWriter* %writer) #3 {
entry:
  %retval = alloca i32, align 4
  %config.addr = alloca %struct._GimpConfig*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  %mapping = alloca %struct._GHashTable*, align 8
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  %0 = load i32, i32* %property_id.addr, align 4
  %cmp = icmp ne i32 %0, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call = call i8* @g_value_get_boxed(%struct._GValue* %1)
  %2 = bitcast i8* %call to %struct._GHashTable*
  store %struct._GHashTable* %2, %struct._GHashTable** %mapping, align 8
  %3 = load %struct._GHashTable*, %struct._GHashTable** %mapping, align 8
  %tobool = icmp ne %struct._GHashTable* %3, null
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %4 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %5, i32 0, i32 1
  %6 = load i8*, i8** %name, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %4, i8* %6)
  %7 = load %struct._GHashTable*, %struct._GHashTable** %mapping, align 8
  %8 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %9 = bitcast %struct._GimpConfigWriter* %8 to i8*
  call void @g_hash_table_foreach(%struct._GHashTable* %7, void (i8*, i8*, i8*)* @gimp_controller_info_serialize_mapping, i8* %9)
  %10 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %10)
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_controller_info_deserialize_property(%struct._GimpConfig* %config, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec, %struct._GScanner* %scanner, i32* %expected) #3 {
entry:
  %retval = alloca i32, align 4
  %config.addr = alloca %struct._GimpConfig*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %scanner.addr = alloca %struct._GScanner*, align 8
  %expected.addr = alloca i32*, align 8
  %mapping = alloca %struct._GHashTable*, align 8
  %token = alloca i32, align 4
  %event_name = alloca i8*, align 8
  %action_name = alloca i8*, align 8
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store i32* %expected, i32** %expected.addr, align 8
  %0 = load i32, i32* %property_id.addr, align 4
  %cmp = icmp ne i32 %0, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal, void (i8*)* @g_free, void (i8*)* @g_free)
  store %struct._GHashTable* %call, %struct._GHashTable** %mapping, align 8
  store i32 40, i32* %token, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end
  %1 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call1 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %1)
  %2 = load i32, i32* %token, align 4
  %cmp2 = icmp eq i32 %call1, %2
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call3 = call i32 @g_scanner_get_next_token(%struct._GScanner* %3)
  store i32 %call3, i32* %token, align 4
  %4 = load i32, i32* %token, align 4
  switch i32 %4, label %sw.default [
    i32 40, label %sw.bb
    i32 266, label %sw.bb.4
    i32 41, label %sw.bb.18
  ]

sw.bb:                                            ; preds = %while.body
  store i32 266, i32* %token, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %while.body
  %5 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value5 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %5, i32 0, i32 7
  %v_identifier = bitcast %union._GTokenValue* %value5 to i8**
  %6 = load i8*, i8** %v_identifier, align 8
  %call6 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0)) #7
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.end.17, label %if.then.7

if.then.7:                                        ; preds = %sw.bb.4
  store i32 264, i32* %token, align 4
  %7 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call8 = call i32 @gimp_scanner_parse_string(%struct._GScanner* %7, i8** %event_name)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.then.7
  br label %error

if.end.11:                                        ; preds = %if.then.7
  store i32 264, i32* %token, align 4
  %8 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call12 = call i32 @gimp_scanner_parse_string(%struct._GScanner* %8, i8** %action_name)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.end.11
  br label %error

if.end.15:                                        ; preds = %if.end.11
  %9 = load %struct._GHashTable*, %struct._GHashTable** %mapping, align 8
  %10 = load i8*, i8** %event_name, align 8
  %11 = load i8*, i8** %action_name, align 8
  %call16 = call i32 @g_hash_table_insert(%struct._GHashTable* %9, i8* %10, i8* %11)
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.15, %sw.bb.4
  store i32 41, i32* %token, align 4
  br label %sw.epilog

sw.bb.18:                                         ; preds = %while.body
  store i32 40, i32* %token, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.18, %if.end.17, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load i32, i32* %token, align 4
  %cmp19 = icmp eq i32 %12, 40
  br i1 %cmp19, label %if.then.20, label %if.else.25

if.then.20:                                       ; preds = %while.end
  store i32 41, i32* %token, align 4
  %13 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call21 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %13)
  %14 = load i32, i32* %token, align 4
  %cmp22 = icmp eq i32 %call21, %14
  br i1 %cmp22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.then.20
  %15 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %16 = load %struct._GHashTable*, %struct._GHashTable** %mapping, align 8
  %17 = bitcast %struct._GHashTable* %16 to i8*
  call void @g_value_take_boxed(%struct._GValue* %15, i8* %17)
  br label %if.end.24

if.else:                                          ; preds = %if.then.20
  br label %error

if.end.24:                                        ; preds = %if.then.23
  br label %if.end.26

if.else.25:                                       ; preds = %while.end
  br label %error

error:                                            ; preds = %if.else.25, %if.else, %if.then.14, %if.then.10
  %18 = load %struct._GHashTable*, %struct._GHashTable** %mapping, align 8
  call void @g_hash_table_unref(%struct._GHashTable* %18)
  %19 = load i32, i32* %token, align 4
  %20 = load i32*, i32** %expected.addr, align 8
  store i32 %19, i32* %20, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %error, %if.end.24
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i8* @g_value_get_boxed(%struct._GValue*) #1

declare void @gimp_config_writer_open(%struct._GimpConfigWriter*, i8*) #1

declare void @g_hash_table_foreach(%struct._GHashTable*, void (i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_info_serialize_mapping(i8* %key, i8* %value, i8* %data) #3 {
entry:
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %event_name = alloca i8*, align 8
  %action_name = alloca i8*, align 8
  %writer = alloca %struct._GimpConfigWriter*, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  store i8* %0, i8** %event_name, align 8
  %1 = load i8*, i8** %value.addr, align 8
  store i8* %1, i8** %action_name, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %3 = bitcast i8* %2 to %struct._GimpConfigWriter*
  store %struct._GimpConfigWriter* %3, %struct._GimpConfigWriter** %writer, align 8
  %4 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0))
  %5 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %6 = load i8*, i8** %event_name, align 8
  call void @gimp_config_writer_string(%struct._GimpConfigWriter* %5, i8* %6)
  %7 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %8 = load i8*, i8** %action_name, align 8
  call void @gimp_config_writer_string(%struct._GimpConfigWriter* %7, i8* %8)
  %9 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %9)
  ret void
}

declare void @gimp_config_writer_close(%struct._GimpConfigWriter*) #1

declare void @gimp_config_writer_string(%struct._GimpConfigWriter*, i8*) #1

declare i32 @g_scanner_peek_next_token(%struct._GScanner*) #1

declare i32 @g_scanner_get_next_token(%struct._GScanner*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @gimp_scanner_parse_string(%struct._GScanner*, i8**) #1

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #1

declare void @g_value_take_boxed(%struct._GValue*, i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
