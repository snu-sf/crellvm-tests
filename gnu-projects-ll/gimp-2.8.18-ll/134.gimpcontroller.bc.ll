; ModuleID = './libgimpwidgets/gimpcontroller.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpControllerClass = type { %struct._GObjectClass, i8*, i8*, i8*, i32 (%struct._GimpController*)*, i8* (%struct._GimpController*, i32)*, i8* (%struct._GimpController*, i32)*, i32 (%struct._GimpController*, %union._GimpControllerEvent*)*, i8*, void ()*, void ()*, void ()* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpController = type { %struct._GObject, i8*, i8* }
%union._GimpControllerEvent = type { %struct._GimpControllerEventValue }
%struct._GimpControllerEventValue = type { i32, %struct._GimpController*, i32, %struct._GValue }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_controller_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpController\00", align 1
@gimp_controller_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_controller_new = private unnamed_addr constant [20 x i8] c"gimp_controller_new\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"g_type_is_a (controller_type, GIMP_TYPE_CONTROLLER)\00", align 1
@__func__.gimp_controller_get_n_events = private unnamed_addr constant [29 x i8] c"gimp_controller_get_n_events\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"GIMP_IS_CONTROLLER (controller)\00", align 1
@__func__.gimp_controller_get_event_name = private unnamed_addr constant [31 x i8] c"gimp_controller_get_event_name\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"<invalid event id>\00", align 1
@__func__.gimp_controller_get_event_blurb = private unnamed_addr constant [32 x i8] c"gimp_controller_get_event_blurb\00", align 1
@__func__.gimp_controller_event = private unnamed_addr constant [22 x i8] c"gimp_controller_event\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"event != NULL\00", align 1
@controller_signals = internal global [1 x i32] zeroinitializer, align 4
@gimp_controller_parent_class = internal global i8* null, align 8
@GimpController_private_offset = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"Unnamed\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"gimp-controller\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Unnamed Controller\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"gimpcontroller.c\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_controller_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_controller_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_controller_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %call6 = call i64 @g_type_register_static_simple(i64 80, i8* %call5, i32 224, void (i8*, i8*)* bitcast (void (i8*)* @gimp_controller_class_intern_init to void (i8*, i8*)*), i32 40, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpController*)* @gimp_controller_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call6, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call7 = call i64 @gimp_config_interface_get_type() #6
  call void @g_type_add_interface_static(i64 %5, i64 %call7, %struct._GInterfaceInfo* @gimp_controller_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_controller_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_controller_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_class_intern_init(i8* %klass) #2 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_controller_parent_class, align 8
  %1 = load i32, i32* @GimpController_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpController_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpControllerClass*
  call void @gimp_controller_class_init(%struct._GimpControllerClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_init(%struct._GimpController* %controller) #2 {
entry:
  %controller.addr = alloca %struct._GimpController*, align 8
  store %struct._GimpController* %controller, %struct._GimpController** %controller.addr, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #3

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpController* @gimp_controller_new(i64 %controller_type) #2 {
entry:
  %retval = alloca %struct._GimpController*, align 8
  %controller_type.addr = alloca i64, align 8
  %controller = alloca %struct._GimpController*, align 8
  store i64 %controller_type, i64* %controller_type.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %controller_type.addr, align 8
  %call = call i64 @gimp_controller_get_type() #6
  %call1 = call i32 @g_type_is_a(i64 %0, i64 %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_controller_new, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpController* null, %struct._GimpController** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i64, i64* %controller_type.addr, align 8
  %call2 = call i8* (i64, i8*, ...) @g_object_new(i64 %1, i8* null)
  %2 = bitcast i8* %call2 to %struct._GimpController*
  store %struct._GimpController* %2, %struct._GimpController** %controller, align 8
  %3 = load %struct._GimpController*, %struct._GimpController** %controller, align 8
  store %struct._GimpController* %3, %struct._GimpController** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %4 = load %struct._GimpController*, %struct._GimpController** %retval
  ret %struct._GimpController* %4
}

declare i32 @g_type_is_a(i64, i64) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_controller_get_n_events(%struct._GimpController* %controller) #2 {
entry:
  %retval = alloca i32, align 4
  %controller.addr = alloca %struct._GimpController*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpController* %controller, %struct._GimpController** %controller.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpController*, %struct._GimpController** %controller.addr, align 8
  %1 = bitcast %struct._GimpController* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_controller_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_controller_get_n_events, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpController*, %struct._GimpController** %controller.addr, align 8
  %14 = bitcast %struct._GimpController* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpControllerClass*
  %get_n_events = getelementptr inbounds %struct._GimpControllerClass, %struct._GimpControllerClass* %16, i32 0, i32 4
  %17 = load i32 (%struct._GimpController*)*, i32 (%struct._GimpController*)** %get_n_events, align 8
  %tobool12 = icmp ne i32 (%struct._GimpController*)* %17, null
  br i1 %tobool12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %do.end
  %18 = load %struct._GimpController*, %struct._GimpController** %controller.addr, align 8
  %19 = bitcast %struct._GimpController* %18 to %struct._GTypeInstance*
  %g_class14 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class14, align 8
  %21 = bitcast %struct._GTypeClass* %20 to %struct._GimpControllerClass*
  %get_n_events15 = getelementptr inbounds %struct._GimpControllerClass, %struct._GimpControllerClass* %21, i32 0, i32 4
  %22 = load i32 (%struct._GimpController*)*, i32 (%struct._GimpController*)** %get_n_events15, align 8
  %23 = load %struct._GimpController*, %struct._GimpController** %controller.addr, align 8
  %call16 = call i32 %22(%struct._GimpController* %23)
  store i32 %call16, i32* %retval
  br label %return

if.end.17:                                        ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.13, %if.else.9
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

; Function Attrs: nounwind uwtable
define i8* @gimp_controller_get_event_name(%struct._GimpController* %controller, i32 %event_id) #2 {
entry:
  %retval = alloca i8*, align 8
  %controller.addr = alloca %struct._GimpController*, align 8
  %event_id.addr = alloca i32, align 4
  %name = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpController* %controller, %struct._GimpController** %controller.addr, align 8
  store i32 %event_id, i32* %event_id.addr, align 4
  store i8* null, i8** %name, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpController*, %struct._GimpController** %controller.addr, align 8
  %1 = bitcast %struct._GimpController* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_controller_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_controller_get_event_name, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpController*, %struct._GimpController** %controller.addr, align 8
  %14 = bitcast %struct._GimpController* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpControllerClass*
  %get_event_name = getelementptr inbounds %struct._GimpControllerClass, %struct._GimpControllerClass* %16, i32 0, i32 5
  %17 = load i8* (%struct._GimpController*, i32)*, i8* (%struct._GimpController*, i32)** %get_event_name, align 8
  %tobool12 = icmp ne i8* (%struct._GimpController*, i32)* %17, null
  br i1 %tobool12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %do.end
  %18 = load %struct._GimpController*, %struct._GimpController** %controller.addr, align 8
  %19 = bitcast %struct._GimpController* %18 to %struct._GTypeInstance*
  %g_class14 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class14, align 8
  %21 = bitcast %struct._GTypeClass* %20 to %struct._GimpControllerClass*
  %get_event_name15 = getelementptr inbounds %struct._GimpControllerClass, %struct._GimpControllerClass* %21, i32 0, i32 5
  %22 = load i8* (%struct._GimpController*, i32)*, i8* (%struct._GimpController*, i32)** %get_event_name15, align 8
  %23 = load %struct._GimpController*, %struct._GimpController** %controller.addr, align 8
  %24 = load i32, i32* %event_id.addr, align 4
  %call16 = call i8* %22(%struct._GimpController* %23, i32 %24)
  store i8* %call16, i8** %name, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %do.end
  %25 = load i8*, i8** %name, align 8
  %tobool18 = icmp ne i8* %25, null
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.end.17
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i8** %name, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.17
  %26 = load i8*, i8** %name, align 8
  store i8* %26, i8** %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.else.9
  %27 = load i8*, i8** %retval
  ret i8* %27
}

; Function Attrs: nounwind uwtable
define i8* @gimp_controller_get_event_blurb(%struct._GimpController* %controller, i32 %event_id) #2 {
entry:
  %retval = alloca i8*, align 8
  %controller.addr = alloca %struct._GimpController*, align 8
  %event_id.addr = alloca i32, align 4
  %blurb = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpController* %controller, %struct._GimpController** %controller.addr, align 8
  store i32 %event_id, i32* %event_id.addr, align 4
  store i8* null, i8** %blurb, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpController*, %struct._GimpController** %controller.addr, align 8
  %1 = bitcast %struct._GimpController* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_controller_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_controller_get_event_blurb, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpController*, %struct._GimpController** %controller.addr, align 8
  %14 = bitcast %struct._GimpController* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpControllerClass*
  %get_event_blurb = getelementptr inbounds %struct._GimpControllerClass, %struct._GimpControllerClass* %16, i32 0, i32 6
  %17 = load i8* (%struct._GimpController*, i32)*, i8* (%struct._GimpController*, i32)** %get_event_blurb, align 8
  %tobool12 = icmp ne i8* (%struct._GimpController*, i32)* %17, null
  br i1 %tobool12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %do.end
  %18 = load %struct._GimpController*, %struct._GimpController** %controller.addr, align 8
  %19 = bitcast %struct._GimpController* %18 to %struct._GTypeInstance*
  %g_class14 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class14, align 8
  %21 = bitcast %struct._GTypeClass* %20 to %struct._GimpControllerClass*
  %get_event_blurb15 = getelementptr inbounds %struct._GimpControllerClass, %struct._GimpControllerClass* %21, i32 0, i32 6
  %22 = load i8* (%struct._GimpController*, i32)*, i8* (%struct._GimpController*, i32)** %get_event_blurb15, align 8
  %23 = load %struct._GimpController*, %struct._GimpController** %controller.addr, align 8
  %24 = load i32, i32* %event_id.addr, align 4
  %call16 = call i8* %22(%struct._GimpController* %23, i32 %24)
  store i8* %call16, i8** %blurb, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %do.end
  %25 = load i8*, i8** %blurb, align 8
  %tobool18 = icmp ne i8* %25, null
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.end.17
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i8** %blurb, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.17
  %26 = load i8*, i8** %blurb, align 8
  store i8* %26, i8** %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.else.9
  %27 = load i8*, i8** %retval
  ret i8* %27
}

; Function Attrs: nounwind uwtable
define i32 @gimp_controller_event(%struct._GimpController* %controller, %union._GimpControllerEvent* %event) #2 {
entry:
  %retval = alloca i32, align 4
  %controller.addr = alloca %struct._GimpController*, align 8
  %event.addr = alloca %union._GimpControllerEvent*, align 8
  %retval1 = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpController* %controller, %struct._GimpController** %controller.addr, align 8
  store %union._GimpControllerEvent* %event, %union._GimpControllerEvent** %event.addr, align 8
  store i32 0, i32* %retval1, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpController*, %struct._GimpController** %controller.addr, align 8
  %1 = bitcast %struct._GimpController* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_controller_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_controller_event, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %13 = load %union._GimpControllerEvent*, %union._GimpControllerEvent** %event.addr, align 8
  %cmp13 = icmp ne %union._GimpControllerEvent* %13, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.12
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_controller_event, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %14 = load %struct._GimpController*, %struct._GimpController** %controller.addr, align 8
  %15 = bitcast %struct._GimpController* %14 to i8*
  %16 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @controller_signals, i32 0, i64 0), align 4
  %17 = load %union._GimpControllerEvent*, %union._GimpControllerEvent** %event.addr, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %15, i32 %16, i32 0, %union._GimpControllerEvent* %17, i32* %retval1)
  %18 = load i32, i32* %retval1, align 4
  store i32 %18, i32* %retval
  br label %return

return:                                           ; preds = %do.end.17, %if.else.15, %if.else.10
  %19 = load i32, i32* %retval
  ret i32 %19
}

declare void @g_signal_emit(i8*, i32, i32, ...) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_class_init(%struct._GimpControllerClass* %klass) #2 {
entry:
  %klass.addr = alloca %struct._GimpControllerClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpControllerClass* %klass, %struct._GimpControllerClass** %klass.addr, align 8
  %0 = load %struct._GimpControllerClass*, %struct._GimpControllerClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpControllerClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_controller_finalize, void (%struct._GObject*)** %finalize, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_controller_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_controller_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %6 = load %struct._GimpControllerClass*, %struct._GimpControllerClass** %klass.addr, align 8
  %name = getelementptr inbounds %struct._GimpControllerClass, %struct._GimpControllerClass* %6, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8** %name, align 8
  %7 = load %struct._GimpControllerClass*, %struct._GimpControllerClass** %klass.addr, align 8
  %help_domain = getelementptr inbounds %struct._GimpControllerClass, %struct._GimpControllerClass* %7, i32 0, i32 2
  store i8* null, i8** %help_domain, align 8
  %8 = load %struct._GimpControllerClass*, %struct._GimpControllerClass** %klass.addr, align 8
  %help_id = getelementptr inbounds %struct._GimpControllerClass, %struct._GimpControllerClass* %8, i32 0, i32 3
  store i8* null, i8** %help_id, align 8
  %9 = load %struct._GimpControllerClass*, %struct._GimpControllerClass** %klass.addr, align 8
  %stock_id = getelementptr inbounds %struct._GimpControllerClass, %struct._GimpControllerClass* %9, i32 0, i32 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i8** %stock_id, align 8
  %10 = load %struct._GimpControllerClass*, %struct._GimpControllerClass** %klass.addr, align 8
  %get_n_events = getelementptr inbounds %struct._GimpControllerClass, %struct._GimpControllerClass* %10, i32 0, i32 4
  store i32 (%struct._GimpController*)* null, i32 (%struct._GimpController*)** %get_n_events, align 8
  %11 = load %struct._GimpControllerClass*, %struct._GimpControllerClass** %klass.addr, align 8
  %get_event_name = getelementptr inbounds %struct._GimpControllerClass, %struct._GimpControllerClass* %11, i32 0, i32 5
  store i8* (%struct._GimpController*, i32)* null, i8* (%struct._GimpController*, i32)** %get_event_name, align 8
  %12 = load %struct._GimpControllerClass*, %struct._GimpControllerClass** %klass.addr, align 8
  %event = getelementptr inbounds %struct._GimpControllerClass, %struct._GimpControllerClass* %12, i32 0, i32 7
  store i32 (%struct._GimpController*, %union._GimpControllerEvent*)* null, i32 (%struct._GimpController*, %union._GimpControllerEvent*)** %event, align 8
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 1, %struct._GParamSpec* %call1)
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call2 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 2, %struct._GParamSpec* %call2)
  %15 = load %struct._GimpControllerClass*, %struct._GimpControllerClass** %klass.addr, align 8
  %16 = bitcast %struct._GimpControllerClass* %15 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type, align 8
  %call3 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i64 %17, i32 2, i32 184, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* @g_signal_accumulator_true_handled, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @_gimp_widgets_marshal_BOOLEAN__POINTER, i64 20, i32 1, i64 68)
  store i32 %call3, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @controller_signals, i32 0, i64 0), align 4
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_finalize(%struct._GObject* %object) #2 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %controller = alloca %struct._GimpController*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_controller_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpController*
  store %struct._GimpController* %2, %struct._GimpController** %controller, align 8
  %3 = load %struct._GimpController*, %struct._GimpController** %controller, align 8
  %name = getelementptr inbounds %struct._GimpController, %struct._GimpController* %3, i32 0, i32 1
  %4 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpController*, %struct._GimpController** %controller, align 8
  %name2 = getelementptr inbounds %struct._GimpController, %struct._GimpController* %5, i32 0, i32 1
  %6 = load i8*, i8** %name2, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpController*, %struct._GimpController** %controller, align 8
  %name3 = getelementptr inbounds %struct._GimpController, %struct._GimpController* %7, i32 0, i32 1
  store i8* null, i8** %name3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpController*, %struct._GimpController** %controller, align 8
  %state = getelementptr inbounds %struct._GimpController, %struct._GimpController* %8, i32 0, i32 2
  %9 = load i8*, i8** %state, align 8
  %tobool4 = icmp ne i8* %9, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %10 = load %struct._GimpController*, %struct._GimpController** %controller, align 8
  %state6 = getelementptr inbounds %struct._GimpController, %struct._GimpController* %10, i32 0, i32 2
  %11 = load i8*, i8** %state6, align 8
  call void @g_free(i8* %11)
  %12 = load %struct._GimpController*, %struct._GimpController** %controller, align 8
  %state7 = getelementptr inbounds %struct._GimpController, %struct._GimpController* %12, i32 0, i32 2
  store i8* null, i8** %state7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %13 = load i8*, i8** @gimp_controller_parent_class, align 8
  %14 = bitcast i8* %13 to %struct._GTypeClass*
  %call9 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %14, i64 80)
  %15 = bitcast %struct._GTypeClass* %call9 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %15, i32 0, i32 6
  %16 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %17 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %16(%struct._GObject* %17)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #2 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %controller = alloca %struct._GimpController*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_controller_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpController*
  store %struct._GimpController* %2, %struct._GimpController** %controller, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpController*, %struct._GimpController** %controller, align 8
  %name = getelementptr inbounds %struct._GimpController, %struct._GimpController* %4, i32 0, i32 1
  %5 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %6 = load %struct._GimpController*, %struct._GimpController** %controller, align 8
  %name2 = getelementptr inbounds %struct._GimpController, %struct._GimpController* %6, i32 0, i32 1
  %7 = load i8*, i8** %name2, align 8
  call void @g_free(i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call3 = call i8* @g_value_dup_string(%struct._GValue* %8)
  %9 = load %struct._GimpController*, %struct._GimpController** %controller, align 8
  %name4 = getelementptr inbounds %struct._GimpController, %struct._GimpController* %9, i32 0, i32 1
  store i8* %call3, i8** %name4, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %10 = load %struct._GimpController*, %struct._GimpController** %controller, align 8
  %state = getelementptr inbounds %struct._GimpController, %struct._GimpController* %10, i32 0, i32 2
  %11 = load i8*, i8** %state, align 8
  %tobool6 = icmp ne i8* %11, null
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %sw.bb.5
  %12 = load %struct._GimpController*, %struct._GimpController** %controller, align 8
  %state8 = getelementptr inbounds %struct._GimpController, %struct._GimpController* %12, i32 0, i32 2
  %13 = load i8*, i8** %state8, align 8
  call void @g_free(i8* %13)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %sw.bb.5
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call i8* @g_value_dup_string(%struct._GValue* %14)
  %15 = load %struct._GimpController*, %struct._GimpController** %controller, align 8
  %state11 = getelementptr inbounds %struct._GimpController, %struct._GimpController* %15, i32 0, i32 2
  store i8* %call10, i8** %state11, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %16 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %16, %struct._GObject** %_glib__object, align 8
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %17, %struct._GParamSpec** %_glib__pspec, align 8
  %18 = load i32, i32* %property_id.addr, align 4
  store i32 %18, i32* %_glib__property_id, align 4
  %19 = load i32, i32* %_glib__property_id, align 4
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name12 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %20, i32 0, i32 1
  %21 = load i8*, i8** %name12, align 8
  %22 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %23 = bitcast %struct._GParamSpec* %22 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %24, i32 0, i32 0
  %25 = load i64, i64* %g_type, align 8
  %call13 = call i8* @g_type_name(i64 %25)
  %26 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %27 = bitcast %struct._GObject* %26 to %struct._GTypeInstance*
  %g_class14 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %27, i32 0, i32 0
  %28 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class14, align 8
  %g_type15 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %28, i32 0, i32 0
  %29 = load i64, i64* %g_type15, align 8
  %call16 = call i8* @g_type_name(i64 %29)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 167, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 %19, i8* %21, i8* %call13, i8* %call16)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end.9, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #2 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %controller = alloca %struct._GimpController*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_controller_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpController*
  store %struct._GimpController* %2, %struct._GimpController** %controller, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpController*, %struct._GimpController** %controller, align 8
  %name = getelementptr inbounds %struct._GimpController, %struct._GimpController* %5, i32 0, i32 1
  %6 = load i8*, i8** %name, align 8
  call void @g_value_set_string(%struct._GValue* %4, i8* %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpController*, %struct._GimpController** %controller, align 8
  %state = getelementptr inbounds %struct._GimpController, %struct._GimpController* %8, i32 0, i32 2
  %9 = load i8*, i8** %state, align 8
  call void @g_value_set_string(%struct._GValue* %7, i8* %9)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %10 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %10, %struct._GObject** %_glib__object, align 8
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %11, %struct._GParamSpec** %_glib__pspec, align 8
  %12 = load i32, i32* %property_id.addr, align 4
  store i32 %12, i32* %_glib__property_id, align 4
  %13 = load i32, i32* %_glib__property_id, align 4
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name3 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %14, i32 0, i32 1
  %15 = load i8*, i8** %name3, align 8
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %17 = bitcast %struct._GParamSpec* %16 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %18, i32 0, i32 0
  %19 = load i64, i64* %g_type, align 8
  %call4 = call i8* @g_type_name(i64 %19)
  %20 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %21 = bitcast %struct._GObject* %20 to %struct._GTypeInstance*
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type6 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type6, align 8
  %call7 = call i8* @g_type_name(i64 %23)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 189, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 %13, i8* %15, i8* %call4, i8* %call7)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.2, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare i32 @g_signal_accumulator_true_handled(%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*) #1

declare void @_gimp_widgets_marshal_BOOLEAN__POINTER(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @g_free(i8*) #1

declare i8* @g_value_dup_string(%struct._GValue*) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #2 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
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

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
